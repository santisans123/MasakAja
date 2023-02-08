import 'package:masakaja/import/import_main.dart';

class Carousel extends StatefulWidget{

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  var dataCarousel = <dynamic>[];

  @override
  Widget build(BuildContext context) {
    final size_width = MediaQuery.of(context).size.width;
    final items = ["assets/makanan/ide_masak.jpg"];

    return Container(
      margin: EdgeInsets.only(top: size_width * 0.025, bottom: size_width * 0.02),
        child: CarouselSlider.builder(
          options: CarouselOptions(
            height: size_width * 0.35,
            autoPlay: true,
          ),
          itemCount: items.length,
          itemBuilder: (context, itemIndex, realIndex)
          {
            return ImageViewCarousel(
             imgPath: items[itemIndex],
            );
          },
        ),
    );
  }
}