import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/widgets/buttons.dart';
import 'package:bank_sha/widgets/custom_form.dart';
import 'package:bank_sha/widgets/package_item.dart';
import 'package:flutter/material.dart';

class DataPackagePage extends StatelessWidget {
  const DataPackagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Paket Data"),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          const SizedBox(
            height: 30,
          ),
          Text(
            'Phone Number',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          Text(
            'Search',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const CustomFormField(
            title: '+628',
            isShowTitle: false,
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            'Select Package',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const Wrap(
            spacing: 17,
            runSpacing: 17,
            children: [
              PackageItem(
                amount: 10,
                price: 100000,
                isSelected: true,
              ),
              PackageItem(
                amount: 15,
                price: 150000,
              ),
              PackageItem(
                amount: 20,
                price: 250000,
              ),
              PackageItem(
                amount: 100,
                price: 1500000,
              ),
            ],
          ),
          const SizedBox(
            height: 85,
          ),
          CustomButtonFilled(
            title: 'Continue',
            onPressed: () {
              Navigator.pushNamed(context, "/data-package");
            },
          ),
          const SizedBox(
            height: 57,
          ),
        ],
      ),
    );
  }
}
