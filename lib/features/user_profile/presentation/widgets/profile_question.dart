import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shafasrm_app/core/extensions/context_extensions.dart';
import 'package:shafasrm_app/features/user_profile/presentation/provider/profile_form_provider.dart';

class ProfileQuestion extends StatelessWidget {
  const ProfileQuestion({super.key, required this.data});

  final Map<String, dynamic> data;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildTitle(),
          _buildSubTitle(context),
          _buildOptions(context),
        ],
      ),
    );
  }

  Widget _buildTitle() {
    return Text(
      data['field'],
      style: GoogleFonts.poppins(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }

  Widget _buildSubTitle(BuildContext context) {
    final width = context.screenWidth;
    return SizedBox(
      width: width * .7,
      child: Text(
        data['question'],
        style: GoogleFonts.poppins(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _buildOptions(BuildContext context) {
    final height = context.screenHeight;
    final options = data['options'];

    return Container(
      margin: EdgeInsets.all(12),
      height: height * 0.6,
      child: Column(
        children: List.generate(options.length, (index) {
          return Expanded(
            child: Consumer(
              builder: (ctx, ref, child) {
                final currentIndex = ref.watch(
                  profileFormPageCurrentIndexProvider,
                );
                return InkWell(
                  onTap: () {
                    print(currentIndex);
                    switch (currentIndex) {
                      case 0:
                        ref
                            .read(profileFormProvider.notifier)
                            .setPartyMove(index + 1);
                        break;
                      case 1:
                        ref
                            .read(profileFormProvider.notifier)
                            .setflirtRating(index + 1);
                        break;
                      case 2:
                        ref
                            .read(profileFormProvider.notifier)
                            .setshotsConfess(index + 1);
                        break;
                      case 3:
                        ref
                            .read(profileFormProvider.notifier)
                            .setguiltySong(index + 1);
                        break;
                      case 4:
                        ref
                            .read(profileFormProvider.notifier)
                            .setchaoticLove(index + 1);
                        break;
                      default:
                    }
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 6),
                    decoration: BoxDecoration(color: Colors.amber),
                    child: Center(child: Text(options[index]['text'])),
                  ),
                );
              },
            ),
          );
        }),
      ),
    );
  }
}
