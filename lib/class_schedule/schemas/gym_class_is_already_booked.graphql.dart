import 'dart:async';
import 'package:allup_user_app/scalars.dart';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$GymClassIsAlreadyBookedV2 {
  factory Variables$Query$GymClassIsAlreadyBookedV2({
    required String scheduleId,
    required Date bookedFor,
    required String bookedTime,
  }) =>
      Variables$Query$GymClassIsAlreadyBookedV2._({
        r'scheduleId': scheduleId,
        r'bookedFor': bookedFor,
        r'bookedTime': bookedTime,
      });

  Variables$Query$GymClassIsAlreadyBookedV2._(this._$data);

  factory Variables$Query$GymClassIsAlreadyBookedV2.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$scheduleId = data['scheduleId'];
    result$data['scheduleId'] = (l$scheduleId as String);
    final l$bookedFor = data['bookedFor'];
    result$data['bookedFor'] = dateFromJson(l$bookedFor);
    final l$bookedTime = data['bookedTime'];
    result$data['bookedTime'] = (l$bookedTime as String);
    return Variables$Query$GymClassIsAlreadyBookedV2._(result$data);
  }

  Map<String, dynamic> _$data;

  String get scheduleId => (_$data['scheduleId'] as String);

  Date get bookedFor => (_$data['bookedFor'] as Date);

  String get bookedTime => (_$data['bookedTime'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$scheduleId = scheduleId;
    result$data['scheduleId'] = l$scheduleId;
    final l$bookedFor = bookedFor;
    result$data['bookedFor'] = dateToJson(l$bookedFor);
    final l$bookedTime = bookedTime;
    result$data['bookedTime'] = l$bookedTime;
    return result$data;
  }

  CopyWith$Variables$Query$GymClassIsAlreadyBookedV2<
          Variables$Query$GymClassIsAlreadyBookedV2>
      get copyWith => CopyWith$Variables$Query$GymClassIsAlreadyBookedV2(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GymClassIsAlreadyBookedV2) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$scheduleId = scheduleId;
    final lOther$scheduleId = other.scheduleId;
    if (l$scheduleId != lOther$scheduleId) {
      return false;
    }
    final l$bookedFor = bookedFor;
    final lOther$bookedFor = other.bookedFor;
    if (l$bookedFor != lOther$bookedFor) {
      return false;
    }
    final l$bookedTime = bookedTime;
    final lOther$bookedTime = other.bookedTime;
    if (l$bookedTime != lOther$bookedTime) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$scheduleId = scheduleId;
    final l$bookedFor = bookedFor;
    final l$bookedTime = bookedTime;
    return Object.hashAll([
      l$scheduleId,
      l$bookedFor,
      l$bookedTime,
    ]);
  }
}

abstract class CopyWith$Variables$Query$GymClassIsAlreadyBookedV2<TRes> {
  factory CopyWith$Variables$Query$GymClassIsAlreadyBookedV2(
    Variables$Query$GymClassIsAlreadyBookedV2 instance,
    TRes Function(Variables$Query$GymClassIsAlreadyBookedV2) then,
  ) = _CopyWithImpl$Variables$Query$GymClassIsAlreadyBookedV2;

  factory CopyWith$Variables$Query$GymClassIsAlreadyBookedV2.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GymClassIsAlreadyBookedV2;

  TRes call({
    String? scheduleId,
    Date? bookedFor,
    String? bookedTime,
  });
}

