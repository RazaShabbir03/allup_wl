import '../../schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$PurchasedSessionContractsForGym {
  factory Variables$Query$PurchasedSessionContractsForGym({
    Input$PaginatorInput? paging,
    required Input$SessionContractFilter params,
  }) =>
      Variables$Query$PurchasedSessionContractsForGym._({
        if (paging != null) r'paging': paging,
        r'params': params,
      });

  Variables$Query$PurchasedSessionContractsForGym._(this._$data);

  factory Variables$Query$PurchasedSessionContractsForGym.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('paging')) {
      final l$paging = data['paging'];
      result$data['paging'] = l$paging == null
          ? null
          : Input$PaginatorInput.fromJson((l$paging as Map<String, dynamic>));
    }
    final l$params = data['params'];
    result$data['params'] = Input$SessionContractFilter.fromJson(
        (l$params as Map<String, dynamic>));
    return Variables$Query$PurchasedSessionContractsForGym._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$PaginatorInput? get paging =>
      (_$data['paging'] as Input$PaginatorInput?);

  Input$SessionContractFilter get params =>
      (_$data['params'] as Input$SessionContractFilter);

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

  CopyWith$Variables$Query$PurchasedSessionContractsForGym<
          Variables$Query$PurchasedSessionContractsForGym>
      get copyWith => CopyWith$Variables$Query$PurchasedSessionContractsForGym(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$PurchasedSessionContractsForGym) ||
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

abstract class CopyWith$Variables$Query$PurchasedSessionContractsForGym<TRes> {
  factory CopyWith$Variables$Query$PurchasedSessionContractsForGym(
    Variables$Query$PurchasedSessionContractsForGym instance,
    TRes Function(Variables$Query$PurchasedSessionContractsForGym) then,
  ) = _CopyWithImpl$Variables$Query$PurchasedSessionContractsForGym;

  factory CopyWith$Variables$Query$PurchasedSessionContractsForGym.stub(
          TRes res) =
      _CopyWithStubImpl$Variables$Query$PurchasedSessionContractsForGym;

  TRes call({
    Input$PaginatorInput? paging,
    Input$SessionContractFilter? params,
  });
}

class _CopyWithImpl$Variables$Query$PurchasedSessionContractsForGym<TRes>
    implements CopyWith$Variables$Query$PurchasedSessionContractsForGym<TRes> {
  _CopyWithImpl$Variables$Query$PurchasedSessionContractsForGym(
    this._instance,
    this._then,
  );

  final Variables$Query$PurchasedSessionContractsForGym _instance;

  final TRes Function(Variables$Query$PurchasedSessionContractsForGym) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? paging = _undefined,
    Object? params = _undefined,
  }) =>
      _then(Variables$Query$PurchasedSessionContractsForGym._({
        ..._instance._$data,
        if (paging != _undefined) 'paging': (paging as Input$PaginatorInput?),
        if (params != _undefined && params != null)
          'params': (params as Input$SessionContractFilter),
      }));
}

class _CopyWithStubImpl$Variables$Query$PurchasedSessionContractsForGym<TRes>
    implements CopyWith$Variables$Query$PurchasedSessionContractsForGym<TRes> {
  _CopyWithStubImpl$Variables$Query$PurchasedSessionContractsForGym(this._res);

  TRes _res;

  call({
    Input$PaginatorInput? paging,
    Input$SessionContractFilter? params,
  }) =>
      _res;
}

class Query$PurchasedSessionContractsForGym {
  Query$PurchasedSessionContractsForGym({required this.sessionContractByAuth});

  factory Query$PurchasedSessionContractsForGym.fromJson(
      Map<String, dynamic> json) {
    final l$sessionContractByAuth = json['sessionContractByAuth'];
    return Query$PurchasedSessionContractsForGym(
        sessionContractByAuth:
            Query$PurchasedSessionContractsForGym$sessionContractByAuth
                .fromJson((l$sessionContractByAuth as Map<String, dynamic>)));
  }

