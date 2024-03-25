import '../../schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$personalTrainersInGym {
  factory Variables$Query$personalTrainersInGym({
    Input$PaginatorInput? paging,
    required Input$InstructorsFilter params,
  }) =>
      Variables$Query$personalTrainersInGym._({
        if (paging != null) r'paging': paging,
        r'params': params,
      });

  Variables$Query$personalTrainersInGym._(this._$data);

  factory Variables$Query$personalTrainersInGym.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('paging')) {
      final l$paging = data['paging'];
      result$data['paging'] = l$paging == null
          ? null
          : Input$PaginatorInput.fromJson((l$paging as Map<String, dynamic>));
    }
    final l$params = data['params'];
    result$data['params'] =
        Input$InstructorsFilter.fromJson((l$params as Map<String, dynamic>));
    return Variables$Query$personalTrainersInGym._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$PaginatorInput? get paging =>
      (_$data['paging'] as Input$PaginatorInput?);

  Input$InstructorsFilter get params =>
      (_$data['params'] as Input$InstructorsFilter);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('paging')) {
      final l$paging = paging;
      result$data['paging'] = l$paging?.toJson();
    }
    final l$params = params;
    result$data['params'] = l$params.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$personalTrainersInGym<
          Variables$Query$personalTrainersInGym>
      get copyWith => CopyWith$Variables$Query$personalTrainersInGym(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$personalTrainersInGym) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$paging = paging;
    final lOther$paging = other.paging;
    if (_$data.containsKey('paging') != other._$data.containsKey('paging')) {
      return false;
    }
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
      _$data.containsKey('paging') ? l$paging : const {},
      l$params,
    ]);
  }
}

abstract class CopyWith$Variables$Query$personalTrainersInGym<TRes> {
  factory CopyWith$Variables$Query$personalTrainersInGym(
    Variables$Query$personalTrainersInGym instance,
    TRes Function(Variables$Query$personalTrainersInGym) then,
  ) = _CopyWithImpl$Variables$Query$personalTrainersInGym;

  factory CopyWith$Variables$Query$personalTrainersInGym.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$personalTrainersInGym;

  TRes call({
    Input$PaginatorInput? paging,
    Input$InstructorsFilter? params,
  });
}

class _CopyWithImpl$Variables$Query$personalTrainersInGym<TRes>
    implements CopyWith$Variables$Query$personalTrainersInGym<TRes> {
  _CopyWithImpl$Variables$Query$personalTrainersInGym(
    this._instance,
    this._then,
  );

  final Variables$Query$personalTrainersInGym _instance;

  final TRes Function(Variables$Query$personalTrainersInGym) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? paging = _undefined,
    Object? params = _undefined,
  }) =>
      _then(Variables$Query$personalTrainersInGym._({
        ..._instance._$data,
        if (paging != _undefined) 'paging': (paging as Input$PaginatorInput?),
        if (params != _undefined && params != null)
          'params': (params as Input$InstructorsFilter),
      }));
}

class _CopyWithStubImpl$Variables$Query$personalTrainersInGym<TRes>
    implements CopyWith$Variables$Query$personalTrainersInGym<TRes> {
  _CopyWithStubImpl$Variables$Query$personalTrainersInGym(this._res);

  TRes _res;

  call({
    Input$PaginatorInput? paging,
    Input$InstructorsFilter? params,
  }) =>
      _res;
}

class Query$personalTrainersInGym {
  Query$personalTrainersInGym({required this.instructors});

  factory Query$personalTrainersInGym.fromJson(Map<String, dynamic> json) {
    final l$instructors = json['instructors'];
    return Query$personalTrainersInGym(
        instructors: Query$personalTrainersInGym$instructors.fromJson(
            (l$instructors as Map<String, dynamic>)));
  }

