import 'package:flutter/material.dart';

import '../../Features/Widgets/AppBar Widgets/appbar_widgets.dart';
import '../../Features/Widgets/drawer.dart';
import 'Categories  Widgets/categories_widgets.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  int currentIndex = 0;
  int preIndex = 0;
  int postIndex = 1;
  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();
    var size = MediaQuery.of(context).size;

    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              if (scaffoldKey.currentState!.isDrawerOpen) {
                scaffoldKey.currentState!.closeDrawer();
              } else {
                scaffoldKey.currentState!.openDrawer();
              }
            },
            icon: Icon(Icons.menu, color: Colors.white, size: 30)),
        title: CustomAppBar.CustomText(text: 'All Categories'),
        actions: [CustomAppBar.CustomIcon()],
      ),
      drawer: drawer(),
      body: Row(
        children: [
          SafeArea(
            child: SizedBox(
              width: 87,
              child: ListView.builder(itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      currentIndex = index;
                      preIndex = index - 1;
                      postIndex = index + 1;
                    });
                  },
                  child: Stack(
                    children: [
                      Container(
                        width: 87,
                        padding: const EdgeInsets.only(
                            left: 12, right: 5, top: 10, bottom: 10),
                        decoration: BoxDecoration(
                          color: currentIndex == index
                              ? Colors.white
                              : Theme.of(context)
                                  .colorScheme
                                  .inversePrimary
                                  .withOpacity(0.4),
                          border: index != 0
                              ? const Border(
                                  top:
                                      BorderSide(color: Colors.white, width: 1),
                                )
                              : null,
                          borderRadius: preIndex == index || postIndex == index
                              ? BorderRadius.only(
                                  topRight: postIndex == index
                                      ? const Radius.circular(20)
                                      : Radius.zero,
                                  bottomRight: preIndex == index
                                      ? const Radius.circular(20)
                                      : Radius.zero,
                                )
                              : null,
                        ),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Container(
                                width: 60,
                                height: 60,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Image.network(
                                  railCategories[index].catImageUrl,
                                  fit: BoxFit.cover,
                                  loadingBuilder:
                                      (context, child, loadingProgress) {
                                    if (loadingProgress == null) {
                                      return child;
                                    } else {
                                      return Image.asset(
                                          'images/loadingImage.png');
                                    }
                                  },
                                ),
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              railCategories[index].catName,
                              textAlign: TextAlign.center,
                              style: const TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                      currentIndex == index
                          ? Positioned(
                              left: 2,
                              top: 5,
                              bottom: 5,
                              child: Container(
                                width: 7,
                                height: 80,
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(8)),
                              )
                            )
                          : const SizedBox(),
                    ],
                  ),
                );
              }),
            ),
          ),
          Expanded(
            child: SubCategories(
              currentIndex: currentIndex,
            ),
          )
        ],
      ),
    );
  }
}

class SubCategories extends StatelessWidget {
  final int currentIndex;
  const SubCategories({
    super.key,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    final List subCategoryItems = [
      forYouItems,
      groceryItems,
      fashionItems,
      appliancesItems,
      mobilesItems,
      electronicsItems,
      homeItems,
      furnitureItems,
      personalCareItems,
      toysAndBayItems,
    ];

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 5 / 6,
          crossAxisSpacing: 15,
          mainAxisSpacing: 8,
        ),
        itemCount: subCategoryItems[currentIndex].length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.network(
                    subCategoryItems[currentIndex][index].catImageUrl,
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) {
                        return child;
                      } else {
                        return Image.asset('images/loadingImage.png');
                      }
                    },
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Text(
                subCategoryItems[currentIndex][index].catName,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 12),
              ),
            ],
          );
        },
      ),
    );
  }
}
