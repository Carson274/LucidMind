// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package, unnecessary_null_in_if_null_operators, prefer_null_aware_operators, invalid_use_of_visible_for_overriding_member
part of 'app.dart';

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
final $AppComponentFactory = registerComponent2(
  () => _$AppComponent(),
  builderFactory: _$App,
  componentClass: AppComponent,
  isWrapper: false,
  parentType: null,
);

_$$AppProps _$App([Map? backingProps]) => backingProps == null
    ? _$$AppProps$JsMap(JsBackedMap())
    : _$$AppProps(backingProps);

// Concrete props implementation.
//
// Implements constructor and backing map, and links up to generated component factory.
@Deprecated('This API is for use only within generated code.'
    ' Do not reference it in your code, as it may change at any time.')
abstract class _$$AppProps extends UiProps
    with
        AppProps,
        // If this generated mixin is undefined, it's likely because AppProps is not a valid `mixin`-based props mixin, or because it is but the generated mixin was not imported. Check the declaration of AppProps, and check that $AppProps is exported/imported properly.
        $AppProps {
  _$$AppProps._();

  factory _$$AppProps(Map? backingMap) {
    if (backingMap == null || backingMap is JsBackedMap) {
      return _$$AppProps$JsMap(backingMap as JsBackedMap?);
    } else {
      return _$$AppProps$PlainMap(backingMap);
    }
  }

  /// Let `UiProps` internals know that this class has been generated.
  @override
  bool get $isClassGenerated => true;

  /// The `ReactComponentFactory` associated with the component built by this class.
  @override
  ReactComponentFactoryProxy get componentFactory =>
      super.componentFactory ?? $AppComponentFactory;

  /// The default namespace for the prop getters/setters generated for this class.
  @override
  String get propKeyNamespace => '';

  @override
  PropsMetaCollection get staticMeta => const PropsMetaCollection({
        // If this generated mixin is undefined, it's likely because AppProps is not a valid `mixin`-based props mixin, or because it is but the generated mixin was not imported. Check the declaration of AppProps, and check that $AppProps is exported/imported properly.
        AppProps: $AppProps.meta,
      });

  @override
  String $getPropKey(void Function(Map m) accessMap) =>
      _$getPropKey$_$$AppProps(accessMap, (map) => _$$AppProps(map));
}

/// An alias for [getPropKey] so it can be referenced within the props class impl
/// without being shadowed by the `getPropKey` instance extension member.
const _$getPropKey$_$$AppProps = getPropKey;

// Concrete props implementation that can be backed by any [Map].
@Deprecated('This API is for use only within generated code.'
    ' Do not reference it in your code, as it may change at any time.')
class _$$AppProps$PlainMap extends _$$AppProps {
  // This initializer of `_props` to an empty map, as well as the reassignment
  // of `_props` in the constructor body is necessary to work around a DDC bug: https://github.com/dart-lang/sdk/issues/36217
  _$$AppProps$PlainMap(Map? backingMap)
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
class _$$AppProps$JsMap extends _$$AppProps {
  // This initializer of `_props` to an empty map, as well as the reassignment
  // of `_props` in the constructor body is necessary to work around a DDC bug: https://github.com/dart-lang/sdk/issues/36217
  _$$AppProps$JsMap(JsBackedMap? backingMap)
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
class _$AppComponent extends AppComponent {
  late _$$AppProps$JsMap _cachedTypedProps;

  @override
  _$$AppProps$JsMap get props => _cachedTypedProps;

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
  _$$AppProps$JsMap typedPropsFactoryJs(JsBackedMap? backingMap) =>
      _$$AppProps$JsMap(backingMap);

  @override
  _$$AppProps typedPropsFactory(Map? backingMap) => _$$AppProps(backingMap);

  /// Let `UiComponent` internals know that this class has been generated.
  @override
  bool get $isClassGenerated => true;

  @override
  String get displayName => 'App';

  /// The default consumed props, comprising all props mixins used by AppProps.
  /// Used in `*ConsumedProps` methods if [consumedProps] is not overridden.
  @override
  get $defaultConsumedProps => propsMeta.all;

  @override
  PropsMetaCollection get propsMeta => const PropsMetaCollection({
        // If this generated mixin is undefined, it's likely because AppProps is not a valid `mixin`-based props mixin, or because it is but the generated mixin was not imported. Check the declaration of AppProps, and check that $AppProps is exported/imported properly.
        AppProps: $AppProps.meta,
      });
}

@Deprecated('This API is for use only within generated code.'
    ' Do not reference it in your code, as it may change at any time.'
    ' EXCEPTION: this may be used in legacy boilerplate until'
    ' it is transitioned to the new mixin-based boilerplate.')
mixin $AppProps on AppProps {
  static const PropsMeta meta = _$metaForAppProps;
  /* GENERATED CONSTANTS */

  static const List<PropDescriptor> $props = [];
  static const List<String> $propKeys = [];

  @override
  @UiProps.$mustCallSuper
  void validateRequiredProps() {
    super.validateRequiredProps();
  }
}

@Deprecated('This API is for use only within generated code.'
    ' Do not reference it in your code, as it may change at any time.')
const PropsMeta _$metaForAppProps = PropsMeta(
  fields: $AppProps.$props,
  keys: $AppProps.$propKeys,
);
