import '../../schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$addIntructorEvent {
  factory Variables$Mutation$addIntructorEvent(
          {required Input$AddIntructorEventInput input}) =>
      Variables$Mutation$addIntructorEvent._({
        r'input': input,
      });

  Variables$Mutation$addIntructorEvent._(this._$data);

  factory Variables$Mutation$addIntructorEvent.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$AddIntructorEventInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$addIntructorEvent._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$AddIntructorEventInput get input =>
      (_$data['input'] as Input$AddIntructorEventInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$addIntructorEvent<
          Variables$Mutation$addIntructorEvent>
      get copyWith => CopyWith$Variables$Mutation$addIntructorEvent(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$addIntructorEvent) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    return Object.hashAll([l$input]);
  }
}

abstract class CopyWith$Variables$Mutation$addIntructorEvent<TRes> {
  factory CopyWith$Variables$Mutation$addIntructorEvent(
    Variables$Mutation$addIntructorEvent instance,
    TRes Function(Variables$Mutation$addIntructorEvent) then,
  ) = _CopyWithImpl$Variables$Mutation$addIntructorEvent;

  factory CopyWith$Variables$Mutation$addIntructorEvent.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$addIntructorEvent;

  TRes call({Input$AddIntructorEventInput? input});
}

class _CopyWithImpl$Variables$Mutation$addIntructorEvent<TRes>
    implements CopyWith$Variables$Mutation$addIntructorEvent<TRes> {
  _CopyWithImpl$Variables$Mutation$addIntructorEvent(
    this._instance,
    this._then,
  );

  final Variables$Mutation$addIntructorEvent _instance;

  final TRes Function(Variables$Mutation$addIntructorEvent) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$addIntructorEvent._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$AddIntructorEventInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$addIntructorEvent<TRes>
    implements CopyWith$Variables$Mutation$addIntructorEvent<TRes> {
  _CopyWithStubImpl$Variables$Mutation$addIntructorEvent(this._res);

  TRes _res;

  call({Input$AddIntructorEventInput? input}) => _res;
}

class Mutation$addIntructorEvent {
  Mutation$addIntructorEvent({required this.addIntructorEvent});

  factory Mutation$addIntructorEvent.fromJson(Map<String, dynamic> json) {
    final l$addIntructorEvent = json['addIntructorEvent'];
    return Mutation$addIntructorEvent(
        addIntructorEvent:
            Mutation$addIntructorEvent$addIntructorEvent.fromJson(
                (l$addIntructorEvent as Map<String, dynamic>)));
  }

  final Mutation$addIntructorEvent$addIntructorEvent addIntructorEvent;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$addIntructorEvent = addIntructorEvent;
    _resultData['addIntructorEvent'] = l$addIntructorEvent.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$addIntructorEvent = addIntructorEvent;
    return Object.hashAll([l$addIntructorEvent]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$addIntructorEvent) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$addIntructorEvent = addIntructorEvent;
    final lOther$addIntructorEvent = other.addIntructorEvent;
    if (l$addIntructorEvent != lOther$addIntructorEvent) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$addIntructorEvent
    on Mutation$addIntructorEvent {
  CopyWith$Mutation$addIntructorEvent<Mutation$addIntructorEvent>
      get copyWith => CopyWith$Mutation$addIntructorEvent(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$addIntructorEvent<TRes> {
  factory CopyWith$Mutation$addIntructorEvent(
    Mutation$addIntructorEvent instance,
    TRes Function(Mutation$addIntructorEvent) then,
  ) = _CopyWithImpl$Mutation$addIntructorEvent;

  factory CopyWith$Mutation$addIntructorEvent.stub(TRes res) =
      _CopyWithStubImpl$Mutation$addIntructorEvent;

  TRes call({Mutation$addIntructorEvent$addIntructorEvent? addIntructorEvent});
  CopyWith$Mutation$addIntructorEvent$addIntructorEvent<TRes>
      get addIntructorEvent;
}

class _CopyWithImpl$Mutation$addIntructorEvent<TRes>
    implements CopyWith$Mutation$addIntructorEvent<TRes> {
  _CopyWithImpl$Mutation$addIntructorEvent(
    this._instance,
    this._then,
  );

  final Mutation$addIntructorEvent _instance;

  final TRes Function(Mutation$addIntructorEvent) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? addIntructorEvent = _undefined}) =>
      _then(Mutation$addIntructorEvent(
          addIntructorEvent:
              addIntructorEvent == _undefined || addIntructorEvent == null
                  ? _instance.addIntructorEvent
                  : (addIntructorEvent
                      as Mutation$addIntructorEvent$addIntructorEvent)));

  CopyWith$Mutation$addIntructorEvent$addIntructorEvent<TRes>
      get addIntructorEvent {
    final local$addIntructorEvent = _instance.addIntructorEvent;
    return CopyWith$Mutation$addIntructorEvent$addIntructorEvent(
        local$addIntructorEvent, (e) => call(addIntructorEvent: e));
  }
}

class _CopyWithStubImpl$Mutation$addIntructorEvent<TRes>
    implements CopyWith$Mutation$addIntructorEvent<TRes> {
  _CopyWithStubImpl$Mutation$addIntructorEvent(this._res);

  TRes _res;

  call({Mutation$addIntructorEvent$addIntructorEvent? addIntructorEvent}) =>
      _res;

  CopyWith$Mutation$addIntructorEvent$addIntructorEvent<TRes>
      get addIntructorEvent =>
          CopyWith$Mutation$addIntructorEvent$addIntructorEvent.stub(_res);
}

const documentNodeMutationaddIntructorEvent = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'addIntructorEvent'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'AddIntructorEventInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'addIntructorEvent'),
        alias: NameNode(value: 'addIntructorEvent'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'error'),
            alias: NameNode(value: 'error'),
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'errors'),
            alias: NameNode(value: 'errors'),
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'success'),
            alias: NameNode(value: 'success'),
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      )
    ]),
  ),
]);
Mutation$addIntructorEvent _parserFn$Mutation$addIntructorEvent(
        Map<String, dynamic> data) =>
    Mutation$addIntructorEvent.fromJson(data);
