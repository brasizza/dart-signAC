import 'package:signac/signac.dart';

void main(List<String> arguments) async {
  final Signac signac = Signac(pkcs12File: ('cert/sem_senha.key'));

  String cnpjSoftwareHouse = '000000';
  String cnpjEmpresa = '000000';
  // Replace with the path to your PKCS#12 file
  print(await signac.decompress('$cnpjSoftwareHouse$cnpjEmpresa'));
}
