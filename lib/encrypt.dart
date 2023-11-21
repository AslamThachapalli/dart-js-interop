class ToEncrypt {
  final String value;

  ToEncrypt({
    required this.value,
  });
}

class CryptoEnc {
  CryptoEnc();

  String encrypt(ToEncrypt toEncrypt) {
    // We are not implementing any encryption for mobile for now.
    // This is just for demonstration.
    throw UnimplementedError();
  }
}
