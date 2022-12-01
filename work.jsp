<%--
  Created by IntelliJ IDEA.
  User: dl132lcy
  Date: 2022/12/1
  Time: 9:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>work</title>
    <style type="text/css">
        body{
            margin: 0 ;
            cursor: pointer;
        }
        div{
            background-color:#66ffff;
            box-sizing: border-box ;
            border:1px solid #ff3333 ;
            border-radius: 50% ;
            margin: 0 ;
            padding: 0 ;
            position: absolute ;
            transition: all 0.5s ;
        }
        div.bd{
            background-color:#ccffff;
            border:0px solid ;
            border-radius: 0% ;
        }
        div p{
            margin: auto; padding: 10%;
            color:#9900ff;
            text-align:center;
            text-shadow:1px 1px #9900cc;
            font-family: STXingkai;
        }
    </style>
</head>
<body style="width: 1490px; height: 754px;"> <script type="text/javascript">
    const NUMS = 6 ;
    var tsBalls = [] ;
    var sn = 0 ;
    const S = ['考生的信息，在这里显示。离离原上草，一岁一枯荣。野火烧不尽，春风吹又生。远芳侵古道，晴翠接荒城。又送王孙去，萋萋满别情。' , '艳色天下重，西施宁久微。朝为越溪女，暮作吴宫妃。贱日岂殊众，贵来方悟稀。邀人傅脂粉，不自著罗衣。君宠益娇态，君怜无是非。当时浣纱伴，莫得同车归。持谢邻家子，效颦安可希！' , '绝代有佳人，幽居在空谷。自云良家子，零落依草木。关中昔丧乱，兄弟遭杀戮。官高何足论，不得收骨肉。世情恶衰歇，万事随转烛。夫婿轻薄儿，新人美如玉。合昏尚知时，鸳鸯不独宿。但见新人笑，那闻旧人哭！在山泉水清，出山泉水浊。侍婢卖珠回，牵萝补茅屋。摘花不插发，采柏动盈掬。天寒翠袖薄，日暮倚修竹。'] ; document.body.onmousemove = document.body.ontouchmove = function(){
        for(let ball of tsBalls){
            ball.setPositionDiv();
        }
    };
    document.body.onclick = function(){
        for(let ball of tsBalls){
            ball.randPositionDiv() ;
        }
    };
    document.body.ondblclick = function(){
        console.log('double click');
        for(let ball of tsBalls){
            this.removeChild(ball.dom) ;
        } tsBalls = [] ;
        sn === S.length -1 ? sn = 0 : sn++ ;
        for(var i=0 ;i < S[sn].length ; i++){
            var x0 = i % NUMS ;
            var y0 = Math.floor ( i / NUMS ) ;
            var ballObj = new Ball( x0 , y0 ) ;
            ballObj.createDivDom(S[sn][i]) ;
            ballObj.randPositionDiv() ;
            tsBalls.push(ballObj) ;
        }
    };
    var bodyWidth = window.innerWidth ;
    var bodyHeight = window.innerHeight ;
    document.body.style.width = bodyWidth + 'px';
    document.body.style.height = bodyHeight + 'px' ;
    var r = bodyWidth > bodyHeight ? bodyHeight / (NUMS*3/2) : bodyWidth / (NUMS*3/2) ; for(var i=0 ;i < S[sn].length ; i++){
        var x0 = i % NUMS ;
        var y0 = Math.floor ( i / NUMS ) ;
        var ballObj = new Ball( x0 , y0 ) ;
        ballObj.createDivDom(S[sn][i]) ;
        ballObj.randPositionDiv() ;
        tsBalls.push(ballObj) ;
    }
    function Ball(x0 , y0){
        this.x0 = x0 ; this.y0 = y0 ;
        this.dom = null ;
        this.createDivDom = function(s){
            var divDom = document.createElement('div') ;
            var pDom = document.createElement('p') ;
            pDom.textContent = s ;
            pDom.style.fontSize = r/2 + 'px' ;
            divDom.style.width = divDom.style.height = r + 'px' ;
            if(this.x0 === 5 || this.x0 === 11 ){ divDom.className = 'bd' ; } divDom.appendChild(pDom) ;
            document.body.appendChild(divDom) ;
            this.dom = divDom ;
        };
        this.randPositionDiv = function(){
            var x = Math.floor(Math.random() * bodyWidth ) ;
            if(x >= bodyWidth - r){
                x = bodyWidth - r ;
            }
            var y = Math.floor( Math.random() * bodyHeight );
            if(y >= bodyHeight - r){ y = bodyHeight - r ;
            }
            this.dom.style.left = x + 'px' ;
            this.dom.style.top = y + 'px' ;
        } ;
        this.setPositionDiv = function(){ var x = parseInt(this.x0) * r * 1.2 ;
            var y = parseInt(this.y0) * r * 1.2 ;
            this.dom.style.left = x + r + 'px' ;
            this.dom.style.top = y + r + 'px' ;
        } ;
    };
