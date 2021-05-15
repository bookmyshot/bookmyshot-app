// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../pages/dashboard.dart' as _i5;
import '../pages/fragments/members/add_member.dart' as _i10;
import '../pages/fragments/members/view_members.dart' as _i9;
import '../pages/fragments/onboarding/add_mobile.dart' as _i7;
import '../pages/fragments/onboarding/otp_verify.dart' as _i8;
import '../pages/fragments/onboarding/welcome.dart' as _i6;
import '../pages/fragments/slots/location_preference.dart' as _i12;
import '../pages/fragments/slots/view_slots.dart' as _i11;
import '../pages/onboarding.dart' as _i4;
import '../pages/splash.dart' as _i3;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i3.SplashScreen();
        },
        opaque: true,
        barrierDismissible: false),
    OnboardingRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i4.Onboarding();
        },
        opaque: true,
        barrierDismissible: false),
    DashboardRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i5.Dashboard();
        },
        opaque: true,
        barrierDismissible: false),
    WelcomeRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i6.Welcome();
        },
        opaque: true,
        barrierDismissible: false),
    AddMobileRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i7.AddMobile();
        },
        opaque: true,
        barrierDismissible: false),
    OTPVerifyRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i8.OTPVerify();
        },
        opaque: true,
        barrierDismissible: false),
    ViewMembersRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i9.ViewMembers();
        },
        opaque: true,
        barrierDismissible: false),
    AddMemberRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i10.AddMember();
        },
        opaque: true,
        barrierDismissible: false),
    ViewSlotsRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i11.ViewSlots();
        },
        opaque: true,
        barrierDismissible: false),
    LocationPreferenceRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i12.LocationPreference();
        },
        opaque: true,
        barrierDismissible: false)
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashScreenRoute.name, path: '/'),
        _i1.RouteConfig(OnboardingRoute.name, path: '/Onboarding', children: [
          _i1.RouteConfig(WelcomeRoute.name, path: 'Welcome'),
          _i1.RouteConfig(AddMobileRoute.name, path: 'add-mobile'),
          _i1.RouteConfig(OTPVerifyRoute.name, path: 'o-tp-verify')
        ]),
        _i1.RouteConfig(DashboardRoute.name, path: '/Dashboard', children: [
          _i1.RouteConfig(ViewMembersRoute.name, path: 'view-members'),
          _i1.RouteConfig(AddMemberRoute.name, path: 'add-member'),
          _i1.RouteConfig(ViewSlotsRoute.name, path: 'view-slots'),
          _i1.RouteConfig(LocationPreferenceRoute.name,
              path: 'location-preference')
        ])
      ];
}

class SplashScreenRoute extends _i1.PageRouteInfo {
  const SplashScreenRoute() : super(name, path: '/');

  static const String name = 'SplashScreenRoute';
}

class OnboardingRoute extends _i1.PageRouteInfo {
  const OnboardingRoute({List<_i1.PageRouteInfo>? children})
      : super(name, path: '/Onboarding', initialChildren: children);

  static const String name = 'OnboardingRoute';
}

class DashboardRoute extends _i1.PageRouteInfo {
  const DashboardRoute({List<_i1.PageRouteInfo>? children})
      : super(name, path: '/Dashboard', initialChildren: children);

  static const String name = 'DashboardRoute';
}

class WelcomeRoute extends _i1.PageRouteInfo {
  const WelcomeRoute() : super(name, path: 'Welcome');

  static const String name = 'WelcomeRoute';
}

class AddMobileRoute extends _i1.PageRouteInfo {
  const AddMobileRoute() : super(name, path: 'add-mobile');

  static const String name = 'AddMobileRoute';
}

class OTPVerifyRoute extends _i1.PageRouteInfo {
  const OTPVerifyRoute() : super(name, path: 'o-tp-verify');

  static const String name = 'OTPVerifyRoute';
}

class ViewMembersRoute extends _i1.PageRouteInfo {
  const ViewMembersRoute() : super(name, path: 'view-members');

  static const String name = 'ViewMembersRoute';
}

class AddMemberRoute extends _i1.PageRouteInfo {
  const AddMemberRoute() : super(name, path: 'add-member');

  static const String name = 'AddMemberRoute';
}

class ViewSlotsRoute extends _i1.PageRouteInfo {
  const ViewSlotsRoute() : super(name, path: 'view-slots');

  static const String name = 'ViewSlotsRoute';
}

class LocationPreferenceRoute extends _i1.PageRouteInfo {
  const LocationPreferenceRoute() : super(name, path: 'location-preference');

  static const String name = 'LocationPreferenceRoute';
}
