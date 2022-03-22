import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class CourseItem extends StatelessWidget {
  const CourseItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.network(
          "https://i1.wp.com/blog.iteris.com.br/wp-content/uploads/2019/11/Imagem_Blog_Flutter.jpg?fit=1200%2C675",
          fit: BoxFit.fitWidth,
        ),
        const SizedBox(height: 4),
        Flexible(
          child: LayoutBuilder(
            builder: (_, constraints) {
              return const AutoSizeText(
                "Criação de Apps Android e IOS com Flutter - Crie 16 Apps",
                minFontSize: 3,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.white,
                ),
              );
            },
          ),
        ),
        const Text(
          "Daniel Ciolfi",
          style: TextStyle(color: Colors.grey),
        ),
        const Text(
          "R\$ 30,00",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
