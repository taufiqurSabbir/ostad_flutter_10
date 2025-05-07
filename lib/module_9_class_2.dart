import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class ModuleNineClassTwo extends StatefulWidget {
  const ModuleNineClassTwo({super.key});

  @override
  State<ModuleNineClassTwo> createState() => _ModuleNineClassTwoState();
}

class _ModuleNineClassTwoState extends State<ModuleNineClassTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Module 9 class 2'),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),

            Container(
              height: 200.h,
              width: 300.w,
              color: Colors.blueGrey,
            ),

            Text('This is responsive text',style: TextStyle(

              fontSize: 30.sp
            ),),

            FractionallySizedBox(
              widthFactor: 0.5,
              child: ElevatedButton(
                onPressed: (){},
                child: Text('Submit'),
              ),
            ),
            
            
            Container(

              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black,width: 2)
              ),

              height: 300,
              child: FractionallySizedBox(
                heightFactor: 0.5,
                child: Container(
                  color: Colors.blue,
                  child: Center(child: Text('This is fg')),
                ),
              ),
            ),

            Row(
              children: [
                Flexible(
                  flex: 2,
                  child: Container(
                    height: 100,
                    color: Colors.green,
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Container(
                    height: 100,
                    color: Colors.yellow,
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 100,
                    color: Colors.redAccent,
                  ),
                )
              ],
            ),

            Column(
              children: [
                Container(
                  height: 100,
                  color: Colors.deepPurpleAccent,
                ),
                Container(
                  height: 50,
                  color: Colors.blue,
                ),
              ],
            ),

           

            Row(
              children: [
                Expanded(
                  flex: 2,
                    child: ElevatedButton(onPressed: (){}, child: Text('person-1'))),
                Expanded(child: ElevatedButton(onPressed: (){}, child: Text('person-2'))),
                Expanded(child: ElevatedButton(onPressed: (){}, child: Text('person-3'))),
              ],
            ),


            AspectRatio(
                aspectRatio: 16 / 9,
              child: Container(
                color: Colors.orange,
              ),
            ),

          AspectRatio(
            aspectRatio: 9 / 16,
            child: Container(
              color: Colors.red,
            )
            ),


            AspectRatio(
                aspectRatio: 16 / 10,
                child: Container(
                  color: Colors.green,
                )
            ),

          ],
        ),
      ),
    );
  }
}
