import '../../schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$PurchasedGymMemberships {
  factory Variables$Query$PurchasedGymMemberships(
          {Input$GetMembershipsQueryFilter? filter}) =>
      Variables$Query$PurchasedGymMemberships._({
        if (filter != null) r'filter': filter,
      });

  Variables$Query$PurchasedGymMemberships._(this._$data);

  factory Variables$Query$PurchasedGymMemberships.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input$GetMembershipsQueryFilter.fromJson(
              (l$filter as Map<String, dynamic>));
    }
    return Variables$Query$PurchasedGymMemberships._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$GetMembershipsQueryFilter? get filter =>
      (_$data['filter'] as Input$GetMembershipsQueryFilter?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('filter')) {
      final l$filter = filter;
      result$data['filter'] = l$filter?.toJson();
    }
    return result$data;
  }

  CopyWith$Variables$Query$PurchasedGymMemberships<
          Variables$Query$PurchasedGymMemberships>
      get copyWith => CopyWith$Variables$Query$PurchasedGymMemberships(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$PurchasedGymMemberships) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$filter = filter;
    final lOther$filter = other.filter;
    if (_$data.containsKey('filter') != other._$data.containsKey('filter')) {
      return false;
    }
    if (l$filter != lOther$filter) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$filter = filter;
    return Object.hashAll([_$data.containsKey('filter') ? l$filter : const {}]);
  }
}

abstract class CopyWith$Variables$Query$PurchasedGymMemberships<TRes> {
  factory CopyWith$Variables$Query$PurchasedGymMemberships(
    Variables$Query$PurchasedGymMemberships instance,
    TRes Function(Variables$Query$PurchasedGymMemberships) then,
  ) = _CopyWithImpl$Variables$Query$PurchasedGymMemberships;

  factory CopyWith$Variables$Query$PurchasedGymMemberships.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$PurchasedGymMemberships;

  TRes call({Input$GetMembershipsQueryFilter? filter});
}

class _CopyWithImpl$Variables$Query$PurchasedGymMemberships<TRes>
    implements CopyWith$Variables$Query$PurchasedGymMemberships<TRes> {
  _CopyWithImpl$Variables$Query$PurchasedGymMemberships(
    this._instance,
    this._then,
  );

  final Variables$Query$PurchasedGymMemberships _instance;

  final TRes Function(Variables$Query$PurchasedGymMemberships) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? filter = _undefined}) =>
      _then(Variables$Query$PurchasedGymMemberships._({
        ..._instance._$data,
        if (filter != _undefined)
          'filter': (filter as Input$GetMembershipsQueryFilter?),
      }));
}

class _CopyWithStubImpl$Variables$Query$PurchasedGymMemberships<TRes>
    implements CopyWith$Variables$Query$PurchasedGymMemberships<TRes> {
  _CopyWithStubImpl$Variables$Query$PurchasedGymMemberships(this._res);

  TRes _res;

  call({Input$GetMembershipsQueryFilter? filter}) => _res;
}

class Query$PurchasedGymMemberships {
  Query$PurchasedGymMemberships({this.memberships});

  factory Query$PurchasedGymMemberships.fromJson(Map<String, dynamic> json) {
    final l$memberships = json['memberships'];
    return Query$PurchasedGymMemberships(
        memberships: l$memberships == null
            ? null
            : Query$PurchasedGymMemberships$memberships.fromJson(
                (l$memberships as Map<String, dynamic>)));
  }

  final Query$PurchasedGymMemberships$memberships? memberships;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$memberships = memberships;
    _resultData['memberships'] = l$memberships?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$memberships = memberships;
    return Object.hashAll([l$memberships]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$PurchasedGymMemberships) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$memberships = memberships;
    final lOther$memberships = other.memberships;
    if (l$memberships != lOther$memberships) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$PurchasedGymMemberships
    on Query$PurchasedGymMemberships {
  CopyWith$Query$PurchasedGymMemberships<Query$PurchasedGymMemberships>
      get copyWith => CopyWith$Query$PurchasedGymMemberships(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PurchasedGymMemberships<TRes> {
  factory CopyWith$Query$PurchasedGymMemberships(
    Query$PurchasedGymMemberships instance,
    TRes Function(Query$PurchasedGymMemberships) then,
  ) = _CopyWithImpl$Query$PurchasedGymMemberships;

  factory CopyWith$Query$PurchasedGymMemberships.stub(TRes res) =
      _CopyWithStubImpl$Query$PurchasedGymMemberships;

  TRes call({Query$PurchasedGymMemberships$memberships? memberships});
  CopyWith$Query$PurchasedGymMemberships$memberships<TRes> get memberships;
}

class _CopyWithImpl$Query$PurchasedGymMemberships<TRes>
    implements CopyWith$Query$PurchasedGymMemberships<TRes> {
  _CopyWithImpl$Query$PurchasedGymMemberships(
    this._instance,
    this._then,
  );

  final Query$PurchasedGymMemberships _instance;

  final TRes Function(Query$PurchasedGymMemberships) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? memberships = _undefined}) =>
      _then(Query$PurchasedGymMemberships(
          memberships: memberships == _undefined
              ? _instance.memberships
              : (memberships as Query$PurchasedGymMemberships$memberships?)));

  CopyWith$Query$PurchasedGymMemberships$memberships<TRes> get memberships {
    final local$memberships = _instance.memberships;
    return local$memberships == null
        ? CopyWith$Query$PurchasedGymMemberships$memberships.stub(
            _then(_instance))
        : CopyWith$Query$PurchasedGymMemberships$memberships(
            local$memberships, (e) => call(memberships: e));
  }
}

class _CopyWithStubImpl$Query$PurchasedGymMemberships<TRes>
    implements CopyWith$Query$PurchasedGymMemberships<TRes> {
  _CopyWithStubImpl$Query$PurchasedGymMemberships(this._res);

  TRes _res;

  call({Query$PurchasedGymMemberships$memberships? memberships}) => _res;

  CopyWith$Query$PurchasedGymMemberships$memberships<TRes> get memberships =>
      CopyWith$Query$PurchasedGymMemberships$memberships.stub(_res);
}

const documentNodeQueryPurchasedGymMemberships = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'PurchasedGymMemberships'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'filter')),
        type: NamedTypeNode(
          name: NameNode(value: 'GetMembershipsQueryFilter'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'memberships'),
        alias: NameNode(value: 'memberships'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'filter'),
            value: VariableNode(name: NameNode(value: 'filter')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'status'),
            alias: NameNode(value: 'status'),
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'reason'),
                alias: NameNode(value: 'reason'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'success'),
                alias: NameNode(value: 'success'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'data'),
            alias: NameNode(value: 'data'),
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'singleMemberships'),
                alias: NameNode(value: 'singleMemberships'),
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
                    name: NameNode(value: 'name'),
                    alias: NameNode(value: 'name'),
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
                  FieldNode(
                    name: NameNode(value: 'currency'),
                    alias: NameNode(value: 'currency'),
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
                    name: NameNode(value: 'status'),
                    alias: NameNode(value: 'status'),
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'membershipId'),
                    alias: NameNode(value: 'membershipId'),
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'membershipCode'),
                    alias: NameNode(value: 'membershipCode'),
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: 'groupMemberships'),
                alias: NameNode(value: 'groupMemberships'),
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
                    name: NameNode(value: 'name'),
                    alias: NameNode(value: 'name'),
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
                  FieldNode(
                    name: NameNode(value: 'currency'),
                    alias: NameNode(value: 'currency'),
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
                    name: NameNode(value: 'status'),
                    alias: NameNode(value: 'status'),
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'membershipId'),
                    alias: NameNode(value: 'membershipId'),
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'membershipCode'),
                    alias: NameNode(value: 'membershipCode'),
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: 'sessionPacks'),
                alias: NameNode(value: 'sessionPacks'),
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
                    name: NameNode(value: 'name'),
                    alias: NameNode(value: 'name'),
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
                  FieldNode(
                    name: NameNode(value: 'currency'),
                    alias: NameNode(value: 'currency'),
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
                    name: NameNode(value: 'status'),
                    alias: NameNode(value: 'status'),
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'membershipCode'),
                    alias: NameNode(value: 'membershipCode'),
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
            ]),
          ),
        ]),
      )
    ]),
  ),
]);
Query$PurchasedGymMemberships _parserFn$Query$PurchasedGymMemberships(
        Map<String, dynamic> data) =>
    Query$PurchasedGymMemberships.fromJson(data);
