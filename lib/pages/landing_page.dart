import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => LlandingPageState();
}

class LlandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 100.0),
              child: Text(
                'QR Code\nApp',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.popAndPushNamed(context, "/scan");
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.blueAccent[400],
                          borderRadius: BorderRadius.circular(6.0),
                          border: Border.all(color: Colors.white, width: 2.5)),
                      width: 200,
                      height: 60,
                      child: Center(
                        child: Text(
                          'Scanner',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.popAndPushNamed(context, "/generate");
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.blueAccent[400],
                          borderRadius: BorderRadius.circular(6.0),
                          border: Border.all(color: Colors.white, width: 2.5)),
                      width: 200,
                      height: 60,
                      child: Center(
                        child: Text(
                          'QR Maker',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
