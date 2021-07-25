import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

void main() => runApp(PercentIndicator());

class PercentIndicator extends StatelessWidget {
  const PercentIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Linear Percent Indicators"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(15.0),
              child: new LinearPercentIndicator(
                width: 140.0,
                lineHeight: 14.0,
                percent: 0.5,
                center: Text(
                  "50.0%",
                  style: new TextStyle(fontSize: 12.0),
                ),
                trailing: Icon(Icons.mood),
                linearStrokeCap: LinearStrokeCap.roundAll,
                backgroundColor: Colors.grey,
                progressColor: Colors.blue,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: new LinearPercentIndicator(
                width: 170.0,
                animation: true,
                animationDuration: 10000,
                lineHeight: 20.0,
                leading: new Text("left content"),
                trailing: new Text("right content"),
                percent: 0.2,
                center: Text("20.0%"),
                linearStrokeCap: LinearStrokeCap.butt,
                progressColor: Colors.red,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: new LinearPercentIndicator(
                width: MediaQuery.of(context).size.width - 150,
                animation: true,
                lineHeight: 50.0,
                leading: new Text("Progres: "),
                animationDuration: 60000,
                percent: 1,
                center: Text("100.0%"),
                linearStrokeCap: LinearStrokeCap.butt,
                progressColor: Colors.redAccent,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: new LinearPercentIndicator(
                width: MediaQuery.of(context).size.width - 50,
                animation: true,
                lineHeight: 20.0,
                animationDuration: 2500,
                percent: 0.8,
                center: Text("80.0%"),
                linearStrokeCap: LinearStrokeCap.roundAll,
                progressColor: Colors.green,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                children: <Widget>[
                  new LinearPercentIndicator(
                    width: 100.0,
                    lineHeight: 8.0,
                    percent: 0.2,
                    progressColor: Colors.red,
                  ),
                  new LinearPercentIndicator(
                    padding: const EdgeInsets.all(0.0),
                    width: MediaQuery.of(context).size.width - 150,
                    isRTL: false,
                    animation: true,
                    lineHeight: 88.0,
                    curve: Curves.decelerate,
                    animationDuration: 1000,
                    percent: 1,
                    center: Text("80.0%"),
                    progressColor: Colors.green,
                    backgroundColor: Colors.white.withOpacity(0.10),
                    linearStrokeCap: LinearStrokeCap.roundAll,
                  ),
                  new LinearPercentIndicator(
                    width: 100.0,
                    lineHeight: 8.0,
                    percent: 0.9,
                    progressColor: Colors.blue,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
