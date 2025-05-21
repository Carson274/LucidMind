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
  // Helper function to convert hex color to RGB components
  Map<String, int> _hexToRgb(String hex) {
    // Remove # if present
    final cleanHex = hex.startsWith('#') ? hex.substring(1) : hex;
    
    // Parse the hex values
    final r = int.parse(cleanHex.substring(0, 2), radix: 16);
    final g = int.parse(cleanHex.substring(2, 4), radix: 16);
    final b = int.parse(cleanHex.substring(4, 6), radix: 16);
    
    return {'r': r, 'g': g, 'b': b};
  }
  
  // Helper function to interpolate between two values based on percentage
  int _interpolate(int start, int end, double percentage) {
    return (start + (end - start) * percentage).round();
  }
  
  // Function to smoothly interpolate between colors based on percentage
  String _getColorForValue(int value) {
    final min = props.min ?? 0;
    final max = props.max ?? 10;
    
    // Calculate percentage (0 to 1)
    double percentage = (value - min) / (max - min);
    percentage = percentage.clamp(0.0, 1.0); // Ensure within bounds
    
    // Define color stops
    final List<Map<String, dynamic>> colorStops = [
      {'position': 0.0, 'color': '#FF3D00'}, // Red
      {'position': 0.25, 'color': '#FF9800'}, // Orange
      {'position': 0.5, 'color': '#F2FF5A'}, // Yellow
      {'position': 0.75, 'color': '#8BC34A'}, // Light green
      {'position': 1.0, 'color': '#4CAF50'}, // Green
    ];
    
    // Find the two color stops we're between
    for (int i = 0; i < colorStops.length - 1; i++) {
      final currentStop = colorStops[i];
      final nextStop = colorStops[i + 1];
      
      if (percentage >= currentStop['position'] && percentage <= nextStop['position']) {
        // Calculate how far we are between these two stops (0 to 1)
        final localPercentage = (percentage - currentStop['position']) / 
                              (nextStop['position'] - currentStop['position']);
        
        // Convert hex colors to RGB for interpolation
        final startColor = _hexToRgb(currentStop['color']);
        final endColor = _hexToRgb(nextStop['color']);
        
        // Interpolate each color component
        final r = _interpolate(startColor['r']!, endColor['r']!, localPercentage);
        final g = _interpolate(startColor['g']!, endColor['g']!, localPercentage);
        final b = _interpolate(startColor['b']!, endColor['b']!, localPercentage);
        
        // Convert back to hex
        return '#${r.toRadixString(16).padLeft(2, '0')}${g.toRadixString(16).padLeft(2, '0')}${b.toRadixString(16).padLeft(2, '0')}';
      }
    }
    
    // Fallback
    return '#F2FF5A';
  }
  
  @override
  render() {
    final currentValue = props.value ?? 5;
    final min = props.min ?? 0;
    final max = props.max ?? 10;
    
    // Ensure value is within bounds
    final boundedValue = currentValue.clamp(min, max);
    final color = _getColorForValue(boundedValue);
    
    // Calculate percentage for the fill width
    final percentage = (boundedValue - min) / (max - min) * 100;
    
    return (Dom.div()
      ..style = {
        'display': 'flex',
        'flexDirection': 'column',
        'alignItems': 'center',
        'width': '100%',
        'maxWidth': '300px',
        'margin': '20px 0',
      }
    )(
      // Labels and value displays
      (Dom.div()
        ..style = {
          'display': 'flex',
          'justifyContent': 'space-between',
          'width': '100%',
          'marginBottom': '5px',
          'color': 'white',
        }
      )(
        Dom.span()('$min'),
        (Dom.span()
          ..style = {
            'color': color,
            'fontWeight': 'bold',
          }
        )('$boundedValue'),
        Dom.span()('$max'),
      ),
      
      // Container for slider (holds both the visual track and input)
      (Dom.div()
        ..style = {
          'position': 'relative',
          'width': '100%',
          'height': '10px',
        }
      )(
        // Custom track background
        (Dom.div()
          ..style = {
            'position': 'absolute',
            'top': '5px',
            'left': '0',
            'width': '100%',
            'height': '10px',
            'backgroundColor': '#555',
            'borderRadius': '5px',
            'pointerEvents': 'none',
          }
        )(
          // Progress fill
          (Dom.div()
            ..style = {
              'position': 'absolute',
              'left': '0',
              'height': '100%',
              'width': '${percentage.toStringAsFixed(1)}%',
              'backgroundColor': color,
              'borderRadius': '5px',
              'transition': 'width 0.1s ease-in-out, background-color 0.2s ease-in-out',
            }
          )(),
        ),

        (Dom.input()
          ..type = 'range'
          ..min = min.toString()
          ..max = max.toString()
          ..value = boundedValue.toString()
          ..style = {
            'position': 'absolute',
            'top': '0',
            'left': '0',
            'width': '100%',
            'height': '20px',
            'margin': '0',
            'cursor': 'pointer',
            '-webkit-appearance': 'none',
            'appearance': 'none',
            'background': 'transparent',
            'opacity': '1',
          }
          ..onChange = (e) {
            final newValue = int.tryParse(e.target.value) ?? min;
            if (props.onSliderChange != null) {
              props.onSliderChange!(newValue);
            }
          }
        )(),
      ),
    );
  }
}