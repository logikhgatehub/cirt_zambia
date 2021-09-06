import '../articles/articles_widget.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../report/report_widget.dart';
import '../web_view_page/web_view_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageWidget extends StatefulWidget {
  HomePageWidget({Key key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget>
    with TickerProviderStateMixin {
  final animationsMap = {
    'imageOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 300,
      fadeIn: true,
    ),
    'containerOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 200,
      fadeIn: true,
    ),
    'containerOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 400,
      fadeIn: true,
    ),
    'containerOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      fadeIn: true,
    ),
    'containerOnPageLoadAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 800,
      fadeIn: true,
    ),
    'containerOnPageLoadAnimation5': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 1000,
      fadeIn: true,
    ),
    'containerOnPageLoadAnimation6': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 1200,
      fadeIn: true,
    ),
    'containerOnPageLoadAnimation7': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 1300,
      fadeIn: true,
    ),
    'containerOnPageLoadAnimation8': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 1400,
      fadeIn: true,
    ),
    'textOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      fadeIn: true,
    ),
  };
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    startAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onPageLoad),
      this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.primaryColor,
        automaticallyImplyLeading: true,
        title: Text(
          'ZMCIRT',
          style: FlutterFlowTheme.title1.override(
            fontFamily: 'IBM Plex Mono',
          ),
        ).animated([animationsMap['textOnPageLoadAnimation']]),
        actions: [],
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: FlutterFlowTheme.primaryColor,
      drawer: Drawer(
        elevation: 16,
        child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: Color(0xFF3474E0),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Image.asset(
                  'assets/images/cirt.jpg',
                  width: MediaQuery.of(context).size.width,
                  height: 150,
                  fit: BoxFit.cover,
                ).animated([animationsMap['imageOnPageLoadAnimation']]),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: ListTile(
                    leading: Icon(
                      Icons.remove_moderator,
                      color: FlutterFlowTheme.tertiaryColor,
                    ),
                    title: Text(
                      'Vulnerabilities',
                      style: FlutterFlowTheme.subtitle1.override(
                        fontFamily: 'IBM Plex Mono',
                      ),
                    ),
                    tileColor: Color(0xFFF5F5F5),
                    dense: false,
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.format_quote,
                    color: FlutterFlowTheme.tertiaryColor,
                  ),
                  title: Text(
                    'Faq\'s',
                    style: FlutterFlowTheme.subtitle1.override(
                      fontFamily: 'IBM Plex Mono',
                    ),
                  ),
                  tileColor: Color(0xFFF5F5F5),
                  dense: false,
                ),
                ListTile(
                  leading: Icon(
                    Icons.settings,
                    color: FlutterFlowTheme.tertiaryColor,
                  ),
                  title: Text(
                    'Settings',
                    style: FlutterFlowTheme.subtitle1.override(
                      fontFamily: 'IBM Plex Mono',
                    ),
                  ),
                  tileColor: Color(0xFFF5F5F5),
                  dense: false,
                ),
                ListTile(
                  leading: Icon(
                    Icons.contacts,
                    color: FlutterFlowTheme.tertiaryColor,
                  ),
                  title: Text(
                    'Contact Details',
                    style: FlutterFlowTheme.subtitle1.override(
                      fontFamily: 'IBM Plex Mono',
                    ),
                  ),
                  tileColor: Color(0xFFF5F5F5),
                  dense: false,
                ),
                ListTile(
                  leading: FaIcon(
                    FontAwesomeIcons.infoCircle,
                    color: FlutterFlowTheme.tertiaryColor,
                  ),
                  title: Text(
                    'About ZMCIRT',
                    style: FlutterFlowTheme.subtitle1.override(
                      fontFamily: 'IBM Plex Mono',
                    ),
                  ),
                  tileColor: Color(0xFFF5F5F5),
                  dense: false,
                )
              ],
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: GridView(
                padding: EdgeInsets.zero,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 1,
                ),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  InkWell(
                    onTap: () async {
                      await Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.rightToLeft,
                          duration: Duration(milliseconds: 300),
                          reverseDuration: Duration(milliseconds: 300),
                          child: ArticlesWidget(),
                        ),
                      );
                    },
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 150,
                            decoration: BoxDecoration(),
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child: Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                color: Color(0xFFF5F5F5),
                                elevation: 4,
                                child: Image.asset(
                                  'assets/images/articles.jpg',
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            'Articles',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'IBM Plex Mono',
                            ),
                          )
                        ],
                      ),
                    ),
                  ).animated([animationsMap['containerOnPageLoadAnimation1']]),
                  InkWell(
                    onTap: () async {
                      await Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.bottomToTop,
                          duration: Duration(milliseconds: 300),
                          reverseDuration: Duration(milliseconds: 300),
                          child: ReportWidget(),
                        ),
                      );
                    },
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 150,
                            decoration: BoxDecoration(),
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child: Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                color: Color(0xFFF5F5F5),
                                elevation: 4,
                                child: Image.asset(
                                  'assets/images/report_cyber_crime.jpg',
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            'Report a crime',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'IBM Plex Mono',
                            ),
                          )
                        ],
                      ),
                    ),
                  ).animated([animationsMap['containerOnPageLoadAnimation2']]),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 150,
                          decoration: BoxDecoration(),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                            child: Card(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              color: Color(0xFFF5F5F5),
                              elevation: 4,
                              child: Image.asset(
                                'assets/images/child_online_protection.jpg',
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          'child online protection',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'IBM Plex Mono',
                          ),
                        )
                      ],
                    ),
                  ).animated([animationsMap['containerOnPageLoadAnimation3']]),
                  InkWell(
                    onTap: () async {
                      await Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.rightToLeft,
                          duration: Duration(milliseconds: 300),
                          reverseDuration: Duration(milliseconds: 300),
                          child: WebViewPageWidget(
                            url: 'http://196.13.104.125:3000/',
                            title: 'Threat Watcher',
                          ),
                        ),
                      );
                    },
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(),
                      child: InkWell(
                        onTap: () async {
                          await Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.fade,
                              duration: Duration(milliseconds: 300),
                              reverseDuration: Duration(milliseconds: 300),
                              child: WebViewPageWidget(
                                url: 'http://196.13.104.125:3000/',
                              ),
                            ),
                          );
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 150,
                              decoration: BoxDecoration(),
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                child: Card(
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  color: Color(0xFFF5F5F5),
                                  elevation: 4,
                                  child: InkWell(
                                    onTap: () async {
                                      await Navigator.push(
                                        context,
                                        PageTransition(
                                          type: PageTransitionType.rightToLeft,
                                          duration: Duration(milliseconds: 300),
                                          reverseDuration:
                                              Duration(milliseconds: 300),
                                          child: WebViewPageWidget(
                                            url: '',
                                            title: 'Threat Watch',
                                          ),
                                        ),
                                      );
                                    },
                                    child: Image.asset(
                                      'assets/images/threat_watch.jpg',
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              'Threat Monitoring',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'IBM Plex Mono',
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ).animated([animationsMap['containerOnPageLoadAnimation4']]),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 150,
                          decoration: BoxDecoration(),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                            child: Card(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              color: Color(0xFFF5F5F5),
                              elevation: 4,
                              child: Image.asset(
                                'assets/images/url_scanner.jpg',
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          'Url Scanner',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'IBM Plex Mono',
                          ),
                        )
                      ],
                    ),
                  ).animated([animationsMap['containerOnPageLoadAnimation5']]),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 150,
                          decoration: BoxDecoration(),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                            child: Card(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              color: Color(0xFFF5F5F5),
                              elevation: 4,
                              child: Image.asset(
                                'assets/images/account_user.jpg',
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          'Vulnerabilities',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'IBM Plex Mono',
                          ),
                        )
                      ],
                    ),
                  ).animated([animationsMap['containerOnPageLoadAnimation6']]),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 150,
                          decoration: BoxDecoration(),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                            child: Card(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              color: Color(0xFFF5F5F5),
                              elevation: 4,
                              child: Image.asset(
                                'assets/images/awerness_compaign.jpg',
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          'Awareness Videos',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'IBM Plex Mono',
                          ),
                        )
                      ],
                    ),
                  ).animated([animationsMap['containerOnPageLoadAnimation7']]),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 150,
                          decoration: BoxDecoration(),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                            child: Card(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              color: Color(0xFFF5F5F5),
                              elevation: 4,
                              child: Image.asset(
                                'assets/images/device_health.png',
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          'Contact details',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'IBM Plex Mono',
                          ),
                        )
                      ],
                    ),
                  ).animated([animationsMap['containerOnPageLoadAnimation8']])
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
