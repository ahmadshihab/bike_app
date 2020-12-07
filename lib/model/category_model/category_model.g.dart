// GENERATED CODE - DO NOT MODIFY BY HAND

part of category_model;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CategoryModel> _$categoryModelSerializer =
    new _$CategoryModelSerializer();

class _$CategoryModelSerializer implements StructuredSerializer<CategoryModel> {
  @override
  final Iterable<Type> types = const [CategoryModel, _$CategoryModel];
  @override
  final String wireName = 'CategoryModel';

  @override
  Iterable<Object> serialize(Serializers serializers, CategoryModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'categories',
      serializers.serialize(object.categories,
          specifiedType:
              const FullType(BuiltList, const [const FullType(CategoryModel)])),
    ];

    return result;
  }

  @override
  CategoryModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CategoryModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'categories':
          result.categories.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CategoryModel)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$CategoryModel extends CategoryModel {
  @override
  final String title;
  @override
  final BuiltList<CategoryModel> categories;

  factory _$CategoryModel([void Function(CategoryModelBuilder) updates]) =>
      (new CategoryModelBuilder()..update(updates)).build();

  _$CategoryModel._({this.title, this.categories}) : super._() {
    if (title == null) {
      throw new BuiltValueNullFieldError('CategoryModel', 'title');
    }
    if (categories == null) {
      throw new BuiltValueNullFieldError('CategoryModel', 'categories');
    }
  }

  @override
  CategoryModel rebuild(void Function(CategoryModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoryModelBuilder toBuilder() => new CategoryModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CategoryModel &&
        title == other.title &&
        categories == other.categories;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, title.hashCode), categories.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CategoryModel')
          ..add('title', title)
          ..add('categories', categories))
        .toString();
  }
}

class CategoryModelBuilder
    implements Builder<CategoryModel, CategoryModelBuilder> {
  _$CategoryModel _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  ListBuilder<CategoryModel> _categories;
  ListBuilder<CategoryModel> get categories =>
      _$this._categories ??= new ListBuilder<CategoryModel>();
  set categories(ListBuilder<CategoryModel> categories) =>
      _$this._categories = categories;

  CategoryModelBuilder();

  CategoryModelBuilder get _$this {
    if (_$v != null) {
      _title = _$v.title;
      _categories = _$v.categories?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CategoryModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CategoryModel;
  }

  @override
  void update(void Function(CategoryModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CategoryModel build() {
    _$CategoryModel _$result;
    try {
      _$result = _$v ??
          new _$CategoryModel._(title: title, categories: categories.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'categories';
        categories.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CategoryModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
