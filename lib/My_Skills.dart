import 'package:flutter/material.dart';

import 'constatnts.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    double screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth > 850) {
      return buildCenter(screenSize);
    } else {
      return buildCente(screenSize);
    }
  }

  Padding buildCente(Size screenSize) {
    return Padding(
      padding: const EdgeInsets.only(left: 18.0,top: 18.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Skills",
                style: kmobtitel,
              ),
              Text(
                "Coading",
                style: kyear,
              ),
              Wrap(
                alignment: WrapAlignment.center,
                children: [
                  buildSkill("Dart",
                      "https://cdn3d.iconscout.com/3d/free/thumb/free-dart-3d-icon-download-in-png-blend-fbx-gltf-file-formats--android-logo-google-flutter-coding-lang-pack-logos-icons-7578014.png?f=webp"),
                  buildSkill("Django",
                      "https://cdn.iconscout.com/icon/free/png-256/free-django-logo-icon-download-in-svg-png-gif-file-formats--technology-social-media-vol-2-pack-logos-icons-3029957.png?f=webp&w=256"),
                  buildSkill(
                    "Html / Css",
                    "https://cdn-icons-png.flaticon.com/512/2867/2867342.png",
                  ),
                  buildSkill("C,C++",
                      "https://cdn3d.iconscout.com/3d/free/thumb/free-c-language-3d-icon-download-in-png-blend-fbx-gltf-file-formats--logo-mobile-developer-programming-pack-logos-icons-5453029.png"),
                  buildSkill("Python",
                      "https://img.icons8.com/color/512/python.png"),
                  buildSkill("JavaScript",
                      "https://cdn3d.iconscout.com/3d/free/thumb/free-javascript-3d-icon-download-in-png-blend-fbx-gltf-file-formats--html-logo-vue-angular-coding-lang-pack-logos-icons-7577991.png"),
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Tools",
                style: kyear,
              ),
              Wrap(
                alignment: WrapAlignment.center,
                children: [
                  buildSkill("Flutter",
                      "https://img.icons8.com/color/512/flutter.png"),
                  buildSkill("Flutter Flow",
                      "https://avatars.githubusercontent.com/u/74943865?s=280&v=4"),
                  buildSkill("Figma",
                      "https://cdn4.iconfinder.com/data/icons/logos-brands-in-colors/3000/figma-logo-512.png"),
                  buildSkill("MS-Office",
                      "https://cdn.iconscout.com/icon/free/png-256/free-microsoft-office-logo-icon-download-in-svg-png-gif-file-formats--logos-pack-icons-722717.png"),
                  buildSkill("Wordpress / Wix",
                      "https://www.prontomarketing.com/wp-content/uploads/2022/05/Wix_to_WordPress_feature_graphic.png"),
                  buildSkill("CapCut / VN / Filmora",
                      "https://cdn-icons-png.flaticon.com/512/8152/8152756.png"),
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Deply",
                style: kyear,
              ),
              Wrap(
                children: [
                  buildSkill("Firebase",
                      "https://www.gstatic.com/devrel-devsite/prod/vd2dddc2199cd18ccf014281c77515e1e906f6b98324fd2a8b5fa9e92b09e8018/firebase/images/touchicon-180.png"),
                  buildSkill("Supabase",
                      "https://cdn.prod.website-files.com/655b60964be1a1b36c746790/655b60964be1a1b36c746d41_646dfce3b9c4849f6e401bff_supabase-logo-icon_1.png"),
                  buildSkill("Codemagic",
                      "https://avatars.githubusercontent.com/u/53334409?s=200&v=4"),
                  buildSkill("Git",
                      "https://avatars.githubusercontent.com/u/18133?s=280&v=4"),
                  buildSkill("Vercel",
                      "https://static-00.iconduck.com/assets.00/logo-vercel-icon-512x444-szlkql7g.png"),
                  buildSkill("AWS",
                      "https://img.icons8.com/color/200/amazon-web-services.png"),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  Padding buildSkill(String text, String link) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 7),
      child: Container(
        width: 75,
        child: Column(
          children: [
            Container(
              height: 55,
              width: 55,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    link,
                    fit: BoxFit.fitWidth,
                  )),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
            ),
            Text(
              text,
              style: kbold,
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Center buildCenter(Size screenSize) {
    return Center(
      child: Container(
        width: screenSize.width / 1.5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 40, top: 15),
              child: Text(
                "Skills",
                style: ktittel,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Coading",
                      style: kyear,
                    ),
                    Container(
                      child: Wrap(
                        alignment: WrapAlignment.center,
                        children: [
                          buildSkill("Dart",
                              "https://cdn3d.iconscout.com/3d/free/thumb/free-dart-3d-icon-download-in-png-blend-fbx-gltf-file-formats--android-logo-google-flutter-coding-lang-pack-logos-icons-7578014.png?f=webp"),
                          buildSkill("Django",
                              "https://cdn.iconscout.com/icon/free/png-256/free-django-logo-icon-download-in-svg-png-gif-file-formats--technology-social-media-vol-2-pack-logos-icons-3029957.png?f=webp&w=256"),
                          buildSkill(
                            "Html / Css",
                            "https://cdn-icons-png.flaticon.com/512/2867/2867342.png",
                          ),
                          buildSkill("C,C++",
                              "https://cdn3d.iconscout.com/3d/free/thumb/free-c-language-3d-icon-download-in-png-blend-fbx-gltf-file-formats--logo-mobile-developer-programming-pack-logos-icons-5453029.png"),
                          buildSkill("Python",
                              "https://img.icons8.com/color/512/python.png"),
                          buildSkill("JavaScript",
                              "https://cdn3d.iconscout.com/3d/free/thumb/free-javascript-3d-icon-download-in-png-blend-fbx-gltf-file-formats--html-logo-vue-angular-coding-lang-pack-logos-icons-7577991.png"),
                        ],
                      ),
                    ),
                  ],
                )),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Tools",
                      style: kyear,
                    ),
                    Container(
                      child: Wrap(
                        alignment: WrapAlignment.center,
                        children: [
                          buildSkill("Flutter",
                              "https://img.icons8.com/color/512/flutter.png"),
                          buildSkill("Flutter Flow",
                              "https://avatars.githubusercontent.com/u/74943865?s=280&v=4"),
                          buildSkill("Figma",
                              "https://cdn4.iconfinder.com/data/icons/logos-brands-in-colors/3000/figma-logo-512.png"),
                          buildSkill("MS-Office",
                              "https://cdn.iconscout.com/icon/free/png-256/free-microsoft-office-logo-icon-download-in-svg-png-gif-file-formats--logos-pack-icons-722717.png"),
                          buildSkill("Wordpress / Wix",
                              "https://www.prontomarketing.com/wp-content/uploads/2022/05/Wix_to_WordPress_feature_graphic.png"),
                          buildSkill("CapCut / VN / Filmora",
                              "https://cdn-icons-png.flaticon.com/512/8152/8152756.png"),
                        ],
                      ),
                    ),
                  ],
                )),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Deply",
                      style: kyear,
                    ),
                    Container(
                      child: Wrap(
                        children: [
                          buildSkill("Firebase",
                              "https://www.gstatic.com/devrel-devsite/prod/vd2dddc2199cd18ccf014281c77515e1e906f6b98324fd2a8b5fa9e92b09e8018/firebase/images/touchicon-180.png"),
                          buildSkill("Supabase",
                              "https://cdn.prod.website-files.com/655b60964be1a1b36c746790/655b60964be1a1b36c746d41_646dfce3b9c4849f6e401bff_supabase-logo-icon_1.png"),
                          buildSkill("Codemagic",
                              "https://avatars.githubusercontent.com/u/53334409?s=200&v=4"),
                          buildSkill("Git",
                              "https://avatars.githubusercontent.com/u/18133?s=280&v=4"),
                          buildSkill("Vercel",
                              "https://static-00.iconduck.com/assets.00/logo-vercel-icon-512x444-szlkql7g.png"),
                          buildSkill("AWS",
                              "https://img.icons8.com/color/200/amazon-web-services.png"),
                        ],
                      ),
                    ),
                  ],
                ))
              ],
            ),
          ],
        ),
      ),
    );
  }

  Padding buildSkills(String text, String link) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, top: 15),
      child: Container(
        width: 75,
        child: Column(
          children: [
            Container(
              height: 60,
              width: 60,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    link,
                    fit: BoxFit.fill,
                  )),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
            ),
            Text(
              text,
              style: kbold,
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
