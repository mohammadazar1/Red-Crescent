import 'package:flutter/material.dart';
import 'package:red5/role1.dart';
import 'package:red5/role2.dart';




class Burns extends StatelessWidget {

  const Burns({super.key});

  @override
  Widget build(BuildContext context) {
    int role=0;

        return MaterialApp(
          home: Directionality(
            textDirection: TextDirection.rtl,

            child: BurnsPage(),

          ),
          debugShowCheckedModeBanner: false,
        );
      }


}

class BurnsPage extends StatefulWidget {
  const BurnsPage({Key? key}) : super(key: key);

  @override

  State<BurnsPage> createState() => _BurnsState();
}

class _BurnsState extends State<BurnsPage> {
  @override
  int role=0;
  Widget build(BuildContext context) {
    //if (role ==1) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'الحروق',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),

      home: Scaffold(

        appBar: AppBar(
        title: Center(
        child: Text(
        'الحروق',
            style: const TextStyle(fontSize: 30)
        ),
        ),
        backgroundColor: Colors.red,
          leading: GestureDetector(
            child: Icon( Icons.arrow_back_ios, color: Colors.black,  ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyApp1()),
              );
            } ,
          ) ,
        ),

        body: new SingleChildScrollView(

        //Container(
        child: Column(


        //mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
        Image(
        image: AssetImage('images/Burns.jpg'),
        height: 100,
        width: 100,
        ),

        Text(
        // AbsordPointer(
        // absorbing: false,
        textDirection: TextDirection.rtl,

        "\nدور ضابط الاسعاف/ مستوى اول:",

        style: const TextStyle(fontSize: 30, color: Colors.blue),
        ),


        Text(
        textDirection: TextDirection.rtl,

        "\n1. افتح مجرى التنفس وحافظ عليه مفتوحا"
        "\n2. اعط الاكسجين وادعم التنفس"
        "\n3. اعط محلول وريدي ملحي NS وادعم الدورة الدموية"
        "\n4. برد مكان الحرق بواسطة الماء او المحلول الملحي"
        "\n5.ازل الملابس المحترقة بلطف"
        "\n6.	ازل المجوهرات والأدوات الضاغطة في مناطق الحرق وحوله"
        "\n7.	حافظ على حرارة المريض"
        "\n8.	افحص العلامات الحيوية  للمريض باستمرار"
        "\n9.	كن مستعدا لعمل الإنعاش القلبي الرئوي عند اللزوم"
        "\n10.	النقل الى المستشفى",

        style: const TextStyle(fontSize: 24),

        ),
        //  }

        ],
        ),
        ),
        //),

              ),
    );// }
  }


}