// GENERATED CODE - DO NOT MODIFY BY HAND

part of type_model;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TypeModel> _$typeModelSerializer = new _$TypeModelSerializer();

class _$TypeModelSerializer implements StructuredSerializer<TypeModel> {
  @override
  final Iterable<Type> types = const [TypeModel, _$TypeModel];
  @override
  final String wireName = 'TypeModel';

  @override
  Iterable<Object> serialize(Serializers serializers, TypeModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  TypeModel deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TypeModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$TypeModel extends TypeModel {
  @override
  final int id;
  @override
  final String title;

  factory _$TypeModel([void Function(TypeModelBuilder) updates]) =>
      (new TypeModelBuilder()..update(updates)).build();

  _$TypeModel._({this.id, this.title}) : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('TypeModel', 'id');
    }
    if (title == null) {
      throw new BuiltValueNullFieldError('TypeModel', 'title');
    }
  }

  @override
  TypeModel rebuild(void Function(TypeModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TypeModelBuilder toBuilder() => new TypeModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TypeModel && id == other.id && title == other.title;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), title.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TypeModel')
          ..add('id', id)
          ..add('title', title))
        .toString();
  }
}

class TypeModelBuilder implements Builder<TypeModel, TypeModelBuilder> {
  _$TypeModel _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  TypeModelBuilder();

  TypeModelBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _title = _$v.title;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TypeModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TypeModel;
  }

  @override
  void update(void Function(TypeModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TypeModel build() {
    final _$result = _$v ?? new _$TypeModel._(id: id, title: title);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
