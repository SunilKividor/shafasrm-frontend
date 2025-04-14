import 'package:flutter/widgets.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shafasrm_app/features/account_setup/models/user_details_model.dart';

part 'generated/user_details_page_state.g.dart';

@Riverpod(keepAlive: true)
class UserDetailsCurrentPage extends _$UserDetailsCurrentPage {
  int build() {
    int currentIndex = 0;
    return currentIndex;
  }

  void setIndex(int index) {
    state = index;
  }
}

@riverpod
class UserDetailsPageController extends _$UserDetailsPageController {
  PageController pageController = PageController();
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

@riverpod
class UserDetailsPageControllers extends _$UserDetailsPageControllers {
  List<TextEditingController> build() {
    return List.generate(3, (i) => TextEditingController());
  }
}

@Riverpod(keepAlive: true)
class UserDetailsState extends _$UserDetailsState {
  UserDetailsModel build() {
    return UserDetailsModel(
      phone: "",
      gender: "",
      birthday: "",
      location: "",
      religion: "",
      department: "",
      degree: "",
      stream: "",
    );
  }

  void setPhoneNumber(String phoneNumber) {
    state = state.copyWith(phone: phoneNumber);
    print(state.toJson());
  }

  void setGender(String gender) {
    state = state.copyWith(gender: gender);
    print(state.toJson());
  }

  void setBirthday(String birthday) {
    state = state.copyWith(birthday: birthday);
    print(state.toJson());
  }

  void setLocation(String location) {
    state = state.copyWith(location: location);
    print(state.toJson());
  }

  void setReligion(String religion) {
    state = state.copyWith(religion: religion);
    print(state.toJson());
  }

  void setDepartment(String department) {
    state = state.copyWith(department: department);
    print(state.toJson());
  }

  void setDegree(String degree) {
    state = state.copyWith(degree: degree);
    print(state.toJson());
  }

  void setStream(String stream) {
    state = state.copyWith(stream: stream);
    print(state.toJson());
  }
}
