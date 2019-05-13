
function CloseDiv(show_div,bg_div)
{
	document.getElementById(show_div).style.display='none';
	document.getElementById(bg_div).style.display='none';
};



function CloseDiv_1(show_div,bg_div)
{
	document.getElementById(show_div).style.display='none';
	document.getElementById(bg_div).style.display='none';
};

function ShowDiv_1(show_div,bg_div){
	document.getElementById(show_div).style.display='block';
	document.getElementById(bg_div).style.display='block' ;
	var bgdiv = document.getElementById(bg_div);
	bgdiv.style.width = document.body.scrollWidth;
	// bgdiv.style.height = $(document).height();
	setTimeout("CloseDiv_1('MyDiv1','fade1')",1000);
};

function add(id,quntity){
	jQuery.ajax({
		"url" : path+"/shopping/buycar",
		"type" : "post",
		"data" : {"tid":id,"quntity":quntity},
		"dataType" : "html",
		"success" : function(result) {
			jQuery("#sercarch").html(result);
		}
	}
)
ShowDiv_1('MyDiv1','fade1');
}


var flag=true;
jQuery("#sortPrice").click(function(){
    var list= jQuery(".cate_list li");

    if(flag)
    {

        for(var m=0;m<list.length-1;m++)
        {
            var list= jQuery(".cate_list li");
            for(var j=0;j<list.length-1;j++)
            {
                if(parseFloat(list.eq(j).find("span").text().substring(1))>parseFloat(list.eq(j+1).find("span").text().substring(1)))
                {
                    exchange(list.eq(j+1),list.eq(j));
                }
            }
        }

        flag=false;
    }
    else{

        for(var m=0;m<list.length-1;m++)
        {
            var list= jQuery(".cate_list li");
            for(var j=0;j<list.length-1;j++)
            {
                if(parseFloat(list.eq(j).find("span").text().substring(1))<parseFloat(list.eq(j+1).find("span").text().substring(1)))
                {
                    exchange(list.eq(j+1),list.eq(j));
                }
            }
        }

        flag=true;

    }
 })
 var exchange=function(a,b){
     var n=a.next();
     var p=b.prev();
     b.insertBefore(n);
     a.insertAfter(p);

 }

/*jQuery(".j_car").click(
        function(){


            alert('ssds');
            var cll=   jQuery(obj).parents("li").clone();
            cll.children(".carbg").remove();
            var path=cll.children(".img").find("img").attr("src");
            alert(path);
            var img=jQuery("<img  width='58' height='58'></img>").attr("src",path);
            cll.children(".img").find("img").replaceWith(img);
            cll.children(".price").prependTo(cll.children(".name"));
            jQuery(".cars").append(cll);

        }
)*/