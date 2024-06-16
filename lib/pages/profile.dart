import 'package:flutter/material.dart';
import 'package:food_app/widget/widget_support.dart';

class UserAccount extends StatefulWidget {
  const UserAccount({super.key});

  @override
  State<UserAccount> createState() => _UserAccountState();
}

class _UserAccountState extends State<UserAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 50, left: 20.0, right: 20.0, bottom: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 20.0),
              Center(
                child: CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage("images/coffee1.png"),
                ),
              ),
              const SizedBox(height: 20.0),
              Center(
                child: Column(
                  children: [
                    Text(
                      "Username",
                      style: AppWidget.semiBoldTextFieldStyleWhite(),
                    ),
                    const SizedBox(height: 10.0),
                    Text(
                      "useremail@example.com",
                      style: AppWidget.HeadlineTextFieldStyle(),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30.0),
              Center(
                child: GestureDetector(
                  onTap: () {
                    // Implement edit profile functionality
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
                    child: Text(
                      "Edit Profile",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontFamily: "Poppins",
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
