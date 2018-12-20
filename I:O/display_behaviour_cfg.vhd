configuration display_behaviour_cfg of display is
   for behaviour
      for all: x_counter use configuration work.x_counter_behaviour_cfg;
      end for;
      for all: y_counter use configuration work.y_counter_behaviour_cfg;
      end for;
      for all: sync use configuration work.sync_behaviour_cfg;
      end for;
      for all: draw_counter use configuration work.draw_counter_behaviour_cfg;
      end for;
      for all: bullet use configuration work.bullet_behaviour_cfg;
      end for;
      for all: player use configuration work.player_behaviour_cfg;
      end for;
      for all: enemy use configuration work.enemy_behaviour_cfg;
      end for;
   end for;
end display_behaviour_cfg;
