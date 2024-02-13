import '../../schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$UserByAuth {
  factory Variables$Query$UserByAuth({String? gymId}) =>
      Variables$Query$UserByAuth._({
        if (gymId != null) r'gymId': gymId,
      });

  Variables$Query$UserByAuth._(this._$data);

  factory Variables$Query$UserByAuth.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('gymId')) {
      final l$gymId = data['gymId'];
      result$data['gymId'] = (l$gymId as String?);
    }
    return Variables$Query$UserByAuth._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get gymId => (_$data['gymId'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('gymId')) {
      final l$gymId = gymId;
      result$data['gymId'] = l$gymId;
    }
    return result$data;
  }

  CopyWith$Variables$Query$UserByAuth<Variables$Query$UserByAuth>
      get copyWith => CopyWith$Variables$Query$UserByAuth(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$UserByAuth) ||
        runtimeType != other.runtimeType) {
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
    final l$gymId = gymId;
    return Object.hashAll([_$data.containsKey('gymId') ? l$gymId : const {}]);
  }
}

abstract class CopyWith$Variables$Query$UserByAuth<TRes> {
  factory CopyWith$Variables$Query$UserByAuth(
    Variables$Query$UserByAuth instance,
    TRes Function(Variables$Query$UserByAuth) then,
  ) = _CopyWithImpl$Variables$Query$UserByAuth;

  factory CopyWith$Variables$Query$UserByAuth.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$UserByAuth;

  TRes call({String? gymId});
}

class _CopyWithImpl$Variables$Query$UserByAuth<TRes>
    implements CopyWith$Variables$Query$UserByAuth<TRes> {
  _CopyWithImpl$Variables$Query$UserByAuth(
    this._instance,
    this._then,
  );

  final Variables$Query$UserByAuth _instance;

  final TRes Function(Variables$Query$UserByAuth) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? gymId = _undefined}) =>
      _then(Variables$Query$UserByAuth._({
        ..._instance._$data,
        if (gymId != _undefined) 'gymId': (gymId as String?),
      }));
}

class _CopyWithStubImpl$Variables$Query$UserByAuth<TRes>
    implements CopyWith$Variables$Query$UserByAuth<TRes> {
  _CopyWithStubImpl$Variables$Query$UserByAuth(this._res);

  TRes _res;

  call({String? gymId}) => _res;
}

class Query$UserByAuth {
  Query$UserByAuth({required this.userByAuth});

  factory Query$UserByAuth.fromJson(Map<String, dynamic> json) {
    final l$userByAuth = json['userByAuth'];
    return Query$UserByAuth(
        userByAuth: Query$UserByAuth$userByAuth.fromJson(
            (l$userByAuth as Map<String, dynamic>)));
  }