  final Query$personalTrainersInGym$instructors instructors;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$instructors = instructors;
    _resultData['instructors'] = l$instructors.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$instructors = instructors;
    return Object.hashAll([l$instructors]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$personalTrainersInGym) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$instructors = instructors;
    final lOther$instructors = other.instructors;
    if (l$instructors != lOther$instructors) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$personalTrainersInGym
    on Query$personalTrainersInGym {
  CopyWith$Query$personalTrainersInGym<Query$personalTrainersInGym>
      get copyWith => CopyWith$Query$personalTrainersInGym(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$personalTrainersInGym<TRes> {
  factory CopyWith$Query$personalTrainersInGym(
    Query$personalTrainersInGym instance,
    TRes Function(Query$personalTrainersInGym) then,
  ) = _CopyWithImpl$Query$personalTrainersInGym;

  factory CopyWith$Query$personalTrainersInGym.stub(TRes res) =
      _CopyWithStubImpl$Query$personalTrainersInGym;

  TRes call({Query$personalTrainersInGym$instructors? instructors});
  CopyWith$Query$personalTrainersInGym$instructors<TRes> get instructors;
}

class _CopyWithImpl$Query$personalTrainersInGym<TRes>
    implements CopyWith$Query$personalTrainersInGym<TRes> {
  _CopyWithImpl$Query$personalTrainersInGym(
    this._instance,
    this._then,
  );

  final Query$personalTrainersInGym _instance;

  final TRes Function(Query$personalTrainersInGym) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? instructors = _undefined}) =>
      _then(Query$personalTrainersInGym(
          instructors: instructors == _undefined || instructors == null
              ? _instance.instructors
              : (instructors as Query$personalTrainersInGym$instructors)));

  CopyWith$Query$personalTrainersInGym$instructors<TRes> get instructors {
    final local$instructors = _instance.instructors;
    return CopyWith$Query$personalTrainersInGym$instructors(
        local$instructors, (e) => call(instructors: e));
  }
}

class _CopyWithStubImpl$Query$personalTrainersInGym<TRes>
    implements CopyWith$Query$personalTrainersInGym<TRes> {
  _CopyWithStubImpl$Query$personalTrainersInGym(this._res);

  TRes _res;

  call({Query$personalTrainersInGym$instructors? instructors}) => _res;

  CopyWith$Query$personalTrainersInGym$instructors<TRes> get instructors =>
      CopyWith$Query$personalTrainersInGym$instructors.stub(_res);
}

const documentNodeQuerypersonalTrainersInGym = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'personalTrainersInGym'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'paging')),
        type: NamedTypeNode(
          name: NameNode(value: 'PaginatorInput'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'params')),
        type: NamedTypeNode(
          name: NameNode(value: 'InstructorsFilter'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'instructors'),
        alias: NameNode(value: 'instructors'),
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
                name: NameNode(value: 'coverPhoto'),
                alias: NameNode(value: 'coverPhoto'),
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
                name: NameNode(value: 'photo'),
                alias: NameNode(value: 'photo'),
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
]);
Query$personalTrainersInGym _parserFn$Query$personalTrainersInGym(
        Map<String, dynamic> data) =>
    Query$personalTrainersInGym.fromJson(data);
typedef OnQueryComplete$Query$personalTrainersInGym = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$personalTrainersInGym?,
);