  final Query$PurchasedSessionContractsForGym$sessionContractByAuth
      sessionContractByAuth;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sessionContractByAuth = sessionContractByAuth;
    _resultData['sessionContractByAuth'] = l$sessionContractByAuth.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sessionContractByAuth = sessionContractByAuth;
    return Object.hashAll([l$sessionContractByAuth]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$PurchasedSessionContractsForGym) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sessionContractByAuth = sessionContractByAuth;
    final lOther$sessionContractByAuth = other.sessionContractByAuth;
    if (l$sessionContractByAuth != lOther$sessionContractByAuth) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$PurchasedSessionContractsForGym
    on Query$PurchasedSessionContractsForGym {
  CopyWith$Query$PurchasedSessionContractsForGym<
          Query$PurchasedSessionContractsForGym>
      get copyWith => CopyWith$Query$PurchasedSessionContractsForGym(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PurchasedSessionContractsForGym<TRes> {
  factory CopyWith$Query$PurchasedSessionContractsForGym(
    Query$PurchasedSessionContractsForGym instance,
    TRes Function(Query$PurchasedSessionContractsForGym) then,
  ) = _CopyWithImpl$Query$PurchasedSessionContractsForGym;

  factory CopyWith$Query$PurchasedSessionContractsForGym.stub(TRes res) =
      _CopyWithStubImpl$Query$PurchasedSessionContractsForGym;

  TRes call(
      {Query$PurchasedSessionContractsForGym$sessionContractByAuth?
          sessionContractByAuth});
  CopyWith$Query$PurchasedSessionContractsForGym$sessionContractByAuth<TRes>
      get sessionContractByAuth;
}

class _CopyWithImpl$Query$PurchasedSessionContractsForGym<TRes>
    implements CopyWith$Query$PurchasedSessionContractsForGym<TRes> {
  _CopyWithImpl$Query$PurchasedSessionContractsForGym(
    this._instance,
    this._then,
  );

  final Query$PurchasedSessionContractsForGym _instance;

  final TRes Function(Query$PurchasedSessionContractsForGym) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? sessionContractByAuth = _undefined}) =>
      _then(Query$PurchasedSessionContractsForGym(
          sessionContractByAuth: sessionContractByAuth == _undefined ||
                  sessionContractByAuth == null
              ? _instance.sessionContractByAuth
              : (sessionContractByAuth
                  as Query$PurchasedSessionContractsForGym$sessionContractByAuth)));

  CopyWith$Query$PurchasedSessionContractsForGym$sessionContractByAuth<TRes>
      get sessionContractByAuth {
    final local$sessionContractByAuth = _instance.sessionContractByAuth;
    return CopyWith$Query$PurchasedSessionContractsForGym$sessionContractByAuth(
        local$sessionContractByAuth, (e) => call(sessionContractByAuth: e));
  }
}

class _CopyWithStubImpl$Query$PurchasedSessionContractsForGym<TRes>
    implements CopyWith$Query$PurchasedSessionContractsForGym<TRes> {
  _CopyWithStubImpl$Query$PurchasedSessionContractsForGym(this._res);

  TRes _res;

  call(
          {Query$PurchasedSessionContractsForGym$sessionContractByAuth?
              sessionContractByAuth}) =>
      _res;

  CopyWith$Query$PurchasedSessionContractsForGym$sessionContractByAuth<TRes>
      get sessionContractByAuth =>
          CopyWith$Query$PurchasedSessionContractsForGym$sessionContractByAuth
              .stub(_res);
}

const documentNodeQueryPurchasedSessionContractsForGym =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'PurchasedSessionContractsForGym'),
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
          name: NameNode(value: 'SessionContractFilter'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'sessionContractByAuth'),
        alias: NameNode(value: 'sessionContractByAuth'),
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
                name: NameNode(value: 'status'),
                alias: NameNode(value: 'status'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'instructorId'),
                alias: NameNode(value: 'instructorId'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'service'),
                alias: NameNode(value: 'service'),
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'name'),
                    alias: NameNode(value: 'name'),
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  )
                ]),
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
                name: NameNode(value: 'limit'),
                alias: NameNode(value: 'limit'),
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
            ]),
          ),
        ]),
      )
    ]),
  ),
]);
Query$PurchasedSessionContractsForGym
    _parserFn$Query$PurchasedSessionContractsForGym(
            Map<String, dynamic> data) =>
        Query$PurchasedSessionContractsForGym.fromJson(data);
typedef OnQueryComplete$Query$PurchasedSessionContractsForGym = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Query$PurchasedSessionContractsForGym?,
);