  final Query$UserByAuth$userByAuth userByAuth;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$userByAuth = userByAuth;
    _resultData['userByAuth'] = l$userByAuth.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$userByAuth = userByAuth;
    return Object.hashAll([l$userByAuth]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$UserByAuth) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$userByAuth = userByAuth;
    final lOther$userByAuth = other.userByAuth;
    if (l$userByAuth != lOther$userByAuth) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$UserByAuth on Query$UserByAuth {
  CopyWith$Query$UserByAuth<Query$UserByAuth> get copyWith =>
      CopyWith$Query$UserByAuth(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$UserByAuth<TRes> {
  factory CopyWith$Query$UserByAuth(
    Query$UserByAuth instance,
    TRes Function(Query$UserByAuth) then,
  ) = _CopyWithImpl$Query$UserByAuth;

  factory CopyWith$Query$UserByAuth.stub(TRes res) =
      _CopyWithStubImpl$Query$UserByAuth;

  TRes call({Query$UserByAuth$userByAuth? userByAuth});
  CopyWith$Query$UserByAuth$userByAuth<TRes> get userByAuth;
}

class _CopyWithImpl$Query$UserByAuth<TRes>
    implements CopyWith$Query$UserByAuth<TRes> {
  _CopyWithImpl$Query$UserByAuth(
    this._instance,
    this._then,
  );

  final Query$UserByAuth _instance;

  final TRes Function(Query$UserByAuth) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? userByAuth = _undefined}) => _then(Query$UserByAuth(
      userByAuth: userByAuth == _undefined || userByAuth == null
          ? _instance.userByAuth
          : (userByAuth as Query$UserByAuth$userByAuth)));

  CopyWith$Query$UserByAuth$userByAuth<TRes> get userByAuth {
    final local$userByAuth = _instance.userByAuth;
    return CopyWith$Query$UserByAuth$userByAuth(
        local$userByAuth, (e) => call(userByAuth: e));
  }
}

class _CopyWithStubImpl$Query$UserByAuth<TRes>
    implements CopyWith$Query$UserByAuth<TRes> {
  _CopyWithStubImpl$Query$UserByAuth(this._res);

  TRes _res;

  call({Query$UserByAuth$userByAuth? userByAuth}) => _res;

  CopyWith$Query$UserByAuth$userByAuth<TRes> get userByAuth =>
      CopyWith$Query$UserByAuth$userByAuth.stub(_res);
}

const documentNodeQueryUserByAuth = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'UserByAuth'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'gymId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'userByAuth'),
        alias: NameNode(value: 'userByAuth'),
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'found'),
            alias: NameNode(value: 'found'),
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'type'),
            alias: NameNode(value: 'type'),
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'user'),
            alias: NameNode(value: 'user'),
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
                name: NameNode(value: 'firstName'),
                alias: NameNode(value: 'firstName'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'lastName'),
                alias: NameNode(value: 'lastName'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'isEmailVerified'),
                alias: NameNode(value: 'isEmailVerified'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'isPhoneVerified'),
                alias: NameNode(value: 'isPhoneVerified'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'parentLead'),
                alias: NameNode(value: 'parentLead'),
                arguments: [
                  ArgumentNode(
                    name: NameNode(value: 'gymId'),
                    value: VariableNode(name: NameNode(value: 'gymId')),
                  )
                ],
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
                    name: NameNode(value: 'firstName'),
                    alias: NameNode(value: 'firstName'),
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'lastName'),
                    alias: NameNode(value: 'lastName'),
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'photo'),
                    alias: NameNode(value: 'photo'),
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'dob'),
                    alias: NameNode(value: 'dob'),
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
Query$UserByAuth _parserFn$Query$UserByAuth(Map<String, dynamic> data) =>
    Query$UserByAuth.fromJson(data);
typedef OnQueryComplete$Query$UserByAuth = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$UserByAuth?,
);

class Options$Query$UserByAuth extends graphql.QueryOptions<Query$UserByAuth> {
  Options$Query$UserByAuth({
    String? operationName,
    Variables$Query$UserByAuth? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$UserByAuth? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$UserByAuth? onComplete,
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
                    data == null ? null : _parserFn$Query$UserByAuth(data),
                  ),
          onError: onError,
          document: documentNodeQueryUserByAuth,
          parserFn: _parserFn$Query$UserByAuth,
        );

