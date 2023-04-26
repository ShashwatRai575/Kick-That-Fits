
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          color: Colors.black,
          onPressed: () {
            Navigator.pushNamed(context, 'contact');
          },
          icon: const CircleAvatar(
            backgroundImage: AssetImage('assets/logo.png'),
            radius: 30.0,
          ),
        ),
        title: const Text('KICK THAT FITS', style: TextStyle(fontSize: 17)),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Add your onPressed code here
            },
          ),
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              // Add your onPressed code here
            },
          ),
          IconButton(
            icon: const Icon(Icons.favorite),
            onPressed: () {
              // Add your onPressed code here
            },
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: screenHeight * 0.75,
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Image.asset('assets/shoesgif.gif'),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'men');
                    },
                    child: Container(
                      height: screenHeight * 0.3,
                      width: screenWidth * 0.9,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/womenhome2.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                      //padding: EdgeInsets.symmetric(vertical: 20, horizontal: 0),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white, // background color
                      onPrimary: Colors.black, // foreground color
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'women');
                    },
                    child: Container(
                      height: screenHeight * 0.3,
                      width: screenWidth * 0.9,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/homemen.jpeg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                      //padding: EdgeInsets.symmetric(vertical: 20, horizontal: 0),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white, // background color
                      onPrimary: Colors.black, // foreground color
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'kids');
                    },
                    child: Container(
                      height: screenHeight * 0.3,
                      width: screenWidth * 0.9,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/homekid.jpg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                      //padding: EdgeInsets.symmetric(vertical: 20, horizontal: 0),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white, // background color
                      onPrimary: Colors.black, // foreground color
                    ),
                  ),
                  ElevatedButton(
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(20.0)))),
                      onPressed: () {},
                      child: const Text(
                        'KNOW YOUR SIZE',
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: 120,
                height: 70,
                child: Column(
                  children: <Widget>[
                    IconButton(
                      color: Colors.black,
                      onPressed: () {
                        Navigator.pushNamed(context, 'men');
                      },
                      icon: const CircleAvatar(
                        backgroundImage: AssetImage('assets/mennav.jpg'),
                        radius: 30.0,
                      ),
                    ),
                    const Text(
                      'Men',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                height: 70,
                child: Column(
                  children: <Widget>[
                    IconButton(
                      color: Colors.black,
                      onPressed: () {
                        Navigator.pushNamed(context, 'kids');
                      },
                      icon: const CircleAvatar(
                        backgroundImage: AssetImage('assets/kidsnav.png'),
                        radius: 30.0,
                      ),
                    ),
                    const Text(
                      'Kids',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                height: 70,
                child: Column(
                  children: <Widget>[
                    IconButton(
                      color: Colors.black,
                      onPressed: () {
                        Navigator.pushNamed(context, 'women');
                      },
                      icon: const CircleAvatar(
                        backgroundImage: AssetImage('assets/womennav.jpg'),
                        radius: 30.0,
                      ),
                    ),
                    const Text(
                      'Women',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
