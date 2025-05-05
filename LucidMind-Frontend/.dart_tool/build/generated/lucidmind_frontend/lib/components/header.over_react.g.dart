// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package, unnecessary_null_in_if_null_operators, prefer_null_aware_operators, invalid_use_of_visible_for_overriding_member
part of 'header.dart';

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
final $HeaderComponentFactory = registerComponent2(
  () => _$HeaderComponent(),
  builderFactory: _$Header,
  componentClass: HeaderComponent,
  isWrapper: false,
  parentType: null,
);

_$$HeaderProps _$Header([Map? backingProps]) => backingProps == null
    ? _$$HeaderProps$JsMap(JsBackedMap())
    : _$$HeaderProps(backingProps);

// Concrete props implementation.
//
// Implements constructor and backing map, and links up to generated component factory.
@Deprecated('This API is for use only within generated code.'
    ' Do not reference it in your code, as it may change at any time.')
abstract class _$$HeaderProps extends UiProps
    with
        HeaderProps,
        // If this generated mixin is undefined, it's likely because HeaderProps is not a valid `mixin`-based props mixin, or because it is but the generated mixin was not imported. Check the declaration of HeaderProps, and check that $HeaderProps is exported/imported properly.
        $HeaderProps {
  _$$HeaderProps._();

  factory _$$HeaderProps(Map? backingMap) {
    if (backingMap == null || backingMap is JsBackedMap) {
      return _$$HeaderProps$JsMap(backingMap as JsBackedMap?);
    } else {
      return _$$HeaderProps$PlainMap(backingMap);
    }
  }

  /// Let `UiProps` internals know that this class has been generated.
  @override
  bool get $isClassGenerated => true;

  /// The `ReactComponentFactory` associated with the component built by this class.
  @override
  ReactComponentFactoryProxy get componentFactory =>
      super.componentFactory ?? $HeaderComponentFactory;

  /// The default namespace for the prop getters/setters generated for this class.
  @override
  String get propKeyNamespace => '';

  @override
  PropsMetaCollection get staticMeta => const PropsMetaCollection({
        // If this generated mixin is undefined, it's likely because HeaderProps is not a valid `mixin`-based props mixin, or because it is but the generated mixin was not imported. Check the declaration of HeaderProps, and check that $HeaderProps is exported/imported properly.
        HeaderProps: $HeaderProps.meta,
      });

  @override
  String $getPropKey(void Function(Map m) accessMap) =>
      _$getPropKey$_$$HeaderProps(accessMap, (map) => _$$HeaderProps(map));
}

/// An alias for [getPropKey] so it can be referenced within the props class impl
/// without being shadowed by the `getPropKey` instance extension member.
const _$getPropKey$_$$HeaderProps = getPropKey;

// Concrete props implementation that can be backed by any [Map].
@Deprecated('This API is for use only within generated code.'
    ' Do not reference it in your code, as it may change at any time.')
class _$$HeaderProps$PlainMap extends _$$HeaderProps {
  // This initializer of `_props` to an empty map, as well as the reassignment
  // of `_props` in the constructor body is necessary to work around a DDC bug: https://github.com/dart-lang/sdk/issues/36217
  _$$HeaderProps$PlainMap(Map? backingMap)
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
class _$$HeaderProps$JsMap extends _$$HeaderProps {
  // This initializer of `_props` to an empty map, as well as the reassignment
  // of `_props` in the constructor body is necessary to work around a DDC bug: https://github.com/dart-lang/sdk/issues/36217
  _$$HeaderProps$JsMap(JsBackedMap? backingMap)
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
class _$HeaderComponent extends HeaderComponent {
  late _$$HeaderProps$JsMap _cachedTypedProps;

  @override
  _$$HeaderProps$JsMap get props => _cachedTypedProps;

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
  _$$HeaderProps$JsMap typedPropsFactoryJs(JsBackedMap? backingMap) =>
      _$$HeaderProps$JsMap(backingMap);

  @override
  _$$HeaderProps typedPropsFactory(Map? backingMap) =>
      _$$HeaderProps(backingMap);

  /// Let `UiComponent` internals know that this class has been generated.
  @override
  bool get $isClassGenerated => true;

  @override
  String get displayName => 'Header';

  /// The default consumed props, comprising all props mixins used by HeaderProps.
  /// Used in `*ConsumedProps` methods if [consumedProps] is not overridden.
  @override
  get $defaultConsumedProps => propsMeta.all;

  @override
  PropsMetaCollection get propsMeta => const PropsMetaCollection({
        // If this generated mixin is undefined, it's likely because HeaderProps is not a valid `mixin`-based props mixin, or because it is but the generated mixin was not imported. Check the declaration of HeaderProps, and check that $HeaderProps is exported/imported properly.
        HeaderProps: $HeaderProps.meta,
      });
}

@Deprecated('This API is for use only within generated code.'
    ' Do not reference it in your code, as it may change at any time.'
    ' EXCEPTION: this may be used in legacy boilerplate until'
    ' it is transitioned to the new mixin-based boilerplate.')
mixin $HeaderProps on HeaderProps {
  static const PropsMeta meta = _$metaForHeaderProps;
  @override
  String? get name => (props[_$key__name__HeaderProps] ?? null) as String?;
  @override
  set name(String? value) => props[_$key__name__HeaderProps] = value;
  @override
  void Function(String)? get setUserName =>
      (props[_$key__setUserName__HeaderProps] ?? null) as void Function(
          String)?;
  @override
  set setUserName(void Function(String)? value) =>
      props[_$key__setUserName__HeaderProps] = value;
  /* GENERATED CONSTANTS */
  static const PropDescriptor _$prop__name__HeaderProps =
      PropDescriptor(_$key__name__HeaderProps);
  static const PropDescriptor _$prop__setUserName__HeaderProps =
      PropDescriptor(_$key__setUserName__HeaderProps);
  static const String _$key__name__HeaderProps = 'HeaderProps.name';
  static const String _$key__setUserName__HeaderProps =
      'HeaderProps.setUserName';

  static const List<PropDescriptor> $props = [
    _$prop__name__HeaderProps,
    _$prop__setUserName__HeaderProps
  ];
  static const List<String> $propKeys = [
    _$key__name__HeaderProps,
    _$key__setUserName__HeaderProps
  ];

  @override
  @UiProps.$mustCallSuper
  void validateRequiredProps() {
    super.validateRequiredProps();
  }
}

@Deprecated('This API is for use only within generated code.'
    ' Do not reference it in your code, as it may change at any time.')
const PropsMeta _$metaForHeaderProps = PropsMeta(
  fields: $HeaderProps.$props,
  keys: $HeaderProps.$propKeys,
);
