import '/backend/backend.dart';
import '/components/request_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'admin_requests_model.dart';
export 'admin_requests_model.dart';

class AdminRequestsWidget extends StatefulWidget {
  const AdminRequestsWidget({Key? key}) : super(key: key);

  @override
  _AdminRequestsWidgetState createState() => _AdminRequestsWidgetState();
}

class _AdminRequestsWidgetState extends State<AdminRequestsWidget>
    with TickerProviderStateMixin {
  late AdminRequestsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdminRequestsModel());

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
      stream: queryRequestsRecord(),
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
        List<RequestsRecord> adminRequestsRequestsRecordList = snapshot.data!;
        return GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
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
                                final ongoingRequests =
                                    adminRequestsRequestsRecordList.toList();
                                return Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children:
                                      List.generate(ongoingRequests.length,
                                          (ongoingRequestsIndex) {
                                    final ongoingRequestsItem =
                                        ongoingRequests[ongoingRequestsIndex];
                                    return Container(
                                      width: double.infinity,
                                      height: 357.0,
                                      decoration: BoxDecoration(),
                                      child: RequestComponentWidget(
                                        key: Key(
                                            'Keyioq_${ongoingRequestsIndex}_of_${ongoingRequests.length}'),
                                        numberOfVehicles: ongoingRequestsItem
                                            .numberOfVehicles,
                                        companyName:
                                            ongoingRequestsItem.companyName,
                                        dropOffLocation: ongoingRequestsItem
                                            .dropOffLocationAddress,
                                        pickUpLocation: ongoingRequestsItem
                                            .pickOffLocationAddress,
                                        userName: ongoingRequestsItem.userName,
                                        timestamp:
                                            ongoingRequestsItem.timestamp!,
                                        chatRef: ongoingRequestsItem.chat!,
                                        request: ongoingRequestsItem.reference,
                                        dropOffTime:
                                            ongoingRequestsItem.dropOffTime!,
                                        pickUpTime:
                                            ongoingRequestsItem.pickUpTime!,
                                        requestDoc:
                                            adminRequestsRequestsRecordList[
                                                ongoingRequestsIndex],
                                      ),
                                    );
                                  }),
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
                                    adminRequestsRequestsRecordList.toList();
                                return Column(
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
                                            'Key3gi_${pastRequestsIndex}_of_${pastRequests.length}'),
                                        numberOfVehicles:
                                            pastRequestsItem.numberOfVehicles,
                                        companyName:
                                            pastRequestsItem.companyName,
                                        dropOffLocation: pastRequestsItem
                                            .dropOffLocationAddress,
                                        pickUpLocation: pastRequestsItem
                                            .pickOffLocationAddress,
                                        userName: pastRequestsItem.userName,
                                        timestamp: pastRequestsItem.timestamp!,
                                        chatRef: pastRequestsItem.chat!,
                                        request: pastRequestsItem.reference,
                                        dropOffTime:
                                            pastRequestsItem.dropOffTime!,
                                        pickUpTime:
                                            pastRequestsItem.pickUpTime!,
                                        requestDoc:
                                            adminRequestsRequestsRecordList[
                                                pastRequestsIndex],
                                      ),
                                    );
                                  }),
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
                                    adminRequestsRequestsRecordList.toList();
                                return Column(
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
                                            'Keyb8z_${cancelledRequestsIndex}_of_${cancelledRequests.length}'),
                                        numberOfVehicles: cancelledRequestsItem
                                            .numberOfVehicles,
                                        companyName:
                                            cancelledRequestsItem.companyName,
                                        dropOffLocation: cancelledRequestsItem
                                            .dropOffLocationAddress,
                                        pickUpLocation: cancelledRequestsItem
                                            .pickOffLocationAddress,
                                        userName:
                                            cancelledRequestsItem.userName,
                                        timestamp:
                                            cancelledRequestsItem.timestamp!,
                                        chatRef: cancelledRequestsItem.chat!,
                                        request:
                                            cancelledRequestsItem.reference,
                                        dropOffTime:
                                            cancelledRequestsItem.dropOffTime!,
                                        pickUpTime:
                                            cancelledRequestsItem.pickUpTime!,
                                        requestDoc:
                                            adminRequestsRequestsRecordList[
                                                cancelledRequestsIndex],
                                      ),
                                    );
                                  }),
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
