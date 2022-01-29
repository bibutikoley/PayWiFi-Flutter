import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pay_wifi/screens/auth/web_pages.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebScreen extends StatelessWidget {
  final String title;
  final WebPages pages;

  const WebScreen({Key? key, required this.title, required this.pages})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: WebView(
        onWebViewCreated: (controller) => {_loadWebPage(controller)},
      ),
    );
  }

  _loadWebPage(WebViewController controller) async {
    var htmlContents =
        await rootBundle.loadString('assets/html/terms_and_conditions.html');
    switch (pages) {
      case WebPages.termsAndConditions:
        {
          htmlContents = await rootBundle
              .loadString('assets/html/terms_and_conditions.html');
        }
        break;
      case WebPages.privacyPolicy:
        {
          htmlContents =
              await rootBundle.loadString('assets/html/privacy_policy.html');
        }
        break;
    }
    controller.loadUrl(
      Uri.dataFromString(
        htmlContents,
        mimeType: 'text/html',
        encoding: Encoding.getByName('utf-8'),
      ).toString(),
    );
  }
}
