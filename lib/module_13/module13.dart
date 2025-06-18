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
Future<void>fetchData() async {
  await productcontroller.fetchProducts();
  print(productcontroller.products.length);
}
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    void productDialog({String ? id,String ? name,String ? img,int ? qty,int ? unitPrice,int ? totalPrice,required bool isupdate}) {
      TextEditingController productNameController = TextEditingController();
      TextEditingController productQTYController = TextEditingController();
      TextEditingController productImageController = TextEditingController();
      TextEditingController productUnitPriceController =
          TextEditingController();
      TextEditingController productTotalPriceController =
          TextEditingController();


      productNameController.text = name ?? '';
      productImageController.text = img ?? '';
      productQTYController.text = qty != null ? qty.toString() : '0';
      productUnitPriceController.text = unitPrice != null ? unitPrice.toString() : '0';
      productTotalPriceController.text = totalPrice != null ? totalPrice.toString() : '0';


      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text(isupdate ? 'Edit product' : 'Add product'),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextField(
                      controller: productNameController,
                      decoration: InputDecoration(labelText: 'Product name'),
                    ),
                    TextField(
                      controller: productImageController,
                      decoration: InputDecoration(labelText: 'Product image'),
                    ),
                    TextField(
                      controller: productQTYController,
                      decoration: InputDecoration(labelText: 'Product qty'),
                    ),
                    TextField(
                      controller: productUnitPriceController,
                      decoration:
                          InputDecoration(labelText: 'Product unit price'),
                    ),
                    TextField(
                      controller: productTotalPriceController,
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
                          onPressed: () async {

                              productcontroller.CreateUpdateProducts(
                                  productNameController.text,
                                  productImageController.text,
                                  int.parse(productQTYController.text.trim()),
                                  int.parse(
                                      productUnitPriceController.text.trim()),
                                  int.parse(
                                      productTotalPriceController.text.trim()),
                                id,isupdate
                              ) .then((value) async {
                                if (value) {
                                  await productcontroller.fetchProducts();
                                  setState(() {});
                                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                    content: Text(isupdate ? 'product updated ': 'Product Created'),
                                    duration: Duration(seconds: 2),
                                  ));
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                    content: Text('Something wrong...!'),
                                    duration: Duration(seconds: 2),
                                  ));
                                }
                              });

                              Navigator.pop(context);
                              await fetchData();
                              setState(() {

                              });



                          },
                          child: Text(isupdate ? 'Update Product': 'Add product'),
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
          itemCount: productcontroller.products.length,
          itemBuilder: (context, index) {
            var product = productcontroller.products[index];
            return ProductCard(
              onEdit: () {
                productDialog(name:product.productName ,img:product.img ,id:product.sId ,unitPrice:product.unitPrice ,totalPrice:product.totalPrice ,qty:product.qty ,isupdate: true);
              },
              onDelete: () {
                productcontroller.DeleteProducts(product.sId.toString())
                    .then((value) async {
                  if (value) {
                    await productcontroller.fetchProducts();
                    setState(() {});
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
        onPressed: () => productDialog(isupdate: false),
        child: Icon(Icons.add),
      ),
    );
  }
}
