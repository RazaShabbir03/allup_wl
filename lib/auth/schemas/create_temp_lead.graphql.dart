import '../../schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$createTempLead {
  factory Variables$Mutation$createTempLead(
          {required Input$CreateTemporaryLeadInput input}) =>
      Variables$Mutation$createTempLead._({
        r'input': input,
      });

  Variables$Mutation$createTempLead._(this._$data);

  factory Variables$Mutation$createTempLead.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$CreateTemporaryLeadInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$createTempLead._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CreateTemporaryLeadInput get input =>
      (_$data['input'] as Input$CreateTemporaryLeadInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$createTempLead<Variables$Mutation$createTempLead>
      get copyWith => CopyWith$Variables$Mutation$createTempLead(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$createTempLead) ||
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

abstract class CopyWith$Variables$Mutation$createTempLead<TRes> {
  factory CopyWith$Variables$Mutation$createTempLead(
    Variables$Mutation$createTempLead instance,
    TRes Function(Variables$Mutation$createTempLead) then,
  ) = _CopyWithImpl$Variables$Mutation$createTempLead;

  factory CopyWith$Variables$Mutation$createTempLead.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$createTempLead;

  TRes call({Input$CreateTemporaryLeadInput? input});
}

class _CopyWithImpl$Variables$Mutation$createTempLead<TRes>
    implements CopyWith$Variables$Mutation$createTempLead<TRes> {
  _CopyWithImpl$Variables$Mutation$createTempLead(
    this._instance,
    this._then,
  );

  final Variables$Mutation$createTempLead _instance;

  final TRes Function(Variables$Mutation$createTempLead) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$createTempLead._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$CreateTemporaryLeadInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$createTempLead<TRes>
    implements CopyWith$Variables$Mutation$createTempLead<TRes> {
  _CopyWithStubImpl$Variables$Mutation$createTempLead(this._res);

  TRes _res;

  call({Input$CreateTemporaryLeadInput? input}) => _res;
}

class Mutation$createTempLead {
  Mutation$createTempLead({this.createTemporaryLead});

  factory Mutation$createTempLead.fromJson(Map<String, dynamic> json) {
    final l$createTemporaryLead = json['createTemporaryLead'];
    return Mutation$createTempLead(
        createTemporaryLead: l$createTemporaryLead == null
            ? null
            : Mutation$createTempLead$createTemporaryLead.fromJson(
                (l$createTemporaryLead as Map<String, dynamic>)));
  }

  final Mutation$createTempLead$createTemporaryLead? createTemporaryLead;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createTemporaryLead = createTemporaryLead;
    _resultData['createTemporaryLead'] = l$createTemporaryLead?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createTemporaryLead = createTemporaryLead;
    return Object.hashAll([l$createTemporaryLead]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$createTempLead) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createTemporaryLead = createTemporaryLead;
    final lOther$createTemporaryLead = other.createTemporaryLead;
    if (l$createTemporaryLead != lOther$createTemporaryLead) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$createTempLead on Mutation$createTempLead {
  CopyWith$Mutation$createTempLead<Mutation$createTempLead> get copyWith =>
      CopyWith$Mutation$createTempLead(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$createTempLead<TRes> {
  factory CopyWith$Mutation$createTempLead(
    Mutation$createTempLead instance,
    TRes Function(Mutation$createTempLead) then,
  ) = _CopyWithImpl$Mutation$createTempLead;

  factory CopyWith$Mutation$createTempLead.stub(TRes res) =
      _CopyWithStubImpl$Mutation$createTempLead;

  TRes call({Mutation$createTempLead$createTemporaryLead? createTemporaryLead});
  CopyWith$Mutation$createTempLead$createTemporaryLead<TRes>
      get createTemporaryLead;
}

class _CopyWithImpl$Mutation$createTempLead<TRes>
    implements CopyWith$Mutation$createTempLead<TRes> {
  _CopyWithImpl$Mutation$createTempLead(
    this._instance,
    this._then,
  );

  final Mutation$createTempLead _instance;

  final TRes Function(Mutation$createTempLead) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? createTemporaryLead = _undefined}) =>
      _then(Mutation$createTempLead(
          createTemporaryLead: createTemporaryLead == _undefined
              ? _instance.createTemporaryLead
              : (createTemporaryLead
                  as Mutation$createTempLead$createTemporaryLead?)));

  CopyWith$Mutation$createTempLead$createTemporaryLead<TRes>
      get createTemporaryLead {
    final local$createTemporaryLead = _instance.createTemporaryLead;
    return local$createTemporaryLead == null
        ? CopyWith$Mutation$createTempLead$createTemporaryLead.stub(
            _then(_instance))
        : CopyWith$Mutation$createTempLead$createTemporaryLead(
            local$createTemporaryLead, (e) => call(createTemporaryLead: e));
  }
}

class _CopyWithStubImpl$Mutation$createTempLead<TRes>
    implements CopyWith$Mutation$createTempLead<TRes> {
  _CopyWithStubImpl$Mutation$createTempLead(this._res);

  TRes _res;

  call({Mutation$createTempLead$createTemporaryLead? createTemporaryLead}) =>
      _res;

  CopyWith$Mutation$createTempLead$createTemporaryLead<TRes>
      get createTemporaryLead =>
          CopyWith$Mutation$createTempLead$createTemporaryLead.stub(_res);
}

const documentNodeMutationcreateTempLead = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'createTempLead'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'CreateTemporaryLeadInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createTemporaryLead'),
        alias: NameNode(value: 'createTemporaryLead'),
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
            name: NameNode(value: 'errorMessage'),
            alias: NameNode(value: 'errorMessage'),
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'customer'),
            alias: NameNode(value: 'customer'),
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
                name: NameNode(value: 'firstName'),
                alias: NameNode(value: 'firstName'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'lastName'),
                alias: NameNode(value: 'lastName'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'phoneNumber'),
                alias: NameNode(value: 'phoneNumber'),
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
Mutation$createTempLead _parserFn$Mutation$createTempLead(
        Map<String, dynamic> data) =>
    Mutation$createTempLead.fromJson(data);
typedef OnMutationCompleted$Mutation$createTempLead = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$createTempLead?,
);

