import 'dart:convert';
import 'dart:io';

import 'package:bank_sha/models/signup_form_model.dart';
import 'package:bank_sha/pages/signup_set_ktp.dart';
import 'package:bank_sha/shared/shared_methods.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../shared/theme.dart';
import '../widgets/buttons.dart';
import '../widgets/custom_form.dart';

class SignUpSetProfile extends StatefulWidget {
  final SignUpFormModel data;

  const SignUpSetProfile({
    required this.data,
    super.key,
  });

  @override
  State<SignUpSetProfile> createState() => _SignUpSetProfileState();
}

class _SignUpSetProfileState extends State<SignUpSetProfile> {
  final pinController = TextEditingController(text: '');
  XFile? selectedImage;

  bool validate() {
    if (pinController.text.length != 6) {
      return false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    print(widget.data.toJson());

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
            'Join Us to Unlock\nYour Growth',
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
                GestureDetector(
                  onTap: () async {
                    final image = await selectImage();
                    setState(() {
                      selectedImage = image;
                    });
                  },
                  child: Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: lightBackgorundColor,
                      image: selectedImage == null
                          ? null
                          : DecorationImage(
                              fit: BoxFit.cover,
                              image: FileImage(
                                File(
                                  selectedImage!.path,
                                ),
                              ),
                            ),
                    ),
                    child: selectedImage != null
                        ? null
                        : Center(
                            child: Image.asset(
                              'assets/ic_upload.png',
                              width: 32,
                            ),
                          ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  'Shayna Hanna',
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: medium,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomFormField(
                  obscuretext: true,
                  title: 'set PIN (6 Digit Number)',
                  controller: pinController,
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomButtonFilled(
                  title: 'Continue',
                  onPressed: () {
                    if (validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUpSetKtp(
                            data: widget.data.copyWith(
                              pin: pinController.text,
                              profilePicture: selectedImage == null
                                  ? null
                                  : 'data:image/png;base64,' +
                                      base64Encode(
                                        File(selectedImage!.path)
                                            .readAsBytesSync(),
                                      ),
                            ),
                          ),
                        ),
                      );
                    } else {
                      showCustomSnackbar(context, 'PIN harus 6 digit');
                    }
                  },
                )
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
