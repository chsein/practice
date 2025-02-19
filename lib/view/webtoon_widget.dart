import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/detail_screen.dart';

class WebtoonWidget extends StatelessWidget {
  final String title, thumb, id;
  const WebtoonWidget(
      {super.key, required this.id, required this.thumb, required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                DetailScreen(title: title, thumb: thumb, id: id),
            fullscreenDialog: true,
          ),
        );
      },
      child: Column(
        children: [
          Hero(
            tag: id,
            child: Container(
              width: 250,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 15,
                      offset: Offset(0, 10),
                      color: Colors.black.withOpacity(0.5),
                    )
                  ]),
              child: Image.network(thumb),
            ),
          ),
          Text(
            title,
            style: const TextStyle(fontSize: 22),
          )
        ],
      ),
    );
  }
}
