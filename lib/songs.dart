import 'package:meta/meta.dart';

final demoPlaylist = new DemoPlaylist(
  songs: [
    new DemoSong(
      audioUrl: 'http://fs.w.kugou.com/201903191327/470353fcce99ec424fd2ac65e1ecfb54/G146/M07/02/14/cpQEAFwqEt2AMf4dACiMsITsnwk265.mp3',
      albumArtUrl: 'https://img.1ting.com/images/special/422/s300_1cb39177633fee8bf38b8e4c37e7b24d.jpg',
      songTitle: '流浪狗',
      artist: '林采欣',
    ),
    new DemoSong(
      audioUrl: 'https://api.soundcloud.com/tracks/402538329/stream?secret_token=s-tj3IS&client_id=LBCcHmRB8XSStWL6wKH2HPACspQlXg2P',
      albumArtUrl: 'https://i1.sndcdn.com/avatars-000344712337-f6po4d-t120x120.jpg',
      songTitle: 'Simply',
      artist: 'Kumbor',
    ),
    new DemoSong(
      audioUrl: 'https://api.soundcloud.com/tracks/266891990/stream?secret_token=s-tj3IS&client_id=LBCcHmRB8XSStWL6wKH2HPACspQlXg2P',
      albumArtUrl: 'https://i1.sndcdn.com/artworks-000165346750-e36z3a-t500x500.jpg',
      songTitle: 'Electro Monotony',
      artist: 'Nights & Weekends',
    ),
    new DemoSong(
      audioUrl: 'https://api.soundcloud.com/tracks/260578593/stream?secret_token=s-tj3IS&client_id=LBCcHmRB8XSStWL6wKH2HPACspQlXg2P',
      albumArtUrl: 'https://i1.sndcdn.com/artworks-000165346750-e36z3a-t500x500.jpg',
      songTitle: 'Debut Trance',
      artist: 'Nights & Weekends',
    ),
    new DemoSong(
      audioUrl: 'https://api.soundcloud.com/tracks/258735531/stream?secret_token=s-tj3IS&client_id=LBCcHmRB8XSStWL6wKH2HPACspQlXg2P',
      albumArtUrl: 'https://i1.sndcdn.com/artworks-000165346750-e36z3a-t500x500.jpg',
      songTitle: 'Debut',
      artist: 'Nights & Weekends',
    ),
    new DemoSong(
      audioUrl: 'https://api.soundcloud.com/tracks/9540352/stream?secret_token=s-tj3IS&client_id=LBCcHmRB8XSStWL6wKH2HPACspQlXg2P',
      albumArtUrl: 'https://i1.sndcdn.com/avatars-000215855222-tic5d8-t120x120.jpg',
      songTitle: 'Assn1-tribal-beat',
      artist: 'Matt',
    ),
  ],
);

class DemoPlaylist {

  final List<DemoSong> songs;

  DemoPlaylist({
    @required this.songs,
  });

}

class DemoSong {

  final String audioUrl;
  final String albumArtUrl;
  final String songTitle;
  final String artist;

  DemoSong({
    @required this.audioUrl,
    @required this.albumArtUrl,
    @required this.songTitle,
    @required this.artist,
  });

}