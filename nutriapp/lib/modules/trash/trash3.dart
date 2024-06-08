import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CopyCodeWidget extends StatelessWidget {
  final String code;

  const CopyCodeWidget({Key? key, required this.code}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(
          color: Colors.green,
          width: 2.0,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 5,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              Clipboard.setData(ClipboardData(text: code));
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Código copiado al portapapeles')),
              );
            },
            child: Text(
              'Copiar código',
              style: TextStyle(color: Colors.green, fontSize: 18),
            ),
          ),
          SizedBox(width: 8),
          GestureDetector(
            onTap: () {
              Clipboard.setData(ClipboardData(text: code));
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Código copiado al portapapeles')),
              );
            },
            child: Icon(Icons.copy, color: Colors.green),
          ),
        ],
      ),
    );
  }
}
