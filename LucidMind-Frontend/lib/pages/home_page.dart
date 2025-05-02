import 'package:over_react/over_react.dart';
import '../components/header.dart';

part 'home_page.over_react.g.dart';

UiFactory<HomePageProps> HomePage = castUiFactory(_$HomePage);

mixin HomePageProps on UiProps {}

class HomePageComponent extends UiComponent2<HomePageProps> {
  @override
  render() {
    return (Dom.div()
      ..style = {
        'display': 'flex',
        'flexDirection': 'column',
        'minHeight': '100vh',
      }
    )(
      (Header()..name = 'Carson Secrest')(),
      Dom.p()('Home page incoming...'),
    );
  }
}
