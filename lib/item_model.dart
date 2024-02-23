import 'package:flutter/material.dart';

class ItemModel {
  final String assetLink;
  final String name;
  String? url;
  VoidCallback? function;

  ItemModel({
    required this.assetLink,
    required this.name,
    this.url,
    this.function,
  });
}
