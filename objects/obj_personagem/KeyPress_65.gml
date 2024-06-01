/// @description Ataque Esquerdo
switch(class){
case "swordsman":
scr_swordatk(-70,0,"esq",90)
break;
case "archer" :
scr_bowatk(-70,0,180,90)
break;
case "mage":
scr_staffatk(180)
break;
case "bombman":
scr_punchatk("esq")
break;
case "lancer":
scr_spear(-70,0,180)
break;
}