import 'dart:html';
import 'package:react/react_dom.dart' as react_dom;
import 'package:lucidmind_frontend/app.dart';

void main() {
  react_dom.render(App()(), querySelector('#react_mount_point'));
}
