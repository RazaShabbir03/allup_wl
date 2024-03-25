import '../../schema.graphql.dart';
import 'dart:async';
import 'package:allup_user_app/scalars.dart';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$BookedGymClasses {
  factory Variables$Query$BookedGymClasses({
    required Input$PaginatorInput paging,
    required Input$MembershipGymClassesInput params,
  }) =>
      Variables$Query$BookedGymClasses._({
        r'paging': paging,
        r'params': params,
      });

  Variables$Query$BookedGymClasses._(this._$data);

  factory Variables$Query$BookedGymClasses.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$paging = data['paging'];
    result$data['paging'] =
        Input$PaginatorInput.fromJson((l$paging as Map<String, dynamic>));
    final l$params = data['params'];
    result$data['params'] = Input$MembershipGymClassesInput.fromJson(
        (l$params as Map<String, dynamic>));
    return Variables$Query$BookedGymClasses._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$PaginatorInput get paging => (_$data['paging'] as Input$PaginatorInput);

  Input$MembershipGymClassesInput get params =>
      (_$data['params'] as Input$MembershipGymClassesInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$paging = paging;
    result$data['paging'] = l$paging.toJson();
    final l$params = params;
    result$data['params'] = l$params.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$BookedGymClasses<Variables$Query$BookedGymClasses>
      get copyWith => CopyWith$Variables$Query$BookedGymClasses(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$BookedGymClasses) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$paging = paging;
    final lOther$paging = other.paging;
    if (l$paging != lOther$paging) {
      return false;
    }
    final l$params = params;
    final lOther$params = other.params;
    if (l$params != lOther$params) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$paging = paging;
    final l$params = params;
    return Object.hashAll([
      l$paging,
      l$params,
    ]);
  }
}

abstract class CopyWith$Variables$Query$BookedGymClasses<TRes> {
  factory CopyWith$Variables$Query$BookedGymClasses(
    Variables$Query$BookedGymClasses instance,
    TRes Function(Variables$Query$BookedGymClasses) then,
  ) = _CopyWithImpl$Variables$Query$BookedGymClasses;

  factory CopyWith$Variables$Query$BookedGymClasses.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$BookedGymClasses;

  TRes call({
    Input$PaginatorInput? paging,
    Input$MembershipGymClassesInput? params,
  });
}

class _CopyWithImpl$Variables$Query$BookedGymClasses<TRes>
    implements CopyWith$Variables$Query$BookedGymClasses<TRes> {
  _CopyWithImpl$Variables$Query$BookedGymClasses(
    this._instance,
    this._then,
  );

  final Variables$Query$BookedGymClasses _instance;

  final TRes Function(Variables$Query$BookedGymClasses) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? paging = _undefined,
    Object? params = _undefined,
  }) =>
      _then(Variables$Query$BookedGymClasses._({
        ..._instance._$data,
        if (paging != _undefined && paging != null)
          'paging': (paging as Input$PaginatorInput),
        if (params != _undefined && params != null)
          'params': (params as Input$MembershipGymClassesInput),
      }));
}

class _CopyWithStubImpl$Variables$Query$BookedGymClasses<TRes>
    implements CopyWith$Variables$Query$BookedGymClasses<TRes> {
  _CopyWithStubImpl$Variables$Query$BookedGymClasses(this._res);

  TRes _res;

  call({
    Input$PaginatorInput? paging,
    Input$MembershipGymClassesInput? params,
  }) =>
      _res;
}

class Query$BookedGymClasses {
  Query$BookedGymClasses({required this.membershipGymClassesV2});

  factory Query$BookedGymClasses.fromJson(Map<String, dynamic> json) {
    final l$membershipGymClassesV2 = json['membershipGymClassesV2'];
    return Query$BookedGymClasses(
        membershipGymClassesV2:
            Query$BookedGymClasses$membershipGymClassesV2.fromJson(
                (l$membershipGymClassesV2 as Map<String, dynamic>)));
  }

