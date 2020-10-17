import 'package:flutter/material.dart';
import 'package:flutter_provider/app.dart';
import 'package:flutter_provider/models/language.dart';

class LangAction extends StatefulWidget {
  @override
  _LangActionState createState() => _LangActionState();
}

class _LangActionState extends State<LangAction> {
  _changeLanguage(Language language) {
    Locale _tempLocale;
    switch(language.languageCode) {
      case 'en':
        _tempLocale = Locale(language.languageCode, 'US');
      break;
      case 'fr':
        _tempLocale = Locale(language.languageCode, 'FR');
      break;
      case 'ar':
        _tempLocale = Locale(language.languageCode, 'SA');
      break;
      default:
        _tempLocale = Locale(language.languageCode, 'US');
    }

    MyApp.setLocale(context, _tempLocale);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(padding: EdgeInsets.only(top: 3)),
        DropdownButton(
          underline: SizedBox(),
          onChanged: (Language language) {
            _changeLanguage(language);
          },
          icon: Icon(
            Icons.language, 
            color: Colors.white, 
            size: 28,
          ),
          items: Language.languageList()
          .map<DropdownMenuItem<Language>>((lang) => DropdownMenuItem(
            value: lang,
            child: Row(
              children: <Widget>[
                Text(lang.name, style: TextStyle(fontSize: 22),),
                SizedBox(width: 4),
                Text(lang.flag, style: TextStyle(fontSize: 25),),
              ],
            ),
          )).toList(),
        ),
      ],
    );
  }
}
