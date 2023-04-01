//import 'package:flutter/src/widgets/framework.dart';
//import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class MensShoes extends StatefulWidget {
  const MensShoes({super.key});

  @override
  State<MensShoes> createState() => _MensShoesState();
}

class _MensShoesState extends State<MensShoes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text('MEN\'S'),
          centerTitle: true,
        ),
      body: SingleChildScrollView(
        child: Column(
             
              children: <Widget>[
                const SizedBox(
                  height: 20,
                ),
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/logo.png'),
                  radius: 60.0,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Center(
                  child: Text(
                    'KICK THAT FITS',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 28
                        ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
               
                   Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[

                          Container(
                            margin: EdgeInsets.all(10),
                            width: 160,
                            height: 300,
                            decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 1.0),
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(5),
                            ),
                            child: Column(
                              children: <Widget>[
                                Image.asset(
                                  'assets/men/men1.png',
                                  fit: BoxFit.cover,
                                ),
                                Text('Multi heels',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),),
                                Text('\$10',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),),
                                ElevatedButton(onPressed: (){}, child: Text('TRY NOW!'))
                              ],
                            )),
                         Container(
                            margin: EdgeInsets.all(10),
                            width: 160,
                            height: 300,
                            decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 1.0),
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(5),
                            ),
                            child: Column(
                              children: <Widget>[
                                Image.asset(
                                  'assets/men/men2.png',
                                  fit: BoxFit.cover,
                                ),
                                Text('Multi heels',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),),
                                Text('\$10',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),),
                                ElevatedButton(onPressed: (){}, child: Text('TRY NOW!'))
                              ],
                            )),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.all(10),
                            width: 160,
                            height: 300,
                            decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 1.0),
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(5),
                            ),
                            child: Column(
                              children: <Widget>[
                                Image.asset(
                                  'assets/men/men3.png',
                                  fit: BoxFit.cover,
                                ),
                                Text('Multi heels',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),),
                                Text('\$10',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),),
                                ElevatedButton(onPressed: (){}, child: Text('TRY NOW!'))
                              ],
                            )),
                          Container(
                            margin: EdgeInsets.all(10),
                            width: 160,
                            height: 300,
                            decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 1.0),
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(5),
                            ),
                            child: Column(
                              children: <Widget>[
                                Image.asset(
                                  'assets/men/men4.png',
                                  fit: BoxFit.cover,
                                ),
                                Text('Multi heels',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),),
                                Text('\$10',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),),
                                ElevatedButton(onPressed: (){}, child: Text('TRY NOW!'))
                              ],
                            )),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          
                           Container(
                            margin: EdgeInsets.all(10),
                            width: 160,
                            height: 300,
                            decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 1.0),
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(5),
                            ),
                            child: Column(
                              children: <Widget>[
                                Image.asset(
                                  'assets/men/men5.png',
                                  fit: BoxFit.cover,
                                ),
                                Text('Multi heels',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),),
                                Text('\$10',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),),
                                ElevatedButton(onPressed: (){}, child: Text('TRY NOW!'))
                              ],
                            )),
                          Container(
                            margin: EdgeInsets.all(10),
                            width: 160,
                            height: 300,
                            decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 1.0),
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(5),
                            ),
                            child: Column(
                              children: <Widget>[
                                Image.asset(
                                  'assets/men/men6.png',
                                  fit: BoxFit.cover,
                                ),
                                Text('Multi heels',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),),
                                Text('\$10',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),),
                                ElevatedButton(onPressed: (){}, child: Text('TRY NOW!'))
                              ],
                            )),
                        ],
                      ),
                      
                      Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.all(10),
                            width: 160,
                            height: 300,
                            decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 1.0),
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(5),
                            ),
                            child: Column(
                              children: <Widget>[
                                Image.asset(
                                  'assets/men/men7.png',
                                  fit: BoxFit.cover,
                                ),
                                Text('Multi heels',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),),
                                Text('\$10',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),),
                                ElevatedButton(onPressed: (){}, child: Text('TRY NOW!'))
                              ],
                            )),
                          Container(
                            margin: EdgeInsets.all(10),
                            width: 160,
                            height: 300,
                            decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 1.0),
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(5),
                            ),
                            child: Column(
                              children: <Widget>[
                                Image.asset(
                                  'assets/men/men8.png',
                                  fit: BoxFit.cover,
                                ),
                                Text('Multi heels',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),),
                                Text('\$10',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),),
                                ElevatedButton(onPressed: (){}, child: Text('TRY NOW!'))
                              ],
                            )),
                        ],
                      ),
                      
        
                    ],
                  ),
                
              ],
            ),
      ),
    );
  }
}