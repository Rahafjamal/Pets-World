import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri caturl = Uri.parse(
    'https://th.bing.com/th/id/R.e76899927521d855a16619bf1f8c1ad2?rik=LPsKOYuGwRo3WQ&riu=http%3a%2f%2fcompanioncarepets.com%2fwp-content%2fuploads%2f2017%2f08%2fvaccination-schedule-cats.png&ehk=lW1wa5NSENK1UqbN9UxOiKBDplvK7ws4DgmLwBZkMZE%3d&risl=&pid=ImgRaw&r=0');
final Uri dogurl = Uri.parse(
    'https://mypetfriends2012.files.wordpress.com/2012/03/untitled21.png');
final Uri birdurl = Uri.parse(
    'https://www.bing.com/images/search?view=detailV2&ccid=PwPuKoA9&id=6A0DE4A4DB39D902454886C140B40F7DEF9E8FCE&thid=OIP.PwPuKoA9L9-yc8JwHenQtgHaHx&mediaurl=https%3a%2f%2fth.bing.com%2fth%2fid%2fR.3f03ee2a803d2fdfb273c2701de9d0b6%3frik%3dzo%252be730PtEDBhg%26riu%3dhttp%253a%252f%252fwww.backyardchickens.com%252fforum%252fuploads%252f31282_vaccinationschedule.jpg%26ehk%3d7i7xcOlxwZ4TsS0c4JxiNSbMNnUEhvitu%252bF%252bwoQ%252brWY%253d%26risl%3d%26pid%3dImgRaw%26r%3d0&exph=504&expw=480&q=bird+vaccine+schedule&simid=608031253544855344&FORM=IRPRST&ck=4293A21EEE8F773B46B0D376AD697875&selectedIndex=5&ajaxhist=0&ajaxserp=0');
final Uri horseurl = Uri.parse(
    'https://www.bing.com/images/search?view=detailV2&ccid=C%2f1NN0ey&id=05DB2C6FB5FE748DC289BCCBC41A32009548F441&thid=OIP.C_1NN0ey7DLnX2BkFt4k6QHaE2&mediaurl=https%3a%2f%2fwww.researchgate.net%2fprofile%2fTeri_Antilley%2fpublication%2f26905011%2ffigure%2fdownload%2ftbl1%2fAS%3a669452559454223%401536621336390%2fSuggested-vaccination-schedule-for-horses.png&cdnurl=https%3a%2f%2fth.bing.com%2fth%2fid%2fR.0bfd4d3747b2ec32e75f606416de24e9%3frik%3dQfRIlQAyGsTLvA%26pid%3dImgRaw%26r%3d0&exph=557&expw=850&q=horse+vaccine+schedule&simid=608036214228389049&FORM=IRPRST&ck=78DB9207061EAAD0C7B348C1E110CA45&selectedIndex=8&ajaxhist=0&ajaxserp=0');
final Uri rabbiturl = Uri.parse(
    'https://www.bing.com/images/search?view=detailV2&ccid=z3Q8CU9W&id=8E708B92CAA2C7244BDFF78DD52A2F4AE1CF3D5D&thid=OIP.z3Q8CU9Wld1vOhavavFBFgHaBt&mediaurl=https%3a%2f%2fth.bing.com%2fth%2fid%2fR.cf743c094f5695dd6f3a16af6af14116%3frik%3dXT3P4UovKtWN9w%26riu%3dhttp%253a%252f%252fnexusacademicpublishers.com%252fuploads%252fimagesfiles%252fTable2_283.PNG%26ehk%3dqOOlGFNX3taIF%252bkTIVJtxkX%252fX7V5GodI6hdCSDBxoWY%253d%26risl%3d%26pid%3dImgRaw%26r%3d0&exph=172&expw=746&q=rabbit+vaccine+schedule&simid=608015521072622328&FORM=IRPRST&ck=51AE1DD022F6AC1794565F77EE133650&selectedIndex=4&ajaxhist=0&ajaxserp=0');
final Uri furryurl = Uri.parse(
    'https://www.bing.com/images/search?view=detailV2&ccid=mALY%2bbxv&id=E8E3A8963CD714D50A5F58C9DB2531A100CF5C76&thid=OIP.mALY-bxvmdd9NiSk3KTI4gHaE_&mediaurl=https%3a%2f%2fmedia.springernature.com%2fm685%2fspringer-static%2fimage%2fart%3a10.1038%2fs41541-017-0023-7%2fMediaObjects%2f41541_2017_23_Fig1_HTML.jpg&cdnurl=https%3a%2f%2fth.bing.com%2fth%2fid%2fR.9802d8f9bc6f99d77d3624a4dca4c8e2%3frik%3ddlzPAKExJdvJWA%26pid%3dImgRaw%26r%3d0&exph=455&expw=675&q=hamster+vaccine+schedule&simid=608043232192702733&FORM=IRPRST&ck=9C41C742497DAB597CA227DD619547B3&selectedIndex=0&ajaxhist=0&ajaxserp=0');

Future<void> catUrl() async {
  if (!await launchUrl(caturl)) {
    throw 'Could not launch $caturl';
  }
}

Future<void> dogUrl() async {
  if (!await launchUrl(dogurl)) {
    throw 'Could not launch $dogurl';
  }
}

Future<void> birdUrl() async {
  if (!await launchUrl(birdurl)) {
    throw 'Could not launch $birdurl';
  }
}

Future<void> horseUrl() async {
  if (!await launchUrl(horseurl)) {
    throw 'Could not launch $horseurl';
  }
}

Future<void> rabbitUrl() async {
  if (!await launchUrl(rabbiturl)) {
    throw 'Could not launch $rabbiturl';
  }
}

Future<void> furryUrl() async {
  if (!await launchUrl(furryurl)) {
    throw 'Could not launch $furryurl';
  }
}

class URLclass extends StatelessWidget {
  URLclass({
    required this.myfunction,
  });

  Function()? myfunction;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: myfunction,
    );
  }
}
