import '../../schema.graphql.dart';
import 'dart:async';
import 'package:allup_user_app/scalars.dart';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$LinkedAccounts {
  factory Variables$Query$LinkedAccounts(
          {Input$UserSlotsByAuthFilters? params}) =>
      Variables$Query$LinkedAccounts._({
        if (params != null) r'params': params,
      });

  Variables$Query$LinkedAccounts._(this._$data);

  factory Variables$Query$LinkedAccounts.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('params')) {
      final l$params = data['params'];
      result$data['params'] = l$params == null
          ? null
          : Input$UserSlotsByAuthFilters.fromJson(
              (l$params as Map<String, dynamic>));
    }
    return Variables$Query$LinkedAccounts._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$UserSlotsByAuthFilters? get params =>
      (_$data['params'] as Input$UserSlotsByAuthFilters?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('params')) {
      final l$params = params;
      result$data['params'] = l$params?.toJson();
    }
    return result$data;
  }

  CopyWith$Variables$Query$LinkedAccounts<Variables$Query$LinkedAccounts>
      get copyWith => CopyWith$Variables$Query$LinkedAccounts(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$LinkedAccounts) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$params = params;
    final lOther$params = other.params;
    if (_$data.containsKey('params') != other._$data.containsKey('params')) {
      return false;
    }
    if (l$params != lOther$params) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$params = params;
    return Object.hashAll([_$data.containsKey('params') ? l$params : const {}]);
  }
}

abstract class CopyWith$Variables$Query$LinkedAccounts<TRes> {
  factory CopyWith$Variables$Query$LinkedAccounts(
    Variables$Query$LinkedAccounts instance,
    TRes Function(Variables$Query$LinkedAccounts) then,
  ) = _CopyWithImpl$Variables$Query$LinkedAccounts;

  factory CopyWith$Variables$Query$LinkedAccounts.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$LinkedAccounts;

  TRes call({Input$UserSlotsByAuthFilters? params});
}

class _CopyWithImpl$Variables$Query$LinkedAccounts<TRes>
    implements CopyWith$Variables$Query$LinkedAccounts<TRes> {
  _CopyWithImpl$Variables$Query$LinkedAccounts(
    this._instance,
    this._then,
  );

  final Variables$Query$LinkedAccounts _instance;

  final TRes Function(Variables$Query$LinkedAccounts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? params = _undefined}) =>
      _then(Variables$Query$LinkedAccounts._({
        ..._instance._$data,
        if (params != _undefined)
          'params': (params as Input$UserSlotsByAuthFilters?),
      }));
}

class _CopyWithStubImpl$Variables$Query$LinkedAccounts<TRes>
    implements CopyWith$Variables$Query$LinkedAccounts<TRes> {
  _CopyWithStubImpl$Variables$Query$LinkedAccounts(this._res);

  TRes _res;

  call({Input$UserSlotsByAuthFilters? params}) => _res;
}

class Query$LinkedAccounts {
  Query$LinkedAccounts({required this.userSlotsByAuth});

  factory Query$LinkedAccounts.fromJson(Map<String, dynamic> json) {
    final l$userSlotsByAuth = json['userSlotsByAuth'];
    return Query$LinkedAccounts(
        userSlotsByAuth: Query$LinkedAccounts$userSlotsByAuth.fromJson(
            (l$userSlotsByAuth as Map<String, dynamic>)));
  }

