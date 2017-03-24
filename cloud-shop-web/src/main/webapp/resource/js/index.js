(function(w){
	
    if(typeof jshop == 'undefined'){
    	w.jshop = {};
    }
	
	jshop.mModule = typeof jshop.mModule === "undefined"? {}: jshop.mModule;
	
})(window);

$.extend(jshop.mModule, {
	addToCart: function (param) {
		var jTarget = $(this),
			setting = {
				addSelector: "",
				carSelector: ".j-m-car",
				skuSelector: "li",
			},
			jAddBtn = null,
			jSku = null,
			jCar;
		
		init();
		
		//初始化
		function init(){
			dataInt();
            bindEvent();
		}
		
		//数据初始化
		function dataInt(){
			$.extend(setting, param);
			jCar = $(setting.carSelector);
			jAddBtn = jTarget.find(setting.addSelector);
			jAddBtn.addClass('J_send-log');
		}
		
		//绑定事件
		function bindEvent(){
			jAddBtn.bind("click", function () {
				weChatCart($(this));
            });
		}
		
		//加入购物车
		function weChatCart(obj){
			jSku = obj.closest(setting.skuSelector);
			var _skuId= jSku.length ? jSku.attr("sid") : 0
			//获取cookie
			if(getCookie("shop") == ""){
				var list = new Map();
			}else{
				var list = new Map(eval('('+getCookie("shop")+')').elements);
			}
			if(list.containsKey(_skuId)){
				list.element(_skuId).value = list.get(_skuId)+1;
			}else{
				list.put(_skuId,1);
			}
			//写入cookie
			writeCookie("shop",JSON.stringify(list),5);
			//验证写入的coolie
			//alert(new Map(eval('('+getCookie("shop")+')').elements).get("0001"));
			alert(getCookie("shop"));
			//显示购物车
			jCar.show();
			//执行对应的动画
            animateFun(parseInt($("i", jCar).addClass("shake").text()) + 1);
		}
		
		/**
         * 执行加入购物车的动画
         * @param num
         */
        function animateFun(num) {
        	//购物车动画响应
            setTimeout(function () {
                $("i", jCar).addClass("shake").text(num).show();
                setTimeout(function () {
                    $("i", jCar).removeClass("shake");
                }, 800);
            }, setting.twoDuration);
        }
	}
});

(function(w){
	 function excute(module){
		 var func = module.attr('module-function'),
		 para = {};
		 if(!func) return;
		 try{
			 para = eval('(' + module.attr('module-param') + ')');
		 } catch(e){
		 }
		 var funcs = func.split(',');
		 funcs.forEach(function(n, index){
			 if(jshop.mModule[n]){
				 jshop.mModule[n].call(module,para);
			 }
		 });
	}
	 
	/**
	* 刷新单个模块
	*/
	function localRefresh(){
		var that = $(this).find('.j-module');
		if(!that.length) return;

		that.each(function () {
			excute($(this));
		});
	}
	
	/**
     * 刷新所有模块
     */
    function moduleRefresh(){
        $('.j-module[module-function]:not([funcompleted])').each(function(index,n){
            n.setAttribute("funcompleted","");
            excute($(n));
        });
    }
	
	w.moduleRefresh = moduleRefresh;
    w.localRefresh = localRefresh;
    
    moduleRefresh();
})(window);


;(function(win){
	_init();
	
	function _init(){
		 _bindTopBar();
	}
	
	
	//返回顶部按钮
    function _bindTopBar(){
        $(function(){
            if($(".j-to-top").length === 0){
                var barHtml = "<div class='j-to-top' style='display: none;position: fixed; bottom: 59px; right: 0px; width: 42px; height: 42px; z-index: 10001; transform-origin: 0px 0px 0px; opacity: 1; transform: scale(1, 1);'><img style='width: 100%;' src='../resource/images/arrow.png'/></div>";
                $("body").append(barHtml);
            }

            var jTopBar = $(".j-to-top"),
                height = "300";
            $(window).bind("scroll", function(){
                var _top = document.documentElement.scrollTop || document.body.scrollTop;
                if(_top > height){
                    jTopBar.show();
                }else{
                    jTopBar.hide();
                }
            });
            jTopBar.bind("click", function(){
                $(this).hide();
                document.documentElement.scrollTop = 0;
                document.body.scrollTop = 0;
            });
        });
    }
	
})(window);