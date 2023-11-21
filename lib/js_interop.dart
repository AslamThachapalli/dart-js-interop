// Make sure the library name is same as the file name.
// This line of code gives the dart code the ability to speak with JS.
// These two lines are required.
@JS()
library js_interop;

// Import the js package
import 'package:js/js.dart';

/// Make sure the name of the class is similar to the JS class we are calling.
/// Also note, for this class there are no constructors. If there where
/// constructors refer the end of the file on how to define the class.
@JS()
class CryptoEnc {
  external CryptoEnc();
  external String encrypt(ToEncrypt toEncrypt);
}

/// This is actually the argument of the `encrypt` function.
/// JS side expects an object as argument. So here we are defining the
/// blueprint of the required object with `@anonymous` annotation.
@JS()
@anonymous
class ToEncrypt {
  external String get value;
  external factory ToEncrypt({String value});
}

// NOTE: If there are multiple functions with arguments, and if the arguments
// are not of the primitive data types, we should define each arguments in
// this way.

/*
Class definition if there were constructors.

  @JS()
  class CryptoEnc {
    external CryptoEnc(String value1, int value2);
    external String encrypt(ToEncrypt toEncrypt);
  }
*/
