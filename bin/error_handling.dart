// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:error_handling/error_handling.dart' as error_handling;

void main(List<String> arguments) {
  try {
    final integer = int.parse('source');
  } catch (e) {
    print(e);
  }

  try {
    final myInt = int.parse('erf');
    //Specifying error type
  } on FormatException catch (e) {
    print(e);
    //finally always work regardless of err
  } finally {
    print('This alway runs');
  }

  try {
    throw CustomErr(msg: 'Custom error');
  } on CustomErr catch (e) {
    print(e);
  }
}

class CustomErr implements Exception {
  final String msg;

  CustomErr({
    required this.msg,
  });

  @override
  String toString() {
    return msg;
  }
}