switch (face) {
case "cima" :
x = obj_personagem.x
y = obj_personagem.y - offset
break;
case "baixo" :
x = obj_personagem.x
y = obj_personagem.y + offset
break;
case "dir" :
x = obj_personagem.x + offset
y = obj_personagem.y
break;
case "esq" :
x = obj_personagem.x - offset
y = obj_personagem.y
break;
}
