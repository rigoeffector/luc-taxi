import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pinput/pinput.dart';
import 'package:rider/contants/index.dart';
import 'package:rider/routes/routes.names.dart';
import 'package:rider/widgets/buttons/index.dart';

class VerifyOtpScreen extends StatefulWidget {
  final String? phone;
  final String? otp;
  const VerifyOtpScreen({Key? key, this.phone, this.otp}) : super(key: key);

  @override
  State<VerifyOtpScreen> createState() => _VerifyOtpScreenState();
}

class _VerifyOtpScreenState extends State<VerifyOtpScreen> {
  final pinController = TextEditingController();
  final focusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  bool _isSettingDashboard = false;
  @override
  Widget build(BuildContext context) {
    const fillColor = Color.fromRGBO(243, 246, 249, 0);
    const borderColor = Color.fromRGBO(119, 141, 169, 0.6901960784313725);

    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: TextStyle(
        fontSize: 22,
        color: primaryColor,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: borderColor, width: 1.4),
      ),
    );
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Material(
            child: Stack(
          children: [
            Scaffold(
              // backgroundColor: whiteColor,
              appBar: AppBar(
                backgroundColor: Colors.white,
                centerTitle: false,
                title: Text(
                  'OTP Code',
                  style: TextStyle(color: primaryColor),
                ),
                elevation: 0,
                toolbarHeight: 70,
                leading: InkWell(
                    onTap: () {
                      context.goNamed(checking_phone);
                    },
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: primaryColor,
                    )),
              ),
              body: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 50,
                      ),
                      ListTile(
                        title: Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: Text(
                            ' Verification code',
                            style: TextStyle(fontSize: 20.0, color: textColor),
                          ),
                        ),
                        subtitle: Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text(
                            'Your verification code has been sent to phone number bellow',
                            style: TextStyle(color: textColor),
                          ),
                        ),
                      ),
                      Text(
                        "+1-980-09090-0909",
                        style: TextStyle(color: textColor),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Form(
                        key: formKey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 35),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Pinput(
                                controller: pinController,
                                focusNode: focusNode,
                                androidSmsAutofillMethod:
                                    AndroidSmsAutofillMethod.smsUserConsentApi,
                                listenForMultipleSmsOnAndroid: true,
                                defaultPinTheme: defaultPinTheme,
                                validator: (value) {
                                  // return value == widget.otp
                                  //     ? null
                                  //     : 'Invalid code';
                                },
                                hapticFeedbackType:
                                    HapticFeedbackType.lightImpact,
                                onCompleted: (pin) {
                                  debugPrint('onCompleted: $pin');
                                },
                                onChanged: (value) {
                                  debugPrint('onChanged: $value');
                                },
                                cursor: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(bottom: 9),
                                      width: 22,
                                      height: 2,
                                      color: primaryColor,
                                    ),
                                  ],
                                ),
                                focusedPinTheme: defaultPinTheme.copyWith(
                                  decoration:
                                      defaultPinTheme.decoration!.copyWith(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: primaryColor),
                                  ),
                                ),
                                submittedPinTheme: defaultPinTheme.copyWith(
                                  decoration:
                                      defaultPinTheme.decoration!.copyWith(
                                    color: fillColor,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: primaryColor),
                                  ),
                                ),
                                errorPinTheme: defaultPinTheme.copyBorderWith(
                                  border: Border.all(color: Colors.redAccent),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Resend code",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: primaryColor),
                                )),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ),
              bottomSheet: Container(
                // color: whiteColor,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
                  child: MainButton(
                    backgroundColor: primaryColor,
                    titleColor: Colors.white,
                    width: MediaQuery.of(context).size.width,
                    title: 'Verify',
                    isLoading: false,
                    onTap: () {
                      context.goNamed(home);
                    },
                  ),
                ),
              ),
            ),
          ],
        )));
  }
}
