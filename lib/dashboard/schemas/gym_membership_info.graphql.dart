import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$GymMembershipInfo {
  factory Variables$Query$GymMembershipInfo({
    String? smId,
    String? gmId,
    required String memId,
    String? gymId,
  }) =>
      Variables$Query$GymMembershipInfo._({
        if (smId != null) r'smId': smId,
        if (gmId != null) r'gmId': gmId,
        r'memId': memId,
        if (gymId != null) r'gymId': gymId,
      });

  Variables$Query$GymMembershipInfo._(this._$data);

  factory Variables$Query$GymMembershipInfo.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('smId')) {
      final l$smId = data['smId'];
      result$data['smId'] = (l$smId as String?);
    }
    if (data.containsKey('gmId')) {
      final l$gmId = data['gmId'];
      result$data['gmId'] = (l$gmId as String?);
    }
    final l$memId = data['memId'];
    result$data['memId'] = (l$memId as String);
    if (data.containsKey('gymId')) {
      final l$gymId = data['gymId'];
      result$data['gymId'] = (l$gymId as String?);
    }
    return Variables$Query$GymMembershipInfo._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get smId => (_$data['smId'] as String?);

  String? get gmId => (_$data['gmId'] as String?);

  String get memId => (_$data['memId'] as String);

  String? get gymId => (_$data['gymId'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('smId')) {
      final l$smId = smId;
      result$data['smId'] = l$smId;
    }
    if (_$data.containsKey('gmId')) {
      final l$gmId = gmId;
      result$data['gmId'] = l$gmId;
    }
    final l$memId = memId;
    result$data['memId'] = l$memId;
    if (_$data.containsKey('gymId')) {
      final l$gymId = gymId;
      result$data['gymId'] = l$gymId;
    }
    return result$data;
  }

  CopyWith$Variables$Query$GymMembershipInfo<Variables$Query$GymMembershipInfo>
      get copyWith => CopyWith$Variables$Query$GymMembershipInfo(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GymMembershipInfo) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$smId = smId;
    final lOther$smId = other.smId;
    if (_$data.containsKey('smId') != other._$data.containsKey('smId')) {
      return false;
    }
    if (l$smId != lOther$smId) {
      return false;
    }
    final l$gmId = gmId;
    final lOther$gmId = other.gmId;
    if (_$data.containsKey('gmId') != other._$data.containsKey('gmId')) {
      return false;
    }
    if (l$gmId != lOther$gmId) {
      return false;
    }
    final l$memId = memId;
    final lOther$memId = other.memId;
    if (l$memId != lOther$memId) {
      return false;
    }
    final l$gymId = gymId;
    final lOther$gymId = other.gymId;
    if (_$data.containsKey('gymId') != other._$data.containsKey('gymId')) {
      return false;
    }
    if (l$gymId != lOther$gymId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$smId = smId;
    final l$gmId = gmId;
    final l$memId = memId;
    final l$gymId = gymId;
    return Object.hashAll([
      _$data.containsKey('smId') ? l$smId : const {},
      _$data.containsKey('gmId') ? l$gmId : const {},
      l$memId,
      _$data.containsKey('gymId') ? l$gymId : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$GymMembershipInfo<TRes> {
  factory CopyWith$Variables$Query$GymMembershipInfo(
    Variables$Query$GymMembershipInfo instance,
    TRes Function(Variables$Query$GymMembershipInfo) then,
  ) = _CopyWithImpl$Variables$Query$GymMembershipInfo;

  factory CopyWith$Variables$Query$GymMembershipInfo.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GymMembershipInfo;

  TRes call({
    String? smId,
    String? gmId,
    String? memId,
    String? gymId,
  });
}

class _CopyWithImpl$Variables$Query$GymMembershipInfo<TRes>
    implements CopyWith$Variables$Query$GymMembershipInfo<TRes> {
  _CopyWithImpl$Variables$Query$GymMembershipInfo(
    this._instance,
    this._then,
  );

  final Variables$Query$GymMembershipInfo _instance;

  final TRes Function(Variables$Query$GymMembershipInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? smId = _undefined,
    Object? gmId = _undefined,
    Object? memId = _undefined,
    Object? gymId = _undefined,
  }) =>
      _then(Variables$Query$GymMembershipInfo._({
        ..._instance._$data,
        if (smId != _undefined) 'smId': (smId as String?),
        if (gmId != _undefined) 'gmId': (gmId as String?),
        if (memId != _undefined && memId != null) 'memId': (memId as String),
        if (gymId != _undefined) 'gymId': (gymId as String?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GymMembershipInfo<TRes>
    implements CopyWith$Variables$Query$GymMembershipInfo<TRes> {
  _CopyWithStubImpl$Variables$Query$GymMembershipInfo(this._res);

  TRes _res;

  call({
    String? smId,
    String? gmId,
    String? memId,
    String? gymId,
  }) =>
      _res;
}

class Query$GymMembershipInfo {
  Query$GymMembershipInfo({
    this.gymQrSessionCount,
    this.membership,
    this.membershipDueAmount,
    this.countUnseenMessages,
  });

  factory Query$GymMembershipInfo.fromJson(Map<String, dynamic> json) {
    final l$gymQrSessionCount = json['gymQrSessionCount'];
    final l$membership = json['membership'];
    final l$membershipDueAmount = json['membershipDueAmount'];
    final l$countUnseenMessages = json['countUnseenMessages'];
    return Query$GymMembershipInfo(
      gymQrSessionCount: l$gymQrSessionCount == null
          ? null
          : Query$GymMembershipInfo$gymQrSessionCount.fromJson(
              (l$gymQrSessionCount as Map<String, dynamic>)),
      membership: l$membership == null
          ? null
          : Query$GymMembershipInfo$membership.fromJson(
              (l$membership as Map<String, dynamic>)),
      membershipDueAmount: l$membershipDueAmount == null
          ? null
          : Query$GymMembershipInfo$membershipDueAmount.fromJson(
              (l$membershipDueAmount as Map<String, dynamic>)),
      countUnseenMessages: (l$countUnseenMessages as int?),
    );
  }

  final Query$GymMembershipInfo$gymQrSessionCount? gymQrSessionCount;

  final Query$GymMembershipInfo$membership? membership;

  final Query$GymMembershipInfo$membershipDueAmount? membershipDueAmount;

  final int? countUnseenMessages;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$gymQrSessionCount = gymQrSessionCount;
    _resultData['gymQrSessionCount'] = l$gymQrSessionCount?.toJson();
    final l$membership = membership;
    _resultData['membership'] = l$membership?.toJson();
    final l$membershipDueAmount = membershipDueAmount;
    _resultData['membershipDueAmount'] = l$membershipDueAmount?.toJson();
    final l$countUnseenMessages = countUnseenMessages;
    _resultData['countUnseenMessages'] = l$countUnseenMessages;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$gymQrSessionCount = gymQrSessionCount;
    final l$membership = membership;
    final l$membershipDueAmount = membershipDueAmount;
    final l$countUnseenMessages = countUnseenMessages;
    return Object.hashAll([
      l$gymQrSessionCount,
      l$membership,
      l$membershipDueAmount,
      l$countUnseenMessages,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GymMembershipInfo) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$gymQrSessionCount = gymQrSessionCount;
    final lOther$gymQrSessionCount = other.gymQrSessionCount;
    if (l$gymQrSessionCount != lOther$gymQrSessionCount) {
      return false;
    }
    final l$membership = membership;
    final lOther$membership = other.membership;
    if (l$membership != lOther$membership) {
      return false;
    }
    final l$membershipDueAmount = membershipDueAmount;
    final lOther$membershipDueAmount = other.membershipDueAmount;
    if (l$membershipDueAmount != lOther$membershipDueAmount) {
      return false;
    }
    final l$countUnseenMessages = countUnseenMessages;
    final lOther$countUnseenMessages = other.countUnseenMessages;
    if (l$countUnseenMessages != lOther$countUnseenMessages) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GymMembershipInfo on Query$GymMembershipInfo {
  CopyWith$Query$GymMembershipInfo<Query$GymMembershipInfo> get copyWith =>
      CopyWith$Query$GymMembershipInfo(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GymMembershipInfo<TRes> {
  factory CopyWith$Query$GymMembershipInfo(
    Query$GymMembershipInfo instance,
    TRes Function(Query$GymMembershipInfo) then,
  ) = _CopyWithImpl$Query$GymMembershipInfo;

  factory CopyWith$Query$GymMembershipInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$GymMembershipInfo;

  TRes call({
    Query$GymMembershipInfo$gymQrSessionCount? gymQrSessionCount,
    Query$GymMembershipInfo$membership? membership,
    Query$GymMembershipInfo$membershipDueAmount? membershipDueAmount,
    int? countUnseenMessages,
  });
  CopyWith$Query$GymMembershipInfo$gymQrSessionCount<TRes>
      get gymQrSessionCount;
  CopyWith$Query$GymMembershipInfo$membership<TRes> get membership;
  CopyWith$Query$GymMembershipInfo$membershipDueAmount<TRes>
      get membershipDueAmount;
}

class _CopyWithImpl$Query$GymMembershipInfo<TRes>
    implements CopyWith$Query$GymMembershipInfo<TRes> {
  _CopyWithImpl$Query$GymMembershipInfo(
    this._instance,
    this._then,
  );

  final Query$GymMembershipInfo _instance;

  final TRes Function(Query$GymMembershipInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? gymQrSessionCount = _undefined,
    Object? membership = _undefined,
    Object? membershipDueAmount = _undefined,
    Object? countUnseenMessages = _undefined,
  }) =>
      _then(Query$GymMembershipInfo(
        gymQrSessionCount: gymQrSessionCount == _undefined
            ? _instance.gymQrSessionCount
            : (gymQrSessionCount as Query$GymMembershipInfo$gymQrSessionCount?),
        membership: membership == _undefined
            ? _instance.membership
            : (membership as Query$GymMembershipInfo$membership?),
        membershipDueAmount: membershipDueAmount == _undefined
            ? _instance.membershipDueAmount
            : (membershipDueAmount
                as Query$GymMembershipInfo$membershipDueAmount?),
        countUnseenMessages: countUnseenMessages == _undefined
            ? _instance.countUnseenMessages
            : (countUnseenMessages as int?),
      ));

  CopyWith$Query$GymMembershipInfo$gymQrSessionCount<TRes>
      get gymQrSessionCount {
    final local$gymQrSessionCount = _instance.gymQrSessionCount;
    return local$gymQrSessionCount == null
        ? CopyWith$Query$GymMembershipInfo$gymQrSessionCount.stub(
            _then(_instance))
        : CopyWith$Query$GymMembershipInfo$gymQrSessionCount(
            local$gymQrSessionCount, (e) => call(gymQrSessionCount: e));
  }

  CopyWith$Query$GymMembershipInfo$membership<TRes> get membership {
    final local$membership = _instance.membership;
    return local$membership == null
        ? CopyWith$Query$GymMembershipInfo$membership.stub(_then(_instance))
        : CopyWith$Query$GymMembershipInfo$membership(
            local$membership, (e) => call(membership: e));
  }

  CopyWith$Query$GymMembershipInfo$membershipDueAmount<TRes>
      get membershipDueAmount {
    final local$membershipDueAmount = _instance.membershipDueAmount;
    return local$membershipDueAmount == null
        ? CopyWith$Query$GymMembershipInfo$membershipDueAmount.stub(
            _then(_instance))
        : CopyWith$Query$GymMembershipInfo$membershipDueAmount(
            local$membershipDueAmount, (e) => call(membershipDueAmount: e));
  }
}

class _CopyWithStubImpl$Query$GymMembershipInfo<TRes>
    implements CopyWith$Query$GymMembershipInfo<TRes> {
  _CopyWithStubImpl$Query$GymMembershipInfo(this._res);

  TRes _res;

  call({
    Query$GymMembershipInfo$gymQrSessionCount? gymQrSessionCount,
    Query$GymMembershipInfo$membership? membership,
    Query$GymMembershipInfo$membershipDueAmount? membershipDueAmount,
    int? countUnseenMessages,
  }) =>
      _res;

  CopyWith$Query$GymMembershipInfo$gymQrSessionCount<TRes>
      get gymQrSessionCount =>
          CopyWith$Query$GymMembershipInfo$gymQrSessionCount.stub(_res);

  CopyWith$Query$GymMembershipInfo$membership<TRes> get membership =>
      CopyWith$Query$GymMembershipInfo$membership.stub(_res);

  CopyWith$Query$GymMembershipInfo$membershipDueAmount<TRes>
      get membershipDueAmount =>
          CopyWith$Query$GymMembershipInfo$membershipDueAmount.stub(_res);
}

const documentNodeQueryGymMembershipInfo = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GymMembershipInfo'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'smId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'gmId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'memId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'gymId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'gymQrSessionCount'),
        alias: NameNode(value: 'gymQrSessionCount'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'filter'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'singleMembershipId'),
                value: VariableNode(name: NameNode(value: 'smId')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'groupMembershipId'),
                value: VariableNode(name: NameNode(value: 'gmId')),
              ),
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'data'),
            alias: NameNode(value: 'data'),
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'count'),
                alias: NameNode(value: 'count'),
                arguments: [],
                directives: [],
                selectionSet: null,
              )
            ]),
          )
        ]),
      ),
      FieldNode(
        name: NameNode(value: 'membership'),
        alias: NameNode(value: 'membership'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'filter'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'membershipId'),
                value: VariableNode(name: NameNode(value: 'memId')),
              )
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'data'),
            alias: NameNode(value: 'data'),
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'membership'),
                alias: NameNode(value: 'membership'),
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
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
                ]),
              )
            ]),
          )
        ]),
      ),
      FieldNode(
        name: NameNode(value: 'membershipDueAmount'),
        alias: NameNode(value: 'membershipDueAmount'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'filter'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'singleMembershipId'),
                value: VariableNode(name: NameNode(value: 'smId')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'groupMembershipId'),
                value: VariableNode(name: NameNode(value: 'gmId')),
              ),
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'data'),
            alias: NameNode(value: 'data'),
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'amount'),
                alias: NameNode(value: 'amount'),
                arguments: [],
                directives: [],
                selectionSet: null,
              )
            ]),
          )
        ]),
      ),
      FieldNode(
        name: NameNode(value: 'countUnseenMessages'),
        alias: NameNode(value: 'countUnseenMessages'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'gymId'),
            value: VariableNode(name: NameNode(value: 'gymId')),
          )
        ],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query$GymMembershipInfo _parserFn$Query$GymMembershipInfo(
        Map<String, dynamic> data) =>
    Query$GymMembershipInfo.fromJson(data);
