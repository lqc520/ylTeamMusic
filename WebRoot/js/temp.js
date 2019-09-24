function getWindowSize() {
	var size = {};
	size.width = (document.documentElement && document.documentElement.clientWidth) || document.body.clientWidth;
	size.height = (document.documentElement&&document.documentElement.clientHeight) || document.body.clientHeight;
	return size;
}

window.addEventListener('load',function(){
	(function(){
		var team = document.getElementsByClassName('team')[0];
		var size = getWindowSize();
		team.style.height = size.height + 'px';
		team.style.width = size.width + 'px';
		moveBackground(document.body);
		showName();
	})();
});



function moveBackground(node){
	var size = getWindowSize();
	var xRange = size.width * 0.2; 
	var yRange = size.height*0.2;
	var x=0,y=0;
	var moveToLeft = true;
	var IdofInterval = setInterval(function(){
		node.style.backgroundPosition = x+'px '+y+'px';
		if(moveToLeft==true){
			x -= 1;
			y -= 1;
			if(Math.abs(x)>xRange || Math.abs(y)>yRange){
				moveToLeft = !moveToLeft;
			}
		}else{
			x += 1;
			y += 1;
			if(Math.abs(x)==0 || Math.abs(y) == 0){
				moveToLeft = !moveToLeft;
			}
		}
	},200);
}



function showName(){
	var canvas = document.getElementsByTagName('canvas')[0];
	var cxt = canvas.getContext('2d');

	var windowSize = getWindowSize();

	cxt.font="lighter 70px sans-serif";
	cxt.textAlign = "center";
	cxt.textBaseline = "middle";
	cxt.fillStyle = '#fff';
	var i = 0;
	var x = windowSize.width/2;
	var y = windowSize.height/2;
	var id;

	!function draw(){
		if(i<100){
			cxt.clearRect(x-100,y-100,300,200);
			cxt.fillText(''+(i/100).toFixed(2), x, y);
		}else if(i==100){
			cxt.clearRect(x-100,y-100,300,200);
			cxt.fillText(''+(i/100).toFixed(0), x, y);
		}else if(i==101){
			cxt.clearRect(x-100,y-100,300,200);
			cxt.fillText('引领Shop', x, y);
		}else if(i == 102){
			
		}else if(i == 103){
			cxt.font = 'lighter 32px sans-serif'; 
			cxt.fillText('We are on the way of 引领Shop', x, y+140);
			clearTimeout(id);
		}


		if(i<5){
			id = setTimeout(draw,500);
		}else if(i<95){
			id = setTimeout(draw,50);
		}else if(i<101){
			id = setTimeout(draw,500);
		}else{
			id = setTimeout(draw,1000);
		}
		i++;
	}();
}