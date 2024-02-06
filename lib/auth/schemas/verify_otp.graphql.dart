import '../../schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$VerifyOTPAuth {
  factory Variables$Mutation$VerifyOTPAuth({Input$VerifyOTPInput? input}) =>
      Variables$Mutation$VerifyOTPAuth._({
        if (input != null) r'input': input,
      });

  Variables$Mutation$VerifyOTPAuth._(this._$data);

  factory Variables$Mutation$VerifyOTPAuth.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('input')) {
      final l$input = data['input'];
      result$data['input'] = l$input == null
          ? null
          : Input$VerifyOTPInput.fromJson((l$input as Map<String, dynamic>));
    }
    return Variables$Mutation$VerifyOTPAuth._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$VerifyOTPInput? get input => (_$data['input'] as Input$VerifyOTPInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('input')) {
      final l$input = input;
      result$data['input'] = l$input?.toJson();
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$VerifyOTPAuth<Variables$Mutation$VerifyOTPAuth>
      get copyWith => CopyWith$Variables$Mutation$VerifyOTPAuth(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$VerifyOTPAuth) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (_$data.containsKey('input') != other._$data.containsKey('input')) {
      return false;
    }
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    return Object.hashAll([_$data.containsKey('input') ? l$input : const {}]);
  }
}

abstract class CopyWith$Variables$Mutation$VerifyOTPAuth<TRes> {
  factory CopyWith$Variables$Mutation$VerifyOTPAuth(
    Variables$Mutation$VerifyOTPAuth instance,
    TRes Function(Variables$Mutation$VerifyOTPAuth) then,
  ) = _CopyWithImpl$Variables$Mutation$VerifyOTPAuth;

  factory CopyWith$Variables$Mutation$VerifyOTPAuth.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$VerifyOTPAuth;

  TRes call({Input$VerifyOTPInput? input});
}

