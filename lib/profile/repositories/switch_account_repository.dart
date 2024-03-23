import 'package:allup_user_app/dashboard/schemas/gym_membership_info.graphql.dart';
import 'package:allup_user_app/dashboard/schemas/purchase_memberhip.graphql.dart';
import 'package:allup_user_app/profile/schemas/linked_accounts.graphql.dart';
import 'package:allup_user_app/schema.graphql.dart';
import 'package:allup_user_app/services/graph_ql_service.dart';
import 'package:graphql/client.dart';

class SwitchAccountRepository {
  SwitchAccountRepository({required this.client});
  final GraphQLService client;

  Future<Query$LinkedAccounts> getLinkedAccounts({
    required String gymId,
  }) async {
    final response = await client.getclient.query$LinkedAccounts(
      Options$Query$LinkedAccounts(
        variables: Variables$Query$LinkedAccounts(
            params: Input$UserSlotsByAuthFilters(gymId: gymId)),
      ),
    );
    final data = response.parsedData;
    if (data == null) {
      throw Exception();
    } else {
      return data;
    }
  }

  Future<Query$PurchasedGymMemberships> getPurchasedGymMemberships(
      {required String gymId,
      required String appId,
      required String userId}) async {
    final response = await client.getclient.query$PurchasedGymMemberships(
      Options$Query$PurchasedGymMemberships(
        variables: Variables$Query$PurchasedGymMemberships(
            filter: Input$GetMembershipsQueryFilter(
                gymId: gymId, appId: appId, userId: userId)),
      ),
    );
    final data = response.parsedData;
    if (data == null) {
      throw Exception();
    } else {
      return data;
    }
  }

  Future<Query$GymMembershipInfo> getGymMembershipInfo({
    required String gymId,
    required String memId,
    String? childAccountId,
    String? gmId,
    String? smId,
  }) async {
    final response =
        await GraphQLService.gqlClient(subCustomerId: childAccountId)
            .query$GymMembershipInfo(
      Options$Query$GymMembershipInfo(
        fetchPolicy: FetchPolicy.noCache,
        cacheRereadPolicy: CacheRereadPolicy.ignoreAll,
        variables: Variables$Query$GymMembershipInfo(
          memId: memId,
          gymId: gymId,
          smId: smId,
          gmId: gmId,
        ),
      ),
    );
    final data = response.parsedData;
    if (data == null) {
      throw Exception();
    } else {
      return data;
    }
  }
}
