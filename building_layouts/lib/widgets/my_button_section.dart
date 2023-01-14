import 'package:flutter/material.dart';

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    Column _buildButtonColumn(BuildContext context,Color color, IconData icon, String label, String text) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {
              final snackBar = SnackBar(
                content: Text(text),
                action: SnackBarAction(
                  label: 'Cerrar', onPressed: () {  },
                )
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            }, icon:Icon(icon),
                color: color,
              
                
          ),
          Container(
            margin: const EdgeInsets.only(top: 8),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),
        ],
      );
    }

    Color color = Theme.of(context).primaryColor;
    // ignore: todo
    // TODO: implement build
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(context,color, Icons.call, 'CALL', 'Llamando'),
        _buildButtonColumn(context,color, Icons.near_me, 'ROUTE', 'Enviando'),
        _buildButtonColumn(context,color, Icons.share, 'SHARE', 'Compartiendo'),
      ],
    );
  }
}
