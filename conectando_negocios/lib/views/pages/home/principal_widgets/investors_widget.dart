import 'package:flutter/material.dart';

class InvestorsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Investidores disponíveis'),
            Divider(
              color: Theme.of(context).primaryColor,
              height: 10,
              thickness: 5,
              endIndent: MediaQuery.of(context).size.width,
            ),
            MaterialButton(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              onPressed: () {},
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                          width: 80,
                          height: 80,
                          child: Image(
                            image:
                                Image.asset('asset/images/investors.png').image,
                            fit: BoxFit.cover,
                          )),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(height: 10),
                          Text('DON JOE'),
                          SizedBox(height: 5),
                          Text('DON JOE'),
                          FlatButton.icon(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            onPressed: () {},
                            icon: Icon(Icons.message),
                            label: Text('Conversar'),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            MaterialButton(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              onPressed: () {},
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                          width: 80,
                          height: 80,
                          child: Image(
                            image:
                                Image.asset('asset/images/investors.png').image,
                            fit: BoxFit.cover,
                          )),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(height: 10),
                          Text('DON JOE'),
                          SizedBox(height: 5),
                          Text('DON JOE'),
                          FlatButton.icon(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            onPressed: () {},
                            icon: Icon(Icons.message),
                            label: Text('Conversar'),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
