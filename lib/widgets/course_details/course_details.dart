import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        var textAligment = sizingInformation.deviceScreenType == DeviceScreenType.Desktop
            ? TextAlign.left
            : TextAlign.center;
        double titleSize = sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? 50
            : 80;
        double descriptionSize = sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? 16
            : 21;
       return Container(
          width: 600,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  'Bem vindo!!!',
                  style: TextStyle(
                      fontWeight: FontWeight.w800, height: 0.9, fontSize: titleSize),
                  textAlign: textAligment,
                ),
              ),
              SizedBox(height: 30),
              Text(
                  'Estou preparada para enfrentar desafios e criar soluções inovadoras para qualquer projeto de desenvolvimento. Estou animada para continuar contribuindo para a comunidade e transformando ideias em realidade por meio do poder desta tecnologia versátil e eficiente. Se você está em busca de uma profissional dedicada e apaixonada pelo desenvolvimento, estou à disposição para colaborar em seu próximo projeto.',
                  style: TextStyle(
                      fontSize: descriptionSize,
                      height: 1.7),
              textAlign: textAligment,
              ),
            ],
          ),
        );
      }
    );
  }
}
