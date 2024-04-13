import 'package:flutter/material.dart';
import '../../bloc/conversion_block.dart';
import '../../data/repositories/ConversionRepository.dart';

class ToDecimal extends StatefulWidget {
  const ToDecimal({super.key});

  @override
  State<ToDecimal> createState() => _ToDecimalState();
}

class _ToDecimalState extends State<ToDecimal> {
  TextEditingController binaryValController = TextEditingController();
  int decimalValue = 0;
  final ConversionBloc _conversionBloc =
      ConversionBloc(repository: ConversionRepository());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Binary to Decimal"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.2,
          horizontal: MediaQuery.of(context).size.width * 0.2,
        ),
        child: Column(
          children: [
            Row(
              children: [
                const Text(
                  'Enter binary number: ',
                  style: TextStyle(fontSize: 16.0),
                ),
                Flexible(
                  child: Container(
                    height: 40,
                    child: TextField(
                      controller: binaryValController,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 2.5, horizontal: 15.0),
                        border: OutlineInputBorder(),
                        hintStyle: TextStyle(
                          fontSize: 30.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            ElevatedButton(
              onPressed: () async {
                String binValue = binaryValController.text;
                int result =
                    await _conversionBloc.convertBinaryToDecimal(binValue);
                setState(() {
                  decimalValue = result;
                });
              },
              child: const Text("Convert"),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Text(
              'Decimal value: $decimalValue',
              style: const TextStyle(fontSize: 20.0),
            ),
          ],
        ),
      ),
    );
  }
}
