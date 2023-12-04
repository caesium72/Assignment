import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }


  @override
  Widget build(BuildContext context) {
    final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
        padding: EdgeInsets.all(10),
        backgroundColor: Colors.green,
        foregroundColor: Colors.pink,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))
        )
    );
    ButtonStyle buttonStyles = ElevatedButton.styleFrom(
        minimumSize: Size(double.infinity, 60)
    );

    return Scaffold(
      appBar: AppBar(
        //button style
        backgroundColor: Theme.of(context).primaryColorLight,

        title: Text('Book List'),
        titleSpacing: 20,
        toolbarHeight: 40,
        toolbarOpacity: 1,
        elevation: 5,

      ),

      body: Padding(

        padding: const EdgeInsets.all(8),
        child: SingleChildScrollView(

          child: Column(


            children: [

              Container(

                child: Card(
                  color: Colors.teal,
                  child: SizedBox(
                    height: 200,
                    width: 350,

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 200,
                          width: 200,
                          child: Image.network('https://m.media-amazon.com/images/I/81iJhMIo2lL._SL1500_.jpg'),

                        ),
                        Column(
                          children: [
                            Container(
                              height: 200,
                              width: 150,

                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(" The Heaven & Earth Grocery Store\n"
                                      "James McBride ", style: TextStyle(fontSize: 12),),

                                  ElevatedButton(onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>BuyNowPage("")) );

                                  }, child: Text("buy now"))

                                ],
                              ),
                            )
                          ],
                        )


                      ],


                    ),

                  ),
                ),

              ),
              Container(
                child: Card(
                  color: Colors.teal,
                  child: SizedBox(
                    height: 200,
                    width: 350,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 200,
                          width: 200,
                          child: Image.network('https://m.media-amazon.com/images/I/51HYZKo9i-L.jpg'),

                        ),
                        Column(
                          children: [
                            Container(
                              height: 200,
                              width: 150,

                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(" Flutter \n"
                                      "Barry Burd (", style: TextStyle(fontSize: 12),),

                                  ElevatedButton(onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>BuyNowPage1("")) );

                                  }, child: Text("buy now"))

                                ],
                              ),
                            )
                          ],
                        )


                      ],


                    ),

                  ),
                ),

              ),
              Container(
                child: Card(
                  color: Colors.teal,
                  child: SizedBox(
                    height: 200,
                    width: 350,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 200,
                          width: 200,
                          child: Image.network('https://m.media-amazon.com/images/I/71epEUnDgCL._SL1500_.jpg'),

                        ),
                        Column(
                          children: [
                            Container(
                              height: 200,
                              width: 150,

                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(" Crucial Influence, Third Edition\n"
                                      "Joseph Grenny", style: TextStyle(fontSize: 12),),

                                  ElevatedButton(onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>BuyNowPage2("")) );

                                  }, child: Text("buy now"))

                                ],
                              ),
                            )
                          ],
                        )


                      ],


                    ),

                  ),
                ),

              ),
              Container(
                child: Card(
                  color: Colors.teal,
                  child: SizedBox(
                    height: 200,
                    width: 350,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 200,
                          width: 200,
                          child: Image.network('https://m.media-amazon.com/images/I/61xkeRlNV7L._SL1500_.jpg'),

                        ),
                        Column(
                          children: [
                            Container(
                              height: 200,
                              width: 150,

                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(" How Leaders Can Inspire Accountability\n"
                                      "Michael Timms", style: TextStyle(fontSize: 12),),

                                  ElevatedButton(onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>BuyNowPage3("")) );

                                  }, child: Text("buy now"))

                                ],
                              ),
                            )
                          ],
                        )


                      ],


                    ),

                  ),
                ),

              ),






            ],
          ),
        ),
      ),




    );
  }
}
class BuyNowPage extends StatelessWidget {

  final String bookName;

