import 'package:conversion/conversion.dart';

class RevConvRepository {
  Convert convert = Convert();
  Future<String> decimalToBinary(int decimalValue) async {
    // since the external service process a list of strings at once.
    List<String> ans = convert.decimalToBinary(values: [decimalValue, 1]);
    return ans[0];
  }
}
