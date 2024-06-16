import 'package:flutter/material.dart';
import 'package:food_app/pages/details.dart';
import 'package:food_app/widget/widget_support.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool coffee1 = false, coffee2 = false, coffee3 = false, coffee4 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(
            top: 50.0,
            left: 20.0,
            right: 20.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Home Shivam',
                    style: AppWidget.boldTextFieldStyle(),
                  ),
                  Container(
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Icon(
                      Icons.add_shopping_cart_outlined,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              Text(
                'Delicious Coffee',
                style: AppWidget.HeadlineTextFieldStyle(),
              ),
              const SizedBox(height: 10.0),
              Text(
                'Discover and Get Great Food',
                style: AppWidget.LightTextFieldStyle(),
              ),
              const SizedBox(height: 20.0),
              showItem(),
              const SizedBox(height: 30.0),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    coffeeCard(context, "images/coffee1.png", "Cappuccino", "Delightful taste", 5.00),
                    const SizedBox(width: 15.0),
                    coffeeCard(context, "images/coffee2.png", "Cappuccino", "Delightful taste", 5.00),
                    const SizedBox(width: 15.0),
                    coffeeCard(context, "images/coffee3.png", "Cappuccino", "Delightful taste", 5.00),
                  ],
                ),
              ),
              const SizedBox(height: 30.0),
              coffeeDetailCard(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget coffeeCard(BuildContext context, String image, String title, String subtitle, double price) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => const Details()));
      },
      child: Container(
        margin: const EdgeInsets.all(4),
        child: Material(
          elevation: 5.0,
          borderRadius: BorderRadius.circular(20),
          child: Container(
            padding: const EdgeInsets.all(14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  image,
                  height: 150,
                  width: 150,
                  fit: BoxFit.cover,
                ),
                Text(
                  title,
                  style: AppWidget.semiBoldTextFieldStyleWhite(),
                ),
                const SizedBox(height: 5.0),
                Text(
                  subtitle,
                  style: AppWidget.LightTextFieldStyle(),
                ),
                const SizedBox(height: 5.0),
                Text(
                  "\$ $price",
                  style: AppWidget.semiBoldTextFieldStyleWhite(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

 Widget coffeeDetailCard(BuildContext context) {
  return Container(
    margin: const EdgeInsets.only(right: 5.0),
    child: Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(20),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "images/coffee4.png",
              height: 120,
              width: 120,
              fit: BoxFit.cover,
            ),
            const SizedBox(width: 20.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Vanilla flavoured coffee latte",
                    style: AppWidget.semiBoldTextFieldStyleWhite(),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 5.0),
                  Text(
                    "sugar honey syrup added.",
                    style: AppWidget.LightTextFieldStyle(),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 5.0),
                  Text(
                    "\$ 5.00",
                    style: AppWidget.semiBoldTextFieldStyleWhite(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

  Widget showItem() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        coffeeIcon("images/1.png", coffee1, () {
          setState(() {
            coffee1 = true;
            coffee2 = false;
            coffee3 = false;
            coffee4 = false;
          });
        }),
        coffeeIcon("images/2.png", coffee2, () {
          setState(() {
            coffee1 = false;
            coffee2 = true;
            coffee3 = false;
            coffee4 = false;
          });
        }),
        coffeeIcon("images/3.png", coffee3, () {
          setState(() {
            coffee1 = false;
            coffee2 = false;
            coffee3 = true;
            coffee4 = false;
          });
        }),
        coffeeIcon("images/4.png", coffee4, () {
          setState(() {
            coffee1 = false;
            coffee2 = false;
            coffee3 = false;
            coffee4 = true;
          });
        }),
      ],
    );
  }

  Widget coffeeIcon(String imagePath, bool isSelected, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          decoration: BoxDecoration(
            color: isSelected ? Colors.black : Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.all(8),
          child: Image.asset(
            imagePath,
            height: 50,
            width: 50,
            fit: BoxFit.cover,
            color: isSelected ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}
