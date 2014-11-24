
function Web_alertInfo(message) {
	alert(message);
}

var IndexUtil = {
	sddFavorite : function (sURL, sTitle) { // 添加收藏
		if (document.all){
			try{
				window.external.addFavorite(window.location.href,document.title);
			}catch(e){
				Web_alertInfo( "加入收藏失败，请使用Ctrl+D进行添加" );
			}
		} else if (window.sidebar) {
			window.sidebar.addPanel(document.title, window.location.href, "");
		}else{
			Web_alertInfo( "加入收藏失败，请使用Ctrl+D进行添加" );
		}
	},
	setHome : function (obj,vrl){ // 设为首页
		if (document.all){
			document.body.style.behavior='url(#default#homepage)';
			document.body.setHomePage(window.location.href);
		} else if (window.sidebar) {
			if(window.netscape){
				try{
					netscape.security.PrivilegeManager.enablePrivilege("UniversalXPConnect");
				}catch (e){
					Web_alertInfo( "该操作被浏览器拒绝，如果想启用该功能，请在地址栏内输入 about:config,然后将项 signed.applets.codebase_principal_support 值该为true" );
				}
			}
			var prefs = Components.classes['@mozilla.org/preferences-service;1'].getService(Components. interfaces.nsIPrefBranch);
			prefs.setCharPref('browser.startup.homepage',window.location.href);
		} else {
			Web_alertInfo('您的浏览器不支持自动自动设置首页, 请使用浏览器菜单手动设置!');
		}
	}
};

$(function () {
	$('.js-add-favorite').bind('click', function () { // 添加收藏
		IndexUtil.sddFavorite(window.location, document.title);
	});
	$('.js-set-home').bind('click', function () { // 设为首页
		IndexUtil.setHome(this, window.location);
	});
	$('.js-go-forward').bind('click', function () {
		window.location.href = $(this).data('forward');
	});
});