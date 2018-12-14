configuration top_level_tb_behaviour_top_level_tb_cfg of top_level_tb is
   for behaviour_top_level_tb
      for all: top_level use configuration work.top_level_behaviour_top_level_cfg;
      end for;
   end for;
end top_level_tb_behaviour_top_level_tb_cfg;
