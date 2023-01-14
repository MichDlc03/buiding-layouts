import 'package:building_layouts/widgets/my_button_section.dart';
import 'package:building_layouts/widgets/my_image.dart';
import 'package:building_layouts/widgets/my_text_section.dart';
import 'package:building_layouts/widgets/my_title_section.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
          body: ListView (
            children: [
              MyImage(),
              TitleSection(),
              ButtonSection(),
              TextSection(),

            ],
            ),
        
      ),
    );
  }
}
