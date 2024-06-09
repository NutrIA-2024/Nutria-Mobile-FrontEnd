import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PopUpExample extends StatefulWidget {
  @override
  _PopUpExampleState createState() => _PopUpExampleState();
}

class _PopUpExampleState extends State<PopUpExample> {
  void _showCardsPopUp() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                _buildCard("Card 1", "Contenido de la tarjeta 1"),
                SizedBox(height: 10),
                _buildCard("Card 2", "Contenido de la tarjeta 2"),
                SizedBox(height: 10),
                _buildCard("Card 3", "Contenido de la tarjeta 3"),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildCard(String title, String content) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
        side: BorderSide(color: Colors.green, width: 2.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(content),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pop-up Cards Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _showCardsPopUp,
          child: Text('Mostrar Cards'),
        ),
      ),
    );
  }
}
