import 'package:flutter/material.dart';
import 'package:red5/role1.dart';
import 'package:red5/role2.dart';


class Heat_Stroke extends StatelessWidget {

  const Heat_Stroke({super.key});

  @override
  Widget build(BuildContext context) {
    //int role=0;

    return MaterialApp(
      home: Directionality(
        textDirection: TextDirection.rtl,

        child: Heat_StrokePage(),

      ),
      debugShowCheckedModeBanner: false,
    );
  }


}

class Heat_StrokePage extends StatefulWidget {
  const Heat_StrokePage({Key? key}) : super(key: key);

  @override

  State<Heat_StrokePage> createState() => _Heat_StrokeState();
}

class _Heat_StrokeState extends State<Heat_StrokePage> {
  @override
  //int role=0;
  Widget build(BuildContext context) {
    //if (role ==1) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: ' ضربة الشمس',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),

      home: Scaffold(

        appBar: AppBar(
          title: Center(
            child: Text(
                ' ضربة الشمس',
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
                image: AssetImage('images/Heat Stroke2.jpg'),
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

                    "\n1.	انقل المصاب الى منطقة ظل وجيدة التهوية "
                    "\n2.	إفتح مجرى التنفس وحافظ عليه مفتوحاً"
                    "\n3.	اخفض درجة حرارة المصاب برش الماء عليه وتعريضه لتيار هوائي"
                    "\n4.أعط الأكسجين وادعم التنفس"
                    "\n5.	اذا كان المصاب يستطيع البلع أعطه ماء بارد"
                    "\n6.	اعط محلول ملحي NS بغزارة عن طريق الوريد"
                    "\n7.	كن مستعدا لعمل الإنعاش القلبي الرئوي."
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