import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:test_parttime/widget/atoms/text_widget.dart';

class CardWidget extends StatelessWidget {
  final String? title;
  final String? imageUrl;
  const CardWidget({Key? key, this.title, this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CachedNetworkImage(
          placeholder: (context, url) => const CircularProgressIndicator(),
          imageUrl: 'https://image.tmdb.org/t/p/original' + imageUrl!,
          width: 100,
        ),
        const SizedBox(
          width: 20,
        ),
        CText(
          title,
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
      ],
    );
  }
}
