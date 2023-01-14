import 'package:flutter/cupertino.dart';
class MyImage extends StatelessWidget {
  const MyImage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Image.asset(
      'building_layouts/lake.jpg',
      width: 600,
      height: 240,
      fit: BoxFit.cover,
    );
  }
}
