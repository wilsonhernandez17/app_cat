import 'package:flutter/material.dart';
import 'package:gatos_app/http/service_htpp.dart';
import 'package:gatos_app/widget/card_view_widget.dart';
import 'package:gatos_app/widget/text_field_widget.dart';

import '../model/cat_model.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _service = ServiceHtpp();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Cat'),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFieldWidget(),
            ),
            FutureBuilder(
              future: _service.get_cat(),
              builder:
                  (BuildContext context, AsyncSnapshot<List<Cat>> snapshot) {
                if (snapshot.hasData) {
                  final data = snapshot.data;
                  return Expanded(
                    child: ListView.builder(
                        itemCount: snapshot.data?.length,
                        itemBuilder: ((context, index) {
                          return CardView(
                            cat: data![index],
                          );
                        })),
                  );
                } else {
                  return Center(
                      child: Image(
                    image: AssetImage('assets/images/cargando.gif'),
                  ));
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
