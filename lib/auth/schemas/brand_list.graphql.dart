import '../../schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$BrandsList {
  factory Variables$Query$BrandsList({Input$BrandsFilter? params}) =>
      Variables$Query$BrandsList._({
        if (params != null) r'params': params,
      });

  Variables$Query$BrandsList._(this._$data);

  factory Variables$Query$BrandsList.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('params')) {
      final l$params = data['params'];
      result$data['params'] = l$params == null
          ? null
          : Input$BrandsFilter.fromJson((l$params as Map<String, dynamic>));
    }
    return Variables$Query$BrandsList._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$BrandsFilter? get params => (_$data['params'] as Input$BrandsFilter?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('params')) {
      final l$params = params;
      result$data['params'] = l$params?.toJson();
    }
    return result$data;
  }

  CopyWith$Variables$Query$BrandsList<Variables$Query$BrandsList>
      get copyWith => CopyWith$Variables$Query$BrandsList(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$BrandsList) ||
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

abstract class CopyWith$Variables$Query$BrandsList<TRes> {
  factory CopyWith$Variables$Query$BrandsList(
    Variables$Query$BrandsList instance,
    TRes Function(Variables$Query$BrandsList) then,
  ) = _CopyWithImpl$Variables$Query$BrandsList;

  factory CopyWith$Variables$Query$BrandsList.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$BrandsList;

  TRes call({Input$BrandsFilter? params});
}

class _CopyWithImpl$Variables$Query$BrandsList<TRes>
    implements CopyWith$Variables$Query$BrandsList<TRes> {
  _CopyWithImpl$Variables$Query$BrandsList(
    this._instance,
    this._then,
  );

  final Variables$Query$BrandsList _instance;

  final TRes Function(Variables$Query$BrandsList) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? params = _undefined}) =>
      _then(Variables$Query$BrandsList._({
        ..._instance._$data,
        if (params != _undefined) 'params': (params as Input$BrandsFilter?),
      }));
}

class _CopyWithStubImpl$Variables$Query$BrandsList<TRes>
    implements CopyWith$Variables$Query$BrandsList<TRes> {
  _CopyWithStubImpl$Variables$Query$BrandsList(this._res);

  TRes _res;

  call({Input$BrandsFilter? params}) => _res;
}

class Query$BrandsList {
  Query$BrandsList({required this.brandList});

  factory Query$BrandsList.fromJson(Map<String, dynamic> json) {
    final l$brandList = json['brandList'];
    return Query$BrandsList(
        brandList: Query$BrandsList$brandList.fromJson(
            (l$brandList as Map<String, dynamic>)));
  }

