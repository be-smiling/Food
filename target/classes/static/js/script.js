// 封装一个代替getElementById()的方法
function byId(id) {
	return typeof(id) === "string"?document.getElementById(id):id;	
}
console.log(byId("main"));

var index = 0, timer = null, 
	pics = byId("banner").getElementsByTagName("div"),
    dots = byId("dots").getElementsByTagName("span"),
    pre = byId("pre"),
    next = byId("next"),	
	len = pics.length,
	menu = byId("menu-content"),
	subMenu = byId("sub-menu"),
	innerBox = subMenu.getElementsByClassName("inner-box"),
	menuItems = menu.getElementsByClassName("menu-item");

function slideImg(){
	var main = byId("main");
	// 滑过清除定时器,离开继续
	main.onmouseover = function(){
		// 滑过清除定时器
		if (timer) clearInterval(timer);
	}
	main.onmouseout = function(){
		timer= setInterval(function(){
			index++;
			if (index >= len) {
				index = 0;
			}
			//切换图片
			changeImg();
		}, 3000);
	}
	main.onmouseout();

	// 遍历所有点击,且绑定点击事件,点击圆点切换图片
	for(var d = 0; d < len; d++){
		// 给所有span添加一个id的属性,值为d,作为当前span的索引
		dots[d].id = d;
		dots[d].onclick = function(){
			// 改变index为当前span的索引
			// alert(this.id);
			index = this.id;
			changeImg();
		}
	}

	//下一张
	next.onclick = function(){
		index++;
		if (index >= len) index=0;
		changeImg();
	}

	//上一张
	pre.onclick = function(){
		index--;
		if (index < 0) index=len - 1;
		changeImg();
	}

	//导航菜单
	//遍历主菜单，且绑定事件
	for(var m = 0; m < menuItems.length;m++){
		// 给每一个menu-item定义data-index属性，作为索引
		menuItems[m].setAttribute("data-index", m);
		menuItems[m].onmouseover = function(){
			subMenu.className = "sub-menu";
			var idx = this.getAttribute("data-index");
			for(var j = 0; j < innerBox.length;j++){
				innerBox[j].style.display = 'none';
				menuItems[j].style.background = 'none';
			}
			menuItems[idx].style.background = 'rgba(0, 0, 0, 0.1)';
			innerBox[idx].style.display = 'block';
		}
	}

	menu.onmouseout = function(){
		subMenu.className = "sub-menu hide";
	}

	subMenu.onmouseover = function(){
		this.className = "sub-menu";
	}

	subMenu.onmouseout = function(){
		this.className = "sub-menu hide";
	}
}	

//切换图片
function changeImg(){
	// console.log(index);
	// 遍历banner下的所有div及dots下的所有的span, 将其隐藏将span清除
	for(var i = 0; i < len; i++){
		pics[i].style.display = "none";
		dots[i].className = "";
	}
	// 根据index索引找到当前div和当前span,将其显示出来和设为当前
	pics[index].style.display = "block";
	dots[index].className = "active";
}
slideImg();