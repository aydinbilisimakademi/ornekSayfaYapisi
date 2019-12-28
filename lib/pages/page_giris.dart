import 'package:flutter/material.dart';
import 'package:muin/widgets/widget_circular.dart';
import 'package:muin/widgets/widget_form_giris.dart';
import 'package:muin/widgets/widget_logo.dart';

class PageGiris extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        WidgetLogoMuin(),
        WidgetFormGiris(),

      ],
    );
  }
}
