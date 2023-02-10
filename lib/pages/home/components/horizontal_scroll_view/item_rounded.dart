import 'package:masakaja/import/import_main.dart';

class ItemRounded extends StatelessWidget {
  ItemRounded({
    Key? key,
    required this.image,
    required this.title,
    required this.isKulkas,
  }) : super(key: key);

  final String image;
  final String title;
  final bool isKulkas;

  @override
  Widget build(BuildContext context) {
    double size_width = MediaQuery.of(context).size.width;
    bool menuKulkas = isKulkas;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: size_width * 0.015),
      child: Column(
        children: [
          Container(
            width: size_width  * 0.165,
            height: size_width * 0.165,
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: menuKulkas == true ? BorderRadius.circular(15) : BorderRadius.circular(50),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: size_width * 0.01),
            child: Text(title, style: TextStyle(
                color: kPrimaryBlackColor,
            ))
          )
        ],
      )
    );
  }
}