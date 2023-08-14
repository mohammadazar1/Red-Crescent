import 'package:flutter/material.dart';
import 'package:red5/role1.dart';
import 'package:red5/role2.dart';



class Fractures extends StatelessWidget {

  const Fractures({super.key});

  @override
  Widget build(BuildContext context) {
    //int role=0;

    return MaterialApp(
      home: Directionality(
        textDirection: TextDirection.rtl,

        child: FracturesPage(),

      ),
      debugShowCheckedModeBanner: false,
    );
  }


}

class FracturesPage extends StatefulWidget {
  const FracturesPage({Key? key}) : super(key: key);

  @override

  State<FracturesPage> createState() => _FracturesState();
}

class _FracturesState extends State<FracturesPage> {
  @override
  //int role=0;
  Widget build(BuildContext context) {
    //if (role ==1) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: ' الكسور',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),

      home: Scaffold(

        appBar: AppBar(
          title: Center(
            child: Text(
                '  الكسور ',
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
                image: AssetImage('images/Fractures.jpg'),
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
                    "\n2.	أعط الأكسجين وادعم التنفس"
                    "\n3.	ضع المريض في وضعية مريحة"
                    "\n4.	اعط محلول وريدي ملحي NS وادعم الدورة الدموية."
                    "\n5.	افحص العلامات الحيوية للمريض"
                    "\n6.	حدد مكان الإصابة وافحص الإحساس والحركة في العضو المصاب."
                    "\n7.	سيطر على النزيف اولا ثم ثبت الكسر بواسطة الجبيرة المناسبة."
                    "\n8.	افحص الإحساس والحركة للعضو المصاب باستمرار"
                    "\n9.	النقل الى المستشفى",



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