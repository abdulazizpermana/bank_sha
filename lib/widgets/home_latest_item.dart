import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class HomeLatesItem extends StatelessWidget {
  final String iconUrl;
  final String title;
  final String time;
  final String value;

  const HomeLatesItem(
      {super.key,
      required this.iconUrl,
      required this.time,
      required this.title,
      required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 18,
      ),
      child: Row(
        children: [
          Image.asset(
            iconUrl,
            width: 48,
          ),
          const SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: blackTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  time,
                  style: greyTextStyle.copyWith(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Text(
              value,
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
          )
        ],
      ),
    );
  }
}
