import 'package:flutter/material.dart';
import '../model/user_model.dart';
import 'package:mtestsocialmedia/main.dart';

List<Userdetails> prlist = [
  Userdetails(
      name: "Brayant marley tagged you and 85 others in a post",
      image:
          "https://image.shutterstock.com/image-photo/head-shot-portrait-close-smiling-260nw-1714666150.jpg",
     description: "",
      time: "40 minutes ago"),
  Userdetails(
      name: "john posted a photo after a while",
      image:
          "https://i.pinimg.com/550x/83/2a/46/832a460b522c84fa9650c11face5927e.jpg",
      description: " ",
      time:"20 minutes ago"),
  Userdetails(
      name: "bryan marley asked you to join a group",
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
      name: "Brayant marley tagged you and 85 others in a post",
      image:
          "https://image.shutterstock.com/image-photo/head-shot-portrait-close-smiling-260nw-1714666150.jpg",
     description: "",
      time:"45 minutes ago"),
  Userdetails(
      name: "griessa mentoined you in a comment",
      image:
          "https://annemariesegal.files.wordpress.com/2017/04/adobestock_86346713-cropped-young-woman-in-suit.jpg",
     description: "",
      time:"45 minutes ago"),
      Userdetails(
      name: "john posted a photo after a while",
      image:
          "https://i.pinimg.com/550x/83/2a/46/832a460b522c84fa9650c11face5927e.jpg",
      description: " ",
      time:"20 minutes ago"),
       Userdetails(
      name: "bryan marley asked you to join a group",
      image:
          "https://annemariesegal.files.wordpress.com/2017/04/adobestock_86346713-cropped-young-woman-in-suit.jpg",
     description: "",
     time:"45 minutes ago"),
     Userdetails(
      name: "Brayant marley tagged you and 85 others in a post",
      image:
          "https://image.shutterstock.com/image-photo/head-shot-portrait-close-smiling-260nw-1714666150.jpg",
     description: "",
      time:"45 minutes ago"),
];

class Notification_list extends StatelessWidget {
   Notification_list({Key? key} ) : super(key: key);
    String ttl="Notification";
    setstate()
    {
      Homescreen().titlee=ttl;
    }
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) {
                   return Container();
                  },
                ),
              );
            },
            leading: InkWell(
              onTap: (){
                showDialog(context: context, builder: (_)
                {
                return Container(
                  color: Colors.red,
                  height: 50,
                  width: 50,
                );
              }
              ); 
              },   
              child: CircleAvatar(
                backgroundImage: NetworkImage(prlist[index].image),
              ),
            ),
            title: Text(prlist[index].name),
            subtitle: Text(prlist[index].description),
            trailing: Text("${prlist[index].time}"),
          ),
        );
      },
      itemCount: prlist.length,
    );
  }
   
}
