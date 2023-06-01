import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intrapair_task/screen/dashboadd/tabs/mesurement_info.dart';
import 'package:intrapair_task/screen/dashboadd/tabs/personal_info.dart';
import 'package:intrapair_task/utilis/color.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "New Customer",
          style: GoogleFonts.poppins(
            fontSize: 24,
            color: AppColors.dark,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            TabBar(
              labelColor: Color(0xff781596),
              unselectedLabelColor: Color(0xff777777),
              labelStyle: GoogleFonts.lato(
                fontSize: 13,
                fontWeight: FontWeight.w700,
              ),
              unselectedLabelStyle: GoogleFonts.lato(
                fontSize: 13,
                fontWeight: FontWeight.w700,
              ),
              indicatorColor: Color(0xff781596),
              tabs: <Widget>[
                const Tab(
                  text: 'PERSONAL DATA',
                ),
                const Tab(
                  text: 'MEASUREMENT INFO',
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Center(
                  child: TabBarView(
                    children: [PersonalInfo(), MeasurementInfo()],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
