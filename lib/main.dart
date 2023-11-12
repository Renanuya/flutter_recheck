import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_check/101/2_container_sizedbox_widget_recheck.dart';
import 'package:flutter_check/101/3_scaffold_recheck.dart';
import 'package:flutter_check/101/4_button_widget_recheck.dart';
import 'package:flutter_check/101/5_app_bar_recheck.dart';
import 'package:flutter_check/101/6_icons_recheck.dart';
import 'package:flutter_check/101/7_stateless_recheck.dart';
import 'package:flutter_check/101/8_padding_widget_recheck.dart';

import '101/1_text_widget_recheck.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //We have used "appBarTheme" to modify the appbar.
      //We have used "backgroundColor" to change the background color of the appbar.
      //We have used "elevation" to remove the shadow of the appbar.
      //We have used "centerTitle" to center the title of the appbar.
      //We have used "systemOverlayStyle" to change the status bar color.
      routes: {
        '/101/1_text_widget_recheck': (context) =>
            const RecheckTextWidgetPage(),
        '/101/2_container_sizedbox_widget_recheck.dart': (context) =>
            const RecheckContainerSizedboxWidgetPages(),
        '/101/3_scaffold_recheck.dart': (context) =>
            const RecheckScaffoldPage(),
        '/101/4_button_widget_recheck.dart': (context) =>
            const RecheckButtonWidgetPage(),
        '/101/5_app_bar_recheck.dart': (context) => const RecheckAppBarPage(),
        '/101/6_icons_recheck.dart': (context) => const RecheckIconsPage(),
        '/101/7_stateless_recheck.dart': (context) =>
            const ReCheckStatelessPage(),
        '/101/8_padding_widget_recheck.dart': (context) =>
            const ReCheckPaddingWidgetPage(),
        '/101/3_scaffold_recheck.dart': (context) =>
            const RecheckScaffoldPage(),
        '/101/3_scaffold_recheck.dart': (context) =>
            const RecheckScaffoldPage(),
        '/101/3_scaffold_recheck.dart': (context) =>
            const RecheckScaffoldPage(),
      },
      theme: ThemeData.dark().copyWith(
        cardTheme: CardTheme(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        progressIndicatorTheme:
            const ProgressIndicatorThemeData(color: Colors.white),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          systemOverlayStyle: SystemUiOverlayStyle.light,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const RecheckTextWidgetPage(),
    );
  }
}

/* 


İSTANBUL TİCARET ÜNİVERSİTESİ
İSTANBUL TOPKAPI ÜNİVERSİTESİ
İSTANBUL YENİ YÜZYIL ÜNİVERSİTESİ
İSTİNYE ÜNİVERSİTESİ
İZMİR EKONOMİ ÜNİVERSİTESİ
KADİR HAS ÜNİVERSİTESİ
KOÇ ÜNİVERSİTESİ
KTO KARATAY ÜNİVERSİTESİ
MALTEPE ÜNİVERSİTESİ
MEF ÜNİVERSİTESİ
NİŞANTAŞI ÜNİVERSİTESİ
NUH NACİ YAZGAN ÜNİVERSİTESİ
OSTİM TEKNİK ÜNİVERSİTESİ
ÖZYEĞİN ÜNİVERSİTESİ
PİRİ REİS ÜNİVERSİTESİ
TOBB EKONOMİ VE TEKNOLOJİ ÜNİVERSİTESİ
TOROS ÜNİVERSİTESİ
TÜRK HAVA KURUMU ÜNİVERSİTESİ
ÜSKÜDAR ÜNİVERSİTESİ
YAŞAR ÜNİVERSİTESİ
YEDİTEPE ÜNİVERSİTESİ
DOĞU AKDENİZ ÜNİVERSİTESİ
GİRNE ÜNİVERSİTESİ
KIBRIS İLİM ÜNİVERSİTESİ
LEFKE AVRUPA ÜNİVERSİTESİ
ULUSLARARASI FİNAL ÜNİVERSİTESİ
ULUSLARARASI KIBRIS ÜNİVERSİTESİ
YAKIN DOĞU ÜNİVERSİTESİ
  */