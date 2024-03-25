import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$gymTnCById {
  factory Variables$Query$gymTnCById({required String id}) =>
      Variables$Query$gymTnCById._({
        r'id': id,
      });

  Variables$Query$gymTnCById._(this._$data);

  factory Variables$Query$gymTnCById.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Query$gymTnCById._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$gymTnCById<Variables$Query$gymTnCById>
      get copyWith => CopyWith$Variables$Query$gymTnCById(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$gymTnCById) ||
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

abstract class CopyWith$Variables$Query$gymTnCById<TRes> {
  factory CopyWith$Variables$Query$gymTnCById(
    Variables$Query$gymTnCById instance,
    TRes Function(Variables$Query$gymTnCById) then,
  ) = _CopyWithImpl$Variables$Query$gymTnCById;

  factory CopyWith$Variables$Query$gymTnCById.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$gymTnCById;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Query$gymTnCById<TRes>
    implements CopyWith$Variables$Query$gymTnCById<TRes> {
  _CopyWithImpl$Variables$Query$gymTnCById(
    this._instance,
    this._then,
  );

  final Variables$Query$gymTnCById _instance;

  final TRes Function(Variables$Query$gymTnCById) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(Variables$Query$gymTnCById._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$gymTnCById<TRes>
    implements CopyWith$Variables$Query$gymTnCById<TRes> {
  _CopyWithStubImpl$Variables$Query$gymTnCById(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query$gymTnCById {
  Query$gymTnCById({required this.gym});

  factory Query$gymTnCById.fromJson(Map<String, dynamic> json) {
    final l$gym = json['gym'];
    return Query$gymTnCById(
        gym: Query$gymTnCById$gym.fromJson((l$gym as Map<String, dynamic>)));
  }

  final Query$gymTnCById$gym gym;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$gym = gym;
    _resultData['gym'] = l$gym.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$gym = gym;
    return Object.hashAll([l$gym]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$gymTnCById) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$gym = gym;
    final lOther$gym = other.gym;
    if (l$gym != lOther$gym) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$gymTnCById on Query$gymTnCById {
  CopyWith$Query$gymTnCById<Query$gymTnCById> get copyWith =>
      CopyWith$Query$gymTnCById(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$gymTnCById<TRes> {
  factory CopyWith$Query$gymTnCById(
    Query$gymTnCById instance,
    TRes Function(Query$gymTnCById) then,
  ) = _CopyWithImpl$Query$gymTnCById;

  factory CopyWith$Query$gymTnCById.stub(TRes res) =
      _CopyWithStubImpl$Query$gymTnCById;

  TRes call({Query$gymTnCById$gym? gym});
  CopyWith$Query$gymTnCById$gym<TRes> get gym;
}

class _CopyWithImpl$Query$gymTnCById<TRes>
    implements CopyWith$Query$gymTnCById<TRes> {
  _CopyWithImpl$Query$gymTnCById(
    this._instance,
    this._then,
  );

  final Query$gymTnCById _instance;

  final TRes Function(Query$gymTnCById) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? gym = _undefined}) => _then(Query$gymTnCById(
      gym: gym == _undefined || gym == null
          ? _instance.gym
          : (gym as Query$gymTnCById$gym)));

  CopyWith$Query$gymTnCById$gym<TRes> get gym {
    final local$gym = _instance.gym;
    return CopyWith$Query$gymTnCById$gym(local$gym, (e) => call(gym: e));
  }
}

class _CopyWithStubImpl$Query$gymTnCById<TRes>
    implements CopyWith$Query$gymTnCById<TRes> {
  _CopyWithStubImpl$Query$gymTnCById(this._res);

  TRes _res;

  call({Query$gymTnCById$gym? gym}) => _res;

  CopyWith$Query$gymTnCById$gym<TRes> get gym =>
      CopyWith$Query$gymTnCById$gym.stub(_res);
}

const documentNodeQuerygymTnCById = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'gymTnCById'),
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
        name: NameNode(value: 'gym'),
        alias: NameNode(value: 'gym'),
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
            name: NameNode(value: 'termsAndConditions'),
            alias: NameNode(value: 'termsAndConditions'),
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      )
    ]),
  ),
]);
Query$gymTnCById _parserFn$Query$gymTnCById(Map<String, dynamic> data) =>
    Query$gymTnCById.fromJson(data);
typedef OnQueryComplete$Query$gymTnCById = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$gymTnCById?,
);

