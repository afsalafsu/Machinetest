
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../model/user_model.dart';

List<Userdetails> prlist = [
  Userdetails(
      name: "Brayant marley ",
      image:
          "https://images.unsplash.com/photo-1611068813580-b07ef920964b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8d2FsbHBhcGVyJTIwZm9yJTIwbW9iaWxlfGVufDB8fDB8fA%3D%3D&w=1000&q=80",
     description: "",
      time: "40 minutes ago"),
  Userdetails(
      name: "john",
      image:
          "https://image.shutterstock.com/image-photo/3d-wallpaper-swan-pink-tree-260nw-1687707232.jpg",
      description: " ",
      time:"20 minutes ago"),
  Userdetails(
      name: "bryan marley ",
      image:
          "https://wallpapercave.com/wp/wp1831319.jpg",
          description: "",      
      time:"19 minutes ago"),
  Userdetails(
      name: "Susan",
      image:
          "https://wallpaperaccess.com/full/632199.jpg",
     description: "",
     time:"45 minutes ago"),
  Userdetails(
      name: "Nick jonas",
      image:
          "https://wallpaperaccess.com/full/158521.jpg",
     description: "",
      time:"45 minutes ago"),
  Userdetails(
      name: "griessa mentoined you in a comment",
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRp0-c7PZi3hJulH_fnbH3UfG_4iX6ULwsuKQ&usqp=CAU",
     description: "",
      time:"45 minutes ago"),
      Userdetails(
      name: "john posted a photo after a while",
      image:
          "https://media.architecturaldigest.com/photos/60f1a6ffc625c18d34297769/master/pass/AD0220_FRIEDMAN_6.jpg",
      description: " ",
      time:"20 minutes ago"),
       Userdetails(
      name: "bryan marley asked you to join a group",
      image:
          "https://wallpapercave.com/dwp2x/gLCTnod.jpg",
     description: "",
     time:"45 minutes ago"),
     Userdetails(
      name: "Brayant marley tagged you and 85 others in a post",
      image:
          "https://wallpaperaccess.com/full/158521.jpg",
     description: "",
      time:"45 minutes ago"),
];
class Feed_page extends StatelessWidget {
  const Feed_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Column(
          children: [
              ListTile(
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
                leading: 
                   CircleAvatar(
                    backgroundImage: NetworkImage(prlist[index].image),
                  ),
                
                title: Text(prlist[index].name),
                //subtitle: Text(prlist[index].description),
                trailing: Text("${prlist[index].time}"),
                
              ),
              Card(
              child: Image(image: NetworkImage(prlist[index].image)) 
            ),
              
            
          ],
        );
      },
      itemCount: prlist.length,
    );
  }
}