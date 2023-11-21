// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:rider/contants/index.dart';
import 'package:rider/routes/routes.names.dart';
import 'package:rider/widgets/buttons/index.dart';

class CheckingPhoneScreen extends StatefulWidget {
  const CheckingPhoneScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<CheckingPhoneScreen> createState() => _CheckingPhoneScreenState();
}

class _CheckingPhoneScreenState extends State<CheckingPhoneScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController _phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Color.fromARGB(255, 255, 255, 255),
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Text(
                'Welcome',
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    color: textColor,
                    fontSize: 30.0),
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    'Enter your phone Number to be verified',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        color: textColor,
                        fontSize: 14.0),
                  ))),
          const SizedBox(
            height: 15,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IntlPhoneField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(color: primaryColor)),
                        hintText: '000-000-000'),
                    keyboardType: TextInputType.number,
                    // maxLength: 10,
                    controller: _phoneNumberController,
                    initialCountryCode: "US",
                    validator: (data) {
                      return null;
                    },
                    onChanged: (data) {
                      // number = data;
                      print("number is $data");
                    },
                    // hintText: 'Phone number',
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
              padding: const EdgeInsets.all(10.0),
              child: MainButton(
                  backgroundColor: primaryColor,
                  titleColor: Colors.white,
                  width: MediaQuery.of(context).size.width,
                  title: 'Continue',
                  onTap: () {
                    context.goNamed(otp);
                  },
                  isLoading: false)),
        ],
      ),
    ));
  }
}
