import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:desafio/localization/locale_extension.dart';
import 'package:desafio/modules/profile/profile_controller.dart';
import 'package:desafio/modules/profile/widgets/categories.dart';
import 'package:desafio/modules/profile/widgets/food_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends GetView<ProfileController> {
  ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      bottomNavigationBar: Container(
        height: 80,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.15),
              spreadRadius: 1,
              blurRadius: 3,
            ),
          ],
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(BootstrapIcons.search, size: 30),
            Icon(BootstrapIcons.square, size: 30),
            Icon(BootstrapIcons.egg,
                size: 30, color: Theme.of(context).primaryColor),
          ],
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  LocaleKeys.myKitchen.tra,
                  style: textTheme.headline2,
                ),
                Row(
                  children: [
                    Icon(BootstrapIcons.gear),
                    SizedBox(width: 10),
                    Text(
                      LocaleKeys.settings.tra,
                      style: textTheme.bodyText1,
                    )
                  ],
                ),
              ],
            ),
            SizedBox(height: 40),
            Obx(
              () {
                final profile = controller.profile.value!;

                return Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 45,
                          backgroundImage:
                              CachedNetworkImageProvider(profile.photo),
                        ),
                        SizedBox(width: 20),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    profile.name,
                                    style: textTheme.headline5,
                                  ),
                                  Icon(BootstrapIcons.pencil),
                                ],
                              ),
                              SizedBox(height: 3),
                              Text(
                                profile.function,
                                style: textTheme.subtitle1,
                              ),
                              SizedBox(height: 12),
                              Row(
                                children: [
                                  Text(
                                    '${profile.followers} ${LocaleKeys.followers.tra.toLowerCase()}',
                                    style: textTheme.bodyText2,
                                  ),
                                  SizedBox(width: 10),
                                  Container(
                                    height: 5,
                                    width: 5,
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    '${profile.likes} ${LocaleKeys.likes.tra.toLowerCase()}',
                                    style: textTheme.bodyText2,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Divider(),
                    SizedBox(height: 20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Categories(20, LocaleKeys.recipes.tra, true),
                        Categories(profile.saved, LocaleKeys.saved.tra, false),
                        Categories(
                            profile.following, LocaleKeys.following.tra, false),
                      ],
                    ),
                    Container(
                      height: 0.8,
                      color: Colors.black12,
                    ),
                  ],
                );
              },
            ),
            SizedBox(height: 30),
            Obx(() {
              final categories = controller.categories;

              return GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                itemCount: categories.length,
                itemBuilder: (BuildContext context, int index) {
                  return FoodCard(categories[index]);
                },
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.25,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
              );
            })
          ],
        ),
      ),
    );
  }
}
