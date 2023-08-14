import 'package:flutter/material.dart';
import 'package:red5/role1.dart';
import 'package:red5/role2.dart';



class Endotracheal_Intubation_r2 extends StatelessWidget {

  const Endotracheal_Intubation_r2({super.key});

  @override
  Widget build(BuildContext context) {
    //int role=0;

    return MaterialApp(
      home: Directionality(
        textDirection: TextDirection.rtl,

        child: Endotracheal_Intubation_r2Page(),

      ),
      debugShowCheckedModeBanner: false,
    );
  }


}

class Endotracheal_Intubation_r2Page extends StatefulWidget {
  const Endotracheal_Intubation_r2Page({Key? key}) : super(key: key);

  @override

  State<Endotracheal_Intubation_r2Page> createState() => _Endotracheal_Intubation_r2State();
}

class _Endotracheal_Intubation_r2State extends State<Endotracheal_Intubation_r2Page> {
  @override
  //int role=0;
  Widget build(BuildContext context) {
    //if (role ==1) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: ' التنبيب الرئوي',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),

      home: Scaffold(

        appBar: AppBar(
          title: Center(
            child: Text(
                ' التنبيب الرئوي ',
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
                image: AssetImage('images/Endotracheal Intubation1.jpg'),
                height: 100,
                width: 100,
              ),

              Text(
                // AbsordPointer(
                // absorbing: false,
                textDirection: TextDirection.rtl,

                "\nيتم اجراء التنبيب الرئوي للحفاظ على مجرى التنفس والتزويد بالأكسجين في حال فقدان الوعي التام وغياب ال Gag reflex :",

                style: const TextStyle(fontSize: 24),
              ),


              Text(
                textDirection: TextDirection.rtl,

                "\nملاحظة: في حال عدم استجابة المريض يجب الأخذ بعين الإعتبار فحص مستوى سكر الدم لديه قبل التنبيب.",



                style: const TextStyle(fontSize: 24, color: Colors.green),

              ),
              Text(
                textDirection: TextDirection.rtl,

             "\nللتنبيب حضر الأدوات التالية:",

                style: const TextStyle(fontSize: 30),

              ),
              Text(
                textDirection: TextDirection.rtl,

                "\n1.	الامبو باج"
                "\n2.	سماعة طبيب Stethoscope"
                "\n3.	الانبوب الهوائي الفموي Oral airway"
                "\n4.	السائل الوريدي والابرة الوريدية"
                "\n5.	البلاستر اللاصق"
                "\n6.	جهاز مراقبة الاكسجين في الدم"
                "\n7.	جهاز الشفط"
                "\n8.	ادوات التنبيب (انبوب رئوي مناسب، منظار الحلق، سيرنج، جل، Stylet.....الخ).",

                style: const TextStyle(fontSize: 24),

              ),
              Text(
                textDirection: TextDirection.rtl,

                "\nتنفيذ عملية التنبيب:",

                style: const TextStyle(fontSize: 30),

              ),
              Text(
                textDirection: TextDirection.rtl,

                    "\n1.	افتح مجرى الهواء واشفط المفرزات الموةجودة فيه"
                    "\n2.	ادخل منظار الحلق عبر فمه"
                    "\n3.	شاهد وحدد مكان احباله الصوتية (اذا لم تشاهد اعمل مناوارة سيلك)."
                    "\n4.	ادخل انبوب التنبيب عبر احباله الصوتية باتجاه القصبة الهوائية"
                    "\n5.	انفخ بالون الانبوب بواسطة سيرنج"
                    "\n6.	اعط نفس من الامبو وراقب ارتفاع صدر المريض"
                    "\n7.	اسمع صوت دخول الهواء الى رئتي  ومعدة المريض"
                    "\n8.	لاحظ عمق الانبوب  في مجرى تنفس المريض وثبته في مكانه المناسب."
                    "\n9.	صل المريض بجهاز قياس نسبة الكسجين في الدم واعد فحص  مكان الانبوب باستمرار."
                    "\n10.	انقل الى المستشفى",

                style: const TextStyle(fontSize: 24),

              ),
              Text(
                textDirection: TextDirection.rtl,

                "\nملاحظة: عند الشك باصابة الرقبة، ثبت رقبة المريض وامنع اي حركة زائدة خلال عملية التنبيب",

                style: const TextStyle(fontSize: 24, color:Colors.green),

              ),
              Text(
                textDirection: TextDirection.rtl,

                "\nعلامات تدل على صعوبة التنبيب:",

                style: const TextStyle(fontSize: 30),

              ),
              Text(
                textDirection: TextDirection.rtl,

                    "\n1.	مريض سمين ذو رقبة قصيرة"
                    "\n2.	اصابة مجرى الهواء لدى المريض"
                    "\n3.	صغر اوة كبر حجم الفك السفلي للمريض."
                    "\n4.	كسر الفك السفلي للمريض."
                    "\n5.	الاطفال (بسبب حجم اللسان الكبير)."
                    "\n6.	حرق مجرى الهواء."
                    "\n7.	اصابة فقرات العنق."
                    "\n8.	المريض اثناء نوبة التشنجات",

                style: const TextStyle(fontSize: 24),

              ),
              Text(
                textDirection: TextDirection.rtl,

                "\nملاحظات:",

                style: const TextStyle(fontSize: 30, color:Colors.green),

              ),
              Text(
                textDirection: TextDirection.rtl,

                    "\n1.	يجب ان لا تستغرق عملية التنبيب اكثر من 30 ثانية."
                    "\n2.	اطالة عملية التنبيب تؤدي الى نقص الاكسجين في الدم."
                    "\n3.	أعط الكثير من الاكسجين  بعد  كل محاولة  تنبيب فاشلة."
                    "\n4.	إذا فشلت محاولة التنبيب للمرة الثالثة لا تحاول مجددا وضع الأنبوب الفموى Oral Airway وانقل بسرعة للمستشفى",

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