import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // Avatar bagian atas
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage("images/foto.JPG"),
            ),
            SizedBox(height: 10.0),
            Text(
              "Riska Dwi Apriliani",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20.0),
            // Kartu 'About'
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              color: Color.fromARGB(255, 198, 181, 140),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "About",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Saya adalah seorang siswi SMK Wikrama yang memiliki ketertarikan dan minat di bidang IT dan olahraga, saya juga seorang yang kreatif, dan memiliki semangat untuk mempelajari hal baru untuk mengambangkan minat dan bakat saya",
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10.0),
            // Kartu 'History'
         Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                 color: Color.fromARGB(255, 198, 181, 140),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "History",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                      children: const [
                        Icon(
                          Icons.school,
                          size: 18,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start, // Mengatur teks berada di kiri
                          children: [
                            Text(
                              "2022-2025",
                              style: TextStyle(fontSize: 14, color: Color.fromARGB(255, 0, 0, 0)),
                            ),
                            Text(
                              "SMK Wikrama Bogor",
                              style: TextStyle(fontSize: 14, color: Color.fromARGB(255, 0, 0, 0)),
                            ),
                          ],
                        ),
                      ],
                    ),
                      const SizedBox(height: 15),
                      Row(
                      children: const [
                        Icon(
                          Icons.work,
                          size: 18,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start, // Mengatur teks berada di kiri
                          children: [
                            Text(
                              "January - June (2024)",
                              style: TextStyle(fontSize: 14, color: Color.fromARGB(255, 0, 0, 0)),
                            ),
                            Text(
                              "PT Desacode Transformasi Teknologi",
                              style: TextStyle(fontSize: 14, color: Color.fromARGB(255, 0, 0, 0)),
                            ),
                          ],
                        ),
                      ],
                    ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
            // Kartu 'Skill'
           
           Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                color: const Color(0xFFE2E8D0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Header kotak skill dengan latar belakang kuning
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 130, 119, 61),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0),
                        ),
                      ),
                      child: const Text(
                        "Skill",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    // Konten skill dengan jarak lebih seimbang
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "HTML",
                           
                            style: TextStyle(color: Color.fromARGB(255, 145, 115, 76), fontSize: 16),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "CSS",
                           
                            style: TextStyle(color: Color.fromARGB(255, 145, 115, 76), fontSize: 16),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "React",
                           
                            style: TextStyle(color: Color.fromARGB(255, 145, 115, 76), fontSize: 16),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Unity",
                            style: TextStyle(color: Color.fromARGB(255, 145, 115, 76), fontSize: 16),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "JavaScript",
                           
                            style: TextStyle(color: Color.fromARGB(255, 145, 115, 76), fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

          ],
        ),
      ),
    );
  }
}
