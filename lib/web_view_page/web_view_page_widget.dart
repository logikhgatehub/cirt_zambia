import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class WebViewPageWidget extends StatefulWidget {
  WebViewPageWidget({
    Key key,
    this.url,
    this.title,
  }) : super(key: key);

  final String url;
  final String title;

  @override
  _WebViewPageWidgetState createState() => _WebViewPageWidgetState();
}

class _WebViewPageWidgetState extends State<WebViewPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.primaryColor,
        automaticallyImplyLeading: true,
        title: Text(
          widget.title,
          style: FlutterFlowTheme.title1.override(
            fontFamily: 'IBM Plex Mono',
          ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: FlutterFlowTheme.primaryColor,
      body: SafeArea(
        child: FlutterFlowWebView(
          url: widget.url,
          bypass: true,
          verticalScroll: false,
          horizontalScroll: false,
        ),
      ),
    );
  }
}
