import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: (Container()),
          title: Text("Tarefas"),
        ),
        body: ListView(
          children: [
            Task("Aprender Flutter",
                "https://1.bp.blogspot.com/-2ivCJOjKWk0/YWhvY3KZ0iI/AAAAAAAALBc/1sAaoUb_AcwkewTHzVom8gcM823zxCjGgCLcBGAsYHQ/s0/image1.png"),
            Task("Andar de bike",
                "https://static.atletis.com.br/assets/base/b3b/43a/eea/beneficios-andar-bicicleta.jpg"),
            Task("Ler",
                "https://cdn.atenaeditora.com.br/documentos/blog_imagem/35/conversions/1-3-optimized.jpg"),
            Task("Meditar",
                "https://zenklub.com.br/blog/wp-content/uploads/2021/04/iStock-1139912908-1.jpg"),
            Task("Jogar",
                "https://ichef.bbci.co.uk/news/640/amz/worldservice/live/assets/images/2015/12/10/151210072131_video_game_thinkstock_640x360_thinkstock_nocredit.jpg"),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
        ),
      ),
    );
  }
}

class Task extends StatefulWidget {
  final String nome;
  final String foto;
  const Task(this.nome, this.foto, {super.key});

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int nivel = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            Container(
              color: Colors.blue,
              height: 140,
            ),
            Column(
              children: [
                Container(
                  color: Colors.white,
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        color: Colors.black26,
                        width: 72,
                        height: 100,
                        child: Image.network(
                          widget.foto,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 200,
                            child: Text(
                              widget.nome,
                              style: TextStyle(fontSize: 24),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                size: 15,
                                color: Colors.blue,
                              ),
                              Icon(
                                Icons.star,
                                size: 15,
                                color: Colors.blue,
                              ),
                              Icon(
                                Icons.star,
                                size: 15,
                                color: Colors.blue,
                              ),
                              Icon(
                                Icons.star,
                                size: 15,
                                color: Colors.blue,
                              ),
                              Icon(Icons.star,
                                  size: 15, color: Colors.blue[100]),
                              Icon(Icons.star,
                                  size: 15, color: Colors.blue[100]),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        height: 52,
                        width: 52,
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              nivel++;
                            });

                            print(nivel);
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Icon(Icons.arrow_drop_up),
                              Text(
                                "UP",
                                style: TextStyle(fontSize: 12),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Container(
                        child: LinearProgressIndicator(
                          color: Colors.white,
                          value: nivel / 10,
                        ),
                        width: 200,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Text(
                        "Nível $nivel",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