class _CopyWithImpl$Variables$Query$GymClassIsAlreadyBookedV2<TRes>
    implements CopyWith$Variables$Query$GymClassIsAlreadyBookedV2<TRes> {
  _CopyWithImpl$Variables$Query$GymClassIsAlreadyBookedV2(
    this._instance,
    this._then,
  );

  final Variables$Query$GymClassIsAlreadyBookedV2 _instance;

  final TRes Function(Variables$Query$GymClassIsAlreadyBookedV2) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? scheduleId = _undefined,
    Object? bookedFor = _undefined,
    Object? bookedTime = _undefined,
  }) =>
      _then(Variables$Query$GymClassIsAlreadyBookedV2._({
        ..._instance._$data,
        if (scheduleId != _undefined && scheduleId != null)
          'scheduleId': (scheduleId as String),
        if (bookedFor != _undefined && bookedFor != null)
          'bookedFor': (bookedFor as Date),
        if (bookedTime != _undefined && bookedTime != null)
          'bookedTime': (bookedTime as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GymClassIsAlreadyBookedV2<TRes>
    implements CopyWith$Variables$Query$GymClassIsAlreadyBookedV2<TRes> {
  _CopyWithStubImpl$Variables$Query$GymClassIsAlreadyBookedV2(this._res);

  TRes _res;

  call({
    String? scheduleId,
    Date? bookedFor,
    String? bookedTime,
  }) =>
      _res;
}

class Query$GymClassIsAlreadyBookedV2 {
  Query$GymClassIsAlreadyBookedV2({required this.gymClassIsAlreadyBookedV2});

  factory Query$GymClassIsAlreadyBookedV2.fromJson(Map<String, dynamic> json) {
    final l$gymClassIsAlreadyBookedV2 = json['gymClassIsAlreadyBookedV2'];
    return Query$GymClassIsAlreadyBookedV2(
        gymClassIsAlreadyBookedV2:
            Query$GymClassIsAlreadyBookedV2$gymClassIsAlreadyBookedV2.fromJson(
                (l$gymClassIsAlreadyBookedV2 as Map<String, dynamic>)));
  }

  final Query$GymClassIsAlreadyBookedV2$gymClassIsAlreadyBookedV2
      gymClassIsAlreadyBookedV2;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$gymClassIsAlreadyBookedV2 = gymClassIsAlreadyBookedV2;
    _resultData['gymClassIsAlreadyBookedV2'] =
        l$gymClassIsAlreadyBookedV2.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$gymClassIsAlreadyBookedV2 = gymClassIsAlreadyBookedV2;
    return Object.hashAll([l$gymClassIsAlreadyBookedV2]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GymClassIsAlreadyBookedV2) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$gymClassIsAlreadyBookedV2 = gymClassIsAlreadyBookedV2;
    final lOther$gymClassIsAlreadyBookedV2 = other.gymClassIsAlreadyBookedV2;
    if (l$gymClassIsAlreadyBookedV2 != lOther$gymClassIsAlreadyBookedV2) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GymClassIsAlreadyBookedV2
    on Query$GymClassIsAlreadyBookedV2 {
  CopyWith$Query$GymClassIsAlreadyBookedV2<Query$GymClassIsAlreadyBookedV2>
      get copyWith => CopyWith$Query$GymClassIsAlreadyBookedV2(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GymClassIsAlreadyBookedV2<TRes> {
  factory CopyWith$Query$GymClassIsAlreadyBookedV2(
    Query$GymClassIsAlreadyBookedV2 instance,
    TRes Function(Query$GymClassIsAlreadyBookedV2) then,
  ) = _CopyWithImpl$Query$GymClassIsAlreadyBookedV2;

  factory CopyWith$Query$GymClassIsAlreadyBookedV2.stub(TRes res) =
      _CopyWithStubImpl$Query$GymClassIsAlreadyBookedV2;

  TRes call(
      {Query$GymClassIsAlreadyBookedV2$gymClassIsAlreadyBookedV2?
          gymClassIsAlreadyBookedV2});
  CopyWith$Query$GymClassIsAlreadyBookedV2$gymClassIsAlreadyBookedV2<TRes>
      get gymClassIsAlreadyBookedV2;
}

class _CopyWithImpl$Query$GymClassIsAlreadyBookedV2<TRes>
    implements CopyWith$Query$GymClassIsAlreadyBookedV2<TRes> {
  _CopyWithImpl$Query$GymClassIsAlreadyBookedV2(
    this._instance,
    this._then,
  );

  final Query$GymClassIsAlreadyBookedV2 _instance;

  final TRes Function(Query$GymClassIsAlreadyBookedV2) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? gymClassIsAlreadyBookedV2 = _undefined}) =>
      _then(Query$GymClassIsAlreadyBookedV2(
          gymClassIsAlreadyBookedV2: gymClassIsAlreadyBookedV2 == _undefined ||
                  gymClassIsAlreadyBookedV2 == null
              ? _instance.gymClassIsAlreadyBookedV2
              : (gymClassIsAlreadyBookedV2
                  as Query$GymClassIsAlreadyBookedV2$gymClassIsAlreadyBookedV2)));

  CopyWith$Query$GymClassIsAlreadyBookedV2$gymClassIsAlreadyBookedV2<TRes>
      get gymClassIsAlreadyBookedV2 {
    final local$gymClassIsAlreadyBookedV2 = _instance.gymClassIsAlreadyBookedV2;
    return CopyWith$Query$GymClassIsAlreadyBookedV2$gymClassIsAlreadyBookedV2(
        local$gymClassIsAlreadyBookedV2,
        (e) => call(gymClassIsAlreadyBookedV2: e));
  }
}

class _CopyWithStubImpl$Query$GymClassIsAlreadyBookedV2<TRes>
    implements CopyWith$Query$GymClassIsAlreadyBookedV2<TRes> {
  _CopyWithStubImpl$Query$GymClassIsAlreadyBookedV2(this._res);

  TRes _res;

  call(
          {Query$GymClassIsAlreadyBookedV2$gymClassIsAlreadyBookedV2?
              gymClassIsAlreadyBookedV2}) =>
      _res;

  CopyWith$Query$GymClassIsAlreadyBookedV2$gymClassIsAlreadyBookedV2<TRes>
      get gymClassIsAlreadyBookedV2 =>
          CopyWith$Query$GymClassIsAlreadyBookedV2$gymClassIsAlreadyBookedV2
              .stub(_res);
}

const documentNodeQueryGymClassIsAlreadyBookedV2 = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GymClassIsAlreadyBookedV2'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'scheduleId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'bookedFor')),
        type: NamedTypeNode(
          name: NameNode(value: 'Date'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'bookedTime')),
        type: NamedTypeNode(
          name: NameNode(value: 'LocalTime'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'gymClassIsAlreadyBookedV2'),
        alias: NameNode(value: 'gymClassIsAlreadyBookedV2'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'scheduleId'),
            value: VariableNode(name: NameNode(value: 'scheduleId')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'booked'),
            alias: NameNode(value: 'booked'),
            arguments: [],
            directives: [],
            selectionSet: null,
          )
        ]),
      )
    ]),
  ),
]);
Query$GymClassIsAlreadyBookedV2 _parserFn$Query$GymClassIsAlreadyBookedV2(
        Map<String, dynamic> data) =>
    Query$GymClassIsAlreadyBookedV2.fromJson(data);
