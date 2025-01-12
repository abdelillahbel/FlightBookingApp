import 'package:flightbookapp/core/data/hotels_list.dart';
import 'package:flightbookapp/core/res/app_media.dart';
import 'package:flightbookapp/core/res/styles/app_theme.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HotelDetailsScreen extends StatefulWidget {
  const HotelDetailsScreen({super.key});

  @override
  State<HotelDetailsScreen> createState() => _HotelDetailsScreenState();
}

class _HotelDetailsScreenState extends State<HotelDetailsScreen> {
  late int index = 0;
  @override
  void didChangeDependencies() {
    var args = ModalRoute.of(context)!.settings.arguments as Map;
    print(args["index"]);
    index = args["index"];
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.bgColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300.0,
            pinned: true,
            floating: false,
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                  child: Icon(
                    FluentSystemIcons.ic_fluent_arrow_left_regular,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              title: Card(
                color: Colors.white10,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(hotelsList[index]["place"],
                      style: AppTheme.headLineStyle4.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: GoogleFonts.oswald().fontFamily)),
                ),
              ),
              background: Image.asset(
                "assets/images/${hotelsList[index]["image"]}",
                fit: BoxFit.fill,
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Idéalement situé à proximité des plages locales, notre hôtel offre également un accès facile aux sites touristiques d'Oran, tels que le fort de Santa-Cruz.",
                style: AppTheme.headLineStyle3,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text("More images", style: AppTheme.headLineStyle2),
            ),
            Container(
              height: 300,
              padding: EdgeInsets.all(0),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.all(8.0),
                      child: Image.asset(
                        AppMedia.hotelRoom,
                        fit: BoxFit.contain,
                      ),
                    );
                  }),
            )
          ]))
        ],
      ),
    );
  }
}
