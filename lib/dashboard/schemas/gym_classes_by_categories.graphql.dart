import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$GymClassesByCategory {
  factory Variables$Query$GymClassesByCategory({required String gymId}) =>
      Variables$Query$GymClassesByCategory._({
        r'gymId': gymId,
      });

  Variables$Query$GymClassesByCategory._(this._$data);

  factory Variables$Query$GymClassesByCategory.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$gymId = data['gymId'];
    result$data['gymId'] = (l$gymId as String);
    return Variables$Query$GymClassesByCategory._(result$data);
  }

  Map<String, dynamic> _$data;

  String get gymId => (_$data['gymId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$gymId = gymId;
    result$data['gymId'] = l$gymId;
    return result$data;
  }

  CopyWith$Variables$Query$GymClassesByCategory<
          Variables$Query$GymClassesByCategory>
      get copyWith => CopyWith$Variables$Query$GymClassesByCategory(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GymClassesByCategory) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$gymId = gymId;
    final lOther$gymId = other.gymId;
    if (l$gymId != lOther$gymId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$gymId = gymId;
    return Object.hashAll([l$gymId]);
  }
}

abstract class CopyWith$Variables$Query$GymClassesByCategory<TRes> {
  factory CopyWith$Variables$Query$GymClassesByCategory(
    Variables$Query$GymClassesByCategory instance,
    TRes Function(Variables$Query$GymClassesByCategory) then,
  ) = _CopyWithImpl$Variables$Query$GymClassesByCategory;

  factory CopyWith$Variables$Query$GymClassesByCategory.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GymClassesByCategory;

  TRes call({String? gymId});
}

