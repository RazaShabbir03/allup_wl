import '../../schema.graphql.dart';
import 'dart:async';
import 'package:allup_user_app/scalars.dart';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$ScheduledGymClasses {
  factory Variables$Query$ScheduledGymClasses({
    required Input$PaginatorInput paging,
    required Input$GymClassesScheduledInputV2 params,
  }) =>
      Variables$Query$ScheduledGymClasses._({
        r'paging': paging,
        r'params': params,
      });

  Variables$Query$ScheduledGymClasses._(this._$data);

  factory Variables$Query$ScheduledGymClasses.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$paging = data['paging'];
    result$data['paging'] =
        Input$PaginatorInput.fromJson((l$paging as Map<String, dynamic>));
    final l$params = data['params'];
    result$data['params'] = Input$GymClassesScheduledInputV2.fromJson(
        (l$params as Map<String, dynamic>));
    return Variables$Query$ScheduledGymClasses._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$PaginatorInput get paging => (_$data['paging'] as Input$PaginatorInput);

  Input$GymClassesScheduledInputV2 get params =>
      (_$data['params'] as Input$GymClassesScheduledInputV2);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$paging = paging;
    result$data['paging'] = l$paging.toJson();
    final l$params = params;
    result$data['params'] = l$params.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$ScheduledGymClasses<
          Variables$Query$ScheduledGymClasses>
      get copyWith => CopyWith$Variables$Query$ScheduledGymClasses(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$ScheduledGymClasses) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$paging = paging;
    final lOther$paging = other.paging;
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
      l$paging,
      l$params,
    ]);
  }
}

abstract class CopyWith$Variables$Query$ScheduledGymClasses<TRes> {
  factory CopyWith$Variables$Query$ScheduledGymClasses(
    Variables$Query$ScheduledGymClasses instance,
    TRes Function(Variables$Query$ScheduledGymClasses) then,
  ) = _CopyWithImpl$Variables$Query$ScheduledGymClasses;

  factory CopyWith$Variables$Query$ScheduledGymClasses.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$ScheduledGymClasses;

  TRes call({
    Input$PaginatorInput? paging,
    Input$GymClassesScheduledInputV2? params,
  });
}

class _CopyWithImpl$Variables$Query$ScheduledGymClasses<TRes>
    implements CopyWith$Variables$Query$ScheduledGymClasses<TRes> {
  _CopyWithImpl$Variables$Query$ScheduledGymClasses(
    this._instance,
    this._then,
  );

  final Variables$Query$ScheduledGymClasses _instance;

  final TRes Function(Variables$Query$ScheduledGymClasses) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? paging = _undefined,
    Object? params = _undefined,
  }) =>
      _then(Variables$Query$ScheduledGymClasses._({
        ..._instance._$data,
        if (paging != _undefined && paging != null)
          'paging': (paging as Input$PaginatorInput),
        if (params != _undefined && params != null)
          'params': (params as Input$GymClassesScheduledInputV2),
      }));
}

class _CopyWithStubImpl$Variables$Query$ScheduledGymClasses<TRes>
    implements CopyWith$Variables$Query$ScheduledGymClasses<TRes> {
  _CopyWithStubImpl$Variables$Query$ScheduledGymClasses(this._res);

  TRes _res;

  call({
    Input$PaginatorInput? paging,
    Input$GymClassesScheduledInputV2? params,
  }) =>
      _res;
}

class Query$ScheduledGymClasses {
  Query$ScheduledGymClasses({required this.gymClassesScheduledV2});

  factory Query$ScheduledGymClasses.fromJson(Map<String, dynamic> json) {
    final l$gymClassesScheduledV2 = json['gymClassesScheduledV2'];
    return Query$ScheduledGymClasses(
        gymClassesScheduledV2:
            Query$ScheduledGymClasses$gymClassesScheduledV2.fromJson(
                (l$gymClassesScheduledV2 as Map<String, dynamic>)));
  }

