import 'package:flutter/material.dart';
import 'package:space_project/core/utils/app_colors.dart';
import 'package:space_project/core/utils/values_manager.dart';
import 'package:space_project/presentation/components/search/default_text_form_field.dart';
import 'package:space_project/presentation/components/search/search_card_widget.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({Key? key}) : super(key: key);

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.darkBcGrnd,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.darkBcGrnd,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_circle_left_outlined,
            color: AppColors.offWhite,
            size: AppSize.s35,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: AppPadding.p10,
          bottom: AppPadding.p30,
          right: AppPadding.p30,
          left: AppPadding.p30,
        ),
        child: Column(
          children: [
            DefaultTextFormField(
              hint: 'write word you want to search',
              radius: 25,
              type: TextInputType.text,
              controller: controller,
              prefixIcon: Icon(
                Icons.search,
                color: AppColors.offWhite,
              ),
              borderColor: AppColors.offWhite,
              fillColor: AppColors.darkBcGrnd,
              isFilled: true,
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .755,
              child: ListView.separated(
                  itemBuilder: (context, index) => SearchCardWidget(
                      imageUrl:
                          'https://images-assets.nasa.gov/image/s69-35505/s69-35505~thumb.jpg',
                      title:
                          'APOLLO 50th_FULL COLOR_300DPI MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM',
                      source: 'Nasa'),
                  separatorBuilder: (context, index) => SizedBox(
                        height: 10,
                      ),
                  itemCount: 5,
                  ),
            )
          ],
        ),
      ),
    );
  }
}
