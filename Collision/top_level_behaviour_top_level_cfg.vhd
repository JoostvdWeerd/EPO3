configuration top_level_behaviour_top_level_cfg of top_level is
   for behaviour_top_level
      for all: collision use configuration work.collision_behaviour_collision_cfg;
      end for;
      for all: counter_one use configuration work.counter_one_behaviour_counter_one_cfg;
      end for;
      for all: counter_two use configuration work.counter_two_behaviour_counter_two_cfg;
      end for;
   end for;
end top_level_behaviour_top_level_cfg;
