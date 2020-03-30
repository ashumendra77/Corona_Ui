import 'package:flutter/cupertino.dart';

class Picture{
  String imageUrl;
  String name;
  String des;
  Picture({@required this.imageUrl,@required this.name,@required this.des});
}

List<Picture> picture=[
  Picture(imageUrl: "images/download (1).jpeg",name:"Fever",des: "COVID-19 is an infectious condition, which means it can be spread, directly or indirectly, from one person to another."),
    Picture(imageUrl: "images/download (3).jpeg",name:"Cold",des: "COVID-19 is an infectious condition, which means it can be spread, directly or indirectly, from one person to another."),
  Picture(imageUrl: "images/download.jpeg",name: "Dry Cough",des: "COVID-19 is an infectious condition, which means it can be spread, directly or indirectly, from one person to another."),
  Picture(imageUrl: "images/images.jpeg",name: "Breathness",des: "COVID-19 is an infectious condition, which means it can be spread, directly or indirectly, from one person to another."),
  // Picture(imageUrl: "pic5.jpeg",name: "",des: "jshgdey  kfjhjk jnfhk mbuh m,u fvjhz vvm  jnv vjhvv klvhv vhvv mvn "),
  // Picture(imageUrl: "pic6.jpeg",des: "jshgdey  kfjhjk jnfhk mbuh m,u fvjhz vvm  jnv vjhvv klvhv vhvv mvn "),

];