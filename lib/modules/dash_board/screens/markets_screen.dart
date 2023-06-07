import 'package:bybit_clone/utils/size_utils.dart';
import 'package:flutter/material.dart';

class MarketsScreen extends StatefulWidget {
  const MarketsScreen({Key? key}) : super(key: key);

  @override
  State<MarketsScreen> createState() => _MarketsScreenState();
}

class _MarketsScreenState extends State<MarketsScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Markets Screen',
        style: TextStyle(fontSize: SizeUtils.horizontalBlockSize * 5.5),
      ),
    );
  }
}
