import 'package:over_react/over_react.dart';
import 'pages/home_page.dart';

part 'app.over_react.g.dart';

UiFactory<UiProps> App = castUiFactory(_$App);

mixin AppProps on UiProps {}

class AppComponent extends UiComponent2<UiProps> {
  String? _userName;

  void _setUserName(String name) {
    setState(() {
      _userName = name;
    });
  }

  @override
  render() {
    return Dom.div()(
      (HomePage()
        ..name = _userName
        ..setUserName = _setUserName
      )(),
    );
  }
}
