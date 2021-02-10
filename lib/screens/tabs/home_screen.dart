
import 'package:flutter/cupertino.dart';
import 'package:flutter_news_app/style/theme.dart';
import 'package:flutter_news_app/widgets/home_widgets/headline_slider.dart';
import 'package:flutter_news_app/widgets/home_widgets/breaking_news.dart';
import 'package:flutter_news_app/widgets/home_widgets/top_channel.dart';

class HomeScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _HomeScreenState();

}
class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        HeadlingSliderWidget(),
        // Padding(
        //   padding: const EdgeInsets.all(10.0),
        //   child: Row(
        //     children: <Widget>[
        //       Text("Top channels", style: TextStyle(
        //           color: Colors.black,
        //           fontWeight: FontWeight.bold,
        //           fontSize: 17.0
        //       ),),
        //     ],
        //   ),
        // ),
        // TopChannelsWidget(),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: <Widget>[
              Text("Breaking news", style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 17.0
              ),),
            ],
          ),
        ),
        BreakingNewsWidget()
      ],
    );
  }
}