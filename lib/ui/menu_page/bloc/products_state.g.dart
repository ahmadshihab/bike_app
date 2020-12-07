// GENERATED CODE - DO NOT MODIFY BY HAND

part of products_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProductsState extends ProductsState {
  @override
  final String error;
  @override
  final bool isLoading;
  @override
  final bool isExpanded;
  @override
  final TypeList menus;

  factory _$ProductsState([void Function(ProductsStateBuilder) updates]) =>
      (new ProductsStateBuilder()..update(updates)).build();

  _$ProductsState._({this.error, this.isLoading, this.isExpanded, this.menus})
      : super._() {
    if (error == null) {
      throw new BuiltValueNullFieldError('ProductsState', 'error');
    }
    if (isLoading == null) {
      throw new BuiltValueNullFieldError('ProductsState', 'isLoading');
    }
    if (isExpanded == null) {
      throw new BuiltValueNullFieldError('ProductsState', 'isExpanded');
    }
  }

  @override
  ProductsState rebuild(void Function(ProductsStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductsStateBuilder toBuilder() => new ProductsStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductsState &&
        error == other.error &&
        isLoading == other.isLoading &&
        isExpanded == other.isExpanded &&
        menus == other.menus;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, error.hashCode), isLoading.hashCode),
            isExpanded.hashCode),
        menus.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProductsState')
          ..add('error', error)
          ..add('isLoading', isLoading)
          ..add('isExpanded', isExpanded)
          ..add('menus', menus))
        .toString();
  }
}

class ProductsStateBuilder
    implements Builder<ProductsState, ProductsStateBuilder> {
  _$ProductsState _$v;

  String _error;
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  bool _isLoading;
  bool get isLoading => _$this._isLoading;
  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  bool _isExpanded;
  bool get isExpanded => _$this._isExpanded;
  set isExpanded(bool isExpanded) => _$this._isExpanded = isExpanded;

  TypeListBuilder _menus;
  TypeListBuilder get menus => _$this._menus ??= new TypeListBuilder();
  set menus(TypeListBuilder menus) => _$this._menus = menus;

  ProductsStateBuilder();

  ProductsStateBuilder get _$this {
    if (_$v != null) {
      _error = _$v.error;
      _isLoading = _$v.isLoading;
      _isExpanded = _$v.isExpanded;
      _menus = _$v.menus?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductsState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ProductsState;
  }

  @override
  void update(void Function(ProductsStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProductsState build() {
    _$ProductsState _$result;
    try {
      _$result = _$v ??
          new _$ProductsState._(
              error: error,
              isLoading: isLoading,
              isExpanded: isExpanded,
              menus: _menus?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'menus';
        _menus?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ProductsState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
