import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {

  // List<dynamic> daftarkopi = [
  //   {"nama": "Arabica", "gambar": "assets/img/depan.jpg"},
  //   {"nama": "Arabica", "gambar": "assets/img/depan.jpg"},
  //   {"nama": "Arabica", "gambar": "assets/img/depan.jpg"},
  //   {"nama": "Arabica", "gambar": "assets/img/depan.jpg"},
  //   {"nama": "Arabica", "gambar": "assets/img/depan.jpg"},
  //   {"nama": "Arabica", "gambar": "assets/img/depan.jpg"}
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: new Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () {
            print('Sudah Logout');
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: Text(
          'Lumieree',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontFamily : 'Poppins'
          ),
        ),
        backgroundColor: Color.fromARGB(255, 0, 59, 105),
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // Search
            SizedBox(
              height: 10,
            ),

            Padding(
              padding: const EdgeInsets.only(right: 40.0),
              child: Text(
                'Getting ready for weekend?',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins',
                    color: Colors.green),
              ),
            ),
            SizedBox(height: 10,),

            Row(
              children: [

                //Search
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 240,
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: Colors.grey.shade300,
                        )),
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Cari Sauco',
                        ),
                      ),
                    ),
                  ),
                ),

                //COBA
                SizedBox(
                height: 45,
                width: 100,
                child: ElevatedButton(
                  child: Text(
                    'Voucher',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    primary: Colors.green,
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> homepage()));
                    print('Voucher Terpencet');
                  },
                ),
              ),
              SizedBox(height: 20,),
              
              

              // GridView.count(
              //   crossAxisCount: 2,
              //   children: daftarkopi.map((e) => Card(
              //     child: Column(
              //       children: [
              //         Image.asset(e['gambar']),
              //         Text(e['nama'],style: TextStyle(fontSize: 18),)
              //       ],
              //     ),
              //   ))
              //   .toList()
              // )

              ],
            ),
          ],
          
        ),
      ),
      
    ); 
  }
}
