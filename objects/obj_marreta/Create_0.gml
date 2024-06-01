alarm[0] = 15
image_angle = vectorToAngle(relativePosition)
x = obj_personagem.x + relativePosition[0] * playerSize
y = obj_personagem.y + relativePosition[1] * playerSize

instance_create_depth(x,y,-10,obj_stun, { image_angle: image_angle})