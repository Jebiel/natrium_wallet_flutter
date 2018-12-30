import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kalium_wallet_flutter/colors.dart';
import 'package:kalium_wallet_flutter/dimens.dart';
import 'package:kalium_wallet_flutter/ui/home_page.dart';
import 'package:kalium_wallet_flutter/ui/widgets/buttons.dart';

class IntroWelcomePage extends StatefulWidget {
  @override
    _IntroWelcomePageState createState() => _IntroWelcomePageState();
  }
  class _IntroWelcomePageState extends State<IntroWelcomePage> {
    var _scaffoldKey = new GlobalKey<ScaffoldState>();

    @override
    Widget build(BuildContext context) {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light
          .copyWith(statusBarIconBrightness: Brightness.light));
      return Scaffold(
        key: _scaffoldKey,
        body: LayoutBuilder(
         builder: (context, constraints) =>
         Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Material(color: greyLight),
            Positioned(
              left: 0.0,
              right: 0.0,
              top: constraints.maxHeight / 2,
              child: 
                //Welcome Text
                Container(
                  margin: EdgeInsets.only(right: 30, left: 30),
                  child:
                  Text("Welcome to Kalium. To begin you may create a new wallet or import an existing one",
                      style: TextStyle(
                          fontSize: 18.0,
                          fontFamily: 'NunitoSans',
                          color: white90))
                ),
            ),
            Positioned(
              right:0.0,
              left: 0.0,
              bottom: 0.0,
              child: 
              //New wallet/import wallet
                Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        buildKaliumButton(KaliumButtonType.PRIMARY,
                            'New Wallet', Dimens.BUTTON_TOP_DIMENS,
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                new MaterialPageRoute(builder: (context) => new KaliumHomePage()));
                            }),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        buildKaliumButton(KaliumButtonType.PRIMARY_OUTLINE,
                            'Import Wallet', Dimens.BUTTOM_BOTTOM_DIMENS,
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                new MaterialPageRoute(builder: (context) => new KaliumHomePage()));
                            }),
                      ],
                    ),
                  ]
                ),
            ),
          ],
        )
        )
        )
        ;
  }
}