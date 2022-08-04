import 'package:flutter/material.dart';
import 'package:gatos_app/model/cat_model.dart';

class DetallePage extends StatefulWidget {
  DetallePage({Key? key, required this.cat}) : super(key: key);
  final Cat cat;
  @override
  State<DetallePage> createState() => _DetallePageState();
}

class _DetallePageState extends State<DetallePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.cat.name),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              child: FadeInImage(
                image: NetworkImage(widget.cat.image.url),
                placeholder: AssetImage('assets/images/cargando.gif'),
                fadeInDuration: Duration(milliseconds: 200),
                height: 400.0,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.cat.description,
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                      Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                      Text("Nombre del pais: ${widget.cat.origin}"),
                      Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                      Text("Inteligencia: ${widget.cat.intelligence}"),
                      Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                      Text("Adaptabilida: ${widget.cat.adaptability}"),
                      Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                      Text("Temperamento: ${widget.cat.temperament}"),
                    ],
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
