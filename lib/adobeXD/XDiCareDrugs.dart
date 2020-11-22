import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:adobe_xd/blend_mask.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDiCareDrugs extends StatelessWidget {
  XDiCareDrugs({
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
            offset: Offset(118.0, 209.0),
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
                      'Children',
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
            offset: Offset(118.0, 402.0),
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
                    bounds: Rect.fromLTWH(27.0, 84.0, 71.0, 15.0),
                    size: Size(124.0, 125.0),
                    pinLeft: true,
                    pinRight: true,
                    fixedHeight: true,
                    child: SingleChildScrollView(
                        child: Text(
                      'Adults',
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
            offset: Offset(145.4, 225.4),
            child:
                // Adobe XD layer: 'child_care-24px' (group)
                SizedBox(
              width: 69.0,
              height: 69.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 69.2, 69.2),
                    size: Size(69.2, 69.2),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: SvgPicture.string(
                      _svg_j47wbj,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(38.2, 26.7, 7.2, 7.2),
                    size: Size(69.2, 69.2),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                        color: const Color(0xff000000),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(23.8, 26.7, 7.2, 7.2),
                    size: Size(69.2, 69.2),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                        color: const Color(0xff000000),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(2.9, 8.7, 63.5, 51.9),
                    size: Size(69.2, 69.2),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: SvgPicture.string(
                      _svg_ly6sgb,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(145.4, 413.4),
            child:
                // Adobe XD layer: 'face-24px' (group)
                SizedBox(
              width: 69.0,
              height: 69.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 69.2, 69.2),
                    size: Size(69.2, 69.2),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: SvgPicture.string(
                      _svg_j47wbj,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(5.8, 5.8, 57.7, 57.7),
                    size: Size(69.2, 69.2),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: SvgPicture.string(
                      _svg_7t43y5,
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
const String _svg_j47wbj =
    '<svg viewBox="0.0 0.0 69.2 69.2" ><path  d="M 0 0 L 69.23089599609375 0 L 69.23089599609375 69.23089599609375 L 0 69.23089599609375 L 0 0 Z" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ly6sgb =
    '<svg viewBox="2.9 8.7 63.5 51.9" ><path transform="translate(1.88, 5.65)" d="M 64.28858184814453 30.86543655395508 C 64.40396881103516 30.25966644287109 64.46165466308594 29.62504577636719 64.46165466308594 28.96158599853516 C 64.46165466308594 28.29812622070313 64.40396118164063 27.66350555419922 64.28858184814453 27.05773544311523 C 63.56742095947266 22.70195960998535 60.36549377441406 19.15387725830078 56.18279647827148 17.91348838806152 C 54.65394592285156 14.68271446228027 52.490478515625 11.85578536987305 49.86547470092773 9.519243240356445 C 45.30777359008789 5.451927185058594 39.30776214599609 3 32.73082733154297 3 C 26.15389251708984 3 20.15388107299805 5.451927185058594 15.5961799621582 9.519243240356445 C 12.94232940673828 11.85578536987305 10.77886390686035 14.71156120300293 9.278861045837402 17.91348838806152 C 5.096160888671875 19.15387725830078 1.894232392311096 22.6731128692627 1.17307722568512 27.05773544311523 C 1.057692408561707 27.66350555419922 0.9999998807907104 28.29812622070313 0.9999998807907104 28.96158599853516 C 0.9999998807907104 29.62504577636719 1.057692408561707 30.25966644287109 1.17307722568512 30.86543655395508 C 1.894232392311096 35.22121429443359 5.096161365509033 38.76929473876953 9.278861045837402 40.00968170166016 C 10.77886390686035 43.21161270141602 12.94232940673828 46.03853988647461 15.53848838806152 48.34623336791992 C 20.09618759155273 52.44239807128906 26.12504577636719 54.92317199707031 32.73082733154297 54.92317199707031 C 39.33660888671875 54.92317199707031 45.3654670715332 52.44239807128906 49.95201110839844 48.34623336791992 C 52.54816818237305 46.03853988647461 54.71163558959961 43.18276596069336 56.21163940429688 40.00968170166016 C 60.36549377441406 38.76929092407227 63.56742095947266 35.25005722045898 64.28857421875 30.86543273925781 Z M 52.92317199707031 34.73082733154297 C 52.63470840454102 34.73082733154297 52.37509155273438 34.67313385009766 52.08662796020508 34.64429092407227 C 51.50970458984375 36.57698440551758 50.67316436767578 38.36545181274414 49.60585403442383 40.00968170166016 C 46.00008392333984 45.51930618286133 39.79814910888672 49.1539306640625 32.73082733154297 49.1539306640625 C 25.66350746154785 49.1539306640625 19.46157264709473 45.51930618286133 15.85579681396484 40.00968170166016 C 14.78848648071289 38.36545181274414 13.95194721221924 36.57698440551758 13.37502288818359 34.64429092407227 C 13.08656120300293 34.67313766479492 12.82694435119629 34.73082733154297 12.53848266601563 34.73082733154297 C 9.365400314331055 34.73082733154297 6.769241333007813 32.13467025756836 6.769241333007813 28.96158599853516 C 6.769241333007813 25.78850173950195 9.365400314331055 23.19234466552734 12.53848266601563 23.19234466552734 C 12.82694435119629 23.19234466552734 13.08656120300293 23.25003814697266 13.37502288818359 23.27888298034668 C 13.95194625854492 21.3461856842041 14.78848648071289 19.5577220916748 15.85579681396484 17.91348838806152 C 19.46157264709473 12.40386390686035 25.66350746154785 8.769241333007813 32.73082733154297 8.769241333007813 C 39.79814910888672 8.769241333007813 46.00008392333984 12.40386390686035 49.60585784912109 17.91348838806152 C 50.67317199707031 19.5577220916748 51.50970840454102 21.34618949890137 52.08663558959961 23.27888298034668 C 52.37509918212891 23.25003623962402 52.63471603393555 23.19234466552734 52.92317581176758 23.19234466552734 C 56.09626007080078 23.19234466552734 58.69241714477539 25.78850173950195 58.69241714477539 28.96158599853516 C 58.69241714477539 32.13467025756836 56.09626007080078 34.73082733154297 52.92317581176758 34.73082733154297 Z M 19.75003433227539 34.73082733154297 C 21.94234657287598 39.83660888671875 26.9327392578125 43.38468933105469 32.73082733154297 43.38468933105469 C 38.52891540527344 43.38468933105469 43.51930618286133 39.83660888671875 45.71162033081055 34.73082733154297 L 19.75003433227539 34.73082733154297 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_7t43y5 =
    '<svg viewBox="5.8 5.8 57.7 57.7" ><path transform="translate(3.77, 3.77)" d="M 22.19234466552734 30.12505340576172 C 20.20195770263672 30.12505340576172 18.58656883239746 31.74044036865234 18.58656883239746 33.73082733154297 C 18.58656883239746 35.72121429443359 20.20195770263672 37.33660125732422 22.19234466552734 37.33660125732422 C 24.18273162841797 37.33660125732422 25.79812049865723 35.72121429443359 25.79812049865723 33.73082733154297 C 25.79812049865723 31.74044036865234 24.18273162841797 30.12505340576172 22.19234466552734 30.12505340576172 Z M 39.50006866455078 30.12505340576172 C 37.50968170166016 30.12505340576172 35.89429473876953 31.74044036865234 35.89429473876953 33.73082733154297 C 35.89429473876953 35.72121429443359 37.50968170166016 37.33660125732422 39.50006866455078 37.33660125732422 C 41.49045562744141 37.33660125732422 43.10584259033203 35.72121429443359 43.10584259033203 33.73082733154297 C 43.10584259033203 31.74044036865234 41.49045562744141 30.12505340576172 39.50006866455078 30.12505340576172 Z M 30.84620666503906 2 C 14.9231014251709 2 2 14.9231014251709 2 30.84620666503906 C 2 46.76931381225586 14.9231014251709 59.69241333007813 30.84620666503906 59.69241333007813 C 46.76931381225586 59.69241333007813 59.69241333007813 46.76931381225586 59.69241333007813 30.84620666503906 C 59.69241333007813 14.92309951782227 46.76931381225586 2 30.84620666503906 2 Z M 30.84620666503906 53.92317199707031 C 18.12503051757813 53.92317199707031 7.769241333007813 43.5673828125 7.769241333007813 30.84620666503906 C 7.769241333007813 30.00966644287109 7.826933860778809 29.17312622070313 7.913473129272461 28.36543273925781 C 14.72117614746094 25.33658218383789 20.11541938781738 19.76926231384277 22.94234657287598 12.87502098083496 C 28.16350936889648 20.2596492767334 36.75967788696289 25.07696533203125 46.48085021972656 25.07696533203125 C 48.73085784912109 25.07696533203125 50.89432144165039 24.81734848022461 52.97124862670898 24.32696342468262 C 53.5770149230957 26.37504386901855 53.92317199707031 28.56735610961914 53.92317199707031 30.84620666503906 C 53.92317199707031 43.5673828125 43.5673828125 53.92317199707031 30.84620666503906 53.92317199707031 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_t3pjvt =
    '<svg viewBox="0.0 0.0 46.0 46.0" ><path  d="M 0 0 L 46 0 L 46 46 L 0 46 L 0 0 Z" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_b1192d =
    '<svg viewBox="3.8 5.8 38.3 32.6" ><path transform="translate(1.83, 2.75)" d="M 17.33333206176758 35.58333206176758 L 17.33333206176758 24.08333206176758 L 24.99999809265137 24.08333206176758 L 24.99999809265137 35.58333206176758 L 34.58333206176758 35.58333206176758 L 34.58333206176758 20.25 L 40.33333206176758 20.25 L 21.16666603088379 3 L 1.99999988079071 20.25 L 7.749999523162842 20.25 L 7.749999523162842 35.58333206176758 L 17.33333206176758 35.58333206176758 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
