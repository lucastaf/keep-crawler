
var rest_function = function()
{
    delayrest = 0
}
var rest_timer = time_source_create(time_source_game, 2, time_source_units_seconds, rest_function);
time_source_start(rest_timer);

state = "perseguindo"