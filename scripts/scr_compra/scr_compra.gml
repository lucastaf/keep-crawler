// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function compra(preco,item,itemlevel,upvalue){
	if global.dinheiro >= preco{
	global.dinheiro -= preco
	item += upvalue
	itemlevel ++
	}
}