  final Query$LinkedAccounts$userSlotsByAuth userSlotsByAuth;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$userSlotsByAuth = userSlotsByAuth;
    _resultData['userSlotsByAuth'] = l$userSlotsByAuth.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$userSlotsByAuth = userSlotsByAuth;
    return Object.hashAll([l$userSlotsByAuth]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$LinkedAccounts) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$userSlotsByAuth = userSlotsByAuth;
    final lOther$userSlotsByAuth = other.userSlotsByAuth;
    if (l$userSlotsByAuth != lOther$userSlotsByAuth) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$LinkedAccounts on Query$LinkedAccounts {
  CopyWith$Query$LinkedAccounts<Query$LinkedAccounts> get copyWith =>
      CopyWith$Query$LinkedAccounts(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LinkedAccounts<TRes> {
  factory CopyWith$Query$LinkedAccounts(
    Query$LinkedAccounts instance,
    TRes Function(Query$LinkedAccounts) then,
  ) = _CopyWithImpl$Query$LinkedAccounts;

  factory CopyWith$Query$LinkedAccounts.stub(TRes res) =
      _CopyWithStubImpl$Query$LinkedAccounts;

  TRes call({Query$LinkedAccounts$userSlotsByAuth? userSlotsByAuth});
  CopyWith$Query$LinkedAccounts$userSlotsByAuth<TRes> get userSlotsByAuth;
}

class _CopyWithImpl$Query$LinkedAccounts<TRes>
    implements CopyWith$Query$LinkedAccounts<TRes> {
  _CopyWithImpl$Query$LinkedAccounts(
    this._instance,
    this._then,
  );

  final Query$LinkedAccounts _instance;

  final TRes Function(Query$LinkedAccounts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? userSlotsByAuth = _undefined}) =>
      _then(Query$LinkedAccounts(
          userSlotsByAuth:
              userSlotsByAuth == _undefined || userSlotsByAuth == null
                  ? _instance.userSlotsByAuth
                  : (userSlotsByAuth as Query$LinkedAccounts$userSlotsByAuth)));

  CopyWith$Query$LinkedAccounts$userSlotsByAuth<TRes> get userSlotsByAuth {
    final local$userSlotsByAuth = _instance.userSlotsByAuth;
    return CopyWith$Query$LinkedAccounts$userSlotsByAuth(
        local$userSlotsByAuth, (e) => call(userSlotsByAuth: e));
  }
}

class _CopyWithStubImpl$Query$LinkedAccounts<TRes>
    implements CopyWith$Query$LinkedAccounts<TRes> {
  _CopyWithStubImpl$Query$LinkedAccounts(this._res);

  TRes _res;

  call({Query$LinkedAccounts$userSlotsByAuth? userSlotsByAuth}) => _res;

  CopyWith$Query$LinkedAccounts$userSlotsByAuth<TRes> get userSlotsByAuth =>
      CopyWith$Query$LinkedAccounts$userSlotsByAuth.stub(_res);
}

const documentNodeQueryLinkedAccounts = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'LinkedAccounts'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'params')),
        type: NamedTypeNode(
          name: NameNode(value: 'UserSlotsByAuthFilters'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'userSlotsByAuth'),
        alias: NameNode(value: 'userSlotsByAuth'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'params'),
            value: VariableNode(name: NameNode(value: 'params')),
          )
        ],
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
            name: NameNode(value: 'slots'),
            alias: NameNode(value: 'slots'),
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
                name: NameNode(value: 'description'),
                alias: NameNode(value: 'description'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'email'),
                alias: NameNode(value: 'email'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'countryIsoCode'),
                alias: NameNode(value: 'countryIsoCode'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'countryId'),
                alias: NameNode(value: 'countryId'),
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
              FieldNode(
                name: NameNode(value: 'gender'),
                alias: NameNode(value: 'gender'),
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
Query$LinkedAccounts _parserFn$Query$LinkedAccounts(
        Map<String, dynamic> data) =>
    Query$LinkedAccounts.fromJson(data);
typedef OnQueryComplete$Query$LinkedAccounts = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$LinkedAccounts?,
);

