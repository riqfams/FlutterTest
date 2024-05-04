import 'package:flutter/material.dart';
import 'package:fluttertest/model/tourism_place.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}): super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      title: 'Wisata Tegal',
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget{
  //const MainScreen({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wisata Tegal'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index){
          final TourismPlace place = tourismPlaceList[index];
          return InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return DescScreen(place: place);
              }));
            },
            child: Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget> [
                  Expanded(
                    flex: 1,
                    child: Image.asset(place.imageAsset),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding (
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget> [
                          Text(
                              place.name,
                              style: TextStyle(fontSize: 18.0),
                          ),
                          SizedBox(
                              height: 10
                          ),
                          Text(
                              place.location,
                              style: TextStyle(fontSize: 12.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: tourismPlaceList.length,
      ),
    );
  }
}

class DescScreen extends StatelessWidget {
  //const DescScreen({Key? key}) : super(key: key);
  final TourismPlace place;
  DescScreen({required this.place});

  var informationTextStyle = TextStyle(fontFamily: 'Backslash');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Stack(
                  children: <Widget> [
                    Image.asset(place.imageAsset),
                    SafeArea(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.grey,
                              child: IconButton(
                                icon: Icon(
                                  Icons.arrow_back,
                                  color: Colors.white,
                                ),
                                onPressed: (){
                                  Navigator.pop(context);
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 16.0),
                  child: Text(
                    place.name,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:  <Widget> [
                      Column(
                        children: <Widget> [
                          Icon(Icons.calendar_today),
                          SizedBox(height: 8.0),
                          Text(place.openDays, style: informationTextStyle),
                          ],
                        ),
                      Column(
                        children: <Widget> [
                          Icon(Icons.access_time),
                          SizedBox(height: 8.0),
                          Text(place.openTime, style: informationTextStyle),
                        ],
                      ),
                      Column(
                        children: <Widget> [
                          Icon(Icons.monetization_on),
                          SizedBox(height: 8.0),
                          Text(place.ticketPrice, style: informationTextStyle),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    place.description,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 10.0,),
                  ),
                ),
                SizedBox(
                  height: 100,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: place.imageUrls.map((url) {
                      return Padding(
                        padding: EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(url),
                        ),
                      );
                    }).toList(),
                  ),
                ),
                const ViewMore(),
              ],
            ),
          ),
    );
  }
}

class ViewMore extends StatelessWidget{
  const ViewMore({Key? key}): super(key: key);
  final String message = 'Anda berada di halaman kedua';

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen(message)));
      },
      child: const Text('View More'),
    );
  }
}

class SecondScreen extends StatelessWidget{
  final String message;
  SecondScreen(this.message);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Kedua'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(message),
            OutlinedButton(
              child: Text('Halaman sebelumnya'),
              onPressed: (){
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
