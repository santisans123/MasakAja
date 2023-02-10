import 'package:masakaja/import/import_main.dart';

class HorizontalScroll extends StatelessWidget {
  HorizontalScroll({
    Key? key,
    required this.statusKulkas,
  }) : super(key: key);

  final bool statusKulkas;

  @override
  Widget build(BuildContext context) {
    final size_width = MediaQuery.of(context).size.width;
    bool isKulkas = statusKulkas;
    List<Widget> _listMinuman = List.generate(menuMinuman.length, (i) =>
        ItemRounded(
          image: menuMinuman[i].image,
          title: menuMinuman[i].title,
          isKulkas: false,
        ));
    List<Widget> _listKulkas = List.generate(menuKulkas.length, (i) =>
        ItemRounded(
          image: menuKulkas[i].image,
          title: menuKulkas[i].title,
          isKulkas: true,
        ));

    return Container(
        margin: EdgeInsets.symmetric(horizontal: size_width * 0.01),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children :
              isKulkas == false ?
              _listMinuman :
              _listKulkas
          ),
      )
    );
  }
}


