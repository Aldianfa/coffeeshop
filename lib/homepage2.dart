import 'package:flutter/material.dart';

class homepage2 extends StatelessWidget {
  const homepage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<dynamic> daftarfilm = [
      {"nama": "Pamali", "gambar": "assets/img/1.jpg"},
      {"nama": "Qodrat", "gambar": "assets/img/2.jpg"},
      {"nama": "Mencuri Raden Saleh", "gambar": "assets/img/3.jpg"},
      {"nama": "Srimulat", "gambar": "assets/img/4.jpg"},
      {"nama": "Bukan Cinderella", "gambar": "assets/img/5.jpg"},
      {"nama": "Melankolia", "gambar": "assets/img/6.jpg"},
      {"nama": "Surat Starla", "gambar": "assets/img/7.jpg"},
      {"nama": "Geez dan Ann", "gambar": "assets/img/8.jpg"},
      {"nama": "Perfect Fit", "gambar": "assets/img/9.jpg"},
      {"nama": "Sassy Girl", "gambar": "assets/img/10.jpg"}
    ];
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Lumieree',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontFamily: 'Poppins'
          ),
        ),
        backgroundColor: Color.fromARGB(255, 158, 53, 228),
        actions: [
          IconButton(
            icon: new Icon(Icons.logout_rounded),
            onPressed: () {
              print('Sudah Logout');
              Navigator.pop(context);
            },
          )
        ],
      ),
      
      body: Container(
        
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: GridView.count(
              crossAxisCount: 2,
              children: daftarfilm
                  .map((e) => Card(
                        child: Column(
                          children: [
                            Image.asset(
                              e['gambar'],
                              height: 133,
                            ),
                            Text(
                              e['nama'],
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold,fontFamily: 'Poppins'),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            SizedBox(
                                height: 20,
                                width: 100,
                                child: ElevatedButton(
                                  child: Text(
                                    'Detail',
                                    style: TextStyle(fontSize: 10),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                    primary: Color.fromARGB(255, 190, 109, 245),
                                  ),
                                  onPressed: () {
                                    print('Detail');
                                  },
                                )),
                            SizedBox(
                              height: 4,
                            )
                          ],
                        ),
                      ))
                  .toList()),
        ),
      ),
    );
  }
}
