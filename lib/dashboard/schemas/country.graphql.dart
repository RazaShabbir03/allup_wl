import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$Country {
  factory Variables$Query$Country({required String id}) =>
      Variables$Query$Country._({
        r'id': id,
      });

  Variables$Query$Country._(this._$data);

  factory Variables$Query$Country.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Query$Country._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$Country<Variables$Query$Country> get copyWith =>
      CopyWith$Variables$Query$Country(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$Country) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith$Variables$Query$Country<TRes> {
  factory CopyWith$Variables$Query$Country(
    Variables$Query$Country instance,
    TRes Function(Variables$Query$Country) then,
  ) = _CopyWithImpl$Variables$Query$Country;

  factory CopyWith$Variables$Query$Country.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Country;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Query$Country<TRes>
    implements CopyWith$Variables$Query$Country<TRes> {
  _CopyWithImpl$Variables$Query$Country(
    this._instance,
    this._then,
  );

  final Variables$Query$Country _instance;

  final TRes Function(Variables$Query$Country) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(Variables$Query$Country._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$Country<TRes>
    implements CopyWith$Variables$Query$Country<TRes> {
  _CopyWithStubImpl$Variables$Query$Country(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query$Country {
  Query$Country({this.country});

  factory Query$Country.fromJson(Map<String, dynamic> json) {
    final l$country = json['country'];
    return Query$Country(
        country: l$country == null
            ? null
            : Query$Country$country.fromJson(
                (l$country as Map<String, dynamic>)));
  }

  final Query$Country$country? country;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$country = country;
    _resultData['country'] = l$country?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$country = country;
    return Object.hashAll([l$country]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Country) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$country = country;
    final lOther$country = other.country;
    if (l$country != lOther$country) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Country on Query$Country {
  CopyWith$Query$Country<Query$Country> get copyWith => CopyWith$Query$Country(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Country<TRes> {
  factory CopyWith$Query$Country(
    Query$Country instance,
    TRes Function(Query$Country) then,
  ) = _CopyWithImpl$Query$Country;

  factory CopyWith$Query$Country.stub(TRes res) =
      _CopyWithStubImpl$Query$Country;

  TRes call({Query$Country$country? country});
  CopyWith$Query$Country$country<TRes> get country;
}

class _CopyWithImpl$Query$Country<TRes>
    implements CopyWith$Query$Country<TRes> {
  _CopyWithImpl$Query$Country(
    this._instance,
    this._then,
  );

  final Query$Country _instance;

  final TRes Function(Query$Country) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? country = _undefined}) => _then(Query$Country(
      country: country == _undefined
          ? _instance.country
          : (country as Query$Country$country?)));

  CopyWith$Query$Country$country<TRes> get country {
    final local$country = _instance.country;
    return local$country == null
        ? CopyWith$Query$Country$country.stub(_then(_instance))
        : CopyWith$Query$Country$country(
            local$country, (e) => call(country: e));
  }
}

class _CopyWithStubImpl$Query$Country<TRes>
    implements CopyWith$Query$Country<TRes> {
  _CopyWithStubImpl$Query$Country(this._res);

  TRes _res;

  call({Query$Country$country? country}) => _res;

  CopyWith$Query$Country$country<TRes> get country =>
      CopyWith$Query$Country$country.stub(_res);
}

const documentNodeQueryCountry = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Country'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'country'),
        alias: NameNode(value: 'country'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
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
            name: NameNode(value: 'name'),
            alias: NameNode(value: 'name'),
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      )
    ]),
  ),
]);
Query$Country _parserFn$Query$Country(Map<String, dynamic> data) =>
    Query$Country.fromJson(data);
typedef OnQueryComplete$Query$Country = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Country?,
);

class Options$Query$Country extends graphql.QueryOptions<Query$Country> {
  Options$Query$Country({
    String? operationName,
    required Variables$Query$Country variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Country? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Country? onComplete,
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
                    data == null ? null : _parserFn$Query$Country(data),
                  ),
          onError: onError,
          document: documentNodeQueryCountry,
          parserFn: _parserFn$Query$Country,
        );

  final OnQueryComplete$Query$Country? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Country
    extends graphql.WatchQueryOptions<Query$Country> {
  WatchOptions$Query$Country({
    String? operationName,
    required Variables$Query$Country variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Country? typedOptimisticResult,
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
          document: documentNodeQueryCountry,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Country,
        );
}

class FetchMoreOptions$Query$Country extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Country({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$Country variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryCountry,
        );
}

extension ClientExtension$Query$Country on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Country>> query$Country(
          Options$Query$Country options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$Country> watchQuery$Country(
          WatchOptions$Query$Country options) =>
      this.watchQuery(options);
  void writeQuery$Country({
    required Query$Country data,
    required Variables$Query$Country variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryCountry),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Country? readQuery$Country({
    required Variables$Query$Country variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryCountry),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Country.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$Country> useQuery$Country(
        Options$Query$Country options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$Country> useWatchQuery$Country(
        WatchOptions$Query$Country options) =>
    graphql_flutter.useWatchQuery(options);

class Query$Country$Widget extends graphql_flutter.Query<Query$Country> {
  Query$Country$Widget({
    widgets.Key? key,
    required Options$Query$Country options,
    required graphql_flutter.QueryBuilder<Query$Country> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$Country$country {
  Query$Country$country({
    this.id,
    this.name,
  });

  factory Query$Country$country.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    return Query$Country$country(
      id: (l$id as String?),
      name: (l$name as String?),
    );
  }

  final String? id;

  final String? name;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    return Object.hashAll([
      l$id,
      l$name,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Country$country) || runtimeType != other.runtimeType) {
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
    return true;
  }
}

extension UtilityExtension$Query$Country$country on Query$Country$country {
  CopyWith$Query$Country$country<Query$Country$country> get copyWith =>
      CopyWith$Query$Country$country(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Country$country<TRes> {
  factory CopyWith$Query$Country$country(
    Query$Country$country instance,
    TRes Function(Query$Country$country) then,
  ) = _CopyWithImpl$Query$Country$country;

  factory CopyWith$Query$Country$country.stub(TRes res) =
      _CopyWithStubImpl$Query$Country$country;

  TRes call({
    String? id,
    String? name,
  });
}

class _CopyWithImpl$Query$Country$country<TRes>
    implements CopyWith$Query$Country$country<TRes> {
  _CopyWithImpl$Query$Country$country(
    this._instance,
    this._then,
  );

  final Query$Country$country _instance;

  final TRes Function(Query$Country$country) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
  }) =>
      _then(Query$Country$country(
        id: id == _undefined ? _instance.id : (id as String?),
        name: name == _undefined ? _instance.name : (name as String?),
      ));
}

class _CopyWithStubImpl$Query$Country$country<TRes>
    implements CopyWith$Query$Country$country<TRes> {
  _CopyWithStubImpl$Query$Country$country(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
  }) =>
      _res;
}
