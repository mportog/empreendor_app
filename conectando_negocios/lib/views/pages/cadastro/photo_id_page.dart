import 'package:conectando_negocios/views/widgets/image_source_sheet.dart';
import 'package:flutter/material.dart';

class PhotoIdPage extends StatefulWidget {
  @override
  _PhotoIdPageState createState() => _PhotoIdPageState();
}

class _PhotoIdPageState extends State<PhotoIdPage> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          centerTitle: true,
          elevation: 5,
          title: Text('Cadastro: Identidade'),
        ),
        body: Container(
            width: width,
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                      child: Column(
                    children: <Widget>[
                      Text('Tire uma foto com a frente de seu RG/CNH:',
                          style: TextStyle(fontSize: 25)),
                      GestureDetector(
                        child: Container(
                          width: 140.0,
                          height: 140.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image:
                                    AssetImage("asset/images/rg_digital.png"),
                                fit: BoxFit.cover),
                          ),
                        ),
                        onTap: () {
                          showModalBottomSheet(
                              context: context,
                              builder: (context) => ImageSourceSheet(
                                    onImageSelected: (image) async {
                                      if (image == null) return;

                                      Navigator.of(context).pop();
                                    },
                                  ));
                        },
                      ),
                    ],
                  )),
                  Container(
                      child: Column(
                    children: <Widget>[
                      Text('Tire uma foto com o verso de seu RG/CNH:',
                          style: TextStyle(fontSize: 25)),
                      GestureDetector(
                        child: Container(
                          width: 140.0,
                          height: 140.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image:
                                    AssetImage("asset/images/cnh_digital.png"),
                                fit: BoxFit.cover),
                          ),
                        ),
                        onTap: () {
                          showModalBottomSheet(
                              context: context,
                              builder: (context) => ImageSourceSheet(
                                    onImageSelected: (image) async {
                                      if (image == null) return;

                                      Navigator.of(context).pop();
                                    },
                                  ));
                        },
                      )
                    ],
                  ))
                ])));
  }
}

// MaterialButton(
//                           elevation: 5,
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(15.0),
//                           ),
//                           onPressed: () {
//                             print('Clicado em investimentos');
//                           },
//                           child: Card(
//                             elevation: 5,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(15.0),
//                             ),
//                             child: Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: Column(
//                                 children: <Widget>[
//                                   Container(
//                                       width: width / 4,
//                                       height: width / 4,
//                                       child: Image(
//                                         image: Image.asset(
//                                                 'asset/images/investees.png')
//                                             .image,
//                                         fit: BoxFit.cover,
//                                       )),
//                                   SizedBox(height: 10),
//                                   Text('Arrecadar investimento'),
//                                   SizedBox(height: 5),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         )