  final Query$ScheduledGymClasses$gymClassesScheduledV2 gymClassesScheduledV2;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$gymClassesScheduledV2 = gymClassesScheduledV2;
    _resultData['gymClassesScheduledV2'] = l$gymClassesScheduledV2.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$gymClassesScheduledV2 = gymClassesScheduledV2;
    return Object.hashAll([l$gymClassesScheduledV2]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$ScheduledGymClasses) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$gymClassesScheduledV2 = gymClassesScheduledV2;
    final lOther$gymClassesScheduledV2 = other.gymClassesScheduledV2;
    if (l$gymClassesScheduledV2 != lOther$gymClassesScheduledV2) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$ScheduledGymClasses
    on Query$ScheduledGymClasses {
  CopyWith$Query$ScheduledGymClasses<Query$ScheduledGymClasses> get copyWith =>
      CopyWith$Query$ScheduledGymClasses(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ScheduledGymClasses<TRes> {
  factory CopyWith$Query$ScheduledGymClasses(
    Query$ScheduledGymClasses instance,
    TRes Function(Query$ScheduledGymClasses) then,
  ) = _CopyWithImpl$Query$ScheduledGymClasses;

  factory CopyWith$Query$ScheduledGymClasses.stub(TRes res) =
      _CopyWithStubImpl$Query$ScheduledGymClasses;

  TRes call(
      {Query$ScheduledGymClasses$gymClassesScheduledV2? gymClassesScheduledV2});
  CopyWith$Query$ScheduledGymClasses$gymClassesScheduledV2<TRes>
      get gymClassesScheduledV2;
}

class _CopyWithImpl$Query$ScheduledGymClasses<TRes>
    implements CopyWith$Query$ScheduledGymClasses<TRes> {
  _CopyWithImpl$Query$ScheduledGymClasses(
    this._instance,
    this._then,
  );

  final Query$ScheduledGymClasses _instance;

  final TRes Function(Query$ScheduledGymClasses) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? gymClassesScheduledV2 = _undefined}) =>
      _then(Query$ScheduledGymClasses(
          gymClassesScheduledV2: gymClassesScheduledV2 == _undefined ||
                  gymClassesScheduledV2 == null
              ? _instance.gymClassesScheduledV2
              : (gymClassesScheduledV2
                  as Query$ScheduledGymClasses$gymClassesScheduledV2)));

  CopyWith$Query$ScheduledGymClasses$gymClassesScheduledV2<TRes>
      get gymClassesScheduledV2 {
    final local$gymClassesScheduledV2 = _instance.gymClassesScheduledV2;
    return CopyWith$Query$ScheduledGymClasses$gymClassesScheduledV2(
        local$gymClassesScheduledV2, (e) => call(gymClassesScheduledV2: e));
  }
}

class _CopyWithStubImpl$Query$ScheduledGymClasses<TRes>
    implements CopyWith$Query$ScheduledGymClasses<TRes> {
  _CopyWithStubImpl$Query$ScheduledGymClasses(this._res);

  TRes _res;

  call(
          {Query$ScheduledGymClasses$gymClassesScheduledV2?
              gymClassesScheduledV2}) =>
      _res;

  CopyWith$Query$ScheduledGymClasses$gymClassesScheduledV2<TRes>
      get gymClassesScheduledV2 =>
          CopyWith$Query$ScheduledGymClasses$gymClassesScheduledV2.stub(_res);
}

const documentNodeQueryScheduledGymClasses = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'ScheduledGymClasses'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'paging')),
        type: NamedTypeNode(
          name: NameNode(value: 'PaginatorInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'params')),
        type: NamedTypeNode(
          name: NameNode(value: 'GymClassesScheduledInputV2'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'gymClassesScheduledV2'),
        alias: NameNode(value: 'gymClassesScheduledV2'),
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
                name: NameNode(value: 'name'),
                alias: NameNode(value: 'name'),
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
                name: NameNode(value: 'description'),
                alias: NameNode(value: 'description'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'scheduleGroupId'),
                alias: NameNode(value: 'scheduleGroupId'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'scheduleId'),
                alias: NameNode(value: 'scheduleId'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'gymMemberClientPrice'),
                alias: NameNode(value: 'gymMemberClientPrice'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'dropInClientPrice'),
                alias: NameNode(value: 'dropInClientPrice'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'currencyCode'),
                alias: NameNode(value: 'currencyCode'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'gymName'),
                alias: NameNode(value: 'gymName'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'gymId'),
                alias: NameNode(value: 'gymId'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'brandName'),
                alias: NameNode(value: 'brandName'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'images'),
                alias: NameNode(value: 'images'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'difficultyLevel'),
                alias: NameNode(value: 'difficultyLevel'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'estimatedCaloriesBurnt'),
                alias: NameNode(value: 'estimatedCaloriesBurnt'),
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
                name: NameNode(value: 'startTime'),
                alias: NameNode(value: 'startTime'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'endTime'),
                alias: NameNode(value: 'endTime'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'spotsCapacity'),
                alias: NameNode(value: 'spotsCapacity'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'spotsAllotted'),
                alias: NameNode(value: 'spotsAllotted'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'instructorFirstName'),
                alias: NameNode(value: 'instructorFirstName'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'instructorLastName'),
                alias: NameNode(value: 'instructorLastName'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'date'),
                alias: NameNode(value: 'date'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'openTime'),
                alias: NameNode(value: 'openTime'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'duration'),
                alias: NameNode(value: 'duration'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'gymStudioId'),
                alias: NameNode(value: 'gymStudioId'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'soldOut'),
                alias: NameNode(value: 'soldOut'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'isAttended'),
                alias: NameNode(value: 'isAttended'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'isAttendable'),
                alias: NameNode(value: 'isAttendable'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'isPurchased'),
                alias: NameNode(value: 'isPurchased'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'isCancellable'),
                alias: NameNode(value: 'isCancellable'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'isExpired'),
                alias: NameNode(value: 'isExpired'),
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
Query$ScheduledGymClasses _parserFn$Query$ScheduledGymClasses(
        Map<String, dynamic> data) =>
    Query$ScheduledGymClasses.fromJson(data);
typedef OnQueryComplete$Query$ScheduledGymClasses = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$ScheduledGymClasses?,
);

class Options$Query$ScheduledGymClasses
    extends graphql.QueryOptions<Query$ScheduledGymClasses> {
  Options$Query$ScheduledGymClasses({
    String? operationName,
    required Variables$Query$ScheduledGymClasses variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ScheduledGymClasses? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$ScheduledGymClasses? onComplete,
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
                        : _parserFn$Query$ScheduledGymClasses(data),
                  ),
          onError: onError,
          document: documentNodeQueryScheduledGymClasses,
          parserFn: _parserFn$Query$ScheduledGymClasses,
        );

  final OnQueryComplete$Query$ScheduledGymClasses? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$ScheduledGymClasses
    extends graphql.WatchQueryOptions<Query$ScheduledGymClasses> {
  WatchOptions$Query$ScheduledGymClasses({
    String? operationName,
    required Variables$Query$ScheduledGymClasses variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ScheduledGymClasses? typedOptimisticResult,
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
          document: documentNodeQueryScheduledGymClasses,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$ScheduledGymClasses,
        );
}

class FetchMoreOptions$Query$ScheduledGymClasses
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$ScheduledGymClasses({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$ScheduledGymClasses variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryScheduledGymClasses,
        );
}

extension ClientExtension$Query$ScheduledGymClasses on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$ScheduledGymClasses>>
      query$ScheduledGymClasses(
              Options$Query$ScheduledGymClasses options) async =>
          await this.query(options);
  graphql.ObservableQuery<Query$ScheduledGymClasses>
      watchQuery$ScheduledGymClasses(
              WatchOptions$Query$ScheduledGymClasses options) =>
          this.watchQuery(options);
  void writeQuery$ScheduledGymClasses({
    required Query$ScheduledGymClasses data,
    required Variables$Query$ScheduledGymClasses variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryScheduledGymClasses),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$ScheduledGymClasses? readQuery$ScheduledGymClasses({
    required Variables$Query$ScheduledGymClasses variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryScheduledGymClasses),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$ScheduledGymClasses.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$ScheduledGymClasses>
    useQuery$ScheduledGymClasses(Options$Query$ScheduledGymClasses options) =>
        graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$ScheduledGymClasses>
    useWatchQuery$ScheduledGymClasses(
            WatchOptions$Query$ScheduledGymClasses options) =>
        graphql_flutter.useWatchQuery(options);

class Query$ScheduledGymClasses$Widget
    extends graphql_flutter.Query<Query$ScheduledGymClasses> {
  Query$ScheduledGymClasses$Widget({
    widgets.Key? key,
    required Options$Query$ScheduledGymClasses options,
    required graphql_flutter.QueryBuilder<Query$ScheduledGymClasses> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$ScheduledGymClasses$gymClassesScheduledV2 {
  Query$ScheduledGymClasses$gymClassesScheduledV2({this.list});

  factory Query$ScheduledGymClasses$gymClassesScheduledV2.fromJson(
      Map<String, dynamic> json) {
    final l$list = json['list'];
    return Query$ScheduledGymClasses$gymClassesScheduledV2(
        list: (l$list as List<dynamic>?)
            ?.map((e) =>
                Query$ScheduledGymClasses$gymClassesScheduledV2$list.fromJson(
                    (e as Map<String, dynamic>)))
            .toList());
  }

  final List<Query$ScheduledGymClasses$gymClassesScheduledV2$list>? list;

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
    if (!(other is Query$ScheduledGymClasses$gymClassesScheduledV2) ||
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

extension UtilityExtension$Query$ScheduledGymClasses$gymClassesScheduledV2
    on Query$ScheduledGymClasses$gymClassesScheduledV2 {
  CopyWith$Query$ScheduledGymClasses$gymClassesScheduledV2<
          Query$ScheduledGymClasses$gymClassesScheduledV2>
      get copyWith => CopyWith$Query$ScheduledGymClasses$gymClassesScheduledV2(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ScheduledGymClasses$gymClassesScheduledV2<TRes> {
  factory CopyWith$Query$ScheduledGymClasses$gymClassesScheduledV2(
    Query$ScheduledGymClasses$gymClassesScheduledV2 instance,
    TRes Function(Query$ScheduledGymClasses$gymClassesScheduledV2) then,
  ) = _CopyWithImpl$Query$ScheduledGymClasses$gymClassesScheduledV2;

  factory CopyWith$Query$ScheduledGymClasses$gymClassesScheduledV2.stub(
          TRes res) =
      _CopyWithStubImpl$Query$ScheduledGymClasses$gymClassesScheduledV2;

  TRes call({List<Query$ScheduledGymClasses$gymClassesScheduledV2$list>? list});
  TRes list(
      Iterable<Query$ScheduledGymClasses$gymClassesScheduledV2$list>? Function(
              Iterable<
                  CopyWith$Query$ScheduledGymClasses$gymClassesScheduledV2$list<
                      Query$ScheduledGymClasses$gymClassesScheduledV2$list>>?)
          _fn);
}

class _CopyWithImpl$Query$ScheduledGymClasses$gymClassesScheduledV2<TRes>
    implements CopyWith$Query$ScheduledGymClasses$gymClassesScheduledV2<TRes> {
  _CopyWithImpl$Query$ScheduledGymClasses$gymClassesScheduledV2(
    this._instance,
    this._then,
  );

  final Query$ScheduledGymClasses$gymClassesScheduledV2 _instance;

  final TRes Function(Query$ScheduledGymClasses$gymClassesScheduledV2) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? list = _undefined}) =>
      _then(Query$ScheduledGymClasses$gymClassesScheduledV2(
          list: list == _undefined
              ? _instance.list
              : (list as List<
                  Query$ScheduledGymClasses$gymClassesScheduledV2$list>?)));

  TRes list(
          Iterable<Query$ScheduledGymClasses$gymClassesScheduledV2$list>? Function(
                  Iterable<
                      CopyWith$Query$ScheduledGymClasses$gymClassesScheduledV2$list<
                          Query$ScheduledGymClasses$gymClassesScheduledV2$list>>?)
              _fn) =>
      call(
          list: _fn(_instance.list?.map((e) =>
              CopyWith$Query$ScheduledGymClasses$gymClassesScheduledV2$list(
                e,
                (i) => i,
              )))?.toList());
}

class _CopyWithStubImpl$Query$ScheduledGymClasses$gymClassesScheduledV2<TRes>
    implements CopyWith$Query$ScheduledGymClasses$gymClassesScheduledV2<TRes> {
  _CopyWithStubImpl$Query$ScheduledGymClasses$gymClassesScheduledV2(this._res);

  TRes _res;

  call({List<Query$ScheduledGymClasses$gymClassesScheduledV2$list>? list}) =>
      _res;

  list(_fn) => _res;
}

class Query$ScheduledGymClasses$gymClassesScheduledV2$list {
  Query$ScheduledGymClasses$gymClassesScheduledV2$list({
    required this.id,
    required this.name,
    this.categoryName,
    this.description,
    required this.scheduleGroupId,
    required this.scheduleId,
    this.gymMemberClientPrice,
    this.dropInClientPrice,
    this.currencyCode,
    this.gymName,
    required this.gymId,
    this.brandName,
    this.images,
    this.difficultyLevel,
    this.estimatedCaloriesBurnt,
    this.status,
    this.startTime,
    this.endTime,
    this.spotsCapacity,
    this.spotsAllotted,
    this.instructorFirstName,
    this.instructorLastName,
    required this.date,
    required this.openTime,
    required this.duration,
    this.gymStudioId,
    this.soldOut,
    this.isAttended,
    this.isAttendable,
    this.isPurchased,
    this.isCancellable,
    this.isExpired,
  });

  factory Query$ScheduledGymClasses$gymClassesScheduledV2$list.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$categoryName = json['categoryName'];
    final l$description = json['description'];
    final l$scheduleGroupId = json['scheduleGroupId'];
    final l$scheduleId = json['scheduleId'];
    final l$gymMemberClientPrice = json['gymMemberClientPrice'];
    final l$dropInClientPrice = json['dropInClientPrice'];
    final l$currencyCode = json['currencyCode'];
    final l$gymName = json['gymName'];
    final l$gymId = json['gymId'];
    final l$brandName = json['brandName'];
    final l$images = json['images'];
    final l$difficultyLevel = json['difficultyLevel'];
    final l$estimatedCaloriesBurnt = json['estimatedCaloriesBurnt'];
    final l$status = json['status'];
    final l$startTime = json['startTime'];
    final l$endTime = json['endTime'];
    final l$spotsCapacity = json['spotsCapacity'];
    final l$spotsAllotted = json['spotsAllotted'];
    final l$instructorFirstName = json['instructorFirstName'];
    final l$instructorLastName = json['instructorLastName'];
    final l$date = json['date'];
    final l$openTime = json['openTime'];
    final l$duration = json['duration'];
    final l$gymStudioId = json['gymStudioId'];
    final l$soldOut = json['soldOut'];
    final l$isAttended = json['isAttended'];
    final l$isAttendable = json['isAttendable'];
    final l$isPurchased = json['isPurchased'];
    final l$isCancellable = json['isCancellable'];
    final l$isExpired = json['isExpired'];
    return Query$ScheduledGymClasses$gymClassesScheduledV2$list(
      id: (l$id as String),
      name: (l$name as String),
      categoryName: (l$categoryName as String?),
      description: (l$description as String?),
      scheduleGroupId: (l$scheduleGroupId as String),
      scheduleId: (l$scheduleId as String),
      gymMemberClientPrice: l$gymMemberClientPrice == null
          ? null
          : currencyValueFromJson(l$gymMemberClientPrice),
      dropInClientPrice: l$dropInClientPrice == null
          ? null
          : currencyValueFromJson(l$dropInClientPrice),
      currencyCode: (l$currencyCode as String?),
      gymName: (l$gymName as String?),
      gymId: (l$gymId as String),
      brandName: (l$brandName as String?),
      images: (l$images as List<dynamic>?)?.map((e) => (e as String?)).toList(),
      difficultyLevel: l$difficultyLevel == null
          ? null
          : fromJson$Enum$DifficultyLevel((l$difficultyLevel as String)),
      estimatedCaloriesBurnt: (l$estimatedCaloriesBurnt as String?),
      status: l$status == null
          ? null
          : fromJson$Enum$GlobalStatusType((l$status as String)),
      startTime: (l$startTime as String?),
      endTime: (l$endTime as String?),
      spotsCapacity: (l$spotsCapacity as int?),
      spotsAllotted: (l$spotsAllotted as int?),
      instructorFirstName: (l$instructorFirstName as String?),
      instructorLastName: (l$instructorLastName as String?),
      date: (l$date as String),
      openTime: (l$openTime as String),
      duration: (l$duration as num).toDouble(),
      gymStudioId: (l$gymStudioId as String?),
      soldOut: (l$soldOut as bool?),
      isAttended: (l$isAttended as bool?),
      isAttendable: (l$isAttendable as bool?),
      isPurchased: (l$isPurchased as bool?),
      isCancellable: (l$isCancellable as bool?),
      isExpired: (l$isExpired as bool?),
    );
  }

  final String id;

  final String name;

  final String? categoryName;

  final String? description;

  final String scheduleGroupId;

  final String scheduleId;

  final CurrencyValue? gymMemberClientPrice;

  final CurrencyValue? dropInClientPrice;

  final String? currencyCode;

  final String? gymName;

  final String gymId;

  final String? brandName;

  final List<String?>? images;

  final Enum$DifficultyLevel? difficultyLevel;

  final String? estimatedCaloriesBurnt;

  final Enum$GlobalStatusType? status;

  final String? startTime;

  final String? endTime;

  final int? spotsCapacity;

  final int? spotsAllotted;

  final String? instructorFirstName;

  final String? instructorLastName;

  final String date;

  final String openTime;

  final double duration;

  final String? gymStudioId;

  final bool? soldOut;

  final bool? isAttended;

  final bool? isAttendable;

  final bool? isPurchased;

  final bool? isCancellable;

  final bool? isExpired;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$categoryName = categoryName;
    _resultData['categoryName'] = l$categoryName;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$scheduleGroupId = scheduleGroupId;
    _resultData['scheduleGroupId'] = l$scheduleGroupId;
    final l$scheduleId = scheduleId;
    _resultData['scheduleId'] = l$scheduleId;
    final l$gymMemberClientPrice = gymMemberClientPrice;
    _resultData['gymMemberClientPrice'] = l$gymMemberClientPrice == null
        ? null
        : currencyValueToJson(l$gymMemberClientPrice);
    final l$dropInClientPrice = dropInClientPrice;
    _resultData['dropInClientPrice'] = l$dropInClientPrice == null
        ? null
        : currencyValueToJson(l$dropInClientPrice);
    final l$currencyCode = currencyCode;
    _resultData['currencyCode'] = l$currencyCode;
    final l$gymName = gymName;
    _resultData['gymName'] = l$gymName;
    final l$gymId = gymId;
    _resultData['gymId'] = l$gymId;
    final l$brandName = brandName;
    _resultData['brandName'] = l$brandName;
    final l$images = images;
    _resultData['images'] = l$images?.map((e) => e).toList();
    final l$difficultyLevel = difficultyLevel;
    _resultData['difficultyLevel'] = l$difficultyLevel == null
        ? null
        : toJson$Enum$DifficultyLevel(l$difficultyLevel);
    final l$estimatedCaloriesBurnt = estimatedCaloriesBurnt;
    _resultData['estimatedCaloriesBurnt'] = l$estimatedCaloriesBurnt;
    final l$status = status;
    _resultData['status'] =
        l$status == null ? null : toJson$Enum$GlobalStatusType(l$status);
    final l$startTime = startTime;
    _resultData['startTime'] = l$startTime;
    final l$endTime = endTime;
    _resultData['endTime'] = l$endTime;
    final l$spotsCapacity = spotsCapacity;
    _resultData['spotsCapacity'] = l$spotsCapacity;
    final l$spotsAllotted = spotsAllotted;
    _resultData['spotsAllotted'] = l$spotsAllotted;
    final l$instructorFirstName = instructorFirstName;
    _resultData['instructorFirstName'] = l$instructorFirstName;
    final l$instructorLastName = instructorLastName;
    _resultData['instructorLastName'] = l$instructorLastName;
    final l$date = date;
    _resultData['date'] = l$date;
    final l$openTime = openTime;
    _resultData['openTime'] = l$openTime;
    final l$duration = duration;
    _resultData['duration'] = l$duration;
    final l$gymStudioId = gymStudioId;
    _resultData['gymStudioId'] = l$gymStudioId;
    final l$soldOut = soldOut;
    _resultData['soldOut'] = l$soldOut;
    final l$isAttended = isAttended;
    _resultData['isAttended'] = l$isAttended;
    final l$isAttendable = isAttendable;
    _resultData['isAttendable'] = l$isAttendable;
    final l$isPurchased = isPurchased;
    _resultData['isPurchased'] = l$isPurchased;
    final l$isCancellable = isCancellable;
    _resultData['isCancellable'] = l$isCancellable;
    final l$isExpired = isExpired;
    _resultData['isExpired'] = l$isExpired;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$categoryName = categoryName;
    final l$description = description;
    final l$scheduleGroupId = scheduleGroupId;
    final l$scheduleId = scheduleId;
    final l$gymMemberClientPrice = gymMemberClientPrice;
    final l$dropInClientPrice = dropInClientPrice;
    final l$currencyCode = currencyCode;
    final l$gymName = gymName;
    final l$gymId = gymId;
    final l$brandName = brandName;
    final l$images = images;
    final l$difficultyLevel = difficultyLevel;
    final l$estimatedCaloriesBurnt = estimatedCaloriesBurnt;
    final l$status = status;
    final l$startTime = startTime;
    final l$endTime = endTime;
    final l$spotsCapacity = spotsCapacity;
    final l$spotsAllotted = spotsAllotted;
    final l$instructorFirstName = instructorFirstName;
    final l$instructorLastName = instructorLastName;
    final l$date = date;
    final l$openTime = openTime;
    final l$duration = duration;
    final l$gymStudioId = gymStudioId;
    final l$soldOut = soldOut;
    final l$isAttended = isAttended;
    final l$isAttendable = isAttendable;
    final l$isPurchased = isPurchased;
    final l$isCancellable = isCancellable;
    final l$isExpired = isExpired;
    return Object.hashAll([
      l$id,
      l$name,
      l$categoryName,
      l$description,
      l$scheduleGroupId,
      l$scheduleId,
      l$gymMemberClientPrice,
      l$dropInClientPrice,
      l$currencyCode,
      l$gymName,
      l$gymId,
      l$brandName,
      l$images == null ? null : Object.hashAll(l$images.map((v) => v)),
      l$difficultyLevel,
      l$estimatedCaloriesBurnt,
      l$status,
      l$startTime,
      l$endTime,
      l$spotsCapacity,
      l$spotsAllotted,
      l$instructorFirstName,
      l$instructorLastName,
      l$date,
      l$openTime,
      l$duration,
      l$gymStudioId,
      l$soldOut,
      l$isAttended,
      l$isAttendable,
      l$isPurchased,
      l$isCancellable,
      l$isExpired,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$ScheduledGymClasses$gymClassesScheduledV2$list) ||
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
    final l$categoryName = categoryName;
    final lOther$categoryName = other.categoryName;
    if (l$categoryName != lOther$categoryName) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$scheduleGroupId = scheduleGroupId;
    final lOther$scheduleGroupId = other.scheduleGroupId;
    if (l$scheduleGroupId != lOther$scheduleGroupId) {
      return false;
    }
    final l$scheduleId = scheduleId;
    final lOther$scheduleId = other.scheduleId;
    if (l$scheduleId != lOther$scheduleId) {
      return false;
    }
    final l$gymMemberClientPrice = gymMemberClientPrice;
    final lOther$gymMemberClientPrice = other.gymMemberClientPrice;
    if (l$gymMemberClientPrice != lOther$gymMemberClientPrice) {
      return false;
    }
    final l$dropInClientPrice = dropInClientPrice;
    final lOther$dropInClientPrice = other.dropInClientPrice;
    if (l$dropInClientPrice != lOther$dropInClientPrice) {
      return false;
    }
    final l$currencyCode = currencyCode;
    final lOther$currencyCode = other.currencyCode;
    if (l$currencyCode != lOther$currencyCode) {
      return false;
    }
    final l$gymName = gymName;
    final lOther$gymName = other.gymName;
    if (l$gymName != lOther$gymName) {
      return false;
    }
    final l$gymId = gymId;
    final lOther$gymId = other.gymId;
    if (l$gymId != lOther$gymId) {
      return false;
    }
    final l$brandName = brandName;
    final lOther$brandName = other.brandName;
    if (l$brandName != lOther$brandName) {
      return false;
    }
    final l$images = images;
    final lOther$images = other.images;
    if (l$images != null && lOther$images != null) {
      if (l$images.length != lOther$images.length) {
        return false;
      }
      for (int i = 0; i < l$images.length; i++) {
        final l$images$entry = l$images[i];
        final lOther$images$entry = lOther$images[i];
        if (l$images$entry != lOther$images$entry) {
          return false;
        }
      }
    } else if (l$images != lOther$images) {
      return false;
    }
    final l$difficultyLevel = difficultyLevel;
    final lOther$difficultyLevel = other.difficultyLevel;
    if (l$difficultyLevel != lOther$difficultyLevel) {
      return false;
    }
    final l$estimatedCaloriesBurnt = estimatedCaloriesBurnt;
    final lOther$estimatedCaloriesBurnt = other.estimatedCaloriesBurnt;
    if (l$estimatedCaloriesBurnt != lOther$estimatedCaloriesBurnt) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$startTime = startTime;
    final lOther$startTime = other.startTime;
    if (l$startTime != lOther$startTime) {
      return false;
    }
    final l$endTime = endTime;
    final lOther$endTime = other.endTime;
    if (l$endTime != lOther$endTime) {
      return false;
    }
    final l$spotsCapacity = spotsCapacity;
    final lOther$spotsCapacity = other.spotsCapacity;
    if (l$spotsCapacity != lOther$spotsCapacity) {
      return false;
    }
    final l$spotsAllotted = spotsAllotted;
    final lOther$spotsAllotted = other.spotsAllotted;
    if (l$spotsAllotted != lOther$spotsAllotted) {
      return false;
    }
    final l$instructorFirstName = instructorFirstName;
    final lOther$instructorFirstName = other.instructorFirstName;
    if (l$instructorFirstName != lOther$instructorFirstName) {
      return false;
    }
    final l$instructorLastName = instructorLastName;
    final lOther$instructorLastName = other.instructorLastName;
    if (l$instructorLastName != lOther$instructorLastName) {
      return false;
    }
    final l$date = date;
    final lOther$date = other.date;
    if (l$date != lOther$date) {
      return false;
    }
    final l$openTime = openTime;
    final lOther$openTime = other.openTime;
    if (l$openTime != lOther$openTime) {
      return false;
    }
    final l$duration = duration;
    final lOther$duration = other.duration;
    if (l$duration != lOther$duration) {
      return false;
    }
    final l$gymStudioId = gymStudioId;
    final lOther$gymStudioId = other.gymStudioId;
    if (l$gymStudioId != lOther$gymStudioId) {
      return false;
    }
    final l$soldOut = soldOut;
    final lOther$soldOut = other.soldOut;
    if (l$soldOut != lOther$soldOut) {
      return false;
    }
    final l$isAttended = isAttended;
    final lOther$isAttended = other.isAttended;
    if (l$isAttended != lOther$isAttended) {
      return false;
    }
    final l$isAttendable = isAttendable;
    final lOther$isAttendable = other.isAttendable;
    if (l$isAttendable != lOther$isAttendable) {
      return false;
    }
    final l$isPurchased = isPurchased;
    final lOther$isPurchased = other.isPurchased;
    if (l$isPurchased != lOther$isPurchased) {
      return false;
    }
    final l$isCancellable = isCancellable;
    final lOther$isCancellable = other.isCancellable;
    if (l$isCancellable != lOther$isCancellable) {
      return false;
    }
    final l$isExpired = isExpired;
    final lOther$isExpired = other.isExpired;
    if (l$isExpired != lOther$isExpired) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$ScheduledGymClasses$gymClassesScheduledV2$list
    on Query$ScheduledGymClasses$gymClassesScheduledV2$list {
  CopyWith$Query$ScheduledGymClasses$gymClassesScheduledV2$list<
          Query$ScheduledGymClasses$gymClassesScheduledV2$list>
      get copyWith =>
          CopyWith$Query$ScheduledGymClasses$gymClassesScheduledV2$list(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ScheduledGymClasses$gymClassesScheduledV2$list<
    TRes> {
  factory CopyWith$Query$ScheduledGymClasses$gymClassesScheduledV2$list(
    Query$ScheduledGymClasses$gymClassesScheduledV2$list instance,
    TRes Function(Query$ScheduledGymClasses$gymClassesScheduledV2$list) then,
  ) = _CopyWithImpl$Query$ScheduledGymClasses$gymClassesScheduledV2$list;

  factory CopyWith$Query$ScheduledGymClasses$gymClassesScheduledV2$list.stub(
          TRes res) =
      _CopyWithStubImpl$Query$ScheduledGymClasses$gymClassesScheduledV2$list;

  TRes call({
    String? id,
    String? name,
    String? categoryName,
    String? description,
    String? scheduleGroupId,
    String? scheduleId,
    CurrencyValue? gymMemberClientPrice,
    CurrencyValue? dropInClientPrice,
    String? currencyCode,
    String? gymName,
    String? gymId,
    String? brandName,
    List<String?>? images,
    Enum$DifficultyLevel? difficultyLevel,
    String? estimatedCaloriesBurnt,
    Enum$GlobalStatusType? status,
    String? startTime,
    String? endTime,
    int? spotsCapacity,
    int? spotsAllotted,
    String? instructorFirstName,
    String? instructorLastName,
    String? date,
    String? openTime,
    double? duration,
    String? gymStudioId,
    bool? soldOut,
    bool? isAttended,
    bool? isAttendable,
    bool? isPurchased,
    bool? isCancellable,
    bool? isExpired,
  });
}

class _CopyWithImpl$Query$ScheduledGymClasses$gymClassesScheduledV2$list<TRes>
    implements
        CopyWith$Query$ScheduledGymClasses$gymClassesScheduledV2$list<TRes> {
  _CopyWithImpl$Query$ScheduledGymClasses$gymClassesScheduledV2$list(
    this._instance,
    this._then,
  );

  final Query$ScheduledGymClasses$gymClassesScheduledV2$list _instance;

  final TRes Function(Query$ScheduledGymClasses$gymClassesScheduledV2$list)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? categoryName = _undefined,
    Object? description = _undefined,
    Object? scheduleGroupId = _undefined,
    Object? scheduleId = _undefined,
    Object? gymMemberClientPrice = _undefined,
    Object? dropInClientPrice = _undefined,
    Object? currencyCode = _undefined,
    Object? gymName = _undefined,
    Object? gymId = _undefined,
    Object? brandName = _undefined,
    Object? images = _undefined,
    Object? difficultyLevel = _undefined,
    Object? estimatedCaloriesBurnt = _undefined,
    Object? status = _undefined,
    Object? startTime = _undefined,
    Object? endTime = _undefined,
    Object? spotsCapacity = _undefined,
    Object? spotsAllotted = _undefined,
    Object? instructorFirstName = _undefined,
    Object? instructorLastName = _undefined,
    Object? date = _undefined,
    Object? openTime = _undefined,
    Object? duration = _undefined,
    Object? gymStudioId = _undefined,
    Object? soldOut = _undefined,
    Object? isAttended = _undefined,
    Object? isAttendable = _undefined,
    Object? isPurchased = _undefined,
    Object? isCancellable = _undefined,
    Object? isExpired = _undefined,
  }) =>
      _then(Query$ScheduledGymClasses$gymClassesScheduledV2$list(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        categoryName: categoryName == _undefined
            ? _instance.categoryName
            : (categoryName as String?),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        scheduleGroupId:
            scheduleGroupId == _undefined || scheduleGroupId == null
                ? _instance.scheduleGroupId
                : (scheduleGroupId as String),
        scheduleId: scheduleId == _undefined || scheduleId == null
            ? _instance.scheduleId
            : (scheduleId as String),
        gymMemberClientPrice: gymMemberClientPrice == _undefined
            ? _instance.gymMemberClientPrice
            : (gymMemberClientPrice as CurrencyValue?),
        dropInClientPrice: dropInClientPrice == _undefined
            ? _instance.dropInClientPrice
            : (dropInClientPrice as CurrencyValue?),
        currencyCode: currencyCode == _undefined
            ? _instance.currencyCode
            : (currencyCode as String?),
        gymName:
            gymName == _undefined ? _instance.gymName : (gymName as String?),
        gymId: gymId == _undefined || gymId == null
            ? _instance.gymId
            : (gymId as String),
        brandName: brandName == _undefined
            ? _instance.brandName
            : (brandName as String?),
        images: images == _undefined
            ? _instance.images
            : (images as List<String?>?),
        difficultyLevel: difficultyLevel == _undefined
            ? _instance.difficultyLevel
            : (difficultyLevel as Enum$DifficultyLevel?),
        estimatedCaloriesBurnt: estimatedCaloriesBurnt == _undefined
            ? _instance.estimatedCaloriesBurnt
            : (estimatedCaloriesBurnt as String?),
        status: status == _undefined
            ? _instance.status
            : (status as Enum$GlobalStatusType?),
        startTime: startTime == _undefined
            ? _instance.startTime
            : (startTime as String?),
        endTime:
            endTime == _undefined ? _instance.endTime : (endTime as String?),
        spotsCapacity: spotsCapacity == _undefined
            ? _instance.spotsCapacity
            : (spotsCapacity as int?),
        spotsAllotted: spotsAllotted == _undefined
            ? _instance.spotsAllotted
            : (spotsAllotted as int?),
        instructorFirstName: instructorFirstName == _undefined
            ? _instance.instructorFirstName
            : (instructorFirstName as String?),
        instructorLastName: instructorLastName == _undefined
            ? _instance.instructorLastName
            : (instructorLastName as String?),
        date: date == _undefined || date == null
            ? _instance.date
            : (date as String),
        openTime: openTime == _undefined || openTime == null
            ? _instance.openTime
            : (openTime as String),
        duration: duration == _undefined || duration == null
            ? _instance.duration
            : (duration as double),
        gymStudioId: gymStudioId == _undefined
            ? _instance.gymStudioId
            : (gymStudioId as String?),
        soldOut: soldOut == _undefined ? _instance.soldOut : (soldOut as bool?),
        isAttended: isAttended == _undefined
            ? _instance.isAttended
            : (isAttended as bool?),
        isAttendable: isAttendable == _undefined
            ? _instance.isAttendable
            : (isAttendable as bool?),
        isPurchased: isPurchased == _undefined
            ? _instance.isPurchased
            : (isPurchased as bool?),
        isCancellable: isCancellable == _undefined
            ? _instance.isCancellable
            : (isCancellable as bool?),
        isExpired: isExpired == _undefined
            ? _instance.isExpired
            : (isExpired as bool?),
      ));
}

class _CopyWithStubImpl$Query$ScheduledGymClasses$gymClassesScheduledV2$list<
        TRes>
    implements
        CopyWith$Query$ScheduledGymClasses$gymClassesScheduledV2$list<TRes> {
  _CopyWithStubImpl$Query$ScheduledGymClasses$gymClassesScheduledV2$list(
      this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? categoryName,
    String? description,
    String? scheduleGroupId,
    String? scheduleId,
    CurrencyValue? gymMemberClientPrice,
    CurrencyValue? dropInClientPrice,
    String? currencyCode,
    String? gymName,
    String? gymId,
    String? brandName,
    List<String?>? images,
    Enum$DifficultyLevel? difficultyLevel,
    String? estimatedCaloriesBurnt,
    Enum$GlobalStatusType? status,
    String? startTime,
    String? endTime,
    int? spotsCapacity,
    int? spotsAllotted,
    String? instructorFirstName,
    String? instructorLastName,
    String? date,
    String? openTime,
    double? duration,
    String? gymStudioId,
    bool? soldOut,
    bool? isAttended,
    bool? isAttendable,
    bool? isPurchased,
    bool? isCancellable,
    bool? isExpired,
  }) =>
      _res;
}
