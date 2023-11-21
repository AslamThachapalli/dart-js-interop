@JS()
library js_interop;

// The above two lines are required
import 'package:js/js.dart';

@JS()
class CryptoEnc {
  external CryptoEnc();
  external String encrypt(ToEncrypt toEncrypt);
}

@JS()
@anonymous
class ToEncrypt {
  external String get value;
  external factory ToEncrypt({String value});
}
