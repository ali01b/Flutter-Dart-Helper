import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_notes/level-1/color_learn.dart';
import 'package:flutter_notes/level-1/list_view_builder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Notes',
      debugShowCheckedModeBanner: false,

      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),

      theme: ThemeData.dark().copyWith(
          //Burada dark için temaları belirleyebiliriz.
          elevatedButtonTheme: const ElevatedButtonThemeData(
              style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(
                    Colors.blueAccent,
                  ),
                  shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)))))),
          primaryColor: ColorItems().sulu,
          //? örnek olarak bu sistem tarafından verilen renkleri de ayarlayabiliriz.

          //* Mesela app bar için projenin tamamında geçerli olacak olan temaı belirleyelim:
          inputDecorationTheme: const InputDecorationTheme(
            filled: true,
            fillColor: Color.fromARGB(255, 0, 0, 0),
            iconColor: Color.fromARGB(255, 0, 0, 0),
            border: OutlineInputBorder(),
            labelStyle: TextStyle(color: Colors.white),
            floatingLabelStyle: TextStyle(color: Colors.amber),
          ),

          //input yazsınıa stil vermek için: temayı nereden aldığını bulup degistirebiliriz.
          // textTheme:const TextTheme(titleMedium: TextStyle(color: Colors.amber)),

          //selection theme
          textSelectionTheme: const TextSelectionThemeData(
              cursorColor: Colors.amber, selectionColor: Colors.green),

          //
          appBarTheme: const AppBarTheme(
            //Tüm projenin appBar'ı için geçerlidir.
            backgroundColor: Colors.transparent,
            toolbarHeight: 100,
            elevation: 0,
            systemOverlayStyle: SystemUiOverlayStyle.light,
            centerTitle: true,
          ),
          progressIndicatorTheme:
              const ProgressIndicatorThemeData(color: Colors.amber)),

      //Home:
      home: const ListViewBuilderLearn(),
    );
  }
}

//Projenin ana ayarları bu sayfada belirlenir. Bu sayfaya extra bir görünüm yükü ya da MaterialApp verilmemelidir.
