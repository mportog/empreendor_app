import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  Background(this.height, this.width);
  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      ClipPath(
        clipper: CustomShapeClipper(),
        child: Container(
          height: height,
          color: Colors.indigo[700],
        ),
      ),
      Container(
        width: width,
        height: height - 80,
        child: Center(
          child: Text(
            'CONECTANDO\nNEGÓCIOS',
            style: TextStyle(
                color: Colors.white, fontSize: 45, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    ]);
  }
}

class CustomShapeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();
    path.lineTo(0.0, size.height - 120);

    var firstEndPoint = Offset(size.width * .5, size.height - 50.0);
    var firstControlpoint = Offset(size.width * 0.3, size.height - 90.0);
    path.quadraticBezierTo(firstControlpoint.dx, firstControlpoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondEndPoint = Offset(size.width, size.height);
    var secondControlPoint = Offset(size.width * .75, size.height);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) => true;
}
