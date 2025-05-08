// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package, unnecessary_null_in_if_null_operators, prefer_null_aware_operators, invalid_use_of_visible_for_overriding_member
part of 'slider.dart';

// **************************************************************************
// OverReactBuilder (package:over_react/src/builder.dart)
//
// Using nullSafety: true.  {languageVersion: 3.0, source: packageConfig, package: lucidmind_frontend}
// **************************************************************************

// React component factory implementation.
//
// Registers component implementation and links type meta to builder factory.
@Deprecated('This API is for use only within generated code.'
    ' Do not reference it in your code, as it may change at any time.')
final $SliderComponentFactory = registerComponent2(
  () => _$SliderComponent(),
  builderFactory: _$Slider,
  componentClass: SliderComponent,
  isWrapper: false,
  parentType: null,
);

_$$SliderProps _$Slider([Map? backingProps]) => backingProps == null
    ? _$$SliderProps$JsMap(JsBackedMap())
    : _$$SliderProps(backingProps);

// Concrete props implementation.
//
// Implements constructor and backing map, and links up to generated component factory.
@Deprecated('This API is for use only within generated code.'
    ' Do not reference it in your code, as it may change at any time.')
abstract class _$$SliderProps extends UiProps
    with
        SliderProps,
        // If this generated mixin is undefined, it's likely because SliderProps is not a valid `mixin`-based props mixin, or because it is but the generated mixin was not imported. Check the declaration of SliderProps, and check that $SliderProps is exported/imported properly.
        $SliderProps {
  _$$SliderProps._();

  factory _$$SliderProps(Map? backingMap) {
    if (backingMap == null || backingMap is JsBackedMap) {
      return _$$SliderProps$JsMap(backingMap as JsBackedMap?);
    } else {
      return _$$SliderProps$PlainMap(backingMap);
    }
  }

  /// Let `UiProps` internals know that this class has been generated.
  @override
  bool get $isClassGenerated => true;

  /// The `ReactComponentFactory` associated with the component built by this class.
  @override
  ReactComponentFactoryProxy get componentFactory =>
      super.componentFactory ?? $SliderComponentFactory;

  /// The default namespace for the prop getters/setters generated for this class.
  @override
  String get propKeyNamespace => '';

  @override
  PropsMetaCollection get staticMeta => const PropsMetaCollection({
        // If this generated mixin is undefined, it's likely because SliderProps is not a valid `mixin`-based props mixin, or because it is but the generated mixin was not imported. Check the declaration of SliderProps, and check that $SliderProps is exported/imported properly.
        SliderProps: $SliderProps.meta,
      });

  @override
  String $getPropKey(void Function(Map m) accessMap) =>
      _$getPropKey$_$$SliderProps(accessMap, (map) => _$$SliderProps(map));
}

/// An alias for [getPropKey] so it can be referenced within the props class impl
/// without being shadowed by the `getPropKey` instance extension member.
const _$getPropKey$_$$SliderProps = getPropKey;

// Concrete props implementation that can be backed by any [Map].
@Deprecated('This API is for use only within generated code.'
    ' Do not reference it in your code, as it may change at any time.')
class _$$SliderProps$PlainMap extends _$$SliderProps {
  // This initializer of `_props` to an empty map, as well as the reassignment
  // of `_props` in the constructor body is necessary to work around a DDC bug: https://github.com/dart-lang/sdk/issues/36217
  _$$SliderProps$PlainMap(Map? backingMap)
      : this._props = {},
        super._() {
    this._props = backingMap ?? {};
  }

  /// The backing props map proxied by this class.
  @override
  Map get props => _props;
  Map _props;
}

// Concrete props implementation that can only be backed by [JsMap],
// allowing dart2js to compile more optimal code for key-value pair reads/writes.
@Deprecated('This API is for use only within generated code.'
    ' Do not reference it in your code, as it may change at any time.')
class _$$SliderProps$JsMap extends _$$SliderProps {
  // This initializer of `_props` to an empty map, as well as the reassignment
  // of `_props` in the constructor body is necessary to work around a DDC bug: https://github.com/dart-lang/sdk/issues/36217
  _$$SliderProps$JsMap(JsBackedMap? backingMap)
      : this._props = JsBackedMap(),
        super._() {
    this._props = backingMap ?? JsBackedMap();
  }

  /// The backing props map proxied by this class.
  @override
  JsBackedMap get props => _props;
  JsBackedMap _props;
}

