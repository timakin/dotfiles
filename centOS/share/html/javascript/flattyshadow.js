function flattyShadow(){
var bg_size = 130;
var icon_size = 60;
	$('.flatty_shadow').each(function() {		
		var bg_color = $(this).attr("data-bg-color") || '#f65034';
		var shadow_color = $(this).attr("data-shadow-color") || '#df3618';
		var icon_color = $(this).attr("data-icon-color") || '#ffffff';
		var angle = $(this).attr("data-angle") || 70;
		var depth = $(this).attr("data-depth") || 160;
		var shape = $(this).attr("data-shape") || 50;
		var bg_transparency = $(this).attr("data-bg-transparency")|| 1;
		var shadow_transparency = $(this).attr("data-shadow-transparency") || 1;
		var icon_transparency = $(this).attr("data-icon-transparency") || 1;
		var icon_pos_x = $(this).attr("data-pos-x") || 0;
		var icon_pos_y = $(this).attr("data-pos-y") || 0;
		bg_size = $(this).attr("data-bg-size") || 130;
		icon_size = $(this).attr("data-icon-size") || 60;

		var selectedIcon = $(this).html();

		$(this).empty();
		$(this).append('<div class="flatty_icon"><div class="centered"><span class="fs_icon">'+selectedIcon+'</span></div></div>')

		bg_color = ' rgba(' + hexToRgb(bg_color).r +', ' + hexToRgb(bg_color).g +', ' + hexToRgb(bg_color).b +', ' + bg_transparency + ')';
		shadow_color = ' rgba(' + hexToRgb(shadow_color).r +', ' + hexToRgb(shadow_color).g +', ' + hexToRgb(shadow_color).b +', ' + shadow_transparency + ')';		
		icon_color = ' rgba(' + hexToRgb(icon_color).r +', ' + hexToRgb(icon_color).g +', ' + hexToRgb(icon_color).b +', ' + icon_transparency + ')';

			var x = 1.5 * Math.cos(angle * Math.PI/180);
		    var y = 1.5 * Math.sin(angle * Math.PI/180);            

		    var num_x= x/2;	    
		    var num_y= y/2;
		    	    		
		    var long_shadow = "";	        	    
		    
		    for (var i = 1; i <= (depth*2); i++) {
		        long_shadow += ' ' + x + 'px ' + y + 'px '+ 0 + ' '+ shadow_color + ',';	            
		        x+=num_x;
		        y+=num_y;               
		    }

		    long_shadow = long_shadow.substr(0, long_shadow.length-1);	   
						
			$(this).children( '.flatty_icon' ).css('background-color', bg_color);
			$(this).children('.flatty_icon').find('.fs_icon').css( 'color', icon_color );		
		    $(this).children('.flatty_icon').find('.fs_icon').css( 'text-shadow', long_shadow );
		    $(this).children('.flatty_icon').css({borderRadius:shape+'%'});
		    $(this).children('.flatty_icon').find('.centered').css({ marginLeft : (parseInt(icon_pos_x)*2.3)-58+'px', marginTop : (parseInt(icon_pos_y)*1.5)-55+'px' });


	});		
	$('.fs_icon').css( 'font-size', icon_size );
	$('.flatty_icon').css( 'width', bg_size );
	$('.flatty_icon').css( 'height', bg_size ); 
	var icon_pos = parseInt(icon_size.split('px')[0]) * -1;		    
	$('.centered').css( { marginLeft : icon_pos, marginTop : icon_pos } );   			
}

function hexToRgb(hex) {		
	    var result = /^#?([a-f\d]{2})([a-f\d]{2})([a-f\d]{2})$/i.exec(hex);
	    return result ? {
	        r: parseInt(result[1], 16),
	        g: parseInt(result[2], 16),
	        b: parseInt(result[3], 16)
	    } : null;
	}	