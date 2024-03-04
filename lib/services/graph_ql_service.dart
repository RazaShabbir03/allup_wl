import 'dart:developer';
import 'dart:io';

import 'package:allup_user_app/auth/blocs/bloc/auth_bloc.dart';
import 'package:allup_user_app/services/custom_header.dart';
import 'package:allup_user_app/services/flavor_config.dart';
import 'package:allup_user_app/services/navigation_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:http/io_client.dart';

class GraphQLService {
  GraphQLService._internal();
  static final GraphQLService instance = GraphQLService._internal();
  IOClient? httpClient;

  //getting client from variable
  GraphQLClient get getclient => gqlClient();

  static GraphQLClient gqlClient() {
    final httpLink = HttpLink(
      FlavorConfig.instance!.values.baseUrl,
    );
    final authLink = CustomAuthLink(
        token: BlocProvider.of<AuthBloc>(
      NavigationService.navigatorKey.currentContext!,
    ).state.accessToken);

    final link = authLink.concat(httpLink);

    return GraphQLClient(
      defaultPolicies: DefaultPolicies(
        watchQuery: Policies(
          fetch: FetchPolicy.noCache,
        ),
        query: Policies(
          fetch: FetchPolicy.noCache,
        ),
        mutate: Policies(
          fetch: FetchPolicy.noCache,
        ),
      ),
      link: link,
      cache: GraphQLCache(),
    );
  }

  Future<QueryResult> performQuery(
    String query, {
    Map<String, dynamic>? variables,
    bool isCached = false,
  }) async {
    final options = QueryOptions(
      document: gql(query),
      variables: variables ?? {},
      fetchPolicy: isCached ? FetchPolicy.cacheAndNetwork : FetchPolicy.noCache,
    );
    //timeout after 10 seconds if no response grapglQL
    final result = await getclient.query(options);
    return result;
  }

  Future<QueryResult> performMutation(
    String query, {
    Map<String, dynamic>? variables,
  }) async {
    final options = MutationOptions(
      document: gql(query),
      variables: variables ?? {},
      fetchPolicy: FetchPolicy.noCache,
      cacheRereadPolicy: CacheRereadPolicy.ignoreAll,
    );
    final result = await getclient.mutate(options);
    return result;
  }
}
