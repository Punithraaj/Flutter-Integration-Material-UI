import 'package:flutter_integration_material_ui/Library/Language_Library/lib/easy_localization_delegate.dart';
import 'package:flutter_integration_material_ui/Library/Language_Library/lib/easy_localization_provider.dart';
import 'package:flutter/material.dart';

class SampleLanguage extends StatefulWidget {
  @override
  _SampleLanguageState createState() => _SampleLanguageState();
}

class _SampleLanguageState extends State<SampleLanguage> {
  @override
  Widget build(BuildContext context) {
    var data = EasyLocalizationProvider.of(context).data;
    return EasyLocalizationProvider(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0.0,
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppLocalizations.of(context).tr('title'),
                style: TextStyle(
                    fontFamily: "Sofia",
                    fontWeight: FontWeight.w800,
                    fontSize: 24.0),
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                AppLocalizations.of(context).tr('lorem'),
                style: TextStyle(
                    fontFamily: "Sofia",
                    fontWeight: FontWeight.w300,
                    fontSize: 19.0),
              ),
              SizedBox(
                height: 40.0,
              ),
              Text(
                AppLocalizations.of(context).tr('lorem2'),
                style: TextStyle(
                    fontFamily: "Sofia",
                    fontWeight: FontWeight.w300,
                    fontSize: 19.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
