import 'package:bybit_clone/res/app_assets.dart';
import 'package:bybit_clone/res/app_colors.dart';
import 'package:bybit_clone/utils/size_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: SizeUtils.horizontalBlockSize * 3.5,
              vertical: SizeUtils.verticalBlockSize * 1.0,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage(AppAssets.defaultAvatar),
                ),
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: SizeUtils.horizontalBlockSize * 2.5),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100.0),
                      child: Container(
                        color: AppColors.lightCardColor,
                        child: TextFormField(
                          textInputAction: TextInputAction.search,
                          style: TextStyle(fontSize: SizeUtils.horizontalBlockSize * 3.5),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: '🔥 XRP',
                            contentPadding: const EdgeInsets.all(8),
                            isDense: true,
                            hintStyle: TextStyle(
                              fontSize: SizeUtils.horizontalBlockSize * 3.5,
                            ),
                            prefixIconConstraints: const BoxConstraints(minWidth: 28, maxHeight: 28),
                            prefixIcon: Padding(
                              padding: const EdgeInsets.only(left: 6),
                              child: SizedBox(height: 18, width: 18, child: SvgPicture.asset(AppAssets.searchLight)),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                actionIconView(AppAssets.walletConnectScan),
                SizedBox(width: SizeUtils.horizontalBlockSize * 1.8),
                actionIconView(AppAssets.customerServiceIcon),
                SizedBox(width: SizeUtils.horizontalBlockSize * 1.8),
                actionIconView(AppAssets.bellIcon),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget actionIconView(String imagePath) {
    return SizedBox(
      height: 25,
      width: 25,
      child: SvgPicture.asset(imagePath),
    );
  }
}
