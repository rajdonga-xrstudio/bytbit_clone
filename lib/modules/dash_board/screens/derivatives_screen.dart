import 'package:bybit_clone/utils/size_utils.dart';
import 'package:flutter/material.dart';

class DerivativesScreen extends StatefulWidget {
  const DerivativesScreen({Key? key}) : super(key: key);

  @override
  State<DerivativesScreen> createState() => _DerivativesScreenState();
}

class _DerivativesScreenState extends State<DerivativesScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Derivatives Screen',
        style: TextStyle(fontSize: SizeUtils.horizontalBlockSize * 5.5),
      ),
    );
  }
}
