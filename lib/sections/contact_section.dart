import 'dart:convert';

import 'package:flutter/material.dart';

import '../constants.dart';
import '../widgets/buttons/default_button.dart';
import 'dart:js' as js;
import '../widgets/service section/section_title.dart';
import 'package:http/http.dart' as http;

class ContactSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: const Color.fromRGBO(25, 25, 25, 1.0),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/bg_img_2.png"),
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: kDefaultPadding * 2.5),
          const SectionTitle(
            title: "Contact Me",
            subTitle: "For inquiries",
            color: Color(0xFF07E24A),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ContactForm(),
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      child: Image.asset('assets/images/linkedin-icon.png'),
                      onTap: () {
                        js.context.callMethod('open', [
                          'https://www.linkedin.com/in/mohamedmedhatabouelenin/'
                        ]);
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      child: Image.asset('assets/images/github-icon.png'),
                      onTap: () {
                        js.context.callMethod(
                            'open', ['https://github.com/Medhatt12']);
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      child: Image.asset('assets/images/instagram-icon.png'),
                      onTap: () {
                        js.context.callMethod(
                            'open', ['https://www.instagram.com/mmedhatt/']);
                      },
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ContactForm extends StatelessWidget {
  ContactForm({
    Key key,
  }) : super(key: key);
  final _formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final subjectController = TextEditingController();
  final descriptionController = TextEditingController();

  Future sendEmail({
    @required String name,
    @required String email,
    @required String subject,
    @required String description,
  }) async {
    final serviceId = 'service_249kk1c';
    final templateId = 'template_gv0kebj';
    final userId = 'OuTYAwx7qnbGYs9wC';

    final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: json.encode({
        'service_id': serviceId,
        'template_id': templateId,
        'user_id': userId,
        'template_params': {
          'user_name': name,
          'user_email': email,
          'user_subject': subject,
          'user_description': description,
        }
      }),
    );

    print(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 1110),
      margin: const EdgeInsets.only(top: kDefaultPadding * 2),
      padding: const EdgeInsets.all(kDefaultPadding * 3),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Form(
        key: _formKey,
        child: Wrap(
          spacing: kDefaultPadding * 2.5,
          runSpacing: kDefaultPadding * 1.5,
          children: [
            SizedBox(
              width: 470,
              child: TextFormField(
                controller: nameController,
                onChanged: (value) {},
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'This field can not be empty!';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  labelText: "Your Name",
                  hintText: "Enter Your Name",
                ),
              ),
            ),
            SizedBox(
              width: 470,
              child: TextFormField(
                controller: emailController,
                onChanged: (value) {},
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'This field can not be empty!';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  labelText: "Email Address",
                  hintText: "Enter your email address",
                ),
              ),
            ),
            SizedBox(
              width: 470,
              child: TextFormField(
                controller: subjectController,
                onChanged: (value) {},
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'This field can not be empty!';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  labelText: "Subject",
                  hintText: "This field can not be empty!",
                ),
              ),
            ),
            SizedBox(
              // height: 300,
              // TextField by default cover the height, i tryed to fix this problem but i cant
              child: TextFormField(
                controller: descriptionController,
                onChanged: (value) {},
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'This field can not be empty!';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  labelText: "Description",
                  //hintText: "Write some description",
                ),
              ),
            ),
            const SizedBox(height: kDefaultPadding * 2),
            Center(
              child: FittedBox(
                child: DefaultButton(
                  imageSrc: "assets/images/contact_icon.png",
                  text: "Contact Me!",
                  press: () {
                    if (_formKey.currentState.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('E-mail Sent!')),
                      );
                      sendEmail(
                        email: emailController.text,
                        description: descriptionController.text,
                        name: nameController.text,
                        subject: subjectController.text,
                      );
                      emailController.clear();
                      descriptionController.clear();
                      nameController.clear();
                      subjectController.clear();
                    }
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
