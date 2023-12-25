import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/widgets/bank_item.dart';
import 'package:bank_sha/widgets/buttons.dart';
import 'package:flutter/material.dart';

class TopUpPage extends StatelessWidget {
  const TopUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TopUp"),
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
            'Wallet',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Image.asset(
                'assets/img_wallet.png',
                width: 80,
              ),
              const SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "8008 2278 2789",
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    'Abdul Aziz Permana',
                    style: greyTextStyle.copyWith(
                      fontSize: 12,
                    ),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            'Select Bank',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const BankItem(
            title: 'BANK BCA',
            imageUrl: 'assets/img_bca.png',
            isSelected: true,
          ),
          const BankItem(
            title: 'BANK BNI',
            imageUrl: 'assets/img_bni.png',
          ),
          const BankItem(
            title: 'BANK Mandiri',
            imageUrl: 'assets/img_mandiri.png',
          ),
          const BankItem(
            title: 'BANK OCBC',
            imageUrl: 'assets/img_ocbc.png',
          ),
          const SizedBox(
            height: 12,
          ),
          CustomButtonFilled(
            title: 'Continue',
            onPressed: () {},
          ),
          const SizedBox(
            height: 57,
          ),
        ],
      ),
    );
  }
}
