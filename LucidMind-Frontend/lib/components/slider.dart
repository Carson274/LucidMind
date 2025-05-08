import 'package:over_react/over_react.dart';

part 'slider.over_react.g.dart';

@Factory()
UiFactory<SliderProps> Slider = _$Slider;

@Props()
mixin SliderProps on UiProps {
  int? min;
  int? max;
  int? value;
  void Function(int)? onSliderChange;
}

@Component2()
class SliderComponent extends UiComponent2<SliderProps> {
  @override
  render() {
    return Dom.input()
      ..type = 'range'
      ..min = props.min?.toString()
      ..max = props.max?.toString()
      ..value = props.value?.toString()
      ..onChange = (e) {
        final newValue = int.tryParse(e.target.value) ?? 0;
        props.onSliderChange?.call(newValue);
      };
  }
}
