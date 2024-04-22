import 'package:flutter/material.dart';
import 'package:porfolio/screens/utils.dart';
import 'package:porfolio/widgets/contact/widgets/contact_form.dart';

class Desktop extends StatelessWidget {
  const Desktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width - Constants.DRAWER_WIDTH;
    const height = 450.0;
    return SizedBox(
      width: width,
      height: height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: Constants.MARGIN_BODY),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(child: ContactForm()),
                Image.asset(
                  'images/image-preview.png',
                  fit: BoxFit.cover,
                )
              ],
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
