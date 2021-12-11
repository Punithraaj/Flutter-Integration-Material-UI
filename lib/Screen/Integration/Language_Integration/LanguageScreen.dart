// ignore_for_file: use_key_in_widget_constructors, avoid_unnecessary_containers, prefer_const_constructors_in_immutables, annotate_overrides, camel_case_types, file_names, prefer_const_constructors

import 'package:flutter_integration_material_ui/Library/Language_Library/lib/easy_localization_delegate.dart';
import 'package:flutter_integration_material_ui/Library/Language_Library/lib/easy_localization_provider.dart';
import 'package:flutter/material.dart';
import 'package:giffy_dialog/giffy_dialog.dart';

import 'SampleDetailScreen.dart';

class LanguageScreen extends StatefulWidget {
  LanguageScreen({Key key}) : super(key: key);

  _LanguageScreenState createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  @override
  Widget build(BuildContext context) {
    var data = EasyLocalizationProvider.of(context).data;
    return EasyLocalizationProvider(
      data: data,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            AppLocalizations.of(context).tr('language'),
            style: TextStyle(
                fontFamily: "Gotik",
                fontWeight: FontWeight.w600,
                fontSize: 18.5,
                letterSpacing: 1.2,
                color: Colors.white),
          ),
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.white),
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                InkWell(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (_) => NetworkGiffyDialog(
                                image: Image.asset(
                                  "assets/integration/language_integration/earth.gif",
                                  fit: BoxFit.cover,
                                ),
                                title: Text(
                                    AppLocalizations.of(context)
                                        .tr('titleCard'),
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: "Gotik",
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w600)),
                                description: Text(
                                  AppLocalizations.of(context).tr('descCard'),
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: "Popins",
                                      fontWeight: FontWeight.w300,
                                      color: Colors.black26),
                                ),
                                onOkButtonPressed: () {
                                  data.changeLocale(Locale('en', 'US'));
                                  Navigator.pop(context);
                                },
                              ));
                    },
                    child: cardName(
                      flag:
                          "assets/integration/language_integration/englandFlag.png",
                      title: AppLocalizations.of(context).tr('english'),
                    )),
                InkWell(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (_) => NetworkGiffyDialog(
                                image: Image.asset(
                                  "assets/integration/language_integration/earth.gif",
                                  fit: BoxFit.cover,
                                ),
                                title: Text(
                                    AppLocalizations.of(context)
                                        .tr('titleCard'),
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: "Gotik",
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w600)),
                                description: Text(
                                  AppLocalizations.of(context).tr('descCard'),
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: "Popins",
                                      fontWeight: FontWeight.w300,
                                      color: Colors.black26),
                                ),
                                onOkButtonPressed: () {
                                  data.changeLocale(Locale('ar', 'DZ'));
                                  Navigator.pop(context);
                                },
                              ));
                    },
                    child: cardName(
                      flag:
                          "assets/integration/language_integration/arabicFlag.png",
                      title: AppLocalizations.of(context).tr('arabic'),
                    )),
                InkWell(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (_) => NetworkGiffyDialog(
                                image: Image.asset(
                                  "assets/integration/language_integration/earth.gif",
                                  fit: BoxFit.cover,
                                ),
                                title: Text(
                                    AppLocalizations.of(context)
                                        .tr('titleCard'),
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: "Gotik",
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w600)),
                                description: Text(
                                  AppLocalizations.of(context).tr('descCard'),
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: "Popins",
                                      fontWeight: FontWeight.w300,
                                      color: Colors.black26),
                                ),
                                onOkButtonPressed: () {
                                  data.changeLocale(Locale('zh', 'CN'));
                                  Navigator.pop(context);
                                },
                              ));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, top: 20.0),
                      child: Container(
                        height: 80.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.0)),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 10.0,
                                  spreadRadius: 0.0)
                            ]),
                        child: Padding(
                          padding:
                              const EdgeInsets.only(left: 20.0, right: 15.0),
                          child: Row(children: <Widget>[
                            Container(
                              decoration: BoxDecoration(boxShadow: [
                                BoxShadow(
                                  blurRadius: 10.0,
                                  color: Colors.black12.withOpacity(0.06),
                                  spreadRadius: 10.0,
                                )
                              ]),
                              child: Image.network(
                                "https://image.flaticon.com/icons/png/512/330/330651.png",
                                height: 65.0,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20.0, right: 20.0),
                              child: Text(
                                AppLocalizations.of(context).tr('china'),
                                style: TextStyle(
                                    fontFamily: "Popins",
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 1.3),
                              ),
                            )
                          ]),
                        ),
                      ),
                    )),
                InkWell(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (_) => NetworkGiffyDialog(
                                image: Image.asset(
                                  "assets/integration/language_integration/earth.gif",
                                  fit: BoxFit.cover,
                                ),
                                title: Text(
                                    AppLocalizations.of(context)
                                        .tr('titleCard'),
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: "Gotik",
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w600)),
                                description: Text(
                                  AppLocalizations.of(context).tr('descCard'),
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: "Popins",
                                      fontWeight: FontWeight.w300,
                                      color: Colors.black26),
                                ),
                                onOkButtonPressed: () {
                                  data.changeLocale(Locale('hi', 'IN'));
                                  Navigator.pop(context);
                                },
                              ));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, top: 20.0),
                      child: Container(
                        height: 80.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.0)),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 10.0,
                                  spreadRadius: 0.0)
                            ]),
                        child: Padding(
                          padding:
                              const EdgeInsets.only(left: 20.0, right: 15.0),
                          child: Row(children: <Widget>[
                            Container(
                              decoration: BoxDecoration(boxShadow: [
                                BoxShadow(
                                  blurRadius: 10.0,
                                  color: Colors.black12.withOpacity(0.06),
                                  spreadRadius: 10.0,
                                )
                              ]),
                              child: Image.network(
                                "https://image.flaticon.com/icons/png/512/330/330439.png",
                                height: 65.0,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20.0, right: 20.0),
                              child: Text(
                                AppLocalizations.of(context).tr('india'),
                                style: TextStyle(
                                    fontFamily: "Popins",
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 1.3),
                              ),
                            )
                          ]),
                        ),
                      ),
                    )),
                InkWell(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (_) => NetworkGiffyDialog(
                                image: Image.asset(
                                  "assets/integration/language_integration/earth.gif",
                                  fit: BoxFit.cover,
                                ),
                                title: Text(
                                    AppLocalizations.of(context)
                                        .tr('titleCard'),
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: "Gotik",
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w600)),
                                description: Text(
                                  AppLocalizations.of(context).tr('descCard'),
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: "Popins",
                                      fontWeight: FontWeight.w300,
                                      color: Colors.black26),
                                ),
                                onOkButtonPressed: () {
                                  data.changeLocale(Locale(
                                    'id',
                                    'ID',
                                  ));
                                  Navigator.pop(context);
                                },
                              ));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, top: 20.0),
                      child: Container(
                        height: 80.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.0)),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 10.0,
                                  spreadRadius: 0.0)
                            ]),
                        child: Padding(
                          padding:
                              const EdgeInsets.only(left: 20.0, right: 15.0),
                          child: Row(children: <Widget>[
                            Container(
                              decoration: BoxDecoration(boxShadow: [
                                BoxShadow(
                                  blurRadius: 10.0,
                                  color: Colors.black12.withOpacity(0.06),
                                  spreadRadius: 10.0,
                                )
                              ]),
                              child: Image.network(
                                "https://image.flaticon.com/icons/png/512/3013/3013975.png",
                                height: 65.0,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20.0, right: 20.0),
                              child: Text(
                                AppLocalizations.of(context).tr('indonesia'),
                                style: TextStyle(
                                    fontFamily: "Popins",
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 1.3),
                              ),
                            )
                          ]),
                        ),
                      ),
                    )),
                InkWell(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (_) => NetworkGiffyDialog(
                                image: Image.asset(
                                  "assets/integration/language_integration/earth.gif",
                                  fit: BoxFit.cover,
                                ),
                                title: Text(
                                    AppLocalizations.of(context)
                                        .tr('titleCard'),
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: "Gotik",
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w600)),
                                description: Text(
                                  AppLocalizations.of(context).tr('descCard'),
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: "Popins",
                                      fontWeight: FontWeight.w300,
                                      color: Colors.black26),
                                ),
                                onOkButtonPressed: () {
                                  data.changeLocale(Locale('pt', 'BR'));
                                  Navigator.pop(context);
                                },
                              ));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, top: 20.0),
                      child: Container(
                        height: 80.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.0)),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 10.0,
                                  spreadRadius: 0.0)
                            ]),
                        child: Padding(
                          padding:
                              const EdgeInsets.only(left: 20.0, right: 15.0),
                          child: Row(children: <Widget>[
                            Container(
                              decoration: BoxDecoration(boxShadow: [
                                BoxShadow(
                                  blurRadius: 10.0,
                                  color: Colors.black12.withOpacity(0.06),
                                  spreadRadius: 10.0,
                                )
                              ]),
                              child: Image.network(
                                "https://image.flaticon.com/icons/png/512/330/330430.png",
                                height: 65.0,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20.0, right: 20.0),
                              child: Text(
                                AppLocalizations.of(context).tr('brazil'),
                                style: TextStyle(
                                    fontFamily: "Popins",
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 1.3),
                              ),
                            )
                          ]),
                        ),
                      ),
                    )),
                Padding(
                  padding: EdgeInsets.only(right: 15.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(PageRouteBuilder(
                          pageBuilder: (_, __, ___) => SampleLanguage()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 25.0, right: 20.0, top: 40.0),
                      child: Container(
                        height: 50.0,
                        width: double.infinity,
                        decoration: BoxDecoration(color: Colors.blueAccent),
                        child: Center(
                          child: Text(
                            AppLocalizations.of(context).tr('detail'),
                            style: TextStyle(
                                fontFamily: "Sofia",
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 18.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class cardName extends StatelessWidget {
  String title, flag;
  cardName({this.title, this.flag});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 20.0),
      child: Container(
        height: 80.0,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 10.0,
                  spreadRadius: 0.0)
            ]),
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 15.0),
          child: Row(children: <Widget>[
            Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  blurRadius: 10.0,
                  color: Colors.black12.withOpacity(0.06),
                  spreadRadius: 10.0,
                )
              ]),
              child: Image.asset(
                flag,
                height: 41.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Text(
                title,
                style: TextStyle(
                    fontFamily: "Popins",
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1.3),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