class Options$Query$PurchasedSessionContractsForGym
    extends graphql.QueryOptions<Query$PurchasedSessionContractsForGym> {
  Options$Query$PurchasedSessionContractsForGym({
    String? operationName,
    required Variables$Query$PurchasedSessionContractsForGym variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$PurchasedSessionContractsForGym? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$PurchasedSessionContractsForGym? onComplete,
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
                        : _parserFn$Query$PurchasedSessionContractsForGym(data),
                  ),
          onError: onError,
          document: documentNodeQueryPurchasedSessionContractsForGym,
          parserFn: _parserFn$Query$PurchasedSessionContractsForGym,
        );

  final OnQueryComplete$Query$PurchasedSessionContractsForGym?
      onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$PurchasedSessionContractsForGym
    extends graphql.WatchQueryOptions<Query$PurchasedSessionContractsForGym> {
  WatchOptions$Query$PurchasedSessionContractsForGym({
    String? operationName,
    required Variables$Query$PurchasedSessionContractsForGym variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$PurchasedSessionContractsForGym? typedOptimisticResult,
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
          document: documentNodeQueryPurchasedSessionContractsForGym,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$PurchasedSessionContractsForGym,
        );
}

class FetchMoreOptions$Query$PurchasedSessionContractsForGym
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$PurchasedSessionContractsForGym({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$PurchasedSessionContractsForGym variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryPurchasedSessionContractsForGym,
        );
}

extension ClientExtension$Query$PurchasedSessionContractsForGym
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$PurchasedSessionContractsForGym>>
      query$PurchasedSessionContractsForGym(
              Options$Query$PurchasedSessionContractsForGym options) async =>
          await this.query(options);
  graphql.ObservableQuery<Query$PurchasedSessionContractsForGym>
      watchQuery$PurchasedSessionContractsForGym(
              WatchOptions$Query$PurchasedSessionContractsForGym options) =>
          this.watchQuery(options);
  void writeQuery$PurchasedSessionContractsForGym({
    required Query$PurchasedSessionContractsForGym data,
    required Variables$Query$PurchasedSessionContractsForGym variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryPurchasedSessionContractsForGym),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$PurchasedSessionContractsForGym?
      readQuery$PurchasedSessionContractsForGym({
    required Variables$Query$PurchasedSessionContractsForGym variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
            document: documentNodeQueryPurchasedSessionContractsForGym),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$PurchasedSessionContractsForGym.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$PurchasedSessionContractsForGym>
    useQuery$PurchasedSessionContractsForGym(
            Options$Query$PurchasedSessionContractsForGym options) =>
        graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$PurchasedSessionContractsForGym>
    useWatchQuery$PurchasedSessionContractsForGym(
            WatchOptions$Query$PurchasedSessionContractsForGym options) =>
        graphql_flutter.useWatchQuery(options);

class Query$PurchasedSessionContractsForGym$Widget
    extends graphql_flutter.Query<Query$PurchasedSessionContractsForGym> {
  Query$PurchasedSessionContractsForGym$Widget({
    widgets.Key? key,
    required Options$Query$PurchasedSessionContractsForGym options,
    required graphql_flutter.QueryBuilder<Query$PurchasedSessionContractsForGym>
        builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$PurchasedSessionContractsForGym$sessionContractByAuth {
  Query$PurchasedSessionContractsForGym$sessionContractByAuth({
    this.list,
    this.paging,
  });

  factory Query$PurchasedSessionContractsForGym$sessionContractByAuth.fromJson(
      Map<String, dynamic> json) {
    final l$list = json['list'];
    final l$paging = json['paging'];
    return Query$PurchasedSessionContractsForGym$sessionContractByAuth(
      list: (l$list as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$PurchasedSessionContractsForGym$sessionContractByAuth$list
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      paging: l$paging == null
          ? null
          : Query$PurchasedSessionContractsForGym$sessionContractByAuth$paging
              .fromJson((l$paging as Map<String, dynamic>)),
    );
  }

  final List<Query$PurchasedSessionContractsForGym$sessionContractByAuth$list?>?
      list;

  final Query$PurchasedSessionContractsForGym$sessionContractByAuth$paging?
      paging;

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
    if (!(other
            is Query$PurchasedSessionContractsForGym$sessionContractByAuth) ||
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

extension UtilityExtension$Query$PurchasedSessionContractsForGym$sessionContractByAuth
    on Query$PurchasedSessionContractsForGym$sessionContractByAuth {
  CopyWith$Query$PurchasedSessionContractsForGym$sessionContractByAuth<
          Query$PurchasedSessionContractsForGym$sessionContractByAuth>
      get copyWith =>
          CopyWith$Query$PurchasedSessionContractsForGym$sessionContractByAuth(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PurchasedSessionContractsForGym$sessionContractByAuth<
    TRes> {
  factory CopyWith$Query$PurchasedSessionContractsForGym$sessionContractByAuth(
    Query$PurchasedSessionContractsForGym$sessionContractByAuth instance,
    TRes Function(Query$PurchasedSessionContractsForGym$sessionContractByAuth)
        then,
  ) = _CopyWithImpl$Query$PurchasedSessionContractsForGym$sessionContractByAuth;

  factory CopyWith$Query$PurchasedSessionContractsForGym$sessionContractByAuth.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PurchasedSessionContractsForGym$sessionContractByAuth;

  TRes call({
    List<Query$PurchasedSessionContractsForGym$sessionContractByAuth$list?>?
        list,
    Query$PurchasedSessionContractsForGym$sessionContractByAuth$paging? paging,
  });
  TRes list(
      Iterable<Query$PurchasedSessionContractsForGym$sessionContractByAuth$list?>? Function(
              Iterable<
                  CopyWith$Query$PurchasedSessionContractsForGym$sessionContractByAuth$list<
                      Query$PurchasedSessionContractsForGym$sessionContractByAuth$list>?>?)
          _fn);
  CopyWith$Query$PurchasedSessionContractsForGym$sessionContractByAuth$paging<
      TRes> get paging;
}

class _CopyWithImpl$Query$PurchasedSessionContractsForGym$sessionContractByAuth<
        TRes>
    implements
        CopyWith$Query$PurchasedSessionContractsForGym$sessionContractByAuth<
            TRes> {
  _CopyWithImpl$Query$PurchasedSessionContractsForGym$sessionContractByAuth(
    this._instance,
    this._then,
  );

  final Query$PurchasedSessionContractsForGym$sessionContractByAuth _instance;

  final TRes Function(
      Query$PurchasedSessionContractsForGym$sessionContractByAuth) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? list = _undefined,
    Object? paging = _undefined,
  }) =>
      _then(Query$PurchasedSessionContractsForGym$sessionContractByAuth(
        list: list == _undefined
            ? _instance.list
            : (list as List<
                Query$PurchasedSessionContractsForGym$sessionContractByAuth$list?>?),
        paging: paging == _undefined
            ? _instance.paging
            : (paging
                as Query$PurchasedSessionContractsForGym$sessionContractByAuth$paging?),
      ));

  TRes list(
          Iterable<Query$PurchasedSessionContractsForGym$sessionContractByAuth$list?>? Function(
                  Iterable<
                      CopyWith$Query$PurchasedSessionContractsForGym$sessionContractByAuth$list<
                          Query$PurchasedSessionContractsForGym$sessionContractByAuth$list>?>?)
              _fn) =>
      call(
          list: _fn(_instance.list?.map((e) => e == null
              ? null
              : CopyWith$Query$PurchasedSessionContractsForGym$sessionContractByAuth$list(
                  e,
                  (i) => i,
                )))?.toList());

  CopyWith$Query$PurchasedSessionContractsForGym$sessionContractByAuth$paging<
      TRes> get paging {
    final local$paging = _instance.paging;
    return local$paging == null
        ? CopyWith$Query$PurchasedSessionContractsForGym$sessionContractByAuth$paging
            .stub(_then(_instance))
        : CopyWith$Query$PurchasedSessionContractsForGym$sessionContractByAuth$paging(
            local$paging, (e) => call(paging: e));
  }
}

class _CopyWithStubImpl$Query$PurchasedSessionContractsForGym$sessionContractByAuth<
        TRes>
    implements
        CopyWith$Query$PurchasedSessionContractsForGym$sessionContractByAuth<
            TRes> {
  _CopyWithStubImpl$Query$PurchasedSessionContractsForGym$sessionContractByAuth(
      this._res);

  TRes _res;

  call({
    List<Query$PurchasedSessionContractsForGym$sessionContractByAuth$list?>?
        list,
    Query$PurchasedSessionContractsForGym$sessionContractByAuth$paging? paging,
  }) =>
      _res;

  list(_fn) => _res;

  CopyWith$Query$PurchasedSessionContractsForGym$sessionContractByAuth$paging<
          TRes>
      get paging =>
          CopyWith$Query$PurchasedSessionContractsForGym$sessionContractByAuth$paging
              .stub(_res);
}

class Query$PurchasedSessionContractsForGym$sessionContractByAuth$list {
  Query$PurchasedSessionContractsForGym$sessionContractByAuth$list({
    required this.id,
    required this.status,
    this.instructorId,
    required this.service,
  });

  factory Query$PurchasedSessionContractsForGym$sessionContractByAuth$list.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$status = json['status'];
    final l$instructorId = json['instructorId'];
    final l$service = json['service'];
    return Query$PurchasedSessionContractsForGym$sessionContractByAuth$list(
      id: (l$id as String),
      status: fromJson$Enum$SessionContractStatus((l$status as String)),
      instructorId: (l$instructorId as String?),
      service:
          Query$PurchasedSessionContractsForGym$sessionContractByAuth$list$service
              .fromJson((l$service as Map<String, dynamic>)),
    );
  }

  final String id;

  final Enum$SessionContractStatus status;

  final String? instructorId;

  final Query$PurchasedSessionContractsForGym$sessionContractByAuth$list$service
      service;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$status = status;
    _resultData['status'] = toJson$Enum$SessionContractStatus(l$status);
    final l$instructorId = instructorId;
    _resultData['instructorId'] = l$instructorId;
    final l$service = service;
    _resultData['service'] = l$service.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$status = status;
    final l$instructorId = instructorId;
    final l$service = service;
    return Object.hashAll([
      l$id,
      l$status,
      l$instructorId,
      l$service,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$PurchasedSessionContractsForGym$sessionContractByAuth$list) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$instructorId = instructorId;
    final lOther$instructorId = other.instructorId;
    if (l$instructorId != lOther$instructorId) {
      return false;
    }
    final l$service = service;
    final lOther$service = other.service;
    if (l$service != lOther$service) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$PurchasedSessionContractsForGym$sessionContractByAuth$list
    on Query$PurchasedSessionContractsForGym$sessionContractByAuth$list {
  CopyWith$Query$PurchasedSessionContractsForGym$sessionContractByAuth$list<
          Query$PurchasedSessionContractsForGym$sessionContractByAuth$list>
      get copyWith =>
          CopyWith$Query$PurchasedSessionContractsForGym$sessionContractByAuth$list(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PurchasedSessionContractsForGym$sessionContractByAuth$list<
    TRes> {
  factory CopyWith$Query$PurchasedSessionContractsForGym$sessionContractByAuth$list(
    Query$PurchasedSessionContractsForGym$sessionContractByAuth$list instance,
    TRes Function(
            Query$PurchasedSessionContractsForGym$sessionContractByAuth$list)
        then,
  ) = _CopyWithImpl$Query$PurchasedSessionContractsForGym$sessionContractByAuth$list;

  factory CopyWith$Query$PurchasedSessionContractsForGym$sessionContractByAuth$list.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PurchasedSessionContractsForGym$sessionContractByAuth$list;

  TRes call({
    String? id,
    Enum$SessionContractStatus? status,
    String? instructorId,
    Query$PurchasedSessionContractsForGym$sessionContractByAuth$list$service?
        service,
  });
  CopyWith$Query$PurchasedSessionContractsForGym$sessionContractByAuth$list$service<
      TRes> get service;
}

class _CopyWithImpl$Query$PurchasedSessionContractsForGym$sessionContractByAuth$list<
        TRes>
    implements
        CopyWith$Query$PurchasedSessionContractsForGym$sessionContractByAuth$list<
            TRes> {
  _CopyWithImpl$Query$PurchasedSessionContractsForGym$sessionContractByAuth$list(
    this._instance,
    this._then,
  );

  final Query$PurchasedSessionContractsForGym$sessionContractByAuth$list
      _instance;

  final TRes Function(
      Query$PurchasedSessionContractsForGym$sessionContractByAuth$list) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? status = _undefined,
    Object? instructorId = _undefined,
    Object? service = _undefined,
  }) =>
      _then(Query$PurchasedSessionContractsForGym$sessionContractByAuth$list(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        status: status == _undefined || status == null
            ? _instance.status
            : (status as Enum$SessionContractStatus),
        instructorId: instructorId == _undefined
            ? _instance.instructorId
            : (instructorId as String?),
        service: service == _undefined || service == null
            ? _instance.service
            : (service
                as Query$PurchasedSessionContractsForGym$sessionContractByAuth$list$service),
      ));

  CopyWith$Query$PurchasedSessionContractsForGym$sessionContractByAuth$list$service<
      TRes> get service {
    final local$service = _instance.service;
    return CopyWith$Query$PurchasedSessionContractsForGym$sessionContractByAuth$list$service(
        local$service, (e) => call(service: e));
  }
}

class _CopyWithStubImpl$Query$PurchasedSessionContractsForGym$sessionContractByAuth$list<
        TRes>
    implements
        CopyWith$Query$PurchasedSessionContractsForGym$sessionContractByAuth$list<
            TRes> {
  _CopyWithStubImpl$Query$PurchasedSessionContractsForGym$sessionContractByAuth$list(
      this._res);

  TRes _res;

  call({
    String? id,
    Enum$SessionContractStatus? status,
    String? instructorId,
    Query$PurchasedSessionContractsForGym$sessionContractByAuth$list$service?
        service,
  }) =>
      _res;

  CopyWith$Query$PurchasedSessionContractsForGym$sessionContractByAuth$list$service<
          TRes>
      get service =>
          CopyWith$Query$PurchasedSessionContractsForGym$sessionContractByAuth$list$service
              .stub(_res);
}

class Query$PurchasedSessionContractsForGym$sessionContractByAuth$list$service {
  Query$PurchasedSessionContractsForGym$sessionContractByAuth$list$service(
      {required this.name});

  factory Query$PurchasedSessionContractsForGym$sessionContractByAuth$list$service.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    return Query$PurchasedSessionContractsForGym$sessionContractByAuth$list$service(
        name: (l$name as String));
  }

  final String name;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$PurchasedSessionContractsForGym$sessionContractByAuth$list$service) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$PurchasedSessionContractsForGym$sessionContractByAuth$list$service
    on Query$PurchasedSessionContractsForGym$sessionContractByAuth$list$service {
  CopyWith$Query$PurchasedSessionContractsForGym$sessionContractByAuth$list$service<
          Query$PurchasedSessionContractsForGym$sessionContractByAuth$list$service>
      get copyWith =>
          CopyWith$Query$PurchasedSessionContractsForGym$sessionContractByAuth$list$service(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PurchasedSessionContractsForGym$sessionContractByAuth$list$service<
    TRes> {
  factory CopyWith$Query$PurchasedSessionContractsForGym$sessionContractByAuth$list$service(
    Query$PurchasedSessionContractsForGym$sessionContractByAuth$list$service
        instance,
    TRes Function(
            Query$PurchasedSessionContractsForGym$sessionContractByAuth$list$service)
        then,
  ) = _CopyWithImpl$Query$PurchasedSessionContractsForGym$sessionContractByAuth$list$service;

  factory CopyWith$Query$PurchasedSessionContractsForGym$sessionContractByAuth$list$service.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PurchasedSessionContractsForGym$sessionContractByAuth$list$service;

  TRes call({String? name});
}

class _CopyWithImpl$Query$PurchasedSessionContractsForGym$sessionContractByAuth$list$service<
        TRes>
    implements
        CopyWith$Query$PurchasedSessionContractsForGym$sessionContractByAuth$list$service<
            TRes> {
  _CopyWithImpl$Query$PurchasedSessionContractsForGym$sessionContractByAuth$list$service(
    this._instance,
    this._then,
  );

  final Query$PurchasedSessionContractsForGym$sessionContractByAuth$list$service
      _instance;

  final TRes Function(
          Query$PurchasedSessionContractsForGym$sessionContractByAuth$list$service)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined}) => _then(
      Query$PurchasedSessionContractsForGym$sessionContractByAuth$list$service(
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String)));
}

class _CopyWithStubImpl$Query$PurchasedSessionContractsForGym$sessionContractByAuth$list$service<
        TRes>
    implements
        CopyWith$Query$PurchasedSessionContractsForGym$sessionContractByAuth$list$service<
            TRes> {
  _CopyWithStubImpl$Query$PurchasedSessionContractsForGym$sessionContractByAuth$list$service(
      this._res);

  TRes _res;

  call({String? name}) => _res;
}

class Query$PurchasedSessionContractsForGym$sessionContractByAuth$paging {
  Query$PurchasedSessionContractsForGym$sessionContractByAuth$paging({
    required this.totalPages,
    required this.limit,
    required this.page,
  });

  factory Query$PurchasedSessionContractsForGym$sessionContractByAuth$paging.fromJson(
      Map<String, dynamic> json) {
    final l$totalPages = json['totalPages'];
    final l$limit = json['limit'];
    final l$page = json['page'];
    return Query$PurchasedSessionContractsForGym$sessionContractByAuth$paging(
      totalPages: (l$totalPages as int),
      limit: (l$limit as int),
      page: (l$page as int),
    );
  }

  final int totalPages;

  final int limit;

  final int page;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$totalPages = totalPages;
    _resultData['totalPages'] = l$totalPages;
    final l$limit = limit;
    _resultData['limit'] = l$limit;
    final l$page = page;
    _resultData['page'] = l$page;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$totalPages = totalPages;
    final l$limit = limit;
    final l$page = page;
    return Object.hashAll([
      l$totalPages,
      l$limit,
      l$page,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$PurchasedSessionContractsForGym$sessionContractByAuth$paging) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$totalPages = totalPages;
    final lOther$totalPages = other.totalPages;
    if (l$totalPages != lOther$totalPages) {
      return false;
    }
    final l$limit = limit;
    final lOther$limit = other.limit;
    if (l$limit != lOther$limit) {
      return false;
    }
    final l$page = page;
    final lOther$page = other.page;
    if (l$page != lOther$page) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$PurchasedSessionContractsForGym$sessionContractByAuth$paging
    on Query$PurchasedSessionContractsForGym$sessionContractByAuth$paging {
  CopyWith$Query$PurchasedSessionContractsForGym$sessionContractByAuth$paging<
          Query$PurchasedSessionContractsForGym$sessionContractByAuth$paging>
      get copyWith =>
          CopyWith$Query$PurchasedSessionContractsForGym$sessionContractByAuth$paging(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PurchasedSessionContractsForGym$sessionContractByAuth$paging<
    TRes> {
  factory CopyWith$Query$PurchasedSessionContractsForGym$sessionContractByAuth$paging(
    Query$PurchasedSessionContractsForGym$sessionContractByAuth$paging instance,
    TRes Function(
            Query$PurchasedSessionContractsForGym$sessionContractByAuth$paging)
        then,
  ) = _CopyWithImpl$Query$PurchasedSessionContractsForGym$sessionContractByAuth$paging;

  factory CopyWith$Query$PurchasedSessionContractsForGym$sessionContractByAuth$paging.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PurchasedSessionContractsForGym$sessionContractByAuth$paging;

  TRes call({
    int? totalPages,
    int? limit,
    int? page,
  });
}

class _CopyWithImpl$Query$PurchasedSessionContractsForGym$sessionContractByAuth$paging<
        TRes>
    implements
        CopyWith$Query$PurchasedSessionContractsForGym$sessionContractByAuth$paging<
            TRes> {
  _CopyWithImpl$Query$PurchasedSessionContractsForGym$sessionContractByAuth$paging(
    this._instance,
    this._then,
  );

  final Query$PurchasedSessionContractsForGym$sessionContractByAuth$paging
      _instance;

  final TRes Function(
      Query$PurchasedSessionContractsForGym$sessionContractByAuth$paging) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalPages = _undefined,
    Object? limit = _undefined,
    Object? page = _undefined,
  }) =>
      _then(Query$PurchasedSessionContractsForGym$sessionContractByAuth$paging(
        totalPages: totalPages == _undefined || totalPages == null
            ? _instance.totalPages
            : (totalPages as int),
        limit: limit == _undefined || limit == null
            ? _instance.limit
            : (limit as int),
        page:
            page == _undefined || page == null ? _instance.page : (page as int),
      ));
}

class _CopyWithStubImpl$Query$PurchasedSessionContractsForGym$sessionContractByAuth$paging<
        TRes>
    implements
        CopyWith$Query$PurchasedSessionContractsForGym$sessionContractByAuth$paging<
            TRes> {
  _CopyWithStubImpl$Query$PurchasedSessionContractsForGym$sessionContractByAuth$paging(
      this._res);

  TRes _res;

  call({
    int? totalPages,
    int? limit,
    int? page,
  }) =>
      _res;
}
