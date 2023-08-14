import 'package:flutter/material.dart';
import 'package:red5/role1.dart';
import 'package:red5/role2.dart';



class Emergency_Delivery_r2 extends StatelessWidget {

  const Emergency_Delivery_r2({super.key});

  @override
  Widget build(BuildContext context) {
    //int role=0;

    return MaterialApp(
      home: Directionality(
        textDirection: TextDirection.rtl,

        child: Emergency_Delivery_r2Page(),

      ),
      debugShowCheckedModeBanner: false,
    );
  }


}

class Emergency_Delivery_r2Page extends StatefulWidget {
  const Emergency_Delivery_r2Page({Key? key}) : super(key: key);

  @override

  State<Emergency_Delivery_r2Page> createState() => _Emergency_Delivery_r2State();
}

class _Emergency_Delivery_r2State extends State<Emergency_Delivery_r2Page> {
  @override
  //int role=0;
  Widget build(BuildContext context) {
    //if (role ==1) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'الولادة الطارئة',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),

      home: Scaffold(

        appBar: AppBar(
          title: Center(
            child: Text(
                'الولادة الطارئة',
                style: const TextStyle(fontSize: 30)
            ),
          ),
          backgroundColor: Colors.red,
          leading: GestureDetector(
            child: Icon( Icons.arrow_back_ios, color: Colors.black,  ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>MyApp2()),
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
                image: AssetImage('images/Emergency Delivery.jpg'),
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

                    "\n1.	هديء الأم وخفف من روعها"
                    "\n2.	إفتح مجرى التنفس وحافظ عليه مفتوحاً"
                    "\n3.	أعط الأكسجين وادعم التنفس"
                    "\n4.	اعط محلول وريدي ملحي NS وادعم الدورة الدموية"
                    "\n5.	ضع الأم في وضعية مريحة ومناسبة وقدم كل الدعم الممكن لها خلال عملية الولادة"
                    "\n6.	حافظ على خصوصية الأم واحترامها"
                    "\n7.	راقب خروج المولود من قناة الولادة وأدعمه عند خروجه"
                    "\n8.	اعمل شفط لأنف وفم المولود عند ظهور رأسه. "
                    "\n9.	اربط الحبل السري للأم بواسطة ملقطين واقطع ما بينهما"
                    "\n10.	ضع المولود على صدر امه واستمر في مراقبته "
                    "\n11.	قيم المولود باستعمال مقياس ابكار، بعد الدقيقة الاولى والخامسة من ولادته"
                    "\n12.	اعمل مساج لرحم الام للمساعدة في خروج المشيمة"
                    "\n13.	تاكد من عدم وجود نزيف مهبلي شديد وراقب العلامات الحيوية للام باستمرار."
                    "\n14.	النقل للمستشفى",


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