import 'package:app1/breakpoints.dart';
import 'package:app1/pages/home/widgets/custom_search_field.dart';
import 'package:flutter/material.dart';

class TopSection extends StatelessWidget {
  const TopSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxWidth = constraints.maxWidth;

        if (maxWidth >= tabletBreakpoint) {
          return AspectRatio(
            aspectRatio: 3.2,
            child: Stack(
              children: [
                AspectRatio(
                  aspectRatio: 3.4,
                  child: Image.network(
                    "https://images.pexels.com/photos/169573/pexels-photo-169573.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  left: 50,
                  top: 50,
                  child: Card(
                    color: Colors.black,
                    elevation: 8,
                    child: Container(
                      padding: const EdgeInsets.all(22),
                      width: 450,
                      child: Column(
                        children: const [
                          Text(
                            "Aprenda Flutter com este curso",
                            style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Bora aprender Flutter com o professor! Curso por apenas R\$22,99. Qualidade Garantida.",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 16),
                          CustomSearchField(),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        }

        if (maxWidth >= mobileBreakpoint) {
          return SizedBox(
            height: 320,
            child: Stack(
              children: [
                SizedBox(
                  height: 250,
                  width: double.infinity,
                  child: Image.network(
                    "https://images.pexels.com/photos/169573/pexels-photo-169573.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  left: 50,
                  top: 50,
                  child: Card(
                    color: Colors.black,
                    elevation: 8,
                    child: Container(
                      padding: const EdgeInsets.all(22),
                      width: 350,
                      child: Column(
                        children: const [
                          Text(
                            "Aprenda Flutter com este curso",
                            style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Bora aprender Flutter com o professor! Curso por apenas R\$22,99. Qualidade Garantida.",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 16),
                          CustomSearchField(),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        }

        return Column(
          children: [
            AspectRatio(
              aspectRatio: 3.4,
              child: Image.network(
                "https://images.pexels.com/photos/169573/pexels-photo-169573.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Aprenda Flutter com este curso",
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Bora aprender Flutter com o professor! Curso por apenas R\$22,99. Qualidade Garantida.",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 16),
                  CustomSearchField(),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
