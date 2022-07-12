import 'package:design_clones/res/app_colors.dart';
import 'package:flutter/material.dart';

class Facilities extends StatefulWidget {
  final bool isSelected;
  final IconData facilityIcon;
  const Facilities({Key? key,required this.isSelected,required this.facilityIcon}) : super(key: key);

  @override
  _FacilitiesState createState() => _FacilitiesState();
}

class _FacilitiesState extends State<Facilities> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      margin: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        color: widget.isSelected?AppColors.colorSliderActive:AppColors.colorWhite,
        borderRadius: BorderRadius.all(Radius.circular(15))
      ),
      alignment: Alignment.center,
      child: Icon(widget.facilityIcon, size: 32, color: widget.isSelected?AppColors.colorWhite:AppColors.colorSliderActive),
    );
  }
}
