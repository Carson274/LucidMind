import 'package:over_react/over_react.dart';
import 'pages/home_page.dart';

part 'app.over_react.g.dart';

UiFactory<UiProps> App = castUiFactory(_$App);

mixin AppProps on UiProps {}

class AppComponent extends UiComponent2<UiProps> {
  @override
  get initialState => {
    'userName': null,
    'userEmail': null,
    'userID': null,
  };

  void _setUser(String name, String email, String id) {
    setState({
      'userName': name,
      'userEmail': email,
      'userId': id,
    });
  }

  @override
  render() {
    return Dom.div()(
      (HomePage()
        ..name = state['userName']
        ..setUser = _setUser
      )(),
    );
  }
}