</script>
<div style="height: 84px; width: 84px; left: 84px; top: 84px;">
    <p style="font-size: 41.8889px;">考</p></div>
<div style="height: 83.7778px; width: 83.7778px; left: 184.311px; top: 83.7778px;"><p style="font-size: 41.8889px;">生</p></div>
<div style="height: 83.7778px; width: 83.7778px; left: 284.844px; top: 83.7778px;"><p style="font-size: 41.8889px;">的</p></div>
<div style="height: 83.7778px; width: 83.7778px; left: 385.378px; top: 83.7778px;"><p style="font-size: 41.8889px;">信</p></div>
<div style="height: 83.7778px; width: 83.7778px; left: 485.911px; top: 83.7778px;"><p style="font-size: 41.8889px;">息</p></div>
<div class="bd" style="height: 83.7778px; width: 83.7778px; left: 586.444px; top: 83.7778px;"><p style="font-size: 41.8889px;">，</p></div>
<div style="height: 83.7778px; width: 83.7778px; left: 83.7778px; top: 184.311px;"><p style="font-size: 41.8889px;">在</p></div>
<div style="height: 83.7778px; width: 83.7778px; left: 184.311px; top: 184.311px;"><p style="font-size: 41.8889px;">这</p></div>
<div style="height: 83.7778px; width: 83.7778px; left: 284.844px; top: 184.311px;"><p style="font-size: 41.8889px;">里</p></div>
<div style="height: 83.7778px; width: 83.7778px; left: 385.378px; top: 184.311px;"><p style="font-size: 41.8889px;">显</p></div>
<div style="height: 83.7778px; width: 83.7778px; left: 485.911px; top: 184.311px;"><p style="font-size: 41.8889px;">示</p></div>
<div class="bd" style="height: 83.7778px; width: 83.7778px; left: 586.444px; top: 184.311px;"><p style="font-size: 41.8889px;">。</p></div>
<div style="height: 83.7778px; width: 83.7778px; left: 83.7778px; top: 284.844px;"><p style="font-size: 41.8889px;">离</p></div>
<div style="height: 83.7778px; width: 83.7778px; left: 184.311px; top: 284.844px;"><p style="font-size: 41.8889px;">离</p></div>
<div style="height: 83.7778px; width: 83.7778px; left: 284.844px; top: 284.844px;"><p style="font-size: 41.8889px;">原</p></div>
<div style="height: 83.7778px; width: 83.7778px; left: 385.378px; top: 284.844px;"><p style="font-size: 41.8889px;">上</p></div>
<div style="height: 83.7778px; width: 83.7778px; left: 485.911px; top: 284.844px;"><p style="font-size: 41.8889px;">草</p></div>
<div class="bd" style="height: 83.7778px; width: 83.7778px; left: 586.444px; top: 284.844px;"><p style="font-size: 41.8889px;">，</p></div>
<div style="height: 83.7778px; width: 83.7778px; left: 83.7778px; top: 385.378px;"><p style="font-size: 41.8889px;">一</p></div>
<div style="height: 83.7778px; width: 83.7778px; left: 184.311px; top: 385.378px;"><p style="font-size: 41.8889px;">岁</p></div>
<div style="height: 83.7778px; width: 83.7778px; left: 284.844px; top: 385.378px;"><p style="font-size: 41.8889px;">一</p></div>
<div style="height: 83.7778px; width: 83.7778px; left: 385.378px; top: 385.378px;"><p style="font-size: 41.8889px;">枯</p></div>
<div style="height: 83.7778px; width: 83.7778px; left: 485.911px; top: 385.378px;"><p style="font-size: 41.8889px;">荣</p></div>
<div class="bd" style="height: 83.7778px; width: 83.7778px; left: 586.444px; top: 385.378px;"><p style="font-size: 41.8889px;">。</p></div>
<div style="height: 83.7778px; width: 83.7778px; left: 83.7778px; top: 485.911px;"><p style="font-size: 41.8889px;">野</p></div>
<div style="height: 83.7778px; width: 83.7778px; left: 184.311px; top: 485.911px;"><p style="font-size: 41.8889px;">火</p></div>
<div style="height: 83.7778px; width: 83.7778px; left: 284.844px; top: 485.911px;"><p style="font-size: 41.8889px;">烧</p></div>
<div style="height: 83.7778px; width: 83.7778px; left: 385.378px; top: 485.911px;"><p style="font-size: 41.8889px;">不</p></div>
<div style="height: 83.7778px; width: 83.7778px; left: 485.911px; top: 485.911px;"><p style="font-size: 41.8889px;">尽</p></div>
<div class="bd" style="height: 83.7778px; width: 83.7778px; left: 586.444px; top: 485.911px;"><p style="font-size: 41.8889px;">，</p></div>
<div style="height: 83.7778px; width: 83.7778px; left: 83.7778px; top: 586.444px;"><p style="font-size: 41.8889px;">春</p></div>
<div style="height: 83.7778px; width: 83.7778px; left: 184.311px; top: 586.444px;"><p style="font-size: 41.8889px;">风</p></div>
<div style="height: 83.7778px; width: 83.7778px; left: 284.844px; top: 586.444px;"><p style="font-size: 41.8889px;">吹</p></div>
<div style="height: 83.7778px; width: 83.7778px; left: 385.378px; top: 586.444px;"><p style="font-size: 41.8889px;">又</p></div>
<div style="height: 83.7778px; width: 83.7778px; left: 485.911px; top: 586.444px;"><p style="font-size: 41.8889px;">生</p></div>
<div class="bd" style="height: 83.7778px; width: 83.7778px; left: 586.444px; top: 586.444px;"><p style="font-size: 41.8889px;">。</p></div>
<div style="height: 83.7778px; width: 83.7778px; left: 83.7778px; top: 686.978px;"><p style="font-size: 41.8889px;">远</p></div>
<div style="height: 83.7778px; width: 83.7778px; left: 184.311px; top: 686.978px;"><p style="font-size: 41.8889px;">芳</p></div>
<div style="height: 83.7778px; width: 83.7778px; left: 284.844px; top: 686.978px;"><p style="font-size: 41.8889px;">侵</p></div>
<div style="height: 83.7778px; width: 83.7778px; left: 385.378px; top: 686.978px;"><p style="font-size: 41.8889px;">古</p></div>
<div style="height: 83.7778px; width: 83.7778px; left: 485.911px; top: 686.978px;"><p style="font-size: 41.8889px;">道</p></div>
<div class="bd" style="height: 83.7778px; width: 83.7778px; left: 586.444px; top: 686.978px;"><p style="font-size: 41.8889px;">，</p></div>
<div style="height: 83.7778px; width: 83.7778px; left: 83.7778px; top: 787.511px;"><p style="font-size: 41.8889px;">晴</p></div>
<div style="height: 83.7778px; width: 83.7778px; left: 184.311px; top: 787.511px;"><p style="font-size: 41.8889px;">翠</p></div>
<div style="height: 83.7778px; width: 83.7778px; left: 284.844px; top: 787.511px;"><p style="font-size: 41.8889px;">接</p></div>
<div style="height: 83.7778px; width: 83.7778px; left: 385.378px; top: 787.511px;"><p style="font-size: 41.8889px;">荒</p></div>
<div style="height: 83.7778px; width: 83.7778px; left: 485.911px; top: 787.511px;"><p style="font-size: 41.8889px;">城</p></div>
<div class="bd" style="height: 83.7778px; width: 83.7778px; left: 586.444px; top: 787.511px;"><p style="font-size: 41.8889px;">。</p></div>
<div style="height: 83.7778px; width: 83.7778px; left: 83.7778px; top: 888.044px;"><p style="font-size: 41.8889px;">又</p></div>
<div style="height: 83.7778px; width: 83.7778px; left: 184.311px; top: 888.044px;"><p style="font-size: 41.8889px;">送</p></div>
<div style="height: 83.7778px; width: 83.7778px; left: 284.844px; top: 888.044px;"><p style="font-size: 41.8889px;">王</p></div>
<div style="height: 83.7778px; width: 83.7778px; left: 385.378px; top: 888.044px;"><p style="font-size: 41.8889px;">孙</p></div>
<div style="height: 83.7778px; width: 83.7778px; left: 485.911px; top: 888.044px;"><p style="font-size: 41.8889px;">去</p></div>
<div class="bd" style="height: 83.7778px; width: 83.7778px; left: 586.444px; top: 888.044px;"><p style="font-size: 41.8889px;">，</p></div>
<div style="height: 83.7778px; width: 83.7778px; left: 83.7778px; top: 988.578px;"><p style="font-size: 41.8889px;">萋</p></div>
<div style="height: 83.7778px; width: 83.7778px; left: 184.311px; top: 988.578px;"><p style="font-size: 41.8889px;">萋</p></div>
<div style="height: 83.7778px; width: 83.7778px; left: 284.844px; top: 988.578px;"><p style="font-size: 41.8889px;">满</p></div>
<div style="height: 83.7778px; width: 83.7778px; left: 385.378px; top: 988.578px;"><p style="font-size: 41.8889px;">别</p></div>
<div style="height: 83.7778px; width: 83.7778px; left: 485.911px; top: 988.578px;"><p style="font-size: 41.8889px;">情</p></div>
<div class="bd" style="height: 83.7778px; width: 83.7778px; left: 586.444px; top: 988.578px;"><p style="font-size: 41.8889px;">。</p></div>
</body>
</html>