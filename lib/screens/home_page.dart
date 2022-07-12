import 'dart:ui';

import 'package:design_clones/res/app_colors.dart';
import 'package:design_clones/widgets/facilities.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double startPrice=50;
  double endPrice=250;

  bool coffeeSelected=false;
  bool forkKnifeSelected=false;
  bool wifiSelected=false;
  bool snowflakeSelected=false;
  bool showerSelected=false;
  bool bedSelected=false;
  bool barbellSelected=false;
  bool martiniSelected=false;

  IconData coffee=Icons.emoji_food_beverage_rounded;
  IconData forkKnife=Icons.lunch_dining;
  IconData wifi=Icons.wifi;
  IconData snowflake=Icons.ac_unit;
  IconData shower=Icons.shower;
  IconData bed=Icons.bed;
  IconData barbell=Icons.sports_gymnastics;
  IconData martini=Icons.wine_bar;

  // List<bool> facilitiesSelected=[coffeeSelected,
  //   forkKnifeSelected,
  //   wifiSelected,
  //   snowflakeSelected,
  //   showerSelected,
  //   bedSelected,
  //   barbellSelected,
  //   martiniSelected]

  String sortByGroup="Sort by";
  String sortByPrice="Price";
  String sortByRating="Rating";
  String sortByLowestFare="Lowest fare";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorBackground,
      appBar: AppBar(
        elevation: 0,
        leading: Icon(Icons.arrow_back_ios_sharp,size: 18,color: AppColors.colorTextHeading,),
        backgroundColor: AppColors.colorBackground,
        centerTitle: true,
        title: Text("Filters",style: GoogleFonts.poppins(color: AppColors.colorTextHeading,fontWeight: FontWeight.w700,fontSize: 18),),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.only(left: 5),
                height: 62,
                margin: EdgeInsets.only(bottom: 16),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: AppColors.colorWhite,
                  borderRadius: BorderRadius.all(Radius.circular(15))
                ),
                child: TextField(
                  decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    labelText: "Arrival",
                    labelStyle: GoogleFonts.poppins(color: AppColors.colorLabelText,fontSize: 10),
                    hintText: DateFormat.yMMMMd().format(DateTime.now()),
                    hintStyle: GoogleFonts.poppins(color: AppColors.colorTextHeading,fontSize: 16,fontWeight: FontWeight.w400),
                    border: InputBorder.none
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.only(left: 5),
                height: 62,
                margin: EdgeInsets.only(bottom: 16),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: AppColors.colorWhite,
                  borderRadius: BorderRadius.all(Radius.circular(15))
                ),
                child: TextField(
                  decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    labelText: "Departure",
                    labelStyle: GoogleFonts.poppins(color: AppColors.colorLabelText,fontSize: 10),
                    hintText: DateFormat.yMMMMd().format(DateTime.now().add(Duration(days: 10))),
                    hintStyle: GoogleFonts.poppins(color: AppColors.colorTextHeading,fontSize: 16,fontWeight: FontWeight.w400),
                    border: InputBorder.none
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.only(left: 5),
                height: 62,
                margin: EdgeInsets.symmetric(vertical: 16),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: AppColors.colorWhite,
                  borderRadius: BorderRadius.all(Radius.circular(15))
                ),
                child: TextField(
                  decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    labelText: "Place",
                    labelStyle: GoogleFonts.poppins(color: AppColors.colorLabelText,fontSize: 10),
                    hintText: "Paris",
                    hintStyle: GoogleFonts.poppins(color: AppColors.colorTextHeading,fontSize: 16,fontWeight: FontWeight.w400),
                    border: InputBorder.none
                  ),
                ),
              ),
              Text("Price",style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w700,color: AppColors.colorTextHeading),),
              RangeSlider(
                min: 0,
                max: 325,
                activeColor: AppColors.colorSliderActive,
                inactiveColor: AppColors.colorSliderInctive,
                values: RangeValues(startPrice, endPrice),
                onChanged: (values){
                  setState(() {
                    startPrice=values.start;
                    endPrice=values.end;
                  });
                }
              ),
              Container(
                margin: EdgeInsets.only(top: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: ((MediaQuery.of(context).size.width-32)/2)-10,
                      padding: EdgeInsets.only(left: 5),
                      height: 54,
                      margin: EdgeInsets.only(top: 16,bottom: 32),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: AppColors.colorWhite,
                          borderRadius: BorderRadius.all(Radius.circular(15))
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            labelText: "From",
                            labelStyle: GoogleFonts.poppins(color: AppColors.colorLabelText,fontSize: 10),
                            hintText: "\u0024${startPrice.ceil().toString()}",
                            hintStyle: GoogleFonts.poppins(color: AppColors.colorTextHeading,fontSize: 14,fontWeight: FontWeight.w400),
                            border: InputBorder.none,
                          isCollapsed: false
                        ),
                      ),
                    ),
                    Container(
                      width: ((MediaQuery.of(context).size.width-32)/2)-10,
                      height: 54,
                      margin: EdgeInsets.only(top: 16,bottom: 32),
                      padding: EdgeInsets.only(left: 5),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: AppColors.colorWhite,
                          borderRadius: BorderRadius.all(Radius.circular(15))
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            labelText: "To",
                            labelStyle: GoogleFonts.poppins(color: AppColors.colorLabelText,fontSize: 10),
                            hintText: "\u0024${endPrice.ceil().toString()}",
                            hintStyle: GoogleFonts.poppins(color: AppColors.colorTextHeading,fontSize: 14,fontWeight: FontWeight.w400),
                            border: InputBorder.none
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Text("Facilities",style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w700,color: AppColors.colorTextHeading),),
              Container(
                width: double.infinity,
                height:50,
                margin: EdgeInsets.only(top: 16,bottom: 32),
                alignment: Alignment.center,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          coffeeSelected=!coffeeSelected;
                        });
                      },
                      child: Facilities(isSelected: coffeeSelected, facilityIcon: coffee),
                    ),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          forkKnifeSelected=!forkKnifeSelected;
                        });
                      },
                      child: Facilities(isSelected: forkKnifeSelected, facilityIcon: forkKnife),
                    ),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          wifiSelected=!wifiSelected;
                        });
                      },
                      child: Facilities(isSelected: wifiSelected, facilityIcon: wifi),
                    ),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          snowflakeSelected=!snowflakeSelected;
                        });
                      },
                      child: Facilities(isSelected: snowflakeSelected, facilityIcon: snowflake),
                    ),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          showerSelected=!showerSelected;
                        });
                      },
                      child: Facilities(isSelected: showerSelected, facilityIcon: shower),
                    ),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          bedSelected=!bedSelected;
                        });
                      },
                      child: Facilities(isSelected: bedSelected, facilityIcon: bed),
                    ),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          barbellSelected=!barbellSelected;
                        });
                      },
                      child: Facilities(isSelected: barbellSelected, facilityIcon: barbell),
                    ),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          martiniSelected=!martiniSelected;
                        });
                      },
                      child: Facilities(isSelected: martiniSelected, facilityIcon: martini),
                    ),
                  ],
                ),
              ),
              Text("Sort by",style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w700,color: AppColors.colorTextHeading),),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Radio(
                        value: sortByPrice,
                        activeColor: AppColors.colorSliderActive,
                        groupValue: sortByGroup,
                        onChanged: (value){
                          sortByGroup=sortByPrice;
                          setState(() {});
                        }
                      ),
                      Text(sortByPrice,style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w400,color: AppColors.colorTextHeading),)
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                        value: sortByRating,
                        activeColor: AppColors.colorSliderActive,
                        groupValue: sortByGroup,
                        onChanged: (value){
                          sortByGroup=sortByRating;
                          setState(() {});
                        }
                      ),
                      Text(sortByRating,style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w400,color: AppColors.colorTextHeading),)
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                        value: sortByLowestFare,
                        activeColor: AppColors.colorSliderActive,
                        groupValue: sortByGroup,
                        onChanged: (value){
                          sortByGroup=sortByLowestFare;
                          setState(() {});
                        }
                      ),
                      Text(sortByLowestFare,style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w400,color: AppColors.colorTextHeading),)
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: ((MediaQuery.of(context).size.width-32)/2)-8,
                    height: 60,
                    margin: EdgeInsets.only(top: 16,bottom: 32),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: AppColors.colorWhite,
                        borderRadius: BorderRadius.all(Radius.circular(15))
                    ),
                    child: Text("Reset",style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold,color: AppColors.colorReset),),
                  ),
                  Container(
                    width: ((MediaQuery.of(context).size.width-32)/2)-8,
                    height: 60,
                    margin: EdgeInsets.only(top: 16,bottom: 32),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: AppColors.colorReset,
                        borderRadius: BorderRadius.all(Radius.circular(15))
                    ),
                    child: Text("Done",style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold,color: AppColors.colorWhite),),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}