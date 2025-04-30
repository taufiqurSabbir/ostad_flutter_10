import 'package:flutter/material.dart';

class GridV extends StatelessWidget {
  const GridV({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Grid View"),
      ),
      // body: GridView.count(
      //   crossAxisCount: 2,
      //   padding: const EdgeInsets.all(10),
      //   crossAxisSpacing: 10,
      //   mainAxisSpacing: 10,
      //   children: List.generate(10, (index) {
      //     return Card(
      //       elevation: 3,
      //       shape: RoundedRectangleBorder(
      //         borderRadius: BorderRadius.circular(12),
      //       ),
      //       child: Padding(
      //         padding: const EdgeInsets.all(12),
      //         child: Column(
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children: [
      //             Row(
      //               children: [
      //                 const Icon(Icons.phone, color: Colors.blue),
      //                 const Spacer(),
      //                 const Icon(Icons.delete, color: Colors.red),
      //               ],
      //             ),
      //             const SizedBox(height: 16),
      //             const Text(
      //               "Taufiq",
      //               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      //             ),
      //             const Text("017929562"),
      //           ],
      //         ),
      //       ),
      //     );
      //   }),
      // ),

      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 25,
            mainAxisSpacing: 25,
          ),
          itemCount: 20,
          itemBuilder: (contex,index){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.orange,
                ),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.phone, color: Colors.white),
                    const SizedBox(height: 10,),
                    const Text("Send Money",style: TextStyle(color: Colors.white),),
                  ],
                ),
              ),
            );
          },


      ),
    );
  }
}
