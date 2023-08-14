import 'package:flutter/material.dart';
import 'package:red5/role1.dart';
import 'package:red5/role2.dart';



class Pneumothorax_r2 extends StatelessWidget {

  const Pneumothorax_r2({super.key});

  @override
  Widget build(BuildContext context) {
    //int role=0;

    return MaterialApp(
      home: Directionality(
        textDirection: TextDirection.rtl,

        child: Pneumothorax_r2Page(),

      ),
      debugShowCheckedModeBanner: false,
    );
  }


}

class Pneumothorax_r2Page extends StatefulWidget {
  const Pneumothorax_r2Page({Key? key}) : super(key: key);

  @override

  State<Pneumothorax_r2Page> createState() => _Pneumothorax_r2State();
}

class _Pneumothorax_r2State extends State<Pneumothorax_r2Page> {
  @override
  //int role=0;
  Widget build(BuildContext context) {
    //if (role ==1) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'تجمع الهواء في الصدر',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),

      home: Scaffold(

        appBar: AppBar(
          title: Center(
            child: Text(
                ' تجمع الهواء في الصدر',
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
                image: AssetImage('images/Pneumothorax.jpg'),
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

                    "\n1.	إفتح مجرى التنفس وحافظ عليه مفتوحاً"
                    "\n2.	أعط الأكسجين وادعم التنفس"
                    "\n3.	ضع المريض في وضعية مريحة"
                    "\n4.	اعط محلول وريدي ملحي NS وادعم الدورة الدموية"
                    "\n5.	افحص العلامات الحيوية للمريض "
                     "\n6.	في حال وجود جرح مفتوح شافط في جدار الصدر اغلقه بغيار غير منفذ وثبته بالبلاستر اللاصق من 3 جهات"
                    "\n7.	صل المريض بجهاز مراقبة القلب."
                    "\n8.	كن جاهزا لعمل التنبيب الرئوي"
                    "\n9.	كن مستعدا لعمل الإنعاش القلبي الرئوي."
                    "\n10.	راقب ظهور اعراض وعلامات الهواء ضاغط داخل صدر المريض Tension Pneumothorax مثل:"
                           "\na.	صعوبة تنفس شديد ،ازرقاق"
                           "\nb.	فقدان النبض الزندي وهبوط الضغط."
                           "\nc.	انخفاض مستو الوعي"
                           "\nd.	انتفاخ الصدر وسماع صوت عال (طبل) على الجهة المصابة."
                           "\ne.	انتفاخ اوردة الرقبة."
                    "\n11.	في هذه الحالة قم باجراء تفريغ هوائي من صدر المريض Chest Decompression بواسطة ابرة كبيرة توضع بشكل عمودي في الفراغ بين الضلع الثاني والثالث بموازاة منتصف عظمة الترقوة."
                    "\n12.	النقل للمستشفى",


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