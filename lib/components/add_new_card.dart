import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_screen/src/shared/themes/color_schemes.g.dart';

import '../util/card_number_input.dart';
import '../util/card_type.dart';
import '../util/card_utils.dart';
import '../util/input_formatter.dart';

class AddNewCardScreen extends StatefulWidget {
  @override
  State<AddNewCardScreen> createState() => _AddNewCardScreen();
}

class _AddNewCardScreen extends State<AddNewCardScreen> {
  TextEditingController cardNumberController = TextEditingController();
  CardType cardType = CardType.Invalid;

  void getCardFmrNum() {
    if (cardNumberController.text.length <= 6) {
      String cardNum = CardUtils.getCleanedNumber(cardNumberController.text);
      CardType type = CardUtils.getCardTypeFrmNumber(cardNum);
      if (type != cardType) {
        setState(() {
          cardType = type;
        });
      }
    }
  }

  void addNewCard() {
    print('dddd');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('New Card'),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Form(
                    child: Column(
                  children: [
                    Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: TextFormField(
                            decoration: const InputDecoration(
                                prefixIcon: Icon(Icons.person),
                                suffixIcon: Padding(
                                  padding: EdgeInsets.all(8.0),
                                ),
                                hintText: 'Name'))),
                    const SizedBox(height: 25),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(16),
                        CardNumberInputFormatter()
                      ],
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.numbers),
                        suffixIcon: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CardUtils.getCardIcon(cardType),
                        ),
                        hintText: 'Card Number',
                        // prefixIcon: SvgPicture.asset('lib/icons/credit-card.png')
                      ),
                    ),
                    const SizedBox(height: 30),
                    Row(
                      children: [
                        // Validade
                        Expanded(
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(5),
                              FilteringTextInputFormatter.digitsOnly,
                              CardMonthInputFormatter()
                            ],
                            decoration: const InputDecoration(
                                hintText: 'MM/YY',
                                prefixIcon: Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 10))),
                          ),
                        ),
                        const SizedBox(width: 25),
                        Expanded(
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(4),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            decoration: const InputDecoration(
                                hintText: 'CCV',
                                prefixIcon: Padding(
                                  padding: EdgeInsets.symmetric(vertical: 10),
                                )),
                          ),
                        )
                      ],
                    ),
                  ],
                )),
                const Spacer(flex: 2),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: ElevatedButton(
                    onPressed: addNewCard,
                    child: const Text("Add Card"),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
