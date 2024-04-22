import 'package:flutter/material.dart';
import 'package:porfolio/screens/utils.dart';
import 'package:porfolio/widgets/contact/widgets/contact_form.dart';

class Mobile extends StatelessWidget {
  const Mobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
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
            child: ContactForm(),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
