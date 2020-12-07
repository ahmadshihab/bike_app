// GENERATED CODE - DO NOT MODIFY BY HAND

part of type_list;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TypeList> _$typeListSerializer = new _$TypeListSerializer();

class _$TypeListSerializer implements StructuredSerializer<TypeList> {
  @override
  final Iterable<Type> types = const [TypeList, _$TypeList];
  @override
  final String wireName = 'TypeList';

  @override
  Iterable<Object> serialize(Serializers serializers, TypeList object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.brakeType != null) {
      result
        ..add('BrakeType')
        ..add(serializers.serialize(object.brakeType,
            specifiedType:
                const FullType(BuiltList, const [const FullType(TypeModel)])));
    }
    if (object.discipline != null) {
      result
        ..add('Type')
        ..add(serializers.serialize(object.discipline,
            specifiedType:
                const FullType(BuiltList, const [const FullType(TypeModel)])));
    }
    if (object.frameMaterial != null) {
      result
        ..add('FrameMaterial')
        ..add(serializers.serialize(object.frameMaterial,
            specifiedType:
                const FullType(BuiltList, const [const FullType(TypeModel)])));
    }
    if (object.ridingStyle != null) {
      result
        ..add('RidingStyle')
        ..add(serializers.serialize(object.ridingStyle,
            specifiedType:
                const FullType(BuiltList, const [const FullType(TypeModel)])));
    }
    if (object.models != null) {
      result
        ..add('Models')
        ..add(serializers.serialize(object.models,
            specifiedType:
                const FullType(BuiltList, const [const FullType(TypeModel)])));
    }
    if (object.brands != null) {
      result
        ..add('Brands')
        ..add(serializers.serialize(object.brands,
            specifiedType:
                const FullType(BuiltList, const [const FullType(TypeModel)])));
    }
    if (object.flavors != null) {
      result
        ..add('Flavors')
        ..add(serializers.serialize(object.flavors,
            specifiedType:
                const FullType(BuiltList, const [const FullType(TypeModel)])));
    }
    if (object.nutritionBrands != null) {
      result
        ..add('NutritionBrands')
        ..add(serializers.serialize(object.nutritionBrands,
            specifiedType:
                const FullType(BuiltList, const [const FullType(TypeModel)])));
    }
    if (object.nutritionModel != null) {
      result
        ..add('NutritionModels')
        ..add(serializers.serialize(object.nutritionModel,
            specifiedType:
                const FullType(BuiltList, const [const FullType(TypeModel)])));
    }
    return result;
  }

  @override
  TypeList deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TypeListBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'BrakeType':
          result.brakeType.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(TypeModel)]))
              as BuiltList<Object>);
          break;
        case 'Type':
          result.discipline.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(TypeModel)]))
              as BuiltList<Object>);
          break;
        case 'FrameMaterial':
          result.frameMaterial.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(TypeModel)]))
              as BuiltList<Object>);
          break;
        case 'RidingStyle':
          result.ridingStyle.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(TypeModel)]))
              as BuiltList<Object>);
          break;
        case 'Models':
          result.models.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(TypeModel)]))
              as BuiltList<Object>);
          break;
        case 'Brands':
          result.brands.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(TypeModel)]))
              as BuiltList<Object>);
          break;
        case 'Flavors':
          result.flavors.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(TypeModel)]))
              as BuiltList<Object>);
          break;
        case 'NutritionBrands':
          result.nutritionBrands.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(TypeModel)]))
              as BuiltList<Object>);
          break;
        case 'NutritionModels':
          result.nutritionModel.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(TypeModel)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$TypeList extends TypeList {
  @override
  final BuiltList<TypeModel> brakeType;
  @override
  final BuiltList<TypeModel> discipline;
  @override
  final BuiltList<TypeModel> frameMaterial;
  @override
  final BuiltList<TypeModel> ridingStyle;
  @override
  final BuiltList<TypeModel> models;
  @override
  final BuiltList<TypeModel> brands;
  @override
  final BuiltList<TypeModel> flavors;
  @override
  final BuiltList<TypeModel> nutritionBrands;
  @override
  final BuiltList<TypeModel> nutritionModel;

  factory _$TypeList([void Function(TypeListBuilder) updates]) =>
      (new TypeListBuilder()..update(updates)).build();

  _$TypeList._(
      {this.brakeType,
      this.discipline,
      this.frameMaterial,
      this.ridingStyle,
      this.models,
      this.brands,
      this.flavors,
      this.nutritionBrands,
      this.nutritionModel})
      : super._();

  @override
  TypeList rebuild(void Function(TypeListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TypeListBuilder toBuilder() => new TypeListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TypeList &&
        brakeType == other.brakeType &&
        discipline == other.discipline &&
        frameMaterial == other.frameMaterial &&
        ridingStyle == other.ridingStyle &&
        models == other.models &&
        brands == other.brands &&
        flavors == other.flavors &&
        nutritionBrands == other.nutritionBrands &&
        nutritionModel == other.nutritionModel;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc(0, brakeType.hashCode),
                                    discipline.hashCode),
                                frameMaterial.hashCode),
                            ridingStyle.hashCode),
                        models.hashCode),
                    brands.hashCode),
                flavors.hashCode),
            nutritionBrands.hashCode),
        nutritionModel.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TypeList')
          ..add('brakeType', brakeType)
          ..add('discipline', discipline)
          ..add('frameMaterial', frameMaterial)
          ..add('ridingStyle', ridingStyle)
          ..add('models', models)
          ..add('brands', brands)
          ..add('flavors', flavors)
          ..add('nutritionBrands', nutritionBrands)
          ..add('nutritionModel', nutritionModel))
        .toString();
  }
}

