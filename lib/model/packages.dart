import 'package:flutter/material.dart';


enum PackageType {
  Call,
  Data,
  SMS,
  Hybrid,
}

class Packages {
  final String duration;
  final String network;
  final PackageType type;
  final String name;
  final String details;
  final String activationCode;
  final String price;
  final String deactivationCode;


  const Packages({
    @required this.duration,
    @required this.name,
    @required this.network,
    @required this.details,
    @required  this.type,
    @required  this.price,
    @required  this.activationCode,
    @required this.deactivationCode
  });

}