import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Cataegory(
            image_location: 'images/png/boy.jpg',
            image_caption: 'male',
          ),
          Cataegory(
            image_location: 'images/png/girl.png',
            image_caption: 'female',
          ),
          Cataegory(
            image_location: 'images/png/cropes.png',
            image_caption: 'f&v',
          ),
          Cataegory(
            image_location: 'images/png/household.jpg',
            image_caption: 'household',
          ),
          Cataegory(
            image_location: 'images/png/pot.png',
            image_caption: 'appliances',
          ),
          Cataegory(
            image_location: 'images/png/jewllery.png',
            image_caption: 'accessories',
          ),
        ],
      ),
    );
  }
}

class Cataegory extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Cataegory({
    this.image_location,
    this.image_caption,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0,
          child: ListTile(
              title: Image.asset(
                image_location,
                width: 100.0,
                height: 80.0,
              ),
              subtitle: Container(
                alignment: Alignment.topCenter,
                child: Text(image_caption),
              )),
        ),
      ),
    );
  }
}
