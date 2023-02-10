import 'package:masakaja/import/import_main.dart';

class BottombarDetailMenu extends StatefulWidget {
  BottombarDetailMenu({
    Key? key,
    required this.link,
  }) : super(key: key);
  final void Function() link;

  @override
  State<BottombarDetailMenu> createState() => _BottombarChecoutState();
}

class _BottombarChecoutState extends State<BottombarDetailMenu> {
  @override
  Widget build(BuildContext context) {
    final size_width = MediaQuery.of(context).size.width;

    return ListTile(
      tileColor: kPrimaryOrangePastelColor,

      title: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: kPrimaryWhiteColor
        ),
        onPressed: widget.link,
        child: Text("Lihat Langkah", style: TextStyle(
            fontSize: size_width * 0.045,
            color: kPrimaryDarkColor,
            fontWeight: FontWeight.w600
        )),
      ),
    );
  }
}
