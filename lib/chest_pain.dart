import 'package:flutter/material.dart';
import 'package:red5/role1.dart';
import 'package:red5/role2.dart';



class Chest_Pain extends StatelessWidget {

  const Chest_Pain({super.key});

  @override
  Widget build(BuildContext context) {
    //int role=0;

    return MaterialApp(
      home: Directionality(
        textDirection: TextDirection.rtl,

        child: Chest_PainPage(),

      ),
      debugShowCheckedModeBanner: false,
    );
  }


}

class Chest_PainPage extends StatefulWidget {
  const Chest_PainPage({Key? key}) : super(key: key);

  @override

  State<Chest_PainPage> createState() => _Chest_PainState();
}

class _Chest_PainState extends State<Chest_PainPage> {
  @override
  //int role=0;
  Widget build(BuildContext context) {
    //if (role ==1) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: ' ألم الصدر لدى الكبار',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),

      home: Scaffold(

        appBar: AppBar(
          title: Center(
            child: Text(
                '  ألم الصدر لدى الكبار ',
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
                image: AssetImage('images/Chest Pain.jpg'),
                height: 100,
                width: 100,
              ),

              Text(
                // AbsordPointer(
                // absorbing: false,
                textDirection: TextDirection.rtl,

                "\nدور ضابط الاسعاف/ مستوى أول:",

                style: const TextStyle(fontSize: 30, color: Colors.blue),
              ),


              Text(
                textDirection: TextDirection.rtl,

                    "\n1.	إفتح مجرى التنفس وحافظ عليه مفتوحاً"
                    "\nً2.	أعط الأكسجين وادعم التنفس"
                    "\n3.	ضع المريض في وضعية مريحة وطمئنه وهدىء من روعه"
                    "\n4.	فك الملابس الضاغطة والتي تعيق التنفس"
                    "\n5.	اعط محلول وريدي ملحي NS وادعم الدورة الدموية.ً"
                    "\n6.	افحص العلامات الحيوية للمريض باستمرار."
                    "\n7.	خذ التاريخ المرضي Sample "
                    "\n8.	حدد طبيعة الألم بواسطة المختصر OPQRST"
                    "\n9.	أعط المريض 3 حبات اسبرين مجموع الجرعة 325 ملغم مضغا عن طريق الفم"
                    "\n10.	ساعد المريض على تناول دواء النيترو جلسرين (كورديل) 5 ملغم تحت اللسان في حال وصفه له الطبيب شريطة أن يكون ضغط الدم الإنقباضي اكثر من 90 ملم زئبق"
                    "\n11.	كن مستعدا لعمل الإنعاش القلبي الرئوي"
                    "\n12.	النقل الى المستشفى",


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