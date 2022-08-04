import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String nombre = "";
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.grey[350],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 300,
              child: TextField(
                onChanged: (value) {
                  nombre = value;
                },
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: "Nombre del gato"),
              ),
            ),
            IconButton(
                onPressed: () {
                  print(nombre);
                },
                icon: Icon(Icons.search))
          ],
        ),
      ),
    );
  }
}