  const BuyNowPage(this.bookName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buy Now'),
        titleSpacing: 20,
        toolbarHeight: 40,
        toolbarOpacity: 1,
        elevation: 5,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              bookName,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Image.network('https://m.media-amazon.com/images/I/81iJhMIo2lL._SL1500_.jpg'),


            Text('Author:James McBride '),
            Text('Description: James McBrides novel The Heaven & Earth Grocery Store follows a community as they work together to save a young deaf Black boy Dodofrom unjust institutionalization in 1930s America Though Dodos disability is physical the state authorities are determined to place him in a mental institution called Pennhurst you can read this book for your own interest'),
            Text('Price: 1400 TK'),
            SizedBox(height: 16),
            Text(
              '                                                                                                                    Payment Method',
              style: TextStyle(
                color: Colors.pink,
              ),

            ),
            Row(

              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 90,
                  width: 90,
                  child: Image.network('https://freelogopng.com/images/all_img/1656235199bkash-logo-transparent.png'),

                ),
                Container(
                  height: 90,
                  width: 90,
                  child: Image.network('https://logowik.com/content/uploads/images/visa-payment-card1873.jpg'),

                ),
                Container(
                  height: 90,
                  width: 90,
                  child: Image.network('https://seeklogo.com/images/D/dutch-bangla-rocket-logo-B4D1CC458D-seeklogo.com.png'),

                ),
                Container(
                  height: 90,
                  width: 90,
                  child: Image.network('https://download.logo.wine/logo/Nagad/Nagad-Logo.wine.png'),

                )
              ],

            ),
            Row(

              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 90,
                  width: 90,
                  child: Text("   bKash"),

                ),
                Container(
                  height: 90,
                  width: 90,
                  child: Text(" VisaCard"),

                ),
                Container(
                  height: 90,
                  width: 90,
                  child: Text("     Rocket"),

                ),
                Container(
                  height: 90,
                  width: 90,
                  child: Text("       Nagad"),

                )
              ],

            ),
            DropdownButton<String>(
              items: ['bKash', 'Nagad', 'Rocket','VisaCard']
                  .map((String value) => DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              ))
                  .toList(),
              onChanged: (String? value) {
                // Handle dropdown value change
              },
              hint: Text('Select an option'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}
class BuyNowPage1 extends StatelessWidget {
  final String bookName;

  const BuyNowPage1(this.bookName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buy Now'),
        titleSpacing: 20,
        toolbarHeight: 40,
        toolbarOpacity: 1,
        elevation: 5,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              bookName,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Image.network('https://m.media-amazon.com/images/I/51HYZKo9i-L.jpg'),



            Text('Author: Barry Burd '),
            Text('Description: Control every pixel to create customized & adaptive designs that look great on any screen. Take control of your codebase with plugins, testing dev tools & build high quality apps. Fast Development. Multi-Platform. Null Safe Code. Flexible UI Web'),
            Text('Price: 1200 TK'),
            SizedBox(height: 16),
            Text(
              '                                                                                                                    Payment Method',
              style: TextStyle(
                color: Colors.pink,
              ),

            ),
            Row(

              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 90,
                  width: 90,
                  child: Image.network('https://freelogopng.com/images/all_img/1656235199bkash-logo-transparent.png'),

                ),
                Container(
                  height: 90,
                  width: 90,
                  child: Image.network('https://logowik.com/content/uploads/images/visa-payment-card1873.jpg'),

                ),
                Container(
                  height: 90,
                  width: 90,
                  child: Image.network('https://seeklogo.com/images/D/dutch-bangla-rocket-logo-B4D1CC458D-seeklogo.com.png'),

                ),
                Container(
                  height: 90,
                  width: 90,
                  child: Image.network('https://download.logo.wine/logo/Nagad/Nagad-Logo.wine.png'),

                )
              ],

            ),
            Row(

              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 90,
                  width: 90,
                  child: Text("   bKash"),

                ),
                Container(
                  height: 90,
                  width: 90,
                  child: Text(" VisaCard"),

                ),
                Container(
                  height: 90,
                  width: 90,
                  child: Text("     Rocket"),

                ),
                Container(
                  height: 90,
                  width: 90,
                  child: Text("       Nagad"),

                )
              ],

            ),
            DropdownButton<String>(
              items: ['bKash', 'Nagad', 'Rocket','VisaCard']
                  .map((String value) => DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              ))
                  .toList(),
              onChanged: (String? value) {
                // Handle dropdown value change
              },
              hint: Text('Select an option'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}
class BuyNowPage2 extends StatelessWidget {
  final String bookName;

