import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OathViewModel extends ChangeNotifier
{
  TextEditingController oathController = TextEditingController();
  TextEditingController otpController = TextEditingController();
  final countryPicker = const  FlCountryCodePicker();

}