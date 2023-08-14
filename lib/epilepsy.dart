import 'package:flutter/material.dart';
import 'package:red5/role1.dart';
import 'package:red5/role2.dart';



class Epilepsy extends StatelessWidget {

  const Epilepsy({super.key});

  @override
  Widget build(BuildContext context) {
    //int role=0;

    return MaterialApp(
      home: Directionality(
        textDirection: TextDirection.rtl,

        child: EpilepsyPage(),

      ),
      debugShowCheckedModeBanner: false,
    );
  }


}

class EpilepsyPage extends StatefulWidget {
  const EpilepsyPage({Key? key}) : super(key: key);

  @override

  State<EpilepsyPage> createState() => _EpilepsyState();
}

class _EpilepsyState extends State<EpilepsyPage> {
  @override
  //int role=0;
  Widget build(BuildContext context) {
    //if (role ==1) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '  نوبة الصرع',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),

      home: Scaffold(

        appBar: AppBar(
          title: Center(
            child: Text(
                '  نوبة الصرع ',
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
                image: AssetImage('images/Epilepsy.jpg'),
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

                    "\n1.	لا تتدخل لمنع التشنجات ولا تضع اي شيء في الفم "
                    "\nً2.	ابعد من حول المصاب كل ما يمكن أن يؤذيه"
                    "\n3.	بعد انتهاء التشنجات افحص مستوى الوعي و ABC"
                    "\n4.	ضع المريض في وضعية مريحة"
                    "\n5.	إفتح مجرى التنفس وحافظ عليه مفتوحاً"
                    "\n6.	أعط الأكسجين وادعم التنفس"
                    "\n7.	اعط محلول وريدي ملحي NS حسب الحاجة وادعم الدورة الدموية."
                    "\n8.	النقل الى المستشفى. ",


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