class TypeListBuilder implements Builder<TypeList, TypeListBuilder> {
  _$TypeList _$v;

  ListBuilder<TypeModel> _brakeType;
  ListBuilder<TypeModel> get brakeType =>
      _$this._brakeType ??= new ListBuilder<TypeModel>();
  set brakeType(ListBuilder<TypeModel> brakeType) =>
      _$this._brakeType = brakeType;

  ListBuilder<TypeModel> _discipline;
  ListBuilder<TypeModel> get discipline =>
      _$this._discipline ??= new ListBuilder<TypeModel>();
  set discipline(ListBuilder<TypeModel> discipline) =>
      _$this._discipline = discipline;

  ListBuilder<TypeModel> _frameMaterial;
  ListBuilder<TypeModel> get frameMaterial =>
      _$this._frameMaterial ??= new ListBuilder<TypeModel>();
  set frameMaterial(ListBuilder<TypeModel> frameMaterial) =>
      _$this._frameMaterial = frameMaterial;

  ListBuilder<TypeModel> _ridingStyle;
  ListBuilder<TypeModel> get ridingStyle =>
      _$this._ridingStyle ??= new ListBuilder<TypeModel>();
  set ridingStyle(ListBuilder<TypeModel> ridingStyle) =>
      _$this._ridingStyle = ridingStyle;

  ListBuilder<TypeModel> _models;
  ListBuilder<TypeModel> get models =>
      _$this._models ??= new ListBuilder<TypeModel>();
  set models(ListBuilder<TypeModel> models) => _$this._models = models;

  ListBuilder<TypeModel> _brands;
  ListBuilder<TypeModel> get brands =>
      _$this._brands ??= new ListBuilder<TypeModel>();
  set brands(ListBuilder<TypeModel> brands) => _$this._brands = brands;

  ListBuilder<TypeModel> _flavors;
  ListBuilder<TypeModel> get flavors =>
      _$this._flavors ??= new ListBuilder<TypeModel>();
  set flavors(ListBuilder<TypeModel> flavors) => _$this._flavors = flavors;

  ListBuilder<TypeModel> _nutritionBrands;
  ListBuilder<TypeModel> get nutritionBrands =>
      _$this._nutritionBrands ??= new ListBuilder<TypeModel>();
  set nutritionBrands(ListBuilder<TypeModel> nutritionBrands) =>
      _$this._nutritionBrands = nutritionBrands;

  ListBuilder<TypeModel> _nutritionModel;
  ListBuilder<TypeModel> get nutritionModel =>
      _$this._nutritionModel ??= new ListBuilder<TypeModel>();
  set nutritionModel(ListBuilder<TypeModel> nutritionModel) =>
      _$this._nutritionModel = nutritionModel;

  TypeListBuilder();

  TypeListBuilder get _$this {
    if (_$v != null) {
      _brakeType = _$v.brakeType?.toBuilder();
      _discipline = _$v.discipline?.toBuilder();
      _frameMaterial = _$v.frameMaterial?.toBuilder();
      _ridingStyle = _$v.ridingStyle?.toBuilder();
      _models = _$v.models?.toBuilder();
      _brands = _$v.brands?.toBuilder();
      _flavors = _$v.flavors?.toBuilder();
      _nutritionBrands = _$v.nutritionBrands?.toBuilder();
      _nutritionModel = _$v.nutritionModel?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TypeList other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TypeList;
  }

  @override
  void update(void Function(TypeListBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TypeList build() {
    _$TypeList _$result;
    try {
      _$result = _$v ??
          new _$TypeList._(
              brakeType: _brakeType?.build(),
              discipline: _discipline?.build(),
              frameMaterial: _frameMaterial?.build(),
              ridingStyle: _ridingStyle?.build(),
              models: _models?.build(),
              brands: _brands?.build(),
              flavors: _flavors?.build(),
              nutritionBrands: _nutritionBrands?.build(),
              nutritionModel: _nutritionModel?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'brakeType';
        _brakeType?.build();
        _$failedField = 'discipline';
        _discipline?.build();
        _$failedField = 'frameMaterial';
        _frameMaterial?.build();
        _$failedField = 'ridingStyle';
        _ridingStyle?.build();
        _$failedField = 'models';
        _models?.build();
        _$failedField = 'brands';
        _brands?.build();
        _$failedField = 'flavors';
        _flavors?.build();
        _$failedField = 'nutritionBrands';
        _nutritionBrands?.build();
        _$failedField = 'nutritionModel';
        _nutritionModel?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TypeList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
