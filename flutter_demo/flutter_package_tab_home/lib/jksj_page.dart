import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_inappbrowser/flutter_inappbrowser.dart';

class JksjBrowser extends ChromeSafariBrowser {

  JksjBrowser(browserFallback) :super(browserFallback);

  @override
  void onOpened() {
    print("ChromeSafari browser opened");
  }

  @override
  void onLoaded() {
    print("ChromeSafari browser loaded");
  }

  @override
  void onClosed() {
    print("ChromeSafari browser closed");
  }

}

class ChromeSafariExampleScreen extends StatefulWidget {
  final ChromeSafariBrowser browser = new JksjBrowser(new InAppBrowser());
  @override
  _ChromeSafariExampleScreenState createState() => new _ChromeSafariExampleScreenState();
}

class _ChromeSafariExampleScreenState extends State<ChromeSafariExampleScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new RaisedButton(
          onPressed: ()  {
            JksjBrowser(new InAppBrowser()).open("http://111.230.25.189/index.html",
                options: {
                  "addShareButton": false,
                  "toolbarBackgroundColor": "#FFFFFF",
                  "dismissButtonStyle": 1,
                  "preferredBarTintColor": "#FFFFFF",
                  "instantAppsEnabled": false
                },
                optionsFallback: {
                  "toolbarTopBackgroundColor": "#FFFFFF",
                  "closeButtonCaption": "Close"
                });
            },
          child: Text("打开网页")),
    );
  }
}