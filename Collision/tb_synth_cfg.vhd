configuration tb_synth_cfg of top_level_tb is
   for behaviour_top_level_tb
      for all: top_level use configuration work.top_level_synthesised_cfg;
      end for;
   end for;
end tb_synth_cfg;
