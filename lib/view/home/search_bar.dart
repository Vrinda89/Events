import 'package:events_book/resource/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../util/app_text_styles.dart';
import '../../util/palette.dart';
import '../../viewmodel/home_provider.dart';
import '../widgets/app_text_field.dart';

class SearchBar extends StatelessWidget with PreferredSizeWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dataProvider = Provider.of<HomeScreenProvider>(context);
    return AppBar(
      leading: Transform.translate(
        offset: const Offset(-15, 0),
        child: const Icon(
          Icons.android,
          color: Colors.transparent,
        ),
      ),
      titleSpacing: -30,
      automaticallyImplyLeading: false,
      backgroundColor: Palette.primaryColor,
      title: Container(
        margin: const EdgeInsets.all(8.0),
        child: AppTextField(
          isSuffixVisible: dataProvider.isSuffixVisible,
          hint: Constants.searchEvent,
          onTextChanged: (value) {
            dataProvider.setSearchQuery(value);
          },
          onCleared: () {
            dataProvider.query = "";
            dataProvider.pageNo = 1;
            dataProvider.fetchEvents();
          },
        ),
      ),
      actions: [
        InkWell(
          child: Center(
            child: Text(
              dataProvider.isSearchButton ? Constants.search : Constants.cancel,
              style: AppTextStyle.textStyle14Normal(textColor: Colors.white),
            ),
          ),
          onTap: () {
            if (dataProvider.query.isNotEmpty) {
              if (dataProvider.isSearchButton) {
                dataProvider.searchEvents();
                dataProvider.resetSearch(false);
              } else {
                dataProvider.fetchEvents();
                dataProvider.resetSearch(true);
              }
            }
          },
        )
      ],
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
