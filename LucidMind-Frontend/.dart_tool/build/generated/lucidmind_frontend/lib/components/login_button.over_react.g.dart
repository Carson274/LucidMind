// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package, unnecessary_null_in_if_null_operators, prefer_null_aware_operators, invalid_use_of_visible_for_overriding_member
part of 'login_button.dart';

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
final $LoginButtonComponentFactory = registerComponent2(
  () => _$LoginButtonComponent(),
  builderFactory: _$LoginButton,
  componentClass: LoginButtonComponent,
  isWrapper: false,
  parentType: null,
);

_$$LoginButtonProps _$LoginButton([Map? backingProps]) => backingProps == null
    ? _$$LoginButtonProps$JsMap(JsBackedMap())
    : _$$LoginButtonProps(backingProps);

// Concrete props implementation.
//
// Implements constructor and backing map, and links up to generated component factory.
@Deprecated('This API is for use only within generated code.'
    ' Do not reference it in your code, as it may change at any time.')
abstract class _$$LoginButtonProps extends UiProps
    with
        LoginButtonProps,
        // If this generated mixin is undefined, it's likely because LoginButtonProps is not a valid `mixin`-based props mixin, or because it is but the generated mixin was not imported. Check the declaration of LoginButtonProps, and check that $LoginButtonProps is exported/imported properly.
        $LoginButtonProps {
  _$$LoginButtonProps._();

  factory _$$LoginButtonProps(Map? backingMap) {
    if (backingMap == null || backingMap is JsBackedMap) {
      return _$$LoginButtonProps$JsMap(backingMap as JsBackedMap?);
    } else {
      return _$$LoginButtonProps$PlainMap(backingMap);
    }
  }

  /// Let `UiProps` internals know that this class has been generated.
  @override
  bool get $isClassGenerated => true;

  /// The `ReactComponentFactory` associated with the component built by this class.
  @override
  ReactComponentFactoryProxy get componentFactory =>
      super.componentFactory ?? $LoginButtonComponentFactory;

  /// The default namespace for the prop getters/setters generated for this class.
  @override
  String get propKeyNamespace => '';

  @override
  PropsMetaCollection get staticMeta => const PropsMetaCollection({
        // If this generated mixin is undefined, it's likely because LoginButtonProps is not a valid `mixin`-based props mixin, or because it is but the generated mixin was not imported. Check the declaration of LoginButtonProps, and check that $LoginButtonProps is exported/imported properly.
        LoginButtonProps: $LoginButtonProps.meta,
      });

  @override
  String $getPropKey(void Function(Map m) accessMap) =>
      _$getPropKey$_$$LoginButtonProps(
          accessMap, (map) => _$$LoginButtonProps(map));
}

/// An alias for [getPropKey] so it can be referenced within the props class impl
/// without being shadowed by the `getPropKey` instance extension member.
const _$getPropKey$_$$LoginButtonProps = getPropKey;

// Concrete props implementation that can be backed by any [Map].
@Deprecated('This API is for use only within generated code.'
    ' Do not reference it in your code, as it may change at any time.')
class _$$LoginButtonProps$PlainMap extends _$$LoginButtonProps {
  // This initializer of `_props` to an empty map, as well as the reassignment
  // of `_props` in the constructor body is necessary to work around a DDC bug: https://github.com/dart-lang/sdk/issues/36217
  _$$LoginButtonProps$PlainMap(Map? backingMap)
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
class _$$LoginButtonProps$JsMap extends _$$LoginButtonProps {
  // This initializer of `_props` to an empty map, as well as the reassignment
  // of `_props` in the constructor body is necessary to work around a DDC bug: https://github.com/dart-lang/sdk/issues/36217
  _$$LoginButtonProps$JsMap(JsBackedMap? backingMap)
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
class _$LoginButtonComponent extends LoginButtonComponent {
  late _$$LoginButtonProps$JsMap _cachedTypedProps;

  @override
  _$$LoginButtonProps$JsMap get props => _cachedTypedProps;

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
  _$$LoginButtonProps$JsMap typedPropsFactoryJs(JsBackedMap? backingMap) =>
      _$$LoginButtonProps$JsMap(backingMap);

  @override
  _$$LoginButtonProps typedPropsFactory(Map? backingMap) =>
      _$$LoginButtonProps(backingMap);

  /// Let `UiComponent` internals know that this class has been generated.
  @override
  bool get $isClassGenerated => true;

  @override
  String get displayName => 'LoginButton';

  /// The default consumed props, comprising all props mixins used by LoginButtonProps.
  /// Used in `*ConsumedProps` methods if [consumedProps] is not overridden.
  @override
  get $defaultConsumedProps => propsMeta.all;

  @override
  PropsMetaCollection get propsMeta => const PropsMetaCollection({
        // If this generated mixin is undefined, it's likely because LoginButtonProps is not a valid `mixin`-based props mixin, or because it is but the generated mixin was not imported. Check the declaration of LoginButtonProps, and check that $LoginButtonProps is exported/imported properly.
        LoginButtonProps: $LoginButtonProps.meta,
      });
}

@Deprecated('This API is for use only within generated code.'
    ' Do not reference it in your code, as it may change at any time.'
    ' EXCEPTION: this may be used in legacy boilerplate until'
    ' it is transitioned to the new mixin-based boilerplate.')
mixin $LoginButtonProps on LoginButtonProps {
  static const PropsMeta meta = _$metaForLoginButtonProps;
  @override
  void Function(String, String, String)? get setUser =>
      (props[_$key__setUser__LoginButtonProps] ?? null) as void Function(
          String, String, String)?;
  @override
  set setUser(void Function(String, String, String)? value) =>
      props[_$key__setUser__LoginButtonProps] = value;
  /* GENERATED CONSTANTS */
  static const PropDescriptor _$prop__setUser__LoginButtonProps =
      PropDescriptor(_$key__setUser__LoginButtonProps);
  static const String _$key__setUser__LoginButtonProps =
      'LoginButtonProps.setUser';

  static const List<PropDescriptor> $props = [
    _$prop__setUser__LoginButtonProps
  ];
  static const List<String> $propKeys = [_$key__setUser__LoginButtonProps];

  @override
  @UiProps.$mustCallSuper
  void validateRequiredProps() {
    super.validateRequiredProps();
  }
}

@Deprecated('This API is for use only within generated code.'
    ' Do not reference it in your code, as it may change at any time.')
const PropsMeta _$metaForLoginButtonProps = PropsMeta(
  fields: $LoginButtonProps.$props,
  keys: $LoginButtonProps.$propKeys,
);
