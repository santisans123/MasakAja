import 'package:masakaja/import/import_main.dart';

class ListMetodeMasak extends StatelessWidget {
  ListMetodeMasak({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Align(
      alignment: Alignment.center,
      child: Wrap(
        children: [
          CardCategory(
              image: "assets/makanan/tumis.jpg", text: "Tumis Sayur"),
          CardCategory(
              image: "assets/makanan/goreng.jpg",
              text: "Olahan Goreng"),
          CardCategory(
              image: "assets/makanan/sop.jpg", text: "Panggang"),
          CardCategory(
              image: "assets/makanan/kukus.jpg", text: "Kukus"),
          CardCategory(
              image: "assets/makanan/rebus.jpg", text: "Rebus"),
          CardCategory(
              image: "assets/makanan/bakar.jpg", text: "Bakar")
        ],
      )
    );
  }
}


