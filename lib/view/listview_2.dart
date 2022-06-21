import 'package:flutter/material.dart';

import 'detail_view.dart';

// ignore: must_be_immutable
class CardCustom extends StatelessWidget{
  List<Map<String, dynamic>> guitarBrands;
  int index;
  CardCustom(this.guitarBrands, this.index, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 3,
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12))),
        child: SizedBox(
          width: 370,
          height: 75,
          child: ListTile(
          contentPadding: const EdgeInsets.fromLTRB(15, 10, 25, 0),
          title: Text(guitarBrands[index]['name']),
          leading: CircleAvatar(
                backgroundImage:
                    Image.network(guitarBrands[index]["image"]!).image,
              ),
        ),
        ),
      ),
    );
  } 
  }

class ListView2 extends StatelessWidget {
  ListView2({Key? key}) : super(key: key);
  final List<Map<String, dynamic>> guitarBrands = [
    {
      "image":
          "https://d1aeri3ty3izns.cloudfront.net/media/8/80634/1200/preview.jpg",
      "name": "Fender"
    },
    {
      "image":
          "https://1000marcas.net/wp-content/uploads/2020/02/Gibson-Logo.jpg",
      "name": "Gibson"
    },
    {
      "image":
          "https://1000marcas.net/wp-content/uploads/2019/12/Yamaha-Logo-1967.jpg",
      "name": "Yamaha"
    },
    {
      "image":
          "https://static.wixstatic.com/media/d44ccb_3afb1d19f22748f09a594da88b1a1e79~mv2.jpg/v1/fill/w_350,h_298,al_c,lg_1,q_80,enc_auto/taylorguitars-logo2%20Ithaca%20Guitar%20Works_.jpg",
      "name": "Taylor"
    },
    {
      "image":
          "https://i.pinimg.com/736x/d7/73/3d/d7733df6fe1db509a0bce44b5d3e1ad0.jpg",
      "name": "Martin"
    },
    {
      "image":
          "https://d1yjjnpx0p53s8.cloudfront.net/styles/logo-thumbnail/s3/092020/epiphone.png?7SEw70jDd3q1rB2U9Yi3Jc.Vih....T8&itok=UhZ1hBzJ",
      "name": "Epiphone"
    },
        {
      "image":
          "https://d1aeri3ty3izns.cloudfront.net/media/8/80634/1200/preview.jpg",
      "name": "Fender"
    },
    {
      "image":
          "https://1000marcas.net/wp-content/uploads/2020/02/Gibson-Logo.jpg",
      "name": "Gibson"
    },
    {
      "image":
          "https://1000marcas.net/wp-content/uploads/2019/12/Yamaha-Logo-1967.jpg",
      "name": "Yamaha"
    },
    {
      "image":
          "https://static.wixstatic.com/media/d44ccb_3afb1d19f22748f09a594da88b1a1e79~mv2.jpg/v1/fill/w_350,h_298,al_c,lg_1,q_80,enc_auto/taylorguitars-logo2%20Ithaca%20Guitar%20Works_.jpg",
      "name": "Taylor"
    },
    {
      "image":
          "https://i.pinimg.com/736x/d7/73/3d/d7733df6fe1db509a0bce44b5d3e1ad0.jpg",
      "name": "Martin"
    },
    {
      "image":
          "https://d1yjjnpx0p53s8.cloudfront.net/styles/logo-thumbnail/s3/092020/epiphone.png?7SEw70jDd3q1rB2U9Yi3Jc.Vih....T8&itok=UhZ1hBzJ",
      "name": "Epiphone"
    },
        {
      "image":
          "https://d1aeri3ty3izns.cloudfront.net/media/8/80634/1200/preview.jpg",
      "name": "Fender"
    },
    {
      "image":
          "https://1000marcas.net/wp-content/uploads/2020/02/Gibson-Logo.jpg",
      "name": "Gibson"
    },
    {
      "image":
          "https://1000marcas.net/wp-content/uploads/2019/12/Yamaha-Logo-1967.jpg",
      "name": "Yamaha"
    },
    {
      "image":
          "https://static.wixstatic.com/media/d44ccb_3afb1d19f22748f09a594da88b1a1e79~mv2.jpg/v1/fill/w_350,h_298,al_c,lg_1,q_80,enc_auto/taylorguitars-logo2%20Ithaca%20Guitar%20Works_.jpg",
      "name": "Taylor"
    },
    {
      "image":
          "https://i.pinimg.com/736x/d7/73/3d/d7733df6fe1db509a0bce44b5d3e1ad0.jpg",
      "name": "Martin"
    },
    {
      "image":
          "https://d1yjjnpx0p53s8.cloudfront.net/styles/logo-thumbnail/s3/092020/epiphone.png?7SEw70jDd3q1rB2U9Yi3Jc.Vih....T8&itok=UhZ1hBzJ",
      "name": "Epiphone"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
          itemCount: guitarBrands.length,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (_, index) {
            return ListTile(

              title: GestureDetector(
                  onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => DetailView(guitarBrands[index])),
                          );
                  },
                  child: Stack(
                    children: [
                     CardCustom(guitarBrands,index),
                    ])
                  ));
          }
        ));       
  }
}


showAlert(BuildContext context,guitarBrands,index) {  
  
  Widget okButton = TextButton(  
    child: const Center (child: Text("OK")),  
    onPressed: () {  
      Navigator.of(context).pop();  

    },  
  );  
  
  
  AlertDialog alert = AlertDialog(  
    content:  Image( image: Image.network(guitarBrands[index]["image"]!).image),
    actions: [  
      okButton,  
    ],  
  );  
  
  showDialog(  
    context: context,  
    builder: (BuildContext context) {  
      return alert;  
    },  
  );  
}  