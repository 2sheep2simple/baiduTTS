<%-- Created by IntelliJ IDEA. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>百度语音接口调用测试</title>
  <script src="/js/jquery.min.js"></script>
  <script src="/js/winfloat.js"></script>
  <script type="text/javascript">
      function doTTS(){
          var ttsDiv = document.getElementById('bdtts_div_id');
          var ttsAudio = document.getElementById('tts_autio_id');
          var ttsText = document.getElementById('ttsText').value;

          ttsDiv.removeChild(ttsAudio);
          var labelfirst = '<audio id="tts_autio_id" autoplay="autoplay">';
          var labelsecond = '<source id="tts_source_id" src="http://tts.baidu.com/text2audio?lan=zh&ie=UTF-8&spd=9&text='+ttsText+'" type="audio/mpeg">';
          var labelthird = '<embed id="tts_embed_id" height="0" width="0" src="">';
          var labelfouth = '</audio>';
          ttsDiv.innerHTML = labelfirst + labelsecond + labelthird + labelfouth;

          ttsAudio = document.getElementById('tts_autio_id');

          ttsAudio.play();
      }
  </script>
</head>
<body>
<div>
  <input type="button" id="ttsText" onclick="doTTS()" value="马钢物流提醒您：操作千万条，登录第一条，访问不登录，访客两行泪。请点击右上角的登录按钮。">
</div>
<div id="bdtts_div_id">
  <audio id="tts_autio_id" autoplay="autoplay">
    <source id="tts_source_id" src="http://tts.baidu.com/text2audio?lan=zh&vol=9&per=0&ie=UTF-8&spd=1&text=播报内容" type="audio/mpeg">
    <!--
                                  参数说明
         lan ： 待识别文字的类别   lan=zh，汉语；lan=en,英语；
         ie: 文字格式  ie=UTF-8
         spd:语速   值域：[0,9]
         vol:音量   值域：[0,9]
         per:发声人选择   0：普通； 1：普通男生； 3：情感合成人：度逍遥；  4：情感合成人：度丫丫，默认为普通女声
         pit:语调   值域：[0,9]
         text: 待转换的文字
    -->
    <embed id="tts_embed_id" height="0" width="0" src="">
  </audio>
</div>
</body>
</html>