typedef OnQueryComplete$Query$GymClassIsAlreadyBookedV2 = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Query$GymClassIsAlreadyBookedV2?,
);

class Options$Query$GymClassIsAlreadyBookedV2
    extends graphql.QueryOptions<Query$GymClassIsAlreadyBookedV2> {
  Options$Query$GymClassIsAlreadyBookedV2({
    String? operationName,
    required Variables$Query$GymClassIsAlreadyBookedV2 variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GymClassIsAlreadyBookedV2? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GymClassIsAlreadyBookedV2? onComplete,
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
                        : _parserFn$Query$GymClassIsAlreadyBookedV2(data),
                  ),
          onError: onError,
          document: documentNodeQueryGymClassIsAlreadyBookedV2,
          parserFn: _parserFn$Query$GymClassIsAlreadyBookedV2,
        );

  final OnQueryComplete$Query$GymClassIsAlreadyBookedV2? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GymClassIsAlreadyBookedV2
    extends graphql.WatchQueryOptions<Query$GymClassIsAlreadyBookedV2> {
  WatchOptions$Query$GymClassIsAlreadyBookedV2({
    String? operationName,
    required Variables$Query$GymClassIsAlreadyBookedV2 variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GymClassIsAlreadyBookedV2? typedOptimisticResult,
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
          document: documentNodeQueryGymClassIsAlreadyBookedV2,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GymClassIsAlreadyBookedV2,
        );
}

class FetchMoreOptions$Query$GymClassIsAlreadyBookedV2
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GymClassIsAlreadyBookedV2({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GymClassIsAlreadyBookedV2 variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGymClassIsAlreadyBookedV2,
        );
}

extension ClientExtension$Query$GymClassIsAlreadyBookedV2
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GymClassIsAlreadyBookedV2>>
      query$GymClassIsAlreadyBookedV2(
              Options$Query$GymClassIsAlreadyBookedV2 options) async =>
          await this.query(options);
  graphql.ObservableQuery<Query$GymClassIsAlreadyBookedV2>
      watchQuery$GymClassIsAlreadyBookedV2(
              WatchOptions$Query$GymClassIsAlreadyBookedV2 options) =>
          this.watchQuery(options);
  void writeQuery$GymClassIsAlreadyBookedV2({
    required Query$GymClassIsAlreadyBookedV2 data,
    required Variables$Query$GymClassIsAlreadyBookedV2 variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryGymClassIsAlreadyBookedV2),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GymClassIsAlreadyBookedV2? readQuery$GymClassIsAlreadyBookedV2({
    required Variables$Query$GymClassIsAlreadyBookedV2 variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
            document: documentNodeQueryGymClassIsAlreadyBookedV2),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$GymClassIsAlreadyBookedV2.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GymClassIsAlreadyBookedV2>
    useQuery$GymClassIsAlreadyBookedV2(
            Options$Query$GymClassIsAlreadyBookedV2 options) =>
        graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$GymClassIsAlreadyBookedV2>
    useWatchQuery$GymClassIsAlreadyBookedV2(
            WatchOptions$Query$GymClassIsAlreadyBookedV2 options) =>
        graphql_flutter.useWatchQuery(options);

class Query$GymClassIsAlreadyBookedV2$Widget
    extends graphql_flutter.Query<Query$GymClassIsAlreadyBookedV2> {
  Query$GymClassIsAlreadyBookedV2$Widget({
    widgets.Key? key,
    required Options$Query$GymClassIsAlreadyBookedV2 options,
    required graphql_flutter.QueryBuilder<Query$GymClassIsAlreadyBookedV2>
        builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$GymClassIsAlreadyBookedV2$gymClassIsAlreadyBookedV2 {
  Query$GymClassIsAlreadyBookedV2$gymClassIsAlreadyBookedV2(
      {required this.booked});

  factory Query$GymClassIsAlreadyBookedV2$gymClassIsAlreadyBookedV2.fromJson(
      Map<String, dynamic> json) {
    final l$booked = json['booked'];
    return Query$GymClassIsAlreadyBookedV2$gymClassIsAlreadyBookedV2(
        booked: (l$booked as bool));
  }

  final bool booked;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$booked = booked;
    _resultData['booked'] = l$booked;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$booked = booked;
    return Object.hashAll([l$booked]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GymClassIsAlreadyBookedV2$gymClassIsAlreadyBookedV2) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$booked = booked;
    final lOther$booked = other.booked;
    if (l$booked != lOther$booked) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GymClassIsAlreadyBookedV2$gymClassIsAlreadyBookedV2
    on Query$GymClassIsAlreadyBookedV2$gymClassIsAlreadyBookedV2 {
  CopyWith$Query$GymClassIsAlreadyBookedV2$gymClassIsAlreadyBookedV2<
          Query$GymClassIsAlreadyBookedV2$gymClassIsAlreadyBookedV2>
      get copyWith =>
          CopyWith$Query$GymClassIsAlreadyBookedV2$gymClassIsAlreadyBookedV2(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GymClassIsAlreadyBookedV2$gymClassIsAlreadyBookedV2<
    TRes> {
  factory CopyWith$Query$GymClassIsAlreadyBookedV2$gymClassIsAlreadyBookedV2(
    Query$GymClassIsAlreadyBookedV2$gymClassIsAlreadyBookedV2 instance,
    TRes Function(Query$GymClassIsAlreadyBookedV2$gymClassIsAlreadyBookedV2)
        then,
  ) = _CopyWithImpl$Query$GymClassIsAlreadyBookedV2$gymClassIsAlreadyBookedV2;

  factory CopyWith$Query$GymClassIsAlreadyBookedV2$gymClassIsAlreadyBookedV2.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GymClassIsAlreadyBookedV2$gymClassIsAlreadyBookedV2;

  TRes call({bool? booked});
}

class _CopyWithImpl$Query$GymClassIsAlreadyBookedV2$gymClassIsAlreadyBookedV2<
        TRes>
    implements
        CopyWith$Query$GymClassIsAlreadyBookedV2$gymClassIsAlreadyBookedV2<
            TRes> {
  _CopyWithImpl$Query$GymClassIsAlreadyBookedV2$gymClassIsAlreadyBookedV2(
    this._instance,
    this._then,
  );

  final Query$GymClassIsAlreadyBookedV2$gymClassIsAlreadyBookedV2 _instance;

  final TRes Function(Query$GymClassIsAlreadyBookedV2$gymClassIsAlreadyBookedV2)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? booked = _undefined}) =>
      _then(Query$GymClassIsAlreadyBookedV2$gymClassIsAlreadyBookedV2(
          booked: booked == _undefined || booked == null
              ? _instance.booked
              : (booked as bool)));
}

class _CopyWithStubImpl$Query$GymClassIsAlreadyBookedV2$gymClassIsAlreadyBookedV2<
        TRes>
    implements
        CopyWith$Query$GymClassIsAlreadyBookedV2$gymClassIsAlreadyBookedV2<
            TRes> {
  _CopyWithStubImpl$Query$GymClassIsAlreadyBookedV2$gymClassIsAlreadyBookedV2(
      this._res);

  TRes _res;

  call({bool? booked}) => _res;
}