  final OnQueryComplete$Query$UserByAuth? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$UserByAuth
    extends graphql.WatchQueryOptions<Query$UserByAuth> {
  WatchOptions$Query$UserByAuth({
    String? operationName,
    Variables$Query$UserByAuth? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$UserByAuth? typedOptimisticResult,
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
          document: documentNodeQueryUserByAuth,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$UserByAuth,
        );
}

class FetchMoreOptions$Query$UserByAuth extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$UserByAuth({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$UserByAuth? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryUserByAuth,
        );
}

extension ClientExtension$Query$UserByAuth on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$UserByAuth>> query$UserByAuth(
          [Options$Query$UserByAuth? options]) async =>
      await this.query(options ?? Options$Query$UserByAuth());
  graphql.ObservableQuery<Query$UserByAuth> watchQuery$UserByAuth(
          [WatchOptions$Query$UserByAuth? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$UserByAuth());
  void writeQuery$UserByAuth({
    required Query$UserByAuth data,
    Variables$Query$UserByAuth? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryUserByAuth),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$UserByAuth? readQuery$UserByAuth({
    Variables$Query$UserByAuth? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryUserByAuth),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$UserByAuth.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$UserByAuth> useQuery$UserByAuth(
        [Options$Query$UserByAuth? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$UserByAuth());
graphql.ObservableQuery<Query$UserByAuth> useWatchQuery$UserByAuth(
        [WatchOptions$Query$UserByAuth? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$UserByAuth());

class Query$UserByAuth$Widget extends graphql_flutter.Query<Query$UserByAuth> {
  Query$UserByAuth$Widget({
    widgets.Key? key,
    Options$Query$UserByAuth? options,
    required graphql_flutter.QueryBuilder<Query$UserByAuth> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$UserByAuth(),
          builder: builder,
        );
}

class Query$UserByAuth$userByAuth {
  Query$UserByAuth$userByAuth({
    required this.found,
    this.type,
    this.user,
  });

  factory Query$UserByAuth$userByAuth.fromJson(Map<String, dynamic> json) {
    final l$found = json['found'];
    final l$type = json['type'];
    final l$user = json['user'];
    return Query$UserByAuth$userByAuth(
      found: (l$found as bool),
      type: l$type == null
          ? null
          : fromJson$Enum$UserTypeEnum((l$type as String)),
      user: l$user == null
          ? null
          : Query$UserByAuth$userByAuth$user.fromJson(
              (l$user as Map<String, dynamic>)),
    );
  }

  final bool found;

  final Enum$UserTypeEnum? type;

  final Query$UserByAuth$userByAuth$user? user;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$found = found;
    _resultData['found'] = l$found;
    final l$type = type;
    _resultData['type'] =
        l$type == null ? null : toJson$Enum$UserTypeEnum(l$type);
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$found = found;
    final l$type = type;
    final l$user = user;
    return Object.hashAll([
      l$found,
      l$type,
      l$user,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$UserByAuth$userByAuth) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$found = found;
    final lOther$found = other.found;
    if (l$found != lOther$found) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$UserByAuth$userByAuth
    on Query$UserByAuth$userByAuth {
  CopyWith$Query$UserByAuth$userByAuth<Query$UserByAuth$userByAuth>
      get copyWith => CopyWith$Query$UserByAuth$userByAuth(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserByAuth$userByAuth<TRes> {
  factory CopyWith$Query$UserByAuth$userByAuth(
    Query$UserByAuth$userByAuth instance,
    TRes Function(Query$UserByAuth$userByAuth) then,
  ) = _CopyWithImpl$Query$UserByAuth$userByAuth;

  factory CopyWith$Query$UserByAuth$userByAuth.stub(TRes res) =
      _CopyWithStubImpl$Query$UserByAuth$userByAuth;

  TRes call({
    bool? found,
    Enum$UserTypeEnum? type,
    Query$UserByAuth$userByAuth$user? user,
  });
  CopyWith$Query$UserByAuth$userByAuth$user<TRes> get user;
}

class _CopyWithImpl$Query$UserByAuth$userByAuth<TRes>
    implements CopyWith$Query$UserByAuth$userByAuth<TRes> {
  _CopyWithImpl$Query$UserByAuth$userByAuth(
    this._instance,
    this._then,
  );

  final Query$UserByAuth$userByAuth _instance;

  final TRes Function(Query$UserByAuth$userByAuth) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? found = _undefined,
    Object? type = _undefined,
    Object? user = _undefined,
  }) =>
      _then(Query$UserByAuth$userByAuth(
        found: found == _undefined || found == null
            ? _instance.found
            : (found as bool),
        type:
            type == _undefined ? _instance.type : (type as Enum$UserTypeEnum?),
        user: user == _undefined
            ? _instance.user
            : (user as Query$UserByAuth$userByAuth$user?),
      ));

  CopyWith$Query$UserByAuth$userByAuth$user<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Query$UserByAuth$userByAuth$user.stub(_then(_instance))
        : CopyWith$Query$UserByAuth$userByAuth$user(
            local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Query$UserByAuth$userByAuth<TRes>
    implements CopyWith$Query$UserByAuth$userByAuth<TRes> {
  _CopyWithStubImpl$Query$UserByAuth$userByAuth(this._res);

  TRes _res;

  call({
    bool? found,
    Enum$UserTypeEnum? type,
    Query$UserByAuth$userByAuth$user? user,
  }) =>
      _res;

  CopyWith$Query$UserByAuth$userByAuth$user<TRes> get user =>
      CopyWith$Query$UserByAuth$userByAuth$user.stub(_res);
}

class Query$UserByAuth$userByAuth$user {
  Query$UserByAuth$userByAuth$user({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.isEmailVerified,
    required this.isPhoneVerified,
    this.parentLead,
  });

  factory Query$UserByAuth$userByAuth$user.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$isEmailVerified = json['isEmailVerified'];
    final l$isPhoneVerified = json['isPhoneVerified'];
    final l$parentLead = json['parentLead'];
    return Query$UserByAuth$userByAuth$user(
      id: (l$id as String),
      firstName: (l$firstName as String),
      lastName: (l$lastName as String),
      isEmailVerified: (l$isEmailVerified as bool),
      isPhoneVerified: (l$isPhoneVerified as bool),
      parentLead: l$parentLead == null
          ? null
          : Query$UserByAuth$userByAuth$user$parentLead.fromJson(
              (l$parentLead as Map<String, dynamic>)),
    );
  }

  final String id;

  final String firstName;

  final String lastName;

  final bool isEmailVerified;

  final bool isPhoneVerified;

  final Query$UserByAuth$userByAuth$user$parentLead? parentLead;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$firstName = firstName;
    _resultData['firstName'] = l$firstName;
    final l$lastName = lastName;
    _resultData['lastName'] = l$lastName;
    final l$isEmailVerified = isEmailVerified;
    _resultData['isEmailVerified'] = l$isEmailVerified;
    final l$isPhoneVerified = isPhoneVerified;
    _resultData['isPhoneVerified'] = l$isPhoneVerified;
    final l$parentLead = parentLead;
    _resultData['parentLead'] = l$parentLead?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$isEmailVerified = isEmailVerified;
    final l$isPhoneVerified = isPhoneVerified;
    final l$parentLead = parentLead;
    return Object.hashAll([
      l$id,
      l$firstName,
      l$lastName,
      l$isEmailVerified,
      l$isPhoneVerified,
      l$parentLead,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$UserByAuth$userByAuth$user) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (l$firstName != lOther$firstName) {
      return false;
    }
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (l$lastName != lOther$lastName) {
      return false;
    }
    final l$isEmailVerified = isEmailVerified;
    final lOther$isEmailVerified = other.isEmailVerified;
    if (l$isEmailVerified != lOther$isEmailVerified) {
      return false;
    }
    final l$isPhoneVerified = isPhoneVerified;
    final lOther$isPhoneVerified = other.isPhoneVerified;
    if (l$isPhoneVerified != lOther$isPhoneVerified) {
      return false;
    }
    final l$parentLead = parentLead;
    final lOther$parentLead = other.parentLead;
    if (l$parentLead != lOther$parentLead) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$UserByAuth$userByAuth$user
    on Query$UserByAuth$userByAuth$user {
  CopyWith$Query$UserByAuth$userByAuth$user<Query$UserByAuth$userByAuth$user>
      get copyWith => CopyWith$Query$UserByAuth$userByAuth$user(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserByAuth$userByAuth$user<TRes> {
  factory CopyWith$Query$UserByAuth$userByAuth$user(
    Query$UserByAuth$userByAuth$user instance,
    TRes Function(Query$UserByAuth$userByAuth$user) then,
  ) = _CopyWithImpl$Query$UserByAuth$userByAuth$user;

  factory CopyWith$Query$UserByAuth$userByAuth$user.stub(TRes res) =
      _CopyWithStubImpl$Query$UserByAuth$userByAuth$user;

  TRes call({
    String? id,
    String? firstName,
    String? lastName,
    bool? isEmailVerified,
    bool? isPhoneVerified,
    Query$UserByAuth$userByAuth$user$parentLead? parentLead,
  });
  CopyWith$Query$UserByAuth$userByAuth$user$parentLead<TRes> get parentLead;
}

class _CopyWithImpl$Query$UserByAuth$userByAuth$user<TRes>
    implements CopyWith$Query$UserByAuth$userByAuth$user<TRes> {
  _CopyWithImpl$Query$UserByAuth$userByAuth$user(
    this._instance,
    this._then,
  );

  final Query$UserByAuth$userByAuth$user _instance;

  final TRes Function(Query$UserByAuth$userByAuth$user) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? isEmailVerified = _undefined,
    Object? isPhoneVerified = _undefined,
    Object? parentLead = _undefined,
  }) =>
      _then(Query$UserByAuth$userByAuth$user(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        firstName: firstName == _undefined || firstName == null
            ? _instance.firstName
            : (firstName as String),
        lastName: lastName == _undefined || lastName == null
            ? _instance.lastName
            : (lastName as String),
        isEmailVerified:
            isEmailVerified == _undefined || isEmailVerified == null
                ? _instance.isEmailVerified
                : (isEmailVerified as bool),
        isPhoneVerified:
            isPhoneVerified == _undefined || isPhoneVerified == null
                ? _instance.isPhoneVerified
                : (isPhoneVerified as bool),
        parentLead: parentLead == _undefined
            ? _instance.parentLead
            : (parentLead as Query$UserByAuth$userByAuth$user$parentLead?),
      ));

  CopyWith$Query$UserByAuth$userByAuth$user$parentLead<TRes> get parentLead {
    final local$parentLead = _instance.parentLead;
    return local$parentLead == null
        ? CopyWith$Query$UserByAuth$userByAuth$user$parentLead.stub(
            _then(_instance))
        : CopyWith$Query$UserByAuth$userByAuth$user$parentLead(
            local$parentLead, (e) => call(parentLead: e));
  }
}

class _CopyWithStubImpl$Query$UserByAuth$userByAuth$user<TRes>
    implements CopyWith$Query$UserByAuth$userByAuth$user<TRes> {
  _CopyWithStubImpl$Query$UserByAuth$userByAuth$user(this._res);

  TRes _res;

  call({
    String? id,
    String? firstName,
    String? lastName,
    bool? isEmailVerified,
    bool? isPhoneVerified,
    Query$UserByAuth$userByAuth$user$parentLead? parentLead,
  }) =>
      _res;

  CopyWith$Query$UserByAuth$userByAuth$user$parentLead<TRes> get parentLead =>
      CopyWith$Query$UserByAuth$userByAuth$user$parentLead.stub(_res);
}

class Query$UserByAuth$userByAuth$user$parentLead {
  Query$UserByAuth$userByAuth$user$parentLead({
    required this.id,
    required this.firstName,
    this.lastName,
    this.photo,
    this.dob,
  });

  factory Query$UserByAuth$userByAuth$user$parentLead.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$photo = json['photo'];
    final l$dob = json['dob'];
    return Query$UserByAuth$userByAuth$user$parentLead(
      id: (l$id as String),
      firstName: (l$firstName as String),
      lastName: (l$lastName as String?),
      photo: (l$photo as String?),
      dob: (l$dob as String?),
    );
  }

  final String id;

  final String firstName;

  final String? lastName;

  final String? photo;

  final String? dob;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$firstName = firstName;
    _resultData['firstName'] = l$firstName;
    final l$lastName = lastName;
    _resultData['lastName'] = l$lastName;
    final l$photo = photo;
    _resultData['photo'] = l$photo;
    final l$dob = dob;
    _resultData['dob'] = l$dob;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$photo = photo;
    final l$dob = dob;
    return Object.hashAll([
      l$id,
      l$firstName,
      l$lastName,
      l$photo,
      l$dob,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$UserByAuth$userByAuth$user$parentLead) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (l$firstName != lOther$firstName) {
      return false;
    }
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (l$lastName != lOther$lastName) {
      return false;
    }
    final l$photo = photo;
    final lOther$photo = other.photo;
    if (l$photo != lOther$photo) {
      return false;
    }
    final l$dob = dob;
    final lOther$dob = other.dob;
    if (l$dob != lOther$dob) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$UserByAuth$userByAuth$user$parentLead
    on Query$UserByAuth$userByAuth$user$parentLead {
  CopyWith$Query$UserByAuth$userByAuth$user$parentLead<
          Query$UserByAuth$userByAuth$user$parentLead>
      get copyWith => CopyWith$Query$UserByAuth$userByAuth$user$parentLead(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserByAuth$userByAuth$user$parentLead<TRes> {
  factory CopyWith$Query$UserByAuth$userByAuth$user$parentLead(
    Query$UserByAuth$userByAuth$user$parentLead instance,
    TRes Function(Query$UserByAuth$userByAuth$user$parentLead) then,
  ) = _CopyWithImpl$Query$UserByAuth$userByAuth$user$parentLead;

  factory CopyWith$Query$UserByAuth$userByAuth$user$parentLead.stub(TRes res) =
      _CopyWithStubImpl$Query$UserByAuth$userByAuth$user$parentLead;

  TRes call({
    String? id,
    String? firstName,
    String? lastName,
    String? photo,
    String? dob,
  });
}

class _CopyWithImpl$Query$UserByAuth$userByAuth$user$parentLead<TRes>
    implements CopyWith$Query$UserByAuth$userByAuth$user$parentLead<TRes> {
  _CopyWithImpl$Query$UserByAuth$userByAuth$user$parentLead(
    this._instance,
    this._then,
  );

  final Query$UserByAuth$userByAuth$user$parentLead _instance;

  final TRes Function(Query$UserByAuth$userByAuth$user$parentLead) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? photo = _undefined,
    Object? dob = _undefined,
  }) =>
      _then(Query$UserByAuth$userByAuth$user$parentLead(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        firstName: firstName == _undefined || firstName == null
            ? _instance.firstName
            : (firstName as String),
        lastName:
            lastName == _undefined ? _instance.lastName : (lastName as String?),
        photo: photo == _undefined ? _instance.photo : (photo as String?),
        dob: dob == _undefined ? _instance.dob : (dob as String?),
      ));
}

class _CopyWithStubImpl$Query$UserByAuth$userByAuth$user$parentLead<TRes>
    implements CopyWith$Query$UserByAuth$userByAuth$user$parentLead<TRes> {
  _CopyWithStubImpl$Query$UserByAuth$userByAuth$user$parentLead(this._res);

  TRes _res;

  call({
    String? id,
    String? firstName,
    String? lastName,
    String? photo,
    String? dob,
  }) =>
      _res;
}
