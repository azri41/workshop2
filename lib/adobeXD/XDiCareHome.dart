import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:adobe_xd/blend_mask.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:adobe_xd/adobe_xd.dart';

class XDiCareHome extends StatelessWidget {
  XDiCareHome({
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
            offset: Offset(43.0, 199.0),
            child: SizedBox(
              width: 124.0,
              height: 125.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 124.0, 125.0),
                    size: Size(124.0, 125.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 124.0, 125.0),
                          size: Size(124.0, 125.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child:
                              // Adobe XD layer: 'Icon' (group)
                              Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(6.0, 7.0, 118.0, 118.0),
                                size: Size(124.0, 125.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(22.0),
                                    color: const Color(0xff000000),
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 118.0, 118.0),
                                size: Size(124.0, 125.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(22.0),
                                    color: const Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(30.1, 22.1, 63.7, 63.7),
                          size: Size(124.0, 125.0),
                          fixedWidth: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'local_pharmacy-24px' (group)
                              Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 63.7, 63.7),
                                size: Size(63.7, 63.7),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: SvgPicture.string(
                                  _svg_8qhhej,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(8.0, 2.7, 47.8, 53.1),
                                size: Size(63.7, 63.7),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: SvgPicture.string(
                                  _svg_d7gzgf,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(27.0, 84.0, 71.0, 15.0),
                    size: Size(124.0, 125.0),
                    pinLeft: true,
                    pinRight: true,
                    fixedHeight: true,
                    child: SingleChildScrollView(
                        child: Text(
                      'Drugs',
                      style: TextStyle(
                        fontFamily: 'Candara',
                        fontSize: 20,
                        color: const Color(0xff0066ff),
                      ),
                      textAlign: TextAlign.center,
                    )),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(193.0, 199.0),
            child: SizedBox(
              width: 124.0,
              height: 125.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 124.0, 125.0),
                    size: Size(124.0, 125.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child:
                        // Adobe XD layer: 'Icon' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(6.0, 7.0, 118.0, 118.0),
                          size: Size(124.0, 125.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(22.0),
                              color: const Color(0xff000000),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 118.0, 118.0),
                          size: Size(124.0, 125.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(22.0),
                              color: const Color(0xffffffff),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(33.4, 26.4, 57.6, 57.6),
                    size: Size(124.0, 125.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'shopping_cart-24px' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 57.6, 57.6),
                          size: Size(57.6, 57.6),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: SvgPicture.string(
                            _svg_1blumf,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.8, 1.7, 54.2, 54.2),
                          size: Size(57.6, 57.6),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: SvgPicture.string(
                            _svg_swl9ad,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(27.0, 84.0, 71.0, 15.0),
                    size: Size(124.0, 125.0),
                    pinLeft: true,
                    pinRight: true,
                    fixedHeight: true,
                    child: SingleChildScrollView(
                        child: Text(
                      'Orders',
                      style: TextStyle(
                        fontFamily: 'Candara',
                        fontSize: 20,
                        color: const Color(0xff0066ff),
                      ),
                      textAlign: TextAlign.center,
                    )),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(43.0, 394.0),
            child: SizedBox(
              width: 124.0,
              height: 144.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 124.0, 133.0),
                    size: Size(124.0, 144.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child:
                        // Adobe XD layer: 'Icon' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(6.0, 7.0, 118.0, 126.0),
                          size: Size(124.0, 133.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(22.0),
                              color: const Color(0xff000000),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 118.0, 126.0),
                          size: Size(124.0, 133.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(22.0),
                              color: const Color(0xffffffff),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(29.8, 21.8, 64.4, 64.4),
                    size: Size(124.0, 144.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'assignment-24px' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 64.4, 64.4),
                          size: Size(64.4, 64.4),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: SvgPicture.string(
                            _svg_8clnkn,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(8.0, 2.7, 48.3, 53.7),
                          size: Size(64.4, 64.4),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: SvgPicture.string(
                            _svg_inf47,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(16.0, 79.0, 93.0, 65.0),
                    size: Size(124.0, 144.0),
                    pinLeft: true,
                    pinRight: true,
                    pinBottom: true,
                    fixedHeight: true,
                    child: Text(
                      'Diagnosed Result',
                      style: TextStyle(
                        fontFamily: 'Candara',
                        fontSize: 20,
                        color: const Color(0xff0066ff),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(193.0, 394.0),
            child: SizedBox(
              width: 124.0,
              height: 125.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 124.0, 125.0),
                    size: Size(124.0, 125.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child:
                        // Adobe XD layer: 'Icon' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(6.0, 7.0, 118.0, 118.0),
                          size: Size(124.0, 125.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(22.0),
                              color: const Color(0xff000000),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 118.0, 118.0),
                          size: Size(124.0, 125.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(22.0),
                              color: const Color(0xffffffff),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(26.0, 15.0, 72.0, 72.0),
                    size: Size(124.0, 125.0),
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'support_agent-24px' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 72.0, 72.0),
                          size: Size(72.0, 72.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 72.0, 72.0),
                                size: Size(72.0, 72.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: Container(
                                  decoration: BoxDecoration(),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(5.7, 8.8, 60.5, 54.5),
                          size: Size(72.0, 72.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 60.5, 54.5),
                                size: Size(60.5, 54.5),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 0.0, 60.5, 54.5),
                                      size: Size(60.5, 54.5),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: SvgPicture.string(
                                        _svg_91qrm7,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(18.3, 27.2, 6.0, 6.0),
                                      size: Size(60.5, 54.5),
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.elliptical(
                                                  9999.0, 9999.0)),
                                          color: const Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(36.3, 27.2, 6.0, 6.0),
                                      size: Size(60.5, 54.5),
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.elliptical(
                                                  9999.0, 9999.0)),
                                          color: const Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(12.1, 9.1, 36.3, 19.5),
                                      size: Size(60.5, 54.5),
                                      pinLeft: true,
                                      pinRight: true,
                                      fixedHeight: true,
                                      child: SvgPicture.string(
                                        _svg_vxwvrh,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
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
                    bounds: Rect.fromLTWH(27.0, 85.0, 71.0, 15.0),
                    size: Size(124.0, 125.0),
                    pinLeft: true,
                    pinRight: true,
                    fixedHeight: true,
                    child: SingleChildScrollView(
                        child: Text(
                      'Support',
                      style: TextStyle(
                        fontFamily: 'Candara',
                        fontSize: 20,
                        color: const Color(0xff0066ff),
                      ),
                      textAlign: TextAlign.center,
                    )),
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
        ],
      ),
    );
  }
}

const String _svg_b7usgn =
    '<svg viewBox="0.0 0.0 37.0 37.0" ><path  d="M 0 0 L 37 0 L 37 37 L 0 37 L 0 0 Z" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_3dhw91 =
    '<svg viewBox="3.1 4.6 30.8 28.3" ><path transform="translate(1.08, 1.63)" d="M 24.35416603088379 3 C 21.67166519165039 3 19.09708213806152 4.248749732971191 17.41666603088379 6.222083568572998 C 15.73624897003174 4.248749732971191 13.16166591644287 3 10.47916698455811 3 C 5.730833053588867 3 1.99999988079071 6.730833053588867 1.99999988079071 11.47916603088379 C 1.99999988079071 17.30666542053223 7.241666316986084 22.05500030517578 15.18125057220459 29.27000045776367 L 17.41666603088379 31.28958129882813 L 19.6520824432373 29.25458335876465 C 27.59166526794434 22.05499839782715 32.83333206176758 17.30666542053223 32.83333206176758 11.47916603088379 C 32.83333206176758 6.730833053588867 29.10249900817871 3 24.35416603088379 3 Z M 17.57083320617676 26.97291564941406 L 17.41666603088379 27.12708282470703 L 17.26249885559082 26.97291564941406 C 9.924166679382324 20.32833290100098 5.083333015441895 15.93458366394043 5.083333015441895 11.47916603088379 C 5.083333015441895 8.395833015441895 7.395832538604736 6.083333015441895 10.47916698455811 6.083333015441895 C 12.85333347320557 6.083333015441895 15.16583347320557 7.609582901000977 15.98291683197021 9.721665382385254 L 18.86583137512207 9.721665382385254 C 19.66749954223633 7.609582901000977 21.97999954223633 6.083333015441895 24.35416603088379 6.083333015441895 C 27.43749809265137 6.083333015441895 29.74999809265137 8.395833015441895 29.74999809265137 11.47916603088379 C 29.74999809265137 15.93458366394043 24.90916633605957 20.32833290100098 17.57083320617676 26.97291564941406 Z" fill="#ff0000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_8qhhej =
    '<svg viewBox="0.0 0.0 63.7 63.7" ><path  d="M 0 0 L 63.71981430053711 0 L 63.71981430053711 63.71981430053711 L 0 63.71981430053711 L 0 0 Z" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_d7gzgf =
    '<svg viewBox="8.0 2.7 47.8 53.1" ><path transform="translate(4.96, 1.65)" d="M 50.78985977172852 11.61996936798096 L 43.78068161010742 11.61996936798096 L 46.807373046875 3.2832932472229 L 40.56813812255859 1.00000011920929 L 36.69184875488281 11.61996936798096 L 3 11.61996936798096 L 3 16.92995643615723 L 8.309985160827637 32.85990524291992 L 3 48.78985977172852 L 3 54.0998420715332 L 50.78985977172852 54.0998420715332 L 50.78985977172852 48.78985977172852 L 45.47987747192383 32.85990524291992 L 50.78985977172852 16.92995643615723 L 50.78985977172852 11.61996936798096 Z M 37.51490020751953 35.51490020751953 L 29.54992485046387 35.51490020751953 L 29.54992485046387 43.47987747192383 L 24.23993873596191 43.47987747192383 L 24.23993873596191 35.51490020751953 L 16.27496147155762 35.51490020751953 L 16.27496147155762 30.20491409301758 L 24.23993873596191 30.20491409301758 L 24.23993873596191 22.23993873596191 L 29.54992485046387 22.23993873596191 L 29.54992485046387 30.20491409301758 L 37.51490020751953 30.20491409301758 L 37.51490020751953 35.51490020751953 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_1blumf =
    '<svg viewBox="0.0 0.0 57.6 57.6" ><path  d="M 0 0 L 57.57553100585938 0 L 57.57553100585938 57.57553100585938 L 0 57.57553100585938 L 0 0 Z" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_swl9ad =
    '<svg viewBox="0.8 1.7 54.2 54.2" ><path transform="translate(-0.16, -0.32)" d="M 17.26256561279297 45.36683654785156 C 14.28109550476074 45.36683654785156 11.86881351470947 47.80622100830078 11.86881351470947 50.78769302368164 C 11.86881351470947 53.76916122436523 14.28109550476074 56.20854568481445 17.26256561279297 56.20854568481445 C 20.24403381347656 56.20854568481445 22.68341827392578 53.76916122436523 22.68341827392578 50.78769302368164 C 22.68341827392578 47.80622100830078 20.24403381347656 45.36683654785156 17.26256561279297 45.36683654785156 Z M 1 2 L 1 7.420855045318604 L 6.420854091644287 7.420855045318604 L 16.17839431762695 27.99300003051758 L 12.51931667327881 34.633544921875 C 12.08564853668213 35.3924674987793 11.84170913696289 36.28690719604492 11.84170913696289 37.23555374145508 C 11.84170913696289 40.2170295715332 14.28109550476074 42.65641021728516 17.26256561279297 42.65641021728516 L 49.78768920898438 42.65641021728516 L 49.78768920898438 37.23555374145508 L 18.40094375610352 37.23555374145508 C 18.021484375 37.23555374145508 17.72333717346191 36.93740844726563 17.72333717346191 36.55794906616211 L 17.80465126037598 36.23269653320313 L 20.24403381347656 31.81470108032227 L 40.43671798706055 31.81470108032227 C 42.46953201293945 31.81470108032227 44.25841903686523 30.70342826843262 45.17996215820313 29.0229606628418 L 54.8832893371582 11.43228721618652 C 55.10012435913086 11.05282688140869 55.20854568481445 10.59205532073975 55.20854568481445 10.13128280639648 C 55.20854568481445 8.640547752380371 53.98884963989258 7.420856475830078 52.49811935424805 7.420856475830078 L 12.41089820861816 7.420856475830078 L 9.863097190856934 2.000001192092896 L 1 2.000001192092896 Z M 44.36683654785156 45.36683654785156 C 41.3853645324707 45.36683654785156 38.97308731079102 47.80622100830078 38.97308731079102 50.78769302368164 C 38.97308731079102 53.76916122436523 41.3853645324707 56.20854568481445 44.36683654785156 56.20854568481445 C 47.34830093383789 56.20854568481445 49.78768920898438 53.76916122436523 49.78768920898438 50.78769302368164 C 49.78768920898438 47.80622100830078 47.34830474853516 45.36683654785156 44.36683654785156 45.36683654785156 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_8clnkn =
    '<svg viewBox="0.0 0.0 64.4 64.4" ><path  d="M 0 0 L 64.3970947265625 0 L 64.3970947265625 64.3970947265625 L 0 64.3970947265625 L 0 0 Z" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_inf47 =
    '<svg viewBox="8.0 2.7 48.3 53.7" ><path transform="translate(5.05, 1.68)" d="M 45.931396484375 6.366425037384033 L 34.71556854248047 6.366425037384033 C 33.58861923217773 3.25389838218689 30.63708877563477 1 27.14891052246094 1 C 23.66073608398438 1 20.70920181274414 3.253897905349731 19.58225250244141 6.366425037384033 L 8.366425514221191 6.366425037384033 C 5.414891242980957 6.366425037384033 3 8.781315803527832 3 11.73284912109375 L 3 49.29781723022461 C 3 52.24935531616211 5.414891242980957 54.66424560546875 8.366425514221191 54.66424560546875 L 45.931396484375 54.66424560546875 C 48.88293075561523 54.66424560546875 51.29782104492188 52.24935531616211 51.29782104492188 49.29781723022461 L 51.29782104492188 11.73284912109375 C 51.29782104492188 8.781315803527832 48.88293075561523 6.366425037384033 45.931396484375 6.366425037384033 Z M 27.14891052246094 6.366425037384033 C 28.62467765808105 6.366425037384033 29.83212471008301 7.573869705200195 29.83212471008301 9.049636840820313 C 29.83212471008301 10.52540302276611 28.62467765808105 11.73284912109375 27.14891052246094 11.73284912109375 C 25.67314338684082 11.73284912109375 24.4656982421875 10.52540302276611 24.4656982421875 9.049636840820313 C 24.4656982421875 7.573869705200195 25.67314338684082 6.366425037384033 27.14891052246094 6.366425037384033 Z M 32.51533508300781 43.931396484375 L 13.73284912109375 43.931396484375 L 13.73284912109375 38.56497192382813 L 32.51533508300781 38.56497192382813 L 32.51533508300781 43.931396484375 Z M 40.56497192382813 33.19854354858398 L 13.73284912109375 33.19854354858398 L 13.73284912109375 27.83212280273438 L 40.56497192382813 27.83212280273438 L 40.56497192382813 33.19854354858398 Z M 40.56497192382813 22.4656982421875 L 13.73284912109375 22.4656982421875 L 13.73284912109375 17.09927368164063 L 40.56497192382813 17.09927368164063 L 40.56497192382813 22.4656982421875 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_91qrm7 =
    '<svg viewBox="0.0 0.0 60.5 54.5" ><path transform="translate(-2.0, -3.0)" d="M 59.51687622070313 30.91082000732422 C 59.51687622070313 14.29146957397461 46.6209831237793 3 32.27203750610352 3 C 18.07445335388184 3 5.027204036712646 14.04929351806641 5.027204036712646 31.09244918823242 C 3.21088171005249 32.12170028686523 2 34.05911254882813 2 36.29924011230469 L 2 42.3536491394043 C 2 45.68357467651367 4.724483966827393 48.40805816650391 8.054407119750977 48.40805816650391 L 11.08161163330078 48.40805816650391 L 11.08161163330078 29.94211196899414 C 11.08161163330078 18.22683334350586 20.55676078796387 8.751686096191406 32.27203750610352 8.751686096191406 C 43.9873161315918 8.751686096191406 53.46246337890625 18.22683334350586 53.46246337890625 29.94211196899414 L 53.46246337890625 51.43526077270508 L 29.24483299255371 51.43526077270508 L 29.24483299255371 57.48966979980469 L 53.46246337890625 57.48966979980469 C 56.79238891601563 57.48966979980469 59.51687622070313 54.76518630981445 59.51687622070313 51.43526077270508 L 59.51687622070313 47.74207305908203 C 61.30292510986328 46.80364227294922 62.54407501220703 44.95704650878906 62.54407501220703 42.77746200561523 L 62.54407501220703 35.81489181518555 C 62.54407501220703 33.69584655761719 61.30292510986328 31.84925270080566 59.51687622070313 30.91082000732422 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_vxwvrh =
    '<svg viewBox="12.1 9.1 36.3 19.5" ><path transform="translate(6.12, 3.08)" d="M 42.31549453735352 21.22683525085449 C 40.8624382019043 12.59930419921875 33.3549690246582 6 24.30363464355469 6 C 15.13120555877686 6 5.262521266937256 13.59828186035156 6.0495924949646 25.52546501159668 C 13.52678680419922 22.46798706054688 19.15738677978516 15.80813980102539 20.76180458068848 7.695234298706055 C 24.72743988037109 15.65677833557129 32.8706169128418 21.13601684570313 42.31549453735352 21.22683525085449 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_t3pjvt =
    '<svg viewBox="0.0 0.0 46.0 46.0" ><path  d="M 0 0 L 46 0 L 46 46 L 0 46 L 0 0 Z" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_b1192d =
    '<svg viewBox="3.8 5.8 38.3 32.6" ><path transform="translate(1.83, 2.75)" d="M 17.33333206176758 35.58333206176758 L 17.33333206176758 24.08333206176758 L 24.99999809265137 24.08333206176758 L 24.99999809265137 35.58333206176758 L 34.58333206176758 35.58333206176758 L 34.58333206176758 20.25 L 40.33333206176758 20.25 L 21.16666603088379 3 L 1.99999988079071 20.25 L 7.749999523162842 20.25 L 7.749999523162842 35.58333206176758 L 17.33333206176758 35.58333206176758 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
