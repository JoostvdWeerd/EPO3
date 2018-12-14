configuration tb_routed_cfg of top_level_tb is
   for behaviour_top_level_tb
      for all: top_level use configuration work.top_level_routed_cfg;
      end for;
   end for;
end tb_routed_cfg;
