import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home:NinjaCard(),

));
class NinjaCard extends StatefulWidget {

  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {

  int ninjaLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('Ninja ID card'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        elevation: 0.0,

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
         setState(() {
           ninjaLevel +=1;
         });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.brown,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 50.0, 40.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/ninja.jpg'),
                radius:40.0,
              ),
            ),
            Divider(
              height:60.0,
              color: Colors.black,
    ),



            Text(
            'Name',
            style: TextStyle(
                color: Colors.greenAccent,
                letterSpacing: 2.0,
            )
            ),
          SizedBox(height:10.0),

                Text(
              'Sneha',
                  style: TextStyle(
                    color: Colors.indigoAccent,
                    letterSpacing: 2.0,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold

        )
            ),
            SizedBox(height: 30.0),
                      Text(
              'Current level',
                  style: TextStyle(
                  color: Colors.indigoAccent,
                  letterSpacing: 2.0,
                  )
                      ),
            SizedBox(height: 10.0),
            Text(
                '$ninjaLevel',
                style: TextStyle(
                  color: Colors.indigoAccent,
                  letterSpacing: 2.0,
                )
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.deepOrange ,
                ),
                SizedBox(width:10.0),
                Text(
                 'sneha@ninja.np' ,
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.purpleAccent,
                    letterSpacing: 2.0,
                  ),
                )
              ],
            )

          ]


          )
        ),
      );

  }
}