// Concrete component implementation mixin.
//
// Implements typed props/state factories, defaults `consumedPropKeys` to the keys
// generated for the associated props class.
@Deprecated('This API is for use only within generated code.'
    ' Do not reference it in your code, as it may change at any time.')
class _$SliderComponent extends SliderComponent {
  late _$$SliderProps$JsMap _cachedTypedProps;

  @override
  _$$SliderProps$JsMap get props => _cachedTypedProps;

  @override
  set props(Map value) {
    assert(
        getBackingMap(value) is JsBackedMap,
        'Component2.props should never be set directly in '
        'production. If this is required for testing, the '
        'component should be rendered within the test. If '
        'that does not have the necessary result, the last '
        'resort is to use typedPropsFactoryJs.');
    super.props = value;
    _cachedTypedProps =
        typedPropsFactoryJs(getBackingMap(value) as JsBackedMap);
  }

  @override
  _$$SliderProps$JsMap typedPropsFactoryJs(JsBackedMap? backingMap) =>
      _$$SliderProps$JsMap(backingMap);

  @override
  _$$SliderProps typedPropsFactory(Map? backingMap) =>
      _$$SliderProps(backingMap);

  /// Let `UiComponent` internals know that this class has been generated.
  @override
  bool get $isClassGenerated => true;

  @override
  String get displayName => 'Slider';

  /// The default consumed props, comprising all props mixins used by SliderProps.
  /// Used in `*ConsumedProps` methods if [consumedProps] is not overridden.
  @override
  get $defaultConsumedProps => propsMeta.all;

  @override
  PropsMetaCollection get propsMeta => const PropsMetaCollection({
        // If this generated mixin is undefined, it's likely because SliderProps is not a valid `mixin`-based props mixin, or because it is but the generated mixin was not imported. Check the declaration of SliderProps, and check that $SliderProps is exported/imported properly.
        SliderProps: $SliderProps.meta,
      });
}

@Deprecated('This API is for use only within generated code.'
    ' Do not reference it in your code, as it may change at any time.'
    ' EXCEPTION: this may be used in legacy boilerplate until'
    ' it is transitioned to the new mixin-based boilerplate.')
mixin $SliderProps on SliderProps {
  static const PropsMeta meta = _$metaForSliderProps;
  @override
  int? get min => (props[_$key__min__SliderProps] ?? null) as int?;
  @override
  set min(int? value) => props[_$key__min__SliderProps] = value;
  @override
  int? get max => (props[_$key__max__SliderProps] ?? null) as int?;
  @override
  set max(int? value) => props[_$key__max__SliderProps] = value;
  @override
  int? get value => (props[_$key__value__SliderProps] ?? null) as int?;
  @override
  set value(int? value) => props[_$key__value__SliderProps] = value;
  @override
  void Function(int)? get onSliderChange =>
      (props[_$key__onSliderChange__SliderProps] ?? null) as void Function(
          int)?;
  @override
  set onSliderChange(void Function(int)? value) =>
      props[_$key__onSliderChange__SliderProps] = value;
  /* GENERATED CONSTANTS */
  static const PropDescriptor _$prop__min__SliderProps =
      PropDescriptor(_$key__min__SliderProps);
  static const PropDescriptor _$prop__max__SliderProps =
      PropDescriptor(_$key__max__SliderProps);
  static const PropDescriptor _$prop__value__SliderProps =
      PropDescriptor(_$key__value__SliderProps);
  static const PropDescriptor _$prop__onSliderChange__SliderProps =
      PropDescriptor(_$key__onSliderChange__SliderProps);
  static const String _$key__min__SliderProps = 'SliderProps.min';
  static const String _$key__max__SliderProps = 'SliderProps.max';
  static const String _$key__value__SliderProps = 'SliderProps.value';
  static const String _$key__onSliderChange__SliderProps =
      'SliderProps.onSliderChange';

  static const List<PropDescriptor> $props = [
    _$prop__min__SliderProps,
    _$prop__max__SliderProps,
    _$prop__value__SliderProps,
    _$prop__onSliderChange__SliderProps
  ];
  static const List<String> $propKeys = [
    _$key__min__SliderProps,
    _$key__max__SliderProps,
    _$key__value__SliderProps,
    _$key__onSliderChange__SliderProps
  ];

  @override
  @UiProps.$mustCallSuper
  void validateRequiredProps() {
    super.validateRequiredProps();
  }
}

@Deprecated('This API is for use only within generated code.'
    ' Do not reference it in your code, as it may change at any time.')
const PropsMeta _$metaForSliderProps = PropsMeta(
  fields: $SliderProps.$props,
  keys: $SliderProps.$propKeys,
);
