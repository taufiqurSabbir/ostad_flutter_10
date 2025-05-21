import 'package:flutter/material.dart';

class Alert extends StatefulWidget {
  const Alert({super.key});

  @override
  State<Alert> createState() => _AlertState();
}

class _AlertState extends State<Alert> {
  int age=0;
  void showAlertDialog(){
    showDialog(context: context, builder: (context)=>AlertDialog(
      title: Text('This is title'),
      content: Text('Are you sure ?'),
      actions: [
        TextButton(onPressed: (){
          setState(() {
            age = age+2;
          });
          print(age);
          Navigator.pop(context);
        }, child: Text('No')),
        TextButton(onPressed: (){
          setState(() {
            age = age+5;
          });
          print(age);
          Navigator.pop(context);
        }, child: Text('Yes'))
      ],
    ));
  }

  void showAlertDialogWithIcon(){
    showDialog(context: context, builder: (context)=>AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
      ),
      title: Text('Installation block'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Icon(Icons.warning,color: Colors.red,size: 40,),
              SizedBox(width: 5,),
              Text('Fudie Admin'),

            ],
          ),
          SizedBox(height: 10,),
          Text('Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec', style: TextStyle(color: Colors.grey),)

          
        ],
      ),
      actions: [
        TextButton(onPressed: (){
          Navigator.pop(context);
        }, child: Text('Ok'))
      ],
    ));
  }
  
  
  void showSimpleDialog(){
    showDialog(context: context, builder: (context)=>SimpleDialog(
      title: Text(
        'Simple dialog'
      ),
      children: [
        SimpleDialogOption(
          child: Text('Option-1'),
          onPressed: ()=>Navigator.pop(context),
        ),
        SimpleDialogOption(
          child: Text('Option-2'),
          onPressed: ()=>Navigator.pop(context),
        )
      ],
    ));
  }

  void showBottomSheetAlert(){
    showModalBottomSheet(context: context, builder: (context)=>Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Choose option',style: TextStyle(fontSize: 18),),
          ListTile(
            title: Text('Option-1'),
            onTap: ()=> Navigator.pop(context),
          ),
          ListTile(
            title: Text('Option-2'),
            onTap: ()=> Navigator.pop(context),
          ),
        ],
      ),

    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Alert'
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            ElevatedButton(onPressed: (){
              showAlertDialog();
            }, child: Text(
              'Alert Dialog'
            )),

            ElevatedButton(onPressed: (){
              showAlertDialogWithIcon();
            }, child: Text(
                'Alert Dialog with icon'
            )),

            ElevatedButton(onPressed: (){
              showSimpleDialog();
            }, child: Text(
                'Simple Dialog'
            )),

            ElevatedButton(onPressed: (){
              showBottomSheetAlert();
            }, child: Text(
                'Bottom sheet'
            )),
            
            
          ],
        ),
      ),
    );
  }
}
