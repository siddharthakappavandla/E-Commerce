import 'package:flutter/material.dart';
import 'package:flutter_app/main.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_picture;

  ProductDetails({
    this.product_detail_name,
    this.product_detail_picture,
    this.product_detail_new_price,
    this.product_detail_old_price,
  });

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.red,
        title: InkWell(
          onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>new HomePage()));},
            child:Text('ConnecTribe')),
        actions: <Widget>[
          new IconButton(
              icon: Icon(Icons.search, color: Colors.white), onPressed: () {}),
        ],
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
              height: 300.0,
              child: GridTile(
                child: Container(
                  color: Colors.white,
                  child: Image.asset(widget.product_detail_picture),
                ),
                footer: new Container(
                    color: Colors.white70,
                    child: ListTile(
                      leading: new Text(widget.product_detail_name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16.0)),
                      title: new Row(
                        children: <Widget>[
                          Expanded(
                              child: new Text(
                                "\$${widget.product_detail_old_price}",
                                style: TextStyle(color: Colors.black54,
                                    decoration: TextDecoration.lineThrough),)),
                          Expanded(
                              child: new Text(
                                "\$${widget.product_detail_new_price}",
                                style: TextStyle(color: Colors.red,
                                    fontWeight: FontWeight.bold),))
                        ],
                      ),
                    )
                ),
              )
          ),
          //========== the First buttons ==========
          Row(
            children: <Widget>[
              //============== Size button ===========
              Expanded(child: MaterialButton(onPressed: () {
                showDialog(context: context,builder: (context){
                  return new AlertDialog(
                    title: new Text("Size"),
                    content: new Text("Choose the size"),
                    actions: <Widget>[
                      new MaterialButton(onPressed: (){
                        Navigator.of(context).pop(context);
                      },
                      child: new Text("close"),)
                    ],
                  );
                });
              },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: <Widget>[
                    Expanded(child: new Text("Size")),
                    Expanded(child: new Icon(Icons.arrow_drop_down)),
                  ],
                ),),),
              //============== Colour button ===========
              Expanded(child: MaterialButton(onPressed: () {
                showDialog(context: context,builder: (context){
                  return new AlertDialog(
                    title: new Text("Color"),
                    content: new Text("Choose the color"),
                    actions: <Widget>[
                      new MaterialButton(onPressed: (){
                        Navigator.of(context).pop(context);
                      },
                        child: new Text("close"),)
                    ],
                  );
                });
              },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: <Widget>[
                    Expanded(child: new Text("Colour")),
                    Expanded(child: new Icon(Icons.arrow_drop_down)),
                  ],
                ),),),
              //============== Qty button ===========
              Expanded(child: MaterialButton(onPressed: () {
                showDialog(context: context,builder: (context){
                  return new AlertDialog(
                    title: new Text("Quantity"),
                    content: new Text("Choose the quantity"),
                    actions: <Widget>[
                      new MaterialButton(onPressed: (){
                        Navigator.of(context).pop(context);
                      },
                        child: new Text("close"),)
                    ],
                  );
                });
              },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: <Widget>[
                    Expanded(child: new Text("Qty")),
                    Expanded(child: new Icon(Icons.arrow_drop_down)),
                  ],
                ),),)
            ],
          ),
          //========== the Second buttons ==========
          Row(
            children: <Widget>[
              //============== Size button ===========
              Expanded(child: MaterialButton(onPressed: () {},
                color: Colors.red,
                textColor: Colors.white,
                elevation: 0.2,
                child: new Text ("Buy")
              ),),
              new IconButton(icon: Icon(Icons.add_shopping_cart,color: Colors.red), onPressed: (){}),
              new IconButton(icon: Icon(Icons.favorite_border,color: Colors.red), onPressed: (){}),
            ],
          ),
          Divider(),
          new ListTile(
            title: new Text("Product details"),
            subtitle: new Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
          ),
          Divider(),
          new Row(
            children: <Widget>[
              Padding(padding:const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                  child: new Text("Product name",style: TextStyle(color: Colors.grey),)),
              Padding(padding: EdgeInsets.all(5.0),
              child:new Text(widget.product_detail_name,style: TextStyle(fontWeight: FontWeight.bold),))
            ],
          ),
          //================ add condition of product (NEW/OLD) ==========
          new Row(
            children: <Widget>[
              Padding(padding:const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                  child: new Text("Product condition",style: TextStyle(color: Colors.grey),)),
              Padding(padding: EdgeInsets.all(5.0),
                  child:new Text("Condition X",style: TextStyle(fontWeight: FontWeight.bold),))
            ],
          ),
          Divider(),
          Padding(padding: const EdgeInsets.all(8.0),
          child:new Text("Similar products",style: TextStyle(fontWeight: FontWeight.bold),)),
          //======== Similar products section=================
          new Container(
            height: 340.0,
              child:Similar_products(),
          )
        ],
      ),
    );
  }
}
class Similar_products extends StatefulWidget {
  @override
  _Similar_productsState createState() => _Similar_productsState();
}

class _Similar_productsState extends State<Similar_products> {
  var product_list = [
    {
      "name": "x",
      "picture": "images/products/x.jpg",
      "old_price": 250,
      "price": 150,
    },
    {
      "name": "y",
      "picture": "images/products/y.png",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "z",
      "picture": "images/products/z.jpg",
      "old_price": 300,
      "price": 150,
    },
    {
      "name": "x1",
      "picture": "images/products/x1.jpg",
      "old_price": 250,
      "price": 150,
    },
    {
      "name": "y1",
      "picture": "images/products/y1.jpg",
      "old_price": 500,
      "price": 200,
    },
    {
      "name": "z1",
      "picture": "images/products/z1.jpg",
      "old_price": 300,
      "price": 150,
    },
    {
      "name": "x2",
      "picture": "images/products/x2.jpg",
      "old_price": 250,
      "price": 150,
    },
    {
      "name": "y2",
      "picture": "images/products/y2.jpg",
      "old_price": 600,
      "price": 450,
    },
    {
      "name": "z2",
      "picture": "images/products/z2.jpg",
      "old_price": 1000,
      "price": 500,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
        new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Similar_single_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}
class Similar_single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Similar_single_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Hero(
            tag: prod_name,
            child: Material(
              child: InkWell(
                onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                  //here we are passing product info to product_details(one of the page)
                    builder: (context) => new ProductDetails(
                      product_detail_name: prod_name,
                      product_detail_new_price: prod_price,
                      product_detail_old_price: prod_old_price,
                      product_detail_picture: prod_picture,
                    ))),
                child: GridTile(
                    footer: Container(
                        color: Colors.white70,
                        child: new Row(children: <Widget>[
                          Expanded(child: new Text(prod_name,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),)),
                          new Text("\$${prod_price}",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),)
                        ],)
                    ),
                    child: Image.asset(
                      prod_picture,
                      fit: BoxFit.cover,
                    )),
              ),
            )));
  }
}

