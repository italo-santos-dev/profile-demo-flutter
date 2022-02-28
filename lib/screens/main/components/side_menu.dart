import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:profile_demo/constants.dart';
import 'package:profile_demo/core/app_icons.dart';
import 'package:profile_demo/screens/main/components/area_info_text.dart';
import 'package:profile_demo/screens/main/components/knowledges.dart';
import 'package:profile_demo/screens/main/components/my_info.dart';
import 'package:profile_demo/screens/main/components/skills.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          MyInfo(),
          Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    AreaInfoText(
                      title: "Residência",
                      text: "Brasil",
                    ),
                    AreaInfoText(
                      title: "Cidade",
                      text: "Fortaleza",
                    ),
                    AreaInfoText(
                      title: "Era",
                      text: "18",
                    ),
                    Skills(),
                    SizedBox(height: defaultPadding),
                    Knowledges(),
                    Divider(),
                    SizedBox(height: defaultPadding / 2),
                    TextButton(
                        onPressed: () {
                          openFile(
                            url: 'https://drive.google.com/file/d/1gY05JoeEtzmDWGdvsnfZKzlDj-D3hOsj/view?usp=sharing',
                            fileName: 'CurriculoItaloSantos.pdf',
                          );
                        },
                        child: FittedBox(
                          child: Row(
                            children: [
                              Text(
                                  "DOWNLOAD CV",
                                style: TextStyle(
                                  color: Theme.of(context).textTheme.bodyText1!.color,
                                )
                              ),
                              SizedBox(width: defaultPadding / 2),
                              SvgPicture.asset(
                                   AppIcons.downloadIcon,
                                width: 16.0,
                                height: 16.0,
                              )
                            ],
                          ),
                        ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: defaultPadding / 2),
                      color: Color(0xFF24242E),
                      child: Row(
                        children: [
                          Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(
                              AppIcons.linkedinIcon,
                              width: 18.0,
                              height: 18.0,
                            )
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset(AppIcons.githubIcon)
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                AppIcons.emailIcon,
                                width: 20.0,
                                height: 20.0,
                              ),
                          ),
                          Spacer(),
                        ],
                      ),
                    )
                  ],
                ),
              )
          )
        ],
      ),
    );
  }
  Future openFile({required String url, required String? fileName}) async {
    final file = await downloadFile(url, fileName!);

    if (file == null) return;

    print('Path: ${file.path}');


    OpenFile.open(file.path);

  }

  Future<File?> downloadFile(String url, String name) async {
    final appStorage = await getApplicationDocumentsDirectory();
    final file = File('${appStorage.path}/$name');

   try {
     final response = await Dio().get(
         url,
         options: Options(
           responseType: ResponseType.bytes,
           followRedirects: false,
           receiveTimeout: 0,
         )
     );

     final raf = file.openSync(mode: FileMode.write);
     raf.writeFromSync(response.data);
     return file;

   } catch (err) {
     return null;
   }
  }
}