  const BuyNowPage2(this.bookName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buy Now'),
        titleSpacing: 20,
        toolbarHeight: 40,
        toolbarOpacity: 1,
        elevation: 5,

      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              bookName,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Image.network('https://m.media-amazon.com/images/I/71epEUnDgCL._SL1500_.jpg'),


            Text('Author: Joseph Grenny'),
            Text('Description: The present age is the age of presentation. But a lot depends on how you present a thing, how easily, how fluently, how sweetly. Naturally, humans have a tendency to digest theory very little. They want simplicity.'),
            Text('Price: 800 TK'),
            SizedBox(height: 16),
            Text(
              '                                                                                                                    Payment Method',
              style: TextStyle(
                color: Colors.cyan,
              ),

            ),
            Row(

              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 90,
                  width: 90,
                  child: Image.network('https://freelogopng.com/images/all_img/1656235199bkash-logo-transparent.png'),

                ),
                Container(
                  height: 90,
                  width: 90,
                  child: Image.network('https://logowik.com/content/uploads/images/visa-payment-card1873.jpg'),

                ),
                Container(
                  height: 90,
                  width: 90,
                  child: Image.network('https://seeklogo.com/images/D/dutch-bangla-rocket-logo-B4D1CC458D-seeklogo.com.png'),

                ),
                Container(
                  height: 90,
                  width: 90,
                  child: Image.network('https://download.logo.wine/logo/Nagad/Nagad-Logo.wine.png'),

                )
              ],

            ),
            Row(

              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 90,
                  width: 90,
                  child: Text("   bKash"),

                ),
                Container(
                  height: 90,
                  width: 90,
                  child: Text(" VisaCard"),

                ),
                Container(
                  height: 90,
                  width: 90,
                  child: Text("     Rocket"),

                ),
                Container(
                  height: 90,
                  width: 90,
                  child: Text("       Nagad"),

                )
              ],

            ),
            DropdownButton<String>(
              items: ['bKash', 'Nagad', 'Rocket','VisaCard']
                  .map((String value) => DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              ))
                  .toList(),
              onChanged: (String? value) {
                // Handle dropdown value change
              },
              hint: Text('Select an option'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}
class BuyNowPage3 extends StatelessWidget {
  final String bookName;

  const BuyNowPage3(this.bookName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buy Now'),
        titleSpacing: 20,
        toolbarHeight: 40,
        toolbarOpacity: 1,
        elevation: 5,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              bookName,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Image.network('https://m.media-amazon.com/images/I/61xkeRlNV7L._SL1500_.jpg'),


            Text('Author: Michael Timms'),
            Text('Description: Leadership development consultant Michael Timms has discovered three powerful habits that not only make one a better leader, but also encourage those they lead to take greater accountability themselves. Using a compelling combination of teaching principles and illustrations backed by loads of scientific studies'),
            Text('Price: 2000 TK'),

            SizedBox(height: 16),
            Text(
              '                                                                                                                    Payment Method',
              style: TextStyle(
                color: Colors.pink,
              ),

            ),
            Row(

              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 90,
                  width: 90,
                  child: Image.network('https://freelogopng.com/images/all_img/1656235199bkash-logo-transparent.png'),

                ),
                Container(
                  height: 90,
                  width: 90,
                  child: Image.network('https://logowik.com/content/uploads/images/visa-payment-card1873.jpg'),

                ),
                Container(
                  height: 90,
                  width: 90,
                  child: Image.network('https://seeklogo.com/images/D/dutch-bangla-rocket-logo-B4D1CC458D-seeklogo.com.png'),

                ),
                Container(
                  height: 90,
                  width: 90,
                  child: Image.network('https://download.logo.wine/logo/Nagad/Nagad-Logo.wine.png'),

                )
              ],

            ),
            Row(

              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 90,
                  width: 90,
                  child: Text("   bKash"),

                ),
                Container(
                  height: 90,
                  width: 90,
                  child: Text(" VisaCard"),

                ),
                Container(
                  height: 90,
                  width: 90,
                  child: Text("     Rocket"),

                ),
                Container(
                  height: 90,
                  width: 90,
                  child: Text("       Nagad"),

                )
              ],

            ),
            DropdownButton<String>(
              items: ['bKash', 'Nagad', 'Rocket','Visacard']
                  .map((String value) => DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              ))
                  .toList(),
              onChanged: (String? value) {
                // Handle dropdown value change
              },
              hint: Text('Select an option'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}
// second branch created 
// edited on online github
