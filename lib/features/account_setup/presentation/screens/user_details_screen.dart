import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:shafasrm_app/core/extensions/context_extensions.dart';
import 'package:shafasrm_app/core/routes/router.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:shafasrm_app/features/account_setup/presentation/provider/user_details_page_state.dart';

class UserDetailsScreen extends ConsumerStatefulWidget {
  const UserDetailsScreen({super.key});

  @override
  ConsumerState<UserDetailsScreen> createState() => _UserDetailsScreenState();
}

class _UserDetailsScreenState extends ConsumerState<UserDetailsScreen> {
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController religionController = TextEditingController();
  DateRangePickerController dateRangePickerController =
      DateRangePickerController();
  int genderSelected = -1;

  String saveDate() {
    final date = dateRangePickerController.displayDate;
    DateTime dateTime = DateTime.parse(date.toString());
    DateFormat dateFormatter = DateFormat('yyyy-MM-dd');
    String formattedDate = dateFormatter.format(dateTime);
    return formattedDate;
  }

  @override
  Widget build(BuildContext context) {
    final height = context.screenHeight;
    final width = context.screenWidth;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                Gap(height * .05),
                Text(
                  'Deets = Dream Matches!',
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Drop your SRM stats, snag the hottest matches!',
                  style: GoogleFonts.poppins(color: Colors.black, fontSize: 12),
                ),

                Gap(height * .1),

                Consumer(
                  builder: (ctx, ref, child) {
                    final pageController = ref.read(
                      userDetailsPageControllerProvider,
                    );
                    return SizedBox(
                      height: height * .3,
                      width: width,
                      child: PageView(
                        // physics: NeverScrollableScrollPhysics(),
                        controller: pageController,
                        onPageChanged: (index) {
                          ref
                              .read(userDetailsCurrentPageProvider.notifier)
                              .setIndex(index);
                        },
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 22),
                            child: _buildTextField(
                              context,
                              phoneNumberController,
                              "phone",
                              "enter your phone number",
                              false,
                              true,
                            ),
                          ),
                          _ChooseGender(ref),
                          _buildDatePicker(),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 22),
                            child: _buildTextField(
                              context,
                              locationController,
                              "location",
                              "enter your location",
                              false,
                              false,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 22),
                            child: _buildTextField(
                              context,
                              religionController,
                              "religion",
                              "enter your religion",
                              false,
                              false,
                            ),
                          ),

                          _buildDropDown(context),
                        ],
                      ),
                    );
                  },
                ),

                _buildRoundButton(context),
                Gap(height * .1),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(
    BuildContext context,
    TextEditingController controller,
    String label,
    String hintText,
    bool obscureText,
    bool isPhone,
  ) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: GoogleFonts.poppins(color: Colors.black)),
        Container(
          margin: EdgeInsets.symmetric(vertical: 6),
          padding: EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.black),
          ),
          child: TextField(
            controller: controller,
            obscureText: obscureText,
            style: GoogleFonts.poppins(color: Colors.black),
            keyboardType: isPhone ? TextInputType.phone : null,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: GoogleFonts.poppins(color: Colors.grey),
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDatePicker() {
    return Container(
      padding: EdgeInsets.all(12),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(18),
        child: SfDateRangePicker(
          controller: dateRangePickerController,
          view: DateRangePickerView.decade,
          selectionMode: DateRangePickerSelectionMode.single,
        ),
      ),
    );
  }

  Widget _buildDropDown(BuildContext context) {
    final width = context.screenWidth;
    return Column(
      children: [
        Container(
          alignment: Alignment.topCenter,
          padding: EdgeInsets.all(6),
          child: DropdownMenu(
            onSelected: (val) {
              ref
                  .read(userDetailsStateProvider.notifier)
                  .setDepartment(val.toString());
            },
            label: Text('Department'),
            width: width * .5,
            dropdownMenuEntries: [
              DropdownMenuEntry<String>(value: "DSBS", label: "DSBS"),
              DropdownMenuEntry<String>(value: "CTECH", label: "CTECH"),
              DropdownMenuEntry<String>(value: "DSBS", label: "DSBS"),
              DropdownMenuEntry<String>(value: "CTECH", label: "CTECH"),
            ],
          ),
        ),
        Gap(16),
        Container(
          alignment: Alignment.topCenter,
          padding: EdgeInsets.all(6),
          child: DropdownMenu(
            onSelected: (val) {
              ref
                  .read(userDetailsStateProvider.notifier)
                  .setStream(val.toString());
            },
            label: Text('Stream'),
            width: width * .5,
            dropdownMenuEntries: [
              DropdownMenuEntry(value: "DSBS", label: "DSBS"),
              DropdownMenuEntry(value: "CTECH", label: "CTECH"),
              DropdownMenuEntry(value: "DSBS", label: "DSBS"),
              DropdownMenuEntry(value: "CTECH", label: "CTECH"),
            ],
          ),
        ),
        Gap(16),
        Container(
          alignment: Alignment.topCenter,
          padding: EdgeInsets.all(6),
          child: DropdownMenu(
            onSelected: (val) {
              ref
                  .read(userDetailsStateProvider.notifier)
                  .setDegree(val.toString());
            },
            label: Text('Degree'),
            width: width * .5,
            dropdownMenuEntries: [
              DropdownMenuEntry(value: "DSBS", label: "DSBS"),
              DropdownMenuEntry(value: "CTECH", label: "CTECH"),
              DropdownMenuEntry(value: "DSBS", label: "DSBS"),
              DropdownMenuEntry(value: "CTECH", label: "CTECH"),
            ],
          ),
        ),
      ],
    );
  }

  Widget _ChooseGender(WidgetRef ref) {
    return Row(
      children: [
        Expanded(
          child: InkWell(
            onTap: () {
              setState(() {
                genderSelected = 0;
              });
              ref.read(userDetailsStateProvider.notifier).setGender("male");
            },
            child: Container(
              alignment: Alignment.center,
              height: double.maxFinite,
              margin: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Colors.lightBlue,
                border: Border.all(
                  color:
                      genderSelected == 0 ? Colors.black : Colors.transparent,
                  width: genderSelected == 0 ? 2 : 0,
                ),
              ),
              child: Text("Male"),
            ),
          ),
        ),
        Expanded(
          child: InkWell(
            onTap: () {
              setState(() {
                genderSelected = 1;
              });
              ref.read(userDetailsStateProvider.notifier).setGender("female");
            },
            child: Container(
              alignment: Alignment.center,
              height: double.maxFinite,
              margin: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Colors.pinkAccent,
                border: Border.all(
                  color:
                      genderSelected == 1 ? Colors.black : Colors.transparent,
                  width: genderSelected == 1 ? 2 : 0,
                ),
              ),
              child: Text("Female"),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildRoundButton(BuildContext context) {
    final width = context.screenWidth;
    return Consumer(
      builder: (ctx, ref, child) {
        final pageControllerProvider = ref.read(
          userDetailsPageControllerProvider.notifier,
        );
        return InkWell(
          onTap: () {
            final currentIndex = ref.read(userDetailsCurrentPageProvider);
            final userDetailsState = ref.read(
              userDetailsStateProvider.notifier,
            );
            print(currentIndex);
            switch (currentIndex) {
              case 0:
                print("setting phone number");
                userDetailsState.setPhoneNumber(phoneNumberController.text);
              case 2:
                final birthday = saveDate();
                userDetailsState.setBirthday(birthday);
              case 3:
                print("setting location");
                userDetailsState.setLocation(locationController.text);
              case 4:
                print("setting religion");
                userDetailsState.setReligion(religionController.text);
                break;
              case 5:
                UserDetailsLoadingScreenRoute().pushReplacement(context);
              default:
            }
            pageControllerProvider.goToNextPage();
          },
          child: Container(
            alignment: Alignment.center,
            height: width * .15,
            width: width * .15,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.amber,
            ),
            child: Icon(PhosphorIconsBold.arrowRight),
          ),
        );
      },
    );
  }
}
