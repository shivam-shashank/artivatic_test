import 'package:fluttertoast/fluttertoast.dart';

flutterToast(String msg) {
  Fluttertoast.showToast(
    msg: msg,
    toastLength: Toast.LENGTH_LONG,
  );
}
