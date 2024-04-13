import 'package:conversion/conversion.dart';

class ConversionRepository {
  Convert convert = Convert();
  Future<int> binaryToDecimal(String binaryValue) async {
    // since the external service process a list of strings at once.
    List<int> ans = convert.binaryTodecimal(values: [binaryValue, '1']);
    return ans[0];
  }
}
