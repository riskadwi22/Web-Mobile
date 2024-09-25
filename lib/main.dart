import 'package:flutter/material.dart';
import 'Page2.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home(),
    ));

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background3.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              width: 390,
              height: 370,
              padding: EdgeInsets.all(20.0),
              alignment: Alignment.center,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color:  Color.fromARGB(255, 198, 174, 140),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      ClipOval(
                        child: Image(
                          image: AssetImage('images/foto.JPG'),
                          width: 120, // Increase width for bigger image
                          height: 120, // Increase height for bigger image
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        "Riska Dwi Apriliani",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                      Text(
                        "Haloo!! Selamat datang di Personal Website saya, saya adalah seorang siswa di sekolah SMK Wikrama Bogor",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 13,
                            color: const Color.fromARGB(255, 73, 25, 25)),
                      ),
                       ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Page2()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 164, 156, 106), // Updated button color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                    child: Text('See More'),
                  )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}