  final Query$BrandsList$brandList brandList;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$brandList = brandList;
    _resultData['brandList'] = l$brandList.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$brandList = brandList;
    return Object.hashAll([l$brandList]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$BrandsList) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$brandList = brandList;
    final lOther$brandList = other.brandList;
    if (l$brandList != lOther$brandList) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$BrandsList on Query$BrandsList {
  CopyWith$Query$BrandsList<Query$BrandsList> get copyWith =>
      CopyWith$Query$BrandsList(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$BrandsList<TRes> {
  factory CopyWith$Query$BrandsList(
    Query$BrandsList instance,
    TRes Function(Query$BrandsList) then,
  ) = _CopyWithImpl$Query$BrandsList;

  factory CopyWith$Query$BrandsList.stub(TRes res) =
      _CopyWithStubImpl$Query$BrandsList;

  TRes call({Query$BrandsList$brandList? brandList});
  CopyWith$Query$BrandsList$brandList<TRes> get brandList;
}

class _CopyWithImpl$Query$BrandsList<TRes>
    implements CopyWith$Query$BrandsList<TRes> {
  _CopyWithImpl$Query$BrandsList(
    this._instance,
    this._then,
  );

  final Query$BrandsList _instance;

  final TRes Function(Query$BrandsList) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? brandList = _undefined}) => _then(Query$BrandsList(
      brandList: brandList == _undefined || brandList == null
          ? _instance.brandList
          : (brandList as Query$BrandsList$brandList)));

  CopyWith$Query$BrandsList$brandList<TRes> get brandList {
    final local$brandList = _instance.brandList;
    return CopyWith$Query$BrandsList$brandList(
        local$brandList, (e) => call(brandList: e));
  }
}

class _CopyWithStubImpl$Query$BrandsList<TRes>
    implements CopyWith$Query$BrandsList<TRes> {
  _CopyWithStubImpl$Query$BrandsList(this._res);

  TRes _res;

  call({Query$BrandsList$brandList? brandList}) => _res;

  CopyWith$Query$BrandsList$brandList<TRes> get brandList =>
      CopyWith$Query$BrandsList$brandList.stub(_res);
}

const documentNodeQueryBrandsList = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'BrandsList'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'params')),
        type: NamedTypeNode(
          name: NameNode(value: 'BrandsFilter'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'brandsList'),
        alias: NameNode(value: 'brandList'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'params'),
            value: VariableNode(name: NameNode(value: 'params')),
          )
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
                name: NameNode(value: 'name'),
                alias: NameNode(value: 'name'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'id'),
                alias: NameNode(value: 'id'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'country'),
                alias: NameNode(value: 'country'),
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'id'),
                    alias: NameNode(value: 'id'),
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  )
                ]),
              ),
              FieldNode(
                name: NameNode(value: 'gyms'),
                alias: NameNode(value: 'gyms'),
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
                ]),
              ),
            ]),
          )
        ]),
      )
    ]),
  ),
]);
Query$BrandsList _parserFn$Query$BrandsList(Map<String, dynamic> data) =>
    Query$BrandsList.fromJson(data);
typedef OnQueryComplete$Query$BrandsList = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$BrandsList?,
);

class Options$Query$BrandsList extends graphql.QueryOptions<Query$BrandsList> {
  Options$Query$BrandsList({
    String? operationName,
    Variables$Query$BrandsList? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$BrandsList? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$BrandsList? onComplete,
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
                    data == null ? null : _parserFn$Query$BrandsList(data),
                  ),
          onError: onError,
          document: documentNodeQueryBrandsList,
          parserFn: _parserFn$Query$BrandsList,
        );

