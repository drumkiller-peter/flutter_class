import 'package:flutter/material.dart';
import 'package:plant_app/configs/di/service_locator.dart';
import 'package:plant_app/data/repository/valorant_repository.dart';
import 'package:plant_app/models/valorant_models/account_model.dart';

class VAccountPage extends StatefulWidget {
  const VAccountPage({super.key});

  @override
  State<VAccountPage> createState() => _VAccountPageState();
}

class _VAccountPageState extends State<VAccountPage> {
  bool isLoading = false;
  VAccountModel? vAccountModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.gamepad),
            iconSize: 24,
            color: Colors.amberAccent,
            onPressed: () async {
              setState(() {
                isLoading = true;
              });
              ValorantRepository vR = getIt.get<ValorantRepository>();
              VAccountModel? res =
                  await vR.getValorantUserData("亞亞亞亞亞亞亞亞亞亞亞亞亞亞亞亞", "skool");

              setState(() {
                isLoading = false;
                vAccountModel = res;
              });
            },
          )
        ],
      ),
      body: Column(
        children: [
          if (isLoading)
            const Center(child: CircularProgressIndicator())
          else if (vAccountModel != null) ...[
            Image.network(vAccountModel!.data!.card!.wide!),
            Text(vAccountModel!.data!.accountLevel!.toString()),
            Text(vAccountModel!.data!.name!.toString()),
            Text(vAccountModel!.data!.region!.toString()),
          ]
        ],
      ),
    );
  }
}