class Options$Query$gymTnCById extends graphql.QueryOptions<Query$gymTnCById> {
  Options$Query$gymTnCById({
    String? operationName,
    required Variables$Query$gymTnCById variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$gymTnCById? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$gymTnCById? onComplete,
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
                    data == null ? null : _parserFn$Query$gymTnCById(data),
                  ),
          onError: onError,
          document: documentNodeQuerygymTnCById,
          parserFn: _parserFn$Query$gymTnCById,
        );

  final OnQueryComplete$Query$gymTnCById? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$gymTnCById
    extends graphql.WatchQueryOptions<Query$gymTnCById> {
  WatchOptions$Query$gymTnCById({
    String? operationName,
    required Variables$Query$gymTnCById variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$gymTnCById? typedOptimisticResult,
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
          document: documentNodeQuerygymTnCById,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$gymTnCById,
        );
}

class FetchMoreOptions$Query$gymTnCById extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$gymTnCById({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$gymTnCById variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQuerygymTnCById,
        );
}

extension ClientExtension$Query$gymTnCById on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$gymTnCById>> query$gymTnCById(
          Options$Query$gymTnCById options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$gymTnCById> watchQuery$gymTnCById(
          WatchOptions$Query$gymTnCById options) =>
      this.watchQuery(options);
  void writeQuery$gymTnCById({
    required Query$gymTnCById data,
    required Variables$Query$gymTnCById variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQuerygymTnCById),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$gymTnCById? readQuery$gymTnCById({
    required Variables$Query$gymTnCById variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQuerygymTnCById),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$gymTnCById.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$gymTnCById> useQuery$gymTnCById(
        Options$Query$gymTnCById options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$gymTnCById> useWatchQuery$gymTnCById(
        WatchOptions$Query$gymTnCById options) =>
    graphql_flutter.useWatchQuery(options);

class Query$gymTnCById$Widget extends graphql_flutter.Query<Query$gymTnCById> {
  Query$gymTnCById$Widget({
    widgets.Key? key,
    required Options$Query$gymTnCById options,
    required graphql_flutter.QueryBuilder<Query$gymTnCById> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$gymTnCById$gym {
  Query$gymTnCById$gym({
    required this.id,
    this.termsAndConditions,
  });

  factory Query$gymTnCById$gym.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$termsAndConditions = json['termsAndConditions'];
    return Query$gymTnCById$gym(
      id: (l$id as String),
      termsAndConditions: (l$termsAndConditions as String?),
    );
  }

  final String id;

  final String? termsAndConditions;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$termsAndConditions = termsAndConditions;
    _resultData['termsAndConditions'] = l$termsAndConditions;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$termsAndConditions = termsAndConditions;
    return Object.hashAll([
      l$id,
      l$termsAndConditions,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$gymTnCById$gym) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$termsAndConditions = termsAndConditions;
    final lOther$termsAndConditions = other.termsAndConditions;
    if (l$termsAndConditions != lOther$termsAndConditions) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$gymTnCById$gym on Query$gymTnCById$gym {
  CopyWith$Query$gymTnCById$gym<Query$gymTnCById$gym> get copyWith =>
      CopyWith$Query$gymTnCById$gym(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$gymTnCById$gym<TRes> {
  factory CopyWith$Query$gymTnCById$gym(
    Query$gymTnCById$gym instance,
    TRes Function(Query$gymTnCById$gym) then,
  ) = _CopyWithImpl$Query$gymTnCById$gym;

  factory CopyWith$Query$gymTnCById$gym.stub(TRes res) =
      _CopyWithStubImpl$Query$gymTnCById$gym;

  TRes call({
    String? id,
    String? termsAndConditions,
  });
}

class _CopyWithImpl$Query$gymTnCById$gym<TRes>
    implements CopyWith$Query$gymTnCById$gym<TRes> {
  _CopyWithImpl$Query$gymTnCById$gym(
    this._instance,
    this._then,
  );

  final Query$gymTnCById$gym _instance;

  final TRes Function(Query$gymTnCById$gym) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? termsAndConditions = _undefined,
  }) =>
      _then(Query$gymTnCById$gym(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        termsAndConditions: termsAndConditions == _undefined
            ? _instance.termsAndConditions
            : (termsAndConditions as String?),
      ));
}

class _CopyWithStubImpl$Query$gymTnCById$gym<TRes>
    implements CopyWith$Query$gymTnCById$gym<TRes> {
  _CopyWithStubImpl$Query$gymTnCById$gym(this._res);

  TRes _res;

  call({
    String? id,
    String? termsAndConditions,
  }) =>
      _res;
}
