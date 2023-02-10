import 'package:masakaja/import/import_main.dart';

class SeeMore extends StatelessWidget {
  SeeMore({
    Key? key,
    required this.title
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    final size_width = MediaQuery.of(context).size.width;

    return   Container(
      margin: EdgeInsets.symmetric(
          horizontal: size_width * 0.03,
        vertical: size_width * 0.02,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: size_width * 0.05,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            "Lihat Semua",
            style: TextStyle(
              fontSize: size_width * 0.04,
              color: kPrimaryJinggaColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}


