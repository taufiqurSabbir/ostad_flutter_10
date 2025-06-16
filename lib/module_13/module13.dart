import 'package:flutter/material.dart';
import 'package:ostad_batch_10/module_13/ProductController.dart';
import 'package:ostad_batch_10/module_13/widget/productCard.dart';

class Module13 extends StatefulWidget {
  const Module13({super.key});

  @override
  State<Module13> createState() => _Module13State();
}

class _Module13State extends State<Module13> {
  final Productcontroller productcontroller = Productcontroller();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      productcontroller.fetchProducts();
    });
  }

  @override
  Widget build(BuildContext context) {
    void productDialog() {
      TextEditingController productNameController = TextEditingController();
      TextEditingController productQTYController = TextEditingController();
      TextEditingController productImageController = TextEditingController();
      TextEditingController productUnitPriceController =
          TextEditingController();
      TextEditingController productTotalPriceController =
          TextEditingController();

      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text('Add product'),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextField(
                      decoration: InputDecoration(labelText: 'Product name'),
                    ),
                    TextField(
                      decoration: InputDecoration(labelText: 'Product image'),
                    ),
                    TextField(
                      decoration: InputDecoration(labelText: 'Product qty'),
                    ),
                    TextField(
                      decoration:
                          InputDecoration(labelText: 'Product unit price'),
                    ),
                    TextField(
                      decoration: InputDecoration(labelText: ' total price'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('Close')),
                        SizedBox(
                          width: 5,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text('Add product'),
                        )
                      ],
                    )
                  ],
                ),
              ));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Product CRUD'),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            childAspectRatio: 0.6,
          ),
          itemCount: 10,
          itemBuilder: (context, index) {
            var product = productcontroller.products[index];
            return ProductCard(
              onEdit: () {
                productDialog();
              },
              onDelete: () {
                productcontroller.DeleteProducts(product.sId.toString())
                    .then((value) async {
                  if (value) {
                    await  productcontroller.fetchProducts();
                   setState(() {

                   });
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('Product Deleted'),
                      duration: Duration(seconds: 2),
                    ));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('Something wrong...!'),
                      duration: Duration(seconds: 2),
                    ));
                  }
                });
              },
              product: product,
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () => productDialog(),
        child: Icon(Icons.add),
      ),
    );
  }
}
