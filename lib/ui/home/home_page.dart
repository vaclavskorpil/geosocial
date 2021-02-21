
import 'package:flutter/material.dart';
import 'package:geosocial/ui/buisinesses_list/business_list.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(body: BusinessList() ,
      ),
    );
  }
}