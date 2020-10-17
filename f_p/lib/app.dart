import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_provider/localization/demo_localization.dart';
import './routes/route_names.dart';
import './routes/custom_router.dart';

class MyApp extends StatefulWidget {

  static void setLocale(BuildContext context, Locale locale) {
    _MyAppState state = context.findAncestorStateOfType<_MyAppState>();
    state.setLocale(locale);
  }

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Locale _locale;

  void setLocale(Locale locale) {
    setState(() => _locale = locale);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Provider',
      initialRoute: homeRoute,
      locale: _locale,
      supportedLocales: [
        Locale('en', 'US'),
        Locale('fr', 'FR'),
        Locale('ar', 'SA'),
      ],
      localizationsDelegates: [
        DemoLocalization.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      localeResolutionCallback: (deviceLocale, supportedLocales) {
        for (var locale in supportedLocales) {
          if(
            locale.languageCode == deviceLocale.languageCode && 
            locale.countryCode == deviceLocale.countryCode
          ) {
            return deviceLocale;
          }
        }
        return supportedLocales.first;
      },
      onGenerateRoute: CustomRouter.allRoutes,
    );
  }
}


// class MyHomePage extends StatelessWidget {
//   final String title;
//   MyHomePage(this.title);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(title),
//       ),
//       drawer: Drawer(),
//       body: Row(
//         children: <Widget>[
//           Text('cool')
//         ],
//       ),
//     );
//   }
// }



// class NotGoodWidget extends StatefulWidget {
//   NotGoodWidget({Key key}) : super(key: key);

//   _NotGoodWidgetState createState() => _NotGoodWidgetState();
// }

// class _NotGoodWidgetState extends State<NotGoodWidget> {

//   final db = [];
//   StreamSubscription sub;
//   Map data;

//   @override
//   void initState() {
//     // setState(() {
//     //   db.add(
//     //     Map{name: "sidahmed"}
//     //   );
//     // });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
      
//     );
//   }
// }
