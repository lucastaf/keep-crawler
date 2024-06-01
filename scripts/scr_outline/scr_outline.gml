enum dir_directions{
	left,
	right,
	bottom,
	top,
	top_left,
	top_right,
	bottom_left,
	bottom_right
}
function draw_text_outline_transformed(x , y , text , textcolor ,outlinecolor , outlineSize , xscale , yscale ){
	//Outline  
	draw_set_color(outlinecolor);  
	draw_text_transformed_color(x+outlineSize, y+outlineSize, text,xscale,yscale,0,outlinecolor , outlinecolor,outlinecolor,outlinecolor,1);  
	draw_text_transformed_color(x-outlineSize, y-outlineSize, text,xscale,yscale,0,outlinecolor , outlinecolor,outlinecolor,outlinecolor,1);  
	draw_text_transformed_color(x,   y+outlineSize, text,xscale,yscale,0,outlinecolor , outlinecolor,outlinecolor,outlinecolor,1);  
	draw_text_transformed_color(x+outlineSize,   y, text,xscale,yscale,0,outlinecolor , outlinecolor,outlinecolor,outlinecolor,1);  
	draw_text_transformed_color(x,   y-outlineSize, text,xscale,yscale,0,outlinecolor , outlinecolor,outlinecolor,outlinecolor,1);  
	draw_text_transformed_color(x-outlineSize,   y, text,xscale,yscale,0,outlinecolor , outlinecolor,outlinecolor,outlinecolor,1);  
	draw_text_transformed_color(x-outlineSize, y+outlineSize, text,xscale,yscale,0,outlinecolor , outlinecolor,outlinecolor,outlinecolor,1);  
	draw_text_transformed_color(x+outlineSize, y-outlineSize, text,xscale,yscale,0,outlinecolor , outlinecolor,outlinecolor,outlinecolor,1); 
	draw_text_transformed_color(x,y,text,xscale,yscale,0,textcolor , textcolor,textcolor,textcolor,1);
	
}

function draw_text_outline_centered(x , y , text , textcolor ,outlinecolor , outlineSize , xscale , yscale, halign ){
	//Outline  
	var antes = draw_get_halign()
	draw_set_halign(halign)
	draw_set_color(outlinecolor);  
	draw_text_transformed_color(x+outlineSize, y+outlineSize, text,xscale,yscale,0,outlinecolor , outlinecolor,outlinecolor,outlinecolor,1);  
	draw_text_transformed_color(x-outlineSize, y-outlineSize, text,xscale,yscale,0,outlinecolor , outlinecolor,outlinecolor,outlinecolor,1);  
	draw_text_transformed_color(x,   y+outlineSize, text,xscale,yscale,0,outlinecolor , outlinecolor,outlinecolor,outlinecolor,1);  
	draw_text_transformed_color(x+outlineSize,   y, text,xscale,yscale,0,outlinecolor , outlinecolor,outlinecolor,outlinecolor,1);  
	draw_text_transformed_color(x,   y-outlineSize, text,xscale,yscale,0,outlinecolor , outlinecolor,outlinecolor,outlinecolor,1);  
	draw_text_transformed_color(x-outlineSize,   y, text,xscale,yscale,0,outlinecolor , outlinecolor,outlinecolor,outlinecolor,1);  
	draw_text_transformed_color(x-outlineSize, y+outlineSize, text,xscale,yscale,0,outlinecolor , outlinecolor,outlinecolor,outlinecolor,1);  
	draw_text_transformed_color(x+outlineSize, y-outlineSize, text,xscale,yscale,0,outlinecolor , outlinecolor,outlinecolor,outlinecolor,1); 
	draw_text_transformed_color(x,y,text,xscale,yscale,0,textcolor , textcolor,textcolor,textcolor,1);
	draw_set_halign(antes)
	
}