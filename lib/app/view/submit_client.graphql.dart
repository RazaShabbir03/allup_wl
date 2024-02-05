import '../../schema.graphql.dart';

class Input$SaveProductCategoryInput {
  factory Input$SaveProductCategoryInput({
    String? id,
    required String name,
    String? image,
    String? createdBy,
    required Enum$GlobalStatusType status,
  }) =>
      Input$SaveProductCategoryInput._({
        if (id != null) r'id': id,
        r'name': name,
        if (image != null) r'image': image,
        if (createdBy != null) r'createdBy': createdBy,
        r'status': status,
      });

  Input$SaveProductCategoryInput._(this._$data);

  factory Input$SaveProductCategoryInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    if (data.containsKey('image')) {
      final l$image = data['image'];
      result$data['image'] = (l$image as String?);
    }
    if (data.containsKey('createdBy')) {
      final l$createdBy = data['createdBy'];
      result$data['createdBy'] = (l$createdBy as String?);
    }
    final l$status = data['status'];
    result$data['status'] =
        fromJson$Enum$GlobalStatusType((l$status as String));
    return Input$SaveProductCategoryInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get id => (_$data['id'] as String?);

  String get name => (_$data['name'] as String);

  String? get image => (_$data['image'] as String?);

  String? get createdBy => (_$data['createdBy'] as String?);

  Enum$GlobalStatusType get status =>
      (_$data['status'] as Enum$GlobalStatusType);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    final l$name = name;
    result$data['name'] = l$name;
    if (_$data.containsKey('image')) {
      final l$image = image;
      result$data['image'] = l$image;
    }
    if (_$data.containsKey('createdBy')) {
      final l$createdBy = createdBy;
      result$data['createdBy'] = l$createdBy;
    }
    final l$status = status;
    result$data['status'] = toJson$Enum$GlobalStatusType(l$status);
    return result$data;
  }

  CopyWith$Input$SaveProductCategoryInput<Input$SaveProductCategoryInput>
      get copyWith => CopyWith$Input$SaveProductCategoryInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$SaveProductCategoryInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$image = image;
    final lOther$image = other.image;
    if (_$data.containsKey('image') != other._$data.containsKey('image')) {
      return false;
    }
    if (l$image != lOther$image) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (_$data.containsKey('createdBy') !=
        other._$data.containsKey('createdBy')) {
      return false;
    }
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$image = image;
    final l$createdBy = createdBy;
    final l$status = status;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      l$name,
      _$data.containsKey('image') ? l$image : const {},
      _$data.containsKey('createdBy') ? l$createdBy : const {},
      l$status,
    ]);
  }
}

abstract class CopyWith$Input$SaveProductCategoryInput<TRes> {
  factory CopyWith$Input$SaveProductCategoryInput(
    Input$SaveProductCategoryInput instance,
    TRes Function(Input$SaveProductCategoryInput) then,
  ) = _CopyWithImpl$Input$SaveProductCategoryInput;

  factory CopyWith$Input$SaveProductCategoryInput.stub(TRes res) =
      _CopyWithStubImpl$Input$SaveProductCategoryInput;

  TRes call({
    String? id,
    String? name,
    String? image,
    String? createdBy,
    Enum$GlobalStatusType? status,
  });
}

class _CopyWithImpl$Input$SaveProductCategoryInput<TRes>
    implements CopyWith$Input$SaveProductCategoryInput<TRes> {
  _CopyWithImpl$Input$SaveProductCategoryInput(
    this._instance,
    this._then,
  );

  final Input$SaveProductCategoryInput _instance;

  final TRes Function(Input$SaveProductCategoryInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? image = _undefined,
    Object? createdBy = _undefined,
    Object? status = _undefined,
  }) =>
      _then(Input$SaveProductCategoryInput._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as String?),
        if (name != _undefined && name != null) 'name': (name as String),
        if (image != _undefined) 'image': (image as String?),
        if (createdBy != _undefined) 'createdBy': (createdBy as String?),
        if (status != _undefined && status != null)
          'status': (status as Enum$GlobalStatusType),
      }));
}

class _CopyWithStubImpl$Input$SaveProductCategoryInput<TRes>
    implements CopyWith$Input$SaveProductCategoryInput<TRes> {
  _CopyWithStubImpl$Input$SaveProductCategoryInput(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? image,
    String? createdBy,
    Enum$GlobalStatusType? status,
  }) =>
      _res;
}
