import '../data/repositories/ConversionRepository.dart'; 

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
