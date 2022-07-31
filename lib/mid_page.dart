import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:xml/xml.dart';

String raceName = "--------------------------------------------";
String day = "--------------------------------------------";
String hour = "<Time>15:00:00Z</Time>";
String country = "--------------------------------------------";
String timeDay = "--------------------------------------------";

String any = "2022";
String mes = "05";
String dia = "20";

int raceNum = 1;

class MidWid extends StatefulWidget {
  const MidWid({Key? key}) : super(key: key);

  @override
  State<MidWid> createState() => _MidWidState();
}

class _MidWidState extends State<MidWid> {
  Future<void> fetchPost() async {
    var request =
        http.Request('GET', Uri.parse('http://ergast.com/api/f1/current/' + raceNum.toString()));

    http.StreamedResponse response = await request.send();
    if (response.statusCode == 200) {
      final document = XmlDocument.parse(await response.stream.bytesToString());

      if (!document.findAllElements('Date').isEmpty) {
        raceName = document.findAllElements('RaceName').toString();
        day = document.findAllElements('Date').elementAt(0).toString();
        hour = document.findAllElements('Time').elementAt(0).toString();
        country = document.findAllElements('Country').toString();
        String hora2 = hour.substring(6, hour.length - 8);
        var hourZolu = int.parse(hora2.substring(0, 2));
        hourZolu = hourZolu + 2;
        hour = hourZolu.toString() + hour.substring(8, hour.length - 11);
        //Days
        var a = day.substring(6, day.length - 7);
        any = a.substring(0, 4);
        mes = a.substring(5, 7);
        dia = a.substring(8, 10);
        setState(() {});
      }
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    fetchPost();
    print(raceNum);

    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Card(
            elevation: 35,
            child: SizedBox(
              //width: ,
              height: 250,
              child: Center(
                child: Column(
                  
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      raceName.substring(11, raceName.length - 12),
                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                    Text("Country: " + country.substring(10, country.length - 11)),
                    Text(dia + '-' + mes + '-' + any + ' -------> ' + hour),
                  ],
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(30),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                ),
                onPressed: () {
                  setState(() {
                    if (raceNum > 1) {
                      raceNum--;
                    }
                  });
                },
                child: const Text("Previous"),
              ),
              Text(raceNum.toString(),
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                ),
                onPressed: () {
                  setState(() {
                    raceNum++;
                  });
                },
                child: const Text("Next"),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
