SET @NPC := 6696842;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawntimesecs`=300,`spawndist`=0,`MovementType`=2,`position_x`=-434.111 ,`position_y`=-295.266,`position_z`=84.1631 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-434.110992,295.265991,84.163101,0,0,0,100,0),
(@PATH,2,-483.333008,298.239990,99.170998,0,0,0,100,0),
(@PATH,3,-486.190582,291.261047,97.810997,0,0,0,100,0);

