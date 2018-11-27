configuration display_behaviour_cfg of display is
   for behaviour
      for all: x_counter use configuration work.x_counter_behaviour_cfg;
      end for;
      for all: y_counter use configuration work.y_counter_behaviour_cfg;
      end for;
   end for;
end display_behaviour_cfg;
