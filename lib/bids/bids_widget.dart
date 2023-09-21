import '/backend/backend.dart';
import '/components/request_bids_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'bids_model.dart';
export 'bids_model.dart';

class BidsWidget extends StatefulWidget {
  const BidsWidget({
    Key? key,
    this.request,
  }) : super(key: key);

  final RequestsRecord? request;

  @override
  _BidsWidgetState createState() => _BidsWidgetState();
}

class _BidsWidgetState extends State<BidsWidget> with TickerProviderStateMixin {
  late BidsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BidsModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
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
    return StreamBuilder<List<BidsRecord>>(
      stream: queryBidsRecord(
        queryBuilder: (bidsRecord) =>
            bidsRecord.where('request', isEqualTo: widget.request?.reference),
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
        List<BidsRecord> bidsBidsRecordList = snapshot.data!;
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
              automaticallyImplyLeading: true,
              title: Text(
                'Page Title',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Outfit',
                      color: FlutterFlowTheme.of(context).primary,
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
                            text: 'Accepted',
                          ),
                          Tab(
                            text: 'Rejected',
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
                                final bids = bidsBidsRecordList.toList();
                                return SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children:
                                        List.generate(bids.length, (bidsIndex) {
                                      final bidsItem = bids[bidsIndex];
                                      return Container(
                                        width: double.infinity,
                                        height: 399.0,
                                        decoration: BoxDecoration(),
                                        child: RequestBidsWidget(
                                          key: Key(
                                              'Keyfy3_${bidsIndex}_of_${bids.length}'),
                                          userName: bidsItem.username,
                                          userProfPic: bidsItem.userProfile,
                                          meetupLocaton:
                                              bidsItem.meetupLocationAddress,
                                          serviceProviderStatus:
                                              bidsItem.serviceProviderStatus,
                                          details: bidsItem.moreDetails,
                                          chat: bidsItem.chat!,
                                          bid: bidsItem.reference,
                                          meetupTIme: bidsItem.meetupTime!,
                                          creationDate: bidsItem.timestamp!,
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
                                final rejectedBids =
                                    bidsBidsRecordList.toList();
                                return SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(rejectedBids.length,
                                        (rejectedBidsIndex) {
                                      final rejectedBidsItem =
                                          rejectedBids[rejectedBidsIndex];
                                      return Container(
                                        width: double.infinity,
                                        height: 400.0,
                                        decoration: BoxDecoration(),
                                        child: RequestBidsWidget(
                                          key: Key(
                                              'Keyn9f_${rejectedBidsIndex}_of_${rejectedBids.length}'),
                                          userName: rejectedBidsItem.username,
                                          userProfPic:
                                              rejectedBidsItem.userProfile,
                                          meetupLocaton: rejectedBidsItem
                                              .meetupLocationAddress,
                                          serviceProviderStatus:
                                              rejectedBidsItem
                                                  .serviceProviderStatus,
                                          details: rejectedBidsItem.moreDetails,
                                          chat: rejectedBidsItem.chat!,
                                          bid: rejectedBidsItem.reference,
                                          meetupTIme:
                                              rejectedBidsItem.meetupTime!,
                                          creationDate:
                                              rejectedBidsItem.timestamp!,
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