class _CopyWithImpl$Variables$Mutation$VerifyOTPAuth<TRes>
    implements CopyWith$Variables$Mutation$VerifyOTPAuth<TRes> {
  _CopyWithImpl$Variables$Mutation$VerifyOTPAuth(
    this._instance,
    this._then,
  );

  final Variables$Mutation$VerifyOTPAuth _instance;

  final TRes Function(Variables$Mutation$VerifyOTPAuth) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$VerifyOTPAuth._({
        ..._instance._$data,
        if (input != _undefined) 'input': (input as Input$VerifyOTPInput?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$VerifyOTPAuth<TRes>
    implements CopyWith$Variables$Mutation$VerifyOTPAuth<TRes> {
  _CopyWithStubImpl$Variables$Mutation$VerifyOTPAuth(this._res);

  TRes _res;

  call({Input$VerifyOTPInput? input}) => _res;
}

class Mutation$VerifyOTPAuth {
  Mutation$VerifyOTPAuth({required this.verifyOTP});

  factory Mutation$VerifyOTPAuth.fromJson(Map<String, dynamic> json) {
    final l$verifyOTP = json['verifyOTP'];
    return Mutation$VerifyOTPAuth(
        verifyOTP: Mutation$VerifyOTPAuth$verifyOTP.fromJson(
            (l$verifyOTP as Map<String, dynamic>)));
  }

  final Mutation$VerifyOTPAuth$verifyOTP verifyOTP;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$verifyOTP = verifyOTP;
    _resultData['verifyOTP'] = l$verifyOTP.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$verifyOTP = verifyOTP;
    return Object.hashAll([l$verifyOTP]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$VerifyOTPAuth) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$verifyOTP = verifyOTP;
    final lOther$verifyOTP = other.verifyOTP;
    if (l$verifyOTP != lOther$verifyOTP) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$VerifyOTPAuth on Mutation$VerifyOTPAuth {
  CopyWith$Mutation$VerifyOTPAuth<Mutation$VerifyOTPAuth> get copyWith =>
      CopyWith$Mutation$VerifyOTPAuth(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$VerifyOTPAuth<TRes> {
  factory CopyWith$Mutation$VerifyOTPAuth(
    Mutation$VerifyOTPAuth instance,
    TRes Function(Mutation$VerifyOTPAuth) then,
  ) = _CopyWithImpl$Mutation$VerifyOTPAuth;

  factory CopyWith$Mutation$VerifyOTPAuth.stub(TRes res) =
      _CopyWithStubImpl$Mutation$VerifyOTPAuth;

  TRes call({Mutation$VerifyOTPAuth$verifyOTP? verifyOTP});
  CopyWith$Mutation$VerifyOTPAuth$verifyOTP<TRes> get verifyOTP;
}

class _CopyWithImpl$Mutation$VerifyOTPAuth<TRes>
    implements CopyWith$Mutation$VerifyOTPAuth<TRes> {
  _CopyWithImpl$Mutation$VerifyOTPAuth(
    this._instance,
    this._then,
  );

  final Mutation$VerifyOTPAuth _instance;

  final TRes Function(Mutation$VerifyOTPAuth) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? verifyOTP = _undefined}) => _then(Mutation$VerifyOTPAuth(
      verifyOTP: verifyOTP == _undefined || verifyOTP == null
          ? _instance.verifyOTP
          : (verifyOTP as Mutation$VerifyOTPAuth$verifyOTP)));

  CopyWith$Mutation$VerifyOTPAuth$verifyOTP<TRes> get verifyOTP {
    final local$verifyOTP = _instance.verifyOTP;
    return CopyWith$Mutation$VerifyOTPAuth$verifyOTP(
        local$verifyOTP, (e) => call(verifyOTP: e));
  }
}

class _CopyWithStubImpl$Mutation$VerifyOTPAuth<TRes>
    implements CopyWith$Mutation$VerifyOTPAuth<TRes> {
  _CopyWithStubImpl$Mutation$VerifyOTPAuth(this._res);

  TRes _res;

  call({Mutation$VerifyOTPAuth$verifyOTP? verifyOTP}) => _res;

  CopyWith$Mutation$VerifyOTPAuth$verifyOTP<TRes> get verifyOTP =>
      CopyWith$Mutation$VerifyOTPAuth$verifyOTP.stub(_res);
}

const documentNodeMutationVerifyOTPAuth = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'VerifyOTPAuth'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'VerifyOTPInput'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'verifyOTP'),
        alias: NameNode(value: 'verifyOTP'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'accessToken'),
            alias: NameNode(value: 'accessToken'),
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
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
            name: NameNode(value: 'errorMessage'),
            alias: NameNode(value: 'errorMessage'),
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      )
    ]),
  ),
]);
Mutation$VerifyOTPAuth _parserFn$Mutation$VerifyOTPAuth(
        Map<String, dynamic> data) =>
    Mutation$VerifyOTPAuth.fromJson(data);
typedef OnMutationCompleted$Mutation$VerifyOTPAuth = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$VerifyOTPAuth?,
);

