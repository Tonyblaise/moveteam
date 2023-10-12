import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_place_picker.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/place.dart';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'create_bid_model.dart';
export 'create_bid_model.dart';

class CreateBidWidget extends StatefulWidget {
  const CreateBidWidget({
    Key? key,
    this.request,
  }) : super(key: key);

  final DocumentReference? request;

  @override
  _CreateBidWidgetState createState() => _CreateBidWidgetState();
}

class _CreateBidWidgetState extends State<CreateBidWidget> {
  late CreateBidModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreateBidModel());

    _model.moreDetailsInputController ??= TextEditingController();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          iconTheme: IconThemeData(color: FlutterFlowTheme.of(context).primary),
          automaticallyImplyLeading: true,
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
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Align(
                    alignment: AlignmentDirectional(-1.00, 0.00),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 20.0, 0.0, 0.0),
                      child: Text(
                        'Accept request',
                        style: FlutterFlowTheme.of(context).headlineMedium,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        final _datePickedDate = await showDatePicker(
                          context: context,
                          initialDate: getCurrentTimestamp,
                          firstDate: DateTime(1900),
                          lastDate: DateTime(2050),
                        );

                        TimeOfDay? _datePickedTime;
                        if (_datePickedDate != null) {
                          _datePickedTime = await showTimePicker(
                            context: context,
                            initialTime:
                                TimeOfDay.fromDateTime(getCurrentTimestamp),
                          );
                        }

                        if (_datePickedDate != null &&
                            _datePickedTime != null) {
                          safeSetState(() {
                            _model.datePicked = DateTime(
                              _datePickedDate.year,
                              _datePickedDate.month,
                              _datePickedDate.day,
                              _datePickedTime!.hour,
                              _datePickedTime.minute,
                            );
                          });
                        }
                      },
                      child: Container(
                        width: double.infinity,
                        height: 52.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(-1.00, 0.00),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            child: Text(
                              'Pick up time',
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    lineHeight: 1.0,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-1.00, -1.00),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: TextFormField(
                        controller: _model.moreDetailsInputController,
                        autofocus: true,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'More Details',
                          labelStyle: FlutterFlowTheme.of(context).labelMedium,
                          hintStyle: FlutterFlowTheme.of(context).labelMedium,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).info,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          filled: true,
                          fillColor: Color(0xFFF5F6FB),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium,
                        maxLines: 10,
                        minLines: 10,
                        validator: _model.moreDetailsInputControllerValidator
                            .asValidator(context),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    child: FlutterFlowPlacePicker(
                      iOSGoogleMapsApiKey:
                          'AIzaSyCWXBROEi4Ox5USXEAKqJpnIcifNapBMqY',
                      androidGoogleMapsApiKey:
                          'AIzaSyAB6nFMpapHmgdZzg_6yMJ2u-td0XXnG2s',
                      webGoogleMapsApiKey:
                          'AIzaSyDGB-j90jsxwd9T6VxuOwe8kcIQBQ_Q52o',
                      onSelect: (place) async {
                        setState(() => _model.meetupLocationValue = place);
                      },
                      defaultText: 'Select meetup location',
                      icon: Icon(
                        Icons.place,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 16.0,
                      ),
                      buttonOptions: FFButtonOptions(
                        width: double.infinity,
                        height: 52.0,
                        color: Color(0xFFF5F6FB),
                        textStyle: FlutterFlowTheme.of(context).bodyMedium,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 20.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        var bidsRecordReference = BidsRecord.collection.doc();
                        await bidsRecordReference.set(createBidsRecordData(
                          user: currentUserReference,
                          request: widget.request,
                          meetupLocationLatLng:
                              _model.meetupLocationValue.latLng,
                          meetupLocationAddress:
                              _model.meetupLocationValue.address,
                          meetupTime: _model.datePicked,
                          moreDetails: _model.moreDetailsInputController.text,
                          status: 'pending',
                          serviceProviderStatus: 'available',
                          timestamp: getCurrentTimestamp,
                          username:
                              '${valueOrDefault(currentUserDocument?.firstName, '')}${valueOrDefault(currentUserDocument?.lastName, '')}',
                          userProfile: currentUserPhoto,
                        ));
                        _model.bids = BidsRecord.getDocumentFromData(
                            createBidsRecordData(
                              user: currentUserReference,
                              request: widget.request,
                              meetupLocationLatLng:
                                  _model.meetupLocationValue.latLng,
                              meetupLocationAddress:
                                  _model.meetupLocationValue.address,
                              meetupTime: _model.datePicked,
                              moreDetails:
                                  _model.moreDetailsInputController.text,
                              status: 'pending',
                              serviceProviderStatus: 'available',
                              timestamp: getCurrentTimestamp,
                              username:
                                  '${valueOrDefault(currentUserDocument?.firstName, '')}${valueOrDefault(currentUserDocument?.lastName, '')}',
                              userProfile: currentUserPhoto,
                            ),
                            bidsRecordReference);

                        var chatsRecordReference = ChatsRecord.collection.doc();
                        await chatsRecordReference.set({
                          ...createChatsRecordData(
                            request: widget.request,
                          ),
                          ...mapToFirestore(
                            {
                              'users': [currentUserReference],
                            },
                          ),
                        });
                        _model.chat = ChatsRecord.getDocumentFromData({
                          ...createChatsRecordData(
                            request: widget.request,
                          ),
                          ...mapToFirestore(
                            {
                              'users': [currentUserReference],
                            },
                          ),
                        }, chatsRecordReference);

                        await _model.bids!.reference
                            .update(createBidsRecordData(
                          chat: _model.chat?.reference,
                        ));

                        context.pushNamed('successful_bid');

                        setState(() {});
                      },
                      child: Container(
                        width: double.infinity,
                        height: 54.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).secondary,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        alignment: AlignmentDirectional(0.00, 0.00),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  'Create',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Colors.white,
                                      ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 20.0, 0.0),
                              child: Icon(
                                Icons.chevron_right_sharp,
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                size: 24.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ].divide(SizedBox(height: 15.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
