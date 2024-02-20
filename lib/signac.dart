import 'package:encrypt/encrypt.dart';
import 'package:encrypt/encrypt_io.dart';
import 'package:pointycastle/asymmetric/api.dart';

class Signac {
  final String pkcs12File;

  Signac({required this.pkcs12File});

  Future<String> decompress(String data) async {
    final privKey = await parseKeyFromFile<RSAPrivateKey>(pkcs12File);

    final signer = Signer(RSASigner(RSASignDigest.SHA256, privateKey: privKey));

    return (signer.sign(data).base64);
  }
}
