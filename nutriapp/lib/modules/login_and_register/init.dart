import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nutriapp/themes/color.dart';

class InitApp extends StatefulWidget {
  const InitApp({super.key});

  @override
  _InitAppState createState() => _InitAppState();
}

class _InitAppState extends State<InitApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                verdeClaro,
                verdeOscuro,
                verdeClaro,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 1),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Healthy',
                      style: TextStyle(
                        fontFamily: GoogleFonts.alfaSlabOne().fontFamily,
                        color: Colors.white,
                        fontSize: 70,
                        fontWeight: FontWeight.normal,
                        shadows: [
                          Shadow(
                            offset: const Offset(2.0, 2.0),
                            blurRadius: 3,
                            color: Colors.grey.withOpacity(0.5),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'food for you',
                      style: TextStyle(
                        fontFamily: GoogleFonts.alfaSlabOne().fontFamily,
                        color: Colors.white,
                        fontSize: 60,
                        fontWeight: FontWeight.normal,
                        shadows: [
                          Shadow(
                            offset: const Offset(2.0, 2.0),
                            blurRadius: 3.0,
                            color: Colors.grey.withOpacity(0.5),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Image.asset('assets/nutria_init.png'),
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey.shade200,
                        side: const BorderSide(color: Colors.black),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 100, vertical: 20),
                        minimumSize: const Size(double.infinity, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        elevation: 5,
                      ),
                      child: Text(
                        'Inicio',
                        style: TextStyle(
                          color: Colors.green,
                          fontFamily: GoogleFonts.aBeeZee().fontFamily,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
