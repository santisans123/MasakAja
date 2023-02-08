import 'package:masakaja/import/import_main.dart';

class HorizontalScroll extends StatelessWidget {
  HorizontalScroll({
    Key? key,
    required this.minuman,
    required this.bahanKulkas,
    required this.statusKulkas
  }) : super(key: key);

  final ListMinuman minuman;
  final ListKulkas bahanKulkas;
  final bool statusKulkas;

  @override
  Widget build(BuildContext context) {
    final size_width = MediaQuery.of(context).size.width;
    bool isKulkas = statusKulkas;

    return Container(
        margin: EdgeInsets.symmetric(horizontal: size_width * 0.01),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              isKulkas == false ?
              ItemRounded(
                image: minuman.image, isKulkas: false,
              ) :
              ItemRounded(
                image: bahanKulkas.image, isKulkas: true,
              ),
            ],
          ),
      )
    );
  }
}


