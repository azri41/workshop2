import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:adobe_xd/blend_mask.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDiCareDrugsCategory extends StatelessWidget {
  XDiCareDrugsCategory({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          // Adobe XD layer: 'Bg' (shape)
          Container(
            width: 360.0,
            height: 640.0,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(0.0, -1.0),
                end: Alignment(0.0, 1.0),
                colors: [const Color(0xff00ffd4), const Color(0xff0099ff)],
                stops: [0.0, 1.0],
              ),
              border: Border.all(width: 1.0, color: const Color(0xff707070)),
            ),
          ),
          Transform.translate(
            offset: Offset(296.0, 578.0),
            child:
                // Adobe XD layer: 'Alan' (group)
                SizedBox(
              width: 53.0,
              height: 53.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(2.0, 2.0, 51.0, 51.0),
                    size: Size(53.0, 53.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                        color: const Color(0xff000000),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 51.0, 51.0),
                    size: Size(53.0, 53.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                        color: const Color(0xfff9f9f9),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(5.0, 10.0, 40.0, 26.0),
                    size: Size(53.0, 53.0),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'Alan' (shape)
                        Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: const AssetImage(''),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(80.0, 58.0),
            child:
                // Adobe XD layer: 'Text' (group)
                SizedBox(
              width: 305.0,
              height: 56.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 305.0, 56.0),
                    size: Size(305.0, 56.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: SingleChildScrollView(
                        child: Text(
                      'iCare',
                      style: TextStyle(
                        fontFamily: 'Comfortaa',
                        fontSize: 60,
                        color: const Color(0xff0066ff),
                        shadows: [
                          Shadow(
                            color: const Color(0x29000000),
                            offset: Offset(0, 3),
                            blurRadius: 6,
                          )
                        ],
                      ),
                      textAlign: TextAlign.left,
                    )),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(170.0, 18.0, 37.0, 37.0),
                    size: Size(305.0, 56.0),
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'favorite_border-bla…' (group)
                        BlendMask(
                      blendMode: BlendMode.srcOver,
                      child: Stack(
                        children: <Widget>[
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(0.0, 0.0, 37.0, 37.0),
                            size: Size(37.0, 37.0),
                            pinLeft: true,
                            pinRight: true,
                            pinTop: true,
                            pinBottom: true,
                            child: SvgPicture.string(
                              _svg_b7usgn,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(3.1, 4.6, 30.8, 28.3),
                            size: Size(37.0, 37.0),
                            pinLeft: true,
                            pinRight: true,
                            pinTop: true,
                            pinBottom: true,
                            child: SvgPicture.string(
                              _svg_3dhw91,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(26.0, 146.0),
            child:
                // Adobe XD layer: 'arrow_back-24px' (group)
                SizedBox(
              width: 24.0,
              height: 24.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 24.0, 24.0),
                    size: Size(24.0, 24.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: SvgPicture.string(
                      _svg_eterkn,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(4.0, 4.0, 16.0, 16.0),
                    size: Size(24.0, 24.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: SvgPicture.string(
                      _svg_c6v01l,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(157.0, 585.0),
            child:
                // Adobe XD layer: 'home-24px' (group)
                SizedBox(
              width: 46.0,
              height: 46.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 46.0, 46.0),
                    size: Size(46.0, 46.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: SvgPicture.string(
                      _svg_t3pjvt,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(3.8, 5.8, 38.3, 32.6),
                    size: Size(46.0, 46.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_b1192d,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(26.0, 212.0),
            child: SizedBox(
              width: 90.0,
              height: 91.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 90.0, 91.0),
                    size: Size(90.0, 91.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 90.0, 91.0),
                          size: Size(90.0, 91.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 90.0, 91.0),
                                size: Size(90.0, 91.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child:
                                    // Adobe XD layer: 'Icon' (group)
                                    Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(4.0, 5.0, 86.0, 86.0),
                                      size: Size(90.0, 91.0),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(22.0),
                                          color: const Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 0.0, 86.0, 86.0),
                                      size: Size(90.0, 91.0),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(22.0),
                                          color: const Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(10.0, 27.0, 70.0, 37.0),
                    size: Size(90.0, 91.0),
                    pinLeft: true,
                    pinRight: true,
                    fixedHeight: true,
                    child: Text(
                      'Fever',
                      style: TextStyle(
                        fontFamily: 'Candara',
                        fontSize: 30,
                        color: const Color(0xff7e057a),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(26.0, 345.0),
            child: SizedBox(
              width: 90.0,
              height: 91.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 90.0, 91.0),
                    size: Size(90.0, 91.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 90.0, 91.0),
                          size: Size(90.0, 91.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 90.0, 91.0),
                                size: Size(90.0, 91.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child:
                                    // Adobe XD layer: 'Icon' (group)
                                    Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(4.0, 5.0, 86.0, 86.0),
                                      size: Size(90.0, 91.0),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(22.0),
                                          color: const Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 0.0, 86.0, 86.0),
                                      size: Size(90.0, 91.0),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(22.0),
                                          color: const Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(3.0, 37.0, 84.0, 24.0),
                    size: Size(90.0, 91.0),
                    pinLeft: true,
                    pinRight: true,
                    fixedHeight: true,
                    child: Text(
                      'Headache',
                      style: TextStyle(
                        fontFamily: 'Candara',
                        fontSize: 20,
                        color: const Color(0xff7e057a),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(135.0, 212.0),
            child: SizedBox(
              width: 90.0,
              height: 91.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 90.0, 91.0),
                    size: Size(90.0, 91.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 90.0, 91.0),
                          size: Size(90.0, 91.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 90.0, 91.0),
                                size: Size(90.0, 91.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child:
                                    // Adobe XD layer: 'Icon' (group)
                                    Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(4.0, 5.0, 86.0, 86.0),
                                      size: Size(90.0, 91.0),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(22.0),
                                          color: const Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 0.0, 86.0, 86.0),
                                      size: Size(90.0, 91.0),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(22.0),
                                          color: const Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(4.0, 27.0, 82.0, 37.0),
                    size: Size(90.0, 91.0),
                    pinLeft: true,
                    pinRight: true,
                    fixedHeight: true,
                    child: Text(
                      'Cough',
                      style: TextStyle(
                        fontFamily: 'Candara',
                        fontSize: 30,
                        color: const Color(0xff7e057a),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(135.0, 345.0),
            child: SizedBox(
              width: 90.0,
              height: 91.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 90.0, 91.0),
                    size: Size(90.0, 91.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 90.0, 91.0),
                          size: Size(90.0, 91.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 90.0, 91.0),
                                size: Size(90.0, 91.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child:
                                    // Adobe XD layer: 'Icon' (group)
                                    Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(4.0, 5.0, 86.0, 86.0),
                                      size: Size(90.0, 91.0),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(22.0),
                                          color: const Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 0.0, 86.0, 86.0),
                                      size: Size(90.0, 91.0),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(22.0),
                                          color: const Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(4.0, 34.0, 82.0, 28.0),
                    size: Size(90.0, 91.0),
                    pinLeft: true,
                    pinRight: true,
                    fixedHeight: true,
                    child: Text(
                      'Diarrhea',
                      style: TextStyle(
                        fontFamily: 'Candara',
                        fontSize: 23,
                        color: const Color(0xff7e057a),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(244.0, 212.0),
            child: SizedBox(
              width: 90.0,
              height: 91.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 90.0, 91.0),
                    size: Size(90.0, 91.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 90.0, 91.0),
                          size: Size(90.0, 91.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 90.0, 91.0),
                                size: Size(90.0, 91.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child:
                                    // Adobe XD layer: 'Icon' (group)
                                    Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(4.0, 5.0, 86.0, 86.0),
                                      size: Size(90.0, 91.0),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(22.0),
                                          color: const Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 0.0, 86.0, 86.0),
                                      size: Size(90.0, 91.0),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(22.0),
                                          color: const Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(26.0, 27.0, 38.0, 37.0),
                    size: Size(90.0, 91.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Flu',
                      style: TextStyle(
                        fontFamily: 'Candara',
                        fontSize: 30,
                        color: const Color(0xff7e057a),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(244.0, 345.0),
            child: SizedBox(
              width: 90.0,
              height: 91.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 90.0, 91.0),
                    size: Size(90.0, 91.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 90.0, 91.0),
                          size: Size(90.0, 91.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 90.0, 91.0),
                                size: Size(90.0, 91.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child:
                                    // Adobe XD layer: 'Icon' (group)
                                    Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(4.0, 5.0, 86.0, 86.0),
                                      size: Size(90.0, 91.0),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(22.0),
                                          color: const Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 0.0, 86.0, 86.0),
                                      size: Size(90.0, 91.0),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(22.0),
                                          color: const Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(4.0, 37.0, 82.0, 24.0),
                    size: Size(90.0, 91.0),
                    pinLeft: true,
                    pinRight: true,
                    fixedHeight: true,
                    child: Text(
                      'Antibiotic',
                      style: TextStyle(
                        fontFamily: 'Candara',
                        fontSize: 20,
                        color: const Color(0xff7e057a),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(118.0, 146.0),
            child: SizedBox(
              width: 124.0,
              height: 30.0,
              child: SingleChildScrollView(
                  child: Text(
                'DRUGS',
                style: TextStyle(
                  fontFamily: 'Comfortaa',
                  fontSize: 30,
                  color: const Color(0xff000000),
                ),
                textAlign: TextAlign.center,
              )),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_b7usgn =
    '<svg viewBox="0.0 0.0 37.0 37.0" ><path  d="M 0 0 L 37 0 L 37 37 L 0 37 L 0 0 Z" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_3dhw91 =
    '<svg viewBox="3.1 4.6 30.8 28.3" ><path transform="translate(1.08, 1.63)" d="M 24.35416603088379 3 C 21.67166519165039 3 19.09708213806152 4.248749732971191 17.41666603088379 6.222083568572998 C 15.73624897003174 4.248749732971191 13.16166591644287 3 10.47916698455811 3 C 5.730833053588867 3 1.99999988079071 6.730833053588867 1.99999988079071 11.47916603088379 C 1.99999988079071 17.30666542053223 7.241666316986084 22.05500030517578 15.18125057220459 29.27000045776367 L 17.41666603088379 31.28958129882813 L 19.6520824432373 29.25458335876465 C 27.59166526794434 22.05499839782715 32.83333206176758 17.30666542053223 32.83333206176758 11.47916603088379 C 32.83333206176758 6.730833053588867 29.10249900817871 3 24.35416603088379 3 Z M 17.57083320617676 26.97291564941406 L 17.41666603088379 27.12708282470703 L 17.26249885559082 26.97291564941406 C 9.924166679382324 20.32833290100098 5.083333015441895 15.93458366394043 5.083333015441895 11.47916603088379 C 5.083333015441895 8.395833015441895 7.395832538604736 6.083333015441895 10.47916698455811 6.083333015441895 C 12.85333347320557 6.083333015441895 15.16583347320557 7.609582901000977 15.98291683197021 9.721665382385254 L 18.86583137512207 9.721665382385254 C 19.66749954223633 7.609582901000977 21.97999954223633 6.083333015441895 24.35416603088379 6.083333015441895 C 27.43749809265137 6.083333015441895 29.74999809265137 8.395833015441895 29.74999809265137 11.47916603088379 C 29.74999809265137 15.93458366394043 24.90916633605957 20.32833290100098 17.57083320617676 26.97291564941406 Z" fill="#ff0000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_eterkn =
    '<svg viewBox="0.0 0.0 24.0 24.0" ><path  d="M 0 0 L 24 0 L 24 24 L 0 24 L 0 0 Z" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_c6v01l =
    '<svg viewBox="4.0 4.0 16.0 16.0" ><path  d="M 20 11 L 7.829999923706055 11 L 13.42000007629395 5.409999847412109 L 12 4 L 4 12 L 12 20 L 13.40999984741211 18.59000015258789 L 7.829999923706055 13 L 20 13 L 20 11 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_t3pjvt =
    '<svg viewBox="0.0 0.0 46.0 46.0" ><path  d="M 0 0 L 46 0 L 46 46 L 0 46 L 0 0 Z" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_b1192d =
    '<svg viewBox="3.8 5.8 38.3 32.6" ><path transform="translate(1.83, 2.75)" d="M 17.33333206176758 35.58333206176758 L 17.33333206176758 24.08333206176758 L 24.99999809265137 24.08333206176758 L 24.99999809265137 35.58333206176758 L 34.58333206176758 35.58333206176758 L 34.58333206176758 20.25 L 40.33333206176758 20.25 L 21.16666603088379 3 L 1.99999988079071 20.25 L 7.749999523162842 20.25 L 7.749999523162842 35.58333206176758 L 17.33333206176758 35.58333206176758 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
