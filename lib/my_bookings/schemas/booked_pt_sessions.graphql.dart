import '../../schema.graphql.dart';
import 'dart:async';
import 'package:allup_user_app/scalars.dart';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$BookedPTSessions {
  factory Variables$Query$BookedPTSessions({
    required Input$PaginatorInput paging,
    required Input$SessionContractBookingsParams params,
  }) =>
      Variables$Query$BookedPTSessions._({
        r'paging': paging,
        r'params': params,
      });

  Variables$Query$BookedPTSessions._(this._$data);

  factory Variables$Query$BookedPTSessions.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$paging = data['paging'];
    result$data['paging'] =
        Input$PaginatorInput.fromJson((l$paging as Map<String, dynamic>));
    final l$params = data['params'];
    result$data['params'] = Input$SessionContractBookingsParams.fromJson(
        (l$params as Map<String, dynamic>));
    return Variables$Query$BookedPTSessions._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$PaginatorInput get paging => (_$data['paging'] as Input$PaginatorInput);

  Input$SessionContractBookingsParams get params =>
      (_$data['params'] as Input$SessionContractBookingsParams);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$paging = paging;
    result$data['paging'] = l$paging.toJson();
    final l$params = params;
    result$data['params'] = l$params.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$BookedPTSessions<Variables$Query$BookedPTSessions>
      get copyWith => CopyWith$Variables$Query$BookedPTSessions(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$BookedPTSessions) ||
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

abstract class CopyWith$Variables$Query$BookedPTSessions<TRes> {
  factory CopyWith$Variables$Query$BookedPTSessions(
    Variables$Query$BookedPTSessions instance,
    TRes Function(Variables$Query$BookedPTSessions) then,
  ) = _CopyWithImpl$Variables$Query$BookedPTSessions;

  factory CopyWith$Variables$Query$BookedPTSessions.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$BookedPTSessions;

  TRes call({
    Input$PaginatorInput? paging,
    Input$SessionContractBookingsParams? params,
  });
}

class _CopyWithImpl$Variables$Query$BookedPTSessions<TRes>
    implements CopyWith$Variables$Query$BookedPTSessions<TRes> {
  _CopyWithImpl$Variables$Query$BookedPTSessions(
    this._instance,
    this._then,
  );

  final Variables$Query$BookedPTSessions _instance;

  final TRes Function(Variables$Query$BookedPTSessions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? paging = _undefined,
    Object? params = _undefined,
  }) =>
      _then(Variables$Query$BookedPTSessions._({
        ..._instance._$data,
        if (paging != _undefined && paging != null)
          'paging': (paging as Input$PaginatorInput),
        if (params != _undefined && params != null)
          'params': (params as Input$SessionContractBookingsParams),
      }));
}

class _CopyWithStubImpl$Variables$Query$BookedPTSessions<TRes>
    implements CopyWith$Variables$Query$BookedPTSessions<TRes> {
  _CopyWithStubImpl$Variables$Query$BookedPTSessions(this._res);

  TRes _res;

  call({
    Input$PaginatorInput? paging,
    Input$SessionContractBookingsParams? params,
  }) =>
      _res;
}

class Query$BookedPTSessions {
  Query$BookedPTSessions({required this.sessionContractBookings});

  factory Query$BookedPTSessions.fromJson(Map<String, dynamic> json) {
    final l$sessionContractBookings = json['sessionContractBookings'];
    return Query$BookedPTSessions(
        sessionContractBookings:
            Query$BookedPTSessions$sessionContractBookings.fromJson(
                (l$sessionContractBookings as Map<String, dynamic>)));
  }