  final OnQueryComplete$Query$BrandsList? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$BrandsList
    extends graphql.WatchQueryOptions<Query$BrandsList> {
  WatchOptions$Query$BrandsList({
    String? operationName,
    Variables$Query$BrandsList? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$BrandsList? typedOptimisticResult,
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
          document: documentNodeQueryBrandsList,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$BrandsList,
        );
}

class FetchMoreOptions$Query$BrandsList extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$BrandsList({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$BrandsList? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryBrandsList,
        );
}

extension ClientExtension$Query$BrandsList on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$BrandsList>> query$BrandsList(
          [Options$Query$BrandsList? options]) async =>
      await this.query(options ?? Options$Query$BrandsList());
  graphql.ObservableQuery<Query$BrandsList> watchQuery$BrandsList(
          [WatchOptions$Query$BrandsList? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$BrandsList());
  void writeQuery$BrandsList({
    required Query$BrandsList data,
    Variables$Query$BrandsList? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryBrandsList),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$BrandsList? readQuery$BrandsList({
    Variables$Query$BrandsList? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryBrandsList),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$BrandsList.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$BrandsList> useQuery$BrandsList(
        [Options$Query$BrandsList? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$BrandsList());
graphql.ObservableQuery<Query$BrandsList> useWatchQuery$BrandsList(
        [WatchOptions$Query$BrandsList? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$BrandsList());

class Query$BrandsList$Widget extends graphql_flutter.Query<Query$BrandsList> {
  Query$BrandsList$Widget({
    widgets.Key? key,
    Options$Query$BrandsList? options,
    required graphql_flutter.QueryBuilder<Query$BrandsList> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$BrandsList(),
          builder: builder,
        );
}

class Query$BrandsList$brandList {
  Query$BrandsList$brandList({this.list});

  factory Query$BrandsList$brandList.fromJson(Map<String, dynamic> json) {
    final l$list = json['list'];
    return Query$BrandsList$brandList(
        list: (l$list as List<dynamic>?)
            ?.map((e) => e == null
                ? null
                : Query$BrandsList$brandList$list.fromJson(
                    (e as Map<String, dynamic>)))
            .toList());
  }

  final List<Query$BrandsList$brandList$list?>? list;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$list = list;
    _resultData['list'] = l$list?.map((e) => e?.toJson()).toList();
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
    if (!(other is Query$BrandsList$brandList) ||
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

extension UtilityExtension$Query$BrandsList$brandList
    on Query$BrandsList$brandList {
  CopyWith$Query$BrandsList$brandList<Query$BrandsList$brandList>
      get copyWith => CopyWith$Query$BrandsList$brandList(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$BrandsList$brandList<TRes> {
  factory CopyWith$Query$BrandsList$brandList(
    Query$BrandsList$brandList instance,
    TRes Function(Query$BrandsList$brandList) then,
  ) = _CopyWithImpl$Query$BrandsList$brandList;

  factory CopyWith$Query$BrandsList$brandList.stub(TRes res) =
      _CopyWithStubImpl$Query$BrandsList$brandList;

  TRes call({List<Query$BrandsList$brandList$list?>? list});
  TRes list(
      Iterable<Query$BrandsList$brandList$list?>? Function(
              Iterable<
                  CopyWith$Query$BrandsList$brandList$list<
                      Query$BrandsList$brandList$list>?>?)
          _fn);
}

class _CopyWithImpl$Query$BrandsList$brandList<TRes>
    implements CopyWith$Query$BrandsList$brandList<TRes> {
  _CopyWithImpl$Query$BrandsList$brandList(
    this._instance,
    this._then,
  );

  final Query$BrandsList$brandList _instance;

  final TRes Function(Query$BrandsList$brandList) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? list = _undefined}) => _then(Query$BrandsList$brandList(
      list: list == _undefined
          ? _instance.list
          : (list as List<Query$BrandsList$brandList$list?>?)));

  TRes list(
          Iterable<Query$BrandsList$brandList$list?>? Function(
                  Iterable<
                      CopyWith$Query$BrandsList$brandList$list<
                          Query$BrandsList$brandList$list>?>?)
              _fn) =>
      call(
          list: _fn(_instance.list?.map((e) => e == null
              ? null
              : CopyWith$Query$BrandsList$brandList$list(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$BrandsList$brandList<TRes>
    implements CopyWith$Query$BrandsList$brandList<TRes> {
  _CopyWithStubImpl$Query$BrandsList$brandList(this._res);

  TRes _res;

  call({List<Query$BrandsList$brandList$list?>? list}) => _res;

  list(_fn) => _res;
}

class Query$BrandsList$brandList$list {
  Query$BrandsList$brandList$list({
    required this.name,
    required this.id,
    required this.country,
    this.gyms,
  });

  factory Query$BrandsList$brandList$list.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$id = json['id'];
    final l$country = json['country'];
    final l$gyms = json['gyms'];
    return Query$BrandsList$brandList$list(
      name: (l$name as String),
      id: (l$id as String),
      country: Query$BrandsList$brandList$list$country.fromJson(
          (l$country as Map<String, dynamic>)),
      gyms: (l$gyms as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$BrandsList$brandList$list$gyms.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
    );
  }

  final String name;

  final String id;

  final Query$BrandsList$brandList$list$country country;

  final List<Query$BrandsList$brandList$list$gyms?>? gyms;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$country = country;
    _resultData['country'] = l$country.toJson();
    final l$gyms = gyms;
    _resultData['gyms'] = l$gyms?.map((e) => e?.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$id = id;
    final l$country = country;
    final l$gyms = gyms;
    return Object.hashAll([
      l$name,
      l$id,
      l$country,
      l$gyms == null ? null : Object.hashAll(l$gyms.map((v) => v)),
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$BrandsList$brandList$list) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$country = country;
    final lOther$country = other.country;
    if (l$country != lOther$country) {
      return false;
    }
    final l$gyms = gyms;
    final lOther$gyms = other.gyms;
    if (l$gyms != null && lOther$gyms != null) {
      if (l$gyms.length != lOther$gyms.length) {
        return false;
      }
      for (int i = 0; i < l$gyms.length; i++) {
        final l$gyms$entry = l$gyms[i];
        final lOther$gyms$entry = lOther$gyms[i];
        if (l$gyms$entry != lOther$gyms$entry) {
          return false;
        }
      }
    } else if (l$gyms != lOther$gyms) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$BrandsList$brandList$list
    on Query$BrandsList$brandList$list {
  CopyWith$Query$BrandsList$brandList$list<Query$BrandsList$brandList$list>
      get copyWith => CopyWith$Query$BrandsList$brandList$list(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$BrandsList$brandList$list<TRes> {
  factory CopyWith$Query$BrandsList$brandList$list(
    Query$BrandsList$brandList$list instance,
    TRes Function(Query$BrandsList$brandList$list) then,
  ) = _CopyWithImpl$Query$BrandsList$brandList$list;

  factory CopyWith$Query$BrandsList$brandList$list.stub(TRes res) =
      _CopyWithStubImpl$Query$BrandsList$brandList$list;

  TRes call({
    String? name,
    String? id,
    Query$BrandsList$brandList$list$country? country,
    List<Query$BrandsList$brandList$list$gyms?>? gyms,
  });
  CopyWith$Query$BrandsList$brandList$list$country<TRes> get country;
  TRes gyms(
      Iterable<Query$BrandsList$brandList$list$gyms?>? Function(
              Iterable<
                  CopyWith$Query$BrandsList$brandList$list$gyms<
                      Query$BrandsList$brandList$list$gyms>?>?)
          _fn);
}

class _CopyWithImpl$Query$BrandsList$brandList$list<TRes>
    implements CopyWith$Query$BrandsList$brandList$list<TRes> {
  _CopyWithImpl$Query$BrandsList$brandList$list(
    this._instance,
    this._then,
  );

  final Query$BrandsList$brandList$list _instance;

  final TRes Function(Query$BrandsList$brandList$list) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? id = _undefined,
    Object? country = _undefined,
    Object? gyms = _undefined,
  }) =>
      _then(Query$BrandsList$brandList$list(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        id: id == _undefined || id == null ? _instance.id : (id as String),
        country: country == _undefined || country == null
            ? _instance.country
            : (country as Query$BrandsList$brandList$list$country),
        gyms: gyms == _undefined
            ? _instance.gyms
            : (gyms as List<Query$BrandsList$brandList$list$gyms?>?),
      ));

  CopyWith$Query$BrandsList$brandList$list$country<TRes> get country {
    final local$country = _instance.country;
    return CopyWith$Query$BrandsList$brandList$list$country(
        local$country, (e) => call(country: e));
  }

  TRes gyms(
          Iterable<Query$BrandsList$brandList$list$gyms?>? Function(
                  Iterable<
                      CopyWith$Query$BrandsList$brandList$list$gyms<
                          Query$BrandsList$brandList$list$gyms>?>?)
              _fn) =>
      call(
          gyms: _fn(_instance.gyms?.map((e) => e == null
              ? null
              : CopyWith$Query$BrandsList$brandList$list$gyms(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$BrandsList$brandList$list<TRes>
    implements CopyWith$Query$BrandsList$brandList$list<TRes> {
  _CopyWithStubImpl$Query$BrandsList$brandList$list(this._res);

  TRes _res;

  call({
    String? name,
    String? id,
    Query$BrandsList$brandList$list$country? country,
    List<Query$BrandsList$brandList$list$gyms?>? gyms,
  }) =>
      _res;

  CopyWith$Query$BrandsList$brandList$list$country<TRes> get country =>
      CopyWith$Query$BrandsList$brandList$list$country.stub(_res);

  gyms(_fn) => _res;
}

class Query$BrandsList$brandList$list$country {
  Query$BrandsList$brandList$list$country({required this.id});

  factory Query$BrandsList$brandList$list$country.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    return Query$BrandsList$brandList$list$country(id: (l$id as String));
  }

  final String id;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$BrandsList$brandList$list$country) ||
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
}

extension UtilityExtension$Query$BrandsList$brandList$list$country
    on Query$BrandsList$brandList$list$country {
  CopyWith$Query$BrandsList$brandList$list$country<
          Query$BrandsList$brandList$list$country>
      get copyWith => CopyWith$Query$BrandsList$brandList$list$country(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$BrandsList$brandList$list$country<TRes> {
  factory CopyWith$Query$BrandsList$brandList$list$country(
    Query$BrandsList$brandList$list$country instance,
    TRes Function(Query$BrandsList$brandList$list$country) then,
  ) = _CopyWithImpl$Query$BrandsList$brandList$list$country;

  factory CopyWith$Query$BrandsList$brandList$list$country.stub(TRes res) =
      _CopyWithStubImpl$Query$BrandsList$brandList$list$country;

  TRes call({String? id});
}

class _CopyWithImpl$Query$BrandsList$brandList$list$country<TRes>
    implements CopyWith$Query$BrandsList$brandList$list$country<TRes> {
  _CopyWithImpl$Query$BrandsList$brandList$list$country(
    this._instance,
    this._then,
  );

  final Query$BrandsList$brandList$list$country _instance;

  final TRes Function(Query$BrandsList$brandList$list$country) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Query$BrandsList$brandList$list$country(
          id: id == _undefined || id == null ? _instance.id : (id as String)));
}

class _CopyWithStubImpl$Query$BrandsList$brandList$list$country<TRes>
    implements CopyWith$Query$BrandsList$brandList$list$country<TRes> {
  _CopyWithStubImpl$Query$BrandsList$brandList$list$country(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query$BrandsList$brandList$list$gyms {
  Query$BrandsList$brandList$list$gyms({
    required this.id,
    required this.name,
  });

  factory Query$BrandsList$brandList$list$gyms.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    return Query$BrandsList$brandList$list$gyms(
      id: (l$id as String),
      name: (l$name as String),
    );
  }

  final String id;

  final String name;

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
    if (!(other is Query$BrandsList$brandList$list$gyms) ||
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
    return true;
  }
}

extension UtilityExtension$Query$BrandsList$brandList$list$gyms
    on Query$BrandsList$brandList$list$gyms {
  CopyWith$Query$BrandsList$brandList$list$gyms<
          Query$BrandsList$brandList$list$gyms>
      get copyWith => CopyWith$Query$BrandsList$brandList$list$gyms(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$BrandsList$brandList$list$gyms<TRes> {
  factory CopyWith$Query$BrandsList$brandList$list$gyms(
    Query$BrandsList$brandList$list$gyms instance,
    TRes Function(Query$BrandsList$brandList$list$gyms) then,
  ) = _CopyWithImpl$Query$BrandsList$brandList$list$gyms;

  factory CopyWith$Query$BrandsList$brandList$list$gyms.stub(TRes res) =
      _CopyWithStubImpl$Query$BrandsList$brandList$list$gyms;

  TRes call({
    String? id,
    String? name,
  });
}

class _CopyWithImpl$Query$BrandsList$brandList$list$gyms<TRes>
    implements CopyWith$Query$BrandsList$brandList$list$gyms<TRes> {
  _CopyWithImpl$Query$BrandsList$brandList$list$gyms(
    this._instance,
    this._then,
  );

  final Query$BrandsList$brandList$list$gyms _instance;

  final TRes Function(Query$BrandsList$brandList$list$gyms) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
  }) =>
      _then(Query$BrandsList$brandList$list$gyms(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
      ));
}

class _CopyWithStubImpl$Query$BrandsList$brandList$list$gyms<TRes>
    implements CopyWith$Query$BrandsList$brandList$list$gyms<TRes> {
  _CopyWithStubImpl$Query$BrandsList$brandList$list$gyms(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
  }) =>
      _res;
}
