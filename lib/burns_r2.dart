import 'package:flutter/material.dart';
import 'package:red5/role1.dart';
import 'package:red5/role2.dart';



class Burns_r2 extends StatelessWidget {

  const Burns_r2({super.key});

  @override
  Widget build(BuildContext context) {
    int role=0;

    return MaterialApp(
      home: Directionality(
        textDirection: TextDirection.rtl,

        child: BurnsPage_r2(),

      ),
      debugShowCheckedModeBanner: false,
    );
  }


}

class BurnsPage_r2 extends StatefulWidget {
  const BurnsPage_r2({Key? key}) : super(key: key);

  @override

  State<BurnsPage_r2> createState() => _BurnsState_r2();
}

class _BurnsState_r2 extends State<BurnsPage_r2> {
  @override
  //int role=0;
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
                MaterialPageRoute(builder: (context) => MyApp2()),
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

                "\nدور ضابط الاسعاف/ مستوى ثان:",

                style: const TextStyle(fontSize: 30, color: Colors.blue),
              ),


              Text(
                textDirection: TextDirection.rtl,

                "\n1.إفتح مجرى التنفس وحافظ عليه مفتوحاً."
                    "\n2.	أعط الأكسجين وادعم التنفس."
                    "\n3.	اعط محلول وريدي ملحي NS وادعم الدورة الدموية."
                    "\n4.	برد مكان الحرق بواسطة الماء أو المحلول الملحي"
                    "\n5.	ازل الملابس المحترقة بلطف"
                    "\n6.	ازل المجوهرات والأدوات الضاغطة في مناطق الحرق وحوله"
                    "\n7.	حافظ على حرارة المريض"
                    "\n8.	افحص العلامات الحيوية للمريض باستمرار"
                    "\n9.	أعط مسكنات الألم المعتمدة في البروتوكول من خلال استشارة "
                    "\n10.	صل المريض بجهاز مراقبة القلب."
                    "\n11.	كن جاهزا لعمل التنبيب الرئوي عند اللزوم."
                    "\n12.	كن مستعدا لعمل الإنعاش القلبي الرئوي عند اللزوم"
                    "\n13.	النقل الى المستشفى.",

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