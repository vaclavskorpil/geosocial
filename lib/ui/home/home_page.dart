
import 'package:flutter/material.dart';
import 'package:geosocial/ui/appbar/my_appbar.dart';
import 'package:geosocial/ui/buisinesses_list/business_list.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
            appBar: MyAppbar(),
            body: BusinessList() ,
      ),
    );
  }
}