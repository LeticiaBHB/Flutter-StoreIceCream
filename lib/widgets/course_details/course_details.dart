import 'package:flutter/material.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          width: MediaQuery.of(context).size.width < 700 ? 400 : 700,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Desenvolvedora \n  Flutter❤️',
                style: TextStyle(
                    fontWeight: FontWeight.w800, height: 0.9, fontSize: 60),
              ),
              SizedBox(height: 30),
              Expanded(
                child: Text(
                    'Como desenvolvedora mobile com expertise em Flutter, estou preparada para enfrentar desafios e criar soluções inovadoras para qualquer projeto de desenvolvimento mobile. Estou animada para continuar contribuindo para a comunidade de aplicativos móveis e transformando ideias em realidade por meio do poder desta tecnologia versátil e eficiente. Se você está em busca de uma profissional dedicada e apaixonada pelo desenvolvimento mobile, estou à disposição para colaborar em seu próximo projeto.',
                    style: TextStyle(fontSize: 21, height: 1.7)),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
