## 1x1 start
    data remove storage zl.inf_garden:gen_start type_10[]
    #data modify storage zl.inf_garden:gen_start type_10 append value {structure:"zl.inf_garden:g_start/t_10/spawn"}
    data modify storage zl.inf_garden:gen_start type_10 append value {structure:"zl.inf_garden:g_start/t_10/bogged_peaceful"}
    data modify storage zl.inf_garden:gen_start type_10 append value {structure:"zl.inf_garden:g_start/t_10/empty_room"}
    data modify storage zl.inf_garden:gen_start type_10 append value {structure:"zl.inf_garden:g_start/t_10/pool_peaceful"}
##
## 1x2 start
    data remove storage zl.inf_garden:gen_start type_9[]
    data modify storage zl.inf_garden:gen_start type_9 append value {structure:"zl.inf_garden:g_start/t_9/empty_hall"}
##
## 2x1 start
    data remove storage zl.inf_garden:gen_start type_11[]
    data modify storage zl.inf_garden:gen_start type_11 append value {structure:"zl.inf_garden:g_start/t_11/plant_lab"}
    data modify storage zl.inf_garden:gen_start type_11 append value {structure:"zl.inf_garden:g_start/t_11/u_turn_statue"}
##

## 1x1 final
    data remove storage zl.inf_garden:gen_final type_10[]
    data modify storage zl.inf_garden:gen_final type_10 append value {structure:"zl.inf_garden:g_start/t_10/sculk_1"}
    data modify storage zl.inf_garden:gen_final type_10 append value {structure:"zl.inf_garden:g_start/t_10/sculk_2_peaceful"}
    data modify storage zl.inf_garden:gen_final type_10 append value {structure:"zl.inf_garden:g_start/t_10/exit"}
##