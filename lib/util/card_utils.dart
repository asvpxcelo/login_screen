import 'package:flutter/material.dart';
import 'package:login_screen/util/card_type.dart';


class CardUtils {
  // static String? validateCCV(String? value) {
  //   if (value == null || value.isEmpty) {
  //     return Strings.fieldReq;
  //   }

  //   if (value.length < 3 || value.length > 4) {
  //     return 'CVV is not valid';
  //   }
  //   return null;
  // }

  // static String? validateDate(String? value) {
  //   if (value == null || value.isEmpty) {
  //     return Strings.fieldReq;
  //   }
  // }

  static String getCleanedNumber(String text) {
    RegExp regExp = RegExp(r"[^0-9]");
    return text.replaceAll(regExp, '');
  }

  static CardType getCardTypeFrmNumber(String input) {
    CardType cardType;
    if (input.startsWith(RegExp(
        r'((5[1-5])|(222[1-9]|22[3-9][0-9]|2[3-6][0-9]{2}|27[01][0-9]|2720))'))) {
      cardType = CardType.Master;
    } else if (input.startsWith(RegExp(r'[4]'))) {
      cardType = CardType.Visa;
    } else if (input.startsWith(RegExp(r'((34)|(37))'))) {
      cardType = CardType.AmericanExpress;
    } else {
      cardType = CardType.Invalid;
    }
    return cardType;
  }

  static Widget? getCardIcon(CardType? cardType) {
    String img = '';
    Icon? icon;
    switch (cardType) {
      case CardType.Master:
      img = 'mastercard.png';
      break;
      case CardType.Visa:
      img = 'visa.png';
      break;
      case CardType.AmericanExpress:
      img = 'amex.png';
      break;
      case CardType.DinnersClub:
      img = 'dinners.png';
      break;
      default:
      icon = const Icon(
        Icons.warning,
        size: 24.0,
        color: Color(0xFFB8B5C3),
      );
      break;
    }
  }


  void addNewCardOnScreen() {
    
  }
}