typedef OnQueryComplete$Query$GymMembershipInfo = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GymMembershipInfo?,
);

class Options$Query$GymMembershipInfo
    extends graphql.QueryOptions<Query$GymMembershipInfo> {
  Options$Query$GymMembershipInfo({
    String? operationName,
    required Variables$Query$GymMembershipInfo variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GymMembershipInfo? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GymMembershipInfo? onComplete,
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
                        : _parserFn$Query$GymMembershipInfo(data),
                  ),
          onError: onError,
          document: documentNodeQueryGymMembershipInfo,
          parserFn: _parserFn$Query$GymMembershipInfo,
        );

  final OnQueryComplete$Query$GymMembershipInfo? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GymMembershipInfo
    extends graphql.WatchQueryOptions<Query$GymMembershipInfo> {
  WatchOptions$Query$GymMembershipInfo({
    String? operationName,
    required Variables$Query$GymMembershipInfo variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GymMembershipInfo? typedOptimisticResult,
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
          document: documentNodeQueryGymMembershipInfo,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GymMembershipInfo,
        );
}

class FetchMoreOptions$Query$GymMembershipInfo
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GymMembershipInfo({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GymMembershipInfo variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGymMembershipInfo,
        );
}

extension ClientExtension$Query$GymMembershipInfo on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GymMembershipInfo>> query$GymMembershipInfo(
          Options$Query$GymMembershipInfo options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$GymMembershipInfo> watchQuery$GymMembershipInfo(
          WatchOptions$Query$GymMembershipInfo options) =>
      this.watchQuery(options);
  void writeQuery$GymMembershipInfo({
    required Query$GymMembershipInfo data,
    required Variables$Query$GymMembershipInfo variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryGymMembershipInfo),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GymMembershipInfo? readQuery$GymMembershipInfo({
    required Variables$Query$GymMembershipInfo variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryGymMembershipInfo),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GymMembershipInfo.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GymMembershipInfo>
    useQuery$GymMembershipInfo(Options$Query$GymMembershipInfo options) =>
        graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$GymMembershipInfo>
    useWatchQuery$GymMembershipInfo(
            WatchOptions$Query$GymMembershipInfo options) =>
        graphql_flutter.useWatchQuery(options);

class Query$GymMembershipInfo$Widget
    extends graphql_flutter.Query<Query$GymMembershipInfo> {
  Query$GymMembershipInfo$Widget({
    widgets.Key? key,
    required Options$Query$GymMembershipInfo options,
    required graphql_flutter.QueryBuilder<Query$GymMembershipInfo> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$GymMembershipInfo$gymQrSessionCount {
  Query$GymMembershipInfo$gymQrSessionCount({this.data});

  factory Query$GymMembershipInfo$gymQrSessionCount.fromJson(
      Map<String, dynamic> json) {
    final l$data = json['data'];
    return Query$GymMembershipInfo$gymQrSessionCount(
        data: l$data == null
            ? null
            : Query$GymMembershipInfo$gymQrSessionCount$data.fromJson(
                (l$data as Map<String, dynamic>)));
  }

  final Query$GymMembershipInfo$gymQrSessionCount$data? data;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$data = data;
    _resultData['data'] = l$data?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$data = data;
    return Object.hashAll([l$data]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GymMembershipInfo$gymQrSessionCount) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$GymMembershipInfo$gymQrSessionCount
    on Query$GymMembershipInfo$gymQrSessionCount {
  CopyWith$Query$GymMembershipInfo$gymQrSessionCount<
          Query$GymMembershipInfo$gymQrSessionCount>
      get copyWith => CopyWith$Query$GymMembershipInfo$gymQrSessionCount(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GymMembershipInfo$gymQrSessionCount<TRes> {
  factory CopyWith$Query$GymMembershipInfo$gymQrSessionCount(
    Query$GymMembershipInfo$gymQrSessionCount instance,
    TRes Function(Query$GymMembershipInfo$gymQrSessionCount) then,
  ) = _CopyWithImpl$Query$GymMembershipInfo$gymQrSessionCount;

  factory CopyWith$Query$GymMembershipInfo$gymQrSessionCount.stub(TRes res) =
      _CopyWithStubImpl$Query$GymMembershipInfo$gymQrSessionCount;

  TRes call({Query$GymMembershipInfo$gymQrSessionCount$data? data});
  CopyWith$Query$GymMembershipInfo$gymQrSessionCount$data<TRes> get data;
}

class _CopyWithImpl$Query$GymMembershipInfo$gymQrSessionCount<TRes>
    implements CopyWith$Query$GymMembershipInfo$gymQrSessionCount<TRes> {
  _CopyWithImpl$Query$GymMembershipInfo$gymQrSessionCount(
    this._instance,
    this._then,
  );

  final Query$GymMembershipInfo$gymQrSessionCount _instance;

  final TRes Function(Query$GymMembershipInfo$gymQrSessionCount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined}) =>
      _then(Query$GymMembershipInfo$gymQrSessionCount(
          data: data == _undefined
              ? _instance.data
              : (data as Query$GymMembershipInfo$gymQrSessionCount$data?)));

  CopyWith$Query$GymMembershipInfo$gymQrSessionCount$data<TRes> get data {
    final local$data = _instance.data;
    return local$data == null
        ? CopyWith$Query$GymMembershipInfo$gymQrSessionCount$data.stub(
            _then(_instance))
        : CopyWith$Query$GymMembershipInfo$gymQrSessionCount$data(
            local$data, (e) => call(data: e));
  }
}

class _CopyWithStubImpl$Query$GymMembershipInfo$gymQrSessionCount<TRes>
    implements CopyWith$Query$GymMembershipInfo$gymQrSessionCount<TRes> {
  _CopyWithStubImpl$Query$GymMembershipInfo$gymQrSessionCount(this._res);

  TRes _res;

  call({Query$GymMembershipInfo$gymQrSessionCount$data? data}) => _res;

  CopyWith$Query$GymMembershipInfo$gymQrSessionCount$data<TRes> get data =>
      CopyWith$Query$GymMembershipInfo$gymQrSessionCount$data.stub(_res);
}

class Query$GymMembershipInfo$gymQrSessionCount$data {
  Query$GymMembershipInfo$gymQrSessionCount$data({this.count});

  factory Query$GymMembershipInfo$gymQrSessionCount$data.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    return Query$GymMembershipInfo$gymQrSessionCount$data(
        count: (l$count as int?));
  }

  final int? count;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    return Object.hashAll([l$count]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GymMembershipInfo$gymQrSessionCount$data) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GymMembershipInfo$gymQrSessionCount$data
    on Query$GymMembershipInfo$gymQrSessionCount$data {
  CopyWith$Query$GymMembershipInfo$gymQrSessionCount$data<
          Query$GymMembershipInfo$gymQrSessionCount$data>
      get copyWith => CopyWith$Query$GymMembershipInfo$gymQrSessionCount$data(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GymMembershipInfo$gymQrSessionCount$data<TRes> {
  factory CopyWith$Query$GymMembershipInfo$gymQrSessionCount$data(
    Query$GymMembershipInfo$gymQrSessionCount$data instance,
    TRes Function(Query$GymMembershipInfo$gymQrSessionCount$data) then,
  ) = _CopyWithImpl$Query$GymMembershipInfo$gymQrSessionCount$data;

  factory CopyWith$Query$GymMembershipInfo$gymQrSessionCount$data.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GymMembershipInfo$gymQrSessionCount$data;

  TRes call({int? count});
}

class _CopyWithImpl$Query$GymMembershipInfo$gymQrSessionCount$data<TRes>
    implements CopyWith$Query$GymMembershipInfo$gymQrSessionCount$data<TRes> {
  _CopyWithImpl$Query$GymMembershipInfo$gymQrSessionCount$data(
    this._instance,
    this._then,
  );

  final Query$GymMembershipInfo$gymQrSessionCount$data _instance;

  final TRes Function(Query$GymMembershipInfo$gymQrSessionCount$data) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? count = _undefined}) =>
      _then(Query$GymMembershipInfo$gymQrSessionCount$data(
          count: count == _undefined ? _instance.count : (count as int?)));
}

class _CopyWithStubImpl$Query$GymMembershipInfo$gymQrSessionCount$data<TRes>
    implements CopyWith$Query$GymMembershipInfo$gymQrSessionCount$data<TRes> {
  _CopyWithStubImpl$Query$GymMembershipInfo$gymQrSessionCount$data(this._res);

  TRes _res;

  call({int? count}) => _res;
}

class Query$GymMembershipInfo$membership {
  Query$GymMembershipInfo$membership({this.data});

  factory Query$GymMembershipInfo$membership.fromJson(
      Map<String, dynamic> json) {
    final l$data = json['data'];
    return Query$GymMembershipInfo$membership(
        data: l$data == null
            ? null
            : Query$GymMembershipInfo$membership$data.fromJson(
                (l$data as Map<String, dynamic>)));
  }

  final Query$GymMembershipInfo$membership$data? data;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$data = data;
    _resultData['data'] = l$data?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$data = data;
    return Object.hashAll([l$data]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GymMembershipInfo$membership) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$GymMembershipInfo$membership
    on Query$GymMembershipInfo$membership {
  CopyWith$Query$GymMembershipInfo$membership<
          Query$GymMembershipInfo$membership>
      get copyWith => CopyWith$Query$GymMembershipInfo$membership(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GymMembershipInfo$membership<TRes> {
  factory CopyWith$Query$GymMembershipInfo$membership(
    Query$GymMembershipInfo$membership instance,
    TRes Function(Query$GymMembershipInfo$membership) then,
  ) = _CopyWithImpl$Query$GymMembershipInfo$membership;

  factory CopyWith$Query$GymMembershipInfo$membership.stub(TRes res) =
      _CopyWithStubImpl$Query$GymMembershipInfo$membership;

  TRes call({Query$GymMembershipInfo$membership$data? data});
  CopyWith$Query$GymMembershipInfo$membership$data<TRes> get data;
}

class _CopyWithImpl$Query$GymMembershipInfo$membership<TRes>
    implements CopyWith$Query$GymMembershipInfo$membership<TRes> {
  _CopyWithImpl$Query$GymMembershipInfo$membership(
    this._instance,
    this._then,
  );

  final Query$GymMembershipInfo$membership _instance;

  final TRes Function(Query$GymMembershipInfo$membership) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined}) =>
      _then(Query$GymMembershipInfo$membership(
          data: data == _undefined
              ? _instance.data
              : (data as Query$GymMembershipInfo$membership$data?)));

  CopyWith$Query$GymMembershipInfo$membership$data<TRes> get data {
    final local$data = _instance.data;
    return local$data == null
        ? CopyWith$Query$GymMembershipInfo$membership$data.stub(
            _then(_instance))
        : CopyWith$Query$GymMembershipInfo$membership$data(
            local$data, (e) => call(data: e));
  }
}

class _CopyWithStubImpl$Query$GymMembershipInfo$membership<TRes>
    implements CopyWith$Query$GymMembershipInfo$membership<TRes> {
  _CopyWithStubImpl$Query$GymMembershipInfo$membership(this._res);

  TRes _res;

  call({Query$GymMembershipInfo$membership$data? data}) => _res;

  CopyWith$Query$GymMembershipInfo$membership$data<TRes> get data =>
      CopyWith$Query$GymMembershipInfo$membership$data.stub(_res);
}

class Query$GymMembershipInfo$membership$data {
  Query$GymMembershipInfo$membership$data({required this.membership});

  factory Query$GymMembershipInfo$membership$data.fromJson(
      Map<String, dynamic> json) {
    final l$membership = json['membership'];
    return Query$GymMembershipInfo$membership$data(
        membership: Query$GymMembershipInfo$membership$data$membership.fromJson(
            (l$membership as Map<String, dynamic>)));
  }

  final Query$GymMembershipInfo$membership$data$membership membership;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$membership = membership;
    _resultData['membership'] = l$membership.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$membership = membership;
    return Object.hashAll([l$membership]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GymMembershipInfo$membership$data) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$membership = membership;
    final lOther$membership = other.membership;
    if (l$membership != lOther$membership) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GymMembershipInfo$membership$data
    on Query$GymMembershipInfo$membership$data {
  CopyWith$Query$GymMembershipInfo$membership$data<
          Query$GymMembershipInfo$membership$data>
      get copyWith => CopyWith$Query$GymMembershipInfo$membership$data(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GymMembershipInfo$membership$data<TRes> {
  factory CopyWith$Query$GymMembershipInfo$membership$data(
    Query$GymMembershipInfo$membership$data instance,
    TRes Function(Query$GymMembershipInfo$membership$data) then,
  ) = _CopyWithImpl$Query$GymMembershipInfo$membership$data;

  factory CopyWith$Query$GymMembershipInfo$membership$data.stub(TRes res) =
      _CopyWithStubImpl$Query$GymMembershipInfo$membership$data;

  TRes call({Query$GymMembershipInfo$membership$data$membership? membership});
  CopyWith$Query$GymMembershipInfo$membership$data$membership<TRes>
      get membership;
}

class _CopyWithImpl$Query$GymMembershipInfo$membership$data<TRes>
    implements CopyWith$Query$GymMembershipInfo$membership$data<TRes> {
  _CopyWithImpl$Query$GymMembershipInfo$membership$data(
    this._instance,
    this._then,
  );

  final Query$GymMembershipInfo$membership$data _instance;

  final TRes Function(Query$GymMembershipInfo$membership$data) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? membership = _undefined}) =>
      _then(Query$GymMembershipInfo$membership$data(
          membership: membership == _undefined || membership == null
              ? _instance.membership
              : (membership
                  as Query$GymMembershipInfo$membership$data$membership)));

  CopyWith$Query$GymMembershipInfo$membership$data$membership<TRes>
      get membership {
    final local$membership = _instance.membership;
    return CopyWith$Query$GymMembershipInfo$membership$data$membership(
        local$membership, (e) => call(membership: e));
  }
}

class _CopyWithStubImpl$Query$GymMembershipInfo$membership$data<TRes>
    implements CopyWith$Query$GymMembershipInfo$membership$data<TRes> {
  _CopyWithStubImpl$Query$GymMembershipInfo$membership$data(this._res);

  TRes _res;

  call({Query$GymMembershipInfo$membership$data$membership? membership}) =>
      _res;

  CopyWith$Query$GymMembershipInfo$membership$data$membership<TRes>
      get membership =>
          CopyWith$Query$GymMembershipInfo$membership$data$membership.stub(
              _res);
}

class Query$GymMembershipInfo$membership$data$membership {
  Query$GymMembershipInfo$membership$data$membership({
    required this.startDate,
    this.endDate,
  });

  factory Query$GymMembershipInfo$membership$data$membership.fromJson(
      Map<String, dynamic> json) {
    final l$startDate = json['startDate'];
    final l$endDate = json['endDate'];
    return Query$GymMembershipInfo$membership$data$membership(
      startDate: (l$startDate as String),
      endDate: (l$endDate as String?),
    );
  }

  final String startDate;

  final String? endDate;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$startDate = startDate;
    _resultData['startDate'] = l$startDate;
    final l$endDate = endDate;
    _resultData['endDate'] = l$endDate;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$startDate = startDate;
    final l$endDate = endDate;
    return Object.hashAll([
      l$startDate,
      l$endDate,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GymMembershipInfo$membership$data$membership) ||
        runtimeType != other.runtimeType) {
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
    return true;
  }
}

extension UtilityExtension$Query$GymMembershipInfo$membership$data$membership
    on Query$GymMembershipInfo$membership$data$membership {
  CopyWith$Query$GymMembershipInfo$membership$data$membership<
          Query$GymMembershipInfo$membership$data$membership>
      get copyWith =>
          CopyWith$Query$GymMembershipInfo$membership$data$membership(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GymMembershipInfo$membership$data$membership<
    TRes> {
  factory CopyWith$Query$GymMembershipInfo$membership$data$membership(
    Query$GymMembershipInfo$membership$data$membership instance,
    TRes Function(Query$GymMembershipInfo$membership$data$membership) then,
  ) = _CopyWithImpl$Query$GymMembershipInfo$membership$data$membership;

  factory CopyWith$Query$GymMembershipInfo$membership$data$membership.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GymMembershipInfo$membership$data$membership;

  TRes call({
    String? startDate,
    String? endDate,
  });
}

class _CopyWithImpl$Query$GymMembershipInfo$membership$data$membership<TRes>
    implements
        CopyWith$Query$GymMembershipInfo$membership$data$membership<TRes> {
  _CopyWithImpl$Query$GymMembershipInfo$membership$data$membership(
    this._instance,
    this._then,
  );

  final Query$GymMembershipInfo$membership$data$membership _instance;

  final TRes Function(Query$GymMembershipInfo$membership$data$membership) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? startDate = _undefined,
    Object? endDate = _undefined,
  }) =>
      _then(Query$GymMembershipInfo$membership$data$membership(
        startDate: startDate == _undefined || startDate == null
            ? _instance.startDate
            : (startDate as String),
        endDate:
            endDate == _undefined ? _instance.endDate : (endDate as String?),
      ));
}

class _CopyWithStubImpl$Query$GymMembershipInfo$membership$data$membership<TRes>
    implements
        CopyWith$Query$GymMembershipInfo$membership$data$membership<TRes> {
  _CopyWithStubImpl$Query$GymMembershipInfo$membership$data$membership(
      this._res);

  TRes _res;

  call({
    String? startDate,
    String? endDate,
  }) =>
      _res;
}

class Query$GymMembershipInfo$membershipDueAmount {
  Query$GymMembershipInfo$membershipDueAmount({this.data});

  factory Query$GymMembershipInfo$membershipDueAmount.fromJson(
      Map<String, dynamic> json) {
    final l$data = json['data'];
    return Query$GymMembershipInfo$membershipDueAmount(
        data: l$data == null
            ? null
            : Query$GymMembershipInfo$membershipDueAmount$data.fromJson(
                (l$data as Map<String, dynamic>)));
  }

  final Query$GymMembershipInfo$membershipDueAmount$data? data;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$data = data;
    _resultData['data'] = l$data?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$data = data;
    return Object.hashAll([l$data]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GymMembershipInfo$membershipDueAmount) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$GymMembershipInfo$membershipDueAmount
    on Query$GymMembershipInfo$membershipDueAmount {
  CopyWith$Query$GymMembershipInfo$membershipDueAmount<
          Query$GymMembershipInfo$membershipDueAmount>
      get copyWith => CopyWith$Query$GymMembershipInfo$membershipDueAmount(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GymMembershipInfo$membershipDueAmount<TRes> {
  factory CopyWith$Query$GymMembershipInfo$membershipDueAmount(
    Query$GymMembershipInfo$membershipDueAmount instance,
    TRes Function(Query$GymMembershipInfo$membershipDueAmount) then,
  ) = _CopyWithImpl$Query$GymMembershipInfo$membershipDueAmount;

  factory CopyWith$Query$GymMembershipInfo$membershipDueAmount.stub(TRes res) =
      _CopyWithStubImpl$Query$GymMembershipInfo$membershipDueAmount;

  TRes call({Query$GymMembershipInfo$membershipDueAmount$data? data});
  CopyWith$Query$GymMembershipInfo$membershipDueAmount$data<TRes> get data;
}

class _CopyWithImpl$Query$GymMembershipInfo$membershipDueAmount<TRes>
    implements CopyWith$Query$GymMembershipInfo$membershipDueAmount<TRes> {
  _CopyWithImpl$Query$GymMembershipInfo$membershipDueAmount(
    this._instance,
    this._then,
  );

  final Query$GymMembershipInfo$membershipDueAmount _instance;

  final TRes Function(Query$GymMembershipInfo$membershipDueAmount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined}) =>
      _then(Query$GymMembershipInfo$membershipDueAmount(
          data: data == _undefined
              ? _instance.data
              : (data as Query$GymMembershipInfo$membershipDueAmount$data?)));

  CopyWith$Query$GymMembershipInfo$membershipDueAmount$data<TRes> get data {
    final local$data = _instance.data;
    return local$data == null
        ? CopyWith$Query$GymMembershipInfo$membershipDueAmount$data.stub(
            _then(_instance))
        : CopyWith$Query$GymMembershipInfo$membershipDueAmount$data(
            local$data, (e) => call(data: e));
  }
}

class _CopyWithStubImpl$Query$GymMembershipInfo$membershipDueAmount<TRes>
    implements CopyWith$Query$GymMembershipInfo$membershipDueAmount<TRes> {
  _CopyWithStubImpl$Query$GymMembershipInfo$membershipDueAmount(this._res);

  TRes _res;

  call({Query$GymMembershipInfo$membershipDueAmount$data? data}) => _res;

  CopyWith$Query$GymMembershipInfo$membershipDueAmount$data<TRes> get data =>
      CopyWith$Query$GymMembershipInfo$membershipDueAmount$data.stub(_res);
}

class Query$GymMembershipInfo$membershipDueAmount$data {
  Query$GymMembershipInfo$membershipDueAmount$data({this.amount});

  factory Query$GymMembershipInfo$membershipDueAmount$data.fromJson(
      Map<String, dynamic> json) {
    final l$amount = json['amount'];
    return Query$GymMembershipInfo$membershipDueAmount$data(
        amount: (l$amount as num?)?.toDouble());
  }

  final double? amount;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$amount = amount;
    _resultData['amount'] = l$amount;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$amount = amount;
    return Object.hashAll([l$amount]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GymMembershipInfo$membershipDueAmount$data) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$amount = amount;
    final lOther$amount = other.amount;
    if (l$amount != lOther$amount) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GymMembershipInfo$membershipDueAmount$data
    on Query$GymMembershipInfo$membershipDueAmount$data {
  CopyWith$Query$GymMembershipInfo$membershipDueAmount$data<
          Query$GymMembershipInfo$membershipDueAmount$data>
      get copyWith => CopyWith$Query$GymMembershipInfo$membershipDueAmount$data(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GymMembershipInfo$membershipDueAmount$data<TRes> {
  factory CopyWith$Query$GymMembershipInfo$membershipDueAmount$data(
    Query$GymMembershipInfo$membershipDueAmount$data instance,
    TRes Function(Query$GymMembershipInfo$membershipDueAmount$data) then,
  ) = _CopyWithImpl$Query$GymMembershipInfo$membershipDueAmount$data;

  factory CopyWith$Query$GymMembershipInfo$membershipDueAmount$data.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GymMembershipInfo$membershipDueAmount$data;

  TRes call({double? amount});
}

class _CopyWithImpl$Query$GymMembershipInfo$membershipDueAmount$data<TRes>
    implements CopyWith$Query$GymMembershipInfo$membershipDueAmount$data<TRes> {
  _CopyWithImpl$Query$GymMembershipInfo$membershipDueAmount$data(
    this._instance,
    this._then,
  );

  final Query$GymMembershipInfo$membershipDueAmount$data _instance;

  final TRes Function(Query$GymMembershipInfo$membershipDueAmount$data) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? amount = _undefined}) =>
      _then(Query$GymMembershipInfo$membershipDueAmount$data(
          amount:
              amount == _undefined ? _instance.amount : (amount as double?)));
}

class _CopyWithStubImpl$Query$GymMembershipInfo$membershipDueAmount$data<TRes>
    implements CopyWith$Query$GymMembershipInfo$membershipDueAmount$data<TRes> {
  _CopyWithStubImpl$Query$GymMembershipInfo$membershipDueAmount$data(this._res);

  TRes _res;

  call({double? amount}) => _res;
}
