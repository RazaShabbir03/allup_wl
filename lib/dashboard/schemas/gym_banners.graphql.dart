import '../../schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$GymBanners {
  factory Variables$Query$GymBanners({
    Input$GymBannerFilter? params,
    required Input$PaginatorInput paging,
  }) =>
      Variables$Query$GymBanners._({
        if (params != null) r'params': params,
        r'paging': paging,
      });

  Variables$Query$GymBanners._(this._$data);

  factory Variables$Query$GymBanners.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('params')) {
      final l$params = data['params'];
      result$data['params'] = l$params == null
          ? null
          : Input$GymBannerFilter.fromJson((l$params as Map<String, dynamic>));
    }
    final l$paging = data['paging'];
    result$data['paging'] =
        Input$PaginatorInput.fromJson((l$paging as Map<String, dynamic>));
    return Variables$Query$GymBanners._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$GymBannerFilter? get params =>
      (_$data['params'] as Input$GymBannerFilter?);

  Input$PaginatorInput get paging => (_$data['paging'] as Input$PaginatorInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('params')) {
      final l$params = params;
      result$data['params'] = l$params?.toJson();
    }
    final l$paging = paging;
    result$data['paging'] = l$paging.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$GymBanners<Variables$Query$GymBanners>
      get copyWith => CopyWith$Variables$Query$GymBanners(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GymBanners) ||
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
    final l$paging = paging;
    final lOther$paging = other.paging;
    if (l$paging != lOther$paging) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$params = params;
    final l$paging = paging;
    return Object.hashAll([
      _$data.containsKey('params') ? l$params : const {},
      l$paging,
    ]);
  }
}

abstract class CopyWith$Variables$Query$GymBanners<TRes> {
  factory CopyWith$Variables$Query$GymBanners(
    Variables$Query$GymBanners instance,
    TRes Function(Variables$Query$GymBanners) then,
  ) = _CopyWithImpl$Variables$Query$GymBanners;

  factory CopyWith$Variables$Query$GymBanners.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GymBanners;

  TRes call({
    Input$GymBannerFilter? params,
    Input$PaginatorInput? paging,
  });
}

class _CopyWithImpl$Variables$Query$GymBanners<TRes>
    implements CopyWith$Variables$Query$GymBanners<TRes> {
  _CopyWithImpl$Variables$Query$GymBanners(
    this._instance,
    this._then,
  );

  final Variables$Query$GymBanners _instance;

  final TRes Function(Variables$Query$GymBanners) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? params = _undefined,
    Object? paging = _undefined,
  }) =>
      _then(Variables$Query$GymBanners._({
        ..._instance._$data,
        if (params != _undefined) 'params': (params as Input$GymBannerFilter?),
        if (paging != _undefined && paging != null)
          'paging': (paging as Input$PaginatorInput),
      }));
}

class _CopyWithStubImpl$Variables$Query$GymBanners<TRes>
    implements CopyWith$Variables$Query$GymBanners<TRes> {
  _CopyWithStubImpl$Variables$Query$GymBanners(this._res);

  TRes _res;

  call({
    Input$GymBannerFilter? params,
    Input$PaginatorInput? paging,
  }) =>
      _res;
}

class Query$GymBanners {
  Query$GymBanners({required this.gymBanners});

  factory Query$GymBanners.fromJson(Map<String, dynamic> json) {
    final l$gymBanners = json['gymBanners'];
    return Query$GymBanners(
        gymBanners: Query$GymBanners$gymBanners.fromJson(
            (l$gymBanners as Map<String, dynamic>)));
  }

