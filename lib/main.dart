import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    home: NinjaCard(),
));


class NinjaCard extends StatefulWidget {
  const NinjaCard({super.key});

  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {

  int ninjalevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],

      appBar: AppBar(
        title: Text('Ninja ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        foregroundColor: Colors.white,
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              ninjalevel += 1;
            });
          },
          backgroundColor: Colors.grey[800],
          foregroundColor: Colors.grey[400],
          child: Icon(Icons.add)
      ),

      body: Padding(
          padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/itachi.PNG'),
                  radius: 40.0,
                ),
              ),
              Divider(
                height: 90.0,
                color: Colors.grey[800],
              ),
              Text(
                  'NAME',
                  style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2.0,
                  ),
              ),
              SizedBox(height: 10,),
              Text(
                'Erick',
                style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 28,
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 30,),
              Text(
                'CURRENT NINJA LEVEL',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 10,),
              Text(
                '$ninjalevel',
                style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2.0,
                    fontSize: 28,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 30,),
              Row(
                children: [
                  Icon(
                    Icons.email,
                    color: Colors.grey[400],
                  ),
                  SizedBox(width: 10.0,),
                  Text(
                    'erick@thenetninja.br',
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 18,
                      letterSpacing: 1.0
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

