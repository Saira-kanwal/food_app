import 'package:flutter/material.dart';
import 'package:food_app/screens/verify_otp_screen.dart';
import 'package:food_app/utils/app_colors.dart';
import 'package:food_app/viewModels/oath_viewModel.dart';
import 'package:provider/provider.dart';
import '../widgets/button.dart';
import '../widgets/input_field.dart';

class AddPhoneScreen extends StatelessWidget {
  const AddPhoneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    OathViewModel vm = context.watch<OathViewModel>();
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children:  [
              const SizedBox(height: 90,),
              const Text(
                "ADD YOUR,",
                style: TextStyle(
                  fontSize: 55,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              const Text(
                "NUMBER.",
                style: TextStyle(
                  fontSize: 55,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryColor,
                ),
                textAlign: TextAlign.center,
              ),
              const Text(
                'Add Number For Better Experience.',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 80,),
              SizedBox(
                height: 70,
                width: double.maxFinite,
                child: InputFiled(
                  controller: vm.oathController,
                  onTap:  ()  {
                  },

                ),
              ),
              const Spacer(),
              OathButton(
                title: 'Send code (OTP)',
                onPressed: (){
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> const OTPScreen()));
                },
                backgroundColor: AppColors.primaryColor,
                textColor: Colors.white,
              )



            ],
          ),
        ),
      )
    );
  }
}
