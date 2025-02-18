import 'package:flutter/cupertino.dart';
import 'package:helloworld/base/widgets/text_style_third.dart';

class AppLayoutTextColumn extends StatelessWidget {
  final String topText;
  final String bottomText;
  final CrossAxisAlignment alignment;
  const AppLayoutTextColumn(
      {Key? key,
      required this.topText,
      required this.bottomText,
      required this.alignment})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        TextStyleThird(text: topText),
        SizedBox(height: 3),
        TextStyleThird(text: bottomText)
      ],
    );
  }
}
