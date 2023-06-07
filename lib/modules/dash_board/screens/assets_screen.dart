import 'package:bybit_clone/utils/size_utils.dart';
import 'package:flutter/material.dart';

class AssetsScreen extends StatefulWidget {
  const AssetsScreen({Key? key}) : super(key: key);

  @override
  State<AssetsScreen> createState() => _AssetsScreenState();
}

class _AssetsScreenState extends State<AssetsScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Assets Screen',
        style: TextStyle(fontSize: SizeUtils.horizontalBlockSize * 5.5),
      ),
    );
  }
}
