import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';

class Corousel extends StatefulWidget {
  const Corousel({
    Key? key,
  }) : super(key: key);

  @override
  _CorouselState createState() => _CorouselState();
}

class _CorouselState extends State<Corousel> {
  final List<Color> colors = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.indigo,
    Colors.purple,
  ];
  final List<String> images = [
    "https://images.pexels.com/photos/3244513/pexels-photo-3244513.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/3408744/pexels-photo-3408744.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/15286/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/3244513/pexels-photo-3244513.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/3408744/pexels-photo-3408744.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/15286/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/3244513/pexels-photo-3244513.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/3408744/pexels-photo-3408744.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/15286/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
  ];
  final List<String> text = [
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
  ];

  bool _isPlaying = true;

  late CarouselSliderController _sliderController;

  @override
  void initState() {
    super.initState();
    _sliderController = CarouselSliderController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Corrousel Learning"),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 500,
            child: CarouselSlider.builder(
              unlimitedMode: true,
              controller: _sliderController,
              slideBuilder: (index) {
                return Stack(
                  children: [
                  Image.network(
                    images[index],
                    fit: BoxFit.cover,
                  ),
                    Center(child: Text(text[index],style: TextStyle(color: Colors.white,fontSize: 25),)),
                  ],
                );
              },
              slideTransform: DefaultTransform(),
              slideIndicator: CircularSlideIndicator(
                alignment: Alignment.bottomLeft,
                indicatorBackgroundColor: Colors.white,
                padding: EdgeInsets.only(bottom: 32,left: 10),
                indicatorBorderColor: Colors.black,
              ),
              itemCount: colors.length,
              initialPage: 0,
              enableAutoSlider: true,
            ),
          ),
        ],
      ),
    );
  }
}

