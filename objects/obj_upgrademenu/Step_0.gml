/// @description Insert description here
// You can write your code in this editor
for (i=0;i<=5;i++){
if point_in_rectangle(obj_personagem.x,obj_personagem.y,allboxes.boxx[i]-50,allboxes.boxy[i]-50,allboxes.boxx[i]+50,allboxes.boxy[i]+50){
	selechover[i] = 1
}else {
	selechover[i] = "false"	
}
}
//show_debug_message(mousehover)

//Vida,Força,Stamina,XP,Ultiamte,Ammo,Mana
for(i=0;i<=5;i++){
if selechover[i]{
currentselec = i
boxcolor[i] = c_black
break;

}else {
	currentselec = "false"
	boxcolor[i] = c_white
	}
}