  final Query$BookedPTSessions$sessionContractBookings sessionContractBookings;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sessionContractBookings = sessionContractBookings;
    _resultData['sessionContractBookings'] = l$sessionContractBookings.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sessionContractBookings = sessionContractBookings;
    return Object.hashAll([l$sessionContractBookings]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$BookedPTSessions) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sessionContractBookings = sessionContractBookings;
    final lOther$sessionContractBookings = other.sessionContractBookings;
    if (l$sessionContractBookings != lOther$sessionContractBookings) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$BookedPTSessions on Query$BookedPTSessions {
  CopyWith$Query$BookedPTSessions<Query$BookedPTSessions> get copyWith =>
      CopyWith$Query$BookedPTSessions(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$BookedPTSessions<TRes> {
  factory CopyWith$Query$BookedPTSessions(
    Query$BookedPTSessions instance,
    TRes Function(Query$BookedPTSessions) then,
  ) = _CopyWithImpl$Query$BookedPTSessions;

  factory CopyWith$Query$BookedPTSessions.stub(TRes res) =
      _CopyWithStubImpl$Query$BookedPTSessions;

  TRes call(
      {Query$BookedPTSessions$sessionContractBookings?
          sessionContractBookings});
  CopyWith$Query$BookedPTSessions$sessionContractBookings<TRes>
      get sessionContractBookings;
}

class _CopyWithImpl$Query$BookedPTSessions<TRes>
    implements CopyWith$Query$BookedPTSessions<TRes> {
  _CopyWithImpl$Query$BookedPTSessions(
    this._instance,
    this._then,
  );

  final Query$BookedPTSessions _instance;

  final TRes Function(Query$BookedPTSessions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? sessionContractBookings = _undefined}) =>
      _then(Query$BookedPTSessions(
          sessionContractBookings: sessionContractBookings == _undefined ||
                  sessionContractBookings == null
              ? _instance.sessionContractBookings
              : (sessionContractBookings
                  as Query$BookedPTSessions$sessionContractBookings)));

  CopyWith$Query$BookedPTSessions$sessionContractBookings<TRes>
      get sessionContractBookings {
    final local$sessionContractBookings = _instance.sessionContractBookings;
    return CopyWith$Query$BookedPTSessions$sessionContractBookings(
        local$sessionContractBookings, (e) => call(sessionContractBookings: e));
  }
}

class _CopyWithStubImpl$Query$BookedPTSessions<TRes>
    implements CopyWith$Query$BookedPTSessions<TRes> {
  _CopyWithStubImpl$Query$BookedPTSessions(this._res);

  TRes _res;

  call(
          {Query$BookedPTSessions$sessionContractBookings?
              sessionContractBookings}) =>
      _res;

  CopyWith$Query$BookedPTSessions$sessionContractBookings<TRes>
      get sessionContractBookings =>
          CopyWith$Query$BookedPTSessions$sessionContractBookings.stub(_res);
}

const documentNodeQueryBookedPTSessions = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'BookedPTSessions'),
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
          name: NameNode(value: 'SessionContractBookingsParams'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'sessionContractBookings'),
        alias: NameNode(value: 'sessionContractBookings'),
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
            alias: null,
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
                name: NameNode(value: 'sessionDate'),
                alias: NameNode(value: 'sessionDate'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'shortCode'),
                alias: NameNode(value: 'shortCode'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'code'),
                alias: NameNode(value: 'code'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'dayName'),
                alias: NameNode(value: 'dayName'),
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
                name: NameNode(value: 'openTimeLabel'),
                alias: NameNode(value: 'openTimeLabel'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'openDuration'),
                alias: NameNode(value: 'openDuration'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'closeTime'),
                alias: NameNode(value: 'closeTime'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'closeTimeLabel'),
                alias: NameNode(value: 'closeTimeLabel'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'sessionContractId'),
                alias: NameNode(value: 'sessionContractId'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'ratingScore'),
                alias: NameNode(value: 'ratingScore'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'amount'),
                alias: NameNode(value: 'amount'),
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
                name: NameNode(value: 'gymName'),
                alias: NameNode(value: 'gymName'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'instructorName'),
                alias: NameNode(value: 'instructorName'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'currentEvent'),
                alias: NameNode(value: 'currentEvent'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'serviceName'),
                alias: NameNode(value: 'serviceName'),
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
                name: NameNode(value: 'isAlreadyRatad'),
                alias: NameNode(value: 'isAlreadyRatad'),
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
Query$BookedPTSessions _parserFn$Query$BookedPTSessions(
        Map<String, dynamic> data) =>
    Query$BookedPTSessions.fromJson(data);
typedef OnQueryComplete$Query$BookedPTSessions = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$BookedPTSessions?,
);

