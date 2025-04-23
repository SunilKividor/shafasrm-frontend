import 'package:flutter/widgets.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shafasrm_app/features/user_profile/models/user_profile_form_model.dart';

part 'generated/profile_form_provider.g.dart';

@Riverpod(keepAlive: true)
class ProfileForm extends _$ProfileForm {
  UserProfileFormModel build() {
    return UserProfileFormModel(
      partyMove: null,
      flirtRating: null,
      shotsConfess: null,
      guiltySong: null,
      chaoticLove: null,
    );
  }

  void setPartyMove(int option) {
    state = state.copyWith(partyMove: option);
  }

  void setflirtRating(int option) {
    state = state.copyWith(flirtRating: option);
  }

  void setshotsConfess(int option) {
    state = state.copyWith(shotsConfess: option);
  }

  void setguiltySong(int option) {
    state = state.copyWith(guiltySong: option);
  }

  void setchaoticLove(int option) {
    state = state.copyWith(chaoticLove: option);
  }
}

@riverpod
class ProfileFormPageCurrentIndex extends _$ProfileFormPageCurrentIndex {
  @override
  int build() {
    return 0;
  }

  void setCurrentIndex(int index) {
    state = index;
  }
}

@riverpod
class ProfileFormPageController extends _$ProfileFormPageController {
  PageController pageController = PageController();
  @override
  PageController build() {
    return pageController;
  }

  void goToNextPage() {
    state.nextPage(
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  void goToPreviousPage() {
    state.previousPage(
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }
}
