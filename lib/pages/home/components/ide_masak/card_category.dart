import 'package:masakaja/import/import_main.dart';

class CardCategory extends StatelessWidget {
  CardCategory({
    Key? key,
    required this.image,
    required this.text,
  }) : super(key: key);

  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
        margin: EdgeInsets.symmetric(
          horizontal: size.width * 0.012,
          vertical: size.width * 0.012,
        ),
        padding: EdgeInsets.all(size.width * 0.005),
        child: ElevatedButton(
          child: Column(
            children: [
              Container(
                  width: size.width * 0.27,
                  height: size.width * 0.22,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(image,
                        fit: BoxFit.fill),
                  )
              ),

              Container(
                width: size.height * 0.08,
                margin: EdgeInsets.symmetric(vertical: size.height * 0.005),
                child: Text(
                    textAlign: TextAlign.center,
                    "Aneka\n$text", style: TextStyle(
                  fontSize:  size.height * 0.014,
                  color: kPrimaryBlackColor,
                )),
              )
            ],
          ),
          onPressed:  () {
            Get.to(ListMenu());
          },
          style: ElevatedButton.styleFrom(
              minimumSize: Size.zero,
              padding: EdgeInsets.zero,
              backgroundColor: kPrimaryWhiteColor
          ),
        )
    );
  }
}


