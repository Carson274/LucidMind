import 'package:over_react/over_react.dart';
import '../components/slider.dart';

part 'check_in_modal.over_react.g.dart';

@Factory()
UiFactory<CheckInModalProps> CheckInModal = _$CheckInModal;
UiFactory<DomProps> Button = castUiFactory(Dom.button);

@Props()
mixin CheckInModalProps on UiProps {
  void Function()? onClose;
}

@Component2()
class CheckInModalComponent extends UiComponent2<CheckInModalProps> {
  @override
  get initialState => {
    'sliderValue': 50,
  };

  @override
  render() {
    final sliderValue = state['sliderValue'] as int;

    return (Dom.div()
      ..style = {
        'display': 'flex',
        'flexDirection': 'column',
        'alignItems': 'center',
        'justifyContent': 'center',
        'backgroundColor': '#2C2C2C',
        'height': '500px',
        'width': '400px',
        'borderRadius': '8px',
        'boxShadow': '0 2px 10px rgba(0,0,0,0.5)',
        'position': 'absolute',
        'top': '50%',
        'left': '50%',
        'transform': 'translate(-50%, -50%)',
        'zIndex': '100',
      }
    )(
      (Dom.div()
        ..style = {
          'color': 'white',
          'fontSize': '1.5rem',
        }
      )('Check In'),
      (Dom.div()
        ..style = {
          'color': 'white',
          'fontSize': '1rem',
          'marginTop': '10px',
        }
      )(
        (Slider()
          ..min = 0
          ..max = 100
          ..value = sliderValue
          ..onSliderChange = (value) {
            setState({'sliderValue': value});
          }
        ),
        Dom.p()('Please check in to continue.'),
      ),
      // (Button()
      //   ..onClick = (_) {
      //     if (props.onClose != null) props.onClose!();
      //   }
      // )('Close'),
    );
  }
}