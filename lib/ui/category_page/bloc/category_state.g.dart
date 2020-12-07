// GENERATED CODE - DO NOT MODIFY BY HAND

part of category_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CategoryState extends CategoryState {
  @override
  final String error;
  @override
  final bool isLoading;
  @override
  final BuiltList<CategoryModel> menus;

  factory _$CategoryState([void Function(CategoryStateBuilder) updates]) =>
      (new CategoryStateBuilder()..update(updates)).build();

  _$CategoryState._({this.error, this.isLoading, this.menus}) : super._() {
    if (menus == null) {
      throw new BuiltValueNullFieldError('CategoryState', 'menus');
    }
  }

  @override
  CategoryState rebuild(void Function(CategoryStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoryStateBuilder toBuilder() => new CategoryStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CategoryState &&
        error == other.error &&
        isLoading == other.isLoading &&
        menus == other.menus;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, error.hashCode), isLoading.hashCode), menus.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CategoryState')
          ..add('error', error)
          ..add('isLoading', isLoading)
          ..add('menus', menus))
        .toString();
  }
}

class CategoryStateBuilder
    implements Builder<CategoryState, CategoryStateBuilder> {
  _$CategoryState _$v;

  String _error;
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  bool _isLoading;
  bool get isLoading => _$this._isLoading;
  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  ListBuilder<CategoryModel> _menus;
  ListBuilder<CategoryModel> get menus =>
      _$this._menus ??= new ListBuilder<CategoryModel>();
  set menus(ListBuilder<CategoryModel> menus) => _$this._menus = menus;

  CategoryStateBuilder();

  CategoryStateBuilder get _$this {
    if (_$v != null) {
      _error = _$v.error;
      _isLoading = _$v.isLoading;
      _menus = _$v.menus?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CategoryState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CategoryState;
  }

  @override
  void update(void Function(CategoryStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CategoryState build() {
    _$CategoryState _$result;
    try {
      _$result = _$v ??
          new _$CategoryState._(
              error: error, isLoading: isLoading, menus: menus.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'menus';
        menus.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CategoryState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
