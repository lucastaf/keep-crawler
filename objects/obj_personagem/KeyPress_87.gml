/// @description Ataque Cima
switch(class){
case "swordsman":
scr_swordatk(0,-70,"cima",0)
break;
case "archer" :
scr_bowatk(0,-70,90,0)
break;
case "mage":
scr_staffatk(90)
break;
case "bombman":
scr_punchatk("cima")
break;
case "lancer":
scr_spear(0,-70,90)
break;
}