class Options$Query$BookedPTSessions
    extends graphql.QueryOptions<Query$BookedPTSessions> {
  Options$Query$BookedPTSessions({
    String? operationName,
    required Variables$Query$BookedPTSessions variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$BookedPTSessions? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$BookedPTSessions? onComplete,
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
                        : _parserFn$Query$BookedPTSessions(data),
                  ),
          onError: onError,
          document: documentNodeQueryBookedPTSessions,
          parserFn: _parserFn$Query$BookedPTSessions,
        );

  final OnQueryComplete$Query$BookedPTSessions? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$BookedPTSessions
    extends graphql.WatchQueryOptions<Query$BookedPTSessions> {
  WatchOptions$Query$BookedPTSessions({
    String? operationName,
    required Variables$Query$BookedPTSessions variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$BookedPTSessions? typedOptimisticResult,
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
          document: documentNodeQueryBookedPTSessions,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$BookedPTSessions,
        );
}

class FetchMoreOptions$Query$BookedPTSessions extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$BookedPTSessions({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$BookedPTSessions variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryBookedPTSessions,
        );
}

extension ClientExtension$Query$BookedPTSessions on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$BookedPTSessions>> query$BookedPTSessions(
          Options$Query$BookedPTSessions options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$BookedPTSessions> watchQuery$BookedPTSessions(
          WatchOptions$Query$BookedPTSessions options) =>
      this.watchQuery(options);
  void writeQuery$BookedPTSessions({
    required Query$BookedPTSessions data,
    required Variables$Query$BookedPTSessions variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryBookedPTSessions),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$BookedPTSessions? readQuery$BookedPTSessions({
    required Variables$Query$BookedPTSessions variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryBookedPTSessions),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$BookedPTSessions.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$BookedPTSessions>
    useQuery$BookedPTSessions(Options$Query$BookedPTSessions options) =>
        graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$BookedPTSessions> useWatchQuery$BookedPTSessions(
        WatchOptions$Query$BookedPTSessions options) =>
    graphql_flutter.useWatchQuery(options);

class Query$BookedPTSessions$Widget
    extends graphql_flutter.Query<Query$BookedPTSessions> {
  Query$BookedPTSessions$Widget({
    widgets.Key? key,
    required Options$Query$BookedPTSessions options,
    required graphql_flutter.QueryBuilder<Query$BookedPTSessions> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$BookedPTSessions$sessionContractBookings {
  Query$BookedPTSessions$sessionContractBookings({this.list});

  factory Query$BookedPTSessions$sessionContractBookings.fromJson(
      Map<String, dynamic> json) {
    final l$list = json['list'];
    return Query$BookedPTSessions$sessionContractBookings(
        list: (l$list as List<dynamic>?)
            ?.map((e) =>
                Query$BookedPTSessions$sessionContractBookings$list.fromJson(
                    (e as Map<String, dynamic>)))
            .toList());
  }

  final List<Query$BookedPTSessions$sessionContractBookings$list>? list;

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
    if (!(other is Query$BookedPTSessions$sessionContractBookings) ||
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

extension UtilityExtension$Query$BookedPTSessions$sessionContractBookings
    on Query$BookedPTSessions$sessionContractBookings {
  CopyWith$Query$BookedPTSessions$sessionContractBookings<
          Query$BookedPTSessions$sessionContractBookings>
      get copyWith => CopyWith$Query$BookedPTSessions$sessionContractBookings(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$BookedPTSessions$sessionContractBookings<TRes> {
  factory CopyWith$Query$BookedPTSessions$sessionContractBookings(
    Query$BookedPTSessions$sessionContractBookings instance,
    TRes Function(Query$BookedPTSessions$sessionContractBookings) then,
  ) = _CopyWithImpl$Query$BookedPTSessions$sessionContractBookings;

  factory CopyWith$Query$BookedPTSessions$sessionContractBookings.stub(
          TRes res) =
      _CopyWithStubImpl$Query$BookedPTSessions$sessionContractBookings;

  TRes call({List<Query$BookedPTSessions$sessionContractBookings$list>? list});
  TRes list(
      Iterable<Query$BookedPTSessions$sessionContractBookings$list>? Function(
              Iterable<
                  CopyWith$Query$BookedPTSessions$sessionContractBookings$list<
                      Query$BookedPTSessions$sessionContractBookings$list>>?)
          _fn);
}

class _CopyWithImpl$Query$BookedPTSessions$sessionContractBookings<TRes>
    implements CopyWith$Query$BookedPTSessions$sessionContractBookings<TRes> {
  _CopyWithImpl$Query$BookedPTSessions$sessionContractBookings(
    this._instance,
    this._then,
  );

  final Query$BookedPTSessions$sessionContractBookings _instance;

  final TRes Function(Query$BookedPTSessions$sessionContractBookings) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? list = _undefined}) =>
      _then(Query$BookedPTSessions$sessionContractBookings(
          list: list == _undefined
              ? _instance.list
              : (list as List<
                  Query$BookedPTSessions$sessionContractBookings$list>?)));

  TRes list(
          Iterable<Query$BookedPTSessions$sessionContractBookings$list>? Function(
                  Iterable<
                      CopyWith$Query$BookedPTSessions$sessionContractBookings$list<
                          Query$BookedPTSessions$sessionContractBookings$list>>?)
              _fn) =>
      call(
          list: _fn(_instance.list?.map((e) =>
              CopyWith$Query$BookedPTSessions$sessionContractBookings$list(
                e,
                (i) => i,
              )))?.toList());
}

class _CopyWithStubImpl$Query$BookedPTSessions$sessionContractBookings<TRes>
    implements CopyWith$Query$BookedPTSessions$sessionContractBookings<TRes> {
  _CopyWithStubImpl$Query$BookedPTSessions$sessionContractBookings(this._res);

  TRes _res;

  call({List<Query$BookedPTSessions$sessionContractBookings$list>? list}) =>
      _res;

  list(_fn) => _res;
}

class Query$BookedPTSessions$sessionContractBookings$list {
  Query$BookedPTSessions$sessionContractBookings$list({
    required this.id,
    this.sessionDate,
    this.shortCode,
    this.code,
    this.dayName,
    this.openTime,
    this.openTimeLabel,
    this.openDuration,
    this.closeTime,
    this.closeTimeLabel,
    this.sessionContractId,
    this.ratingScore,
    this.amount,
    this.brandName,
    this.gymName,
    this.instructorName,
    this.currentEvent,
    this.serviceName,
    this.isAttended,
    this.isAttendable,
    this.isPurchased,
    this.isCancellable,
    this.isAlreadyRatad,
  });

  factory Query$BookedPTSessions$sessionContractBookings$list.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$sessionDate = json['sessionDate'];
    final l$shortCode = json['shortCode'];
    final l$code = json['code'];
    final l$dayName = json['dayName'];
    final l$openTime = json['openTime'];
    final l$openTimeLabel = json['openTimeLabel'];
    final l$openDuration = json['openDuration'];
    final l$closeTime = json['closeTime'];
    final l$closeTimeLabel = json['closeTimeLabel'];
    final l$sessionContractId = json['sessionContractId'];
    final l$ratingScore = json['ratingScore'];
    final l$amount = json['amount'];
    final l$brandName = json['brandName'];
    final l$gymName = json['gymName'];
    final l$instructorName = json['instructorName'];
    final l$currentEvent = json['currentEvent'];
    final l$serviceName = json['serviceName'];
    final l$isAttended = json['isAttended'];
    final l$isAttendable = json['isAttendable'];
    final l$isPurchased = json['isPurchased'];
    final l$isCancellable = json['isCancellable'];
    final l$isAlreadyRatad = json['isAlreadyRatad'];
    return Query$BookedPTSessions$sessionContractBookings$list(
      id: (l$id as String),
      sessionDate: l$sessionDate == null ? null : dateFromJson(l$sessionDate),
      shortCode: (l$shortCode as String?),
      code: (l$code as String?),
      dayName: (l$dayName as String?),
      openTime: (l$openTime as String?),
      openTimeLabel: (l$openTimeLabel as String?),
      openDuration: (l$openDuration as num?)?.toDouble(),
      closeTime: (l$closeTime as String?),
      closeTimeLabel: (l$closeTimeLabel as String?),
      sessionContractId: (l$sessionContractId as String?),
      ratingScore: (l$ratingScore as num?)?.toDouble(),
      amount: l$amount == null ? null : currencyValueFromJson(l$amount),
      brandName: (l$brandName as String?),
      gymName: (l$gymName as String?),
      instructorName: (l$instructorName as String?),
      currentEvent: l$currentEvent == null
          ? null
          : fromJson$Enum$InstructorSessionEventType(
              (l$currentEvent as String)),
      serviceName: (l$serviceName as String?),
      isAttended: (l$isAttended as bool?),
      isAttendable: (l$isAttendable as bool?),
      isPurchased: (l$isPurchased as bool?),
      isCancellable: (l$isCancellable as bool?),
      isAlreadyRatad: (l$isAlreadyRatad as bool?),
    );
  }

  final String id;

  final Date? sessionDate;

  final String? shortCode;

  final String? code;

  final String? dayName;

  final String? openTime;

  final String? openTimeLabel;

  final double? openDuration;

  final String? closeTime;

  final String? closeTimeLabel;

  final String? sessionContractId;

  final double? ratingScore;

  final CurrencyValue? amount;

  final String? brandName;

  final String? gymName;

  final String? instructorName;

  final Enum$InstructorSessionEventType? currentEvent;

  final String? serviceName;

  final bool? isAttended;

  final bool? isAttendable;

  final bool? isPurchased;

  final bool? isCancellable;

  final bool? isAlreadyRatad;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$sessionDate = sessionDate;
    _resultData['sessionDate'] =
        l$sessionDate == null ? null : dateToJson(l$sessionDate);
    final l$shortCode = shortCode;
    _resultData['shortCode'] = l$shortCode;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$dayName = dayName;
    _resultData['dayName'] = l$dayName;
    final l$openTime = openTime;
    _resultData['openTime'] = l$openTime;
    final l$openTimeLabel = openTimeLabel;
    _resultData['openTimeLabel'] = l$openTimeLabel;
    final l$openDuration = openDuration;
    _resultData['openDuration'] = l$openDuration;
    final l$closeTime = closeTime;
    _resultData['closeTime'] = l$closeTime;
    final l$closeTimeLabel = closeTimeLabel;
    _resultData['closeTimeLabel'] = l$closeTimeLabel;
    final l$sessionContractId = sessionContractId;
    _resultData['sessionContractId'] = l$sessionContractId;
    final l$ratingScore = ratingScore;
    _resultData['ratingScore'] = l$ratingScore;
    final l$amount = amount;
    _resultData['amount'] =
        l$amount == null ? null : currencyValueToJson(l$amount);
    final l$brandName = brandName;
    _resultData['brandName'] = l$brandName;
    final l$gymName = gymName;
    _resultData['gymName'] = l$gymName;
    final l$instructorName = instructorName;
    _resultData['instructorName'] = l$instructorName;
    final l$currentEvent = currentEvent;
    _resultData['currentEvent'] = l$currentEvent == null
        ? null
        : toJson$Enum$InstructorSessionEventType(l$currentEvent);
    final l$serviceName = serviceName;
    _resultData['serviceName'] = l$serviceName;
    final l$isAttended = isAttended;
    _resultData['isAttended'] = l$isAttended;
    final l$isAttendable = isAttendable;
    _resultData['isAttendable'] = l$isAttendable;
    final l$isPurchased = isPurchased;
    _resultData['isPurchased'] = l$isPurchased;
    final l$isCancellable = isCancellable;
    _resultData['isCancellable'] = l$isCancellable;
    final l$isAlreadyRatad = isAlreadyRatad;
    _resultData['isAlreadyRatad'] = l$isAlreadyRatad;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$sessionDate = sessionDate;
    final l$shortCode = shortCode;
    final l$code = code;
    final l$dayName = dayName;
    final l$openTime = openTime;
    final l$openTimeLabel = openTimeLabel;
    final l$openDuration = openDuration;
    final l$closeTime = closeTime;
    final l$closeTimeLabel = closeTimeLabel;
    final l$sessionContractId = sessionContractId;
    final l$ratingScore = ratingScore;
    final l$amount = amount;
    final l$brandName = brandName;
    final l$gymName = gymName;
    final l$instructorName = instructorName;
    final l$currentEvent = currentEvent;
    final l$serviceName = serviceName;
    final l$isAttended = isAttended;
    final l$isAttendable = isAttendable;
    final l$isPurchased = isPurchased;
    final l$isCancellable = isCancellable;
    final l$isAlreadyRatad = isAlreadyRatad;
    return Object.hashAll([
      l$id,
      l$sessionDate,
      l$shortCode,
      l$code,
      l$dayName,
      l$openTime,
      l$openTimeLabel,
      l$openDuration,
      l$closeTime,
      l$closeTimeLabel,
      l$sessionContractId,
      l$ratingScore,
      l$amount,
      l$brandName,
      l$gymName,
      l$instructorName,
      l$currentEvent,
      l$serviceName,
      l$isAttended,
      l$isAttendable,
      l$isPurchased,
      l$isCancellable,
      l$isAlreadyRatad,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$BookedPTSessions$sessionContractBookings$list) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$sessionDate = sessionDate;
    final lOther$sessionDate = other.sessionDate;
    if (l$sessionDate != lOther$sessionDate) {
      return false;
    }
    final l$shortCode = shortCode;
    final lOther$shortCode = other.shortCode;
    if (l$shortCode != lOther$shortCode) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$dayName = dayName;
    final lOther$dayName = other.dayName;
    if (l$dayName != lOther$dayName) {
      return false;
    }
    final l$openTime = openTime;
    final lOther$openTime = other.openTime;
    if (l$openTime != lOther$openTime) {
      return false;
    }
    final l$openTimeLabel = openTimeLabel;
    final lOther$openTimeLabel = other.openTimeLabel;
    if (l$openTimeLabel != lOther$openTimeLabel) {
      return false;
    }
    final l$openDuration = openDuration;
    final lOther$openDuration = other.openDuration;
    if (l$openDuration != lOther$openDuration) {
      return false;
    }
    final l$closeTime = closeTime;
    final lOther$closeTime = other.closeTime;
    if (l$closeTime != lOther$closeTime) {
      return false;
    }
    final l$closeTimeLabel = closeTimeLabel;
    final lOther$closeTimeLabel = other.closeTimeLabel;
    if (l$closeTimeLabel != lOther$closeTimeLabel) {
      return false;
    }
    final l$sessionContractId = sessionContractId;
    final lOther$sessionContractId = other.sessionContractId;
    if (l$sessionContractId != lOther$sessionContractId) {
      return false;
    }
    final l$ratingScore = ratingScore;
    final lOther$ratingScore = other.ratingScore;
    if (l$ratingScore != lOther$ratingScore) {
      return false;
    }
    final l$amount = amount;
    final lOther$amount = other.amount;
    if (l$amount != lOther$amount) {
      return false;
    }
    final l$brandName = brandName;
    final lOther$brandName = other.brandName;
    if (l$brandName != lOther$brandName) {
      return false;
    }
    final l$gymName = gymName;
    final lOther$gymName = other.gymName;
    if (l$gymName != lOther$gymName) {
      return false;
    }
    final l$instructorName = instructorName;
    final lOther$instructorName = other.instructorName;
    if (l$instructorName != lOther$instructorName) {
      return false;
    }
    final l$currentEvent = currentEvent;
    final lOther$currentEvent = other.currentEvent;
    if (l$currentEvent != lOther$currentEvent) {
      return false;
    }
    final l$serviceName = serviceName;
    final lOther$serviceName = other.serviceName;
    if (l$serviceName != lOther$serviceName) {
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
    final l$isAlreadyRatad = isAlreadyRatad;
    final lOther$isAlreadyRatad = other.isAlreadyRatad;
    if (l$isAlreadyRatad != lOther$isAlreadyRatad) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$BookedPTSessions$sessionContractBookings$list
    on Query$BookedPTSessions$sessionContractBookings$list {
  CopyWith$Query$BookedPTSessions$sessionContractBookings$list<
          Query$BookedPTSessions$sessionContractBookings$list>
      get copyWith =>
          CopyWith$Query$BookedPTSessions$sessionContractBookings$list(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$BookedPTSessions$sessionContractBookings$list<
    TRes> {
  factory CopyWith$Query$BookedPTSessions$sessionContractBookings$list(
    Query$BookedPTSessions$sessionContractBookings$list instance,
    TRes Function(Query$BookedPTSessions$sessionContractBookings$list) then,
  ) = _CopyWithImpl$Query$BookedPTSessions$sessionContractBookings$list;

  factory CopyWith$Query$BookedPTSessions$sessionContractBookings$list.stub(
          TRes res) =
      _CopyWithStubImpl$Query$BookedPTSessions$sessionContractBookings$list;

  TRes call({
    String? id,
    Date? sessionDate,
    String? shortCode,
    String? code,
    String? dayName,
    String? openTime,
    String? openTimeLabel,
    double? openDuration,
    String? closeTime,
    String? closeTimeLabel,
    String? sessionContractId,
    double? ratingScore,
    CurrencyValue? amount,
    String? brandName,
    String? gymName,
    String? instructorName,
    Enum$InstructorSessionEventType? currentEvent,
    String? serviceName,
    bool? isAttended,
    bool? isAttendable,
    bool? isPurchased,
    bool? isCancellable,
    bool? isAlreadyRatad,
  });
}

class _CopyWithImpl$Query$BookedPTSessions$sessionContractBookings$list<TRes>
    implements
        CopyWith$Query$BookedPTSessions$sessionContractBookings$list<TRes> {
  _CopyWithImpl$Query$BookedPTSessions$sessionContractBookings$list(
    this._instance,
    this._then,
  );

  final Query$BookedPTSessions$sessionContractBookings$list _instance;

  final TRes Function(Query$BookedPTSessions$sessionContractBookings$list)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? sessionDate = _undefined,
    Object? shortCode = _undefined,
    Object? code = _undefined,
    Object? dayName = _undefined,
    Object? openTime = _undefined,
    Object? openTimeLabel = _undefined,
    Object? openDuration = _undefined,
    Object? closeTime = _undefined,
    Object? closeTimeLabel = _undefined,
    Object? sessionContractId = _undefined,
    Object? ratingScore = _undefined,
    Object? amount = _undefined,
    Object? brandName = _undefined,
    Object? gymName = _undefined,
    Object? instructorName = _undefined,
    Object? currentEvent = _undefined,
    Object? serviceName = _undefined,
    Object? isAttended = _undefined,
    Object? isAttendable = _undefined,
    Object? isPurchased = _undefined,
    Object? isCancellable = _undefined,
    Object? isAlreadyRatad = _undefined,
  }) =>
      _then(Query$BookedPTSessions$sessionContractBookings$list(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        sessionDate: sessionDate == _undefined
            ? _instance.sessionDate
            : (sessionDate as Date?),
        shortCode: shortCode == _undefined
            ? _instance.shortCode
            : (shortCode as String?),
        code: code == _undefined ? _instance.code : (code as String?),
        dayName:
            dayName == _undefined ? _instance.dayName : (dayName as String?),
        openTime:
            openTime == _undefined ? _instance.openTime : (openTime as String?),
        openTimeLabel: openTimeLabel == _undefined
            ? _instance.openTimeLabel
            : (openTimeLabel as String?),
        openDuration: openDuration == _undefined
            ? _instance.openDuration
            : (openDuration as double?),
        closeTime: closeTime == _undefined
            ? _instance.closeTime
            : (closeTime as String?),
        closeTimeLabel: closeTimeLabel == _undefined
            ? _instance.closeTimeLabel
            : (closeTimeLabel as String?),
        sessionContractId: sessionContractId == _undefined
            ? _instance.sessionContractId
            : (sessionContractId as String?),
        ratingScore: ratingScore == _undefined
            ? _instance.ratingScore
            : (ratingScore as double?),
        amount: amount == _undefined
            ? _instance.amount
            : (amount as CurrencyValue?),
        brandName: brandName == _undefined
            ? _instance.brandName
            : (brandName as String?),
        gymName:
            gymName == _undefined ? _instance.gymName : (gymName as String?),
        instructorName: instructorName == _undefined
            ? _instance.instructorName
            : (instructorName as String?),
        currentEvent: currentEvent == _undefined
            ? _instance.currentEvent
            : (currentEvent as Enum$InstructorSessionEventType?),
        serviceName: serviceName == _undefined
            ? _instance.serviceName
            : (serviceName as String?),
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
        isAlreadyRatad: isAlreadyRatad == _undefined
            ? _instance.isAlreadyRatad
            : (isAlreadyRatad as bool?),
      ));
}

class _CopyWithStubImpl$Query$BookedPTSessions$sessionContractBookings$list<
        TRes>
    implements
        CopyWith$Query$BookedPTSessions$sessionContractBookings$list<TRes> {
  _CopyWithStubImpl$Query$BookedPTSessions$sessionContractBookings$list(
      this._res);

  TRes _res;

  call({
    String? id,
    Date? sessionDate,
    String? shortCode,
    String? code,
    String? dayName,
    String? openTime,
    String? openTimeLabel,
    double? openDuration,
    String? closeTime,
    String? closeTimeLabel,
    String? sessionContractId,
    double? ratingScore,
    CurrencyValue? amount,
    String? brandName,
    String? gymName,
    String? instructorName,
    Enum$InstructorSessionEventType? currentEvent,
    String? serviceName,
    bool? isAttended,
    bool? isAttendable,
    bool? isPurchased,
    bool? isCancellable,
    bool? isAlreadyRatad,
  }) =>
      _res;
}
