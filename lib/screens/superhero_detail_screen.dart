import 'package:flutter/material.dart';
import 'package:superhero_app/components/powerstat_component.dart';
import 'package:superhero_app/data/model/superhero_detail_response.dart';

class SuperheroDetailScreen extends StatelessWidget {
  final SuperheroDetailResponse superhero;
  const SuperheroDetailScreen({super.key, required this.superhero});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Superhero detail")),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 32,
          bottom: 32,
          left: 16,
          right: 16,
        ),
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xFFD3D0D0),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.network(
                    superhero.url,
                    height: 300,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    alignment: Alignment(0, -0.6),
                  ),
                ),
                Text(
                  superhero.name,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Full name: ${superhero.fullname}",
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  "First appearance: ${superhero.firstAppearance}",
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
                SizedBox(
                  height: 150,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      PowerstatComponent(
                        title: "Power",
                        value: superhero.powerStatsResponse.power,
                      ),
                      PowerstatComponent(
                        title: "Strength",
                        value: superhero.powerStatsResponse.strength,
                      ),
                      PowerstatComponent(
                        title: "Speed",
                        value: superhero.powerStatsResponse.speed,
                      ),
                      PowerstatComponent(
                        title: "Durability",
                        value: superhero.powerStatsResponse.durability,
                      ),
                      PowerstatComponent(
                        title: "Intelligence",
                        value: superhero.powerStatsResponse.intelligence,
                      ),
                      PowerstatComponent(
                        title: "Combat",
                        value: superhero.powerStatsResponse.combat,
                      ),
                    ],
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
