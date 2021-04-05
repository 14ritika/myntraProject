import 'package:flutter/material.dart';

class Products extends StatefulWidget{
  @override
  _ProductsState createState() => _ProductsState();

}

class _ProductsState extends State<Products> {
  var productList = [
     {
      "name": "Jeans",
      "picture": "img/products/jeans.jpg",
      "old_price": 920,
      "price": 500
    },
     {
      "name": "Jeans",
      "picture": "img/products/jeans1.jpg",
      "old_price": 720,
      "price": 500
    },
    
     {
      "name": "Jeans",
      "picture": "img/products/shoe.jpg",
      "old_price": 920,
      "price": 500
    },
     {
      "name": "Jeans",
      "picture": "img/products/shoe1.jpg",
      "old_price": 720,
      "price": 500
    },
     {
      "name": "Jeans",
      "picture": "img/products/dress.jpg",
      "old_price": 920,
      "price": 500
    },
     {
      "name": "Jeans",
      "picture": "img/products/dress2.jpg",
      "old_price": 720,
      "price": 500
    },
      {
      "name": "Jeans",
      "picture": "img/products/shoe.jpg",
      "old_price": 920,
      "price": 500
    },
     {
      "name": "Jeans",
      "picture": "img/products/shoe1.jpg",
      "old_price": 720,
      "price": 500
    }

    
  ];
  @override
  Widget build(BuildContext context){
    return GridView.builder(
      
      itemCount: productList.length,
      scrollDirection: Axis.vertical,
      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 15.0,
      ), 
      itemBuilder: (BuildContext context, int index){
        return SingleProd(
          prodName: productList[index]['name'],
          prodPicture: productList[index]['picture'],
          prodOldPrice: productList[index]['old_price'],
          prodPrice: productList[index]['price'],
        );
      });
  }
}


class SingleProd extends StatelessWidget {
  final prodName;
  final prodPicture;
  final prodOldPrice;
  final prodPrice;

  SingleProd({
   this.prodName,
   this.prodPicture,
   this.prodOldPrice,
   this.prodPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Card (
      child: Hero(
        tag: prodName, 
        child: Material(
          child: InkWell(onTap: (){},
          child: GridTile(
            footer: Container(
              color: Colors.white70,
              child: ListTile(
                leading: Text(prodName, 
                style:TextStyle(fontWeight: FontWeight.bold),
                ),
                title:Text("\$$prodPrice",
                style: TextStyle(color: Colors.pink, 
                fontWeight: FontWeight.w600),
                ),
                trailing: Icon(Icons.favorite_border,
                color: Colors.black,
                size:20),
                // trailing: Icon(Icons.near_me_rounded ,
                // color: Colors.black,
                // size:20),
                subtitle: Text(
                  "\$$prodOldPrice",
                style: TextStyle(color: Colors.pink[900], 
                fontWeight: FontWeight.w900, decoration: TextDecoration.lineThrough),
                ),
              )
            ),
            child: Image.asset(prodPicture,
            fit: BoxFit.cover,) 
            ,),
            ),
          ))
    );
  }
}
