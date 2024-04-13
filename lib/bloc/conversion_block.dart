import '../data/repositories/ConversionRepository.dart'; 
import '../data/repositories/RevConvRepository.dart'; 

class ConversionBloc {
  final ConversionRepository _repository;

  ConversionBloc({required ConversionRepository repository})
      : _repository = repository;

  Future<int> convertBinaryToDecimal(String binaryValue) async {
    try {
      return await _repository.binaryToDecimal(binaryValue);
    } catch (error) {
      throw Exception('Failed to convert binary to decimal');
    }
  }
}

class RevConvBloc {
  final RevConvRepository _repository;

  RevConvBloc({required RevConvRepository repository})
      : _repository = repository;

  Future<String> convertDecimalToBinary(int decimalValue) async {
    try {
      return await _repository.decimalToBinary(decimalValue);
    } catch (error) {
      throw Exception('Failed to convert binary to decimal');
    }
  }
}