  final Query$GymBanners$gymBanners gymBanners;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$gymBanners = gymBanners;
    _resultData['gymBanners'] = l$gymBanners.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$gymBanners = gymBanners;
    return Object.hashAll([l$gymBanners]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GymBanners) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$gymBanners = gymBanners;
    final lOther$gymBanners = other.gymBanners;
    if (l$gymBanners != lOther$gymBanners) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GymBanners on Query$GymBanners {
  CopyWith$Query$GymBanners<Query$GymBanners> get copyWith =>
      CopyWith$Query$GymBanners(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GymBanners<TRes> {
  factory CopyWith$Query$GymBanners(
    Query$GymBanners instance,
    TRes Function(Query$GymBanners) then,
  ) = _CopyWithImpl$Query$GymBanners;

  factory CopyWith$Query$GymBanners.stub(TRes res) =
      _CopyWithStubImpl$Query$GymBanners;

  TRes call({Query$GymBanners$gymBanners? gymBanners});
  CopyWith$Query$GymBanners$gymBanners<TRes> get gymBanners;
}

class _CopyWithImpl$Query$GymBanners<TRes>
    implements CopyWith$Query$GymBanners<TRes> {
  _CopyWithImpl$Query$GymBanners(
    this._instance,
    this._then,
  );

  final Query$GymBanners _instance;

  final TRes Function(Query$GymBanners) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? gymBanners = _undefined}) => _then(Query$GymBanners(
      gymBanners: gymBanners == _undefined || gymBanners == null
          ? _instance.gymBanners
          : (gymBanners as Query$GymBanners$gymBanners)));

  CopyWith$Query$GymBanners$gymBanners<TRes> get gymBanners {
    final local$gymBanners = _instance.gymBanners;
    return CopyWith$Query$GymBanners$gymBanners(
        local$gymBanners, (e) => call(gymBanners: e));
  }
}

class _CopyWithStubImpl$Query$GymBanners<TRes>
    implements CopyWith$Query$GymBanners<TRes> {
  _CopyWithStubImpl$Query$GymBanners(this._res);

  TRes _res;

  call({Query$GymBanners$gymBanners? gymBanners}) => _res;

  CopyWith$Query$GymBanners$gymBanners<TRes> get gymBanners =>
      CopyWith$Query$GymBanners$gymBanners.stub(_res);
}

const documentNodeQueryGymBanners = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GymBanners'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'params')),
        type: NamedTypeNode(
          name: NameNode(value: 'GymBannerFilter'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'paging')),
        type: NamedTypeNode(
          name: NameNode(value: 'PaginatorInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'gymBanners'),
        alias: NameNode(value: 'gymBanners'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'params'),
            value: VariableNode(name: NameNode(value: 'params')),
          ),
          ArgumentNode(
            name: NameNode(value: 'paging'),
            value: VariableNode(name: NameNode(value: 'paging')),
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
                name: NameNode(value: 'image'),
                alias: NameNode(value: 'image'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'link'),
                alias: NameNode(value: 'link'),
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
                name: NameNode(value: 'totalPages'),
                alias: NameNode(value: 'totalPages'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
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
Query$GymBanners _parserFn$Query$GymBanners(Map<String, dynamic> data) =>
    Query$GymBanners.fromJson(data);
typedef OnQueryComplete$Query$GymBanners = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GymBanners?,
);

class Options$Query$GymBanners extends graphql.QueryOptions<Query$GymBanners> {
  Options$Query$GymBanners({
    String? operationName,
    required Variables$Query$GymBanners variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GymBanners? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GymBanners? onComplete,
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
                    data == null ? null : _parserFn$Query$GymBanners(data),
                  ),
          onError: onError,
          document: documentNodeQueryGymBanners,
          parserFn: _parserFn$Query$GymBanners,
        );

  final OnQueryComplete$Query$GymBanners? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GymBanners
    extends graphql.WatchQueryOptions<Query$GymBanners> {
  WatchOptions$Query$GymBanners({
    String? operationName,
    required Variables$Query$GymBanners variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GymBanners? typedOptimisticResult,
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
          document: documentNodeQueryGymBanners,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GymBanners,
        );
}

class FetchMoreOptions$Query$GymBanners extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GymBanners({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GymBanners variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGymBanners,
        );
}

extension ClientExtension$Query$GymBanners on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GymBanners>> query$GymBanners(
          Options$Query$GymBanners options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$GymBanners> watchQuery$GymBanners(
          WatchOptions$Query$GymBanners options) =>
      this.watchQuery(options);
  void writeQuery$GymBanners({
    required Query$GymBanners data,
    required Variables$Query$GymBanners variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryGymBanners),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GymBanners? readQuery$GymBanners({
    required Variables$Query$GymBanners variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryGymBanners),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GymBanners.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GymBanners> useQuery$GymBanners(
        Options$Query$GymBanners options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$GymBanners> useWatchQuery$GymBanners(
        WatchOptions$Query$GymBanners options) =>
    graphql_flutter.useWatchQuery(options);

class Query$GymBanners$Widget extends graphql_flutter.Query<Query$GymBanners> {
  Query$GymBanners$Widget({
    widgets.Key? key,
    required Options$Query$GymBanners options,
    required graphql_flutter.QueryBuilder<Query$GymBanners> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$GymBanners$gymBanners {
  Query$GymBanners$gymBanners({
    this.list,
    this.paging,
  });

  factory Query$GymBanners$gymBanners.fromJson(Map<String, dynamic> json) {
    final l$list = json['list'];
    final l$paging = json['paging'];
    return Query$GymBanners$gymBanners(
      list: (l$list as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$GymBanners$gymBanners$list.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      paging: l$paging == null
          ? null
          : Query$GymBanners$gymBanners$paging.fromJson(
              (l$paging as Map<String, dynamic>)),
    );
  }

  final List<Query$GymBanners$gymBanners$list?>? list;

  final Query$GymBanners$gymBanners$paging? paging;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$list = list;
    _resultData['list'] = l$list?.map((e) => e?.toJson()).toList();
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
    if (!(other is Query$GymBanners$gymBanners) ||
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

extension UtilityExtension$Query$GymBanners$gymBanners
    on Query$GymBanners$gymBanners {
  CopyWith$Query$GymBanners$gymBanners<Query$GymBanners$gymBanners>
      get copyWith => CopyWith$Query$GymBanners$gymBanners(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GymBanners$gymBanners<TRes> {
  factory CopyWith$Query$GymBanners$gymBanners(
    Query$GymBanners$gymBanners instance,
    TRes Function(Query$GymBanners$gymBanners) then,
  ) = _CopyWithImpl$Query$GymBanners$gymBanners;

  factory CopyWith$Query$GymBanners$gymBanners.stub(TRes res) =
      _CopyWithStubImpl$Query$GymBanners$gymBanners;

  TRes call({
    List<Query$GymBanners$gymBanners$list?>? list,
    Query$GymBanners$gymBanners$paging? paging,
  });
  TRes list(
      Iterable<Query$GymBanners$gymBanners$list?>? Function(
              Iterable<
                  CopyWith$Query$GymBanners$gymBanners$list<
                      Query$GymBanners$gymBanners$list>?>?)
          _fn);
  CopyWith$Query$GymBanners$gymBanners$paging<TRes> get paging;
}

class _CopyWithImpl$Query$GymBanners$gymBanners<TRes>
    implements CopyWith$Query$GymBanners$gymBanners<TRes> {
  _CopyWithImpl$Query$GymBanners$gymBanners(
    this._instance,
    this._then,
  );

  final Query$GymBanners$gymBanners _instance;

  final TRes Function(Query$GymBanners$gymBanners) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? list = _undefined,
    Object? paging = _undefined,
  }) =>
      _then(Query$GymBanners$gymBanners(
        list: list == _undefined
            ? _instance.list
            : (list as List<Query$GymBanners$gymBanners$list?>?),
        paging: paging == _undefined
            ? _instance.paging
            : (paging as Query$GymBanners$gymBanners$paging?),
      ));

  TRes list(
          Iterable<Query$GymBanners$gymBanners$list?>? Function(
                  Iterable<
                      CopyWith$Query$GymBanners$gymBanners$list<
                          Query$GymBanners$gymBanners$list>?>?)
              _fn) =>
      call(
          list: _fn(_instance.list?.map((e) => e == null
              ? null
              : CopyWith$Query$GymBanners$gymBanners$list(
                  e,
                  (i) => i,
                )))?.toList());

  CopyWith$Query$GymBanners$gymBanners$paging<TRes> get paging {
    final local$paging = _instance.paging;
    return local$paging == null
        ? CopyWith$Query$GymBanners$gymBanners$paging.stub(_then(_instance))
        : CopyWith$Query$GymBanners$gymBanners$paging(
            local$paging, (e) => call(paging: e));
  }
}

class _CopyWithStubImpl$Query$GymBanners$gymBanners<TRes>
    implements CopyWith$Query$GymBanners$gymBanners<TRes> {
  _CopyWithStubImpl$Query$GymBanners$gymBanners(this._res);

  TRes _res;

  call({
    List<Query$GymBanners$gymBanners$list?>? list,
    Query$GymBanners$gymBanners$paging? paging,
  }) =>
      _res;

  list(_fn) => _res;

  CopyWith$Query$GymBanners$gymBanners$paging<TRes> get paging =>
      CopyWith$Query$GymBanners$gymBanners$paging.stub(_res);
}

class Query$GymBanners$gymBanners$list {
  Query$GymBanners$gymBanners$list({
    required this.id,
    required this.image,
    this.link,
  });

  factory Query$GymBanners$gymBanners$list.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$image = json['image'];
    final l$link = json['link'];
    return Query$GymBanners$gymBanners$list(
      id: (l$id as String),
      image: (l$image as String),
      link: (l$link as String?),
    );
  }

  final String id;

  final String image;

  final String? link;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$image = image;
    _resultData['image'] = l$image;
    final l$link = link;
    _resultData['link'] = l$link;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$image = image;
    final l$link = link;
    return Object.hashAll([
      l$id,
      l$image,
      l$link,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GymBanners$gymBanners$list) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) {
      return false;
    }
    final l$link = link;
    final lOther$link = other.link;
    if (l$link != lOther$link) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GymBanners$gymBanners$list
    on Query$GymBanners$gymBanners$list {
  CopyWith$Query$GymBanners$gymBanners$list<Query$GymBanners$gymBanners$list>
      get copyWith => CopyWith$Query$GymBanners$gymBanners$list(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GymBanners$gymBanners$list<TRes> {
  factory CopyWith$Query$GymBanners$gymBanners$list(
    Query$GymBanners$gymBanners$list instance,
    TRes Function(Query$GymBanners$gymBanners$list) then,
  ) = _CopyWithImpl$Query$GymBanners$gymBanners$list;

  factory CopyWith$Query$GymBanners$gymBanners$list.stub(TRes res) =
      _CopyWithStubImpl$Query$GymBanners$gymBanners$list;

  TRes call({
    String? id,
    String? image,
    String? link,
  });
}

class _CopyWithImpl$Query$GymBanners$gymBanners$list<TRes>
    implements CopyWith$Query$GymBanners$gymBanners$list<TRes> {
  _CopyWithImpl$Query$GymBanners$gymBanners$list(
    this._instance,
    this._then,
  );

  final Query$GymBanners$gymBanners$list _instance;

  final TRes Function(Query$GymBanners$gymBanners$list) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? image = _undefined,
    Object? link = _undefined,
  }) =>
      _then(Query$GymBanners$gymBanners$list(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        image: image == _undefined || image == null
            ? _instance.image
            : (image as String),
        link: link == _undefined ? _instance.link : (link as String?),
      ));
}

class _CopyWithStubImpl$Query$GymBanners$gymBanners$list<TRes>
    implements CopyWith$Query$GymBanners$gymBanners$list<TRes> {
  _CopyWithStubImpl$Query$GymBanners$gymBanners$list(this._res);

  TRes _res;

  call({
    String? id,
    String? image,
    String? link,
  }) =>
      _res;
}

class Query$GymBanners$gymBanners$paging {
  Query$GymBanners$gymBanners$paging({
    required this.totalPages,
    required this.page,
    required this.limit,
  });

  factory Query$GymBanners$gymBanners$paging.fromJson(
      Map<String, dynamic> json) {
    final l$totalPages = json['totalPages'];
    final l$page = json['page'];
    final l$limit = json['limit'];
    return Query$GymBanners$gymBanners$paging(
      totalPages: (l$totalPages as int),
      page: (l$page as int),
      limit: (l$limit as int),
    );
  }

  final int totalPages;

  final int page;

  final int limit;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$totalPages = totalPages;
    _resultData['totalPages'] = l$totalPages;
    final l$page = page;
    _resultData['page'] = l$page;
    final l$limit = limit;
    _resultData['limit'] = l$limit;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$totalPages = totalPages;
    final l$page = page;
    final l$limit = limit;
    return Object.hashAll([
      l$totalPages,
      l$page,
      l$limit,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GymBanners$gymBanners$paging) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$totalPages = totalPages;
    final lOther$totalPages = other.totalPages;
    if (l$totalPages != lOther$totalPages) {
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

extension UtilityExtension$Query$GymBanners$gymBanners$paging
    on Query$GymBanners$gymBanners$paging {
  CopyWith$Query$GymBanners$gymBanners$paging<
          Query$GymBanners$gymBanners$paging>
      get copyWith => CopyWith$Query$GymBanners$gymBanners$paging(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GymBanners$gymBanners$paging<TRes> {
  factory CopyWith$Query$GymBanners$gymBanners$paging(
    Query$GymBanners$gymBanners$paging instance,
    TRes Function(Query$GymBanners$gymBanners$paging) then,
  ) = _CopyWithImpl$Query$GymBanners$gymBanners$paging;

  factory CopyWith$Query$GymBanners$gymBanners$paging.stub(TRes res) =
      _CopyWithStubImpl$Query$GymBanners$gymBanners$paging;

  TRes call({
    int? totalPages,
    int? page,
    int? limit,
  });
}

class _CopyWithImpl$Query$GymBanners$gymBanners$paging<TRes>
    implements CopyWith$Query$GymBanners$gymBanners$paging<TRes> {
  _CopyWithImpl$Query$GymBanners$gymBanners$paging(
    this._instance,
    this._then,
  );

  final Query$GymBanners$gymBanners$paging _instance;

  final TRes Function(Query$GymBanners$gymBanners$paging) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalPages = _undefined,
    Object? page = _undefined,
    Object? limit = _undefined,
  }) =>
      _then(Query$GymBanners$gymBanners$paging(
        totalPages: totalPages == _undefined || totalPages == null
            ? _instance.totalPages
            : (totalPages as int),
        page:
            page == _undefined || page == null ? _instance.page : (page as int),
        limit: limit == _undefined || limit == null
            ? _instance.limit
            : (limit as int),
      ));
}

class _CopyWithStubImpl$Query$GymBanners$gymBanners$paging<TRes>
    implements CopyWith$Query$GymBanners$gymBanners$paging<TRes> {
  _CopyWithStubImpl$Query$GymBanners$gymBanners$paging(this._res);

  TRes _res;

  call({
    int? totalPages,
    int? page,
    int? limit,
  }) =>
      _res;
}
