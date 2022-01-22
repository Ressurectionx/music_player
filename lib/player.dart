import 'package:assets_audio_player/assets_audio_player.dart';import 'package:flutter/material.dart';import 'package:on_audio_query/on_audio_query.dart';import 'package:on_audio_query_platform_interface/details/on_audio_query_helper.dart';class Player extends StatefulWidget {  Player(this.songModel);  SongModel songModel;  @override  _PlayerState createState() => _PlayerState();}class _PlayerState extends State<Player> {  @override  void initState(){    super.initState();  }  audio(String data){    final assetsAudioPlayer = AssetsAudioPlayer();    assetsAudioPlayer.open(      Audio.file(data),    );  }  @override  Widget build(BuildContext context) {    SongModel model=widget.songModel;    return Scaffold(      body:  SafeArea(child: Stack(      alignment: Alignment.center,      children: [      Container(      decoration: const BoxDecoration(      gradient: LinearGradient(          begin: Alignment.topCenter,          end: Alignment.bottomRight,          stops: [0.6,1],          colors: [            Color(0xff4e03a7),            Color(0xff0a35ad)          ])    ),    ),    Column(      mainAxisAlignment: MainAxisAlignment.start,      crossAxisAlignment: CrossAxisAlignment.center,      children: [        const SizedBox(height: 20,),        Container(          height: 200,          width: 300,          decoration: BoxDecoration(            borderRadius: BorderRadius.circular(25),            border: Border.all(color: Colors.purple,width: 2),          ),          child: QueryArtworkWidget(            size: 10,            artworkHeight: 15,            artworkWidth: 15,            artworkClipBehavior: Clip.antiAliasWithSaveLayer,            id: widget.songModel.id,            type: ArtworkType.AUDIO,            artworkColor: Colors.white70,            artworkFit: BoxFit.fill,            quality: 100,            keepOldArtwork: false,          ),),        const SizedBox(height: 20,),         Padding(           padding: const EdgeInsets.all(8.0),           child: Text(model.title,style: const TextStyle(fontSize: 10,color: Colors.white),),         ),        const SizedBox(height: 35,),        Row(          mainAxisAlignment: MainAxisAlignment.center,          crossAxisAlignment: CrossAxisAlignment.center,          children:  [            Icon(Icons.skip_previous_sharp,size: 35,),            SizedBox(width: 25),            IconButton(              icon: Icon(Icons.play_circle_fill,size: 45), onPressed: () {              audio(widget.songModel.data);            },),            SizedBox(width: 25,),            Icon(Icons.skip_next,size: 35,),                      ],        )      ],)      ])),    );  }}