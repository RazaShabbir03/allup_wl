import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Query$FetchAppointments {
  Query$FetchAppointments({required this.leadAppointments});

  factory Query$FetchAppointments.fromJson(Map<String, dynamic> json) {
    final l$leadAppointments = json['leadAppointments'];
    return Query$FetchAppointments(
        leadAppointments: Query$FetchAppointments$leadAppointments.fromJson(
            (l$leadAppointments as Map<String, dynamic>)));
  }

  final Query$FetchAppointments$leadAppointments leadAppointments;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$leadAppointments = leadAppointments;
    _resultData['leadAppointments'] = l$leadAppointments.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$leadAppointments = leadAppointments;
    return Object.hashAll([l$leadAppointments]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchAppointments) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$leadAppointments = leadAppointments;
    final lOther$leadAppointments = other.leadAppointments;
    if (l$leadAppointments != lOther$leadAppointments) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchAppointments on Query$FetchAppointments {
  CopyWith$Query$FetchAppointments<Query$FetchAppointments> get copyWith =>
      CopyWith$Query$FetchAppointments(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FetchAppointments<TRes> {
  factory CopyWith$Query$FetchAppointments(
    Query$FetchAppointments instance,
    TRes Function(Query$FetchAppointments) then,
  ) = _CopyWithImpl$Query$FetchAppointments;

  factory CopyWith$Query$FetchAppointments.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchAppointments;

  TRes call({Query$FetchAppointments$leadAppointments? leadAppointments});
  CopyWith$Query$FetchAppointments$leadAppointments<TRes> get leadAppointments;
}

class _CopyWithImpl$Query$FetchAppointments<TRes>
    implements CopyWith$Query$FetchAppointments<TRes> {
  _CopyWithImpl$Query$FetchAppointments(
    this._instance,
    this._then,
  );

  final Query$FetchAppointments _instance;

  final TRes Function(Query$FetchAppointments) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? leadAppointments = _undefined}) =>
      _then(Query$FetchAppointments(
          leadAppointments:
              leadAppointments == _undefined || leadAppointments == null
                  ? _instance.leadAppointments
                  : (leadAppointments
                      as Query$FetchAppointments$leadAppointments)));

  CopyWith$Query$FetchAppointments$leadAppointments<TRes> get leadAppointments {
    final local$leadAppointments = _instance.leadAppointments;
    return CopyWith$Query$FetchAppointments$leadAppointments(
        local$leadAppointments, (e) => call(leadAppointments: e));
  }
}

class _CopyWithStubImpl$Query$FetchAppointments<TRes>
    implements CopyWith$Query$FetchAppointments<TRes> {
  _CopyWithStubImpl$Query$FetchAppointments(this._res);

  TRes _res;

  call({Query$FetchAppointments$leadAppointments? leadAppointments}) => _res;

  CopyWith$Query$FetchAppointments$leadAppointments<TRes>
      get leadAppointments =>
          CopyWith$Query$FetchAppointments$leadAppointments.stub(_res);
}

const documentNodeQueryFetchAppointments = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FetchAppointments'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'leadAppointments'),
        alias: null,
        arguments: [],
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
                name: NameNode(value: 'appointmentDate'),
                alias: NameNode(value: 'appointmentDate'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'appointmentTime'),
                alias: NameNode(value: 'appointmentTime'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'appointmentCreatedById'),
                alias: NameNode(value: 'appointmentCreatedById'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'appointmentCreatedByName'),
                alias: NameNode(value: 'appointmentCreatedByName'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'note'),
                alias: NameNode(value: 'note'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'appointmentCreatedByName'),
                alias: NameNode(value: 'appointmentCreatedByName'),
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
Query$FetchAppointments _parserFn$Query$FetchAppointments(
        Map<String, dynamic> data) =>
    Query$FetchAppointments.fromJson(data);
typedef OnQueryComplete$Query$FetchAppointments = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$FetchAppointments?,
);

