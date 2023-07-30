import 'package:flutter/cupertino.dart';

class CuurencyConvertorCupertino extends StatefulWidget {
  const CuurencyConvertorCupertino({super.key});

  @override
  State<CuurencyConvertorCupertino> createState() =>
      _CuurencyConvertorCupertinoState();
}

class _CuurencyConvertorCupertinoState
    extends State<CuurencyConvertorCupertino> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGrey,
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: CupertinoColors.systemGrey,
        middle: Text(
          "Currency Converter",
        ),
      ),
      child: Center(
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
                color: CupertinoColors.white,
              ),
            ),
            // padding - only padding widget
            // container - collection of many widget incl. padding
            Padding(
              // padding - when there is stuff inside it
              // margin - when dealing with stuff outside
              padding:
                  const EdgeInsets.symmetric(horizontal: 160, vertical: 25),
              child: CupertinoTextField(
                controller: textEditingController,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: CupertinoColors.black,
                ),
                decoration: BoxDecoration(
                  color: CupertinoColors.white,
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(10),
                ),
                placeholder: "Amount in USD",
                prefix: const Icon(CupertinoIcons.money_dollar),
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
              child: CupertinoButton(
                onPressed: () {
                  setState(() {
                    result = double.parse(textEditingController.text) * 81;
                  });
                },
                color: CupertinoColors.black,

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
