import '../../schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$SendOTPAuth {
  factory Variables$Mutation$SendOTPAuth({required Input$sendOTPInput input}) =>
      Variables$Mutation$SendOTPAuth._({
        r'input': input,
      });

  Variables$Mutation$SendOTPAuth._(this._$data);

  factory Variables$Mutation$SendOTPAuth.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$sendOTPInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$SendOTPAuth._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$sendOTPInput get input => (_$data['input'] as Input$sendOTPInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$SendOTPAuth<Variables$Mutation$SendOTPAuth>
      get copyWith => CopyWith$Variables$Mutation$SendOTPAuth(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$SendOTPAuth) ||
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

abstract class CopyWith$Variables$Mutation$SendOTPAuth<TRes> {
  factory CopyWith$Variables$Mutation$SendOTPAuth(
    Variables$Mutation$SendOTPAuth instance,
    TRes Function(Variables$Mutation$SendOTPAuth) then,
  ) = _CopyWithImpl$Variables$Mutation$SendOTPAuth;

  factory CopyWith$Variables$Mutation$SendOTPAuth.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$SendOTPAuth;

  TRes call({Input$sendOTPInput? input});
}

class _CopyWithImpl$Variables$Mutation$SendOTPAuth<TRes>
    implements CopyWith$Variables$Mutation$SendOTPAuth<TRes> {
  _CopyWithImpl$Variables$Mutation$SendOTPAuth(
    this._instance,
    this._then,
  );

  final Variables$Mutation$SendOTPAuth _instance;

  final TRes Function(Variables$Mutation$SendOTPAuth) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$SendOTPAuth._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$sendOTPInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$SendOTPAuth<TRes>
    implements CopyWith$Variables$Mutation$SendOTPAuth<TRes> {
  _CopyWithStubImpl$Variables$Mutation$SendOTPAuth(this._res);

  TRes _res;

  call({Input$sendOTPInput? input}) => _res;
}

class Mutation$SendOTPAuth {
  Mutation$SendOTPAuth({required this.sendOTP});

  factory Mutation$SendOTPAuth.fromJson(Map<String, dynamic> json) {
    final l$sendOTP = json['sendOTP'];
    return Mutation$SendOTPAuth(
        sendOTP: Mutation$SendOTPAuth$sendOTP.fromJson(
            (l$sendOTP as Map<String, dynamic>)));
  }

  final Mutation$SendOTPAuth$sendOTP sendOTP;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sendOTP = sendOTP;
    _resultData['sendOTP'] = l$sendOTP.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sendOTP = sendOTP;
    return Object.hashAll([l$sendOTP]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$SendOTPAuth) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$sendOTP = sendOTP;
    final lOther$sendOTP = other.sendOTP;
    if (l$sendOTP != lOther$sendOTP) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$SendOTPAuth on Mutation$SendOTPAuth {
  CopyWith$Mutation$SendOTPAuth<Mutation$SendOTPAuth> get copyWith =>
      CopyWith$Mutation$SendOTPAuth(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SendOTPAuth<TRes> {
  factory CopyWith$Mutation$SendOTPAuth(
    Mutation$SendOTPAuth instance,
    TRes Function(Mutation$SendOTPAuth) then,
  ) = _CopyWithImpl$Mutation$SendOTPAuth;

  factory CopyWith$Mutation$SendOTPAuth.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SendOTPAuth;

  TRes call({Mutation$SendOTPAuth$sendOTP? sendOTP});
  CopyWith$Mutation$SendOTPAuth$sendOTP<TRes> get sendOTP;
}

class _CopyWithImpl$Mutation$SendOTPAuth<TRes>
    implements CopyWith$Mutation$SendOTPAuth<TRes> {
  _CopyWithImpl$Mutation$SendOTPAuth(
    this._instance,
    this._then,
  );

  final Mutation$SendOTPAuth _instance;

  final TRes Function(Mutation$SendOTPAuth) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? sendOTP = _undefined}) => _then(Mutation$SendOTPAuth(
      sendOTP: sendOTP == _undefined || sendOTP == null
          ? _instance.sendOTP
          : (sendOTP as Mutation$SendOTPAuth$sendOTP)));

  CopyWith$Mutation$SendOTPAuth$sendOTP<TRes> get sendOTP {
    final local$sendOTP = _instance.sendOTP;
    return CopyWith$Mutation$SendOTPAuth$sendOTP(
        local$sendOTP, (e) => call(sendOTP: e));
  }
}

class _CopyWithStubImpl$Mutation$SendOTPAuth<TRes>
    implements CopyWith$Mutation$SendOTPAuth<TRes> {
  _CopyWithStubImpl$Mutation$SendOTPAuth(this._res);

  TRes _res;

  call({Mutation$SendOTPAuth$sendOTP? sendOTP}) => _res;

  CopyWith$Mutation$SendOTPAuth$sendOTP<TRes> get sendOTP =>
      CopyWith$Mutation$SendOTPAuth$sendOTP.stub(_res);
}

const documentNodeMutationSendOTPAuth = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'SendOTPAuth'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'sendOTPInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'sendOTP'),
        alias: NameNode(value: 'sendOTP'),
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
            name: NameNode(value: 'send'),
            alias: NameNode(value: 'send'),
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      )
    ]),
  ),
]);
Mutation$SendOTPAuth _parserFn$Mutation$SendOTPAuth(
        Map<String, dynamic> data) =>
    Mutation$SendOTPAuth.fromJson(data);
