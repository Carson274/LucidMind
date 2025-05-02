import 'package:over_react/over_react.dart';
import 'pages/home_page.dart';

part 'app.over_react.g.dart';

UiFactory<UiProps> App = castUiFactory(_$App); // generated

mixin AppProps on UiProps {}

class AppComponent extends UiComponent2<UiProps> {
  @override
  render() {
    return HomePage()(); // Render your home page component
  }
}
