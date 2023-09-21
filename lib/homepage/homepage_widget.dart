import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/request_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'homepage_model.dart';
export 'homepage_model.dart';

class HomepageWidget extends StatefulWidget {
  const HomepageWidget({Key? key}) : super(key: key);

  @override
  _HomepageWidgetState createState() => _HomepageWidgetState();
}

class _HomepageWidgetState extends State<HomepageWidget>
    with TickerProviderStateMixin {
  late HomepageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomepageModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 3,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<RequestsRecord>>(
      stream: queryRequestsRecord(
        queryBuilder: (requestsRecord) =>
            requestsRecord.where('user', isEqualTo: currentUserReference),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    Color(0xFFEF6B25),
                  ),
                ),
              ),
            ),
          );
        }
        List<RequestsRecord> homepageRequestsRecordList = snapshot.data!;
        return GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            floatingActionButton: FloatingActionButton.extended(
              onPressed: () async {
                context.pushNamed('create_request');
              },
              backgroundColor: FlutterFlowTheme.of(context).primary,
              elevation: 8.0,
              label: Text(
                'New',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      color: FlutterFlowTheme.of(context).primaryBackground,
                    ),
              ),
            ),
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
              iconTheme:
                  IconThemeData(color: FlutterFlowTheme.of(context).primary),
              automaticallyImplyLeading: false,
              leading: Icon(
                Icons.menu,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 24.0,
              ),
              title: Text(
                'Page Title',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Outfit',
                      color: Colors.white,
                      fontSize: 22.0,
                    ),
              ),
              actions: [],
              centerTitle: false,
              elevation: 2.0,
            ),
            body: SafeArea(
              top: true,
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                ),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment(0.0, 0),
                      child: TabBar(
                        labelColor: FlutterFlowTheme.of(context).primaryText,
                        unselectedLabelColor:
                            FlutterFlowTheme.of(context).secondaryText,
                        labelStyle: FlutterFlowTheme.of(context).titleMedium,
                        unselectedLabelStyle: TextStyle(),
                        indicatorColor: FlutterFlowTheme.of(context).primary,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(4.0, 4.0, 4.0, 4.0),
                        tabs: [
                          Tab(
                            text: 'On Going',
                          ),
                          Tab(
                            text: 'Past',
                          ),
                          Tab(
                            text: 'Cancelled',
                          ),
                        ],
                        controller: _model.tabBarController,
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        controller: _model.tabBarController,
                        children: [
                          Container(
                            width: double.infinity,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: Builder(
                              builder: (context) {
                                final requests =
                                    homepageRequestsRecordList.toList();
                                return SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(requests.length,
                                        (requestsIndex) {
                                      final requestsItem =
                                          requests[requestsIndex];
                                      return Container(
                                        width: double.infinity,
                                        height: 357.0,
                                        decoration: BoxDecoration(),
                                        child: RequestComponentWidget(
                                          key: Key(
                                              'Keyw41_${requestsIndex}_of_${requests.length}'),
                                          numberOfVehicles:
                                              requestsItem.numberOfVehicles,
                                          companyName: requestsItem.companyName,
                                          dropOffLocation: requestsItem
                                              .dropOffLocationAddress,
                                          pickUpLocation: requestsItem
                                              .pickOffLocationAddress,
                                          timestamp: requestsItem.timestamp!,
                                          chatRef: requestsItem.chat!,
                                          request: requestsItem.reference,
                                          dropOffTime:
                                              requestsItem.dropOffTime!,
                                          pickUpTime: requestsItem.pickUpTime!,
                                          userName: requestsItem.userName,
                                          requestDoc:
                                              homepageRequestsRecordList[
                                                  requestsIndex],
                                        ),
                                      );
                                    }),
                                  ),
                                );
                              },
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: Builder(
                              builder: (context) {
                                final pastRequests =
                                    homepageRequestsRecordList.toList();
                                return SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(pastRequests.length,
                                        (pastRequestsIndex) {
                                      final pastRequestsItem =
                                          pastRequests[pastRequestsIndex];
                                      return Container(
                                        width: double.infinity,
                                        height: 357.0,
                                        decoration: BoxDecoration(),
                                        child: RequestComponentWidget(
                                          key: Key(
                                              'Keyblo_${pastRequestsIndex}_of_${pastRequests.length}'),
                                          numberOfVehicles:
                                              pastRequestsItem.numberOfVehicles,
                                          companyName:
                                              pastRequestsItem.companyName,
                                          dropOffLocation: pastRequestsItem
                                              .dropOffLocationAddress,
                                          pickUpLocation: pastRequestsItem
                                              .pickOffLocationAddress,
                                          userName: pastRequestsItem.userName,
                                          pickUpTime:
                                              pastRequestsItem.pickUpTime!,
                                          dropOffTime:
                                              pastRequestsItem.dropOffTime!,
                                          request: pastRequestsItem.reference,
                                          chatRef: pastRequestsItem.chat!,
                                          timestamp:
                                              pastRequestsItem.timestamp!,
                                          requestDoc:
                                              homepageRequestsRecordList[
                                                  pastRequestsIndex],
                                        ),
                                      );
                                    }),
                                  ),
                                );
                              },
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: Builder(
                              builder: (context) {
                                final cancelledRequests =
                                    homepageRequestsRecordList.toList();
                                return SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children:
                                        List.generate(cancelledRequests.length,
                                            (cancelledRequestsIndex) {
                                      final cancelledRequestsItem =
                                          cancelledRequests[
                                              cancelledRequestsIndex];
                                      return Container(
                                        width: double.infinity,
                                        height: 357.0,
                                        decoration: BoxDecoration(),
                                        child: RequestComponentWidget(
                                          key: Key(
                                              'Keypyj_${cancelledRequestsIndex}_of_${cancelledRequests.length}'),
                                          numberOfVehicles:
                                              cancelledRequestsItem
                                                  .numberOfVehicles,
                                          companyName:
                                              cancelledRequestsItem.companyName,
                                          dropOffLocation: cancelledRequestsItem
                                              .dropOffLocationAddress,
                                          pickUpLocation: cancelledRequestsItem
                                              .pickOffLocationAddress,
                                          timestamp:
                                              cancelledRequestsItem.timestamp!,
                                          chatRef: cancelledRequestsItem.chat!,
                                          request:
                                              cancelledRequestsItem.reference,
                                          dropOffTime: cancelledRequestsItem
                                              .dropOffTime!,
                                          pickUpTime:
                                              cancelledRequestsItem.pickUpTime!,
                                          userName:
                                              cancelledRequestsItem.userName,
                                          requestDoc:
                                              homepageRequestsRecordList[
                                                  cancelledRequestsIndex],
                                        ),
                                      );
                                    }),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