class Options$Query$LinkedAccounts
    extends graphql.QueryOptions<Query$LinkedAccounts> {
  Options$Query$LinkedAccounts({
    String? operationName,
    Variables$Query$LinkedAccounts? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$LinkedAccounts? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$LinkedAccounts? onComplete,
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
                    data == null ? null : _parserFn$Query$LinkedAccounts(data),
                  ),
          onError: onError,
          document: documentNodeQueryLinkedAccounts,
          parserFn: _parserFn$Query$LinkedAccounts,
        );

  final OnQueryComplete$Query$LinkedAccounts? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$LinkedAccounts
    extends graphql.WatchQueryOptions<Query$LinkedAccounts> {
  WatchOptions$Query$LinkedAccounts({
    String? operationName,
    Variables$Query$LinkedAccounts? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$LinkedAccounts? typedOptimisticResult,
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
          document: documentNodeQueryLinkedAccounts,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$LinkedAccounts,
        );
}

class FetchMoreOptions$Query$LinkedAccounts extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$LinkedAccounts({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$LinkedAccounts? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryLinkedAccounts,
        );
}

extension ClientExtension$Query$LinkedAccounts on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$LinkedAccounts>> query$LinkedAccounts(
          [Options$Query$LinkedAccounts? options]) async =>
      await this.query(options ?? Options$Query$LinkedAccounts());
  graphql.ObservableQuery<Query$LinkedAccounts> watchQuery$LinkedAccounts(
          [WatchOptions$Query$LinkedAccounts? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$LinkedAccounts());
  void writeQuery$LinkedAccounts({
    required Query$LinkedAccounts data,
    Variables$Query$LinkedAccounts? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryLinkedAccounts),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$LinkedAccounts? readQuery$LinkedAccounts({
    Variables$Query$LinkedAccounts? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryLinkedAccounts),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$LinkedAccounts.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$LinkedAccounts> useQuery$LinkedAccounts(
        [Options$Query$LinkedAccounts? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$LinkedAccounts());
graphql.ObservableQuery<Query$LinkedAccounts> useWatchQuery$LinkedAccounts(
        [WatchOptions$Query$LinkedAccounts? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$LinkedAccounts());

class Query$LinkedAccounts$Widget
    extends graphql_flutter.Query<Query$LinkedAccounts> {
  Query$LinkedAccounts$Widget({
    widgets.Key? key,
    Options$Query$LinkedAccounts? options,
    required graphql_flutter.QueryBuilder<Query$LinkedAccounts> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$LinkedAccounts(),
          builder: builder,
        );
}

class Query$LinkedAccounts$userSlotsByAuth {
  Query$LinkedAccounts$userSlotsByAuth({
    required this.found,
    this.slots,
  });

  factory Query$LinkedAccounts$userSlotsByAuth.fromJson(
      Map<String, dynamic> json) {
    final l$found = json['found'];
    final l$slots = json['slots'];
    return Query$LinkedAccounts$userSlotsByAuth(
      found: (l$found as bool),
      slots: (l$slots as List<dynamic>?)
          ?.map((e) => Query$LinkedAccounts$userSlotsByAuth$slots.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
    );
  }

  final bool found;

  final List<Query$LinkedAccounts$userSlotsByAuth$slots>? slots;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$found = found;
    _resultData['found'] = l$found;
    final l$slots = slots;
    _resultData['slots'] = l$slots?.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$found = found;
    final l$slots = slots;
    return Object.hashAll([
      l$found,
      l$slots == null ? null : Object.hashAll(l$slots.map((v) => v)),
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$LinkedAccounts$userSlotsByAuth) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$found = found;
    final lOther$found = other.found;
    if (l$found != lOther$found) {
      return false;
    }
    final l$slots = slots;
    final lOther$slots = other.slots;
    if (l$slots != null && lOther$slots != null) {
      if (l$slots.length != lOther$slots.length) {
        return false;
      }
      for (int i = 0; i < l$slots.length; i++) {
        final l$slots$entry = l$slots[i];
        final lOther$slots$entry = lOther$slots[i];
        if (l$slots$entry != lOther$slots$entry) {
          return false;
        }
      }
    } else if (l$slots != lOther$slots) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$LinkedAccounts$userSlotsByAuth
    on Query$LinkedAccounts$userSlotsByAuth {
  CopyWith$Query$LinkedAccounts$userSlotsByAuth<
          Query$LinkedAccounts$userSlotsByAuth>
      get copyWith => CopyWith$Query$LinkedAccounts$userSlotsByAuth(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$LinkedAccounts$userSlotsByAuth<TRes> {
  factory CopyWith$Query$LinkedAccounts$userSlotsByAuth(
    Query$LinkedAccounts$userSlotsByAuth instance,
    TRes Function(Query$LinkedAccounts$userSlotsByAuth) then,
  ) = _CopyWithImpl$Query$LinkedAccounts$userSlotsByAuth;

  factory CopyWith$Query$LinkedAccounts$userSlotsByAuth.stub(TRes res) =
      _CopyWithStubImpl$Query$LinkedAccounts$userSlotsByAuth;

  TRes call({
    bool? found,
    List<Query$LinkedAccounts$userSlotsByAuth$slots>? slots,
  });
  TRes slots(
      Iterable<Query$LinkedAccounts$userSlotsByAuth$slots>? Function(
              Iterable<
                  CopyWith$Query$LinkedAccounts$userSlotsByAuth$slots<
                      Query$LinkedAccounts$userSlotsByAuth$slots>>?)
          _fn);
}

class _CopyWithImpl$Query$LinkedAccounts$userSlotsByAuth<TRes>
    implements CopyWith$Query$LinkedAccounts$userSlotsByAuth<TRes> {
  _CopyWithImpl$Query$LinkedAccounts$userSlotsByAuth(
    this._instance,
    this._then,
  );

  final Query$LinkedAccounts$userSlotsByAuth _instance;

  final TRes Function(Query$LinkedAccounts$userSlotsByAuth) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? found = _undefined,
    Object? slots = _undefined,
  }) =>
      _then(Query$LinkedAccounts$userSlotsByAuth(
        found: found == _undefined || found == null
            ? _instance.found
            : (found as bool),
        slots: slots == _undefined
            ? _instance.slots
            : (slots as List<Query$LinkedAccounts$userSlotsByAuth$slots>?),
      ));

  TRes slots(
          Iterable<Query$LinkedAccounts$userSlotsByAuth$slots>? Function(
                  Iterable<
                      CopyWith$Query$LinkedAccounts$userSlotsByAuth$slots<
                          Query$LinkedAccounts$userSlotsByAuth$slots>>?)
              _fn) =>
      call(
          slots: _fn(_instance.slots
              ?.map((e) => CopyWith$Query$LinkedAccounts$userSlotsByAuth$slots(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Query$LinkedAccounts$userSlotsByAuth<TRes>
    implements CopyWith$Query$LinkedAccounts$userSlotsByAuth<TRes> {
  _CopyWithStubImpl$Query$LinkedAccounts$userSlotsByAuth(this._res);

  TRes _res;

  call({
    bool? found,
    List<Query$LinkedAccounts$userSlotsByAuth$slots>? slots,
  }) =>
      _res;

  slots(_fn) => _res;
}

class Query$LinkedAccounts$userSlotsByAuth$slots {
  Query$LinkedAccounts$userSlotsByAuth$slots({
    required this.id,
    required this.firstName,
    required this.lastName,
    this.description,
    this.email,
    this.countryIsoCode,
    this.countryId,
    this.photo,
    this.dob,
    this.gender,
  });

  factory Query$LinkedAccounts$userSlotsByAuth$slots.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$description = json['description'];
    final l$email = json['email'];
    final l$countryIsoCode = json['countryIsoCode'];
    final l$countryId = json['countryId'];
    final l$photo = json['photo'];
    final l$dob = json['dob'];
    final l$gender = json['gender'];
    return Query$LinkedAccounts$userSlotsByAuth$slots(
      id: (l$id as String),
      firstName: (l$firstName as String),
      lastName: (l$lastName as String),
      description: (l$description as String?),
      email: (l$email as String?),
      countryIsoCode: (l$countryIsoCode as String?),
      countryId: (l$countryId as String?),
      photo: (l$photo as String?),
      dob: l$dob == null ? null : dateFromJson(l$dob),
      gender: l$gender == null
          ? null
          : fromJson$Enum$CustomerGenderType((l$gender as String)),
    );
  }

  final String id;

  final String firstName;

  final String lastName;

  final String? description;

  final String? email;

  final String? countryIsoCode;

  final String? countryId;

  final String? photo;

  final Date? dob;

  final Enum$CustomerGenderType? gender;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$firstName = firstName;
    _resultData['firstName'] = l$firstName;
    final l$lastName = lastName;
    _resultData['lastName'] = l$lastName;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$email = email;
    _resultData['email'] = l$email;
    final l$countryIsoCode = countryIsoCode;
    _resultData['countryIsoCode'] = l$countryIsoCode;
    final l$countryId = countryId;
    _resultData['countryId'] = l$countryId;
    final l$photo = photo;
    _resultData['photo'] = l$photo;
    final l$dob = dob;
    _resultData['dob'] = l$dob == null ? null : dateToJson(l$dob);
    final l$gender = gender;
    _resultData['gender'] =
        l$gender == null ? null : toJson$Enum$CustomerGenderType(l$gender);
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$description = description;
    final l$email = email;
    final l$countryIsoCode = countryIsoCode;
    final l$countryId = countryId;
    final l$photo = photo;
    final l$dob = dob;
    final l$gender = gender;
    return Object.hashAll([
      l$id,
      l$firstName,
      l$lastName,
      l$description,
      l$email,
      l$countryIsoCode,
      l$countryId,
      l$photo,
      l$dob,
      l$gender,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$LinkedAccounts$userSlotsByAuth$slots) ||
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
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$countryIsoCode = countryIsoCode;
    final lOther$countryIsoCode = other.countryIsoCode;
    if (l$countryIsoCode != lOther$countryIsoCode) {
      return false;
    }
    final l$countryId = countryId;
    final lOther$countryId = other.countryId;
    if (l$countryId != lOther$countryId) {
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
    final l$gender = gender;
    final lOther$gender = other.gender;
    if (l$gender != lOther$gender) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$LinkedAccounts$userSlotsByAuth$slots
    on Query$LinkedAccounts$userSlotsByAuth$slots {
  CopyWith$Query$LinkedAccounts$userSlotsByAuth$slots<
          Query$LinkedAccounts$userSlotsByAuth$slots>
      get copyWith => CopyWith$Query$LinkedAccounts$userSlotsByAuth$slots(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$LinkedAccounts$userSlotsByAuth$slots<TRes> {
  factory CopyWith$Query$LinkedAccounts$userSlotsByAuth$slots(
    Query$LinkedAccounts$userSlotsByAuth$slots instance,
    TRes Function(Query$LinkedAccounts$userSlotsByAuth$slots) then,
  ) = _CopyWithImpl$Query$LinkedAccounts$userSlotsByAuth$slots;

  factory CopyWith$Query$LinkedAccounts$userSlotsByAuth$slots.stub(TRes res) =
      _CopyWithStubImpl$Query$LinkedAccounts$userSlotsByAuth$slots;

  TRes call({
    String? id,
    String? firstName,
    String? lastName,
    String? description,
    String? email,
    String? countryIsoCode,
    String? countryId,
    String? photo,
    Date? dob,
    Enum$CustomerGenderType? gender,
  });
}

class _CopyWithImpl$Query$LinkedAccounts$userSlotsByAuth$slots<TRes>
    implements CopyWith$Query$LinkedAccounts$userSlotsByAuth$slots<TRes> {
  _CopyWithImpl$Query$LinkedAccounts$userSlotsByAuth$slots(
    this._instance,
    this._then,
  );

  final Query$LinkedAccounts$userSlotsByAuth$slots _instance;

  final TRes Function(Query$LinkedAccounts$userSlotsByAuth$slots) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? description = _undefined,
    Object? email = _undefined,
    Object? countryIsoCode = _undefined,
    Object? countryId = _undefined,
    Object? photo = _undefined,
    Object? dob = _undefined,
    Object? gender = _undefined,
  }) =>
      _then(Query$LinkedAccounts$userSlotsByAuth$slots(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        firstName: firstName == _undefined || firstName == null
            ? _instance.firstName
            : (firstName as String),
        lastName: lastName == _undefined || lastName == null
            ? _instance.lastName
            : (lastName as String),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        email: email == _undefined ? _instance.email : (email as String?),
        countryIsoCode: countryIsoCode == _undefined
            ? _instance.countryIsoCode
            : (countryIsoCode as String?),
        countryId: countryId == _undefined
            ? _instance.countryId
            : (countryId as String?),
        photo: photo == _undefined ? _instance.photo : (photo as String?),
        dob: dob == _undefined ? _instance.dob : (dob as Date?),
        gender: gender == _undefined
            ? _instance.gender
            : (gender as Enum$CustomerGenderType?),
      ));
}

class _CopyWithStubImpl$Query$LinkedAccounts$userSlotsByAuth$slots<TRes>
    implements CopyWith$Query$LinkedAccounts$userSlotsByAuth$slots<TRes> {
  _CopyWithStubImpl$Query$LinkedAccounts$userSlotsByAuth$slots(this._res);

  TRes _res;

  call({
    String? id,
    String? firstName,
    String? lastName,
    String? description,
    String? email,
    String? countryIsoCode,
    String? countryId,
    String? photo,
    Date? dob,
    Enum$CustomerGenderType? gender,
  }) =>
      _res;
}