class _CopyWithImpl$Variables$Query$GymClassesByCategory<TRes>
    implements CopyWith$Variables$Query$GymClassesByCategory<TRes> {
  _CopyWithImpl$Variables$Query$GymClassesByCategory(
    this._instance,
    this._then,
  );

  final Variables$Query$GymClassesByCategory _instance;

  final TRes Function(Variables$Query$GymClassesByCategory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? gymId = _undefined}) =>
      _then(Variables$Query$GymClassesByCategory._({
        ..._instance._$data,
        if (gymId != _undefined && gymId != null) 'gymId': (gymId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GymClassesByCategory<TRes>
    implements CopyWith$Variables$Query$GymClassesByCategory<TRes> {
  _CopyWithStubImpl$Variables$Query$GymClassesByCategory(this._res);

  TRes _res;

  call({String? gymId}) => _res;
}

class Query$GymClassesByCategory {
  Query$GymClassesByCategory({required this.gymClassesByCategoryV2});

  factory Query$GymClassesByCategory.fromJson(Map<String, dynamic> json) {
    final l$gymClassesByCategoryV2 = json['gymClassesByCategoryV2'];
    return Query$GymClassesByCategory(
        gymClassesByCategoryV2:
            Query$GymClassesByCategory$gymClassesByCategoryV2.fromJson(
                (l$gymClassesByCategoryV2 as Map<String, dynamic>)));
  }

  final Query$GymClassesByCategory$gymClassesByCategoryV2
      gymClassesByCategoryV2;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$gymClassesByCategoryV2 = gymClassesByCategoryV2;
    _resultData['gymClassesByCategoryV2'] = l$gymClassesByCategoryV2.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$gymClassesByCategoryV2 = gymClassesByCategoryV2;
    return Object.hashAll([l$gymClassesByCategoryV2]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GymClassesByCategory) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$gymClassesByCategoryV2 = gymClassesByCategoryV2;
    final lOther$gymClassesByCategoryV2 = other.gymClassesByCategoryV2;
    if (l$gymClassesByCategoryV2 != lOther$gymClassesByCategoryV2) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GymClassesByCategory
    on Query$GymClassesByCategory {
  CopyWith$Query$GymClassesByCategory<Query$GymClassesByCategory>
      get copyWith => CopyWith$Query$GymClassesByCategory(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GymClassesByCategory<TRes> {
  factory CopyWith$Query$GymClassesByCategory(
    Query$GymClassesByCategory instance,
    TRes Function(Query$GymClassesByCategory) then,
  ) = _CopyWithImpl$Query$GymClassesByCategory;

  factory CopyWith$Query$GymClassesByCategory.stub(TRes res) =
      _CopyWithStubImpl$Query$GymClassesByCategory;

  TRes call(
      {Query$GymClassesByCategory$gymClassesByCategoryV2?
          gymClassesByCategoryV2});
  CopyWith$Query$GymClassesByCategory$gymClassesByCategoryV2<TRes>
      get gymClassesByCategoryV2;
}

class _CopyWithImpl$Query$GymClassesByCategory<TRes>
    implements CopyWith$Query$GymClassesByCategory<TRes> {
  _CopyWithImpl$Query$GymClassesByCategory(
    this._instance,
    this._then,
  );

  final Query$GymClassesByCategory _instance;

  final TRes Function(Query$GymClassesByCategory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? gymClassesByCategoryV2 = _undefined}) =>
      _then(Query$GymClassesByCategory(
          gymClassesByCategoryV2: gymClassesByCategoryV2 == _undefined ||
                  gymClassesByCategoryV2 == null
              ? _instance.gymClassesByCategoryV2
              : (gymClassesByCategoryV2
                  as Query$GymClassesByCategory$gymClassesByCategoryV2)));

  CopyWith$Query$GymClassesByCategory$gymClassesByCategoryV2<TRes>
      get gymClassesByCategoryV2 {
    final local$gymClassesByCategoryV2 = _instance.gymClassesByCategoryV2;
    return CopyWith$Query$GymClassesByCategory$gymClassesByCategoryV2(
        local$gymClassesByCategoryV2, (e) => call(gymClassesByCategoryV2: e));
  }
}

class _CopyWithStubImpl$Query$GymClassesByCategory<TRes>
    implements CopyWith$Query$GymClassesByCategory<TRes> {
  _CopyWithStubImpl$Query$GymClassesByCategory(this._res);

  TRes _res;

  call(
          {Query$GymClassesByCategory$gymClassesByCategoryV2?
              gymClassesByCategoryV2}) =>
      _res;

  CopyWith$Query$GymClassesByCategory$gymClassesByCategoryV2<TRes>
      get gymClassesByCategoryV2 =>
          CopyWith$Query$GymClassesByCategory$gymClassesByCategoryV2.stub(_res);
}

const documentNodeQueryGymClassesByCategory = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GymClassesByCategory'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'gymId')),
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
        name: NameNode(value: 'gymClassesByCategoryV2'),
        alias: NameNode(value: 'gymClassesByCategoryV2'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'gymId'),
            value: VariableNode(name: NameNode(value: 'gymId')),
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
                name: NameNode(value: 'categoryId'),
                alias: NameNode(value: 'categoryId'),
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
                name: NameNode(value: 'image'),
                alias: NameNode(value: 'image'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'count'),
                alias: NameNode(value: 'count'),
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
Query$GymClassesByCategory _parserFn$Query$GymClassesByCategory(
        Map<String, dynamic> data) =>
    Query$GymClassesByCategory.fromJson(data);
typedef OnQueryComplete$Query$GymClassesByCategory = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GymClassesByCategory?,
);

class Options$Query$GymClassesByCategory
    extends graphql.QueryOptions<Query$GymClassesByCategory> {
  Options$Query$GymClassesByCategory({
    String? operationName,
    required Variables$Query$GymClassesByCategory variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GymClassesByCategory? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GymClassesByCategory? onComplete,
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
                        : _parserFn$Query$GymClassesByCategory(data),
                  ),
          onError: onError,
          document: documentNodeQueryGymClassesByCategory,
          parserFn: _parserFn$Query$GymClassesByCategory,
        );

  final OnQueryComplete$Query$GymClassesByCategory? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GymClassesByCategory
    extends graphql.WatchQueryOptions<Query$GymClassesByCategory> {
  WatchOptions$Query$GymClassesByCategory({
    String? operationName,
    required Variables$Query$GymClassesByCategory variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GymClassesByCategory? typedOptimisticResult,
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
          document: documentNodeQueryGymClassesByCategory,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GymClassesByCategory,
        );
}

class FetchMoreOptions$Query$GymClassesByCategory
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GymClassesByCategory({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GymClassesByCategory variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGymClassesByCategory,
        );
}

extension ClientExtension$Query$GymClassesByCategory on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GymClassesByCategory>>
      query$GymClassesByCategory(
              Options$Query$GymClassesByCategory options) async =>
          await this.query(options);
  graphql.ObservableQuery<Query$GymClassesByCategory>
      watchQuery$GymClassesByCategory(
              WatchOptions$Query$GymClassesByCategory options) =>
          this.watchQuery(options);
  void writeQuery$GymClassesByCategory({
    required Query$GymClassesByCategory data,
    required Variables$Query$GymClassesByCategory variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryGymClassesByCategory),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GymClassesByCategory? readQuery$GymClassesByCategory({
    required Variables$Query$GymClassesByCategory variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryGymClassesByCategory),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GymClassesByCategory.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GymClassesByCategory>
    useQuery$GymClassesByCategory(Options$Query$GymClassesByCategory options) =>
        graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$GymClassesByCategory>
    useWatchQuery$GymClassesByCategory(
            WatchOptions$Query$GymClassesByCategory options) =>
        graphql_flutter.useWatchQuery(options);

class Query$GymClassesByCategory$Widget
    extends graphql_flutter.Query<Query$GymClassesByCategory> {
  Query$GymClassesByCategory$Widget({
    widgets.Key? key,
    required Options$Query$GymClassesByCategory options,
    required graphql_flutter.QueryBuilder<Query$GymClassesByCategory> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$GymClassesByCategory$gymClassesByCategoryV2 {
  Query$GymClassesByCategory$gymClassesByCategoryV2({this.list});

  factory Query$GymClassesByCategory$gymClassesByCategoryV2.fromJson(
      Map<String, dynamic> json) {
    final l$list = json['list'];
    return Query$GymClassesByCategory$gymClassesByCategoryV2(
        list: (l$list as List<dynamic>?)
            ?.map((e) =>
                Query$GymClassesByCategory$gymClassesByCategoryV2$list.fromJson(
                    (e as Map<String, dynamic>)))
            .toList());
  }

  final List<Query$GymClassesByCategory$gymClassesByCategoryV2$list>? list;

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
    if (!(other is Query$GymClassesByCategory$gymClassesByCategoryV2) ||
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

extension UtilityExtension$Query$GymClassesByCategory$gymClassesByCategoryV2
    on Query$GymClassesByCategory$gymClassesByCategoryV2 {
  CopyWith$Query$GymClassesByCategory$gymClassesByCategoryV2<
          Query$GymClassesByCategory$gymClassesByCategoryV2>
      get copyWith =>
          CopyWith$Query$GymClassesByCategory$gymClassesByCategoryV2(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GymClassesByCategory$gymClassesByCategoryV2<
    TRes> {
  factory CopyWith$Query$GymClassesByCategory$gymClassesByCategoryV2(
    Query$GymClassesByCategory$gymClassesByCategoryV2 instance,
    TRes Function(Query$GymClassesByCategory$gymClassesByCategoryV2) then,
  ) = _CopyWithImpl$Query$GymClassesByCategory$gymClassesByCategoryV2;

  factory CopyWith$Query$GymClassesByCategory$gymClassesByCategoryV2.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GymClassesByCategory$gymClassesByCategoryV2;

  TRes call(
      {List<Query$GymClassesByCategory$gymClassesByCategoryV2$list>? list});
  TRes list(
      Iterable<Query$GymClassesByCategory$gymClassesByCategoryV2$list>? Function(
              Iterable<
                  CopyWith$Query$GymClassesByCategory$gymClassesByCategoryV2$list<
                      Query$GymClassesByCategory$gymClassesByCategoryV2$list>>?)
          _fn);
}

class _CopyWithImpl$Query$GymClassesByCategory$gymClassesByCategoryV2<TRes>
    implements
        CopyWith$Query$GymClassesByCategory$gymClassesByCategoryV2<TRes> {
  _CopyWithImpl$Query$GymClassesByCategory$gymClassesByCategoryV2(
    this._instance,
    this._then,
  );

  final Query$GymClassesByCategory$gymClassesByCategoryV2 _instance;

  final TRes Function(Query$GymClassesByCategory$gymClassesByCategoryV2) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? list = _undefined}) =>
      _then(Query$GymClassesByCategory$gymClassesByCategoryV2(
          list: list == _undefined
              ? _instance.list
              : (list as List<
                  Query$GymClassesByCategory$gymClassesByCategoryV2$list>?)));

  TRes list(
          Iterable<Query$GymClassesByCategory$gymClassesByCategoryV2$list>? Function(
                  Iterable<
                      CopyWith$Query$GymClassesByCategory$gymClassesByCategoryV2$list<
                          Query$GymClassesByCategory$gymClassesByCategoryV2$list>>?)
              _fn) =>
      call(
          list: _fn(_instance.list?.map((e) =>
              CopyWith$Query$GymClassesByCategory$gymClassesByCategoryV2$list(
                e,
                (i) => i,
              )))?.toList());
}

class _CopyWithStubImpl$Query$GymClassesByCategory$gymClassesByCategoryV2<TRes>
    implements
        CopyWith$Query$GymClassesByCategory$gymClassesByCategoryV2<TRes> {
  _CopyWithStubImpl$Query$GymClassesByCategory$gymClassesByCategoryV2(
      this._res);

  TRes _res;

  call({List<Query$GymClassesByCategory$gymClassesByCategoryV2$list>? list}) =>
      _res;

  list(_fn) => _res;
}

class Query$GymClassesByCategory$gymClassesByCategoryV2$list {
  Query$GymClassesByCategory$gymClassesByCategoryV2$list({
    required this.categoryId,
    required this.categoryName,
    this.image,
    required this.count,
  });

  factory Query$GymClassesByCategory$gymClassesByCategoryV2$list.fromJson(
      Map<String, dynamic> json) {
    final l$categoryId = json['categoryId'];
    final l$categoryName = json['categoryName'];
    final l$image = json['image'];
    final l$count = json['count'];
    return Query$GymClassesByCategory$gymClassesByCategoryV2$list(
      categoryId: (l$categoryId as String),
      categoryName: (l$categoryName as String),
      image: (l$image as String?),
      count: (l$count as int),
    );
  }

  final String categoryId;

  final String categoryName;

  final String? image;

  final int count;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$categoryId = categoryId;
    _resultData['categoryId'] = l$categoryId;
    final l$categoryName = categoryName;
    _resultData['categoryName'] = l$categoryName;
    final l$image = image;
    _resultData['image'] = l$image;
    final l$count = count;
    _resultData['count'] = l$count;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$categoryId = categoryId;
    final l$categoryName = categoryName;
    final l$image = image;
    final l$count = count;
    return Object.hashAll([
      l$categoryId,
      l$categoryName,
      l$image,
      l$count,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GymClassesByCategory$gymClassesByCategoryV2$list) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$categoryId = categoryId;
    final lOther$categoryId = other.categoryId;
    if (l$categoryId != lOther$categoryId) {
      return false;
    }
    final l$categoryName = categoryName;
    final lOther$categoryName = other.categoryName;
    if (l$categoryName != lOther$categoryName) {
      return false;
    }
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) {
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

extension UtilityExtension$Query$GymClassesByCategory$gymClassesByCategoryV2$list
    on Query$GymClassesByCategory$gymClassesByCategoryV2$list {
  CopyWith$Query$GymClassesByCategory$gymClassesByCategoryV2$list<
          Query$GymClassesByCategory$gymClassesByCategoryV2$list>
      get copyWith =>
          CopyWith$Query$GymClassesByCategory$gymClassesByCategoryV2$list(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GymClassesByCategory$gymClassesByCategoryV2$list<
    TRes> {
  factory CopyWith$Query$GymClassesByCategory$gymClassesByCategoryV2$list(
    Query$GymClassesByCategory$gymClassesByCategoryV2$list instance,
    TRes Function(Query$GymClassesByCategory$gymClassesByCategoryV2$list) then,
  ) = _CopyWithImpl$Query$GymClassesByCategory$gymClassesByCategoryV2$list;

  factory CopyWith$Query$GymClassesByCategory$gymClassesByCategoryV2$list.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GymClassesByCategory$gymClassesByCategoryV2$list;

  TRes call({
    String? categoryId,
    String? categoryName,
    String? image,
    int? count,
  });
}

class _CopyWithImpl$Query$GymClassesByCategory$gymClassesByCategoryV2$list<TRes>
    implements
        CopyWith$Query$GymClassesByCategory$gymClassesByCategoryV2$list<TRes> {
  _CopyWithImpl$Query$GymClassesByCategory$gymClassesByCategoryV2$list(
    this._instance,
    this._then,
  );

  final Query$GymClassesByCategory$gymClassesByCategoryV2$list _instance;

  final TRes Function(Query$GymClassesByCategory$gymClassesByCategoryV2$list)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? categoryId = _undefined,
    Object? categoryName = _undefined,
    Object? image = _undefined,
    Object? count = _undefined,
  }) =>
      _then(Query$GymClassesByCategory$gymClassesByCategoryV2$list(
        categoryId: categoryId == _undefined || categoryId == null
            ? _instance.categoryId
            : (categoryId as String),
        categoryName: categoryName == _undefined || categoryName == null
            ? _instance.categoryName
            : (categoryName as String),
        image: image == _undefined ? _instance.image : (image as String?),
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
      ));
}

class _CopyWithStubImpl$Query$GymClassesByCategory$gymClassesByCategoryV2$list<
        TRes>
    implements
        CopyWith$Query$GymClassesByCategory$gymClassesByCategoryV2$list<TRes> {
  _CopyWithStubImpl$Query$GymClassesByCategory$gymClassesByCategoryV2$list(
      this._res);

  TRes _res;

  call({
    String? categoryId,
    String? categoryName,
    String? image,
    int? count,
  }) =>
      _res;
}