class Options$Mutation$createTempLead
    extends graphql.MutationOptions<Mutation$createTempLead> {
  Options$Mutation$createTempLead({
    String? operationName,
    required Variables$Mutation$createTempLead variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$createTempLead? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$createTempLead? onCompleted,
    graphql.OnMutationUpdate<Mutation$createTempLead>? update,
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
                        : _parserFn$Mutation$createTempLead(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationcreateTempLead,
          parserFn: _parserFn$Mutation$createTempLead,
        );

  final OnMutationCompleted$Mutation$createTempLead? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$createTempLead
    extends graphql.WatchQueryOptions<Mutation$createTempLead> {
  WatchOptions$Mutation$createTempLead({
    String? operationName,
    required Variables$Mutation$createTempLead variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$createTempLead? typedOptimisticResult,
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
          document: documentNodeMutationcreateTempLead,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$createTempLead,
        );
}

extension ClientExtension$Mutation$createTempLead on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$createTempLead>> mutate$createTempLead(
          Options$Mutation$createTempLead options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$createTempLead> watchMutation$createTempLead(
          WatchOptions$Mutation$createTempLead options) =>
      this.watchMutation(options);
}

class Mutation$createTempLead$HookResult {
  Mutation$createTempLead$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$createTempLead runMutation;

  final graphql.QueryResult<Mutation$createTempLead> result;
}

Mutation$createTempLead$HookResult useMutation$createTempLead(
    [WidgetOptions$Mutation$createTempLead? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$createTempLead());
  return Mutation$createTempLead$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$createTempLead>
    useWatchMutation$createTempLead(
            WatchOptions$Mutation$createTempLead options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$createTempLead
    extends graphql.MutationOptions<Mutation$createTempLead> {
  WidgetOptions$Mutation$createTempLead({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$createTempLead? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$createTempLead? onCompleted,
    graphql.OnMutationUpdate<Mutation$createTempLead>? update,
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
                        : _parserFn$Mutation$createTempLead(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationcreateTempLead,
          parserFn: _parserFn$Mutation$createTempLead,
        );

  final OnMutationCompleted$Mutation$createTempLead? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$createTempLead
    = graphql.MultiSourceResult<Mutation$createTempLead> Function(
  Variables$Mutation$createTempLead, {
  Object? optimisticResult,
  Mutation$createTempLead? typedOptimisticResult,
});
typedef Builder$Mutation$createTempLead = widgets.Widget Function(
  RunMutation$Mutation$createTempLead,
  graphql.QueryResult<Mutation$createTempLead>?,
);

class Mutation$createTempLead$Widget
    extends graphql_flutter.Mutation<Mutation$createTempLead> {
  Mutation$createTempLead$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$createTempLead? options,
    required Builder$Mutation$createTempLead builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$createTempLead(),
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

class Mutation$createTempLead$createTemporaryLead {
  Mutation$createTempLead$createTemporaryLead({
    this.error,
    this.errorMessage,
    this.customer,
  });

  factory Mutation$createTempLead$createTemporaryLead.fromJson(
      Map<String, dynamic> json) {
    final l$error = json['error'];
    final l$errorMessage = json['errorMessage'];
    final l$customer = json['customer'];
    return Mutation$createTempLead$createTemporaryLead(
      error: l$error == null
          ? null
          : fromJson$Enum$TemporaryLeadErrors((l$error as String)),
      errorMessage: (l$errorMessage as String?),
      customer: l$customer == null
          ? null
          : Mutation$createTempLead$createTemporaryLead$customer.fromJson(
              (l$customer as Map<String, dynamic>)),
    );
  }

  final Enum$TemporaryLeadErrors? error;

  final String? errorMessage;

  final Mutation$createTempLead$createTemporaryLead$customer? customer;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$error = error;
    _resultData['error'] =
        l$error == null ? null : toJson$Enum$TemporaryLeadErrors(l$error);
    final l$errorMessage = errorMessage;
    _resultData['errorMessage'] = l$errorMessage;
    final l$customer = customer;
    _resultData['customer'] = l$customer?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$error = error;
    final l$errorMessage = errorMessage;
    final l$customer = customer;
    return Object.hashAll([
      l$error,
      l$errorMessage,
      l$customer,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$createTempLead$createTemporaryLead) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$error = error;
    final lOther$error = other.error;
    if (l$error != lOther$error) {
      return false;
    }
    final l$errorMessage = errorMessage;
    final lOther$errorMessage = other.errorMessage;
    if (l$errorMessage != lOther$errorMessage) {
      return false;
    }
    final l$customer = customer;
    final lOther$customer = other.customer;
    if (l$customer != lOther$customer) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$createTempLead$createTemporaryLead
    on Mutation$createTempLead$createTemporaryLead {
  CopyWith$Mutation$createTempLead$createTemporaryLead<
          Mutation$createTempLead$createTemporaryLead>
      get copyWith => CopyWith$Mutation$createTempLead$createTemporaryLead(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$createTempLead$createTemporaryLead<TRes> {
  factory CopyWith$Mutation$createTempLead$createTemporaryLead(
    Mutation$createTempLead$createTemporaryLead instance,
    TRes Function(Mutation$createTempLead$createTemporaryLead) then,
  ) = _CopyWithImpl$Mutation$createTempLead$createTemporaryLead;

  factory CopyWith$Mutation$createTempLead$createTemporaryLead.stub(TRes res) =
      _CopyWithStubImpl$Mutation$createTempLead$createTemporaryLead;

  TRes call({
    Enum$TemporaryLeadErrors? error,
    String? errorMessage,
    Mutation$createTempLead$createTemporaryLead$customer? customer,
  });
  CopyWith$Mutation$createTempLead$createTemporaryLead$customer<TRes>
      get customer;
}

class _CopyWithImpl$Mutation$createTempLead$createTemporaryLead<TRes>
    implements CopyWith$Mutation$createTempLead$createTemporaryLead<TRes> {
  _CopyWithImpl$Mutation$createTempLead$createTemporaryLead(
    this._instance,
    this._then,
  );

  final Mutation$createTempLead$createTemporaryLead _instance;

  final TRes Function(Mutation$createTempLead$createTemporaryLead) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? error = _undefined,
    Object? errorMessage = _undefined,
    Object? customer = _undefined,
  }) =>
      _then(Mutation$createTempLead$createTemporaryLead(
        error: error == _undefined
            ? _instance.error
            : (error as Enum$TemporaryLeadErrors?),
        errorMessage: errorMessage == _undefined
            ? _instance.errorMessage
            : (errorMessage as String?),
        customer: customer == _undefined
            ? _instance.customer
            : (customer
                as Mutation$createTempLead$createTemporaryLead$customer?),
      ));

  CopyWith$Mutation$createTempLead$createTemporaryLead$customer<TRes>
      get customer {
    final local$customer = _instance.customer;
    return local$customer == null
        ? CopyWith$Mutation$createTempLead$createTemporaryLead$customer.stub(
            _then(_instance))
        : CopyWith$Mutation$createTempLead$createTemporaryLead$customer(
            local$customer, (e) => call(customer: e));
  }
}

class _CopyWithStubImpl$Mutation$createTempLead$createTemporaryLead<TRes>
    implements CopyWith$Mutation$createTempLead$createTemporaryLead<TRes> {
  _CopyWithStubImpl$Mutation$createTempLead$createTemporaryLead(this._res);

  TRes _res;

  call({
    Enum$TemporaryLeadErrors? error,
    String? errorMessage,
    Mutation$createTempLead$createTemporaryLead$customer? customer,
  }) =>
      _res;

  CopyWith$Mutation$createTempLead$createTemporaryLead$customer<TRes>
      get customer =>
          CopyWith$Mutation$createTempLead$createTemporaryLead$customer.stub(
              _res);
}

class Mutation$createTempLead$createTemporaryLead$customer {
  Mutation$createTempLead$createTemporaryLead$customer({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.phoneNumber,
  });

  factory Mutation$createTempLead$createTemporaryLead$customer.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$phoneNumber = json['phoneNumber'];
    return Mutation$createTempLead$createTemporaryLead$customer(
      id: (l$id as String),
      firstName: (l$firstName as String),
      lastName: (l$lastName as String),
      phoneNumber: (l$phoneNumber as String),
    );
  }

  final String id;

  final String firstName;

  final String lastName;

  final String phoneNumber;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$firstName = firstName;
    _resultData['firstName'] = l$firstName;
    final l$lastName = lastName;
    _resultData['lastName'] = l$lastName;
    final l$phoneNumber = phoneNumber;
    _resultData['phoneNumber'] = l$phoneNumber;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$phoneNumber = phoneNumber;
    return Object.hashAll([
      l$id,
      l$firstName,
      l$lastName,
      l$phoneNumber,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$createTempLead$createTemporaryLead$customer) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (l$firstName != lOther$firstName) {
      return false;
    }
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (l$lastName != lOther$lastName) {
      return false;
    }
    final l$phoneNumber = phoneNumber;
    final lOther$phoneNumber = other.phoneNumber;
    if (l$phoneNumber != lOther$phoneNumber) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$createTempLead$createTemporaryLead$customer
    on Mutation$createTempLead$createTemporaryLead$customer {
  CopyWith$Mutation$createTempLead$createTemporaryLead$customer<
          Mutation$createTempLead$createTemporaryLead$customer>
      get copyWith =>
          CopyWith$Mutation$createTempLead$createTemporaryLead$customer(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$createTempLead$createTemporaryLead$customer<
    TRes> {
  factory CopyWith$Mutation$createTempLead$createTemporaryLead$customer(
    Mutation$createTempLead$createTemporaryLead$customer instance,
    TRes Function(Mutation$createTempLead$createTemporaryLead$customer) then,
  ) = _CopyWithImpl$Mutation$createTempLead$createTemporaryLead$customer;

  factory CopyWith$Mutation$createTempLead$createTemporaryLead$customer.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$createTempLead$createTemporaryLead$customer;

  TRes call({
    String? id,
    String? firstName,
    String? lastName,
    String? phoneNumber,
  });
}

class _CopyWithImpl$Mutation$createTempLead$createTemporaryLead$customer<TRes>
    implements
        CopyWith$Mutation$createTempLead$createTemporaryLead$customer<TRes> {
  _CopyWithImpl$Mutation$createTempLead$createTemporaryLead$customer(
    this._instance,
    this._then,
  );

  final Mutation$createTempLead$createTemporaryLead$customer _instance;

  final TRes Function(Mutation$createTempLead$createTemporaryLead$customer)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? phoneNumber = _undefined,
  }) =>
      _then(Mutation$createTempLead$createTemporaryLead$customer(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        firstName: firstName == _undefined || firstName == null
            ? _instance.firstName
            : (firstName as String),
        lastName: lastName == _undefined || lastName == null
            ? _instance.lastName
            : (lastName as String),
        phoneNumber: phoneNumber == _undefined || phoneNumber == null
            ? _instance.phoneNumber
            : (phoneNumber as String),
      ));
}

class _CopyWithStubImpl$Mutation$createTempLead$createTemporaryLead$customer<
        TRes>
    implements
        CopyWith$Mutation$createTempLead$createTemporaryLead$customer<TRes> {
  _CopyWithStubImpl$Mutation$createTempLead$createTemporaryLead$customer(
      this._res);

  TRes _res;

  call({
    String? id,
    String? firstName,
    String? lastName,
    String? phoneNumber,
  }) =>
      _res;
}