class Options$Query$FetchAppointments
    extends graphql.QueryOptions<Query$FetchAppointments> {
  Options$Query$FetchAppointments({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FetchAppointments? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$FetchAppointments? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
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
                        : _parserFn$Query$FetchAppointments(data),
                  ),
          onError: onError,
          document: documentNodeQueryFetchAppointments,
          parserFn: _parserFn$Query$FetchAppointments,
        );

  final OnQueryComplete$Query$FetchAppointments? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$FetchAppointments
    extends graphql.WatchQueryOptions<Query$FetchAppointments> {
  WatchOptions$Query$FetchAppointments({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FetchAppointments? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryFetchAppointments,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$FetchAppointments,
        );
}

class FetchMoreOptions$Query$FetchAppointments
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$FetchAppointments(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryFetchAppointments,
        );
}

extension ClientExtension$Query$FetchAppointments on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$FetchAppointments>> query$FetchAppointments(
          [Options$Query$FetchAppointments? options]) async =>
      await this.query(options ?? Options$Query$FetchAppointments());
  graphql.ObservableQuery<Query$FetchAppointments> watchQuery$FetchAppointments(
          [WatchOptions$Query$FetchAppointments? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$FetchAppointments());
  void writeQuery$FetchAppointments({
    required Query$FetchAppointments data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(
                document: documentNodeQueryFetchAppointments)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$FetchAppointments? readQuery$FetchAppointments(
      {bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryFetchAppointments)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$FetchAppointments.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$FetchAppointments>
    useQuery$FetchAppointments([Options$Query$FetchAppointments? options]) =>
        graphql_flutter.useQuery(options ?? Options$Query$FetchAppointments());
graphql.ObservableQuery<Query$FetchAppointments>
    useWatchQuery$FetchAppointments(
            [WatchOptions$Query$FetchAppointments? options]) =>
        graphql_flutter
            .useWatchQuery(options ?? WatchOptions$Query$FetchAppointments());

class Query$FetchAppointments$Widget
    extends graphql_flutter.Query<Query$FetchAppointments> {
  Query$FetchAppointments$Widget({
    widgets.Key? key,
    Options$Query$FetchAppointments? options,
    required graphql_flutter.QueryBuilder<Query$FetchAppointments> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$FetchAppointments(),
          builder: builder,
        );
}

class Query$FetchAppointments$leadAppointments {
  Query$FetchAppointments$leadAppointments({this.list});

  factory Query$FetchAppointments$leadAppointments.fromJson(
      Map<String, dynamic> json) {
    final l$list = json['list'];
    return Query$FetchAppointments$leadAppointments(
        list: (l$list as List<dynamic>?)
            ?.map((e) => e == null
                ? null
                : Query$FetchAppointments$leadAppointments$list.fromJson(
                    (e as Map<String, dynamic>)))
            .toList());
  }

  final List<Query$FetchAppointments$leadAppointments$list?>? list;

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
    if (!(other is Query$FetchAppointments$leadAppointments) ||
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

extension UtilityExtension$Query$FetchAppointments$leadAppointments
    on Query$FetchAppointments$leadAppointments {
  CopyWith$Query$FetchAppointments$leadAppointments<
          Query$FetchAppointments$leadAppointments>
      get copyWith => CopyWith$Query$FetchAppointments$leadAppointments(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchAppointments$leadAppointments<TRes> {
  factory CopyWith$Query$FetchAppointments$leadAppointments(
    Query$FetchAppointments$leadAppointments instance,
    TRes Function(Query$FetchAppointments$leadAppointments) then,
  ) = _CopyWithImpl$Query$FetchAppointments$leadAppointments;

  factory CopyWith$Query$FetchAppointments$leadAppointments.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchAppointments$leadAppointments;

  TRes call({List<Query$FetchAppointments$leadAppointments$list?>? list});
  TRes list(
      Iterable<Query$FetchAppointments$leadAppointments$list?>? Function(
              Iterable<
                  CopyWith$Query$FetchAppointments$leadAppointments$list<
                      Query$FetchAppointments$leadAppointments$list>?>?)
          _fn);
}

class _CopyWithImpl$Query$FetchAppointments$leadAppointments<TRes>
    implements CopyWith$Query$FetchAppointments$leadAppointments<TRes> {
  _CopyWithImpl$Query$FetchAppointments$leadAppointments(
    this._instance,
    this._then,
  );

  final Query$FetchAppointments$leadAppointments _instance;

  final TRes Function(Query$FetchAppointments$leadAppointments) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? list = _undefined}) =>
      _then(Query$FetchAppointments$leadAppointments(
          list: list == _undefined
              ? _instance.list
              : (list
                  as List<Query$FetchAppointments$leadAppointments$list?>?)));

  TRes list(
          Iterable<Query$FetchAppointments$leadAppointments$list?>? Function(
                  Iterable<
                      CopyWith$Query$FetchAppointments$leadAppointments$list<
                          Query$FetchAppointments$leadAppointments$list>?>?)
              _fn) =>
      call(
          list: _fn(_instance.list?.map((e) => e == null
              ? null
              : CopyWith$Query$FetchAppointments$leadAppointments$list(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$FetchAppointments$leadAppointments<TRes>
    implements CopyWith$Query$FetchAppointments$leadAppointments<TRes> {
  _CopyWithStubImpl$Query$FetchAppointments$leadAppointments(this._res);

  TRes _res;

  call({List<Query$FetchAppointments$leadAppointments$list?>? list}) => _res;

  list(_fn) => _res;
}

class Query$FetchAppointments$leadAppointments$list {
  Query$FetchAppointments$leadAppointments$list({
    required this.id,
    required this.appointmentDate,
    required this.appointmentTime,
    required this.appointmentCreatedById,
    this.appointmentCreatedByName,
    this.note,
  });

  factory Query$FetchAppointments$leadAppointments$list.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$appointmentDate = json['appointmentDate'];
    final l$appointmentTime = json['appointmentTime'];
    final l$appointmentCreatedById = json['appointmentCreatedById'];
    final l$appointmentCreatedByName = json['appointmentCreatedByName'];
    final l$note = json['note'];
    return Query$FetchAppointments$leadAppointments$list(
      id: (l$id as String),
      appointmentDate: (l$appointmentDate as String),
      appointmentTime: (l$appointmentTime as String),
      appointmentCreatedById: (l$appointmentCreatedById as String),
      appointmentCreatedByName: (l$appointmentCreatedByName as String?),
      note: (l$note as String?),
    );
  }

  final String id;

  final String appointmentDate;

  final String appointmentTime;

  final String appointmentCreatedById;

  final String? appointmentCreatedByName;

  final String? note;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$appointmentDate = appointmentDate;
    _resultData['appointmentDate'] = l$appointmentDate;
    final l$appointmentTime = appointmentTime;
    _resultData['appointmentTime'] = l$appointmentTime;
    final l$appointmentCreatedById = appointmentCreatedById;
    _resultData['appointmentCreatedById'] = l$appointmentCreatedById;
    final l$appointmentCreatedByName = appointmentCreatedByName;
    _resultData['appointmentCreatedByName'] = l$appointmentCreatedByName;
    final l$note = note;
    _resultData['note'] = l$note;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$appointmentDate = appointmentDate;
    final l$appointmentTime = appointmentTime;
    final l$appointmentCreatedById = appointmentCreatedById;
    final l$appointmentCreatedByName = appointmentCreatedByName;
    final l$note = note;
    return Object.hashAll([
      l$id,
      l$appointmentDate,
      l$appointmentTime,
      l$appointmentCreatedById,
      l$appointmentCreatedByName,
      l$note,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchAppointments$leadAppointments$list) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$appointmentDate = appointmentDate;
    final lOther$appointmentDate = other.appointmentDate;
    if (l$appointmentDate != lOther$appointmentDate) {
      return false;
    }
    final l$appointmentTime = appointmentTime;
    final lOther$appointmentTime = other.appointmentTime;
    if (l$appointmentTime != lOther$appointmentTime) {
      return false;
    }
    final l$appointmentCreatedById = appointmentCreatedById;
    final lOther$appointmentCreatedById = other.appointmentCreatedById;
    if (l$appointmentCreatedById != lOther$appointmentCreatedById) {
      return false;
    }
    final l$appointmentCreatedByName = appointmentCreatedByName;
    final lOther$appointmentCreatedByName = other.appointmentCreatedByName;
    if (l$appointmentCreatedByName != lOther$appointmentCreatedByName) {
      return false;
    }
    final l$note = note;
    final lOther$note = other.note;
    if (l$note != lOther$note) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchAppointments$leadAppointments$list
    on Query$FetchAppointments$leadAppointments$list {
  CopyWith$Query$FetchAppointments$leadAppointments$list<
          Query$FetchAppointments$leadAppointments$list>
      get copyWith => CopyWith$Query$FetchAppointments$leadAppointments$list(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchAppointments$leadAppointments$list<TRes> {
  factory CopyWith$Query$FetchAppointments$leadAppointments$list(
    Query$FetchAppointments$leadAppointments$list instance,
    TRes Function(Query$FetchAppointments$leadAppointments$list) then,
  ) = _CopyWithImpl$Query$FetchAppointments$leadAppointments$list;

  factory CopyWith$Query$FetchAppointments$leadAppointments$list.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FetchAppointments$leadAppointments$list;

  TRes call({
    String? id,
    String? appointmentDate,
    String? appointmentTime,
    String? appointmentCreatedById,
    String? appointmentCreatedByName,
    String? note,
  });
}

class _CopyWithImpl$Query$FetchAppointments$leadAppointments$list<TRes>
    implements CopyWith$Query$FetchAppointments$leadAppointments$list<TRes> {
  _CopyWithImpl$Query$FetchAppointments$leadAppointments$list(
    this._instance,
    this._then,
  );

  final Query$FetchAppointments$leadAppointments$list _instance;

  final TRes Function(Query$FetchAppointments$leadAppointments$list) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? appointmentDate = _undefined,
    Object? appointmentTime = _undefined,
    Object? appointmentCreatedById = _undefined,
    Object? appointmentCreatedByName = _undefined,
    Object? note = _undefined,
  }) =>
      _then(Query$FetchAppointments$leadAppointments$list(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        appointmentDate:
            appointmentDate == _undefined || appointmentDate == null
                ? _instance.appointmentDate
                : (appointmentDate as String),
        appointmentTime:
            appointmentTime == _undefined || appointmentTime == null
                ? _instance.appointmentTime
                : (appointmentTime as String),
        appointmentCreatedById: appointmentCreatedById == _undefined ||
                appointmentCreatedById == null
            ? _instance.appointmentCreatedById
            : (appointmentCreatedById as String),
        appointmentCreatedByName: appointmentCreatedByName == _undefined
            ? _instance.appointmentCreatedByName
            : (appointmentCreatedByName as String?),
        note: note == _undefined ? _instance.note : (note as String?),
      ));
}

class _CopyWithStubImpl$Query$FetchAppointments$leadAppointments$list<TRes>
    implements CopyWith$Query$FetchAppointments$leadAppointments$list<TRes> {
  _CopyWithStubImpl$Query$FetchAppointments$leadAppointments$list(this._res);

  TRes _res;

  call({
    String? id,
    String? appointmentDate,
    String? appointmentTime,
    String? appointmentCreatedById,
    String? appointmentCreatedByName,
    String? note,
  }) =>
      _res;
}