typedef OnMutationCompleted$Mutation$SendOTPAuth = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$SendOTPAuth?,
);

class Options$Mutation$SendOTPAuth
    extends graphql.MutationOptions<Mutation$SendOTPAuth> {
  Options$Mutation$SendOTPAuth({
    String? operationName,
    required Variables$Mutation$SendOTPAuth variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SendOTPAuth? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$SendOTPAuth? onCompleted,
    graphql.OnMutationUpdate<Mutation$SendOTPAuth>? update,
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
                    data == null ? null : _parserFn$Mutation$SendOTPAuth(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationSendOTPAuth,
          parserFn: _parserFn$Mutation$SendOTPAuth,
        );

  final OnMutationCompleted$Mutation$SendOTPAuth? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$SendOTPAuth
    extends graphql.WatchQueryOptions<Mutation$SendOTPAuth> {
  WatchOptions$Mutation$SendOTPAuth({
    String? operationName,
    required Variables$Mutation$SendOTPAuth variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SendOTPAuth? typedOptimisticResult,
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
          document: documentNodeMutationSendOTPAuth,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$SendOTPAuth,
        );
}

extension ClientExtension$Mutation$SendOTPAuth on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$SendOTPAuth>> mutate$SendOTPAuth(
          Options$Mutation$SendOTPAuth options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$SendOTPAuth> watchMutation$SendOTPAuth(
          WatchOptions$Mutation$SendOTPAuth options) =>
      this.watchMutation(options);
}

class Mutation$SendOTPAuth$HookResult {
  Mutation$SendOTPAuth$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$SendOTPAuth runMutation;

  final graphql.QueryResult<Mutation$SendOTPAuth> result;
}

Mutation$SendOTPAuth$HookResult useMutation$SendOTPAuth(
    [WidgetOptions$Mutation$SendOTPAuth? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$SendOTPAuth());
  return Mutation$SendOTPAuth$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$SendOTPAuth> useWatchMutation$SendOTPAuth(
        WatchOptions$Mutation$SendOTPAuth options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$SendOTPAuth
    extends graphql.MutationOptions<Mutation$SendOTPAuth> {
  WidgetOptions$Mutation$SendOTPAuth({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SendOTPAuth? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$SendOTPAuth? onCompleted,
    graphql.OnMutationUpdate<Mutation$SendOTPAuth>? update,
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
                    data == null ? null : _parserFn$Mutation$SendOTPAuth(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationSendOTPAuth,
          parserFn: _parserFn$Mutation$SendOTPAuth,
        );

  final OnMutationCompleted$Mutation$SendOTPAuth? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$SendOTPAuth
    = graphql.MultiSourceResult<Mutation$SendOTPAuth> Function(
  Variables$Mutation$SendOTPAuth, {
  Object? optimisticResult,
  Mutation$SendOTPAuth? typedOptimisticResult,
});
typedef Builder$Mutation$SendOTPAuth = widgets.Widget Function(
  RunMutation$Mutation$SendOTPAuth,
  graphql.QueryResult<Mutation$SendOTPAuth>?,
);

class Mutation$SendOTPAuth$Widget
    extends graphql_flutter.Mutation<Mutation$SendOTPAuth> {
  Mutation$SendOTPAuth$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$SendOTPAuth? options,
    required Builder$Mutation$SendOTPAuth builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$SendOTPAuth(),
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

class Mutation$SendOTPAuth$sendOTP {
  Mutation$SendOTPAuth$sendOTP({
    this.error,
    this.errors,
    this.send,
  });

  factory Mutation$SendOTPAuth$sendOTP.fromJson(Map<String, dynamic> json) {
    final l$error = json['error'];
    final l$errors = json['errors'];
    final l$send = json['send'];
    return Mutation$SendOTPAuth$sendOTP(
      error: l$error == null
          ? null
          : fromJson$Enum$SendOTPPError((l$error as String)),
      errors: (l$errors as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : fromJson$Enum$SendOTPPError((e as String)))
          .toList(),
      send: (l$send as bool?),
    );
  }

  final Enum$SendOTPPError? error;

  final List<Enum$SendOTPPError?>? errors;

  final bool? send;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$error = error;
    _resultData['error'] =
        l$error == null ? null : toJson$Enum$SendOTPPError(l$error);
    final l$errors = errors;
    _resultData['errors'] = l$errors
        ?.map((e) => e == null ? null : toJson$Enum$SendOTPPError(e))
        .toList();
    final l$send = send;
    _resultData['send'] = l$send;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$error = error;
    final l$errors = errors;
    final l$send = send;
    return Object.hashAll([
      l$error,
      l$errors == null ? null : Object.hashAll(l$errors.map((v) => v)),
      l$send,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$SendOTPAuth$sendOTP) ||
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
    final l$send = send;
    final lOther$send = other.send;
    if (l$send != lOther$send) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$SendOTPAuth$sendOTP
    on Mutation$SendOTPAuth$sendOTP {
  CopyWith$Mutation$SendOTPAuth$sendOTP<Mutation$SendOTPAuth$sendOTP>
      get copyWith => CopyWith$Mutation$SendOTPAuth$sendOTP(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$SendOTPAuth$sendOTP<TRes> {
  factory CopyWith$Mutation$SendOTPAuth$sendOTP(
    Mutation$SendOTPAuth$sendOTP instance,
    TRes Function(Mutation$SendOTPAuth$sendOTP) then,
  ) = _CopyWithImpl$Mutation$SendOTPAuth$sendOTP;

  factory CopyWith$Mutation$SendOTPAuth$sendOTP.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SendOTPAuth$sendOTP;

  TRes call({
    Enum$SendOTPPError? error,
    List<Enum$SendOTPPError?>? errors,
    bool? send,
  });
}

class _CopyWithImpl$Mutation$SendOTPAuth$sendOTP<TRes>
    implements CopyWith$Mutation$SendOTPAuth$sendOTP<TRes> {
  _CopyWithImpl$Mutation$SendOTPAuth$sendOTP(
    this._instance,
    this._then,
  );

  final Mutation$SendOTPAuth$sendOTP _instance;

  final TRes Function(Mutation$SendOTPAuth$sendOTP) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? error = _undefined,
    Object? errors = _undefined,
    Object? send = _undefined,
  }) =>
      _then(Mutation$SendOTPAuth$sendOTP(
        error: error == _undefined
            ? _instance.error
            : (error as Enum$SendOTPPError?),
        errors: errors == _undefined
            ? _instance.errors
            : (errors as List<Enum$SendOTPPError?>?),
        send: send == _undefined ? _instance.send : (send as bool?),
      ));
}

class _CopyWithStubImpl$Mutation$SendOTPAuth$sendOTP<TRes>
    implements CopyWith$Mutation$SendOTPAuth$sendOTP<TRes> {
  _CopyWithStubImpl$Mutation$SendOTPAuth$sendOTP(this._res);

  TRes _res;

  call({
    Enum$SendOTPPError? error,
    List<Enum$SendOTPPError?>? errors,
    bool? send,
  }) =>
      _res;
}
