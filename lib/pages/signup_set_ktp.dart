import 'package:flutter/material.dart';
import '../shared/theme.dart';
import '../widgets/buttons.dart';
import '../widgets/custom_form.dart';

class SignUpSetKtp extends StatefulWidget {
  const SignUpSetKtp({super.key});

  @override
  State<SignUpSetKtp> createState() => _SignUpSetKtpState();
}

class _SignUpSetKtpState extends State<SignUpSetKtp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          Container(
            width: 155,
            height: 50,
            margin: const EdgeInsets.only(
              top: 100,
              bottom: 100,
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img_logo_dark.png'),
              ),
            ),
          ),
          Text(
            'verif Your Account',
            style: blackTextStyle.copyWith(
              fontSize: 20,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: whiteColor,
            ),
            child: Column(
              // NOTE EMAIL INPUT
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: lightBackgorundColor,
                  ),
                  child: Center(
                    child: Image.asset(
                      'assets/ic_upload.png',
                      width: 32,
                    ),
                  ),
                ),
                // Container(
                //   width: 120,
                //   height: 120,
                //   decoration: const BoxDecoration(
                //       shape: BoxShape.circle,
                //       image: DecorationImage(
                //         fit: BoxFit.cover,
                //         image: AssetImage(
                //           'assets/img_profile.png',
                //         ),
                //       )),
                // ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  'Passport/ID Card',
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: medium,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const CustomFormField(
                  title: 'set PIN (6 Digit Number)',
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomButtonFilled(
                  title: 'Continue',
                  onPressed: () {
                    Navigator.pushNamed(context, '/sign-up-success');
                  },
                )
              ],
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          const CustomTextButton(
            title: 'Skip for now',
            // onPressed: () {
            //   Navigator.pushNamed(context, '/sign-up-success');
            // },
          )
        ],
      ),
    );
  }
}