  final Query$BookedGymClasses$membershipGymClassesV2 membershipGymClassesV2;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$membershipGymClassesV2 = membershipGymClassesV2;
    _resultData['membershipGymClassesV2'] = l$membershipGymClassesV2.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$membershipGymClassesV2 = membershipGymClassesV2;
    return Object.hashAll([l$membershipGymClassesV2]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$BookedGymClasses) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$membershipGymClassesV2 = membershipGymClassesV2;
    final lOther$membershipGymClassesV2 = other.membershipGymClassesV2;
    if (l$membershipGymClassesV2 != lOther$membershipGymClassesV2) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$BookedGymClasses on Query$BookedGymClasses {
  CopyWith$Query$BookedGymClasses<Query$BookedGymClasses> get copyWith =>
      CopyWith$Query$BookedGymClasses(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$BookedGymClasses<TRes> {
  factory CopyWith$Query$BookedGymClasses(
    Query$BookedGymClasses instance,
    TRes Function(Query$BookedGymClasses) then,
  ) = _CopyWithImpl$Query$BookedGymClasses;

  factory CopyWith$Query$BookedGymClasses.stub(TRes res) =
      _CopyWithStubImpl$Query$BookedGymClasses;

  TRes call(
      {Query$BookedGymClasses$membershipGymClassesV2? membershipGymClassesV2});
  CopyWith$Query$BookedGymClasses$membershipGymClassesV2<TRes>
      get membershipGymClassesV2;
}

class _CopyWithImpl$Query$BookedGymClasses<TRes>
    implements CopyWith$Query$BookedGymClasses<TRes> {
  _CopyWithImpl$Query$BookedGymClasses(
    this._instance,
    this._then,
  );

  final Query$BookedGymClasses _instance;

  final TRes Function(Query$BookedGymClasses) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? membershipGymClassesV2 = _undefined}) =>
      _then(Query$BookedGymClasses(
          membershipGymClassesV2: membershipGymClassesV2 == _undefined ||
                  membershipGymClassesV2 == null
              ? _instance.membershipGymClassesV2
              : (membershipGymClassesV2
                  as Query$BookedGymClasses$membershipGymClassesV2)));

  CopyWith$Query$BookedGymClasses$membershipGymClassesV2<TRes>
      get membershipGymClassesV2 {
    final local$membershipGymClassesV2 = _instance.membershipGymClassesV2;
    return CopyWith$Query$BookedGymClasses$membershipGymClassesV2(
        local$membershipGymClassesV2, (e) => call(membershipGymClassesV2: e));
  }
}

class _CopyWithStubImpl$Query$BookedGymClasses<TRes>
    implements CopyWith$Query$BookedGymClasses<TRes> {
  _CopyWithStubImpl$Query$BookedGymClasses(this._res);

  TRes _res;

  call(
          {Query$BookedGymClasses$membershipGymClassesV2?
              membershipGymClassesV2}) =>
      _res;

  CopyWith$Query$BookedGymClasses$membershipGymClassesV2<TRes>
      get membershipGymClassesV2 =>
          CopyWith$Query$BookedGymClasses$membershipGymClassesV2.stub(_res);
}

const documentNodeQueryBookedGymClasses = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'BookedGymClasses'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'paging')),
        type: NamedTypeNode(
          name: NameNode(value: 'PaginatorInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'params')),
        type: NamedTypeNode(
          name: NameNode(value: 'MembershipGymClassesInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'membershipGymClassesV2'),
        alias: NameNode(value: 'membershipGymClassesV2'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'paging'),
            value: VariableNode(name: NameNode(value: 'paging')),
          ),
          ArgumentNode(
            name: NameNode(value: 'params'),
            value: VariableNode(name: NameNode(value: 'params')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'list'),
            alias: NameNode(value: 'list'),
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: NameNode(value: 'id'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'scheduleGroupId'),
                alias: NameNode(value: 'scheduleGroupId'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'scheduleId'),
                alias: NameNode(value: 'scheduleId'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'categoryName'),
                alias: NameNode(value: 'categoryName'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: NameNode(value: 'name'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'description'),
                alias: NameNode(value: 'description'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'images'),
                alias: NameNode(value: 'images'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'startDate'),
                alias: NameNode(value: 'startDate'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'endDate'),
                alias: NameNode(value: 'endDate'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'date'),
                alias: NameNode(value: 'date'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'estimatedCaloriesBurnt'),
                alias: NameNode(value: 'estimatedCaloriesBurnt'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'difficultyLevel'),
                alias: NameNode(value: 'difficultyLevel'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'status'),
                alias: NameNode(value: 'status'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'dropInClientPrice'),
                alias: NameNode(value: 'dropInClientPrice'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'gymMemberClientPrice'),
                alias: NameNode(value: 'gymMemberClientPrice'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'currencyCode'),
                alias: NameNode(value: 'currencyCode'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'spots'),
                alias: NameNode(value: 'spots'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'spotsAllotted'),
                alias: NameNode(value: 'spotsAllotted'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'soldOut'),
                alias: NameNode(value: 'soldOut'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'gymName'),
                alias: NameNode(value: 'gymName'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'isPurchased'),
                alias: NameNode(value: 'isPurchased'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'gymId'),
                alias: NameNode(value: 'gymId'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'brandName'),
                alias: NameNode(value: 'brandName'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'distance'),
                alias: NameNode(value: 'distance'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'distanceInKm'),
                alias: NameNode(value: 'distanceInKm'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'gymLongitude'),
                alias: NameNode(value: 'gymLongitude'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'duration'),
                alias: NameNode(value: 'duration'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'instructorFirstName'),
                alias: NameNode(value: 'instructorFirstName'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'instructorLastName'),
                alias: NameNode(value: 'instructorLastName'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'openTime'),
                alias: NameNode(value: 'openTime'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'isAttended'),
                alias: NameNode(value: 'isAttended'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'isPrivate'),
                alias: NameNode(value: 'isPrivate'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'isAttendable'),
                alias: NameNode(value: 'isAttendable'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'isCancellable'),
                alias: NameNode(value: 'isCancellable'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'isExpired'),
                alias: NameNode(value: 'isExpired'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'qrCode'),
                alias: NameNode(value: 'qrCode'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'paging'),
            alias: NameNode(value: 'paging'),
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'page'),
                alias: NameNode(value: 'page'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'limit'),
                alias: NameNode(value: 'limit'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
        ]),
      )
    ]),
  ),
]);
Query$BookedGymClasses _parserFn$Query$BookedGymClasses(
        Map<String, dynamic> data) =>
    Query$BookedGymClasses.fromJson(data);
typedef OnQueryComplete$Query$BookedGymClasses = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$BookedGymClasses?,
);

