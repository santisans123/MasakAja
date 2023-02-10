import 'package:masakaja/import/import_main.dart';

class BoxSinglescroll extends StatelessWidget {
  BoxSinglescroll({
    Key? key,
    required this.title,
    required this.optionKulkas,
  }) : super(key: key);

  final String title;
  final bool optionKulkas;


  @override
  Widget build(BuildContext context) {
    final size_width = MediaQuery.of(context).size.width;

    return Container(
        margin: EdgeInsets.symmetric(
            horizontal: size_width * 0.025,
            vertical: size_width * 0.015,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.grey.withOpacity(0.6),
              offset: const Offset(0, 0),
              blurRadius: 8,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SeeMore(title: title),
            HorizontalScroll(statusKulkas: optionKulkas),
          ],
        )
    );
  }
}


