import 'package:flutter/material.dart';

class WebAppBarResponsiveContent extends StatelessWidget {
  const WebAppBarResponsiveContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Row(
            children: [
              Expanded(
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      border: Border.all(color: Colors.grey.shade600)),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 4,
                      ),
                      IconButton(
                        onPressed: () {},
                        color: Colors.grey.shade500,
                        icon: const Icon(Icons.search),
                      ),
                      const Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Pesquise",
                            isCollapsed: true,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              if (constraints.maxWidth >= 400) ...[
                SizedBox(width: 32),
                FlatButton(
                  onPressed: () {},
                  child: Text("Aprender"),
                  textColor: Colors.white,
                ),
              ],
              if (constraints.maxWidth >= 500) ...[
                SizedBox(width: 8),
                FlatButton(
                  onPressed: () {},
                  child: Text("Flutter"),
                  textColor: Colors.white,
                ),
              ],
            ],
          );
        },
      ),
    );
  }
}
