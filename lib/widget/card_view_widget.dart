import 'package:flutter/material.dart';
import 'package:gatos_app/model/cat_model.dart';
import 'package:gatos_app/pages/detalle_page.dart';

class CardView extends StatefulWidget {
  CardView({Key? key, required this.cat}) : super(key: key);
  final Cat cat;
  @override
  State<CardView> createState() => _CardViewState();
}

class _CardViewState extends State<CardView> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return DetallePage(
            cat: widget.cat,
          );
        }));
      },
      child: Card(
        elevation: 5,
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.cat.name,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Text('Mas...'),
                ],
              ),
              Padding(padding: EdgeInsets.all(10)),
              widget.cat.image.url.isNotEmpty
                  ? FadeInImage(
                      image: NetworkImage(widget.cat.image.url),
                      placeholder: AssetImage('assets/images/cargando.gif'),
                      fadeInDuration: Duration(milliseconds: 200),
                      height: 300.0,
                      fit: BoxFit.cover,
                    )
                  : Image(image: AssetImage("assets/images/splash.png"))
            ],
          ),
        ),
      ),
    );
  }
}
