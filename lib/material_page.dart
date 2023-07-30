import 'package:flutter/material.dart';

class CurrencyMaterialPage extends StatefulWidget {
  const CurrencyMaterialPage({super.key});

  @override
  State<CurrencyMaterialPage> createState() => _CurrencyMaterialPage();
}

class _CurrencyMaterialPage extends State<CurrencyMaterialPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: const BorderSide(
        width: 2.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.circular(15),
    );
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        title: const Text(
          "Currency Converter",
        ),
        centerTitle: true,
      ),
      body: Center(
        // we can wrap column widget with padding instead of using padding
        // 2 times. then we can add sizebox widget in between textfield and button
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "INR ${result != 0 ? result.toStringAsFixed(3) : result.toStringAsFixed(0)}",
              // "INR ${result.toString()}",
              style: const TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            // padding - only padding widget
            // container - collection of many widget incl. padding
            Padding(
              // padding - when there is stuff inside it
              // margin - when dealing with stuff outside
              padding:
                  const EdgeInsets.symmetric(horizontal: 160, vertical: 25),
              child: TextField(
                controller: textEditingController,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  hintText: "Amount in USD",
                  hintStyle: const TextStyle(
                    color: Colors.black,
                  ),
                  prefixIcon: const Icon(
                    Icons.attach_money,
                    color: Colors.black,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
            ),
            // Types of Buttons
            // 1. raised
            // 2. appears like a text
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    result = double.parse(textEditingController.text) * 81;
                  });
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),

                // style: ButtonStyle(
                //   backgroundColor: const MaterialStatePropertyAll(Colors.black),
                //   foregroundColor: const MaterialStatePropertyAll(Colors.white),
                //   minimumSize: const MaterialStatePropertyAll(
                //     Size(double.infinity, 50),
                //   ),
                //   shape: MaterialStatePropertyAll(
                //     RoundedRectangleBorder(
                //       borderRadius: BorderRadius.circular(10),
                //     ),
                //   ),
                // ),
                child: const Text("Convert"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
