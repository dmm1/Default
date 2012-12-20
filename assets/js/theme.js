/* add awesome scroll to top effect start */
jQuery('a[href*=#]').click(function() {
    if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'')
    && location.hostname == this.hostname) {
      var jQuerytarget = jQuery(this.hash);
      jQuerytarget = jQuerytarget.length && jQuerytarget
      || jQuery('[name=' + this.hash.slice(1) +']');
      if (jQuerytarget.length) {
        var targetOffset = jQuerytarget.offset().top;
        jQuery('html,body')
        .animate({scrollTop: targetOffset}, 1000);
       return false;
      }
    }
});
/* scroll to top end */
/* auto format url design */
jQuery(function() {
     var pgurl = window.location.href.substr(window.location.href
.lastIndexOf("/")+1);
     jQuery("#nav li a").each(function(){
          if(jQuery(this).attr("href") == pgurl)
          jQuery(this).addClass("active");
     })
});