class Options$Query$BookedGymClasses
    extends graphql.QueryOptions<Query$BookedGymClasses> {
  Options$Query$BookedGymClasses({
    String? operationName,
    required Variables$Query$BookedGymClasses variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$BookedGymClasses? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$BookedGymClasses? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null
                        ? null
                        : _parserFn$Query$BookedGymClasses(data),
                  ),
          onError: onError,
          document: documentNodeQueryBookedGymClasses,
          parserFn: _parserFn$Query$BookedGymClasses,
        );

  final OnQueryComplete$Query$BookedGymClasses? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$BookedGymClasses
    extends graphql.WatchQueryOptions<Query$BookedGymClasses> {
  WatchOptions$Query$BookedGymClasses({
    String? operationName,
    required Variables$Query$BookedGymClasses variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$BookedGymClasses? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryBookedGymClasses,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$BookedGymClasses,
        );
}

class FetchMoreOptions$Query$BookedGymClasses extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$BookedGymClasses({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$BookedGymClasses variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryBookedGymClasses,
        );
}

extension ClientExtension$Query$BookedGymClasses on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$BookedGymClasses>> query$BookedGymClasses(
          Options$Query$BookedGymClasses options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$BookedGymClasses> watchQuery$BookedGymClasses(
          WatchOptions$Query$BookedGymClasses options) =>
      this.watchQuery(options);
  void writeQuery$BookedGymClasses({
    required Query$BookedGymClasses data,
    required Variables$Query$BookedGymClasses variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryBookedGymClasses),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$BookedGymClasses? readQuery$BookedGymClasses({
    required Variables$Query$BookedGymClasses variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryBookedGymClasses),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$BookedGymClasses.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$BookedGymClasses>
    useQuery$BookedGymClasses(Options$Query$BookedGymClasses options) =>
        graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$BookedGymClasses> useWatchQuery$BookedGymClasses(
        WatchOptions$Query$BookedGymClasses options) =>
    graphql_flutter.useWatchQuery(options);

class Query$BookedGymClasses$Widget
    extends graphql_flutter.Query<Query$BookedGymClasses> {
  Query$BookedGymClasses$Widget({
    widgets.Key? key,
    required Options$Query$BookedGymClasses options,
    required graphql_flutter.QueryBuilder<Query$BookedGymClasses> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$BookedGymClasses$membershipGymClassesV2 {
  Query$BookedGymClasses$membershipGymClassesV2({
    this.list,
    this.paging,
  });

  factory Query$BookedGymClasses$membershipGymClassesV2.fromJson(
      Map<String, dynamic> json) {
    final l$list = json['list'];
    final l$paging = json['paging'];
    return Query$BookedGymClasses$membershipGymClassesV2(
      list: (l$list as List<dynamic>?)
          ?.map((e) =>
              Query$BookedGymClasses$membershipGymClassesV2$list.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      paging: l$paging == null
          ? null
          : Query$BookedGymClasses$membershipGymClassesV2$paging.fromJson(
              (l$paging as Map<String, dynamic>)),
    );
  }

  final List<Query$BookedGymClasses$membershipGymClassesV2$list>? list;

  final Query$BookedGymClasses$membershipGymClassesV2$paging? paging;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$list = list;
    _resultData['list'] = l$list?.map((e) => e.toJson()).toList();
    final l$paging = paging;
    _resultData['paging'] = l$paging?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$list = list;
    final l$paging = paging;
    return Object.hashAll([
      l$list == null ? null : Object.hashAll(l$list.map((v) => v)),
      l$paging,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$BookedGymClasses$membershipGymClassesV2) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$list = list;
    final lOther$list = other.list;
    if (l$list != null && lOther$list != null) {
      if (l$list.length != lOther$list.length) {
        return false;
      }
      for (int i = 0; i < l$list.length; i++) {
        final l$list$entry = l$list[i];
        final lOther$list$entry = lOther$list[i];
        if (l$list$entry != lOther$list$entry) {
          return false;
        }
      }
    } else if (l$list != lOther$list) {
      return false;
    }
    final l$paging = paging;
    final lOther$paging = other.paging;
    if (l$paging != lOther$paging) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$BookedGymClasses$membershipGymClassesV2
    on Query$BookedGymClasses$membershipGymClassesV2 {
  CopyWith$Query$BookedGymClasses$membershipGymClassesV2<
          Query$BookedGymClasses$membershipGymClassesV2>
      get copyWith => CopyWith$Query$BookedGymClasses$membershipGymClassesV2(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$BookedGymClasses$membershipGymClassesV2<TRes> {
  factory CopyWith$Query$BookedGymClasses$membershipGymClassesV2(
    Query$BookedGymClasses$membershipGymClassesV2 instance,
    TRes Function(Query$BookedGymClasses$membershipGymClassesV2) then,
  ) = _CopyWithImpl$Query$BookedGymClasses$membershipGymClassesV2;

  factory CopyWith$Query$BookedGymClasses$membershipGymClassesV2.stub(
          TRes res) =
      _CopyWithStubImpl$Query$BookedGymClasses$membershipGymClassesV2;

  TRes call({
    List<Query$BookedGymClasses$membershipGymClassesV2$list>? list,
    Query$BookedGymClasses$membershipGymClassesV2$paging? paging,
  });
  TRes list(
      Iterable<Query$BookedGymClasses$membershipGymClassesV2$list>? Function(
              Iterable<
                  CopyWith$Query$BookedGymClasses$membershipGymClassesV2$list<
                      Query$BookedGymClasses$membershipGymClassesV2$list>>?)
          _fn);
  CopyWith$Query$BookedGymClasses$membershipGymClassesV2$paging<TRes>
      get paging;
}

class _CopyWithImpl$Query$BookedGymClasses$membershipGymClassesV2<TRes>
    implements CopyWith$Query$BookedGymClasses$membershipGymClassesV2<TRes> {
  _CopyWithImpl$Query$BookedGymClasses$membershipGymClassesV2(
    this._instance,
    this._then,
  );

  final Query$BookedGymClasses$membershipGymClassesV2 _instance;

  final TRes Function(Query$BookedGymClasses$membershipGymClassesV2) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? list = _undefined,
    Object? paging = _undefined,
  }) =>
      _then(Query$BookedGymClasses$membershipGymClassesV2(
        list: list == _undefined
            ? _instance.list
            : (list
                as List<Query$BookedGymClasses$membershipGymClassesV2$list>?),
        paging: paging == _undefined
            ? _instance.paging
            : (paging as Query$BookedGymClasses$membershipGymClassesV2$paging?),
      ));

  TRes list(
          Iterable<Query$BookedGymClasses$membershipGymClassesV2$list>? Function(
                  Iterable<
                      CopyWith$Query$BookedGymClasses$membershipGymClassesV2$list<
                          Query$BookedGymClasses$membershipGymClassesV2$list>>?)
              _fn) =>
      call(
          list: _fn(_instance.list?.map((e) =>
              CopyWith$Query$BookedGymClasses$membershipGymClassesV2$list(
                e,
                (i) => i,
              )))?.toList());

  CopyWith$Query$BookedGymClasses$membershipGymClassesV2$paging<TRes>
      get paging {
    final local$paging = _instance.paging;
    return local$paging == null
        ? CopyWith$Query$BookedGymClasses$membershipGymClassesV2$paging.stub(
            _then(_instance))
        : CopyWith$Query$BookedGymClasses$membershipGymClassesV2$paging(
            local$paging, (e) => call(paging: e));
  }
}

class _CopyWithStubImpl$Query$BookedGymClasses$membershipGymClassesV2<TRes>
    implements CopyWith$Query$BookedGymClasses$membershipGymClassesV2<TRes> {
  _CopyWithStubImpl$Query$BookedGymClasses$membershipGymClassesV2(this._res);

  TRes _res;

  call({
    List<Query$BookedGymClasses$membershipGymClassesV2$list>? list,
    Query$BookedGymClasses$membershipGymClassesV2$paging? paging,
  }) =>
      _res;

  list(_fn) => _res;

  CopyWith$Query$BookedGymClasses$membershipGymClassesV2$paging<TRes>
      get paging =>
          CopyWith$Query$BookedGymClasses$membershipGymClassesV2$paging.stub(
              _res);
}

class Query$BookedGymClasses$membershipGymClassesV2$list {
  Query$BookedGymClasses$membershipGymClassesV2$list({
    required this.id,
    required this.scheduleGroupId,
    required this.scheduleId,
    this.categoryName,
    required this.name,
    this.description,
    this.images,
    required this.startDate,
    this.endDate,
    required this.date,
    this.estimatedCaloriesBurnt,
    this.difficultyLevel,
    this.status,
    this.dropInClientPrice,
    this.gymMemberClientPrice,
    this.currencyCode,
    this.spots,
    this.spotsAllotted,
    this.soldOut,
    this.gymName,
    this.isPurchased,
    required this.gymId,
    this.brandName,
    this.distance,
    this.distanceInKm,
    this.gymLongitude,
    required this.duration,
    this.instructorFirstName,
    this.instructorLastName,
    required this.openTime,
    this.isAttended,
    required this.isPrivate,
    this.isAttendable,
    this.isCancellable,
    this.isExpired,
    this.qrCode,
  });

  factory Query$BookedGymClasses$membershipGymClassesV2$list.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$scheduleGroupId = json['scheduleGroupId'];
    final l$scheduleId = json['scheduleId'];
    final l$categoryName = json['categoryName'];
    final l$name = json['name'];
    final l$description = json['description'];
    final l$images = json['images'];
    final l$startDate = json['startDate'];
    final l$endDate = json['endDate'];
    final l$date = json['date'];
    final l$estimatedCaloriesBurnt = json['estimatedCaloriesBurnt'];
    final l$difficultyLevel = json['difficultyLevel'];
    final l$status = json['status'];
    final l$dropInClientPrice = json['dropInClientPrice'];
    final l$gymMemberClientPrice = json['gymMemberClientPrice'];
    final l$currencyCode = json['currencyCode'];
    final l$spots = json['spots'];
    final l$spotsAllotted = json['spotsAllotted'];
    final l$soldOut = json['soldOut'];
    final l$gymName = json['gymName'];
    final l$isPurchased = json['isPurchased'];
    final l$gymId = json['gymId'];
    final l$brandName = json['brandName'];
    final l$distance = json['distance'];
    final l$distanceInKm = json['distanceInKm'];
    final l$gymLongitude = json['gymLongitude'];
    final l$duration = json['duration'];
    final l$instructorFirstName = json['instructorFirstName'];
    final l$instructorLastName = json['instructorLastName'];
    final l$openTime = json['openTime'];
    final l$isAttended = json['isAttended'];
    final l$isPrivate = json['isPrivate'];
    final l$isAttendable = json['isAttendable'];
    final l$isCancellable = json['isCancellable'];
    final l$isExpired = json['isExpired'];
    final l$qrCode = json['qrCode'];
    return Query$BookedGymClasses$membershipGymClassesV2$list(
      id: (l$id as String),
      scheduleGroupId: (l$scheduleGroupId as String),
      scheduleId: (l$scheduleId as String),
      categoryName: (l$categoryName as String?),
      name: (l$name as String),
      description: (l$description as String?),
      images: (l$images as List<dynamic>?)?.map((e) => (e as String?)).toList(),
      startDate: dateFromJson(l$startDate),
      endDate: l$endDate == null ? null : dateFromJson(l$endDate),
      date: (l$date as String),
      estimatedCaloriesBurnt: (l$estimatedCaloriesBurnt as String?),
      difficultyLevel: l$difficultyLevel == null
          ? null
          : fromJson$Enum$DifficultyLevel((l$difficultyLevel as String)),
      status: l$status == null
          ? null
          : fromJson$Enum$GlobalStatusType((l$status as String)),
      dropInClientPrice: l$dropInClientPrice == null
          ? null
          : currencyValueFromJson(l$dropInClientPrice),
      gymMemberClientPrice: l$gymMemberClientPrice == null
          ? null
          : currencyValueFromJson(l$gymMemberClientPrice),
      currencyCode: (l$currencyCode as String?),
      spots: (l$spots as int?),
      spotsAllotted: (l$spotsAllotted as int?),
      soldOut: (l$soldOut as bool?),
      gymName: (l$gymName as String?),
      isPurchased: (l$isPurchased as bool?),
      gymId: (l$gymId as String),
      brandName: (l$brandName as String?),
      distance: (l$distance as num?)?.toDouble(),
      distanceInKm: (l$distanceInKm as num?)?.toDouble(),
      gymLongitude: (l$gymLongitude as num?)?.toDouble(),
      duration: (l$duration as num).toDouble(),
      instructorFirstName: (l$instructorFirstName as String?),
      instructorLastName: (l$instructorLastName as String?),
      openTime: (l$openTime as String),
      isAttended: (l$isAttended as bool?),
      isPrivate: (l$isPrivate as bool),
      isAttendable: (l$isAttendable as bool?),
      isCancellable: (l$isCancellable as bool?),
      isExpired: (l$isExpired as bool?),
      qrCode: (l$qrCode as String?),
    );
  }

  final String id;

  final String scheduleGroupId;

  final String scheduleId;

  final String? categoryName;

  final String name;

  final String? description;

  final List<String?>? images;

  final Date startDate;

  final Date? endDate;

  final String date;

  final String? estimatedCaloriesBurnt;

  final Enum$DifficultyLevel? difficultyLevel;

  final Enum$GlobalStatusType? status;

  final CurrencyValue? dropInClientPrice;

  final CurrencyValue? gymMemberClientPrice;

  final String? currencyCode;

  final int? spots;

  final int? spotsAllotted;

  final bool? soldOut;

  final String? gymName;

  final bool? isPurchased;

  final String gymId;

  final String? brandName;

  final double? distance;

  final double? distanceInKm;

  final double? gymLongitude;

  final double duration;

  final String? instructorFirstName;

  final String? instructorLastName;

  final String openTime;

  final bool? isAttended;

  final bool isPrivate;

  final bool? isAttendable;

  final bool? isCancellable;

  final bool? isExpired;

  final String? qrCode;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$scheduleGroupId = scheduleGroupId;
    _resultData['scheduleGroupId'] = l$scheduleGroupId;
    final l$scheduleId = scheduleId;
    _resultData['scheduleId'] = l$scheduleId;
    final l$categoryName = categoryName;
    _resultData['categoryName'] = l$categoryName;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$images = images;
    _resultData['images'] = l$images?.map((e) => e).toList();
    final l$startDate = startDate;
    _resultData['startDate'] = dateToJson(l$startDate);
    final l$endDate = endDate;
    _resultData['endDate'] = l$endDate == null ? null : dateToJson(l$endDate);
    final l$date = date;
    _resultData['date'] = l$date;
    final l$estimatedCaloriesBurnt = estimatedCaloriesBurnt;
    _resultData['estimatedCaloriesBurnt'] = l$estimatedCaloriesBurnt;
    final l$difficultyLevel = difficultyLevel;
    _resultData['difficultyLevel'] = l$difficultyLevel == null
        ? null
        : toJson$Enum$DifficultyLevel(l$difficultyLevel);
    final l$status = status;
    _resultData['status'] =
        l$status == null ? null : toJson$Enum$GlobalStatusType(l$status);
    final l$dropInClientPrice = dropInClientPrice;
    _resultData['dropInClientPrice'] = l$dropInClientPrice == null
        ? null
        : currencyValueToJson(l$dropInClientPrice);
    final l$gymMemberClientPrice = gymMemberClientPrice;
    _resultData['gymMemberClientPrice'] = l$gymMemberClientPrice == null
        ? null
        : currencyValueToJson(l$gymMemberClientPrice);
    final l$currencyCode = currencyCode;
    _resultData['currencyCode'] = l$currencyCode;
    final l$spots = spots;
    _resultData['spots'] = l$spots;
    final l$spotsAllotted = spotsAllotted;
    _resultData['spotsAllotted'] = l$spotsAllotted;
    final l$soldOut = soldOut;
    _resultData['soldOut'] = l$soldOut;
    final l$gymName = gymName;
    _resultData['gymName'] = l$gymName;
    final l$isPurchased = isPurchased;
    _resultData['isPurchased'] = l$isPurchased;
    final l$gymId = gymId;
    _resultData['gymId'] = l$gymId;
    final l$brandName = brandName;
    _resultData['brandName'] = l$brandName;
    final l$distance = distance;
    _resultData['distance'] = l$distance;
    final l$distanceInKm = distanceInKm;
    _resultData['distanceInKm'] = l$distanceInKm;
    final l$gymLongitude = gymLongitude;
    _resultData['gymLongitude'] = l$gymLongitude;
    final l$duration = duration;
    _resultData['duration'] = l$duration;
    final l$instructorFirstName = instructorFirstName;
    _resultData['instructorFirstName'] = l$instructorFirstName;
    final l$instructorLastName = instructorLastName;
    _resultData['instructorLastName'] = l$instructorLastName;
    final l$openTime = openTime;
    _resultData['openTime'] = l$openTime;
    final l$isAttended = isAttended;
    _resultData['isAttended'] = l$isAttended;
    final l$isPrivate = isPrivate;
    _resultData['isPrivate'] = l$isPrivate;
    final l$isAttendable = isAttendable;
    _resultData['isAttendable'] = l$isAttendable;
    final l$isCancellable = isCancellable;
    _resultData['isCancellable'] = l$isCancellable;
    final l$isExpired = isExpired;
    _resultData['isExpired'] = l$isExpired;
    final l$qrCode = qrCode;
    _resultData['qrCode'] = l$qrCode;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$scheduleGroupId = scheduleGroupId;
    final l$scheduleId = scheduleId;
    final l$categoryName = categoryName;
    final l$name = name;
    final l$description = description;
    final l$images = images;
    final l$startDate = startDate;
    final l$endDate = endDate;
    final l$date = date;
    final l$estimatedCaloriesBurnt = estimatedCaloriesBurnt;
    final l$difficultyLevel = difficultyLevel;
    final l$status = status;
    final l$dropInClientPrice = dropInClientPrice;
    final l$gymMemberClientPrice = gymMemberClientPrice;
    final l$currencyCode = currencyCode;
    final l$spots = spots;
    final l$spotsAllotted = spotsAllotted;
    final l$soldOut = soldOut;
    final l$gymName = gymName;
    final l$isPurchased = isPurchased;
    final l$gymId = gymId;
    final l$brandName = brandName;
    final l$distance = distance;
    final l$distanceInKm = distanceInKm;
    final l$gymLongitude = gymLongitude;
    final l$duration = duration;
    final l$instructorFirstName = instructorFirstName;
    final l$instructorLastName = instructorLastName;
    final l$openTime = openTime;
    final l$isAttended = isAttended;
    final l$isPrivate = isPrivate;
    final l$isAttendable = isAttendable;
    final l$isCancellable = isCancellable;
    final l$isExpired = isExpired;
    final l$qrCode = qrCode;
    return Object.hashAll([
      l$id,
      l$scheduleGroupId,
      l$scheduleId,
      l$categoryName,
      l$name,
      l$description,
      l$images == null ? null : Object.hashAll(l$images.map((v) => v)),
      l$startDate,
      l$endDate,
      l$date,
      l$estimatedCaloriesBurnt,
      l$difficultyLevel,
      l$status,
      l$dropInClientPrice,
      l$gymMemberClientPrice,
      l$currencyCode,
      l$spots,
      l$spotsAllotted,
      l$soldOut,
      l$gymName,
      l$isPurchased,
      l$gymId,
      l$brandName,
      l$distance,
      l$distanceInKm,
      l$gymLongitude,
      l$duration,
      l$instructorFirstName,
      l$instructorLastName,
      l$openTime,
      l$isAttended,
      l$isPrivate,
      l$isAttendable,
      l$isCancellable,
      l$isExpired,
      l$qrCode,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$BookedGymClasses$membershipGymClassesV2$list) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$scheduleGroupId = scheduleGroupId;
    final lOther$scheduleGroupId = other.scheduleGroupId;
    if (l$scheduleGroupId != lOther$scheduleGroupId) {
      return false;
    }
    final l$scheduleId = scheduleId;
    final lOther$scheduleId = other.scheduleId;
    if (l$scheduleId != lOther$scheduleId) {
      return false;
    }
    final l$categoryName = categoryName;
    final lOther$categoryName = other.categoryName;
    if (l$categoryName != lOther$categoryName) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$images = images;
    final lOther$images = other.images;
    if (l$images != null && lOther$images != null) {
      if (l$images.length != lOther$images.length) {
        return false;
      }
      for (int i = 0; i < l$images.length; i++) {
        final l$images$entry = l$images[i];
        final lOther$images$entry = lOther$images[i];
        if (l$images$entry != lOther$images$entry) {
          return false;
        }
      }
    } else if (l$images != lOther$images) {
      return false;
    }
    final l$startDate = startDate;
    final lOther$startDate = other.startDate;
    if (l$startDate != lOther$startDate) {
      return false;
    }
    final l$endDate = endDate;
    final lOther$endDate = other.endDate;
    if (l$endDate != lOther$endDate) {
      return false;
    }
    final l$date = date;
    final lOther$date = other.date;
    if (l$date != lOther$date) {
      return false;
    }
    final l$estimatedCaloriesBurnt = estimatedCaloriesBurnt;
    final lOther$estimatedCaloriesBurnt = other.estimatedCaloriesBurnt;
    if (l$estimatedCaloriesBurnt != lOther$estimatedCaloriesBurnt) {
      return false;
    }
    final l$difficultyLevel = difficultyLevel;
    final lOther$difficultyLevel = other.difficultyLevel;
    if (l$difficultyLevel != lOther$difficultyLevel) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$dropInClientPrice = dropInClientPrice;
    final lOther$dropInClientPrice = other.dropInClientPrice;
    if (l$dropInClientPrice != lOther$dropInClientPrice) {
      return false;
    }
    final l$gymMemberClientPrice = gymMemberClientPrice;
    final lOther$gymMemberClientPrice = other.gymMemberClientPrice;
    if (l$gymMemberClientPrice != lOther$gymMemberClientPrice) {
      return false;
    }
    final l$currencyCode = currencyCode;
    final lOther$currencyCode = other.currencyCode;
    if (l$currencyCode != lOther$currencyCode) {
      return false;
    }
    final l$spots = spots;
    final lOther$spots = other.spots;
    if (l$spots != lOther$spots) {
      return false;
    }
    final l$spotsAllotted = spotsAllotted;
    final lOther$spotsAllotted = other.spotsAllotted;
    if (l$spotsAllotted != lOther$spotsAllotted) {
      return false;
    }
    final l$soldOut = soldOut;
    final lOther$soldOut = other.soldOut;
    if (l$soldOut != lOther$soldOut) {
      return false;
    }
    final l$gymName = gymName;
    final lOther$gymName = other.gymName;
    if (l$gymName != lOther$gymName) {
      return false;
    }
    final l$isPurchased = isPurchased;
    final lOther$isPurchased = other.isPurchased;
    if (l$isPurchased != lOther$isPurchased) {
      return false;
    }
    final l$gymId = gymId;
    final lOther$gymId = other.gymId;
    if (l$gymId != lOther$gymId) {
      return false;
    }
    final l$brandName = brandName;
    final lOther$brandName = other.brandName;
    if (l$brandName != lOther$brandName) {
      return false;
    }
    final l$distance = distance;
    final lOther$distance = other.distance;
    if (l$distance != lOther$distance) {
      return false;
    }
    final l$distanceInKm = distanceInKm;
    final lOther$distanceInKm = other.distanceInKm;
    if (l$distanceInKm != lOther$distanceInKm) {
      return false;
    }
    final l$gymLongitude = gymLongitude;
    final lOther$gymLongitude = other.gymLongitude;
    if (l$gymLongitude != lOther$gymLongitude) {
      return false;
    }
    final l$duration = duration;
    final lOther$duration = other.duration;
    if (l$duration != lOther$duration) {
      return false;
    }
    final l$instructorFirstName = instructorFirstName;
    final lOther$instructorFirstName = other.instructorFirstName;
    if (l$instructorFirstName != lOther$instructorFirstName) {
      return false;
    }
    final l$instructorLastName = instructorLastName;
    final lOther$instructorLastName = other.instructorLastName;
    if (l$instructorLastName != lOther$instructorLastName) {
      return false;
    }
    final l$openTime = openTime;
    final lOther$openTime = other.openTime;
    if (l$openTime != lOther$openTime) {
      return false;
    }
    final l$isAttended = isAttended;
    final lOther$isAttended = other.isAttended;
    if (l$isAttended != lOther$isAttended) {
      return false;
    }
    final l$isPrivate = isPrivate;
    final lOther$isPrivate = other.isPrivate;
    if (l$isPrivate != lOther$isPrivate) {
      return false;
    }
    final l$isAttendable = isAttendable;
    final lOther$isAttendable = other.isAttendable;
    if (l$isAttendable != lOther$isAttendable) {
      return false;
    }
    final l$isCancellable = isCancellable;
    final lOther$isCancellable = other.isCancellable;
    if (l$isCancellable != lOther$isCancellable) {
      return false;
    }
    final l$isExpired = isExpired;
    final lOther$isExpired = other.isExpired;
    if (l$isExpired != lOther$isExpired) {
      return false;
    }
    final l$qrCode = qrCode;
    final lOther$qrCode = other.qrCode;
    if (l$qrCode != lOther$qrCode) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$BookedGymClasses$membershipGymClassesV2$list
    on Query$BookedGymClasses$membershipGymClassesV2$list {
  CopyWith$Query$BookedGymClasses$membershipGymClassesV2$list<
          Query$BookedGymClasses$membershipGymClassesV2$list>
      get copyWith =>
          CopyWith$Query$BookedGymClasses$membershipGymClassesV2$list(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$BookedGymClasses$membershipGymClassesV2$list<
    TRes> {
  factory CopyWith$Query$BookedGymClasses$membershipGymClassesV2$list(
    Query$BookedGymClasses$membershipGymClassesV2$list instance,
    TRes Function(Query$BookedGymClasses$membershipGymClassesV2$list) then,
  ) = _CopyWithImpl$Query$BookedGymClasses$membershipGymClassesV2$list;

  factory CopyWith$Query$BookedGymClasses$membershipGymClassesV2$list.stub(
          TRes res) =
      _CopyWithStubImpl$Query$BookedGymClasses$membershipGymClassesV2$list;

  TRes call({
    String? id,
    String? scheduleGroupId,
    String? scheduleId,
    String? categoryName,
    String? name,
    String? description,
    List<String?>? images,
    Date? startDate,
    Date? endDate,
    String? date,
    String? estimatedCaloriesBurnt,
    Enum$DifficultyLevel? difficultyLevel,
    Enum$GlobalStatusType? status,
    CurrencyValue? dropInClientPrice,
    CurrencyValue? gymMemberClientPrice,
    String? currencyCode,
    int? spots,
    int? spotsAllotted,
    bool? soldOut,
    String? gymName,
    bool? isPurchased,
    String? gymId,
    String? brandName,
    double? distance,
    double? distanceInKm,
    double? gymLongitude,
    double? duration,
    String? instructorFirstName,
    String? instructorLastName,
    String? openTime,
    bool? isAttended,
    bool? isPrivate,
    bool? isAttendable,
    bool? isCancellable,
    bool? isExpired,
    String? qrCode,
  });
}

class _CopyWithImpl$Query$BookedGymClasses$membershipGymClassesV2$list<TRes>
    implements
        CopyWith$Query$BookedGymClasses$membershipGymClassesV2$list<TRes> {
  _CopyWithImpl$Query$BookedGymClasses$membershipGymClassesV2$list(
    this._instance,
    this._then,
  );

  final Query$BookedGymClasses$membershipGymClassesV2$list _instance;

  final TRes Function(Query$BookedGymClasses$membershipGymClassesV2$list) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? scheduleGroupId = _undefined,
    Object? scheduleId = _undefined,
    Object? categoryName = _undefined,
    Object? name = _undefined,
    Object? description = _undefined,
    Object? images = _undefined,
    Object? startDate = _undefined,
    Object? endDate = _undefined,
    Object? date = _undefined,
    Object? estimatedCaloriesBurnt = _undefined,
    Object? difficultyLevel = _undefined,
    Object? status = _undefined,
    Object? dropInClientPrice = _undefined,
    Object? gymMemberClientPrice = _undefined,
    Object? currencyCode = _undefined,
    Object? spots = _undefined,
    Object? spotsAllotted = _undefined,
    Object? soldOut = _undefined,
    Object? gymName = _undefined,
    Object? isPurchased = _undefined,
    Object? gymId = _undefined,
    Object? brandName = _undefined,
    Object? distance = _undefined,
    Object? distanceInKm = _undefined,
    Object? gymLongitude = _undefined,
    Object? duration = _undefined,
    Object? instructorFirstName = _undefined,
    Object? instructorLastName = _undefined,
    Object? openTime = _undefined,
    Object? isAttended = _undefined,
    Object? isPrivate = _undefined,
    Object? isAttendable = _undefined,
    Object? isCancellable = _undefined,
    Object? isExpired = _undefined,
    Object? qrCode = _undefined,
  }) =>
      _then(Query$BookedGymClasses$membershipGymClassesV2$list(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        scheduleGroupId:
            scheduleGroupId == _undefined || scheduleGroupId == null
                ? _instance.scheduleGroupId
                : (scheduleGroupId as String),
        scheduleId: scheduleId == _undefined || scheduleId == null
            ? _instance.scheduleId
            : (scheduleId as String),
        categoryName: categoryName == _undefined
            ? _instance.categoryName
            : (categoryName as String?),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        images: images == _undefined
            ? _instance.images
            : (images as List<String?>?),
        startDate: startDate == _undefined || startDate == null
            ? _instance.startDate
            : (startDate as Date),
        endDate: endDate == _undefined ? _instance.endDate : (endDate as Date?),
        date: date == _undefined || date == null
            ? _instance.date
            : (date as String),
        estimatedCaloriesBurnt: estimatedCaloriesBurnt == _undefined
            ? _instance.estimatedCaloriesBurnt
            : (estimatedCaloriesBurnt as String?),
        difficultyLevel: difficultyLevel == _undefined
            ? _instance.difficultyLevel
            : (difficultyLevel as Enum$DifficultyLevel?),
        status: status == _undefined
            ? _instance.status
            : (status as Enum$GlobalStatusType?),
        dropInClientPrice: dropInClientPrice == _undefined
            ? _instance.dropInClientPrice
            : (dropInClientPrice as CurrencyValue?),
        gymMemberClientPrice: gymMemberClientPrice == _undefined
            ? _instance.gymMemberClientPrice
            : (gymMemberClientPrice as CurrencyValue?),
        currencyCode: currencyCode == _undefined
            ? _instance.currencyCode
            : (currencyCode as String?),
        spots: spots == _undefined ? _instance.spots : (spots as int?),
        spotsAllotted: spotsAllotted == _undefined
            ? _instance.spotsAllotted
            : (spotsAllotted as int?),
        soldOut: soldOut == _undefined ? _instance.soldOut : (soldOut as bool?),
        gymName:
            gymName == _undefined ? _instance.gymName : (gymName as String?),
        isPurchased: isPurchased == _undefined
            ? _instance.isPurchased
            : (isPurchased as bool?),
        gymId: gymId == _undefined || gymId == null
            ? _instance.gymId
            : (gymId as String),
        brandName: brandName == _undefined
            ? _instance.brandName
            : (brandName as String?),
        distance:
            distance == _undefined ? _instance.distance : (distance as double?),
        distanceInKm: distanceInKm == _undefined
            ? _instance.distanceInKm
            : (distanceInKm as double?),
        gymLongitude: gymLongitude == _undefined
            ? _instance.gymLongitude
            : (gymLongitude as double?),
        duration: duration == _undefined || duration == null
            ? _instance.duration
            : (duration as double),
        instructorFirstName: instructorFirstName == _undefined
            ? _instance.instructorFirstName
            : (instructorFirstName as String?),
        instructorLastName: instructorLastName == _undefined
            ? _instance.instructorLastName
            : (instructorLastName as String?),
        openTime: openTime == _undefined || openTime == null
            ? _instance.openTime
            : (openTime as String),
        isAttended: isAttended == _undefined
            ? _instance.isAttended
            : (isAttended as bool?),
        isPrivate: isPrivate == _undefined || isPrivate == null
            ? _instance.isPrivate
            : (isPrivate as bool),
        isAttendable: isAttendable == _undefined
            ? _instance.isAttendable
            : (isAttendable as bool?),
        isCancellable: isCancellable == _undefined
            ? _instance.isCancellable
            : (isCancellable as bool?),
        isExpired: isExpired == _undefined
            ? _instance.isExpired
            : (isExpired as bool?),
        qrCode: qrCode == _undefined ? _instance.qrCode : (qrCode as String?),
      ));
}

class _CopyWithStubImpl$Query$BookedGymClasses$membershipGymClassesV2$list<TRes>
    implements
        CopyWith$Query$BookedGymClasses$membershipGymClassesV2$list<TRes> {
  _CopyWithStubImpl$Query$BookedGymClasses$membershipGymClassesV2$list(
      this._res);

  TRes _res;

  call({
    String? id,
    String? scheduleGroupId,
    String? scheduleId,
    String? categoryName,
    String? name,
    String? description,
    List<String?>? images,
    Date? startDate,
    Date? endDate,
    String? date,
    String? estimatedCaloriesBurnt,
    Enum$DifficultyLevel? difficultyLevel,
    Enum$GlobalStatusType? status,
    CurrencyValue? dropInClientPrice,
    CurrencyValue? gymMemberClientPrice,
    String? currencyCode,
    int? spots,
    int? spotsAllotted,
    bool? soldOut,
    String? gymName,
    bool? isPurchased,
    String? gymId,
    String? brandName,
    double? distance,
    double? distanceInKm,
    double? gymLongitude,
    double? duration,
    String? instructorFirstName,
    String? instructorLastName,
    String? openTime,
    bool? isAttended,
    bool? isPrivate,
    bool? isAttendable,
    bool? isCancellable,
    bool? isExpired,
    String? qrCode,
  }) =>
      _res;
}

class Query$BookedGymClasses$membershipGymClassesV2$paging {
  Query$BookedGymClasses$membershipGymClassesV2$paging({
    required this.page,
    required this.limit,
  });

  factory Query$BookedGymClasses$membershipGymClassesV2$paging.fromJson(
      Map<String, dynamic> json) {
    final l$page = json['page'];
    final l$limit = json['limit'];
    return Query$BookedGymClasses$membershipGymClassesV2$paging(
      page: (l$page as int),
      limit: (l$limit as int),
    );
  }

  final int page;

  final int limit;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$page = page;
    _resultData['page'] = l$page;
    final l$limit = limit;
    _resultData['limit'] = l$limit;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$page = page;
    final l$limit = limit;
    return Object.hashAll([
      l$page,
      l$limit,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$BookedGymClasses$membershipGymClassesV2$paging) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$page = page;
    final lOther$page = other.page;
    if (l$page != lOther$page) {
      return false;
    }
    final l$limit = limit;
    final lOther$limit = other.limit;
    if (l$limit != lOther$limit) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$BookedGymClasses$membershipGymClassesV2$paging
    on Query$BookedGymClasses$membershipGymClassesV2$paging {
  CopyWith$Query$BookedGymClasses$membershipGymClassesV2$paging<
          Query$BookedGymClasses$membershipGymClassesV2$paging>
      get copyWith =>
          CopyWith$Query$BookedGymClasses$membershipGymClassesV2$paging(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$BookedGymClasses$membershipGymClassesV2$paging<
    TRes> {
  factory CopyWith$Query$BookedGymClasses$membershipGymClassesV2$paging(
    Query$BookedGymClasses$membershipGymClassesV2$paging instance,
    TRes Function(Query$BookedGymClasses$membershipGymClassesV2$paging) then,
  ) = _CopyWithImpl$Query$BookedGymClasses$membershipGymClassesV2$paging;

  factory CopyWith$Query$BookedGymClasses$membershipGymClassesV2$paging.stub(
          TRes res) =
      _CopyWithStubImpl$Query$BookedGymClasses$membershipGymClassesV2$paging;

  TRes call({
    int? page,
    int? limit,
  });
}

class _CopyWithImpl$Query$BookedGymClasses$membershipGymClassesV2$paging<TRes>
    implements
        CopyWith$Query$BookedGymClasses$membershipGymClassesV2$paging<TRes> {
  _CopyWithImpl$Query$BookedGymClasses$membershipGymClassesV2$paging(
    this._instance,
    this._then,
  );

  final Query$BookedGymClasses$membershipGymClassesV2$paging _instance;

  final TRes Function(Query$BookedGymClasses$membershipGymClassesV2$paging)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? page = _undefined,
    Object? limit = _undefined,
  }) =>
      _then(Query$BookedGymClasses$membershipGymClassesV2$paging(
        page:
            page == _undefined || page == null ? _instance.page : (page as int),
        limit: limit == _undefined || limit == null
            ? _instance.limit
            : (limit as int),
      ));
}

class _CopyWithStubImpl$Query$BookedGymClasses$membershipGymClassesV2$paging<
        TRes>
    implements
        CopyWith$Query$BookedGymClasses$membershipGymClassesV2$paging<TRes> {
  _CopyWithStubImpl$Query$BookedGymClasses$membershipGymClassesV2$paging(
      this._res);

  TRes _res;

  call({
    int? page,
    int? limit,
  }) =>
      _res;
}
