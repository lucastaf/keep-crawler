/// @description Ataque Direito
switch(class){
case "swordsman":
scr_swordatk(+70,0,"dir",270)
break;
case "archer" :
scr_bowatk(+70,0,0,270)
break;
case "mage":
scr_staffatk(0)
break;
case "bombman":
scr_punchatk("dir")
break;
case "lancer":
scr_spear(+70,0,0)
break;
}