import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);
  static const String searchScreenId = '/SearchScreen';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text('SearchScreen'),
    );
  }
}
