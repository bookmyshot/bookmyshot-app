import 'package:auto_route/auto_route.dart';
import 'package:book_my_shot/view/pages/dashboard.dart';
import 'package:book_my_shot/view/pages/fragments/members/add_member.dart';
import 'package:book_my_shot/view/pages/fragments/members/view_members.dart';
import 'package:book_my_shot/view/pages/fragments/onboarding/add_mobile.dart';
import 'package:book_my_shot/view/pages/fragments/onboarding/otp_verify.dart';
import 'package:book_my_shot/view/pages/fragments/onboarding/welcome.dart';
import 'package:book_my_shot/view/pages/fragments/slots/location_preference.dart';
import 'package:book_my_shot/view/pages/fragments/slots/view_slots.dart';
import 'package:book_my_shot/view/pages/onboarding.dart';
import 'package:book_my_shot/view/pages/splash.dart';

@CustomAutoRouter(
  routes: <CustomRoute>[
    CustomRoute(page: SplashScreen, initial: true),
    CustomRoute(
      page: Onboarding,
      children: [
        CustomRoute(page: Welcome),
        CustomRoute(page: AddMobile),
        CustomRoute(page: OTPVerify),
      ],
    ),
    CustomRoute(
      page: Dashboard,
      children: [
        CustomRoute(page: ViewMembers),
        CustomRoute(page: AddMember),
        CustomRoute(page: ViewSlots),
        CustomRoute(page: LocationPreference),
      ],
    ),
  ],
  transitionsBuilder: TransitionsBuilders.slideRightWithFade,
)
class $AppRouter {}
