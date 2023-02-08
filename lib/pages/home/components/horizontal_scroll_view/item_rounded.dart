import 'package:masakaja/import/import_main.dart';

class ItemRounded extends StatelessWidget {
  ItemRounded({
    Key? key,
    required this.image,
    required this.isKulkas,
  }) : super(key: key);

  final String image;
  final bool isKulkas;

  @override
  Widget build(BuildContext context) {
    bool menuKulkas = isKulkas;
    return Container(
      margin: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.03),
      width: MediaQuery.of(context).size.width * 0.165,
      height: MediaQuery.of(context).size.width * 0.165,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: menuKulkas == true ? BorderRadius.circular(15) : BorderRadius.circular(50),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}