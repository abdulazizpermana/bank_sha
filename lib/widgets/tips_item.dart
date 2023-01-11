import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class TipsItem extends StatelessWidget {
  final String imgUrl;
  final String title;
  final String url;
  const TipsItem(
      {super.key,
      required this.imgUrl,
      required this.title,
      required this.url});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 175,
      width: 155,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: whiteColor,
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(
                20,
              ),
            ),
            child: Image.asset(
              imgUrl,
              height: 175,
              width: 155,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
            ),
            child: Text(
              title,
              style: blackTextStyle.copyWith(
                fontWeight: medium,
                overflow: TextOverflow.ellipsis,
              ),
              maxLines: 2,
            ),
          )
        ],
      ),
    );
  }
}
