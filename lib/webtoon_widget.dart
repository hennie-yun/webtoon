import 'package:flutter/material.dart';

class Webtoon extends StatelessWidget {
  final String title, thumb, id;

  const Webtoon({
    super.key,
    required this.title,
    required this.thumb,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
    Expanded(
           child : Container(
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
              child: Container(
                height: 100,
                child: Image.network(
                  thumb,
                ),
              ))),
          const SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: const TextStyle(
                fontSize: 13,
                overflow: TextOverflow.ellipsis

            ),
          ),
        ],

    ) ;
  }
}