class Options$Query$personalTrainersInGym
    extends graphql.QueryOptions<Query$personalTrainersInGym> {
  Options$Query$personalTrainersInGym({
    String? operationName,
    required Variables$Query$personalTrainersInGym variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$personalTrainersInGym? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$personalTrainersInGym? onComplete,
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
                        : _parserFn$Query$personalTrainersInGym(data),
                  ),
          onError: onError,
          document: documentNodeQuerypersonalTrainersInGym,
          parserFn: _parserFn$Query$personalTrainersInGym,
        );

  final OnQueryComplete$Query$personalTrainersInGym? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$personalTrainersInGym
    extends graphql.WatchQueryOptions<Query$personalTrainersInGym> {
  WatchOptions$Query$personalTrainersInGym({
    String? operationName,
    required Variables$Query$personalTrainersInGym variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$personalTrainersInGym? typedOptimisticResult,
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
          document: documentNodeQuerypersonalTrainersInGym,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$personalTrainersInGym,
        );
}

class FetchMoreOptions$Query$personalTrainersInGym
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$personalTrainersInGym({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$personalTrainersInGym variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQuerypersonalTrainersInGym,
        );
}

extension ClientExtension$Query$personalTrainersInGym on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$personalTrainersInGym>>
      query$personalTrainersInGym(
              Options$Query$personalTrainersInGym options) async =>
          await this.query(options);
  graphql.ObservableQuery<Query$personalTrainersInGym>
      watchQuery$personalTrainersInGym(
              WatchOptions$Query$personalTrainersInGym options) =>
          this.watchQuery(options);
  void writeQuery$personalTrainersInGym({
    required Query$personalTrainersInGym data,
    required Variables$Query$personalTrainersInGym variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQuerypersonalTrainersInGym),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$personalTrainersInGym? readQuery$personalTrainersInGym({
    required Variables$Query$personalTrainersInGym variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQuerypersonalTrainersInGym),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$personalTrainersInGym.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$personalTrainersInGym>
    useQuery$personalTrainersInGym(
            Options$Query$personalTrainersInGym options) =>
        graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$personalTrainersInGym>
    useWatchQuery$personalTrainersInGym(
            WatchOptions$Query$personalTrainersInGym options) =>
        graphql_flutter.useWatchQuery(options);

class Query$personalTrainersInGym$Widget
    extends graphql_flutter.Query<Query$personalTrainersInGym> {
  Query$personalTrainersInGym$Widget({
    widgets.Key? key,
    required Options$Query$personalTrainersInGym options,
    required graphql_flutter.QueryBuilder<Query$personalTrainersInGym> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$personalTrainersInGym$instructors {
  Query$personalTrainersInGym$instructors({this.list});

  factory Query$personalTrainersInGym$instructors.fromJson(
      Map<String, dynamic> json) {
    final l$list = json['list'];
    return Query$personalTrainersInGym$instructors(
        list: (l$list as List<dynamic>?)
            ?.map((e) => Query$personalTrainersInGym$instructors$list.fromJson(
                (e as Map<String, dynamic>)))
            .toList());
  }

  final List<Query$personalTrainersInGym$instructors$list>? list;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$list = list;
    _resultData['list'] = l$list?.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$list = list;
    return Object.hashAll(
        [l$list == null ? null : Object.hashAll(l$list.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$personalTrainersInGym$instructors) ||
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
    return true;
  }
}

extension UtilityExtension$Query$personalTrainersInGym$instructors
    on Query$personalTrainersInGym$instructors {
  CopyWith$Query$personalTrainersInGym$instructors<
          Query$personalTrainersInGym$instructors>
      get copyWith => CopyWith$Query$personalTrainersInGym$instructors(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$personalTrainersInGym$instructors<TRes> {
  factory CopyWith$Query$personalTrainersInGym$instructors(
    Query$personalTrainersInGym$instructors instance,
    TRes Function(Query$personalTrainersInGym$instructors) then,
  ) = _CopyWithImpl$Query$personalTrainersInGym$instructors;

  factory CopyWith$Query$personalTrainersInGym$instructors.stub(TRes res) =
      _CopyWithStubImpl$Query$personalTrainersInGym$instructors;

  TRes call({List<Query$personalTrainersInGym$instructors$list>? list});
  TRes list(
      Iterable<Query$personalTrainersInGym$instructors$list>? Function(
              Iterable<
                  CopyWith$Query$personalTrainersInGym$instructors$list<
                      Query$personalTrainersInGym$instructors$list>>?)
          _fn);
}

class _CopyWithImpl$Query$personalTrainersInGym$instructors<TRes>
    implements CopyWith$Query$personalTrainersInGym$instructors<TRes> {
  _CopyWithImpl$Query$personalTrainersInGym$instructors(
    this._instance,
    this._then,
  );

  final Query$personalTrainersInGym$instructors _instance;

  final TRes Function(Query$personalTrainersInGym$instructors) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? list = _undefined}) =>
      _then(Query$personalTrainersInGym$instructors(
          list: list == _undefined
              ? _instance.list
              : (list as List<Query$personalTrainersInGym$instructors$list>?)));

  TRes list(
          Iterable<Query$personalTrainersInGym$instructors$list>? Function(
                  Iterable<
                      CopyWith$Query$personalTrainersInGym$instructors$list<
                          Query$personalTrainersInGym$instructors$list>>?)
              _fn) =>
      call(
          list: _fn(_instance.list?.map(
              (e) => CopyWith$Query$personalTrainersInGym$instructors$list(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Query$personalTrainersInGym$instructors<TRes>
    implements CopyWith$Query$personalTrainersInGym$instructors<TRes> {
  _CopyWithStubImpl$Query$personalTrainersInGym$instructors(this._res);

  TRes _res;

  call({List<Query$personalTrainersInGym$instructors$list>? list}) => _res;

  list(_fn) => _res;
}

class Query$personalTrainersInGym$instructors$list {
  Query$personalTrainersInGym$instructors$list({
    this.id,
    required this.firstName,
    this.lastName,
    this.coverPhoto,
    this.description,
    this.photo,
  });

  factory Query$personalTrainersInGym$instructors$list.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$coverPhoto = json['coverPhoto'];
    final l$description = json['description'];
    final l$photo = json['photo'];
    return Query$personalTrainersInGym$instructors$list(
      id: (l$id as String?),
      firstName: (l$firstName as String),
      lastName: (l$lastName as String?),
      coverPhoto: (l$coverPhoto as String?),
      description: (l$description as String?),
      photo: (l$photo as String?),
    );
  }

  final String? id;

  final String firstName;

  final String? lastName;

  final String? coverPhoto;

  final String? description;

  final String? photo;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$firstName = firstName;
    _resultData['firstName'] = l$firstName;
    final l$lastName = lastName;
    _resultData['lastName'] = l$lastName;
    final l$coverPhoto = coverPhoto;
    _resultData['coverPhoto'] = l$coverPhoto;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$photo = photo;
    _resultData['photo'] = l$photo;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$coverPhoto = coverPhoto;
    final l$description = description;
    final l$photo = photo;
    return Object.hashAll([
      l$id,
      l$firstName,
      l$lastName,
      l$coverPhoto,
      l$description,
      l$photo,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$personalTrainersInGym$instructors$list) ||
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
    final l$coverPhoto = coverPhoto;
    final lOther$coverPhoto = other.coverPhoto;
    if (l$coverPhoto != lOther$coverPhoto) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$photo = photo;
    final lOther$photo = other.photo;
    if (l$photo != lOther$photo) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$personalTrainersInGym$instructors$list
    on Query$personalTrainersInGym$instructors$list {
  CopyWith$Query$personalTrainersInGym$instructors$list<
          Query$personalTrainersInGym$instructors$list>
      get copyWith => CopyWith$Query$personalTrainersInGym$instructors$list(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$personalTrainersInGym$instructors$list<TRes> {
  factory CopyWith$Query$personalTrainersInGym$instructors$list(
    Query$personalTrainersInGym$instructors$list instance,
    TRes Function(Query$personalTrainersInGym$instructors$list) then,
  ) = _CopyWithImpl$Query$personalTrainersInGym$instructors$list;

  factory CopyWith$Query$personalTrainersInGym$instructors$list.stub(TRes res) =
      _CopyWithStubImpl$Query$personalTrainersInGym$instructors$list;

  TRes call({
    String? id,
    String? firstName,
    String? lastName,
    String? coverPhoto,
    String? description,
    String? photo,
  });
}

class _CopyWithImpl$Query$personalTrainersInGym$instructors$list<TRes>
    implements CopyWith$Query$personalTrainersInGym$instructors$list<TRes> {
  _CopyWithImpl$Query$personalTrainersInGym$instructors$list(
    this._instance,
    this._then,
  );

  final Query$personalTrainersInGym$instructors$list _instance;

  final TRes Function(Query$personalTrainersInGym$instructors$list) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? coverPhoto = _undefined,
    Object? description = _undefined,
    Object? photo = _undefined,
  }) =>
      _then(Query$personalTrainersInGym$instructors$list(
        id: id == _undefined ? _instance.id : (id as String?),
        firstName: firstName == _undefined || firstName == null
            ? _instance.firstName
            : (firstName as String),
        lastName:
            lastName == _undefined ? _instance.lastName : (lastName as String?),
        coverPhoto: coverPhoto == _undefined
            ? _instance.coverPhoto
            : (coverPhoto as String?),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        photo: photo == _undefined ? _instance.photo : (photo as String?),
      ));
}

class _CopyWithStubImpl$Query$personalTrainersInGym$instructors$list<TRes>
    implements CopyWith$Query$personalTrainersInGym$instructors$list<TRes> {
  _CopyWithStubImpl$Query$personalTrainersInGym$instructors$list(this._res);

  TRes _res;

  call({
    String? id,
    String? firstName,
    String? lastName,
    String? coverPhoto,
    String? description,
    String? photo,
  }) =>
      _res;
}
