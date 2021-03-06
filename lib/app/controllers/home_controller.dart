import 'package:conversor_moeda/app/models/currency_model.dart';
import 'package:flutter/cupertino.dart';

class HomeController {
  List<CurrencyModel> currencies;

  final TextEditingController toText;
  final TextEditingController fromText;

  CurrencyModel toCurrency;
  CurrencyModel fromCurrency;

  HomeController({this.toText, this.fromText}) {
    currencies = CurrencyModel.getCurrencies();
    toCurrency = currencies[0];
    fromCurrency = currencies[1];
  }

  void convert() {
    String text = toText.text;
    double value = double.tryParse(text.replaceAll(',', '.')) ?? 1.0;
    double resultValue = 0;
    if (fromCurrency.name == 'Real') {
      resultValue = value * toCurrency.real;
    } else if (fromCurrency.name == 'Dollar') {
      resultValue = value * toCurrency.dollar;
    } else if (fromCurrency.name == 'Euro') {
      resultValue = value * toCurrency.euro;
    } else if (fromCurrency.name == 'Bitcoin') {
      resultValue = value * toCurrency.bitcoin;
    }

    fromText.text = resultValue.toStringAsFixed(2);
  }
}
