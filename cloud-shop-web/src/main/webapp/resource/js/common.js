/**
 * MAP对象，实现MAP功能
 */
function Map(arr) {
	if(arr != null){
		this.elements = arr;
	}else{
		this.elements = new Array();
	}
	
	//向MAP中增加元素（key, value) 
    this.put = function(_key, _value) {
        this.elements.push( {
            key : _key,
            value : _value
        });
    }
    
    //获取指定KEY的元素值VALUE，失败返回NULL
    this.get = function(_key) {
        try {
            for (i = 0; i < this.elements.length; i++) {
                if (this.elements[i].key == _key) {
                    return this.elements[i].value;
                }
            }
        } catch (e) {
            return null;
        }
    }
    
    //获取指定KEY的元素，失败返回NULL
    this.element = function(_key) {
        try {
            for (i = 0; i < this.elements.length; i++) {
                if (this.elements[i].key == _key) {
                    return this.elements[i];
                }
            }
        } catch (e) {
            return null;
        }
    }
    
    //获取MAP元素个数
    this.size = function() {
        return this.elements.length;
    }
    
    //判断MAP是否为空
    this.isEmpty = function() {
        return (this.elements.length < 1);
    }
    
    //删除MAP所有元素
    this.clear = function() {
        this.elements = new Array();
    }
    //删除指定KEY的元素，成功返回True，失败返回False
    this.remove = function(_key) {
        var bln = false;
        try {
            for (i = 0; i < this.elements.length; i++) {
                if (this.elements[i].key == _key) {
                    this.elements.splice(i, 1);
                    return true;
                }
            }
        } catch (e) {
            bln = false;
        }
        return bln;
    }
    //获取指定索引的元素（使用element.key，element.value获取KEY和VALUE），失败返回NULL
    this.obj = function(_index) {
        if (_index < 0 || _index >= this.elements.length) {
            return null;
        }
        return this.elements[_index];
    }
    //判断MAP中是否含有指定KEY的元素
    this.containsKey = function(_key) {
        var bln = false;
        try {
            for (i = 0; i < this.elements.length; i++) {
                if (this.elements[i].key == _key) {
                    bln = true;
                }
            }
        } catch (e) {
            bln = false;
        }
        return bln;
    }
    //判断MAP中是否含有指定VALUE的元素
    this.containsValue = function(_value) {
        var bln = false;
        try {
            for (i = 0; i < this.elements.length; i++) {
                if (this.elements[i].value == _value) {
                    bln = true;
                }
            }
        } catch (e) {
            bln = false;
        }
        return bln;
    }
    //获取MAP中所有VALUE的数组（ARRAY）
    this.values = function() {
        var arr = new Array();
        for (i = 0; i < this.elements.length; i++) {
            arr.push(this.elements[i].value);
        }
        return arr;
    }
 
    //获取MAP中所有KEY的数组（ARRAY）
    this.keys = function() {
        var arr = new Array();
        for (i = 0; i < this.elements.length; i++) {
            arr.push(this.elements[i].key);
        }
        return arr;
    }
}
	
//写cookie
function writeCookie(name, value, hours){
	var expire = "";
    if(hours != null){
      expire = new Date((new Date()).getTime() + hours * 3600000);
      expire = "; expires=" + expire.toGMTString();
    }
    document.cookie = name + "=" + escape(value) + expire;
}  

//获得cookie
function getCookie(Name){
	var search = Name + "=" ;
	if(document.cookie.length > 0){
		offset = document.cookie.indexOf(search)
		if(offset != -1){
			offset += search.length
			end = document.cookie.indexOf(";", offset)
			if(end == -1) end = document.cookie.length
				return unescape(document.cookie.substring(offset, end))
		}else{ 
			return "";
		}
	}
}
//删除cookie
function deleteCookie (name)  
{   
    var exp = new Date();   
    exp.setTime (exp.getTime() - 100);   
    var cval = getCookie (name);   
    document.cookie = name + "=" + escape(cval) + "; expires=" + exp.toGMTString();  
}  
