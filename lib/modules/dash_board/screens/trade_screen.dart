import 'package:bybit_clone/utils/size_utils.dart';
import 'package:flutter/material.dart';

class TradeScreen extends StatefulWidget {
  const TradeScreen({Key? key}) : super(key: key);

  @override
  State<TradeScreen> createState() => _TradeScreenState();
}

class _TradeScreenState extends State<TradeScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Trade Screen',
        style: TextStyle(fontSize: SizeUtils.horizontalBlockSize * 5.5),
      ),
    );
  }
}