typedef OnMutationCompleted$Mutation$addIntructorEvent = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$addIntructorEvent?,
);

class Options$Mutation$addIntructorEvent
    extends graphql.MutationOptions<Mutation$addIntructorEvent> {
  Options$Mutation$addIntructorEvent({
    String? operationName,
    required Variables$Mutation$addIntructorEvent variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$addIntructorEvent? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$addIntructorEvent? onCompleted,
    graphql.OnMutationUpdate<Mutation$addIntructorEvent>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$addIntructorEvent(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationaddIntructorEvent,
          parserFn: _parserFn$Mutation$addIntructorEvent,
        );

  final OnMutationCompleted$Mutation$addIntructorEvent? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$addIntructorEvent
    extends graphql.WatchQueryOptions<Mutation$addIntructorEvent> {
  WatchOptions$Mutation$addIntructorEvent({
    String? operationName,
    required Variables$Mutation$addIntructorEvent variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$addIntructorEvent? typedOptimisticResult,
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
          document: documentNodeMutationaddIntructorEvent,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$addIntructorEvent,
        );
}

extension ClientExtension$Mutation$addIntructorEvent on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$addIntructorEvent>>
      mutate$addIntructorEvent(
              Options$Mutation$addIntructorEvent options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$addIntructorEvent>
      watchMutation$addIntructorEvent(
              WatchOptions$Mutation$addIntructorEvent options) =>
          this.watchMutation(options);
}

class Mutation$addIntructorEvent$HookResult {
  Mutation$addIntructorEvent$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$addIntructorEvent runMutation;

  final graphql.QueryResult<Mutation$addIntructorEvent> result;
}

Mutation$addIntructorEvent$HookResult useMutation$addIntructorEvent(
    [WidgetOptions$Mutation$addIntructorEvent? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$addIntructorEvent());
  return Mutation$addIntructorEvent$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$addIntructorEvent>
    useWatchMutation$addIntructorEvent(
            WatchOptions$Mutation$addIntructorEvent options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$addIntructorEvent
    extends graphql.MutationOptions<Mutation$addIntructorEvent> {
  WidgetOptions$Mutation$addIntructorEvent({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$addIntructorEvent? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$addIntructorEvent? onCompleted,
    graphql.OnMutationUpdate<Mutation$addIntructorEvent>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$addIntructorEvent(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationaddIntructorEvent,
          parserFn: _parserFn$Mutation$addIntructorEvent,
        );

  final OnMutationCompleted$Mutation$addIntructorEvent? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$addIntructorEvent
    = graphql.MultiSourceResult<Mutation$addIntructorEvent> Function(
  Variables$Mutation$addIntructorEvent, {
  Object? optimisticResult,
  Mutation$addIntructorEvent? typedOptimisticResult,
});
typedef Builder$Mutation$addIntructorEvent = widgets.Widget Function(
  RunMutation$Mutation$addIntructorEvent,
  graphql.QueryResult<Mutation$addIntructorEvent>?,
);

class Mutation$addIntructorEvent$Widget
    extends graphql_flutter.Mutation<Mutation$addIntructorEvent> {
  Mutation$addIntructorEvent$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$addIntructorEvent? options,
    required Builder$Mutation$addIntructorEvent builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$addIntructorEvent(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Mutation$addIntructorEvent$addIntructorEvent {
  Mutation$addIntructorEvent$addIntructorEvent({
    this.error,
    this.errors,
    required this.success,
  });

  factory Mutation$addIntructorEvent$addIntructorEvent.fromJson(
      Map<String, dynamic> json) {
    final l$error = json['error'];
    final l$errors = json['errors'];
    final l$success = json['success'];
    return Mutation$addIntructorEvent$addIntructorEvent(
      error: l$error == null
          ? null
          : fromJson$Enum$OrderPrivateCoachSessionHistoryError(
              (l$error as String)),
      errors: (l$errors as List<dynamic>?)
          ?.map((e) =>
              fromJson$Enum$OrderPrivateCoachSessionHistoryError((e as String)))
          .toList(),
      success: (l$success as bool),
    );
  }

  final Enum$OrderPrivateCoachSessionHistoryError? error;

  final List<Enum$OrderPrivateCoachSessionHistoryError>? errors;

  final bool success;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$error = error;
    _resultData['error'] = l$error == null
        ? null
        : toJson$Enum$OrderPrivateCoachSessionHistoryError(l$error);
    final l$errors = errors;
    _resultData['errors'] = l$errors
        ?.map((e) => toJson$Enum$OrderPrivateCoachSessionHistoryError(e))
        .toList();
    final l$success = success;
    _resultData['success'] = l$success;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$error = error;
    final l$errors = errors;
    final l$success = success;
    return Object.hashAll([
      l$error,
      l$errors == null ? null : Object.hashAll(l$errors.map((v) => v)),
      l$success,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$addIntructorEvent$addIntructorEvent) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$error = error;
    final lOther$error = other.error;
    if (l$error != lOther$error) {
      return false;
    }
    final l$errors = errors;
    final lOther$errors = other.errors;
    if (l$errors != null && lOther$errors != null) {
      if (l$errors.length != lOther$errors.length) {
        return false;
      }
      for (int i = 0; i < l$errors.length; i++) {
        final l$errors$entry = l$errors[i];
        final lOther$errors$entry = lOther$errors[i];
        if (l$errors$entry != lOther$errors$entry) {
          return false;
        }
      }
    } else if (l$errors != lOther$errors) {
      return false;
    }
    final l$success = success;
    final lOther$success = other.success;
    if (l$success != lOther$success) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$addIntructorEvent$addIntructorEvent
    on Mutation$addIntructorEvent$addIntructorEvent {
  CopyWith$Mutation$addIntructorEvent$addIntructorEvent<
          Mutation$addIntructorEvent$addIntructorEvent>
      get copyWith => CopyWith$Mutation$addIntructorEvent$addIntructorEvent(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$addIntructorEvent$addIntructorEvent<TRes> {
  factory CopyWith$Mutation$addIntructorEvent$addIntructorEvent(
    Mutation$addIntructorEvent$addIntructorEvent instance,
    TRes Function(Mutation$addIntructorEvent$addIntructorEvent) then,
  ) = _CopyWithImpl$Mutation$addIntructorEvent$addIntructorEvent;

  factory CopyWith$Mutation$addIntructorEvent$addIntructorEvent.stub(TRes res) =
      _CopyWithStubImpl$Mutation$addIntructorEvent$addIntructorEvent;

  TRes call({
    Enum$OrderPrivateCoachSessionHistoryError? error,
    List<Enum$OrderPrivateCoachSessionHistoryError>? errors,
    bool? success,
  });
}

class _CopyWithImpl$Mutation$addIntructorEvent$addIntructorEvent<TRes>
    implements CopyWith$Mutation$addIntructorEvent$addIntructorEvent<TRes> {
  _CopyWithImpl$Mutation$addIntructorEvent$addIntructorEvent(
    this._instance,
    this._then,
  );

  final Mutation$addIntructorEvent$addIntructorEvent _instance;

  final TRes Function(Mutation$addIntructorEvent$addIntructorEvent) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? error = _undefined,
    Object? errors = _undefined,
    Object? success = _undefined,
  }) =>
      _then(Mutation$addIntructorEvent$addIntructorEvent(
        error: error == _undefined
            ? _instance.error
            : (error as Enum$OrderPrivateCoachSessionHistoryError?),
        errors: errors == _undefined
            ? _instance.errors
            : (errors as List<Enum$OrderPrivateCoachSessionHistoryError>?),
        success: success == _undefined || success == null
            ? _instance.success
            : (success as bool),
      ));
}

class _CopyWithStubImpl$Mutation$addIntructorEvent$addIntructorEvent<TRes>
    implements CopyWith$Mutation$addIntructorEvent$addIntructorEvent<TRes> {
  _CopyWithStubImpl$Mutation$addIntructorEvent$addIntructorEvent(this._res);

  TRes _res;

  call({
    Enum$OrderPrivateCoachSessionHistoryError? error,
    List<Enum$OrderPrivateCoachSessionHistoryError>? errors,
    bool? success,
  }) =>
      _res;
}
