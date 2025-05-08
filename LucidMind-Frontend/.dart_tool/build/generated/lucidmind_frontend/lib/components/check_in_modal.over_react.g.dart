// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package, unnecessary_null_in_if_null_operators, prefer_null_aware_operators, invalid_use_of_visible_for_overriding_member
part of 'check_in_modal.dart';

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
final $CheckInModalComponentFactory = registerComponent2(
  () => _$CheckInModalComponent(),
  builderFactory: _$CheckInModal,
  componentClass: CheckInModalComponent,
  isWrapper: false,
  parentType: null,
);

_$$CheckInModalProps _$CheckInModal([Map? backingProps]) => backingProps == null
    ? _$$CheckInModalProps$JsMap(JsBackedMap())
    : _$$CheckInModalProps(backingProps);

// Concrete props implementation.
//
// Implements constructor and backing map, and links up to generated component factory.
@Deprecated('This API is for use only within generated code.'
    ' Do not reference it in your code, as it may change at any time.')
abstract class _$$CheckInModalProps extends UiProps
    with
        CheckInModalProps,
        // If this generated mixin is undefined, it's likely because CheckInModalProps is not a valid `mixin`-based props mixin, or because it is but the generated mixin was not imported. Check the declaration of CheckInModalProps, and check that $CheckInModalProps is exported/imported properly.
        $CheckInModalProps {
  _$$CheckInModalProps._();

  factory _$$CheckInModalProps(Map? backingMap) {
    if (backingMap == null || backingMap is JsBackedMap) {
      return _$$CheckInModalProps$JsMap(backingMap as JsBackedMap?);
    } else {
      return _$$CheckInModalProps$PlainMap(backingMap);
    }
  }

  /// Let `UiProps` internals know that this class has been generated.
  @override
  bool get $isClassGenerated => true;

  /// The `ReactComponentFactory` associated with the component built by this class.
  @override
  ReactComponentFactoryProxy get componentFactory =>
      super.componentFactory ?? $CheckInModalComponentFactory;

  /// The default namespace for the prop getters/setters generated for this class.
  @override
  String get propKeyNamespace => '';

  @override
  PropsMetaCollection get staticMeta => const PropsMetaCollection({
        // If this generated mixin is undefined, it's likely because CheckInModalProps is not a valid `mixin`-based props mixin, or because it is but the generated mixin was not imported. Check the declaration of CheckInModalProps, and check that $CheckInModalProps is exported/imported properly.
        CheckInModalProps: $CheckInModalProps.meta,
      });

  @override
  String $getPropKey(void Function(Map m) accessMap) =>
      _$getPropKey$_$$CheckInModalProps(
          accessMap, (map) => _$$CheckInModalProps(map));
}

/// An alias for [getPropKey] so it can be referenced within the props class impl
/// without being shadowed by the `getPropKey` instance extension member.
const _$getPropKey$_$$CheckInModalProps = getPropKey;

// Concrete props implementation that can be backed by any [Map].
@Deprecated('This API is for use only within generated code.'
    ' Do not reference it in your code, as it may change at any time.')
class _$$CheckInModalProps$PlainMap extends _$$CheckInModalProps {
  // This initializer of `_props` to an empty map, as well as the reassignment
  // of `_props` in the constructor body is necessary to work around a DDC bug: https://github.com/dart-lang/sdk/issues/36217
  _$$CheckInModalProps$PlainMap(Map? backingMap)
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
class _$$CheckInModalProps$JsMap extends _$$CheckInModalProps {
  // This initializer of `_props` to an empty map, as well as the reassignment
  // of `_props` in the constructor body is necessary to work around a DDC bug: https://github.com/dart-lang/sdk/issues/36217
  _$$CheckInModalProps$JsMap(JsBackedMap? backingMap)
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
class _$CheckInModalComponent extends CheckInModalComponent {
  late _$$CheckInModalProps$JsMap _cachedTypedProps;

  @override
  _$$CheckInModalProps$JsMap get props => _cachedTypedProps;

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
  _$$CheckInModalProps$JsMap typedPropsFactoryJs(JsBackedMap? backingMap) =>
      _$$CheckInModalProps$JsMap(backingMap);

  @override
  _$$CheckInModalProps typedPropsFactory(Map? backingMap) =>
      _$$CheckInModalProps(backingMap);

  /// Let `UiComponent` internals know that this class has been generated.
  @override
  bool get $isClassGenerated => true;

  @override
  String get displayName => 'CheckInModal';

  /// The default consumed props, comprising all props mixins used by CheckInModalProps.
  /// Used in `*ConsumedProps` methods if [consumedProps] is not overridden.
  @override
  get $defaultConsumedProps => propsMeta.all;

  @override
  PropsMetaCollection get propsMeta => const PropsMetaCollection({
        // If this generated mixin is undefined, it's likely because CheckInModalProps is not a valid `mixin`-based props mixin, or because it is but the generated mixin was not imported. Check the declaration of CheckInModalProps, and check that $CheckInModalProps is exported/imported properly.
        CheckInModalProps: $CheckInModalProps.meta,
      });
}

@Deprecated('This API is for use only within generated code.'
    ' Do not reference it in your code, as it may change at any time.'
    ' EXCEPTION: this may be used in legacy boilerplate until'
    ' it is transitioned to the new mixin-based boilerplate.')
mixin $CheckInModalProps on CheckInModalProps {
  static const PropsMeta meta = _$metaForCheckInModalProps;
  @override
  void Function()? get onClose =>
      (props[_$key__onClose__CheckInModalProps] ?? null) as void Function()?;
  @override
  set onClose(void Function()? value) =>
      props[_$key__onClose__CheckInModalProps] = value;
  /* GENERATED CONSTANTS */
  static const PropDescriptor _$prop__onClose__CheckInModalProps =
      PropDescriptor(_$key__onClose__CheckInModalProps);
  static const String _$key__onClose__CheckInModalProps =
      'CheckInModalProps.onClose';

  static const List<PropDescriptor> $props = [
    _$prop__onClose__CheckInModalProps
  ];
  static const List<String> $propKeys = [_$key__onClose__CheckInModalProps];

  @override
  @UiProps.$mustCallSuper
  void validateRequiredProps() {
    super.validateRequiredProps();
  }
}

@Deprecated('This API is for use only within generated code.'
    ' Do not reference it in your code, as it may change at any time.')
const PropsMeta _$metaForCheckInModalProps = PropsMeta(
  fields: $CheckInModalProps.$props,
  keys: $CheckInModalProps.$propKeys,
);
