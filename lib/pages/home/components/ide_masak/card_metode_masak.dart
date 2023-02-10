import 'package:masakaja/import/import_main.dart';

class CardMetodeMasak extends StatelessWidget {
  CardMetodeMasak({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size_width = MediaQuery.of(context).size.width;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: size_width * 0.02),
      padding: EdgeInsets.symmetric(horizontal: size_width * 0.015),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Mau Menu Apa Hari Ini?",
              style: TextStyle(
                  fontSize: size_width * 0.045,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.5)),
          Text("Pilih Metode Memasak Yang Disukai"),
          SizedBox(height: size_width * 0.015),
          ListMetodeMasak(),
        ],
      )
    );
  }
}


