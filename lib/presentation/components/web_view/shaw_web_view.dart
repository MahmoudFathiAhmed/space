// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:webview_flutter/webview_flutter.dart';

// class ShowWebView extends StatefulWidget {
//   final String url;
//   const ShowWebView({super.key, required this.url});

//   @override
//   State<ShowWebView> createState() => _ShowWebViewState();
// }

// class _ShowWebViewState extends State<ShowWebView> {
//   @override
//   void initState() {
//     super.initState();
//     // Enable virtual display.
//     if (Platform.isAndroid) WebView.platform = AndroidWebView();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return WebView(
//       initialUrl: widget.url,
//     );
//   }
// }
