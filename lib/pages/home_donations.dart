import 'package:flutter/material.dart';

import '../constants.dart';

class HomeDonations extends StatefulWidget {
  const HomeDonations({super.key});

  @override
  State<HomeDonations> createState() => _HomeDonationsState();
}

class _HomeDonationsState extends State<HomeDonations> {
  final _formfield = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  final amountController = TextEditingController();
  final methodController = TextEditingController();
  final detailController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("امنح منزلًا لمن يحتاجه وابنِ جسرًا من الأمل والإنسانية!",style: TextStyle(fontSize: 12),),
        centerTitle: true,
        backgroundColor: kPrimaryColor,
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
          child: Form(
            key: _formfield,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/donations/home.jpg",
                  height: 200,
                ),
                TextFormField(
                  keyboardType: TextInputType.name,
                  controller:nameController ,
                  decoration:  InputDecoration(
                    labelText: "الاسم الكامل",
                    prefixIcon: Icon(Icons.person,
                      color: kPrimaryColor,
                    ),
                    //border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if(value!.isEmpty){
                      return "هذا الحقل ضروري";
                    }
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  keyboardType: TextInputType.name,
                  controller: phoneController,
                  decoration:  InputDecoration(
                    labelText: "رقم الهاتف",
                    //border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.phone,
                      color: kPrimaryColor,
                    ),
                  ),
                  validator: (value) {
                    if(value!.isEmpty){
                      return "هذا الحقل ضروري";
                    }
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  keyboardType: TextInputType.name,
                  controller: emailController,
                  decoration:  InputDecoration(
                    labelText: " البريد الإلكتروني",
                    prefixIcon: Icon(Icons.email,
                      color: kPrimaryColor,
                    ),
                    //border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if(value!.isEmpty){
                      return "هذا الحقل ضروري";
                    }
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  keyboardType: TextInputType.name,
                  controller: amountController,
                  decoration: const InputDecoration(
                    labelText: "نوع المسكن",
                    // border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if(value!.isEmpty){
                      return "هذا الحقل ضروري";
                    }
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  keyboardType: TextInputType.name,
                  controller:methodController ,
                  decoration:  const InputDecoration(
                    labelText: "حالة المسكن",
                    //border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if(value!.isEmpty){
                      return "هذا الحقل ضروري";
                    }
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  keyboardType: TextInputType.name,
                  controller: detailController,
                  decoration: const InputDecoration(
                    labelText: " مكان المسكن",
                    //border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if(value!.isEmpty){
                      return "هذا الحقل ضروري";
                    }
                  },
                ),
                const SizedBox(
                  height: 40,
                ),
                InkWell(
                  onTap: () {
                    if(_formfield.currentState!.validate()){
                      //print("Success");
                      nameController.clear();
                      phoneController.clear();
                      emailController.clear();
                      amountController.clear();
                      detailController.clear();
                      methodController.clear();
                    }
                  },
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Center(
                      child: Text(
                        "إرسال",
                        style: TextStyle(
                          // color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}