typedef OnQueryComplete$Query$PurchasedGymMemberships = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$PurchasedGymMemberships?,
);

class Options$Query$PurchasedGymMemberships
    extends graphql.QueryOptions<Query$PurchasedGymMemberships> {
  Options$Query$PurchasedGymMemberships({
    String? operationName,
    Variables$Query$PurchasedGymMemberships? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$PurchasedGymMemberships? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$PurchasedGymMemberships? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables?.toJson() ?? {},
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
                        : _parserFn$Query$PurchasedGymMemberships(data),
                  ),
          onError: onError,
          document: documentNodeQueryPurchasedGymMemberships,
          parserFn: _parserFn$Query$PurchasedGymMemberships,
        );

  final OnQueryComplete$Query$PurchasedGymMemberships? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$PurchasedGymMemberships
    extends graphql.WatchQueryOptions<Query$PurchasedGymMemberships> {
  WatchOptions$Query$PurchasedGymMemberships({
    String? operationName,
    Variables$Query$PurchasedGymMemberships? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$PurchasedGymMemberships? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryPurchasedGymMemberships,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$PurchasedGymMemberships,
        );
}

class FetchMoreOptions$Query$PurchasedGymMemberships
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$PurchasedGymMemberships({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$PurchasedGymMemberships? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryPurchasedGymMemberships,
        );
}

extension ClientExtension$Query$PurchasedGymMemberships
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$PurchasedGymMemberships>>
      query$PurchasedGymMemberships(
              [Options$Query$PurchasedGymMemberships? options]) async =>
          await this.query(options ?? Options$Query$PurchasedGymMemberships());
  graphql.ObservableQuery<
      Query$PurchasedGymMemberships> watchQuery$PurchasedGymMemberships(
          [WatchOptions$Query$PurchasedGymMemberships? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$PurchasedGymMemberships());
  void writeQuery$PurchasedGymMemberships({
    required Query$PurchasedGymMemberships data,
    Variables$Query$PurchasedGymMemberships? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryPurchasedGymMemberships),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$PurchasedGymMemberships? readQuery$PurchasedGymMemberships({
    Variables$Query$PurchasedGymMemberships? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
            document: documentNodeQueryPurchasedGymMemberships),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$PurchasedGymMemberships.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$PurchasedGymMemberships>
    useQuery$PurchasedGymMemberships(
            [Options$Query$PurchasedGymMemberships? options]) =>
        graphql_flutter
            .useQuery(options ?? Options$Query$PurchasedGymMemberships());
graphql.ObservableQuery<Query$PurchasedGymMemberships>
    useWatchQuery$PurchasedGymMemberships(
            [WatchOptions$Query$PurchasedGymMemberships? options]) =>
        graphql_flutter.useWatchQuery(
            options ?? WatchOptions$Query$PurchasedGymMemberships());

class Query$PurchasedGymMemberships$Widget
    extends graphql_flutter.Query<Query$PurchasedGymMemberships> {
  Query$PurchasedGymMemberships$Widget({
    widgets.Key? key,
    Options$Query$PurchasedGymMemberships? options,
    required graphql_flutter.QueryBuilder<Query$PurchasedGymMemberships>
        builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$PurchasedGymMemberships(),
          builder: builder,
        );
}

class Query$PurchasedGymMemberships$memberships {
  Query$PurchasedGymMemberships$memberships({
    required this.status,
    this.data,
  });

  factory Query$PurchasedGymMemberships$memberships.fromJson(
      Map<String, dynamic> json) {
    final l$status = json['status'];
    final l$data = json['data'];
    return Query$PurchasedGymMemberships$memberships(
      status: Query$PurchasedGymMemberships$memberships$status.fromJson(
          (l$status as Map<String, dynamic>)),
      data: l$data == null
          ? null
          : Query$PurchasedGymMemberships$memberships$data.fromJson(
              (l$data as Map<String, dynamic>)),
    );
  }

  final Query$PurchasedGymMemberships$memberships$status status;

  final Query$PurchasedGymMemberships$memberships$data? data;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$status = status;
    _resultData['status'] = l$status.toJson();
    final l$data = data;
    _resultData['data'] = l$data?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$status = status;
    final l$data = data;
    return Object.hashAll([
      l$status,
      l$data,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$PurchasedGymMemberships$memberships) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$PurchasedGymMemberships$memberships
    on Query$PurchasedGymMemberships$memberships {
  CopyWith$Query$PurchasedGymMemberships$memberships<
          Query$PurchasedGymMemberships$memberships>
      get copyWith => CopyWith$Query$PurchasedGymMemberships$memberships(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PurchasedGymMemberships$memberships<TRes> {
  factory CopyWith$Query$PurchasedGymMemberships$memberships(
    Query$PurchasedGymMemberships$memberships instance,
    TRes Function(Query$PurchasedGymMemberships$memberships) then,
  ) = _CopyWithImpl$Query$PurchasedGymMemberships$memberships;

  factory CopyWith$Query$PurchasedGymMemberships$memberships.stub(TRes res) =
      _CopyWithStubImpl$Query$PurchasedGymMemberships$memberships;

  TRes call({
    Query$PurchasedGymMemberships$memberships$status? status,
    Query$PurchasedGymMemberships$memberships$data? data,
  });
  CopyWith$Query$PurchasedGymMemberships$memberships$status<TRes> get status;
  CopyWith$Query$PurchasedGymMemberships$memberships$data<TRes> get data;
}

class _CopyWithImpl$Query$PurchasedGymMemberships$memberships<TRes>
    implements CopyWith$Query$PurchasedGymMemberships$memberships<TRes> {
  _CopyWithImpl$Query$PurchasedGymMemberships$memberships(
    this._instance,
    this._then,
  );

  final Query$PurchasedGymMemberships$memberships _instance;

  final TRes Function(Query$PurchasedGymMemberships$memberships) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? status = _undefined,
    Object? data = _undefined,
  }) =>
      _then(Query$PurchasedGymMemberships$memberships(
        status: status == _undefined || status == null
            ? _instance.status
            : (status as Query$PurchasedGymMemberships$memberships$status),
        data: data == _undefined
            ? _instance.data
            : (data as Query$PurchasedGymMemberships$memberships$data?),
      ));

  CopyWith$Query$PurchasedGymMemberships$memberships$status<TRes> get status {
    final local$status = _instance.status;
    return CopyWith$Query$PurchasedGymMemberships$memberships$status(
        local$status, (e) => call(status: e));
  }

  CopyWith$Query$PurchasedGymMemberships$memberships$data<TRes> get data {
    final local$data = _instance.data;
    return local$data == null
        ? CopyWith$Query$PurchasedGymMemberships$memberships$data.stub(
            _then(_instance))
        : CopyWith$Query$PurchasedGymMemberships$memberships$data(
            local$data, (e) => call(data: e));
  }
}

class _CopyWithStubImpl$Query$PurchasedGymMemberships$memberships<TRes>
    implements CopyWith$Query$PurchasedGymMemberships$memberships<TRes> {
  _CopyWithStubImpl$Query$PurchasedGymMemberships$memberships(this._res);

  TRes _res;

  call({
    Query$PurchasedGymMemberships$memberships$status? status,
    Query$PurchasedGymMemberships$memberships$data? data,
  }) =>
      _res;

  CopyWith$Query$PurchasedGymMemberships$memberships$status<TRes> get status =>
      CopyWith$Query$PurchasedGymMemberships$memberships$status.stub(_res);

  CopyWith$Query$PurchasedGymMemberships$memberships$data<TRes> get data =>
      CopyWith$Query$PurchasedGymMemberships$memberships$data.stub(_res);
}

class Query$PurchasedGymMemberships$memberships$status {
  Query$PurchasedGymMemberships$memberships$status({
    this.reason,
    required this.success,
  });

  factory Query$PurchasedGymMemberships$memberships$status.fromJson(
      Map<String, dynamic> json) {
    final l$reason = json['reason'];
    final l$success = json['success'];
    return Query$PurchasedGymMemberships$memberships$status(
      reason: (l$reason as String?),
      success: (l$success as bool),
    );
  }

  final String? reason;

  final bool success;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$reason = reason;
    _resultData['reason'] = l$reason;
    final l$success = success;
    _resultData['success'] = l$success;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$reason = reason;
    final l$success = success;
    return Object.hashAll([
      l$reason,
      l$success,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$PurchasedGymMemberships$memberships$status) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$reason = reason;
    final lOther$reason = other.reason;
    if (l$reason != lOther$reason) {
      return false;
    }
    final l$success = success;
    final lOther$success = other.success;
    if (l$success != lOther$success) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$PurchasedGymMemberships$memberships$status
    on Query$PurchasedGymMemberships$memberships$status {
  CopyWith$Query$PurchasedGymMemberships$memberships$status<
          Query$PurchasedGymMemberships$memberships$status>
      get copyWith => CopyWith$Query$PurchasedGymMemberships$memberships$status(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PurchasedGymMemberships$memberships$status<TRes> {
  factory CopyWith$Query$PurchasedGymMemberships$memberships$status(
    Query$PurchasedGymMemberships$memberships$status instance,
    TRes Function(Query$PurchasedGymMemberships$memberships$status) then,
  ) = _CopyWithImpl$Query$PurchasedGymMemberships$memberships$status;

  factory CopyWith$Query$PurchasedGymMemberships$memberships$status.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PurchasedGymMemberships$memberships$status;

  TRes call({
    String? reason,
    bool? success,
  });
}

class _CopyWithImpl$Query$PurchasedGymMemberships$memberships$status<TRes>
    implements CopyWith$Query$PurchasedGymMemberships$memberships$status<TRes> {
  _CopyWithImpl$Query$PurchasedGymMemberships$memberships$status(
    this._instance,
    this._then,
  );

  final Query$PurchasedGymMemberships$memberships$status _instance;

  final TRes Function(Query$PurchasedGymMemberships$memberships$status) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? reason = _undefined,
    Object? success = _undefined,
  }) =>
      _then(Query$PurchasedGymMemberships$memberships$status(
        reason: reason == _undefined ? _instance.reason : (reason as String?),
        success: success == _undefined || success == null
            ? _instance.success
            : (success as bool),
      ));
}

class _CopyWithStubImpl$Query$PurchasedGymMemberships$memberships$status<TRes>
    implements CopyWith$Query$PurchasedGymMemberships$memberships$status<TRes> {
  _CopyWithStubImpl$Query$PurchasedGymMemberships$memberships$status(this._res);

  TRes _res;

  call({
    String? reason,
    bool? success,
  }) =>
      _res;
}

class Query$PurchasedGymMemberships$memberships$data {
  Query$PurchasedGymMemberships$memberships$data({
    this.singleMemberships,
    this.groupMemberships,
    this.sessionPacks,
  });

  factory Query$PurchasedGymMemberships$memberships$data.fromJson(
      Map<String, dynamic> json) {
    final l$singleMemberships = json['singleMemberships'];
    final l$groupMemberships = json['groupMemberships'];
    final l$sessionPacks = json['sessionPacks'];
    return Query$PurchasedGymMemberships$memberships$data(
      singleMemberships: (l$singleMemberships as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$PurchasedGymMemberships$memberships$data$singleMemberships
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      groupMemberships: (l$groupMemberships as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$PurchasedGymMemberships$memberships$data$groupMemberships
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      sessionPacks: (l$sessionPacks as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$PurchasedGymMemberships$memberships$data$sessionPacks
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
    );
  }

  final List<Query$PurchasedGymMemberships$memberships$data$singleMemberships?>?
      singleMemberships;

  final List<Query$PurchasedGymMemberships$memberships$data$groupMemberships?>?
      groupMemberships;

  final List<Query$PurchasedGymMemberships$memberships$data$sessionPacks?>?
      sessionPacks;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$singleMemberships = singleMemberships;
    _resultData['singleMemberships'] =
        l$singleMemberships?.map((e) => e?.toJson()).toList();
    final l$groupMemberships = groupMemberships;
    _resultData['groupMemberships'] =
        l$groupMemberships?.map((e) => e?.toJson()).toList();
    final l$sessionPacks = sessionPacks;
    _resultData['sessionPacks'] =
        l$sessionPacks?.map((e) => e?.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$singleMemberships = singleMemberships;
    final l$groupMemberships = groupMemberships;
    final l$sessionPacks = sessionPacks;
    return Object.hashAll([
      l$singleMemberships == null
          ? null
          : Object.hashAll(l$singleMemberships.map((v) => v)),
      l$groupMemberships == null
          ? null
          : Object.hashAll(l$groupMemberships.map((v) => v)),
      l$sessionPacks == null
          ? null
          : Object.hashAll(l$sessionPacks.map((v) => v)),
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$PurchasedGymMemberships$memberships$data) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$singleMemberships = singleMemberships;
    final lOther$singleMemberships = other.singleMemberships;
    if (l$singleMemberships != null && lOther$singleMemberships != null) {
      if (l$singleMemberships.length != lOther$singleMemberships.length) {
        return false;
      }
      for (int i = 0; i < l$singleMemberships.length; i++) {
        final l$singleMemberships$entry = l$singleMemberships[i];
        final lOther$singleMemberships$entry = lOther$singleMemberships[i];
        if (l$singleMemberships$entry != lOther$singleMemberships$entry) {
          return false;
        }
      }
    } else if (l$singleMemberships != lOther$singleMemberships) {
      return false;
    }
    final l$groupMemberships = groupMemberships;
    final lOther$groupMemberships = other.groupMemberships;
    if (l$groupMemberships != null && lOther$groupMemberships != null) {
      if (l$groupMemberships.length != lOther$groupMemberships.length) {
        return false;
      }
      for (int i = 0; i < l$groupMemberships.length; i++) {
        final l$groupMemberships$entry = l$groupMemberships[i];
        final lOther$groupMemberships$entry = lOther$groupMemberships[i];
        if (l$groupMemberships$entry != lOther$groupMemberships$entry) {
          return false;
        }
      }
    } else if (l$groupMemberships != lOther$groupMemberships) {
      return false;
    }
    final l$sessionPacks = sessionPacks;
    final lOther$sessionPacks = other.sessionPacks;
    if (l$sessionPacks != null && lOther$sessionPacks != null) {
      if (l$sessionPacks.length != lOther$sessionPacks.length) {
        return false;
      }
      for (int i = 0; i < l$sessionPacks.length; i++) {
        final l$sessionPacks$entry = l$sessionPacks[i];
        final lOther$sessionPacks$entry = lOther$sessionPacks[i];
        if (l$sessionPacks$entry != lOther$sessionPacks$entry) {
          return false;
        }
      }
    } else if (l$sessionPacks != lOther$sessionPacks) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$PurchasedGymMemberships$memberships$data
    on Query$PurchasedGymMemberships$memberships$data {
  CopyWith$Query$PurchasedGymMemberships$memberships$data<
          Query$PurchasedGymMemberships$memberships$data>
      get copyWith => CopyWith$Query$PurchasedGymMemberships$memberships$data(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PurchasedGymMemberships$memberships$data<TRes> {
  factory CopyWith$Query$PurchasedGymMemberships$memberships$data(
    Query$PurchasedGymMemberships$memberships$data instance,
    TRes Function(Query$PurchasedGymMemberships$memberships$data) then,
  ) = _CopyWithImpl$Query$PurchasedGymMemberships$memberships$data;

  factory CopyWith$Query$PurchasedGymMemberships$memberships$data.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PurchasedGymMemberships$memberships$data;

  TRes call({
    List<Query$PurchasedGymMemberships$memberships$data$singleMemberships?>?
        singleMemberships,
    List<Query$PurchasedGymMemberships$memberships$data$groupMemberships?>?
        groupMemberships,
    List<Query$PurchasedGymMemberships$memberships$data$sessionPacks?>?
        sessionPacks,
  });
  TRes singleMemberships(
      Iterable<Query$PurchasedGymMemberships$memberships$data$singleMemberships?>? Function(
              Iterable<
                  CopyWith$Query$PurchasedGymMemberships$memberships$data$singleMemberships<
                      Query$PurchasedGymMemberships$memberships$data$singleMemberships>?>?)
          _fn);
  TRes groupMemberships(
      Iterable<Query$PurchasedGymMemberships$memberships$data$groupMemberships?>? Function(
              Iterable<
                  CopyWith$Query$PurchasedGymMemberships$memberships$data$groupMemberships<
                      Query$PurchasedGymMemberships$memberships$data$groupMemberships>?>?)
          _fn);
  TRes sessionPacks(
      Iterable<Query$PurchasedGymMemberships$memberships$data$sessionPacks?>? Function(
              Iterable<
                  CopyWith$Query$PurchasedGymMemberships$memberships$data$sessionPacks<
                      Query$PurchasedGymMemberships$memberships$data$sessionPacks>?>?)
          _fn);
}

class _CopyWithImpl$Query$PurchasedGymMemberships$memberships$data<TRes>
    implements CopyWith$Query$PurchasedGymMemberships$memberships$data<TRes> {
  _CopyWithImpl$Query$PurchasedGymMemberships$memberships$data(
    this._instance,
    this._then,
  );

  final Query$PurchasedGymMemberships$memberships$data _instance;

  final TRes Function(Query$PurchasedGymMemberships$memberships$data) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? singleMemberships = _undefined,
    Object? groupMemberships = _undefined,
    Object? sessionPacks = _undefined,
  }) =>
      _then(Query$PurchasedGymMemberships$memberships$data(
        singleMemberships: singleMemberships == _undefined
            ? _instance.singleMemberships
            : (singleMemberships as List<
                Query$PurchasedGymMemberships$memberships$data$singleMemberships?>?),
        groupMemberships: groupMemberships == _undefined
            ? _instance.groupMemberships
            : (groupMemberships as List<
                Query$PurchasedGymMemberships$memberships$data$groupMemberships?>?),
        sessionPacks: sessionPacks == _undefined
            ? _instance.sessionPacks
            : (sessionPacks as List<
                Query$PurchasedGymMemberships$memberships$data$sessionPacks?>?),
      ));

  TRes singleMemberships(
          Iterable<Query$PurchasedGymMemberships$memberships$data$singleMemberships?>? Function(
                  Iterable<
                      CopyWith$Query$PurchasedGymMemberships$memberships$data$singleMemberships<
                          Query$PurchasedGymMemberships$memberships$data$singleMemberships>?>?)
              _fn) =>
      call(
          singleMemberships: _fn(_instance.singleMemberships?.map((e) => e ==
                  null
              ? null
              : CopyWith$Query$PurchasedGymMemberships$memberships$data$singleMemberships(
                  e,
                  (i) => i,
                )))?.toList());

  TRes groupMemberships(
          Iterable<Query$PurchasedGymMemberships$memberships$data$groupMemberships?>? Function(
                  Iterable<
                      CopyWith$Query$PurchasedGymMemberships$memberships$data$groupMemberships<
                          Query$PurchasedGymMemberships$memberships$data$groupMemberships>?>?)
              _fn) =>
      call(
          groupMemberships: _fn(_instance.groupMemberships?.map((e) => e == null
              ? null
              : CopyWith$Query$PurchasedGymMemberships$memberships$data$groupMemberships(
                  e,
                  (i) => i,
                )))?.toList());

  TRes sessionPacks(
          Iterable<Query$PurchasedGymMemberships$memberships$data$sessionPacks?>? Function(
                  Iterable<
                      CopyWith$Query$PurchasedGymMemberships$memberships$data$sessionPacks<
                          Query$PurchasedGymMemberships$memberships$data$sessionPacks>?>?)
              _fn) =>
      call(
          sessionPacks: _fn(_instance.sessionPacks?.map((e) => e == null
              ? null
              : CopyWith$Query$PurchasedGymMemberships$memberships$data$sessionPacks(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$PurchasedGymMemberships$memberships$data<TRes>
    implements CopyWith$Query$PurchasedGymMemberships$memberships$data<TRes> {
  _CopyWithStubImpl$Query$PurchasedGymMemberships$memberships$data(this._res);

  TRes _res;

  call({
    List<Query$PurchasedGymMemberships$memberships$data$singleMemberships?>?
        singleMemberships,
    List<Query$PurchasedGymMemberships$memberships$data$groupMemberships?>?
        groupMemberships,
    List<Query$PurchasedGymMemberships$memberships$data$sessionPacks?>?
        sessionPacks,
  }) =>
      _res;

  singleMemberships(_fn) => _res;

  groupMemberships(_fn) => _res;

  sessionPacks(_fn) => _res;
}

class Query$PurchasedGymMemberships$memberships$data$singleMemberships {
  Query$PurchasedGymMemberships$memberships$data$singleMemberships({
    required this.id,
    required this.name,
    required this.qrCode,
    this.currency,
    required this.startDate,
    this.endDate,
    required this.status,
    required this.membershipId,
    this.membershipCode,
  });

  factory Query$PurchasedGymMemberships$memberships$data$singleMemberships.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$qrCode = json['qrCode'];
    final l$currency = json['currency'];
    final l$startDate = json['startDate'];
    final l$endDate = json['endDate'];
    final l$status = json['status'];
    final l$membershipId = json['membershipId'];
    final l$membershipCode = json['membershipCode'];
    return Query$PurchasedGymMemberships$memberships$data$singleMemberships(
      id: (l$id as String),
      name: (l$name as String),
      qrCode: (l$qrCode as String),
      currency: (l$currency as String?),
      startDate: (l$startDate as String),
      endDate: (l$endDate as String?),
      status: fromJson$Enum$MembershipStatus((l$status as String)),
      membershipId: (l$membershipId as String),
      membershipCode: (l$membershipCode as String?),
    );
  }

  final String id;

  final String name;

  final String qrCode;

  final String? currency;

  final String startDate;

  final String? endDate;

  final Enum$MembershipStatus status;

  final String membershipId;

  final String? membershipCode;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$qrCode = qrCode;
    _resultData['qrCode'] = l$qrCode;
    final l$currency = currency;
    _resultData['currency'] = l$currency;
    final l$startDate = startDate;
    _resultData['startDate'] = l$startDate;
    final l$endDate = endDate;
    _resultData['endDate'] = l$endDate;
    final l$status = status;
    _resultData['status'] = toJson$Enum$MembershipStatus(l$status);
    final l$membershipId = membershipId;
    _resultData['membershipId'] = l$membershipId;
    final l$membershipCode = membershipCode;
    _resultData['membershipCode'] = l$membershipCode;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$qrCode = qrCode;
    final l$currency = currency;
    final l$startDate = startDate;
    final l$endDate = endDate;
    final l$status = status;
    final l$membershipId = membershipId;
    final l$membershipCode = membershipCode;
    return Object.hashAll([
      l$id,
      l$name,
      l$qrCode,
      l$currency,
      l$startDate,
      l$endDate,
      l$status,
      l$membershipId,
      l$membershipCode,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$PurchasedGymMemberships$memberships$data$singleMemberships) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$qrCode = qrCode;
    final lOther$qrCode = other.qrCode;
    if (l$qrCode != lOther$qrCode) {
      return false;
    }
    final l$currency = currency;
    final lOther$currency = other.currency;
    if (l$currency != lOther$currency) {
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
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$membershipId = membershipId;
    final lOther$membershipId = other.membershipId;
    if (l$membershipId != lOther$membershipId) {
      return false;
    }
    final l$membershipCode = membershipCode;
    final lOther$membershipCode = other.membershipCode;
    if (l$membershipCode != lOther$membershipCode) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$PurchasedGymMemberships$memberships$data$singleMemberships
    on Query$PurchasedGymMemberships$memberships$data$singleMemberships {
  CopyWith$Query$PurchasedGymMemberships$memberships$data$singleMemberships<
          Query$PurchasedGymMemberships$memberships$data$singleMemberships>
      get copyWith =>
          CopyWith$Query$PurchasedGymMemberships$memberships$data$singleMemberships(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PurchasedGymMemberships$memberships$data$singleMemberships<
    TRes> {
  factory CopyWith$Query$PurchasedGymMemberships$memberships$data$singleMemberships(
    Query$PurchasedGymMemberships$memberships$data$singleMemberships instance,
    TRes Function(
            Query$PurchasedGymMemberships$memberships$data$singleMemberships)
        then,
  ) = _CopyWithImpl$Query$PurchasedGymMemberships$memberships$data$singleMemberships;

  factory CopyWith$Query$PurchasedGymMemberships$memberships$data$singleMemberships.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PurchasedGymMemberships$memberships$data$singleMemberships;

  TRes call({
    String? id,
    String? name,
    String? qrCode,
    String? currency,
    String? startDate,
    String? endDate,
    Enum$MembershipStatus? status,
    String? membershipId,
    String? membershipCode,
  });
}

class _CopyWithImpl$Query$PurchasedGymMemberships$memberships$data$singleMemberships<
        TRes>
    implements
        CopyWith$Query$PurchasedGymMemberships$memberships$data$singleMemberships<
            TRes> {
  _CopyWithImpl$Query$PurchasedGymMemberships$memberships$data$singleMemberships(
    this._instance,
    this._then,
  );

  final Query$PurchasedGymMemberships$memberships$data$singleMemberships
      _instance;

  final TRes Function(
      Query$PurchasedGymMemberships$memberships$data$singleMemberships) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? qrCode = _undefined,
    Object? currency = _undefined,
    Object? startDate = _undefined,
    Object? endDate = _undefined,
    Object? status = _undefined,
    Object? membershipId = _undefined,
    Object? membershipCode = _undefined,
  }) =>
      _then(Query$PurchasedGymMemberships$memberships$data$singleMemberships(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        qrCode: qrCode == _undefined || qrCode == null
            ? _instance.qrCode
            : (qrCode as String),
        currency:
            currency == _undefined ? _instance.currency : (currency as String?),
        startDate: startDate == _undefined || startDate == null
            ? _instance.startDate
            : (startDate as String),
        endDate:
            endDate == _undefined ? _instance.endDate : (endDate as String?),
        status: status == _undefined || status == null
            ? _instance.status
            : (status as Enum$MembershipStatus),
        membershipId: membershipId == _undefined || membershipId == null
            ? _instance.membershipId
            : (membershipId as String),
        membershipCode: membershipCode == _undefined
            ? _instance.membershipCode
            : (membershipCode as String?),
      ));
}

class _CopyWithStubImpl$Query$PurchasedGymMemberships$memberships$data$singleMemberships<
        TRes>
    implements
        CopyWith$Query$PurchasedGymMemberships$memberships$data$singleMemberships<
            TRes> {
  _CopyWithStubImpl$Query$PurchasedGymMemberships$memberships$data$singleMemberships(
      this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? qrCode,
    String? currency,
    String? startDate,
    String? endDate,
    Enum$MembershipStatus? status,
    String? membershipId,
    String? membershipCode,
  }) =>
      _res;
}

class Query$PurchasedGymMemberships$memberships$data$groupMemberships {
  Query$PurchasedGymMemberships$memberships$data$groupMemberships({
    required this.id,
    required this.name,
    required this.qrCode,
    this.currency,
    required this.startDate,
    this.endDate,
    required this.status,
    required this.membershipId,
    this.membershipCode,
  });

  factory Query$PurchasedGymMemberships$memberships$data$groupMemberships.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$qrCode = json['qrCode'];
    final l$currency = json['currency'];
    final l$startDate = json['startDate'];
    final l$endDate = json['endDate'];
    final l$status = json['status'];
    final l$membershipId = json['membershipId'];
    final l$membershipCode = json['membershipCode'];
    return Query$PurchasedGymMemberships$memberships$data$groupMemberships(
      id: (l$id as String),
      name: (l$name as String),
      qrCode: (l$qrCode as String),
      currency: (l$currency as String?),
      startDate: (l$startDate as String),
      endDate: (l$endDate as String?),
      status: fromJson$Enum$MembershipStatus((l$status as String)),
      membershipId: (l$membershipId as String),
      membershipCode: (l$membershipCode as String?),
    );
  }

  final String id;

  final String name;

  final String qrCode;

  final String? currency;

  final String startDate;

  final String? endDate;

  final Enum$MembershipStatus status;

  final String membershipId;

  final String? membershipCode;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$qrCode = qrCode;
    _resultData['qrCode'] = l$qrCode;
    final l$currency = currency;
    _resultData['currency'] = l$currency;
    final l$startDate = startDate;
    _resultData['startDate'] = l$startDate;
    final l$endDate = endDate;
    _resultData['endDate'] = l$endDate;
    final l$status = status;
    _resultData['status'] = toJson$Enum$MembershipStatus(l$status);
    final l$membershipId = membershipId;
    _resultData['membershipId'] = l$membershipId;
    final l$membershipCode = membershipCode;
    _resultData['membershipCode'] = l$membershipCode;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$qrCode = qrCode;
    final l$currency = currency;
    final l$startDate = startDate;
    final l$endDate = endDate;
    final l$status = status;
    final l$membershipId = membershipId;
    final l$membershipCode = membershipCode;
    return Object.hashAll([
      l$id,
      l$name,
      l$qrCode,
      l$currency,
      l$startDate,
      l$endDate,
      l$status,
      l$membershipId,
      l$membershipCode,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$PurchasedGymMemberships$memberships$data$groupMemberships) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$qrCode = qrCode;
    final lOther$qrCode = other.qrCode;
    if (l$qrCode != lOther$qrCode) {
      return false;
    }
    final l$currency = currency;
    final lOther$currency = other.currency;
    if (l$currency != lOther$currency) {
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
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$membershipId = membershipId;
    final lOther$membershipId = other.membershipId;
    if (l$membershipId != lOther$membershipId) {
      return false;
    }
    final l$membershipCode = membershipCode;
    final lOther$membershipCode = other.membershipCode;
    if (l$membershipCode != lOther$membershipCode) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$PurchasedGymMemberships$memberships$data$groupMemberships
    on Query$PurchasedGymMemberships$memberships$data$groupMemberships {
  CopyWith$Query$PurchasedGymMemberships$memberships$data$groupMemberships<
          Query$PurchasedGymMemberships$memberships$data$groupMemberships>
      get copyWith =>
          CopyWith$Query$PurchasedGymMemberships$memberships$data$groupMemberships(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PurchasedGymMemberships$memberships$data$groupMemberships<
    TRes> {
  factory CopyWith$Query$PurchasedGymMemberships$memberships$data$groupMemberships(
    Query$PurchasedGymMemberships$memberships$data$groupMemberships instance,
    TRes Function(
            Query$PurchasedGymMemberships$memberships$data$groupMemberships)
        then,
  ) = _CopyWithImpl$Query$PurchasedGymMemberships$memberships$data$groupMemberships;

  factory CopyWith$Query$PurchasedGymMemberships$memberships$data$groupMemberships.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PurchasedGymMemberships$memberships$data$groupMemberships;

  TRes call({
    String? id,
    String? name,
    String? qrCode,
    String? currency,
    String? startDate,
    String? endDate,
    Enum$MembershipStatus? status,
    String? membershipId,
    String? membershipCode,
  });
}

class _CopyWithImpl$Query$PurchasedGymMemberships$memberships$data$groupMemberships<
        TRes>
    implements
        CopyWith$Query$PurchasedGymMemberships$memberships$data$groupMemberships<
            TRes> {
  _CopyWithImpl$Query$PurchasedGymMemberships$memberships$data$groupMemberships(
    this._instance,
    this._then,
  );

  final Query$PurchasedGymMemberships$memberships$data$groupMemberships
      _instance;

  final TRes Function(
      Query$PurchasedGymMemberships$memberships$data$groupMemberships) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? qrCode = _undefined,
    Object? currency = _undefined,
    Object? startDate = _undefined,
    Object? endDate = _undefined,
    Object? status = _undefined,
    Object? membershipId = _undefined,
    Object? membershipCode = _undefined,
  }) =>
      _then(Query$PurchasedGymMemberships$memberships$data$groupMemberships(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        qrCode: qrCode == _undefined || qrCode == null
            ? _instance.qrCode
            : (qrCode as String),
        currency:
            currency == _undefined ? _instance.currency : (currency as String?),
        startDate: startDate == _undefined || startDate == null
            ? _instance.startDate
            : (startDate as String),
        endDate:
            endDate == _undefined ? _instance.endDate : (endDate as String?),
        status: status == _undefined || status == null
            ? _instance.status
            : (status as Enum$MembershipStatus),
        membershipId: membershipId == _undefined || membershipId == null
            ? _instance.membershipId
            : (membershipId as String),
        membershipCode: membershipCode == _undefined
            ? _instance.membershipCode
            : (membershipCode as String?),
      ));
}

class _CopyWithStubImpl$Query$PurchasedGymMemberships$memberships$data$groupMemberships<
        TRes>
    implements
        CopyWith$Query$PurchasedGymMemberships$memberships$data$groupMemberships<
            TRes> {
  _CopyWithStubImpl$Query$PurchasedGymMemberships$memberships$data$groupMemberships(
      this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? qrCode,
    String? currency,
    String? startDate,
    String? endDate,
    Enum$MembershipStatus? status,
    String? membershipId,
    String? membershipCode,
  }) =>
      _res;
}

class Query$PurchasedGymMemberships$memberships$data$sessionPacks {
  Query$PurchasedGymMemberships$memberships$data$sessionPacks({
    required this.id,
    required this.name,
    required this.qrCode,
    this.currency,
    required this.startDate,
    required this.status,
    this.membershipCode,
  });

  factory Query$PurchasedGymMemberships$memberships$data$sessionPacks.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$qrCode = json['qrCode'];
    final l$currency = json['currency'];
    final l$startDate = json['startDate'];
    final l$status = json['status'];
    final l$membershipCode = json['membershipCode'];
    return Query$PurchasedGymMemberships$memberships$data$sessionPacks(
      id: (l$id as String),
      name: (l$name as String),
      qrCode: (l$qrCode as String),
      currency: (l$currency as String?),
      startDate: (l$startDate as String),
      status: fromJson$Enum$MembershipStatus((l$status as String)),
      membershipCode: (l$membershipCode as String?),
    );
  }

  final String id;

  final String name;

  final String qrCode;

  final String? currency;

  final String startDate;

  @Deprecated('Use classStatus and session Status instead.')
  final Enum$MembershipStatus status;

  final String? membershipCode;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$qrCode = qrCode;
    _resultData['qrCode'] = l$qrCode;
    final l$currency = currency;
    _resultData['currency'] = l$currency;
    final l$startDate = startDate;
    _resultData['startDate'] = l$startDate;
    final l$status = status;
    _resultData['status'] = toJson$Enum$MembershipStatus(l$status);
    final l$membershipCode = membershipCode;
    _resultData['membershipCode'] = l$membershipCode;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$qrCode = qrCode;
    final l$currency = currency;
    final l$startDate = startDate;
    final l$status = status;
    final l$membershipCode = membershipCode;
    return Object.hashAll([
      l$id,
      l$name,
      l$qrCode,
      l$currency,
      l$startDate,
      l$status,
      l$membershipCode,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$PurchasedGymMemberships$memberships$data$sessionPacks) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$qrCode = qrCode;
    final lOther$qrCode = other.qrCode;
    if (l$qrCode != lOther$qrCode) {
      return false;
    }
    final l$currency = currency;
    final lOther$currency = other.currency;
    if (l$currency != lOther$currency) {
      return false;
    }
    final l$startDate = startDate;
    final lOther$startDate = other.startDate;
    if (l$startDate != lOther$startDate) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$membershipCode = membershipCode;
    final lOther$membershipCode = other.membershipCode;
    if (l$membershipCode != lOther$membershipCode) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$PurchasedGymMemberships$memberships$data$sessionPacks
    on Query$PurchasedGymMemberships$memberships$data$sessionPacks {
  CopyWith$Query$PurchasedGymMemberships$memberships$data$sessionPacks<
          Query$PurchasedGymMemberships$memberships$data$sessionPacks>
      get copyWith =>
          CopyWith$Query$PurchasedGymMemberships$memberships$data$sessionPacks(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PurchasedGymMemberships$memberships$data$sessionPacks<
    TRes> {
  factory CopyWith$Query$PurchasedGymMemberships$memberships$data$sessionPacks(
    Query$PurchasedGymMemberships$memberships$data$sessionPacks instance,
    TRes Function(Query$PurchasedGymMemberships$memberships$data$sessionPacks)
        then,
  ) = _CopyWithImpl$Query$PurchasedGymMemberships$memberships$data$sessionPacks;

  factory CopyWith$Query$PurchasedGymMemberships$memberships$data$sessionPacks.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PurchasedGymMemberships$memberships$data$sessionPacks;

  TRes call({
    String? id,
    String? name,
    String? qrCode,
    String? currency,
    String? startDate,
    Enum$MembershipStatus? status,
    String? membershipCode,
  });
}

class _CopyWithImpl$Query$PurchasedGymMemberships$memberships$data$sessionPacks<
        TRes>
    implements
        CopyWith$Query$PurchasedGymMemberships$memberships$data$sessionPacks<
            TRes> {
  _CopyWithImpl$Query$PurchasedGymMemberships$memberships$data$sessionPacks(
    this._instance,
    this._then,
  );

  final Query$PurchasedGymMemberships$memberships$data$sessionPacks _instance;

  final TRes Function(
      Query$PurchasedGymMemberships$memberships$data$sessionPacks) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? qrCode = _undefined,
    Object? currency = _undefined,
    Object? startDate = _undefined,
    Object? status = _undefined,
    Object? membershipCode = _undefined,
  }) =>
      _then(Query$PurchasedGymMemberships$memberships$data$sessionPacks(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        qrCode: qrCode == _undefined || qrCode == null
            ? _instance.qrCode
            : (qrCode as String),
        currency:
            currency == _undefined ? _instance.currency : (currency as String?),
        startDate: startDate == _undefined || startDate == null
            ? _instance.startDate
            : (startDate as String),
        status: status == _undefined || status == null
            ? _instance.status
            : (status as Enum$MembershipStatus),
        membershipCode: membershipCode == _undefined
            ? _instance.membershipCode
            : (membershipCode as String?),
      ));
}

class _CopyWithStubImpl$Query$PurchasedGymMemberships$memberships$data$sessionPacks<
        TRes>
    implements
        CopyWith$Query$PurchasedGymMemberships$memberships$data$sessionPacks<
            TRes> {
  _CopyWithStubImpl$Query$PurchasedGymMemberships$memberships$data$sessionPacks(
      this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? qrCode,
    String? currency,
    String? startDate,
    Enum$MembershipStatus? status,
    String? membershipCode,
  }) =>
      _res;
}
