
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../model/user_model.dart';

List<Userdetails> chatlist = [
  Userdetails(
      name: "Brayant marley ",
      image:
          "https://image.shutterstock.com/image-photo/head-shot-portrait-close-smiling-260nw-1714666150.jpg",
     description: "",
      time: "40 minutes ago"),
  Userdetails(
      name: "john ",
      image:
          "https://i.pinimg.com/550x/83/2a/46/832a460b522c84fa9650c11face5927e.jpg",
      description: " ",
      time:"20 minutes ago"),
  Userdetails(
      name: "bryan marley ",
      image:
          "https://i.pinimg.com/550x/83/2a/46/832a460b522c84fa9650c11face5927e.jpg",
          description: "",      
      time:"19 minutes ago"),
  Userdetails(
      name: "bryan marley asked you to join a group",
      image:
          "https://annemariesegal.files.wordpress.com/2017/04/adobestock_86346713-cropped-young-woman-in-suit.jpg",
     description: "",
     time:"45 minutes ago"),
  Userdetails(
      name: "Kurt Thomas ",
      image:
          "https://image.shutterstock.com/image-photo/head-shot-portrait-close-smiling-260nw-1714666150.jpg",
     description: "",
      time:"45 minutes ago"),
  Userdetails(
      name: "griessa",
      image:
          "https://annemariesegal.files.wordpress.com/2017/04/adobestock_86346713-cropped-young-woman-in-suit.jpg",
     description: "",
      time:"45 minutes ago"),
      Userdetails(
      name: "john",
      image:
          "https://i.pinimg.com/550x/83/2a/46/832a460b522c84fa9650c11face5927e.jpg",
      description: " ",
      time:"20 minutes ago"),
       Userdetails(
      name: "bryan marley",
      image:
          "https://annemariesegal.files.wordpress.com/2017/04/adobestock_86346713-cropped-young-woman-in-suit.jpg",
     description: "",
     time:"45 minutes ago"),
     Userdetails(
      name: "Brayant marley",
      image:
          "https://image.shutterstock.com/image-photo/head-shot-portrait-close-smiling-260nw-1714666150.jpg",
     description: "",
      time:"45 minutes ago"),
];
class chattiles extends StatelessWidget {
  const chattiles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            // onTap: () {
            //   Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //       builder: (_) {
            //        return Container();
            //       },
            //     ),
            //   );
            // },
            leading:  CircleAvatar(
                backgroundImage: NetworkImage(chatlist[index].image),
              ),
            
            title: Text(chatlist[index].name),
            subtitle: Text(chatlist[index].description),
            trailing: Text("${chatlist[index].time}"),
          ),
        );
      },
      itemCount: chatlist.length,
    );
  }
}