import 'package:flutter/material.dart';
import 'package:flutter_application_1/api/api_service.dart';
import 'package:flutter_application_1/model/webtoon_model.dart';
import 'package:flutter_application_1/view/webtoon_widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  Future<List<WebtoonModel>> webtoons = ApiService.getTodaysToons();

  @override
  Widget build(BuildContext context) {
    print(webtoons);
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            "오늘의 웹툰",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),
          foregroundColor: Colors.green,
          backgroundColor: Colors.white,
          elevation: 2,
        ),
        body: FutureBuilder(
          future: webtoons,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Expanded(child: makeList(snapshot))
                ],
              );
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        ));
  }

  ListView makeList(AsyncSnapshot<List<WebtoonModel>> snapshot) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: snapshot.data!.length,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      itemBuilder: (BuildContext context, int index) {
        var webtoon = snapshot.data![index];
        return WebtoonWidget(
            id: webtoon.id, thumb: webtoon.thumb, title: webtoon.title);
      },
      separatorBuilder: (BuildContext context, int index) => SizedBox(
        width: 40,
      ),
    );
  }
}
