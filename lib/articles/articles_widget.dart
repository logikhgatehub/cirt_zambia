import '../backend/api_requests/api_calls.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ArticlesWidget extends StatefulWidget {
  ArticlesWidget({Key key}) : super(key: key);

  @override
  _ArticlesWidgetState createState() => _ArticlesWidgetState();
}

class _ArticlesWidgetState extends State<ArticlesWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.primaryColor,
        automaticallyImplyLeading: true,
        title: Text(
          'Articles',
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
        child: FutureBuilder<dynamic>(
          future: getArticlesCall(),
          builder: (context, snapshot) {
            // Customize what your widget looks like when it's loading.
            if (!snapshot.hasData) {
              return Center(
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: SpinKitWanderingCubes(
                    color: Colors.white,
                    size: 50,
                  ),
                ),
              );
            }
            final columnGetArticlesResponse = snapshot.data;
            return Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  getJsonField(columnGetArticlesResponse, r'''$.title''')
                      .toString(),
                  style: FlutterFlowTheme.title1.override(
                    fontFamily: 'IBM Plex Mono',
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