class Options$Mutation$VerifyOTPAuth
    extends graphql.MutationOptions<Mutation$VerifyOTPAuth> {
  Options$Mutation$VerifyOTPAuth({
    String? operationName,
    Variables$Mutation$VerifyOTPAuth? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$VerifyOTPAuth? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$VerifyOTPAuth? onCompleted,
    graphql.OnMutationUpdate<Mutation$VerifyOTPAuth>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables?.toJson() ?? {},
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
                        : _parserFn$Mutation$VerifyOTPAuth(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationVerifyOTPAuth,
          parserFn: _parserFn$Mutation$VerifyOTPAuth,
        );

  final OnMutationCompleted$Mutation$VerifyOTPAuth? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$VerifyOTPAuth
    extends graphql.WatchQueryOptions<Mutation$VerifyOTPAuth> {
  WatchOptions$Mutation$VerifyOTPAuth({
    String? operationName,
    Variables$Mutation$VerifyOTPAuth? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$VerifyOTPAuth? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationVerifyOTPAuth,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$VerifyOTPAuth,
        );
}

extension ClientExtension$Mutation$VerifyOTPAuth on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$VerifyOTPAuth>> mutate$VerifyOTPAuth(
          [Options$Mutation$VerifyOTPAuth? options]) async =>
      await this.mutate(options ?? Options$Mutation$VerifyOTPAuth());
  graphql.ObservableQuery<Mutation$VerifyOTPAuth> watchMutation$VerifyOTPAuth(
          [WatchOptions$Mutation$VerifyOTPAuth? options]) =>
      this.watchMutation(options ?? WatchOptions$Mutation$VerifyOTPAuth());
}

class Mutation$VerifyOTPAuth$HookResult {
  Mutation$VerifyOTPAuth$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$VerifyOTPAuth runMutation;

  final graphql.QueryResult<Mutation$VerifyOTPAuth> result;
}

Mutation$VerifyOTPAuth$HookResult useMutation$VerifyOTPAuth(
    [WidgetOptions$Mutation$VerifyOTPAuth? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$VerifyOTPAuth());
  return Mutation$VerifyOTPAuth$HookResult(
    ({variables, optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables?.toJson() ?? const {},
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$VerifyOTPAuth> useWatchMutation$VerifyOTPAuth(
        [WatchOptions$Mutation$VerifyOTPAuth? options]) =>
    graphql_flutter
        .useWatchMutation(options ?? WatchOptions$Mutation$VerifyOTPAuth());

class WidgetOptions$Mutation$VerifyOTPAuth
    extends graphql.MutationOptions<Mutation$VerifyOTPAuth> {
  WidgetOptions$Mutation$VerifyOTPAuth({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$VerifyOTPAuth? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$VerifyOTPAuth? onCompleted,
    graphql.OnMutationUpdate<Mutation$VerifyOTPAuth>? update,
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
                        : _parserFn$Mutation$VerifyOTPAuth(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationVerifyOTPAuth,
          parserFn: _parserFn$Mutation$VerifyOTPAuth,
        );

  final OnMutationCompleted$Mutation$VerifyOTPAuth? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$VerifyOTPAuth
    = graphql.MultiSourceResult<Mutation$VerifyOTPAuth> Function({
  Variables$Mutation$VerifyOTPAuth? variables,
  Object? optimisticResult,
  Mutation$VerifyOTPAuth? typedOptimisticResult,
});
typedef Builder$Mutation$VerifyOTPAuth = widgets.Widget Function(
  RunMutation$Mutation$VerifyOTPAuth,
  graphql.QueryResult<Mutation$VerifyOTPAuth>?,
);

class Mutation$VerifyOTPAuth$Widget
    extends graphql_flutter.Mutation<Mutation$VerifyOTPAuth> {
  Mutation$VerifyOTPAuth$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$VerifyOTPAuth? options,
    required Builder$Mutation$VerifyOTPAuth builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$VerifyOTPAuth(),
          builder: (
            run,
            result,
          ) =>
              builder(
            ({
              variables,
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables?.toJson() ?? const {},
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Mutation$VerifyOTPAuth$verifyOTP {
  Mutation$VerifyOTPAuth$verifyOTP({
    this.accessToken,
    this.error,
    this.errors,
    this.errorMessage,
  });

  factory Mutation$VerifyOTPAuth$verifyOTP.fromJson(Map<String, dynamic> json) {
    final l$accessToken = json['accessToken'];
    final l$error = json['error'];
    final l$errors = json['errors'];
    final l$errorMessage = json['errorMessage'];
    return Mutation$VerifyOTPAuth$verifyOTP(
      accessToken: (l$accessToken as String?),
      error: l$error == null
          ? null
          : fromJson$Enum$VerifyMobileError((l$error as String)),
      errors: (l$errors as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : fromJson$Enum$VerifyMobileError((e as String)))
          .toList(),
      errorMessage: (l$errorMessage as String?),
    );
  }

  final String? accessToken;

  final Enum$VerifyMobileError? error;

  final List<Enum$VerifyMobileError?>? errors;

  final String? errorMessage;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$accessToken = accessToken;
    _resultData['accessToken'] = l$accessToken;
    final l$error = error;
    _resultData['error'] =
        l$error == null ? null : toJson$Enum$VerifyMobileError(l$error);
    final l$errors = errors;
    _resultData['errors'] = l$errors
        ?.map((e) => e == null ? null : toJson$Enum$VerifyMobileError(e))
        .toList();
    final l$errorMessage = errorMessage;
    _resultData['errorMessage'] = l$errorMessage;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$accessToken = accessToken;
    final l$error = error;
    final l$errors = errors;
    final l$errorMessage = errorMessage;
    return Object.hashAll([
      l$accessToken,
      l$error,
      l$errors == null ? null : Object.hashAll(l$errors.map((v) => v)),
      l$errorMessage,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$VerifyOTPAuth$verifyOTP) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$accessToken = accessToken;
    final lOther$accessToken = other.accessToken;
    if (l$accessToken != lOther$accessToken) {
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
    final l$errorMessage = errorMessage;
    final lOther$errorMessage = other.errorMessage;
    if (l$errorMessage != lOther$errorMessage) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$VerifyOTPAuth$verifyOTP
    on Mutation$VerifyOTPAuth$verifyOTP {
  CopyWith$Mutation$VerifyOTPAuth$verifyOTP<Mutation$VerifyOTPAuth$verifyOTP>
      get copyWith => CopyWith$Mutation$VerifyOTPAuth$verifyOTP(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$VerifyOTPAuth$verifyOTP<TRes> {
  factory CopyWith$Mutation$VerifyOTPAuth$verifyOTP(
    Mutation$VerifyOTPAuth$verifyOTP instance,
    TRes Function(Mutation$VerifyOTPAuth$verifyOTP) then,
  ) = _CopyWithImpl$Mutation$VerifyOTPAuth$verifyOTP;

  factory CopyWith$Mutation$VerifyOTPAuth$verifyOTP.stub(TRes res) =
      _CopyWithStubImpl$Mutation$VerifyOTPAuth$verifyOTP;

  TRes call({
    String? accessToken,
    Enum$VerifyMobileError? error,
    List<Enum$VerifyMobileError?>? errors,
    String? errorMessage,
  });
}

class _CopyWithImpl$Mutation$VerifyOTPAuth$verifyOTP<TRes>
    implements CopyWith$Mutation$VerifyOTPAuth$verifyOTP<TRes> {
  _CopyWithImpl$Mutation$VerifyOTPAuth$verifyOTP(
    this._instance,
    this._then,
  );

  final Mutation$VerifyOTPAuth$verifyOTP _instance;

  final TRes Function(Mutation$VerifyOTPAuth$verifyOTP) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accessToken = _undefined,
    Object? error = _undefined,
    Object? errors = _undefined,
    Object? errorMessage = _undefined,
  }) =>
      _then(Mutation$VerifyOTPAuth$verifyOTP(
        accessToken: accessToken == _undefined
            ? _instance.accessToken
            : (accessToken as String?),
        error: error == _undefined
            ? _instance.error
            : (error as Enum$VerifyMobileError?),
        errors: errors == _undefined
            ? _instance.errors
            : (errors as List<Enum$VerifyMobileError?>?),
        errorMessage: errorMessage == _undefined
            ? _instance.errorMessage
            : (errorMessage as String?),
      ));
}

class _CopyWithStubImpl$Mutation$VerifyOTPAuth$verifyOTP<TRes>
    implements CopyWith$Mutation$VerifyOTPAuth$verifyOTP<TRes> {
  _CopyWithStubImpl$Mutation$VerifyOTPAuth$verifyOTP(this._res);

  TRes _res;

  call({
    String? accessToken,
    Enum$VerifyMobileError? error,
    List<Enum$VerifyMobileError?>? errors,
    String? errorMessage,
  }) =>
      _res;
}
