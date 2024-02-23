import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:social/item_model.dart';

class SingleItem extends StatelessWidget {
  final ItemModel item;
  final double width;
  final EdgeInsets contentPadding;
  final bool showName;
  final TextStyle? nameStyle;

  const SingleItem({
    super.key,
    required this.item,
    this.width = 100,
    this.contentPadding = const EdgeInsets.all(10),
    this.showName = false,
    this.nameStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      padding: contentPadding,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            item.assetLink,
            height: width,
          ),
          if (showName)
            Text(
              item.name,
              textAlign: TextAlign.center,
              style: nameStyle,
            ),
        ],
      ),
    );
  }
}
