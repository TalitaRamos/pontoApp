import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.0),
                    bottomRight: Radius.circular(25.0)),
                boxShadow: [
                  BoxShadow(color: Colors.lightGreen, spreadRadius: 2),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text('Hora do dia',
                          style: TextStyle(
                            color: Colors.black45,
                          )),
                      Text('09:00',
                          style: TextStyle(color: Colors.black45))
                    ],
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Column(
                    children: [
                      Text('Saldo do dia',
                          style: TextStyle(color: Colors.black45)),
                      Text('01:00',
                          style: TextStyle(color: Colors.black45))
                    ],
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Column(
                    children: [
                      Text('Saldo total',
                          style: TextStyle(color: Colors.black45)),
                      Text('05:00',
                          style: TextStyle(color: Colors.black45))
                    ],
                  )
                ],
              ),
            ),
            ButtonStateDay(
              texto: 'INICIAR O DIA',
              icon: Icons.wb_sunny_sharp,
              color: Colors.lightGreen,
            ),
            SizedBox(
              height: 10.0,
            ),
            ButtonStateDay(
              texto: 'INICIAR INTERVALO',
              icon: Icons.emoji_food_beverage_rounded,
              color: Colors.lightGreen,
            ),
            SizedBox(
              height: 10.0,
            ),
            ButtonStateDay(
              texto: 'FINALIZAR INTERVALO',
              icon: Icons.free_breakfast_outlined,
              color: Colors.lightGreen,
            ),
            SizedBox(
              height: 10.0,
            ),
            ButtonStateDay(
              texto: 'FINALIZAR O DIA',
              icon: Icons.wb_sunny_outlined,
              color: Colors.lightGreen,
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: ElevatedButton.icon(
                    label: Text(
                      'FOLGA',
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.left,
                    ),
                    icon: Icon(
                      Icons.event_available_rounded,
                      color: Colors.white,
                      size: 40,
                    ),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.lightBlue.shade100,
                      minimumSize: Size(150, 80),
                      textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: ElevatedButton.icon(
                    label: Text(
                      'FALTA',
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.left,
                    ),
                    icon: Icon(
                      Icons.event_busy_rounded,
                      color: Colors.white,
                      size: 40,
                    ),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.redAccent.shade100,
                      minimumSize: Size(150, 80),
                      textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
          ],
        ),
      ),
    );
  }
}

class ButtonStateDay extends StatelessWidget {
  String texto;
  IconData icon;
  Color color;
  double heigth = 80;
  ButtonStateDay({this.texto, this.icon, this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.0, right: 20.0),
      child: ElevatedButton.icon(
        label: Text(
          texto,
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.left,
        ),
        icon: Icon(
          icon,
          color: Colors.white,
          size: 40,
        ),
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          primary: color,
          minimumSize: Size(double.infinity, MediaQuery.of(context).size.height * 0.10),
          textStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(20.0),
          ),
        ),
      ),
    );
  }
}
