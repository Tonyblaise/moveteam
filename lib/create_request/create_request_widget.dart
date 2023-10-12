import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_place_picker.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/place.dart';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'create_request_model.dart';
export 'create_request_model.dart';

class CreateRequestWidget extends StatefulWidget {
  const CreateRequestWidget({Key? key}) : super(key: key);

  @override
  _CreateRequestWidgetState createState() => _CreateRequestWidgetState();
}

class _CreateRequestWidgetState extends State<CreateRequestWidget> {
  late CreateRequestModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreateRequestModel());

    _model.companyNameController ??= TextEditingController();
    _model.companyEmailController ??= TextEditingController();
    _model.numberOfVehiclesController ??= TextEditingController();
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
            child: Form(
              key: _model.formKey,
              autovalidateMode: AutovalidateMode.always,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(-1.00, 0.00),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 20.0, 0.0, 0.0),
                        child: Text(
                          'Create a request',
                          style: FlutterFlowTheme.of(context).headlineMedium,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: TextFormField(
                        controller: _model.companyNameController,
                        autofocus: true,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Company Name',
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
                        validator: _model.companyNameControllerValidator
                            .asValidator(context),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: TextFormField(
                        controller: _model.companyEmailController,
                        autofocus: true,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Company Email',
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
                        keyboardType: TextInputType.emailAddress,
                        validator: _model.companyEmailControllerValidator
                            .asValidator(context),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: FlutterFlowDropDown<String>(
                        controller:
                            _model.dropDownVehicleTypeValueController ??=
                                FormFieldController<String>(null),
                        options: [
                          'Mid-size car',
                          'SUV-mid',
                          'SUV-large',
                          'Trucks',
                          'Box trucks',
                          'Cargo',
                          'EV'
                        ],
                        onChanged: (val) => setState(
                            () => _model.dropDownVehicleTypeValue = val),
                        width: double.infinity,
                        height: 50.0,
                        textStyle: FlutterFlowTheme.of(context).bodyMedium,
                        hintText: 'Vehicle Type',
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24.0,
                        ),
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        elevation: 2.0,
                        borderColor: Colors.transparent,
                        borderWidth: 0.0,
                        borderRadius: 8.0,
                        margin: EdgeInsetsDirectional.fromSTEB(
                            16.0, 4.0, 16.0, 4.0),
                        hidesUnderline: true,
                        isSearchable: false,
                        isMultiSelect: false,
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
                          final _datePicked1Date = await showDatePicker(
                            context: context,
                            initialDate: getCurrentTimestamp,
                            firstDate: DateTime(1900),
                            lastDate: DateTime(2050),
                          );

                          TimeOfDay? _datePicked1Time;
                          if (_datePicked1Date != null) {
                            _datePicked1Time = await showTimePicker(
                              context: context,
                              initialTime:
                                  TimeOfDay.fromDateTime(getCurrentTimestamp),
                            );
                          }

                          if (_datePicked1Date != null &&
                              _datePicked1Time != null) {
                            safeSetState(() {
                              _model.datePicked1 = DateTime(
                                _datePicked1Date.year,
                                _datePicked1Date.month,
                                _datePicked1Date.day,
                                _datePicked1Time!.hour,
                                _datePicked1Time.minute,
                              );
                            });
                          }
                        },
                        child: Container(
                          width: double.infinity,
                          height: 52.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(-1.00, 0.00),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              child: Text(
                                _model.datePicked1 != null
                                    ? dateTimeFormat(
                                        'M/d h:mm a',
                                        _model.datePicked1,
                                        locale: FFLocalizations.of(context)
                                            .languageCode,
                                      )
                                    : 'Pick up time',
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
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          final _datePicked2Date = await showDatePicker(
                            context: context,
                            initialDate: getCurrentTimestamp,
                            firstDate: DateTime(1900),
                            lastDate: DateTime(2050),
                          );

                          TimeOfDay? _datePicked2Time;
                          if (_datePicked2Date != null) {
                            _datePicked2Time = await showTimePicker(
                              context: context,
                              initialTime:
                                  TimeOfDay.fromDateTime(getCurrentTimestamp),
                            );
                          }

                          if (_datePicked2Date != null &&
                              _datePicked2Time != null) {
                            safeSetState(() {
                              _model.datePicked2 = DateTime(
                                _datePicked2Date.year,
                                _datePicked2Date.month,
                                _datePicked2Date.day,
                                _datePicked2Time!.hour,
                                _datePicked2Time.minute,
                              );
                            });
                          }
                        },
                        child: Container(
                          width: double.infinity,
                          height: 52.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(-1.00, 0.00),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              child: Text(
                                _model.datePicked2 != null
                                    ? dateTimeFormat(
                                        'M/d h:mm a',
                                        _model.datePicked2,
                                        locale: FFLocalizations.of(context)
                                            .languageCode,
                                      )
                                    : 'Drop off time',
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
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: TextFormField(
                        controller: _model.numberOfVehiclesController,
                        autofocus: true,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Number of vehicles',
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
                        validator: _model.numberOfVehiclesControllerValidator
                            .asValidator(context),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-1.00, -1.00),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: TextFormField(
                          controller: _model.moreDetailsInputController,
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'More Details',
                            labelStyle:
                                FlutterFlowTheme.of(context).labelMedium,
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
                          setState(() => _model.pickupLocationValue = place);
                        },
                        defaultText: 'Select Pickup Location',
                        icon: Icon(
                          Icons.place,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 16.0,
                        ),
                        buttonOptions: FFButtonOptions(
                          width: double.infinity,
                          height: 40.0,
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
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: FlutterFlowPlacePicker(
                        iOSGoogleMapsApiKey:
                            'AIzaSyCWXBROEi4Ox5USXEAKqJpnIcifNapBMqY',
                        androidGoogleMapsApiKey:
                            'AIzaSyAB6nFMpapHmgdZzg_6yMJ2u-td0XXnG2s',
                        webGoogleMapsApiKey:
                            'AIzaSyDGB-j90jsxwd9T6VxuOwe8kcIQBQ_Q52o',
                        onSelect: (place) async {
                          setState(() => _model.dropOffLocationValue = place);
                        },
                        defaultText: 'Select Drop Off Location',
                        icon: Icon(
                          Icons.place,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 16.0,
                        ),
                        buttonOptions: FFButtonOptions(
                          width: double.infinity,
                          height: 40.0,
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
                          var requestsRecordReference =
                              RequestsRecord.collection.doc();
                          await requestsRecordReference
                              .set(createRequestsRecordData(
                            companyName: _model.companyNameController.text,
                            companyEmail: _model.companyEmailController.text,
                            details: _model.moreDetailsInputController.text,
                            dropOffLocationGeopoint:
                                _model.dropOffLocationValue.latLng,
                            dropOffLocationAddress:
                                _model.dropOffLocationValue.address,
                            numberOfVehicles: int.tryParse(
                                _model.numberOfVehiclesController.text),
                            pickOffLocationGeopoint:
                                _model.pickupLocationValue.latLng,
                            pickOffLocationAddress:
                                _model.pickupLocationValue.address,
                            dropOffTime: _model.datePicked2,
                            pickUpTime: _model.datePicked2,
                            user: currentUserReference,
                            timestamp: getCurrentTimestamp,
                            status: 'newCase',
                            userName:
                                '${valueOrDefault(currentUserDocument?.firstName, '')}${valueOrDefault(currentUserDocument?.lastName, '')}',
                            vehicleType: _model.dropDownVehicleTypeValue,
                          ));
                          _model.requests = RequestsRecord.getDocumentFromData(
                              createRequestsRecordData(
                                companyName: _model.companyNameController.text,
                                companyEmail:
                                    _model.companyEmailController.text,
                                details: _model.moreDetailsInputController.text,
                                dropOffLocationGeopoint:
                                    _model.dropOffLocationValue.latLng,
                                dropOffLocationAddress:
                                    _model.dropOffLocationValue.address,
                                numberOfVehicles: int.tryParse(
                                    _model.numberOfVehiclesController.text),
                                pickOffLocationGeopoint:
                                    _model.pickupLocationValue.latLng,
                                pickOffLocationAddress:
                                    _model.pickupLocationValue.address,
                                dropOffTime: _model.datePicked2,
                                pickUpTime: _model.datePicked2,
                                user: currentUserReference,
                                timestamp: getCurrentTimestamp,
                                status: 'newCase',
                                userName:
                                    '${valueOrDefault(currentUserDocument?.firstName, '')}${valueOrDefault(currentUserDocument?.lastName, '')}',
                                vehicleType: _model.dropDownVehicleTypeValue,
                              ),
                              requestsRecordReference);
                          if (_model.requests?.reference.id != null &&
                              _model.requests?.reference.id != '') {
                            var chatsRecordReference =
                                ChatsRecord.collection.doc();
                            await chatsRecordReference.set({
                              ...createChatsRecordData(
                                request: _model.requests?.reference,
                              ),
                              ...mapToFirestore(
                                {
                                  'users': [currentUserReference],
                                },
                              ),
                            });
                            _model.chat = ChatsRecord.getDocumentFromData({
                              ...createChatsRecordData(
                                request: _model.requests?.reference,
                              ),
                              ...mapToFirestore(
                                {
                                  'users': [currentUserReference],
                                },
                              ),
                            }, chatsRecordReference);
                            if (_model.chat?.reference != null) {
                              await _model.requests!.reference
                                  .update(createRequestsRecordData(
                                user: currentUserReference,
                                chat: _model.chat?.reference,
                              ));

                              context.pushNamed('successful_request');
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'Soemthing went wrong with chat',
                                    style: TextStyle(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontSize: 14.0,
                                    ),
                                  ),
                                  duration: Duration(milliseconds: 4000),
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).secondary,
                                ),
                              );
                            }
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Problem creating request',
                                  style: TextStyle(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 14.0,
                                  ),
                                ),
                                duration: Duration(milliseconds: 4000),
                                backgroundColor:
                                    FlutterFlowTheme.of(context).secondary,
                              ),
                            );
                          }

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
      ),
    );
  }
}
