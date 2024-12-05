alarm[0] = 15
image_angle = vectorToAngle(relativePosition)
x = obj_player.x + relativePosition[0] * (playerSize / 1.5)
y = obj_player.y + relativePosition[1] * (playerSize / 1.5)

instance_create_depth(x,y,-10,obj_stun, { image_angle: image_angle})