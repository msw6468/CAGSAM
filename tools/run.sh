# sr 1 24 python train.py --data_path data/XCAD    --work_dir work_dir/XCAD
# sr 1 24 python train.py --data_path data/DCA1    --work_dir work_dir/DCA1
# sr 1 24 python train.py --data_path data/ARCADE  --work_dir work_dir/ARCADE
# sr 1 24 python train.py --data_path data/ALL_CAG --work_dir work_dir/ALL_CAG
# sr 1 24 python train.py --data_path data/FIVES   --work_dir work_dir/FIVES
# sr 1 24 python train.py --data_path data/ALL     --work_dir work_dir/ALL


# sr 1 24 python train.py --augments True --data_path data/FIVES --work_dir work_dir/aug_pdfc-True_fgv-50-100_fgs-0.50-0.75 --fg_predefined_color True --fg_min_value 50 --fg_max_value 100 --fg_min_size 0.50 --fg_max_size 0.75
# sr 1 24 python train.py --augments True --data_path data/FIVES --work_dir work_dir/aug_pdfc-True_fgv-50-100_fgs-0.75-1.00 --fg_predefined_color True --fg_min_value 50 --fg_max_value 100 --fg_min_size 0.75 --fg_max_size 1.00
# sr 1 24 python train.py --augments True --data_path data/FIVES --work_dir work_dir/aug_pdfc-True_fgv-50-100_fgs-0.50-1.00 --fg_predefined_color True --fg_min_value 50 --fg_max_value 100 --fg_min_size 0.50 --fg_max_size 1.00

# sr 1 24 python train.py --augments True --data_path data/FIVES --work_dir work_dir/aug_pdfc-False_fgv-50-100_fgs-0.50-0.75 --fg_min_value 50 --fg_max_value 100 --fg_min_size 0.50 --fg_max_size 0.75
# sr 1 24 python train.py --augments True --data_path data/FIVES --work_dir work_dir/aug_pdfc-False_fgv-50-100_fgs-0.75-1.00 --fg_min_value 50 --fg_max_value 100 --fg_min_size 0.75 --fg_max_size 1.00
# sr 1 24 python train.py --augments True --data_path data/FIVES --work_dir work_dir/aug_pdfc-False_fgv-50-100_fgs-0.50-1.00 --fg_min_value 50 --fg_max_value 100 --fg_min_size 0.50 --fg_max_size 1.00

# sr 1 24 python train.py --augments True --data_path data/FIVES --work_dir work_dir/aug_pdfc-True_fgv-none_fgs-0.50-0.75 --fg_predefined_color True --fg_min_size 0.50 --fg_max_size 0.75
# sr 1 24 python train.py --augments True --data_path data/FIVES --work_dir work_dir/aug_pdfc-True_fgv-none_fgs-0.75-1.00 --fg_predefined_color True --fg_min_size 0.75 --fg_max_size 1.00
# sr 1 24 python train.py --augments True --data_path data/FIVES --work_dir work_dir/aug_pdfc-True_fgv-none_fgs-0.50-1.00 --fg_predefined_color True --fg_min_size 0.50 --fg_max_size 1.00

# sr 1 24 python train.py --augments True --data_path data/FIVES --work_dir work_dir/aug_pdfc-False_fgv-none_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75
# sr 1 24 python train.py --augments True --data_path data/FIVES --work_dir work_dir/aug_pdfc-False_fgv-none_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00
# sr 1 24 python train.py --augments True --data_path data/FIVES --work_dir work_dir/aug_pdfc-False_fgv-none_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00

# sr 1 24 python train.py --augments True --data_path data/FIVES --work_dir work_dir/aug_pdfc-True_fgv-50-100_fgs-none --fg_predefined_color True --fg_min_value 50 --fg_max_value 100
# sr 1 24 python train.py --augments True --data_path data/FIVES --work_dir work_dir/aug_pdfc-False_fgv-50-100_fgs-none --fg_min_value 50 --fg_max_value 100
# sr 1 24 python train.py --augments True --data_path data/FIVES --work_dir work_dir/aug_pdfc-True_fgv-none_fgs-none --fg_predefined_color True
# sr 1 24 python train.py --augments True --data_path data/FIVES --work_dir work_dir/aug_pdfc-False_fgv-none_fgs-none


## Set --augments True as the default for the following commands
# sr 1 24 python train.py --bg_data_path data/CAG_BG --fg_data_path data/XCAD   --work_dir work_dir/aug_bg-CAGBG_fg-XCAD_fgs-none       
# sr 1 24 python train.py --bg_data_path data/CAG_BG --fg_data_path data/XCAD   --work_dir work_dir/aug_bg-CAGBG_fg-XCAD_fgs-0.25-0.75   --fg_min_size 0.20 --fg_max_size 0.75
# sr 1 24 python train.py --bg_data_path data/CAG_BG --fg_data_path data/XCAD   --work_dir work_dir/aug_bg-CAGBG_fg-XCAD_fgs-0.50-0.75   --fg_min_size 0.50 --fg_max_size 0.75
# sr 1 24 python train.py --bg_data_path data/CAG_BG --fg_data_path data/XCAD   --work_dir work_dir/aug_bg-CAGBG_fg-XCAD_fgs-0.25-1.00   --fg_min_size 0.25 --fg_max_size 1.00
# sr 1 24 python train.py --bg_data_path data/CAG_BG --fg_data_path data/XCAD   --work_dir work_dir/aug_bg-CAGBG_fg-XCAD_fgs-0.50-1.00   --fg_min_size 0.50 --fg_max_size 1.00
# sr 1 24 python train.py --bg_data_path data/CAG_BG --fg_data_path data/XCAD   --work_dir work_dir/aug_bg-CAGBG_fg-XCAD_fgs-0.75-1.00   --fg_min_size 0.75 --fg_max_size 1.00

# sr 1 24 python train.py --bg_data_path data/CAG_BG --fg_data_path data/ARCADE --work_dir work_dir/aug_bg-CAGBG_fg-ARCADE_fgs-none       
# sr 1 24 python train.py --bg_data_path data/CAG_BG --fg_data_path data/ARCADE --work_dir work_dir/aug_bg-CAGBG_fg-ARCADE_fgs-0.20-0.75 --fg_min_size 0.20 --fg_max_size 0.75
# sr 1 24 python train.py --bg_data_path data/CAG_BG --fg_data_path data/ARCADE --work_dir work_dir/aug_bg-CAGBG_fg-ARCADE_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75
# sr 1 24 python train.py --bg_data_path data/CAG_BG --fg_data_path data/ARCADE --work_dir work_dir/aug_bg-CAGBG_fg-ARCADE_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00
# sr 1 24 python train.py --bg_data_path data/CAG_BG --fg_data_path data/ARCADE --work_dir work_dir/aug_bg-CAGBG_fg-ARCADE_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00
# sr 1 24 python train.py --bg_data_path data/CAG_BG --fg_data_path data/ARCADE --work_dir work_dir/aug_bg-CAGBG_fg-ARCADE_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00

# sr 1 24 --qos=q-high-sangwoo.moon python train.py --bg_data_path data/XCAD   --fg_data_path data/FIVES --work_dir work_dir/aug_bg-XCAD_fg-FIVES_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 --qos=q-high-sangwoo.moon python train.py --bg_data_path data/XCAD   --fg_data_path data/FIVES --work_dir work_dir/aug_bg-XCAD_fg-FIVES_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 --qos=q-high-sangwoo.moon python train.py --bg_data_path data/XCAD   --fg_data_path data/FIVES --work_dir work_dir/aug_bg-XCAD_fg-FIVES_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 --qos=q-high-sangwoo.moon python train.py --bg_data_path data/XCAD   --fg_data_path data/FIVES --work_dir work_dir/aug_bg-XCAD_fg-FIVES_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 --qos=q-high-sangwoo.moon python train.py --bg_data_path data/XCAD   --fg_data_path data/FIVES --work_dir work_dir/aug_bg-XCAD_fg-FIVES_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 --qos=q-high-sangwoo.moon python train.py --bg_data_path data/XCAD   --fg_data_path data/FIVES --work_dir work_dir/aug_bg-XCAD_fg-FIVES_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &

# sr 1 24 --qos=q-high-sangwoo.moon python train.py --bg_data_path data/ARCADE --fg_data_path data/FIVES --work_dir work_dir/aug_bg-ARCADE_fg-FIVES_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 --qos=q-high-sangwoo.moon python train.py --bg_data_path data/ARCADE --fg_data_path data/FIVES --work_dir work_dir/aug_bg-ARCADE_fg-FIVES_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 --qos=q-high-sangwoo.moon python train.py --bg_data_path data/ARCADE --fg_data_path data/FIVES --work_dir work_dir/aug_bg-ARCADE_fg-FIVES_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 --qos=q-high-sangwoo.moon python train.py --bg_data_path data/ARCADE --fg_data_path data/FIVES --work_dir work_dir/aug_bg-ARCADE_fg-FIVES_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 --qos=q-high-sangwoo.moon python train.py --bg_data_path data/ARCADE --fg_data_path data/FIVES --work_dir work_dir/aug_bg-ARCADE_fg-FIVES_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 --qos=q-high-sangwoo.moon python train.py --bg_data_path data/ARCADE --fg_data_path data/FIVES --work_dir work_dir/aug_bg-ARCADE_fg-FIVES_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &

# sr 1 24 --qos=q-high-sangwoo.moon python train.py --bg_data_path data/XCAD   --fg_data_path data/ARCADE --work_dir work_dir/aug_bg-XCAD_fg-ARCADE_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 --qos=q-high-sangwoo.moon python train.py --bg_data_path data/XCAD   --fg_data_path data/ARCADE --work_dir work_dir/aug_bg-XCAD_fg-ARCADE_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 --qos=q-high-sangwoo.moon python train.py --bg_data_path data/XCAD   --fg_data_path data/ARCADE --work_dir work_dir/aug_bg-XCAD_fg-ARCADE_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 --qos=q-high-sangwoo.moon python train.py --bg_data_path data/XCAD   --fg_data_path data/ARCADE --work_dir work_dir/aug_bg-XCAD_fg-ARCADE_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 --qos=q-high-sangwoo.moon python train.py --bg_data_path data/XCAD   --fg_data_path data/ARCADE --work_dir work_dir/aug_bg-XCAD_fg-ARCADE_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 --qos=q-high-sangwoo.moon python train.py --bg_data_path data/XCAD   --fg_data_path data/ARCADE --work_dir work_dir/aug_bg-XCAD_fg-ARCADE_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &

# sr 1 24 --qos=q-high-sangwoo.moon python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --work_dir work_dir/aug_bg-ARCADE_fg-ARCADE_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 --qos=q-high-sangwoo.moon python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --work_dir work_dir/aug_bg-ARCADE_fg-ARCADE_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 --qos=q-high-sangwoo.moon python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --work_dir work_dir/aug_bg-ARCADE_fg-ARCADE_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 --qos=q-high-sangwoo.moon python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --work_dir work_dir/aug_bg-ARCADE_fg-ARCADE_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 --qos=q-high-sangwoo.moon python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --work_dir work_dir/aug_bg-ARCADE_fg-ARCADE_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 --qos=q-high-sangwoo.moon python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --work_dir work_dir/aug_bg-ARCADE_fg-ARCADE_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &

# sr 1 24 --qos=q-high-sangwoo.moon python train.py --bg_data_path data/XCAD   --fg_data_path data/XCAD   --work_dir work_dir/aug_bg-XCAD_fg-XCAD_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 --qos=q-high-sangwoo.moon python train.py --bg_data_path data/XCAD   --fg_data_path data/XCAD   --work_dir work_dir/aug_bg-XCAD_fg-XCAD_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 --qos=q-high-sangwoo.moon python train.py --bg_data_path data/XCAD   --fg_data_path data/XCAD   --work_dir work_dir/aug_bg-XCAD_fg-XCAD_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 --qos=q-high-sangwoo.moon python train.py --bg_data_path data/XCAD   --fg_data_path data/XCAD   --work_dir work_dir/aug_bg-XCAD_fg-XCAD_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 --qos=q-high-sangwoo.moon python train.py --bg_data_path data/XCAD   --fg_data_path data/XCAD   --work_dir work_dir/aug_bg-XCAD_fg-XCAD_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 --qos=q-high-sangwoo.moon python train.py --bg_data_path data/XCAD   --fg_data_path data/XCAD   --work_dir work_dir/aug_bg-XCAD_fg-XCAD_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &

# sr 1 24 --qos=q-high-sangwoo.moon python train.py --bg_data_path data/ARCADE --fg_data_path data/XCAD   --work_dir work_dir/aug_bg-ARCADE_fg-XCAD_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 --qos=q-high-sangwoo.moon python train.py --bg_data_path data/ARCADE --fg_data_path data/XCAD   --work_dir work_dir/aug_bg-ARCADE_fg-XCAD_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 --qos=q-high-sangwoo.moon python train.py --bg_data_path data/ARCADE --fg_data_path data/XCAD   --work_dir work_dir/aug_bg-ARCADE_fg-XCAD_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 --qos=q-high-sangwoo.moon python train.py --bg_data_path data/ARCADE --fg_data_path data/XCAD   --work_dir work_dir/aug_bg-ARCADE_fg-XCAD_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 --qos=q-high-sangwoo.moon python train.py --bg_data_path data/ARCADE --fg_data_path data/XCAD   --work_dir work_dir/aug_bg-ARCADE_fg-XCAD_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 --qos=q-high-sangwoo.moon python train.py --bg_data_path data/ARCADE --fg_data_path data/XCAD   --work_dir work_dir/aug_bg-ARCADE_fg-XCAD_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &

# # self_augmented background&
# sr 1 24 --qos=q-high-sangwoo.moon python train.py --self_augmented --bg_data_path data/XCAD   --fg_data_path data/XCAD   --work_dir work_dir/aug_self_bg-XCAD_fg-XCAD_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 --qos=q-high-sangwoo.moon python train.py --self_augmented --bg_data_path data/ARCADE --fg_data_path data/ARCADE --work_dir work_dir/aug_self_bg-ARCADE_fg-ARCADE_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &

# add DCA1
# sr 1 24 python train.py --bg_data_path data/DCA1   --fg_data_path data/FIVES --work_dir work_dir/aug_bg-DCA1_fg-FIVES_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/DCA1   --fg_data_path data/FIVES --work_dir work_dir/aug_bg-DCA1_fg-FIVES_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/DCA1   --fg_data_path data/FIVES --work_dir work_dir/aug_bg-DCA1_fg-FIVES_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/DCA1   --fg_data_path data/FIVES --work_dir work_dir/aug_bg-DCA1_fg-FIVES_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1   --fg_data_path data/FIVES --work_dir work_dir/aug_bg-DCA1_fg-FIVES_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1   --fg_data_path data/FIVES --work_dir work_dir/aug_bg-DCA1_fg-FIVES_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &

# sr 1 24 python train.py --bg_data_path data/DCA1   --fg_data_path data/ARCADE --work_dir work_dir/aug_bg-DCA1_fg-ARCADE_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/DCA1   --fg_data_path data/ARCADE --work_dir work_dir/aug_bg-DCA1_fg-ARCADE_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/DCA1   --fg_data_path data/ARCADE --work_dir work_dir/aug_bg-DCA1_fg-ARCADE_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/DCA1   --fg_data_path data/ARCADE --work_dir work_dir/aug_bg-DCA1_fg-ARCADE_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1   --fg_data_path data/ARCADE --work_dir work_dir/aug_bg-DCA1_fg-ARCADE_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1   --fg_data_path data/ARCADE --work_dir work_dir/aug_bg-DCA1_fg-ARCADE_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &

# sr 1 24 python train.py --self_augmented --bg_data_path data/DCA1 --fg_data_path data/DCA1 --work_dir work_dir/aug_self_bg-DCA1_fg-DCA1_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &

### 0725
# sr 1 24 python train.py --not_augments --data_path data/XCAD         --work_dir work_dir/XCAD  &
# sr 1 24 python train.py --not_augments --data_path data/DCA1         --work_dir work_dir/DCA1  &
# sr 1 24 python train.py --not_augments --data_path data/ARCADE       --work_dir work_dir/ARCADE &
# sr 1 24 python train.py --not_augments --data_path data/XCAD+ARCADE  --work_dir work_dir/XCAD+ARCADE &
# sr 1 24 python train.py --not_augments --data_path data/ALL_CAG      --work_dir work_dir/ALL_CAG &
# sr 1 24 python train.py --not_augments --data_path data/FIVES        --work_dir work_dir/FIVES &
# sr 1 24 python train.py --not_augments --data_path data/ALL          --work_dir work_dir/ALL &

# sr 1 24 python train.py --bg_data_path data/XCAD   --fg_data_path data/XCAD   --work_dir work_dir/aug_bg-XCAD_fg-XCAD_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/XCAD   --fg_data_path data/XCAD   --work_dir work_dir/aug_bg-XCAD_fg-XCAD_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD   --fg_data_path data/XCAD   --work_dir work_dir/aug_bg-XCAD_fg-XCAD_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD   --fg_data_path data/XCAD   --work_dir work_dir/aug_bg-XCAD_fg-XCAD_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD   --fg_data_path data/XCAD   --work_dir work_dir/aug_bg-XCAD_fg-XCAD_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD   --fg_data_path data/XCAD   --work_dir work_dir/aug_bg-XCAD_fg-XCAD_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &

# sr 1 24 python train.py --bg_data_path data/XCAD   --fg_data_path data/FIVES   --work_dir work_dir/aug_bg-XCAD_fg-FIVES_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/XCAD   --fg_data_path data/FIVES   --work_dir work_dir/aug_bg-XCAD_fg-FIVES_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD   --fg_data_path data/FIVES   --work_dir work_dir/aug_bg-XCAD_fg-FIVES_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD   --fg_data_path data/FIVES   --work_dir work_dir/aug_bg-XCAD_fg-FIVES_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD   --fg_data_path data/FIVES   --work_dir work_dir/aug_bg-XCAD_fg-FIVES_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD   --fg_data_path data/FIVES   --work_dir work_dir/aug_bg-XCAD_fg-FIVES_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &

# sr 1 24 python train.py --bg_data_path data/ARCADE   --fg_data_path data/ARCADE   --work_dir work_dir/aug_bg-ARCADE_fg-ARCADE_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/ARCADE   --fg_data_path data/ARCADE   --work_dir work_dir/aug_bg-ARCADE_fg-ARCADE_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/ARCADE   --fg_data_path data/ARCADE   --work_dir work_dir/aug_bg-ARCADE_fg-ARCADE_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/ARCADE   --fg_data_path data/ARCADE   --work_dir work_dir/aug_bg-ARCADE_fg-ARCADE_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/ARCADE   --fg_data_path data/ARCADE   --work_dir work_dir/aug_bg-ARCADE_fg-ARCADE_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/ARCADE   --fg_data_path data/ARCADE   --work_dir work_dir/aug_bg-ARCADE_fg-ARCADE_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &

# sr 1 24 python train.py --bg_data_path data/ARCADE   --fg_data_path data/FIVES   --work_dir work_dir/aug_bg-ARCADE_fg-FIVES_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/ARCADE   --fg_data_path data/FIVES   --work_dir work_dir/aug_bg-ARCADE_fg-FIVES_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/ARCADE   --fg_data_path data/FIVES   --work_dir work_dir/aug_bg-ARCADE_fg-FIVES_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/ARCADE   --fg_data_path data/FIVES   --work_dir work_dir/aug_bg-ARCADE_fg-FIVES_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/ARCADE   --fg_data_path data/FIVES   --work_dir work_dir/aug_bg-ARCADE_fg-FIVES_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/ARCADE   --fg_data_path data/FIVES   --work_dir work_dir/aug_bg-ARCADE_fg-FIVES_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &

# sr 1 24 python train.py --bg_data_path data/DCA1   --fg_data_path data/DCA1   --work_dir work_dir/aug_bg-DCA1_fg-DCA1_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/DCA1   --fg_data_path data/DCA1   --work_dir work_dir/aug_bg-DCA1_fg-DCA1_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/DCA1   --fg_data_path data/DCA1   --work_dir work_dir/aug_bg-DCA1_fg-DCA1_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/DCA1   --fg_data_path data/DCA1   --work_dir work_dir/aug_bg-DCA1_fg-DCA1_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1   --fg_data_path data/DCA1   --work_dir work_dir/aug_bg-DCA1_fg-DCA1_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1   --fg_data_path data/DCA1   --work_dir work_dir/aug_bg-DCA1_fg-DCA1_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &

# sr 1 24 python train.py --bg_data_path data/DCA1   --fg_data_path data/FIVES   --work_dir work_dir/aug_bg-DCA1_fg-FIVES_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/DCA1   --fg_data_path data/FIVES   --work_dir work_dir/aug_bg-DCA1_fg-FIVES_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/DCA1   --fg_data_path data/FIVES   --work_dir work_dir/aug_bg-DCA1_fg-FIVES_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/DCA1   --fg_data_path data/FIVES   --work_dir work_dir/aug_bg-DCA1_fg-FIVES_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1   --fg_data_path data/FIVES   --work_dir work_dir/aug_bg-DCA1_fg-FIVES_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1   --fg_data_path data/FIVES   --work_dir work_dir/aug_bg-DCA1_fg-FIVES_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &

# sr 1 24 python train.py --bg_data_path data/XCAD+ARCADE   --fg_data_path data/XCAD+ARCADE   --work_dir work_dir/aug_bg-XCAD+ARCADE_fg-XCAD+ARCADE_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/XCAD+ARCADE   --fg_data_path data/XCAD+ARCADE   --work_dir work_dir/aug_bg-XCAD+ARCADE_fg-XCAD+ARCADE_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD+ARCADE   --fg_data_path data/XCAD+ARCADE   --work_dir work_dir/aug_bg-XCAD+ARCADE_fg-XCAD+ARCADE_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD+ARCADE   --fg_data_path data/XCAD+ARCADE   --work_dir work_dir/aug_bg-XCAD+ARCADE_fg-XCAD+ARCADE_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD+ARCADE   --fg_data_path data/XCAD+ARCADE   --work_dir work_dir/aug_bg-XCAD+ARCADE_fg-XCAD+ARCADE_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD+ARCADE   --fg_data_path data/XCAD+ARCADE   --work_dir work_dir/aug_bg-XCAD+ARCADE_fg-XCAD+ARCADE_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &

# sr 1 24 python train.py --bg_data_path data/XCAD+ARCADE   --fg_data_path data/FIVES   --work_dir work_dir/aug_bg-XCAD+ARCADE_fg-FIVES_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/XCAD+ARCADE   --fg_data_path data/FIVES   --work_dir work_dir/aug_bg-XCAD+ARCADE_fg-FIVES_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD+ARCADE   --fg_data_path data/FIVES   --work_dir work_dir/aug_bg-XCAD+ARCADE_fg-FIVES_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD+ARCADE   --fg_data_path data/FIVES   --work_dir work_dir/aug_bg-XCAD+ARCADE_fg-FIVES_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD+ARCADE   --fg_data_path data/FIVES   --work_dir work_dir/aug_bg-XCAD+ARCADE_fg-FIVES_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD+ARCADE   --fg_data_path data/FIVES   --work_dir work_dir/aug_bg-XCAD+ARCADE_fg-FIVES_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &

### 0728
# sr 1 24 python train.py --not_augments --data_path data/XCAD                               --test_point_num 5 --work_dir work_dir_pt5/XCAD  &
# sr 1 24 python train.py --not_augments --data_path data/DCA1                               --test_point_num 5 --work_dir work_dir_pt5/DCA1  &
# sr 1 24 python train.py --not_augments --data_path data/ARCADE                             --test_point_num 5 --work_dir work_dir_pt5/ARCADE &
# sr 1 24 python train.py --not_augments --data_path data/XCAD+ARCADE                        --test_point_num 5 --work_dir work_dir_pt5/XCAD+ARCADE &
# sr 1 24 python train.py --not_augments --data_path data/ALL_CAG                            --test_point_num 5 --work_dir work_dir_pt5/ALL_CAG &

# sr 1 24 python train.py --bg_data_path data/XCAD   --fg_data_path data/XCAD                --test_point_num 5 --work_dir work_dir_pt5/aug_bg-XCAD_fg-XCAD_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/XCAD   --fg_data_path data/XCAD                --test_point_num 5 --work_dir work_dir_pt5/aug_bg-XCAD_fg-XCAD_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD   --fg_data_path data/XCAD                --test_point_num 5 --work_dir work_dir_pt5/aug_bg-XCAD_fg-XCAD_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD   --fg_data_path data/XCAD                --test_point_num 5 --work_dir work_dir_pt5/aug_bg-XCAD_fg-XCAD_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD   --fg_data_path data/XCAD                --test_point_num 5 --work_dir work_dir_pt5/aug_bg-XCAD_fg-XCAD_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD   --fg_data_path data/XCAD                --test_point_num 5 --work_dir work_dir_pt5/aug_bg-XCAD_fg-XCAD_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &

# sr 1 24 python train.py --bg_data_path data/ARCADE   --fg_data_path data/ARCADE            --test_point_num 5 --work_dir work_dir_pt5/aug_bg-ARCADE_fg-ARCADE_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/ARCADE   --fg_data_path data/ARCADE            --test_point_num 5 --work_dir work_dir_pt5/aug_bg-ARCADE_fg-ARCADE_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/ARCADE   --fg_data_path data/ARCADE            --test_point_num 5 --work_dir work_dir_pt5/aug_bg-ARCADE_fg-ARCADE_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/ARCADE   --fg_data_path data/ARCADE            --test_point_num 5 --work_dir work_dir_pt5/aug_bg-ARCADE_fg-ARCADE_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/ARCADE   --fg_data_path data/ARCADE            --test_point_num 5 --work_dir work_dir_pt5/aug_bg-ARCADE_fg-ARCADE_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/ARCADE   --fg_data_path data/ARCADE            --test_point_num 5 --work_dir work_dir_pt5/aug_bg-ARCADE_fg-ARCADE_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &

# sr 1 24 python train.py --bg_data_path data/DCA1   --fg_data_path data/DCA1                --test_point_num 5 --work_dir work_dir_pt5/aug_bg-DCA1_fg-DCA1_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/DCA1   --fg_data_path data/DCA1                --test_point_num 5 --work_dir work_dir_pt5/aug_bg-DCA1_fg-DCA1_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/DCA1   --fg_data_path data/DCA1                --test_point_num 5 --work_dir work_dir_pt5/aug_bg-DCA1_fg-DCA1_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/DCA1   --fg_data_path data/DCA1                --test_point_num 5 --work_dir work_dir_pt5/aug_bg-DCA1_fg-DCA1_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1   --fg_data_path data/DCA1                --test_point_num 5 --work_dir work_dir_pt5/aug_bg-DCA1_fg-DCA1_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1   --fg_data_path data/DCA1                --test_point_num 5 --work_dir work_dir_pt5/aug_bg-DCA1_fg-DCA1_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &

# sr 1 24 python train.py --bg_data_path data/XCAD+ARCADE   --fg_data_path data/XCAD+ARCADE  --test_point_num 5 --work_dir work_dir_pt5/aug_bg-XCAD+ARCADE_fg-XCAD+ARCADE_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/XCAD+ARCADE   --fg_data_path data/XCAD+ARCADE  --test_point_num 5 --work_dir work_dir_pt5/aug_bg-XCAD+ARCADE_fg-XCAD+ARCADE_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD+ARCADE   --fg_data_path data/XCAD+ARCADE  --test_point_num 5 --work_dir work_dir_pt5/aug_bg-XCAD+ARCADE_fg-XCAD+ARCADE_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD+ARCADE   --fg_data_path data/XCAD+ARCADE  --test_point_num 5 --work_dir work_dir_pt5/aug_bg-XCAD+ARCADE_fg-XCAD+ARCADE_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD+ARCADE   --fg_data_path data/XCAD+ARCADE  --test_point_num 5 --work_dir work_dir_pt5/aug_bg-XCAD+ARCADE_fg-XCAD+ARCADE_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD+ARCADE   --fg_data_path data/XCAD+ARCADE  --test_point_num 5 --work_dir work_dir_pt5/aug_bg-XCAD+ARCADE_fg-XCAD+ARCADE_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &

### 0728
# sr 1 24 python train.py --bg_data_path data/XCAD   --fg_data_path data/XCAD                --fg_num 2 --work_dir work_dir/aug_fgn-2_bg-XCAD_fg-XCAD_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/XCAD   --fg_data_path data/XCAD                --fg_num 2 --work_dir work_dir/aug_fgn-2_bg-XCAD_fg-XCAD_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD   --fg_data_path data/XCAD                --fg_num 2 --work_dir work_dir/aug_fgn-2_bg-XCAD_fg-XCAD_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD   --fg_data_path data/XCAD                --fg_num 2 --work_dir work_dir/aug_fgn-2_bg-XCAD_fg-XCAD_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD   --fg_data_path data/XCAD                --fg_num 2 --work_dir work_dir/aug_fgn-2_bg-XCAD_fg-XCAD_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD   --fg_data_path data/XCAD                --fg_num 2 --work_dir work_dir/aug_fgn-2_bg-XCAD_fg-XCAD_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &

# sr 1 24 python train.py --bg_data_path data/ARCADE   --fg_data_path data/ARCADE            --fg_num 2 --work_dir work_dir/aug_fgn-2_bg-ARCADE_fg-ARCADE_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/ARCADE   --fg_data_path data/ARCADE            --fg_num 2 --work_dir work_dir/aug_fgn-2_bg-ARCADE_fg-ARCADE_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/ARCADE   --fg_data_path data/ARCADE            --fg_num 2 --work_dir work_dir/aug_fgn-2_bg-ARCADE_fg-ARCADE_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/ARCADE   --fg_data_path data/ARCADE            --fg_num 2 --work_dir work_dir/aug_fgn-2_bg-ARCADE_fg-ARCADE_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/ARCADE   --fg_data_path data/ARCADE            --fg_num 2 --work_dir work_dir/aug_fgn-2_bg-ARCADE_fg-ARCADE_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/ARCADE   --fg_data_path data/ARCADE            --fg_num 2 --work_dir work_dir/aug_fgn-2_bg-ARCADE_fg-ARCADE_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &

# sr 1 24 python train.py --bg_data_path data/DCA1   --fg_data_path data/DCA1                --fg_num 2 --work_dir work_dir/aug_fgn-2_bg-DCA1_fg-DCA1_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/DCA1   --fg_data_path data/DCA1                --fg_num 2 --work_dir work_dir/aug_fgn-2_bg-DCA1_fg-DCA1_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/DCA1   --fg_data_path data/DCA1                --fg_num 2 --work_dir work_dir/aug_fgn-2_bg-DCA1_fg-DCA1_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/DCA1   --fg_data_path data/DCA1                --fg_num 2 --work_dir work_dir/aug_fgn-2_bg-DCA1_fg-DCA1_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1   --fg_data_path data/DCA1                --fg_num 2 --work_dir work_dir/aug_fgn-2_bg-DCA1_fg-DCA1_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1   --fg_data_path data/DCA1                --fg_num 2 --work_dir work_dir/aug_fgn-2_bg-DCA1_fg-DCA1_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &

# sr 1 24 python train.py --bg_data_path data/XCAD+ARCADE   --fg_data_path data/XCAD+ARCADE  --fg_num 2 --work_dir work_dir/aug_fgn-2_bg-XCAD+ARCADE_fg-XCAD+ARCADE_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/XCAD+ARCADE   --fg_data_path data/XCAD+ARCADE  --fg_num 2 --work_dir work_dir/aug_fgn-2_bg-XCAD+ARCADE_fg-XCAD+ARCADE_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD+ARCADE   --fg_data_path data/XCAD+ARCADE  --fg_num 2 --work_dir work_dir/aug_fgn-2_bg-XCAD+ARCADE_fg-XCAD+ARCADE_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD+ARCADE   --fg_data_path data/XCAD+ARCADE  --fg_num 2 --work_dir work_dir/aug_fgn-2_bg-XCAD+ARCADE_fg-XCAD+ARCADE_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD+ARCADE   --fg_data_path data/XCAD+ARCADE  --fg_num 2 --work_dir work_dir/aug_fgn-2_bg-XCAD+ARCADE_fg-XCAD+ARCADE_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD+ARCADE   --fg_data_path data/XCAD+ARCADE  --fg_num 2 --work_dir work_dir/aug_fgn-2_bg-XCAD+ARCADE_fg-XCAD+ARCADE_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &

### 0728
# sr 1 24 python train.py --bg_data_path data/XCAD   --fg_data_path data/XCAD                --fg_overlap --work_dir work_dir/aug_fgovl_bg-XCAD_fg-XCAD_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/XCAD   --fg_data_path data/XCAD                --fg_overlap --work_dir work_dir/aug_fgovl_bg-XCAD_fg-XCAD_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD   --fg_data_path data/XCAD                --fg_overlap --work_dir work_dir/aug_fgovl_bg-XCAD_fg-XCAD_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD   --fg_data_path data/XCAD                --fg_overlap --work_dir work_dir/aug_fgovl_bg-XCAD_fg-XCAD_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD   --fg_data_path data/XCAD                --fg_overlap --work_dir work_dir/aug_fgovl_bg-XCAD_fg-XCAD_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD   --fg_data_path data/XCAD                --fg_overlap --work_dir work_dir/aug_fgovl_bg-XCAD_fg-XCAD_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &

# sr 1 24 python train.py --bg_data_path data/ARCADE   --fg_data_path data/ARCADE            --fg_overlap --work_dir work_dir/aug_fgovl_bg-ARCADE_fg-ARCADE_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/ARCADE   --fg_data_path data/ARCADE            --fg_overlap --work_dir work_dir/aug_fgovl_bg-ARCADE_fg-ARCADE_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/ARCADE   --fg_data_path data/ARCADE            --fg_overlap --work_dir work_dir/aug_fgovl_bg-ARCADE_fg-ARCADE_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/ARCADE   --fg_data_path data/ARCADE            --fg_overlap --work_dir work_dir/aug_fgovl_bg-ARCADE_fg-ARCADE_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/ARCADE   --fg_data_path data/ARCADE            --fg_overlap --work_dir work_dir/aug_fgovl_bg-ARCADE_fg-ARCADE_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/ARCADE   --fg_data_path data/ARCADE            --fg_overlap --work_dir work_dir/aug_fgovl_bg-ARCADE_fg-ARCADE_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &

# sr 1 24 python train.py --bg_data_path data/DCA1   --fg_data_path data/DCA1                --fg_overlap --work_dir work_dir/aug_fgovl_bg-DCA1_fg-DCA1_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/DCA1   --fg_data_path data/DCA1                --fg_overlap --work_dir work_dir/aug_fgovl_bg-DCA1_fg-DCA1_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/DCA1   --fg_data_path data/DCA1                --fg_overlap --work_dir work_dir/aug_fgovl_bg-DCA1_fg-DCA1_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/DCA1   --fg_data_path data/DCA1                --fg_overlap --work_dir work_dir/aug_fgovl_bg-DCA1_fg-DCA1_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1   --fg_data_path data/DCA1                --fg_overlap --work_dir work_dir/aug_fgovl_bg-DCA1_fg-DCA1_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1   --fg_data_path data/DCA1                --fg_overlap --work_dir work_dir/aug_fgovl_bg-DCA1_fg-DCA1_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &

# sr 1 24 python train.py --bg_data_path data/XCAD+ARCADE   --fg_data_path data/XCAD+ARCADE  --fg_overlap --work_dir work_dir/aug_fgovl_bg-XCAD+ARCADE_fg-XCAD+ARCADE_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/XCAD+ARCADE   --fg_data_path data/XCAD+ARCADE  --fg_overlap --work_dir work_dir/aug_fgovl_bg-XCAD+ARCADE_fg-XCAD+ARCADE_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD+ARCADE   --fg_data_path data/XCAD+ARCADE  --fg_overlap --work_dir work_dir/aug_fgovl_bg-XCAD+ARCADE_fg-XCAD+ARCADE_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD+ARCADE   --fg_data_path data/XCAD+ARCADE  --fg_overlap --work_dir work_dir/aug_fgovl_bg-XCAD+ARCADE_fg-XCAD+ARCADE_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD+ARCADE   --fg_data_path data/XCAD+ARCADE  --fg_overlap --work_dir work_dir/aug_fgovl_bg-XCAD+ARCADE_fg-XCAD+ARCADE_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD+ARCADE   --fg_data_path data/XCAD+ARCADE  --fg_overlap --work_dir work_dir/aug_fgovl_bg-XCAD+ARCADE_fg-XCAD+ARCADE_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &

# sr 1 24 python train.py --bg_data_path data/XCAD   --fg_data_path data/XCAD                --work_dir work_dir/aug_bg-XCAD_fg-XCAD_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/XCAD   --fg_data_path data/XCAD                --work_dir work_dir/aug_bg-XCAD_fg-XCAD_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD   --fg_data_path data/XCAD                --work_dir work_dir/aug_bg-XCAD_fg-XCAD_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD   --fg_data_path data/XCAD                --work_dir work_dir/aug_bg-XCAD_fg-XCAD_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD   --fg_data_path data/XCAD                --work_dir work_dir/aug_bg-XCAD_fg-XCAD_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD   --fg_data_path data/XCAD                --work_dir work_dir/aug_bg-XCAD_fg-XCAD_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &

# sr 1 24 python train.py --bg_data_path data/ARCADE   --fg_data_path data/ARCADE            --work_dir work_dir/aug_bg-ARCADE_fg-ARCADE_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/ARCADE   --fg_data_path data/ARCADE            --work_dir work_dir/aug_bg-ARCADE_fg-ARCADE_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/ARCADE   --fg_data_path data/ARCADE            --work_dir work_dir/aug_bg-ARCADE_fg-ARCADE_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/ARCADE   --fg_data_path data/ARCADE            --work_dir work_dir/aug_bg-ARCADE_fg-ARCADE_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/ARCADE   --fg_data_path data/ARCADE            --work_dir work_dir/aug_bg-ARCADE_fg-ARCADE_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/ARCADE   --fg_data_path data/ARCADE            --work_dir work_dir/aug_bg-ARCADE_fg-ARCADE_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &

# sr 1 24 python train.py --bg_data_path data/DCA1   --fg_data_path data/DCA1                --work_dir work_dir/aug_bg-DCA1_fg-DCA1_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/DCA1   --fg_data_path data/DCA1                --work_dir work_dir/aug_bg-DCA1_fg-DCA1_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/DCA1   --fg_data_path data/DCA1                --work_dir work_dir/aug_bg-DCA1_fg-DCA1_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/DCA1   --fg_data_path data/DCA1                --work_dir work_dir/aug_bg-DCA1_fg-DCA1_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1   --fg_data_path data/DCA1                --work_dir work_dir/aug_bg-DCA1_fg-DCA1_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1   --fg_data_path data/DCA1                --work_dir work_dir/aug_bg-DCA1_fg-DCA1_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &

# sr 1 24 python train.py --bg_data_path data/XCAD+ARCADE   --fg_data_path data/XCAD+ARCADE  --work_dir work_dir/aug_bg-XCAD+ARCADE_fg-XCAD+ARCADE_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/XCAD+ARCADE   --fg_data_path data/XCAD+ARCADE  --work_dir work_dir/aug_bg-XCAD+ARCADE_fg-XCAD+ARCADE_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD+ARCADE   --fg_data_path data/XCAD+ARCADE  --work_dir work_dir/aug_bg-XCAD+ARCADE_fg-XCAD+ARCADE_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD+ARCADE   --fg_data_path data/XCAD+ARCADE  --work_dir work_dir/aug_bg-XCAD+ARCADE_fg-XCAD+ARCADE_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD+ARCADE   --fg_data_path data/XCAD+ARCADE  --work_dir work_dir/aug_bg-XCAD+ARCADE_fg-XCAD+ARCADE_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD+ARCADE   --fg_data_path data/XCAD+ARCADE  --work_dir work_dir/aug_bg-XCAD+ARCADE_fg-XCAD+ARCADE_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &

# sr 1 24 python train.py --bg_data_path data/XCAD   --fg_data_path data/XCAD                --fg_num 2 --fg_overlap --work_dir work_dir/aug_fgn-2_fgovl_bg-XCAD_fg-XCAD_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/XCAD   --fg_data_path data/XCAD                --fg_num 2 --fg_overlap --work_dir work_dir/aug_fgn-2_fgovl_bg-XCAD_fg-XCAD_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD   --fg_data_path data/XCAD                --fg_num 2 --fg_overlap --work_dir work_dir/aug_fgn-2_fgovl_bg-XCAD_fg-XCAD_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD   --fg_data_path data/XCAD                --fg_num 2 --fg_overlap --work_dir work_dir/aug_fgn-2_fgovl_bg-XCAD_fg-XCAD_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD   --fg_data_path data/XCAD                --fg_num 2 --fg_overlap --work_dir work_dir/aug_fgn-2_fgovl_bg-XCAD_fg-XCAD_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD   --fg_data_path data/XCAD                --fg_num 2 --fg_overlap --work_dir work_dir/aug_fgn-2_fgovl_bg-XCAD_fg-XCAD_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &

# sr 1 24 python train.py --bg_data_path data/ARCADE   --fg_data_path data/ARCADE            --fg_num 2 --fg_overlap --work_dir work_dir/aug_fgn-2_fgovl_bg-ARCADE_fg-ARCADE_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/ARCADE   --fg_data_path data/ARCADE            --fg_num 2 --fg_overlap --work_dir work_dir/aug_fgn-2_fgovl_bg-ARCADE_fg-ARCADE_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/ARCADE   --fg_data_path data/ARCADE            --fg_num 2 --fg_overlap --work_dir work_dir/aug_fgn-2_fgovl_bg-ARCADE_fg-ARCADE_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/ARCADE   --fg_data_path data/ARCADE            --fg_num 2 --fg_overlap --work_dir work_dir/aug_fgn-2_fgovl_bg-ARCADE_fg-ARCADE_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/ARCADE   --fg_data_path data/ARCADE            --fg_num 2 --fg_overlap --work_dir work_dir/aug_fgn-2_fgovl_bg-ARCADE_fg-ARCADE_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/ARCADE   --fg_data_path data/ARCADE            --fg_num 2 --fg_overlap --work_dir work_dir/aug_fgn-2_fgovl_bg-ARCADE_fg-ARCADE_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &

# sr 1 24 python train.py --bg_data_path data/DCA1   --fg_data_path data/DCA1                --fg_num 2 --fg_overlap --work_dir work_dir/aug_fgn-2_fgovl_bg-DCA1_fg-DCA1_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/DCA1   --fg_data_path data/DCA1                --fg_num 2 --fg_overlap --work_dir work_dir/aug_fgn-2_fgovl_bg-DCA1_fg-DCA1_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/DCA1   --fg_data_path data/DCA1                --fg_num 2 --fg_overlap --work_dir work_dir/aug_fgn-2_fgovl_bg-DCA1_fg-DCA1_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/DCA1   --fg_data_path data/DCA1                --fg_num 2 --fg_overlap --work_dir work_dir/aug_fgn-2_fgovl_bg-DCA1_fg-DCA1_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1   --fg_data_path data/DCA1                --fg_num 2 --fg_overlap --work_dir work_dir/aug_fgn-2_fgovl_bg-DCA1_fg-DCA1_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1   --fg_data_path data/DCA1                --fg_num 2 --fg_overlap --work_dir work_dir/aug_fgn-2_fgovl_bg-DCA1_fg-DCA1_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &

# sr 1 24 python train.py --bg_data_path data/XCAD+ARCADE   --fg_data_path data/XCAD+ARCADE  --fg_num 2 --fg_overlap --work_dir work_dir/aug_fgn-2_fgovl_bg-XCAD+ARCADE_fg-XCAD+ARCADE_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/XCAD+ARCADE   --fg_data_path data/XCAD+ARCADE  --fg_num 2 --fg_overlap --work_dir work_dir/aug_fgn-2_fgovl_bg-XCAD+ARCADE_fg-XCAD+ARCADE_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD+ARCADE   --fg_data_path data/XCAD+ARCADE  --fg_num 2 --fg_overlap --work_dir work_dir/aug_fgn-2_fgovl_bg-XCAD+ARCADE_fg-XCAD+ARCADE_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD+ARCADE   --fg_data_path data/XCAD+ARCADE  --fg_num 2 --fg_overlap --work_dir work_dir/aug_fgn-2_fgovl_bg-XCAD+ARCADE_fg-XCAD+ARCADE_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD+ARCADE   --fg_data_path data/XCAD+ARCADE  --fg_num 2 --fg_overlap --work_dir work_dir/aug_fgn-2_fgovl_bg-XCAD+ARCADE_fg-XCAD+ARCADE_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD+ARCADE   --fg_data_path data/XCAD+ARCADE  --fg_num 2 --fg_overlap --work_dir work_dir/aug_fgn-2_fgovl_bg-XCAD+ARCADE_fg-XCAD+ARCADE_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &

# sr 1 24 python train.py --not_augments --data_path data/XCAD                               --work_dir work_dir/vanilla_XCAD  &
# sr 1 24 python train.py --not_augments --data_path data/DCA1                               --work_dir work_dir/vanilla_DCA1  &
# sr 1 24 python train.py --not_augments --data_path data/ARCADE                             --work_dir work_dir/vanilla_ARCADE &
# sr 1 24 python train.py --not_augments --data_path data/XCAD+ARCADE                        --work_dir work_dir/vanilla_XCAD+ARCADE &
# sr 1 24 python train.py --not_augments --data_path data/ALL_CAG                            --work_dir work_dir/vanilla_ALL_CAG &

# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1              --work_dir work_dir/aug_fgn-1_fgovl-F_bg-XCAD_fg-XCAD_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1              --work_dir work_dir/aug_fgn-1_fgovl-F_bg-XCAD_fg-XCAD_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1              --work_dir work_dir/aug_fgn-1_fgovl-F_bg-XCAD_fg-XCAD_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1              --work_dir work_dir/aug_fgn-1_fgovl-F_bg-XCAD_fg-XCAD_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1              --work_dir work_dir/aug_fgn-1_fgovl-F_bg-XCAD_fg-XCAD_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1              --work_dir work_dir/aug_fgn-1_fgovl-F_bg-XCAD_fg-XCAD_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1              --work_dir work_dir/aug_fgn-1_fgovl-F_bg-XCAD_fg-XCAD_fgs-1.00-1.00 --fg_min_size 1.00 --fg_max_size 1.00 &

# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2              --work_dir work_dir/aug_fgn-2_fgovl-F_bg-XCAD_fg-XCAD_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2              --work_dir work_dir/aug_fgn-2_fgovl-F_bg-XCAD_fg-XCAD_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2              --work_dir work_dir/aug_fgn-2_fgovl-F_bg-XCAD_fg-XCAD_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2              --work_dir work_dir/aug_fgn-2_fgovl-F_bg-XCAD_fg-XCAD_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2              --work_dir work_dir/aug_fgn-2_fgovl-F_bg-XCAD_fg-XCAD_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2              --work_dir work_dir/aug_fgn-2_fgovl-F_bg-XCAD_fg-XCAD_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2              --work_dir work_dir/aug_fgn-2_fgovl-F_bg-XCAD_fg-XCAD_fgs-1.00-1.00 --fg_min_size 1.00 --fg_max_size 1.00 &

# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1 --fg_overlap --work_dir work_dir/aug_fgn-1_fgovl-T_bg-XCAD_fg-XCAD_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1 --fg_overlap --work_dir work_dir/aug_fgn-1_fgovl-T_bg-XCAD_fg-XCAD_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1 --fg_overlap --work_dir work_dir/aug_fgn-1_fgovl-T_bg-XCAD_fg-XCAD_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1 --fg_overlap --work_dir work_dir/aug_fgn-1_fgovl-T_bg-XCAD_fg-XCAD_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1 --fg_overlap --work_dir work_dir/aug_fgn-1_fgovl-T_bg-XCAD_fg-XCAD_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1 --fg_overlap --work_dir work_dir/aug_fgn-1_fgovl-T_bg-XCAD_fg-XCAD_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1 --fg_overlap --work_dir work_dir/aug_fgn-1_fgovl-T_bg-XCAD_fg-XCAD_fgs-1.00-1.00 --fg_min_size 1.00 --fg_max_size 1.00 &

# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2 --fg_overlap --work_dir work_dir/aug_fgn-2_fgovl-T_bg-XCAD_fg-XCAD_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2 --fg_overlap --work_dir work_dir/aug_fgn-2_fgovl-T_bg-XCAD_fg-XCAD_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2 --fg_overlap --work_dir work_dir/aug_fgn-2_fgovl-T_bg-XCAD_fg-XCAD_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2 --fg_overlap --work_dir work_dir/aug_fgn-2_fgovl-T_bg-XCAD_fg-XCAD_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2 --fg_overlap --work_dir work_dir/aug_fgn-2_fgovl-T_bg-XCAD_fg-XCAD_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2 --fg_overlap --work_dir work_dir/aug_fgn-2_fgovl-T_bg-XCAD_fg-XCAD_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2 --fg_overlap --work_dir work_dir/aug_fgn-2_fgovl-T_bg-XCAD_fg-XCAD_fgs-1.00-1.00 --fg_min_size 1.00 --fg_max_size 1.00 &

# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 1              --work_dir work_dir/aug_fgn-1_fgovl-F_bg-ARCADE_fg-ARCADE_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 1              --work_dir work_dir/aug_fgn-1_fgovl-F_bg-ARCADE_fg-ARCADE_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 1              --work_dir work_dir/aug_fgn-1_fgovl-F_bg-ARCADE_fg-ARCADE_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 1              --work_dir work_dir/aug_fgn-1_fgovl-F_bg-ARCADE_fg-ARCADE_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 1              --work_dir work_dir/aug_fgn-1_fgovl-F_bg-ARCADE_fg-ARCADE_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 1              --work_dir work_dir/aug_fgn-1_fgovl-F_bg-ARCADE_fg-ARCADE_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 1              --work_dir work_dir/aug_fgn-1_fgovl-F_bg-ARCADE_fg-ARCADE_fgs-1.00-1.00 --fg_min_size 1.00 --fg_max_size 1.00 &

# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 2              --work_dir work_dir/aug_fgn-2_fgovl-F_bg-ARCADE_fg-ARCADE_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 2              --work_dir work_dir/aug_fgn-2_fgovl-F_bg-ARCADE_fg-ARCADE_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 2              --work_dir work_dir/aug_fgn-2_fgovl-F_bg-ARCADE_fg-ARCADE_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 2              --work_dir work_dir/aug_fgn-2_fgovl-F_bg-ARCADE_fg-ARCADE_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 2              --work_dir work_dir/aug_fgn-2_fgovl-F_bg-ARCADE_fg-ARCADE_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 2              --work_dir work_dir/aug_fgn-2_fgovl-F_bg-ARCADE_fg-ARCADE_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 2              --work_dir work_dir/aug_fgn-2_fgovl-F_bg-ARCADE_fg-ARCADE_fgs-1.00-1.00 --fg_min_size 1.00 --fg_max_size 1.00 &

# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 1 --fg_overlap --work_dir work_dir/aug_fgn-1_fgovl-T_bg-ARCADE_fg-ARCADE_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 1 --fg_overlap --work_dir work_dir/aug_fgn-1_fgovl-T_bg-ARCADE_fg-ARCADE_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 1 --fg_overlap --work_dir work_dir/aug_fgn-1_fgovl-T_bg-ARCADE_fg-ARCADE_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 1 --fg_overlap --work_dir work_dir/aug_fgn-1_fgovl-T_bg-ARCADE_fg-ARCADE_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 1 --fg_overlap --work_dir work_dir/aug_fgn-1_fgovl-T_bg-ARCADE_fg-ARCADE_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 1 --fg_overlap --work_dir work_dir/aug_fgn-1_fgovl-T_bg-ARCADE_fg-ARCADE_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 1 --fg_overlap --work_dir work_dir/aug_fgn-1_fgovl-T_bg-ARCADE_fg-ARCADE_fgs-1.00-1.00 --fg_min_size 1.00 --fg_max_size 1.00 &

# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 2 --fg_overlap --work_dir work_dir/aug_fgn-2_fgovl-T_bg-ARCADE_fg-ARCADE_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 2 --fg_overlap --work_dir work_dir/aug_fgn-2_fgovl-T_bg-ARCADE_fg-ARCADE_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 2 --fg_overlap --work_dir work_dir/aug_fgn-2_fgovl-T_bg-ARCADE_fg-ARCADE_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 2 --fg_overlap --work_dir work_dir/aug_fgn-2_fgovl-T_bg-ARCADE_fg-ARCADE_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 2 --fg_overlap --work_dir work_dir/aug_fgn-2_fgovl-T_bg-ARCADE_fg-ARCADE_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 2 --fg_overlap --work_dir work_dir/aug_fgn-2_fgovl-T_bg-ARCADE_fg-ARCADE_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 2 --fg_overlap --work_dir work_dir/aug_fgn-2_fgovl-T_bg-ARCADE_fg-ARCADE_fgs-1.00-1.00 --fg_min_size 1.00 --fg_max_size 1.00 &

# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1              --work_dir work_dir/aug_fgn-1_fgovl-F_bg-DCA1_fg-DCA1_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1              --work_dir work_dir/aug_fgn-1_fgovl-F_bg-DCA1_fg-DCA1_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1              --work_dir work_dir/aug_fgn-1_fgovl-F_bg-DCA1_fg-DCA1_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1              --work_dir work_dir/aug_fgn-1_fgovl-F_bg-DCA1_fg-DCA1_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1              --work_dir work_dir/aug_fgn-1_fgovl-F_bg-DCA1_fg-DCA1_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1              --work_dir work_dir/aug_fgn-1_fgovl-F_bg-DCA1_fg-DCA1_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1              --work_dir work_dir/aug_fgn-1_fgovl-F_bg-DCA1_fg-DCA1_fgs-1.00-1.00 --fg_min_size 1.00 --fg_max_size 1.00 &

# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2              --work_dir work_dir/aug_fgn-2_fgovl-F_bg-DCA1_fg-DCA1_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2              --work_dir work_dir/aug_fgn-2_fgovl-F_bg-DCA1_fg-DCA1_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2              --work_dir work_dir/aug_fgn-2_fgovl-F_bg-DCA1_fg-DCA1_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2              --work_dir work_dir/aug_fgn-2_fgovl-F_bg-DCA1_fg-DCA1_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2              --work_dir work_dir/aug_fgn-2_fgovl-F_bg-DCA1_fg-DCA1_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2              --work_dir work_dir/aug_fgn-2_fgovl-F_bg-DCA1_fg-DCA1_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2              --work_dir work_dir/aug_fgn-2_fgovl-F_bg-DCA1_fg-DCA1_fgs-1.00-1.00 --fg_min_size 1.00 --fg_max_size 1.00 &

# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1 --fg_overlap --work_dir work_dir/aug_fgn-1_fgovl-T_bg-DCA1_fg-DCA1_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1 --fg_overlap --work_dir work_dir/aug_fgn-1_fgovl-T_bg-DCA1_fg-DCA1_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1 --fg_overlap --work_dir work_dir/aug_fgn-1_fgovl-T_bg-DCA1_fg-DCA1_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1 --fg_overlap --work_dir work_dir/aug_fgn-1_fgovl-T_bg-DCA1_fg-DCA1_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1 --fg_overlap --work_dir work_dir/aug_fgn-1_fgovl-T_bg-DCA1_fg-DCA1_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1 --fg_overlap --work_dir work_dir/aug_fgn-1_fgovl-T_bg-DCA1_fg-DCA1_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1 --fg_overlap --work_dir work_dir/aug_fgn-1_fgovl-T_bg-DCA1_fg-DCA1_fgs-1.00-1.00 --fg_min_size 1.00 --fg_max_size 1.00 &

# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2 --fg_overlap --work_dir work_dir/aug_fgn-2_fgovl-T_bg-DCA1_fg-DCA1_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2 --fg_overlap --work_dir work_dir/aug_fgn-2_fgovl-T_bg-DCA1_fg-DCA1_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2 --fg_overlap --work_dir work_dir/aug_fgn-2_fgovl-T_bg-DCA1_fg-DCA1_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2 --fg_overlap --work_dir work_dir/aug_fgn-2_fgovl-T_bg-DCA1_fg-DCA1_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2 --fg_overlap --work_dir work_dir/aug_fgn-2_fgovl-T_bg-DCA1_fg-DCA1_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2 --fg_overlap --work_dir work_dir/aug_fgn-2_fgovl-T_bg-DCA1_fg-DCA1_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2 --fg_overlap --work_dir work_dir/aug_fgn-2_fgovl-T_bg-DCA1_fg-DCA1_fgs-1.00-1.00 --fg_min_size 1.00 --fg_max_size 1.00 &

# sr 1 24 python train.py --bg_data_path data/XCAD+ARCADE --fg_data_path data/XCAD+ARCADE --fg_num 1              --work_dir work_dir/aug_fgn-1_fgovl-F_bg-XCAD+ARCADE_fg-XCAD+ARCADE_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/XCAD+ARCADE --fg_data_path data/XCAD+ARCADE --fg_num 1              --work_dir work_dir/aug_fgn-1_fgovl-F_bg-XCAD+ARCADE_fg-XCAD+ARCADE_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD+ARCADE --fg_data_path data/XCAD+ARCADE --fg_num 1              --work_dir work_dir/aug_fgn-1_fgovl-F_bg-XCAD+ARCADE_fg-XCAD+ARCADE_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD+ARCADE --fg_data_path data/XCAD+ARCADE --fg_num 1              --work_dir work_dir/aug_fgn-1_fgovl-F_bg-XCAD+ARCADE_fg-XCAD+ARCADE_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD+ARCADE --fg_data_path data/XCAD+ARCADE --fg_num 1              --work_dir work_dir/aug_fgn-1_fgovl-F_bg-XCAD+ARCADE_fg-XCAD+ARCADE_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD+ARCADE --fg_data_path data/XCAD+ARCADE --fg_num 1              --work_dir work_dir/aug_fgn-1_fgovl-F_bg-XCAD+ARCADE_fg-XCAD+ARCADE_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD+ARCADE --fg_data_path data/XCAD+ARCADE --fg_num 1              --work_dir work_dir/aug_fgn-1_fgovl-F_bg-XCAD+ARCADE_fg-XCAD+ARCADE_fgs-1.00-1.00 --fg_min_size 1.00 --fg_max_size 1.00 &

# sr 1 24 python train.py --bg_data_path data/XCAD+ARCADE --fg_data_path data/XCAD+ARCADE --fg_num 2              --work_dir work_dir/aug_fgn-2_fgovl-F_bg-XCAD+ARCADE_fg-XCAD+ARCADE_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/XCAD+ARCADE --fg_data_path data/XCAD+ARCADE --fg_num 2              --work_dir work_dir/aug_fgn-2_fgovl-F_bg-XCAD+ARCADE_fg-XCAD+ARCADE_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD+ARCADE --fg_data_path data/XCAD+ARCADE --fg_num 2              --work_dir work_dir/aug_fgn-2_fgovl-F_bg-XCAD+ARCADE_fg-XCAD+ARCADE_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD+ARCADE --fg_data_path data/XCAD+ARCADE --fg_num 2              --work_dir work_dir/aug_fgn-2_fgovl-F_bg-XCAD+ARCADE_fg-XCAD+ARCADE_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD+ARCADE --fg_data_path data/XCAD+ARCADE --fg_num 2              --work_dir work_dir/aug_fgn-2_fgovl-F_bg-XCAD+ARCADE_fg-XCAD+ARCADE_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD+ARCADE --fg_data_path data/XCAD+ARCADE --fg_num 2              --work_dir work_dir/aug_fgn-2_fgovl-F_bg-XCAD+ARCADE_fg-XCAD+ARCADE_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD+ARCADE --fg_data_path data/XCAD+ARCADE --fg_num 2              --work_dir work_dir/aug_fgn-2_fgovl-F_bg-XCAD+ARCADE_fg-XCAD+ARCADE_fgs-1.00-1.00 --fg_min_size 1.00 --fg_max_size 1.00 &

# sr 1 24 python train.py --bg_data_path data/XCAD+ARCADE --fg_data_path data/XCAD+ARCADE --fg_num 1 --fg_overlap --work_dir work_dir/aug_fgn-1_fgovl-T_bg-XCAD+ARCADE_fg-XCAD+ARCADE_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/XCAD+ARCADE --fg_data_path data/XCAD+ARCADE --fg_num 1 --fg_overlap --work_dir work_dir/aug_fgn-1_fgovl-T_bg-XCAD+ARCADE_fg-XCAD+ARCADE_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD+ARCADE --fg_data_path data/XCAD+ARCADE --fg_num 1 --fg_overlap --work_dir work_dir/aug_fgn-1_fgovl-T_bg-XCAD+ARCADE_fg-XCAD+ARCADE_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD+ARCADE --fg_data_path data/XCAD+ARCADE --fg_num 1 --fg_overlap --work_dir work_dir/aug_fgn-1_fgovl-T_bg-XCAD+ARCADE_fg-XCAD+ARCADE_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD+ARCADE --fg_data_path data/XCAD+ARCADE --fg_num 1 --fg_overlap --work_dir work_dir/aug_fgn-1_fgovl-T_bg-XCAD+ARCADE_fg-XCAD+ARCADE_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD+ARCADE --fg_data_path data/XCAD+ARCADE --fg_num 1 --fg_overlap --work_dir work_dir/aug_fgn-1_fgovl-T_bg-XCAD+ARCADE_fg-XCAD+ARCADE_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD+ARCADE --fg_data_path data/XCAD+ARCADE --fg_num 1 --fg_overlap --work_dir work_dir/aug_fgn-1_fgovl-T_bg-XCAD+ARCADE_fg-XCAD+ARCADE_fgs-1.00-1.00 --fg_min_size 1.00 --fg_max_size 1.00 &

# sr 1 24 python train.py --bg_data_path data/XCAD+ARCADE --fg_data_path data/XCAD+ARCADE --fg_num 2 --fg_overlap --work_dir work_dir/aug_fgn-2_fgovl-T_bg-XCAD+ARCADE_fg-XCAD+ARCADE_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/XCAD+ARCADE --fg_data_path data/XCAD+ARCADE --fg_num 2 --fg_overlap --work_dir work_dir/aug_fgn-2_fgovl-T_bg-XCAD+ARCADE_fg-XCAD+ARCADE_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD+ARCADE --fg_data_path data/XCAD+ARCADE --fg_num 2 --fg_overlap --work_dir work_dir/aug_fgn-2_fgovl-T_bg-XCAD+ARCADE_fg-XCAD+ARCADE_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD+ARCADE --fg_data_path data/XCAD+ARCADE --fg_num 2 --fg_overlap --work_dir work_dir/aug_fgn-2_fgovl-T_bg-XCAD+ARCADE_fg-XCAD+ARCADE_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD+ARCADE --fg_data_path data/XCAD+ARCADE --fg_num 2 --fg_overlap --work_dir work_dir/aug_fgn-2_fgovl-T_bg-XCAD+ARCADE_fg-XCAD+ARCADE_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD+ARCADE --fg_data_path data/XCAD+ARCADE --fg_num 2 --fg_overlap --work_dir work_dir/aug_fgn-2_fgovl-T_bg-XCAD+ARCADE_fg-XCAD+ARCADE_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD+ARCADE --fg_data_path data/XCAD+ARCADE --fg_num 2 --fg_overlap --work_dir work_dir/aug_fgn-2_fgovl-T_bg-XCAD+ARCADE_fg-XCAD+ARCADE_fgs-1.00-1.00 --fg_min_size 1.00 --fg_max_size 1.00 &

# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1              --fg_color --fg_color_sigma 0.5 --work_dir work_dir/XCAD_fgn-1_fgovl-F_fgc-T_sigma-0.5_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1              --fg_color --fg_color_sigma 0.5 --work_dir work_dir/XCAD_fgn-1_fgovl-F_fgc-T_sigma-0.5_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1              --fg_color --fg_color_sigma 0.5 --work_dir work_dir/XCAD_fgn-1_fgovl-F_fgc-T_sigma-0.5_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1              --fg_color --fg_color_sigma 0.5 --work_dir work_dir/XCAD_fgn-1_fgovl-F_fgc-T_sigma-0.5_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1              --fg_color --fg_color_sigma 0.5 --work_dir work_dir/XCAD_fgn-1_fgovl-F_fgc-T_sigma-0.5_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1              --fg_color --fg_color_sigma 0.5 --work_dir work_dir/XCAD_fgn-1_fgovl-F_fgc-T_sigma-0.5_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1              --fg_color --fg_color_sigma 0.5 --work_dir work_dir/XCAD_fgn-1_fgovl-F_fgc-T_sigma-0.5_fgs-1.00-1.00 --fg_min_size 1.00 --fg_max_size 1.00 &
                                                                                                                                                        
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2              --fg_color --fg_color_sigma 0.5 --work_dir work_dir/XCAD_fgn-2_fgovl-F_fgc-T_sigma-0.5_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2              --fg_color --fg_color_sigma 0.5 --work_dir work_dir/XCAD_fgn-2_fgovl-F_fgc-T_sigma-0.5_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2              --fg_color --fg_color_sigma 0.5 --work_dir work_dir/XCAD_fgn-2_fgovl-F_fgc-T_sigma-0.5_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2              --fg_color --fg_color_sigma 0.5 --work_dir work_dir/XCAD_fgn-2_fgovl-F_fgc-T_sigma-0.5_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2              --fg_color --fg_color_sigma 0.5 --work_dir work_dir/XCAD_fgn-2_fgovl-F_fgc-T_sigma-0.5_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2              --fg_color --fg_color_sigma 0.5 --work_dir work_dir/XCAD_fgn-2_fgovl-F_fgc-T_sigma-0.5_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2              --fg_color --fg_color_sigma 0.5 --work_dir work_dir/XCAD_fgn-2_fgovl-F_fgc-T_sigma-0.5_fgs-1.00-1.00 --fg_min_size 1.00 --fg_max_size 1.00 &
                                                                                                                                                        
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1 --fg_overlap --fg_color --fg_color_sigma 0.5 --work_dir work_dir/XCAD_fgn-1_fgovl-T_fgc-T_sigma-0.5_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1 --fg_overlap --fg_color --fg_color_sigma 0.5 --work_dir work_dir/XCAD_fgn-1_fgovl-T_fgc-T_sigma-0.5_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1 --fg_overlap --fg_color --fg_color_sigma 0.5 --work_dir work_dir/XCAD_fgn-1_fgovl-T_fgc-T_sigma-0.5_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1 --fg_overlap --fg_color --fg_color_sigma 0.5 --work_dir work_dir/XCAD_fgn-1_fgovl-T_fgc-T_sigma-0.5_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1 --fg_overlap --fg_color --fg_color_sigma 0.5 --work_dir work_dir/XCAD_fgn-1_fgovl-T_fgc-T_sigma-0.5_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1 --fg_overlap --fg_color --fg_color_sigma 0.5 --work_dir work_dir/XCAD_fgn-1_fgovl-T_fgc-T_sigma-0.5_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1 --fg_overlap --fg_color --fg_color_sigma 0.5 --work_dir work_dir/XCAD_fgn-1_fgovl-T_fgc-T_sigma-0.5_fgs-1.00-1.00 --fg_min_size 1.00 --fg_max_size 1.00 &
                                                                                                                                                        
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2 --fg_overlap --fg_color --fg_color_sigma 0.5 --work_dir work_dir/XCAD_fgn-2_fgovl-T_fgc-T_sigma-0.5_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2 --fg_overlap --fg_color --fg_color_sigma 0.5 --work_dir work_dir/XCAD_fgn-2_fgovl-T_fgc-T_sigma-0.5_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2 --fg_overlap --fg_color --fg_color_sigma 0.5 --work_dir work_dir/XCAD_fgn-2_fgovl-T_fgc-T_sigma-0.5_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2 --fg_overlap --fg_color --fg_color_sigma 0.5 --work_dir work_dir/XCAD_fgn-2_fgovl-T_fgc-T_sigma-0.5_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2 --fg_overlap --fg_color --fg_color_sigma 0.5 --work_dir work_dir/XCAD_fgn-2_fgovl-T_fgc-T_sigma-0.5_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2 --fg_overlap --fg_color --fg_color_sigma 0.5 --work_dir work_dir/XCAD_fgn-2_fgovl-T_fgc-T_sigma-0.5_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2 --fg_overlap --fg_color --fg_color_sigma 0.5 --work_dir work_dir/XCAD_fgn-2_fgovl-T_fgc-T_sigma-0.5_fgs-1.00-1.00 --fg_min_size 1.00 --fg_max_size 1.00 &

# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1              --work_dir work_dir/XCAD_fgn-1_fgovl-F_fgc-F_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1              --work_dir work_dir/XCAD_fgn-1_fgovl-F_fgc-F_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1              --work_dir work_dir/XCAD_fgn-1_fgovl-F_fgc-F_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1              --work_dir work_dir/XCAD_fgn-1_fgovl-F_fgc-F_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1              --work_dir work_dir/XCAD_fgn-1_fgovl-F_fgc-F_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1              --work_dir work_dir/XCAD_fgn-1_fgovl-F_fgc-F_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1              --work_dir work_dir/XCAD_fgn-1_fgovl-F_fgc-F_fgs-1.00-1.00 --fg_min_size 1.00 --fg_max_size 1.00 &
                                                                                                                        
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2              --work_dir work_dir/XCAD_fgn-2_fgovl-F_fgc-F_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2              --work_dir work_dir/XCAD_fgn-2_fgovl-F_fgc-F_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2              --work_dir work_dir/XCAD_fgn-2_fgovl-F_fgc-F_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2              --work_dir work_dir/XCAD_fgn-2_fgovl-F_fgc-F_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2              --work_dir work_dir/XCAD_fgn-2_fgovl-F_fgc-F_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2              --work_dir work_dir/XCAD_fgn-2_fgovl-F_fgc-F_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2              --work_dir work_dir/XCAD_fgn-2_fgovl-F_fgc-F_fgs-1.00-1.00 --fg_min_size 1.00 --fg_max_size 1.00 &
                                                                                                                        
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1 --fg_overlap --work_dir work_dir/XCAD_fgn-1_fgovl-T_fgc-F_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1 --fg_overlap --work_dir work_dir/XCAD_fgn-1_fgovl-T_fgc-F_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1 --fg_overlap --work_dir work_dir/XCAD_fgn-1_fgovl-T_fgc-F_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1 --fg_overlap --work_dir work_dir/XCAD_fgn-1_fgovl-T_fgc-F_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1 --fg_overlap --work_dir work_dir/XCAD_fgn-1_fgovl-T_fgc-F_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1 --fg_overlap --work_dir work_dir/XCAD_fgn-1_fgovl-T_fgc-F_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1 --fg_overlap --work_dir work_dir/XCAD_fgn-1_fgovl-T_fgc-F_fgs-1.00-1.00 --fg_min_size 1.00 --fg_max_size 1.00 &
                                                                                                                        
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2 --fg_overlap --work_dir work_dir/XCAD_fgn-2_fgovl-T_fgc-F_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2 --fg_overlap --work_dir work_dir/XCAD_fgn-2_fgovl-T_fgc-F_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2 --fg_overlap --work_dir work_dir/XCAD_fgn-2_fgovl-T_fgc-F_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2 --fg_overlap --work_dir work_dir/XCAD_fgn-2_fgovl-T_fgc-F_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2 --fg_overlap --work_dir work_dir/XCAD_fgn-2_fgovl-T_fgc-F_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2 --fg_overlap --work_dir work_dir/XCAD_fgn-2_fgovl-T_fgc-F_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2 --fg_overlap --work_dir work_dir/XCAD_fgn-2_fgovl-T_fgc-F_fgs-1.00-1.00 --fg_min_size 1.00 --fg_max_size 1.00 &

# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1              --fg_color --fg_color_sigma 0.5 --work_dir work_dir/DCA1_fgn-1_fgovl-F_fgc-T_sigma-0.5_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1              --fg_color --fg_color_sigma 0.5 --work_dir work_dir/DCA1_fgn-1_fgovl-F_fgc-T_sigma-0.5_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1              --fg_color --fg_color_sigma 0.5 --work_dir work_dir/DCA1_fgn-1_fgovl-F_fgc-T_sigma-0.5_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1              --fg_color --fg_color_sigma 0.5 --work_dir work_dir/DCA1_fgn-1_fgovl-F_fgc-T_sigma-0.5_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1              --fg_color --fg_color_sigma 0.5 --work_dir work_dir/DCA1_fgn-1_fgovl-F_fgc-T_sigma-0.5_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1              --fg_color --fg_color_sigma 0.5 --work_dir work_dir/DCA1_fgn-1_fgovl-F_fgc-T_sigma-0.5_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1              --fg_color --fg_color_sigma 0.5 --work_dir work_dir/DCA1_fgn-1_fgovl-F_fgc-T_sigma-0.5_fgs-1.00-1.00 --fg_min_size 1.00 --fg_max_size 1.00 &
                                                                                                                                                        
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2              --fg_color --fg_color_sigma 0.5 --work_dir work_dir/DCA1_fgn-2_fgovl-F_fgc-T_sigma-0.5_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2              --fg_color --fg_color_sigma 0.5 --work_dir work_dir/DCA1_fgn-2_fgovl-F_fgc-T_sigma-0.5_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2              --fg_color --fg_color_sigma 0.5 --work_dir work_dir/DCA1_fgn-2_fgovl-F_fgc-T_sigma-0.5_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2              --fg_color --fg_color_sigma 0.5 --work_dir work_dir/DCA1_fgn-2_fgovl-F_fgc-T_sigma-0.5_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2              --fg_color --fg_color_sigma 0.5 --work_dir work_dir/DCA1_fgn-2_fgovl-F_fgc-T_sigma-0.5_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2              --fg_color --fg_color_sigma 0.5 --work_dir work_dir/DCA1_fgn-2_fgovl-F_fgc-T_sigma-0.5_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2              --fg_color --fg_color_sigma 0.5 --work_dir work_dir/DCA1_fgn-2_fgovl-F_fgc-T_sigma-0.5_fgs-1.00-1.00 --fg_min_size 1.00 --fg_max_size 1.00 &
                                                                                                                                                        
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1 --fg_overlap --fg_color --fg_color_sigma 0.5 --work_dir work_dir/DCA1_fgn-1_fgovl-T_fgc-T_sigma-0.5_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1 --fg_overlap --fg_color --fg_color_sigma 0.5 --work_dir work_dir/DCA1_fgn-1_fgovl-T_fgc-T_sigma-0.5_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1 --fg_overlap --fg_color --fg_color_sigma 0.5 --work_dir work_dir/DCA1_fgn-1_fgovl-T_fgc-T_sigma-0.5_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1 --fg_overlap --fg_color --fg_color_sigma 0.5 --work_dir work_dir/DCA1_fgn-1_fgovl-T_fgc-T_sigma-0.5_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1 --fg_overlap --fg_color --fg_color_sigma 0.5 --work_dir work_dir/DCA1_fgn-1_fgovl-T_fgc-T_sigma-0.5_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1 --fg_overlap --fg_color --fg_color_sigma 0.5 --work_dir work_dir/DCA1_fgn-1_fgovl-T_fgc-T_sigma-0.5_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1 --fg_overlap --fg_color --fg_color_sigma 0.5 --work_dir work_dir/DCA1_fgn-1_fgovl-T_fgc-T_sigma-0.5_fgs-1.00-1.00 --fg_min_size 1.00 --fg_max_size 1.00 &
                                                                                                                                                        
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2 --fg_overlap --fg_color --fg_color_sigma 0.5 --work_dir work_dir/DCA1_fgn-2_fgovl-T_fgc-T_sigma-0.5_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2 --fg_overlap --fg_color --fg_color_sigma 0.5 --work_dir work_dir/DCA1_fgn-2_fgovl-T_fgc-T_sigma-0.5_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2 --fg_overlap --fg_color --fg_color_sigma 0.5 --work_dir work_dir/DCA1_fgn-2_fgovl-T_fgc-T_sigma-0.5_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2 --fg_overlap --fg_color --fg_color_sigma 0.5 --work_dir work_dir/DCA1_fgn-2_fgovl-T_fgc-T_sigma-0.5_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2 --fg_overlap --fg_color --fg_color_sigma 0.5 --work_dir work_dir/DCA1_fgn-2_fgovl-T_fgc-T_sigma-0.5_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2 --fg_overlap --fg_color --fg_color_sigma 0.5 --work_dir work_dir/DCA1_fgn-2_fgovl-T_fgc-T_sigma-0.5_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2 --fg_overlap --fg_color --fg_color_sigma 0.5 --work_dir work_dir/DCA1_fgn-2_fgovl-T_fgc-T_sigma-0.5_fgs-1.00-1.00 --fg_min_size 1.00 --fg_max_size 1.00 &

# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1              --work_dir work_dir/DCA1_fgn-1_fgovl-F_fgc-F_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1              --work_dir work_dir/DCA1_fgn-1_fgovl-F_fgc-F_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1              --work_dir work_dir/DCA1_fgn-1_fgovl-F_fgc-F_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1              --work_dir work_dir/DCA1_fgn-1_fgovl-F_fgc-F_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1              --work_dir work_dir/DCA1_fgn-1_fgovl-F_fgc-F_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1              --work_dir work_dir/DCA1_fgn-1_fgovl-F_fgc-F_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1              --work_dir work_dir/DCA1_fgn-1_fgovl-F_fgc-F_fgs-1.00-1.00 --fg_min_size 1.00 --fg_max_size 1.00 &
                                                                                                                        
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2              --work_dir work_dir/DCA1_fgn-2_fgovl-F_fgc-F_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2              --work_dir work_dir/DCA1_fgn-2_fgovl-F_fgc-F_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2              --work_dir work_dir/DCA1_fgn-2_fgovl-F_fgc-F_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2              --work_dir work_dir/DCA1_fgn-2_fgovl-F_fgc-F_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2              --work_dir work_dir/DCA1_fgn-2_fgovl-F_fgc-F_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2              --work_dir work_dir/DCA1_fgn-2_fgovl-F_fgc-F_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2              --work_dir work_dir/DCA1_fgn-2_fgovl-F_fgc-F_fgs-1.00-1.00 --fg_min_size 1.00 --fg_max_size 1.00 &
                                                                                                                        
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1 --fg_overlap --work_dir work_dir/DCA1_fgn-1_fgovl-T_fgc-F_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1 --fg_overlap --work_dir work_dir/DCA1_fgn-1_fgovl-T_fgc-F_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1 --fg_overlap --work_dir work_dir/DCA1_fgn-1_fgovl-T_fgc-F_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1 --fg_overlap --work_dir work_dir/DCA1_fgn-1_fgovl-T_fgc-F_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1 --fg_overlap --work_dir work_dir/DCA1_fgn-1_fgovl-T_fgc-F_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1 --fg_overlap --work_dir work_dir/DCA1_fgn-1_fgovl-T_fgc-F_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1 --fg_overlap --work_dir work_dir/DCA1_fgn-1_fgovl-T_fgc-F_fgs-1.00-1.00 --fg_min_size 1.00 --fg_max_size 1.00 &
                                                                                                                        
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2 --fg_overlap --work_dir work_dir/DCA1_fgn-2_fgovl-T_fgc-F_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2 --fg_overlap --work_dir work_dir/DCA1_fgn-2_fgovl-T_fgc-F_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2 --fg_overlap --work_dir work_dir/DCA1_fgn-2_fgovl-T_fgc-F_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2 --fg_overlap --work_dir work_dir/DCA1_fgn-2_fgovl-T_fgc-F_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2 --fg_overlap --work_dir work_dir/DCA1_fgn-2_fgovl-T_fgc-F_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2 --fg_overlap --work_dir work_dir/DCA1_fgn-2_fgovl-T_fgc-F_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2 --fg_overlap --work_dir work_dir/DCA1_fgn-2_fgovl-T_fgc-F_fgs-1.00-1.00 --fg_min_size 1.00 --fg_max_size 1.00 &

### DCA1 에서 fg_color_sigma 0.5, overlap 은 동작하지 않을 수 있음.
### 특정 이미지를 선택할 확률이 99% 인 pair 가 존재함

# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 1              --fg_color --fg_color_sigma 2.0 --work_dir work_dir/ARCADE_fgn-1_fgovl-F_fgc-T_sigma-2.0_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 1              --fg_color --fg_color_sigma 2.0 --work_dir work_dir/ARCADE_fgn-1_fgovl-F_fgc-T_sigma-2.0_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 1              --fg_color --fg_color_sigma 2.0 --work_dir work_dir/ARCADE_fgn-1_fgovl-F_fgc-T_sigma-2.0_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 1              --fg_color --fg_color_sigma 2.0 --work_dir work_dir/ARCADE_fgn-1_fgovl-F_fgc-T_sigma-2.0_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 1              --fg_color --fg_color_sigma 2.0 --work_dir work_dir/ARCADE_fgn-1_fgovl-F_fgc-T_sigma-2.0_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 1              --fg_color --fg_color_sigma 2.0 --work_dir work_dir/ARCADE_fgn-1_fgovl-F_fgc-T_sigma-2.0_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 1              --fg_color --fg_color_sigma 2.0 --work_dir work_dir/ARCADE_fgn-1_fgovl-F_fgc-T_sigma-2.0_fgs-1.00-1.00 --fg_min_size 1.00 --fg_max_size 1.00 &

# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 2              --fg_color --fg_color_sigma 2.0 --work_dir work_dir/ARCADE_fgn-2_fgovl-F_fgc-T_sigma-2.0_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 2              --fg_color --fg_color_sigma 2.0 --work_dir work_dir/ARCADE_fgn-2_fgovl-F_fgc-T_sigma-2.0_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 2              --fg_color --fg_color_sigma 2.0 --work_dir work_dir/ARCADE_fgn-2_fgovl-F_fgc-T_sigma-2.0_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 2              --fg_color --fg_color_sigma 2.0 --work_dir work_dir/ARCADE_fgn-2_fgovl-F_fgc-T_sigma-2.0_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 2              --fg_color --fg_color_sigma 2.0 --work_dir work_dir/ARCADE_fgn-2_fgovl-F_fgc-T_sigma-2.0_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 2              --fg_color --fg_color_sigma 2.0 --work_dir work_dir/ARCADE_fgn-2_fgovl-F_fgc-T_sigma-2.0_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 2              --fg_color --fg_color_sigma 2.0 --work_dir work_dir/ARCADE_fgn-2_fgovl-F_fgc-T_sigma-2.0_fgs-1.00-1.00 --fg_min_size 1.00 --fg_max_size 1.00 &

# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 1 --fg_overlap --fg_color --fg_color_sigma 2.0 --work_dir work_dir/ARCADE_fgn-1_fgovl-T_fgc-T_sigma-2.0_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 1 --fg_overlap --fg_color --fg_color_sigma 2.0 --work_dir work_dir/ARCADE_fgn-1_fgovl-T_fgc-T_sigma-2.0_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 1 --fg_overlap --fg_color --fg_color_sigma 2.0 --work_dir work_dir/ARCADE_fgn-1_fgovl-T_fgc-T_sigma-2.0_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 1 --fg_overlap --fg_color --fg_color_sigma 2.0 --work_dir work_dir/ARCADE_fgn-1_fgovl-T_fgc-T_sigma-2.0_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 1 --fg_overlap --fg_color --fg_color_sigma 2.0 --work_dir work_dir/ARCADE_fgn-1_fgovl-T_fgc-T_sigma-2.0_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 1 --fg_overlap --fg_color --fg_color_sigma 2.0 --work_dir work_dir/ARCADE_fgn-1_fgovl-T_fgc-T_sigma-2.0_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 1 --fg_overlap --fg_color --fg_color_sigma 2.0 --work_dir work_dir/ARCADE_fgn-1_fgovl-T_fgc-T_sigma-2.0_fgs-1.00-1.00 --fg_min_size 1.00 --fg_max_size 1.00 &

# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 2 --fg_overlap --fg_color --fg_color_sigma 2.0 --work_dir work_dir/ARCADE_fgn-2_fgovl-T_fgc-T_sigma-2.0_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 2 --fg_overlap --fg_color --fg_color_sigma 2.0 --work_dir work_dir/ARCADE_fgn-2_fgovl-T_fgc-T_sigma-2.0_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 2 --fg_overlap --fg_color --fg_color_sigma 2.0 --work_dir work_dir/ARCADE_fgn-2_fgovl-T_fgc-T_sigma-2.0_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 2 --fg_overlap --fg_color --fg_color_sigma 2.0 --work_dir work_dir/ARCADE_fgn-2_fgovl-T_fgc-T_sigma-2.0_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 2 --fg_overlap --fg_color --fg_color_sigma 2.0 --work_dir work_dir/ARCADE_fgn-2_fgovl-T_fgc-T_sigma-2.0_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 2 --fg_overlap --fg_color --fg_color_sigma 2.0 --work_dir work_dir/ARCADE_fgn-2_fgovl-T_fgc-T_sigma-2.0_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 2 --fg_overlap --fg_color --fg_color_sigma 2.0 --work_dir work_dir/ARCADE_fgn-2_fgovl-T_fgc-T_sigma-2.0_fgs-1.00-1.00 --fg_min_size 1.00 --fg_max_size 1.00 &

# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 1              --fg_color --fg_color_sigma 1.0 --work_dir work_dir/ARCADE_fgn-1_fgovl-F_fgc-T_sigma-1.0_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 1              --fg_color --fg_color_sigma 1.0 --work_dir work_dir/ARCADE_fgn-1_fgovl-F_fgc-T_sigma-1.0_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 1              --fg_color --fg_color_sigma 1.0 --work_dir work_dir/ARCADE_fgn-1_fgovl-F_fgc-T_sigma-1.0_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 1              --fg_color --fg_color_sigma 1.0 --work_dir work_dir/ARCADE_fgn-1_fgovl-F_fgc-T_sigma-1.0_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 1              --fg_color --fg_color_sigma 1.0 --work_dir work_dir/ARCADE_fgn-1_fgovl-F_fgc-T_sigma-1.0_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 1              --fg_color --fg_color_sigma 1.0 --work_dir work_dir/ARCADE_fgn-1_fgovl-F_fgc-T_sigma-1.0_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 1              --fg_color --fg_color_sigma 1.0 --work_dir work_dir/ARCADE_fgn-1_fgovl-F_fgc-T_sigma-1.0_fgs-1.00-1.00 --fg_min_size 1.00 --fg_max_size 1.00 &

# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 2              --fg_color --fg_color_sigma 1.0 --work_dir work_dir/ARCADE_fgn-2_fgovl-F_fgc-T_sigma-1.0_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 2              --fg_color --fg_color_sigma 1.0 --work_dir work_dir/ARCADE_fgn-2_fgovl-F_fgc-T_sigma-1.0_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 2              --fg_color --fg_color_sigma 1.0 --work_dir work_dir/ARCADE_fgn-2_fgovl-F_fgc-T_sigma-1.0_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 2              --fg_color --fg_color_sigma 1.0 --work_dir work_dir/ARCADE_fgn-2_fgovl-F_fgc-T_sigma-1.0_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 2              --fg_color --fg_color_sigma 1.0 --work_dir work_dir/ARCADE_fgn-2_fgovl-F_fgc-T_sigma-1.0_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 2              --fg_color --fg_color_sigma 1.0 --work_dir work_dir/ARCADE_fgn-2_fgovl-F_fgc-T_sigma-1.0_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 2              --fg_color --fg_color_sigma 1.0 --work_dir work_dir/ARCADE_fgn-2_fgovl-F_fgc-T_sigma-1.0_fgs-1.00-1.00 --fg_min_size 1.00 --fg_max_size 1.00 &

# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 1 --fg_overlap --fg_color --fg_color_sigma 1.0 --work_dir work_dir/ARCADE_fgn-1_fgovl-T_fgc-T_sigma-1.0_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 1 --fg_overlap --fg_color --fg_color_sigma 1.0 --work_dir work_dir/ARCADE_fgn-1_fgovl-T_fgc-T_sigma-1.0_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 1 --fg_overlap --fg_color --fg_color_sigma 1.0 --work_dir work_dir/ARCADE_fgn-1_fgovl-T_fgc-T_sigma-1.0_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 1 --fg_overlap --fg_color --fg_color_sigma 1.0 --work_dir work_dir/ARCADE_fgn-1_fgovl-T_fgc-T_sigma-1.0_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 1 --fg_overlap --fg_color --fg_color_sigma 1.0 --work_dir work_dir/ARCADE_fgn-1_fgovl-T_fgc-T_sigma-1.0_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 1 --fg_overlap --fg_color --fg_color_sigma 1.0 --work_dir work_dir/ARCADE_fgn-1_fgovl-T_fgc-T_sigma-1.0_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 1 --fg_overlap --fg_color --fg_color_sigma 1.0 --work_dir work_dir/ARCADE_fgn-1_fgovl-T_fgc-T_sigma-1.0_fgs-1.00-1.00 --fg_min_size 1.00 --fg_max_size 1.00 &

# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 2 --fg_overlap --fg_color --fg_color_sigma 1.0 --work_dir work_dir/ARCADE_fgn-2_fgovl-T_fgc-T_sigma-1.0_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 2 --fg_overlap --fg_color --fg_color_sigma 1.0 --work_dir work_dir/ARCADE_fgn-2_fgovl-T_fgc-T_sigma-1.0_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 2 --fg_overlap --fg_color --fg_color_sigma 1.0 --work_dir work_dir/ARCADE_fgn-2_fgovl-T_fgc-T_sigma-1.0_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 2 --fg_overlap --fg_color --fg_color_sigma 1.0 --work_dir work_dir/ARCADE_fgn-2_fgovl-T_fgc-T_sigma-1.0_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 2 --fg_overlap --fg_color --fg_color_sigma 1.0 --work_dir work_dir/ARCADE_fgn-2_fgovl-T_fgc-T_sigma-1.0_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 2 --fg_overlap --fg_color --fg_color_sigma 1.0 --work_dir work_dir/ARCADE_fgn-2_fgovl-T_fgc-T_sigma-1.0_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 2 --fg_overlap --fg_color --fg_color_sigma 1.0 --work_dir work_dir/ARCADE_fgn-2_fgovl-T_fgc-T_sigma-1.0_fgs-1.00-1.00 --fg_min_size 1.00 --fg_max_size 1.00 &

# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 1              --fg_color --fg_color_sigma 0.5 --work_dir work_dir/ARCADE_fgn-1_fgovl-F_fgc-T_sigma-0.5_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 1              --fg_color --fg_color_sigma 0.5 --work_dir work_dir/ARCADE_fgn-1_fgovl-F_fgc-T_sigma-0.5_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 1              --fg_color --fg_color_sigma 0.5 --work_dir work_dir/ARCADE_fgn-1_fgovl-F_fgc-T_sigma-0.5_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 1              --fg_color --fg_color_sigma 0.5 --work_dir work_dir/ARCADE_fgn-1_fgovl-F_fgc-T_sigma-0.5_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 1              --fg_color --fg_color_sigma 0.5 --work_dir work_dir/ARCADE_fgn-1_fgovl-F_fgc-T_sigma-0.5_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 1              --fg_color --fg_color_sigma 0.5 --work_dir work_dir/ARCADE_fgn-1_fgovl-F_fgc-T_sigma-0.5_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 1              --fg_color --fg_color_sigma 0.5 --work_dir work_dir/ARCADE_fgn-1_fgovl-F_fgc-T_sigma-0.5_fgs-1.00-1.00 --fg_min_size 1.00 --fg_max_size 1.00 &
                                                                                                                                                        
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 2              --fg_color --fg_color_sigma 0.5 --work_dir work_dir/ARCADE_fgn-2_fgovl-F_fgc-T_sigma-0.5_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 2              --fg_color --fg_color_sigma 0.5 --work_dir work_dir/ARCADE_fgn-2_fgovl-F_fgc-T_sigma-0.5_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 2              --fg_color --fg_color_sigma 0.5 --work_dir work_dir/ARCADE_fgn-2_fgovl-F_fgc-T_sigma-0.5_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 2              --fg_color --fg_color_sigma 0.5 --work_dir work_dir/ARCADE_fgn-2_fgovl-F_fgc-T_sigma-0.5_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 2              --fg_color --fg_color_sigma 0.5 --work_dir work_dir/ARCADE_fgn-2_fgovl-F_fgc-T_sigma-0.5_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 2              --fg_color --fg_color_sigma 0.5 --work_dir work_dir/ARCADE_fgn-2_fgovl-F_fgc-T_sigma-0.5_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 2              --fg_color --fg_color_sigma 0.5 --work_dir work_dir/ARCADE_fgn-2_fgovl-F_fgc-T_sigma-0.5_fgs-1.00-1.00 --fg_min_size 1.00 --fg_max_size 1.00 &
                                                                                                                                                        
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 1 --fg_overlap --fg_color --fg_color_sigma 0.5 --work_dir work_dir/ARCADE_fgn-1_fgovl-T_fgc-T_sigma-0.5_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 1 --fg_overlap --fg_color --fg_color_sigma 0.5 --work_dir work_dir/ARCADE_fgn-1_fgovl-T_fgc-T_sigma-0.5_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 1 --fg_overlap --fg_color --fg_color_sigma 0.5 --work_dir work_dir/ARCADE_fgn-1_fgovl-T_fgc-T_sigma-0.5_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 1 --fg_overlap --fg_color --fg_color_sigma 0.5 --work_dir work_dir/ARCADE_fgn-1_fgovl-T_fgc-T_sigma-0.5_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 1 --fg_overlap --fg_color --fg_color_sigma 0.5 --work_dir work_dir/ARCADE_fgn-1_fgovl-T_fgc-T_sigma-0.5_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 1 --fg_overlap --fg_color --fg_color_sigma 0.5 --work_dir work_dir/ARCADE_fgn-1_fgovl-T_fgc-T_sigma-0.5_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 1 --fg_overlap --fg_color --fg_color_sigma 0.5 --work_dir work_dir/ARCADE_fgn-1_fgovl-T_fgc-T_sigma-0.5_fgs-1.00-1.00 --fg_min_size 1.00 --fg_max_size 1.00 &
                                                                                                                                                        
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 2 --fg_overlap --fg_color --fg_color_sigma 0.5 --work_dir work_dir/ARCADE_fgn-2_fgovl-T_fgc-T_sigma-0.5_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 2 --fg_overlap --fg_color --fg_color_sigma 0.5 --work_dir work_dir/ARCADE_fgn-2_fgovl-T_fgc-T_sigma-0.5_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 2 --fg_overlap --fg_color --fg_color_sigma 0.5 --work_dir work_dir/ARCADE_fgn-2_fgovl-T_fgc-T_sigma-0.5_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 2 --fg_overlap --fg_color --fg_color_sigma 0.5 --work_dir work_dir/ARCADE_fgn-2_fgovl-T_fgc-T_sigma-0.5_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 2 --fg_overlap --fg_color --fg_color_sigma 0.5 --work_dir work_dir/ARCADE_fgn-2_fgovl-T_fgc-T_sigma-0.5_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 2 --fg_overlap --fg_color --fg_color_sigma 0.5 --work_dir work_dir/ARCADE_fgn-2_fgovl-T_fgc-T_sigma-0.5_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 2 --fg_overlap --fg_color --fg_color_sigma 0.5 --work_dir work_dir/ARCADE_fgn-2_fgovl-T_fgc-T_sigma-0.5_fgs-1.00-1.00 --fg_min_size 1.00 --fg_max_size 1.00 &

# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 1              --work_dir work_dir/ARCADE_fgn-1_fgovl-F_fgc-F_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 1              --work_dir work_dir/ARCADE_fgn-1_fgovl-F_fgc-F_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 1              --work_dir work_dir/ARCADE_fgn-1_fgovl-F_fgc-F_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 1              --work_dir work_dir/ARCADE_fgn-1_fgovl-F_fgc-F_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 1              --work_dir work_dir/ARCADE_fgn-1_fgovl-F_fgc-F_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 1              --work_dir work_dir/ARCADE_fgn-1_fgovl-F_fgc-F_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 1              --work_dir work_dir/ARCADE_fgn-1_fgovl-F_fgc-F_fgs-1.00-1.00 --fg_min_size 1.00 --fg_max_size 1.00 &
                                                                                                                        
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 2              --work_dir work_dir/ARCADE_fgn-2_fgovl-F_fgc-F_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 2              --work_dir work_dir/ARCADE_fgn-2_fgovl-F_fgc-F_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 2              --work_dir work_dir/ARCADE_fgn-2_fgovl-F_fgc-F_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 2              --work_dir work_dir/ARCADE_fgn-2_fgovl-F_fgc-F_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 2              --work_dir work_dir/ARCADE_fgn-2_fgovl-F_fgc-F_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 2              --work_dir work_dir/ARCADE_fgn-2_fgovl-F_fgc-F_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 2              --work_dir work_dir/ARCADE_fgn-2_fgovl-F_fgc-F_fgs-1.00-1.00 --fg_min_size 1.00 --fg_max_size 1.00 &
                                                                                                                        
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 1 --fg_overlap --work_dir work_dir/ARCADE_fgn-1_fgovl-T_fgc-F_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 1 --fg_overlap --work_dir work_dir/ARCADE_fgn-1_fgovl-T_fgc-F_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 1 --fg_overlap --work_dir work_dir/ARCADE_fgn-1_fgovl-T_fgc-F_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 1 --fg_overlap --work_dir work_dir/ARCADE_fgn-1_fgovl-T_fgc-F_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 1 --fg_overlap --work_dir work_dir/ARCADE_fgn-1_fgovl-T_fgc-F_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 1 --fg_overlap --work_dir work_dir/ARCADE_fgn-1_fgovl-T_fgc-F_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 1 --fg_overlap --work_dir work_dir/ARCADE_fgn-1_fgovl-T_fgc-F_fgs-1.00-1.00 --fg_min_size 1.00 --fg_max_size 1.00 &
                                                                                                                        
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 2 --fg_overlap --work_dir work_dir/ARCADE_fgn-2_fgovl-T_fgc-F_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 2 --fg_overlap --work_dir work_dir/ARCADE_fgn-2_fgovl-T_fgc-F_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 2 --fg_overlap --work_dir work_dir/ARCADE_fgn-2_fgovl-T_fgc-F_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 2 --fg_overlap --work_dir work_dir/ARCADE_fgn-2_fgovl-T_fgc-F_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 2 --fg_overlap --work_dir work_dir/ARCADE_fgn-2_fgovl-T_fgc-F_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 2 --fg_overlap --work_dir work_dir/ARCADE_fgn-2_fgovl-T_fgc-F_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 2 --fg_overlap --work_dir work_dir/ARCADE_fgn-2_fgovl-T_fgc-F_fgs-1.00-1.00 --fg_min_size 1.00 --fg_max_size 1.00 &

# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1              --fg_color --fg_color_sigma 2.0 --work_dir work_dir/XCAD_fgn-1_fgovl-F_fgc-T_sigma-2.0_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1              --fg_color --fg_color_sigma 2.0 --work_dir work_dir/XCAD_fgn-1_fgovl-F_fgc-T_sigma-2.0_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1              --fg_color --fg_color_sigma 2.0 --work_dir work_dir/XCAD_fgn-1_fgovl-F_fgc-T_sigma-2.0_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1              --fg_color --fg_color_sigma 2.0 --work_dir work_dir/XCAD_fgn-1_fgovl-F_fgc-T_sigma-2.0_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1              --fg_color --fg_color_sigma 2.0 --work_dir work_dir/XCAD_fgn-1_fgovl-F_fgc-T_sigma-2.0_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1              --fg_color --fg_color_sigma 2.0 --work_dir work_dir/XCAD_fgn-1_fgovl-F_fgc-T_sigma-2.0_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1              --fg_color --fg_color_sigma 2.0 --work_dir work_dir/XCAD_fgn-1_fgovl-F_fgc-T_sigma-2.0_fgs-1.00-1.00 --fg_min_size 1.00 --fg_max_size 1.00 &

# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2              --fg_color --fg_color_sigma 2.0 --work_dir work_dir/XCAD_fgn-2_fgovl-F_fgc-T_sigma-2.0_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2              --fg_color --fg_color_sigma 2.0 --work_dir work_dir/XCAD_fgn-2_fgovl-F_fgc-T_sigma-2.0_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2              --fg_color --fg_color_sigma 2.0 --work_dir work_dir/XCAD_fgn-2_fgovl-F_fgc-T_sigma-2.0_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2              --fg_color --fg_color_sigma 2.0 --work_dir work_dir/XCAD_fgn-2_fgovl-F_fgc-T_sigma-2.0_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2              --fg_color --fg_color_sigma 2.0 --work_dir work_dir/XCAD_fgn-2_fgovl-F_fgc-T_sigma-2.0_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2              --fg_color --fg_color_sigma 2.0 --work_dir work_dir/XCAD_fgn-2_fgovl-F_fgc-T_sigma-2.0_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2              --fg_color --fg_color_sigma 2.0 --work_dir work_dir/XCAD_fgn-2_fgovl-F_fgc-T_sigma-2.0_fgs-1.00-1.00 --fg_min_size 1.00 --fg_max_size 1.00 &

# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1 --fg_overlap --fg_color --fg_color_sigma 2.0 --work_dir work_dir/XCAD_fgn-1_fgovl-T_fgc-T_sigma-2.0_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1 --fg_overlap --fg_color --fg_color_sigma 2.0 --work_dir work_dir/XCAD_fgn-1_fgovl-T_fgc-T_sigma-2.0_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1 --fg_overlap --fg_color --fg_color_sigma 2.0 --work_dir work_dir/XCAD_fgn-1_fgovl-T_fgc-T_sigma-2.0_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1 --fg_overlap --fg_color --fg_color_sigma 2.0 --work_dir work_dir/XCAD_fgn-1_fgovl-T_fgc-T_sigma-2.0_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1 --fg_overlap --fg_color --fg_color_sigma 2.0 --work_dir work_dir/XCAD_fgn-1_fgovl-T_fgc-T_sigma-2.0_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1 --fg_overlap --fg_color --fg_color_sigma 2.0 --work_dir work_dir/XCAD_fgn-1_fgovl-T_fgc-T_sigma-2.0_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1 --fg_overlap --fg_color --fg_color_sigma 2.0 --work_dir work_dir/XCAD_fgn-1_fgovl-T_fgc-T_sigma-2.0_fgs-1.00-1.00 --fg_min_size 1.00 --fg_max_size 1.00 &

# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2 --fg_overlap --fg_color --fg_color_sigma 2.0 --work_dir work_dir/XCAD_fgn-2_fgovl-T_fgc-T_sigma-2.0_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2 --fg_overlap --fg_color --fg_color_sigma 2.0 --work_dir work_dir/XCAD_fgn-2_fgovl-T_fgc-T_sigma-2.0_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2 --fg_overlap --fg_color --fg_color_sigma 2.0 --work_dir work_dir/XCAD_fgn-2_fgovl-T_fgc-T_sigma-2.0_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2 --fg_overlap --fg_color --fg_color_sigma 2.0 --work_dir work_dir/XCAD_fgn-2_fgovl-T_fgc-T_sigma-2.0_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2 --fg_overlap --fg_color --fg_color_sigma 2.0 --work_dir work_dir/XCAD_fgn-2_fgovl-T_fgc-T_sigma-2.0_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2 --fg_overlap --fg_color --fg_color_sigma 2.0 --work_dir work_dir/XCAD_fgn-2_fgovl-T_fgc-T_sigma-2.0_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2 --fg_overlap --fg_color --fg_color_sigma 2.0 --work_dir work_dir/XCAD_fgn-2_fgovl-T_fgc-T_sigma-2.0_fgs-1.00-1.00 --fg_min_size 1.00 --fg_max_size 1.00 &

# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1              --fg_color --fg_color_sigma 1.0 --work_dir work_dir/XCAD_fgn-1_fgovl-F_fgc-T_sigma-1.0_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1              --fg_color --fg_color_sigma 1.0 --work_dir work_dir/XCAD_fgn-1_fgovl-F_fgc-T_sigma-1.0_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1              --fg_color --fg_color_sigma 1.0 --work_dir work_dir/XCAD_fgn-1_fgovl-F_fgc-T_sigma-1.0_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1              --fg_color --fg_color_sigma 1.0 --work_dir work_dir/XCAD_fgn-1_fgovl-F_fgc-T_sigma-1.0_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1              --fg_color --fg_color_sigma 1.0 --work_dir work_dir/XCAD_fgn-1_fgovl-F_fgc-T_sigma-1.0_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1              --fg_color --fg_color_sigma 1.0 --work_dir work_dir/XCAD_fgn-1_fgovl-F_fgc-T_sigma-1.0_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1              --fg_color --fg_color_sigma 1.0 --work_dir work_dir/XCAD_fgn-1_fgovl-F_fgc-T_sigma-1.0_fgs-1.00-1.00 --fg_min_size 1.00 --fg_max_size 1.00 &

# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2              --fg_color --fg_color_sigma 1.0 --work_dir work_dir/XCAD_fgn-2_fgovl-F_fgc-T_sigma-1.0_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2              --fg_color --fg_color_sigma 1.0 --work_dir work_dir/XCAD_fgn-2_fgovl-F_fgc-T_sigma-1.0_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2              --fg_color --fg_color_sigma 1.0 --work_dir work_dir/XCAD_fgn-2_fgovl-F_fgc-T_sigma-1.0_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2              --fg_color --fg_color_sigma 1.0 --work_dir work_dir/XCAD_fgn-2_fgovl-F_fgc-T_sigma-1.0_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2              --fg_color --fg_color_sigma 1.0 --work_dir work_dir/XCAD_fgn-2_fgovl-F_fgc-T_sigma-1.0_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2              --fg_color --fg_color_sigma 1.0 --work_dir work_dir/XCAD_fgn-2_fgovl-F_fgc-T_sigma-1.0_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2              --fg_color --fg_color_sigma 1.0 --work_dir work_dir/XCAD_fgn-2_fgovl-F_fgc-T_sigma-1.0_fgs-1.00-1.00 --fg_min_size 1.00 --fg_max_size 1.00 &

# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1 --fg_overlap --fg_color --fg_color_sigma 1.0 --work_dir work_dir/XCAD_fgn-1_fgovl-T_fgc-T_sigma-1.0_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1 --fg_overlap --fg_color --fg_color_sigma 1.0 --work_dir work_dir/XCAD_fgn-1_fgovl-T_fgc-T_sigma-1.0_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1 --fg_overlap --fg_color --fg_color_sigma 1.0 --work_dir work_dir/XCAD_fgn-1_fgovl-T_fgc-T_sigma-1.0_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1 --fg_overlap --fg_color --fg_color_sigma 1.0 --work_dir work_dir/XCAD_fgn-1_fgovl-T_fgc-T_sigma-1.0_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1 --fg_overlap --fg_color --fg_color_sigma 1.0 --work_dir work_dir/XCAD_fgn-1_fgovl-T_fgc-T_sigma-1.0_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1 --fg_overlap --fg_color --fg_color_sigma 1.0 --work_dir work_dir/XCAD_fgn-1_fgovl-T_fgc-T_sigma-1.0_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1 --fg_overlap --fg_color --fg_color_sigma 1.0 --work_dir work_dir/XCAD_fgn-1_fgovl-T_fgc-T_sigma-1.0_fgs-1.00-1.00 --fg_min_size 1.00 --fg_max_size 1.00 &

# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2 --fg_overlap --fg_color --fg_color_sigma 1.0 --work_dir work_dir/XCAD_fgn-2_fgovl-T_fgc-T_sigma-1.0_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2 --fg_overlap --fg_color --fg_color_sigma 1.0 --work_dir work_dir/XCAD_fgn-2_fgovl-T_fgc-T_sigma-1.0_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2 --fg_overlap --fg_color --fg_color_sigma 1.0 --work_dir work_dir/XCAD_fgn-2_fgovl-T_fgc-T_sigma-1.0_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2 --fg_overlap --fg_color --fg_color_sigma 1.0 --work_dir work_dir/XCAD_fgn-2_fgovl-T_fgc-T_sigma-1.0_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2 --fg_overlap --fg_color --fg_color_sigma 1.0 --work_dir work_dir/XCAD_fgn-2_fgovl-T_fgc-T_sigma-1.0_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2 --fg_overlap --fg_color --fg_color_sigma 1.0 --work_dir work_dir/XCAD_fgn-2_fgovl-T_fgc-T_sigma-1.0_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2 --fg_overlap --fg_color --fg_color_sigma 1.0 --work_dir work_dir/XCAD_fgn-2_fgovl-T_fgc-T_sigma-1.0_fgs-1.00-1.00 --fg_min_size 1.00 --fg_max_size 1.00 &

# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1              --fg_color --fg_color_sigma 0.5 --work_dir work_dir/XCAD_fgn-1_fgovl-F_fgc-T_sigma-0.5_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1              --fg_color --fg_color_sigma 0.5 --work_dir work_dir/XCAD_fgn-1_fgovl-F_fgc-T_sigma-0.5_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1              --fg_color --fg_color_sigma 0.5 --work_dir work_dir/XCAD_fgn-1_fgovl-F_fgc-T_sigma-0.5_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1              --fg_color --fg_color_sigma 0.5 --work_dir work_dir/XCAD_fgn-1_fgovl-F_fgc-T_sigma-0.5_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1              --fg_color --fg_color_sigma 0.5 --work_dir work_dir/XCAD_fgn-1_fgovl-F_fgc-T_sigma-0.5_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1              --fg_color --fg_color_sigma 0.5 --work_dir work_dir/XCAD_fgn-1_fgovl-F_fgc-T_sigma-0.5_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1              --fg_color --fg_color_sigma 0.5 --work_dir work_dir/XCAD_fgn-1_fgovl-F_fgc-T_sigma-0.5_fgs-1.00-1.00 --fg_min_size 1.00 --fg_max_size 1.00 &
                                                                                                                                                        
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2              --fg_color --fg_color_sigma 0.5 --work_dir work_dir/XCAD_fgn-2_fgovl-F_fgc-T_sigma-0.5_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2              --fg_color --fg_color_sigma 0.5 --work_dir work_dir/XCAD_fgn-2_fgovl-F_fgc-T_sigma-0.5_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2              --fg_color --fg_color_sigma 0.5 --work_dir work_dir/XCAD_fgn-2_fgovl-F_fgc-T_sigma-0.5_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2              --fg_color --fg_color_sigma 0.5 --work_dir work_dir/XCAD_fgn-2_fgovl-F_fgc-T_sigma-0.5_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2              --fg_color --fg_color_sigma 0.5 --work_dir work_dir/XCAD_fgn-2_fgovl-F_fgc-T_sigma-0.5_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2              --fg_color --fg_color_sigma 0.5 --work_dir work_dir/XCAD_fgn-2_fgovl-F_fgc-T_sigma-0.5_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2              --fg_color --fg_color_sigma 0.5 --work_dir work_dir/XCAD_fgn-2_fgovl-F_fgc-T_sigma-0.5_fgs-1.00-1.00 --fg_min_size 1.00 --fg_max_size 1.00 &
                                                                                                                                                        
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1 --fg_overlap --fg_color --fg_color_sigma 0.5 --work_dir work_dir/XCAD_fgn-1_fgovl-T_fgc-T_sigma-0.5_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1 --fg_overlap --fg_color --fg_color_sigma 0.5 --work_dir work_dir/XCAD_fgn-1_fgovl-T_fgc-T_sigma-0.5_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1 --fg_overlap --fg_color --fg_color_sigma 0.5 --work_dir work_dir/XCAD_fgn-1_fgovl-T_fgc-T_sigma-0.5_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1 --fg_overlap --fg_color --fg_color_sigma 0.5 --work_dir work_dir/XCAD_fgn-1_fgovl-T_fgc-T_sigma-0.5_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1 --fg_overlap --fg_color --fg_color_sigma 0.5 --work_dir work_dir/XCAD_fgn-1_fgovl-T_fgc-T_sigma-0.5_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1 --fg_overlap --fg_color --fg_color_sigma 0.5 --work_dir work_dir/XCAD_fgn-1_fgovl-T_fgc-T_sigma-0.5_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1 --fg_overlap --fg_color --fg_color_sigma 0.5 --work_dir work_dir/XCAD_fgn-1_fgovl-T_fgc-T_sigma-0.5_fgs-1.00-1.00 --fg_min_size 1.00 --fg_max_size 1.00 &
                                                                                                                                                        
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2 --fg_overlap --fg_color --fg_color_sigma 0.5 --work_dir work_dir/XCAD_fgn-2_fgovl-T_fgc-T_sigma-0.5_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2 --fg_overlap --fg_color --fg_color_sigma 0.5 --work_dir work_dir/XCAD_fgn-2_fgovl-T_fgc-T_sigma-0.5_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2 --fg_overlap --fg_color --fg_color_sigma 0.5 --work_dir work_dir/XCAD_fgn-2_fgovl-T_fgc-T_sigma-0.5_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2 --fg_overlap --fg_color --fg_color_sigma 0.5 --work_dir work_dir/XCAD_fgn-2_fgovl-T_fgc-T_sigma-0.5_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2 --fg_overlap --fg_color --fg_color_sigma 0.5 --work_dir work_dir/XCAD_fgn-2_fgovl-T_fgc-T_sigma-0.5_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2 --fg_overlap --fg_color --fg_color_sigma 0.5 --work_dir work_dir/XCAD_fgn-2_fgovl-T_fgc-T_sigma-0.5_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2 --fg_overlap --fg_color --fg_color_sigma 0.5 --work_dir work_dir/XCAD_fgn-2_fgovl-T_fgc-T_sigma-0.5_fgs-1.00-1.00 --fg_min_size 1.00 --fg_max_size 1.00 &

# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1              --work_dir work_dir/XCAD_fgn-1_fgovl-F_fgc-F_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1              --work_dir work_dir/XCAD_fgn-1_fgovl-F_fgc-F_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1              --work_dir work_dir/XCAD_fgn-1_fgovl-F_fgc-F_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1              --work_dir work_dir/XCAD_fgn-1_fgovl-F_fgc-F_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1              --work_dir work_dir/XCAD_fgn-1_fgovl-F_fgc-F_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1              --work_dir work_dir/XCAD_fgn-1_fgovl-F_fgc-F_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1              --work_dir work_dir/XCAD_fgn-1_fgovl-F_fgc-F_fgs-1.00-1.00 --fg_min_size 1.00 --fg_max_size 1.00 &
                                                                                                                        
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2              --work_dir work_dir/XCAD_fgn-2_fgovl-F_fgc-F_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2              --work_dir work_dir/XCAD_fgn-2_fgovl-F_fgc-F_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2              --work_dir work_dir/XCAD_fgn-2_fgovl-F_fgc-F_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2              --work_dir work_dir/XCAD_fgn-2_fgovl-F_fgc-F_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2              --work_dir work_dir/XCAD_fgn-2_fgovl-F_fgc-F_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2              --work_dir work_dir/XCAD_fgn-2_fgovl-F_fgc-F_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2              --work_dir work_dir/XCAD_fgn-2_fgovl-F_fgc-F_fgs-1.00-1.00 --fg_min_size 1.00 --fg_max_size 1.00 &
                                                                                                                        
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1 --fg_overlap --work_dir work_dir/XCAD_fgn-1_fgovl-T_fgc-F_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1 --fg_overlap --work_dir work_dir/XCAD_fgn-1_fgovl-T_fgc-F_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1 --fg_overlap --work_dir work_dir/XCAD_fgn-1_fgovl-T_fgc-F_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1 --fg_overlap --work_dir work_dir/XCAD_fgn-1_fgovl-T_fgc-F_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1 --fg_overlap --work_dir work_dir/XCAD_fgn-1_fgovl-T_fgc-F_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1 --fg_overlap --work_dir work_dir/XCAD_fgn-1_fgovl-T_fgc-F_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 1 --fg_overlap --work_dir work_dir/XCAD_fgn-1_fgovl-T_fgc-F_fgs-1.00-1.00 --fg_min_size 1.00 --fg_max_size 1.00 &
                                                                                                                        
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2 --fg_overlap --work_dir work_dir/XCAD_fgn-2_fgovl-T_fgc-F_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2 --fg_overlap --work_dir work_dir/XCAD_fgn-2_fgovl-T_fgc-F_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2 --fg_overlap --work_dir work_dir/XCAD_fgn-2_fgovl-T_fgc-F_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2 --fg_overlap --work_dir work_dir/XCAD_fgn-2_fgovl-T_fgc-F_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2 --fg_overlap --work_dir work_dir/XCAD_fgn-2_fgovl-T_fgc-F_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2 --fg_overlap --work_dir work_dir/XCAD_fgn-2_fgovl-T_fgc-F_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/XCAD --fg_data_path data/XCAD --fg_num 2 --fg_overlap --work_dir work_dir/XCAD_fgn-2_fgovl-T_fgc-F_fgs-1.00-1.00 --fg_min_size 1.00 --fg_max_size 1.00 &

# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1              --fg_color --fg_color_sigma 2.0 --work_dir work_dir/DCA1_fgn-1_fgovl-F_fgc-T_sigma-2.0_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1              --fg_color --fg_color_sigma 2.0 --work_dir work_dir/DCA1_fgn-1_fgovl-F_fgc-T_sigma-2.0_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1              --fg_color --fg_color_sigma 2.0 --work_dir work_dir/DCA1_fgn-1_fgovl-F_fgc-T_sigma-2.0_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1              --fg_color --fg_color_sigma 2.0 --work_dir work_dir/DCA1_fgn-1_fgovl-F_fgc-T_sigma-2.0_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1              --fg_color --fg_color_sigma 2.0 --work_dir work_dir/DCA1_fgn-1_fgovl-F_fgc-T_sigma-2.0_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1              --fg_color --fg_color_sigma 2.0 --work_dir work_dir/DCA1_fgn-1_fgovl-F_fgc-T_sigma-2.0_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1              --fg_color --fg_color_sigma 2.0 --work_dir work_dir/DCA1_fgn-1_fgovl-F_fgc-T_sigma-2.0_fgs-1.00-1.00 --fg_min_size 1.00 --fg_max_size 1.00 &

# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2              --fg_color --fg_color_sigma 2.0 --work_dir work_dir/DCA1_fgn-2_fgovl-F_fgc-T_sigma-2.0_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2              --fg_color --fg_color_sigma 2.0 --work_dir work_dir/DCA1_fgn-2_fgovl-F_fgc-T_sigma-2.0_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2              --fg_color --fg_color_sigma 2.0 --work_dir work_dir/DCA1_fgn-2_fgovl-F_fgc-T_sigma-2.0_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2              --fg_color --fg_color_sigma 2.0 --work_dir work_dir/DCA1_fgn-2_fgovl-F_fgc-T_sigma-2.0_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2              --fg_color --fg_color_sigma 2.0 --work_dir work_dir/DCA1_fgn-2_fgovl-F_fgc-T_sigma-2.0_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2              --fg_color --fg_color_sigma 2.0 --work_dir work_dir/DCA1_fgn-2_fgovl-F_fgc-T_sigma-2.0_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2              --fg_color --fg_color_sigma 2.0 --work_dir work_dir/DCA1_fgn-2_fgovl-F_fgc-T_sigma-2.0_fgs-1.00-1.00 --fg_min_size 1.00 --fg_max_size 1.00 &

# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1 --fg_overlap --fg_color --fg_color_sigma 2.0 --work_dir work_dir/DCA1_fgn-1_fgovl-T_fgc-T_sigma-2.0_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1 --fg_overlap --fg_color --fg_color_sigma 2.0 --work_dir work_dir/DCA1_fgn-1_fgovl-T_fgc-T_sigma-2.0_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1 --fg_overlap --fg_color --fg_color_sigma 2.0 --work_dir work_dir/DCA1_fgn-1_fgovl-T_fgc-T_sigma-2.0_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1 --fg_overlap --fg_color --fg_color_sigma 2.0 --work_dir work_dir/DCA1_fgn-1_fgovl-T_fgc-T_sigma-2.0_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1 --fg_overlap --fg_color --fg_color_sigma 2.0 --work_dir work_dir/DCA1_fgn-1_fgovl-T_fgc-T_sigma-2.0_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1 --fg_overlap --fg_color --fg_color_sigma 2.0 --work_dir work_dir/DCA1_fgn-1_fgovl-T_fgc-T_sigma-2.0_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1 --fg_overlap --fg_color --fg_color_sigma 2.0 --work_dir work_dir/DCA1_fgn-1_fgovl-T_fgc-T_sigma-2.0_fgs-1.00-1.00 --fg_min_size 1.00 --fg_max_size 1.00 &

# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2 --fg_overlap --fg_color --fg_color_sigma 2.0 --work_dir work_dir/DCA1_fgn-2_fgovl-T_fgc-T_sigma-2.0_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2 --fg_overlap --fg_color --fg_color_sigma 2.0 --work_dir work_dir/DCA1_fgn-2_fgovl-T_fgc-T_sigma-2.0_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2 --fg_overlap --fg_color --fg_color_sigma 2.0 --work_dir work_dir/DCA1_fgn-2_fgovl-T_fgc-T_sigma-2.0_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2 --fg_overlap --fg_color --fg_color_sigma 2.0 --work_dir work_dir/DCA1_fgn-2_fgovl-T_fgc-T_sigma-2.0_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2 --fg_overlap --fg_color --fg_color_sigma 2.0 --work_dir work_dir/DCA1_fgn-2_fgovl-T_fgc-T_sigma-2.0_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2 --fg_overlap --fg_color --fg_color_sigma 2.0 --work_dir work_dir/DCA1_fgn-2_fgovl-T_fgc-T_sigma-2.0_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2 --fg_overlap --fg_color --fg_color_sigma 2.0 --work_dir work_dir/DCA1_fgn-2_fgovl-T_fgc-T_sigma-2.0_fgs-1.00-1.00 --fg_min_size 1.00 --fg_max_size 1.00 &

# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1              --fg_color --fg_color_sigma 1.0 --work_dir work_dir/DCA1_fgn-1_fgovl-F_fgc-T_sigma-1.0_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1              --fg_color --fg_color_sigma 1.0 --work_dir work_dir/DCA1_fgn-1_fgovl-F_fgc-T_sigma-1.0_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1              --fg_color --fg_color_sigma 1.0 --work_dir work_dir/DCA1_fgn-1_fgovl-F_fgc-T_sigma-1.0_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1              --fg_color --fg_color_sigma 1.0 --work_dir work_dir/DCA1_fgn-1_fgovl-F_fgc-T_sigma-1.0_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1              --fg_color --fg_color_sigma 1.0 --work_dir work_dir/DCA1_fgn-1_fgovl-F_fgc-T_sigma-1.0_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1              --fg_color --fg_color_sigma 1.0 --work_dir work_dir/DCA1_fgn-1_fgovl-F_fgc-T_sigma-1.0_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1              --fg_color --fg_color_sigma 1.0 --work_dir work_dir/DCA1_fgn-1_fgovl-F_fgc-T_sigma-1.0_fgs-1.00-1.00 --fg_min_size 1.00 --fg_max_size 1.00 &

# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2              --fg_color --fg_color_sigma 1.0 --work_dir work_dir/DCA1_fgn-2_fgovl-F_fgc-T_sigma-1.0_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2              --fg_color --fg_color_sigma 1.0 --work_dir work_dir/DCA1_fgn-2_fgovl-F_fgc-T_sigma-1.0_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2              --fg_color --fg_color_sigma 1.0 --work_dir work_dir/DCA1_fgn-2_fgovl-F_fgc-T_sigma-1.0_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2              --fg_color --fg_color_sigma 1.0 --work_dir work_dir/DCA1_fgn-2_fgovl-F_fgc-T_sigma-1.0_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2              --fg_color --fg_color_sigma 1.0 --work_dir work_dir/DCA1_fgn-2_fgovl-F_fgc-T_sigma-1.0_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2              --fg_color --fg_color_sigma 1.0 --work_dir work_dir/DCA1_fgn-2_fgovl-F_fgc-T_sigma-1.0_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2              --fg_color --fg_color_sigma 1.0 --work_dir work_dir/DCA1_fgn-2_fgovl-F_fgc-T_sigma-1.0_fgs-1.00-1.00 --fg_min_size 1.00 --fg_max_size 1.00 &

# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1 --fg_overlap --fg_color --fg_color_sigma 1.0 --work_dir work_dir/DCA1_fgn-1_fgovl-T_fgc-T_sigma-1.0_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1 --fg_overlap --fg_color --fg_color_sigma 1.0 --work_dir work_dir/DCA1_fgn-1_fgovl-T_fgc-T_sigma-1.0_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1 --fg_overlap --fg_color --fg_color_sigma 1.0 --work_dir work_dir/DCA1_fgn-1_fgovl-T_fgc-T_sigma-1.0_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1 --fg_overlap --fg_color --fg_color_sigma 1.0 --work_dir work_dir/DCA1_fgn-1_fgovl-T_fgc-T_sigma-1.0_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1 --fg_overlap --fg_color --fg_color_sigma 1.0 --work_dir work_dir/DCA1_fgn-1_fgovl-T_fgc-T_sigma-1.0_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1 --fg_overlap --fg_color --fg_color_sigma 1.0 --work_dir work_dir/DCA1_fgn-1_fgovl-T_fgc-T_sigma-1.0_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1 --fg_overlap --fg_color --fg_color_sigma 1.0 --work_dir work_dir/DCA1_fgn-1_fgovl-T_fgc-T_sigma-1.0_fgs-1.00-1.00 --fg_min_size 1.00 --fg_max_size 1.00 &

# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2 --fg_overlap --fg_color --fg_color_sigma 1.0 --work_dir work_dir/DCA1_fgn-2_fgovl-T_fgc-T_sigma-1.0_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2 --fg_overlap --fg_color --fg_color_sigma 1.0 --work_dir work_dir/DCA1_fgn-2_fgovl-T_fgc-T_sigma-1.0_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2 --fg_overlap --fg_color --fg_color_sigma 1.0 --work_dir work_dir/DCA1_fgn-2_fgovl-T_fgc-T_sigma-1.0_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2 --fg_overlap --fg_color --fg_color_sigma 1.0 --work_dir work_dir/DCA1_fgn-2_fgovl-T_fgc-T_sigma-1.0_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2 --fg_overlap --fg_color --fg_color_sigma 1.0 --work_dir work_dir/DCA1_fgn-2_fgovl-T_fgc-T_sigma-1.0_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2 --fg_overlap --fg_color --fg_color_sigma 1.0 --work_dir work_dir/DCA1_fgn-2_fgovl-T_fgc-T_sigma-1.0_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2 --fg_overlap --fg_color --fg_color_sigma 1.0 --work_dir work_dir/DCA1_fgn-2_fgovl-T_fgc-T_sigma-1.0_fgs-1.00-1.00 --fg_min_size 1.00 --fg_max_size 1.00 &

# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1              --fg_color --fg_color_sigma 0.5 --work_dir work_dir/DCA1_fgn-1_fgovl-F_fgc-T_sigma-0.5_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1              --fg_color --fg_color_sigma 0.5 --work_dir work_dir/DCA1_fgn-1_fgovl-F_fgc-T_sigma-0.5_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1              --fg_color --fg_color_sigma 0.5 --work_dir work_dir/DCA1_fgn-1_fgovl-F_fgc-T_sigma-0.5_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1              --fg_color --fg_color_sigma 0.5 --work_dir work_dir/DCA1_fgn-1_fgovl-F_fgc-T_sigma-0.5_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1              --fg_color --fg_color_sigma 0.5 --work_dir work_dir/DCA1_fgn-1_fgovl-F_fgc-T_sigma-0.5_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1              --fg_color --fg_color_sigma 0.5 --work_dir work_dir/DCA1_fgn-1_fgovl-F_fgc-T_sigma-0.5_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1              --fg_color --fg_color_sigma 0.5 --work_dir work_dir/DCA1_fgn-1_fgovl-F_fgc-T_sigma-0.5_fgs-1.00-1.00 --fg_min_size 1.00 --fg_max_size 1.00 &
                                                                                                                                                        
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2              --fg_color --fg_color_sigma 0.5 --work_dir work_dir/DCA1_fgn-2_fgovl-F_fgc-T_sigma-0.5_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2              --fg_color --fg_color_sigma 0.5 --work_dir work_dir/DCA1_fgn-2_fgovl-F_fgc-T_sigma-0.5_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2              --fg_color --fg_color_sigma 0.5 --work_dir work_dir/DCA1_fgn-2_fgovl-F_fgc-T_sigma-0.5_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2              --fg_color --fg_color_sigma 0.5 --work_dir work_dir/DCA1_fgn-2_fgovl-F_fgc-T_sigma-0.5_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2              --fg_color --fg_color_sigma 0.5 --work_dir work_dir/DCA1_fgn-2_fgovl-F_fgc-T_sigma-0.5_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2              --fg_color --fg_color_sigma 0.5 --work_dir work_dir/DCA1_fgn-2_fgovl-F_fgc-T_sigma-0.5_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2              --fg_color --fg_color_sigma 0.5 --work_dir work_dir/DCA1_fgn-2_fgovl-F_fgc-T_sigma-0.5_fgs-1.00-1.00 --fg_min_size 1.00 --fg_max_size 1.00 &
                                                                                                                                                        
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1 --fg_overlap --fg_color --fg_color_sigma 0.5 --work_dir work_dir/DCA1_fgn-1_fgovl-T_fgc-T_sigma-0.5_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1 --fg_overlap --fg_color --fg_color_sigma 0.5 --work_dir work_dir/DCA1_fgn-1_fgovl-T_fgc-T_sigma-0.5_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1 --fg_overlap --fg_color --fg_color_sigma 0.5 --work_dir work_dir/DCA1_fgn-1_fgovl-T_fgc-T_sigma-0.5_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1 --fg_overlap --fg_color --fg_color_sigma 0.5 --work_dir work_dir/DCA1_fgn-1_fgovl-T_fgc-T_sigma-0.5_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1 --fg_overlap --fg_color --fg_color_sigma 0.5 --work_dir work_dir/DCA1_fgn-1_fgovl-T_fgc-T_sigma-0.5_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1 --fg_overlap --fg_color --fg_color_sigma 0.5 --work_dir work_dir/DCA1_fgn-1_fgovl-T_fgc-T_sigma-0.5_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1 --fg_overlap --fg_color --fg_color_sigma 0.5 --work_dir work_dir/DCA1_fgn-1_fgovl-T_fgc-T_sigma-0.5_fgs-1.00-1.00 --fg_min_size 1.00 --fg_max_size 1.00 &
                                                                                                                                                        
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2 --fg_overlap --fg_color --fg_color_sigma 0.5 --work_dir work_dir/DCA1_fgn-2_fgovl-T_fgc-T_sigma-0.5_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2 --fg_overlap --fg_color --fg_color_sigma 0.5 --work_dir work_dir/DCA1_fgn-2_fgovl-T_fgc-T_sigma-0.5_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2 --fg_overlap --fg_color --fg_color_sigma 0.5 --work_dir work_dir/DCA1_fgn-2_fgovl-T_fgc-T_sigma-0.5_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2 --fg_overlap --fg_color --fg_color_sigma 0.5 --work_dir work_dir/DCA1_fgn-2_fgovl-T_fgc-T_sigma-0.5_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2 --fg_overlap --fg_color --fg_color_sigma 0.5 --work_dir work_dir/DCA1_fgn-2_fgovl-T_fgc-T_sigma-0.5_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2 --fg_overlap --fg_color --fg_color_sigma 0.5 --work_dir work_dir/DCA1_fgn-2_fgovl-T_fgc-T_sigma-0.5_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2 --fg_overlap --fg_color --fg_color_sigma 0.5 --work_dir work_dir/DCA1_fgn-2_fgovl-T_fgc-T_sigma-0.5_fgs-1.00-1.00 --fg_min_size 1.00 --fg_max_size 1.00 &

# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1              --work_dir work_dir/DCA1_fgn-1_fgovl-F_fgc-F_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1              --work_dir work_dir/DCA1_fgn-1_fgovl-F_fgc-F_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1              --work_dir work_dir/DCA1_fgn-1_fgovl-F_fgc-F_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1              --work_dir work_dir/DCA1_fgn-1_fgovl-F_fgc-F_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1              --work_dir work_dir/DCA1_fgn-1_fgovl-F_fgc-F_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1              --work_dir work_dir/DCA1_fgn-1_fgovl-F_fgc-F_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1              --work_dir work_dir/DCA1_fgn-1_fgovl-F_fgc-F_fgs-1.00-1.00 --fg_min_size 1.00 --fg_max_size 1.00 &
                                                                                                                        
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2              --work_dir work_dir/DCA1_fgn-2_fgovl-F_fgc-F_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2              --work_dir work_dir/DCA1_fgn-2_fgovl-F_fgc-F_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2              --work_dir work_dir/DCA1_fgn-2_fgovl-F_fgc-F_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2              --work_dir work_dir/DCA1_fgn-2_fgovl-F_fgc-F_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2              --work_dir work_dir/DCA1_fgn-2_fgovl-F_fgc-F_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2              --work_dir work_dir/DCA1_fgn-2_fgovl-F_fgc-F_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2              --work_dir work_dir/DCA1_fgn-2_fgovl-F_fgc-F_fgs-1.00-1.00 --fg_min_size 1.00 --fg_max_size 1.00 &
                                                                                                                        
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1 --fg_overlap --work_dir work_dir/DCA1_fgn-1_fgovl-T_fgc-F_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1 --fg_overlap --work_dir work_dir/DCA1_fgn-1_fgovl-T_fgc-F_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1 --fg_overlap --work_dir work_dir/DCA1_fgn-1_fgovl-T_fgc-F_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1 --fg_overlap --work_dir work_dir/DCA1_fgn-1_fgovl-T_fgc-F_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1 --fg_overlap --work_dir work_dir/DCA1_fgn-1_fgovl-T_fgc-F_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1 --fg_overlap --work_dir work_dir/DCA1_fgn-1_fgovl-T_fgc-F_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 1 --fg_overlap --work_dir work_dir/DCA1_fgn-1_fgovl-T_fgc-F_fgs-1.00-1.00 --fg_min_size 1.00 --fg_max_size 1.00 &
                                                                                                                        
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2 --fg_overlap --work_dir work_dir/DCA1_fgn-2_fgovl-T_fgc-F_fgs-0.25-0.50 --fg_min_size 0.25 --fg_max_size 0.50 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2 --fg_overlap --work_dir work_dir/DCA1_fgn-2_fgovl-T_fgc-F_fgs-0.25-0.75 --fg_min_size 0.25 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2 --fg_overlap --work_dir work_dir/DCA1_fgn-2_fgovl-T_fgc-F_fgs-0.50-0.75 --fg_min_size 0.50 --fg_max_size 0.75 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2 --fg_overlap --work_dir work_dir/DCA1_fgn-2_fgovl-T_fgc-F_fgs-0.25-1.00 --fg_min_size 0.25 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2 --fg_overlap --work_dir work_dir/DCA1_fgn-2_fgovl-T_fgc-F_fgs-0.50-1.00 --fg_min_size 0.50 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2 --fg_overlap --work_dir work_dir/DCA1_fgn-2_fgovl-T_fgc-F_fgs-0.75-1.00 --fg_min_size 0.75 --fg_max_size 1.00 &
# sr 1 24 python train.py --bg_data_path data/DCA1 --fg_data_path data/DCA1 --fg_num 2 --fg_overlap --work_dir work_dir/DCA1_fgn-2_fgovl-T_fgc-F_fgs-1.00-1.00 --fg_min_size 1.00 --fg_max_size 1.00 &

# sr 1 24 python train.py --not_augments --data_path data/XCAD                               --work_dir work_dir/vanilla_XCAD  &
# sr 1 24 python train.py --not_augments --data_path data/DCA1                               --work_dir work_dir/vanilla_DCA1  &
# sr 1 24 python train.py --not_augments --data_path data/ARCADE                             --work_dir work_dir/vanilla_ARCADE &
# sr 1 24 python train.py --not_augments --data_path data/XCAD+ARCADE                        --work_dir work_dir/vanilla_XCAD+ARCADE &

### Test code
sr 1 24 python train.py --test_save_pred --not_augments --data_path data/XCAD   --work_dir work_dir/ft_XCAD  &
sr 1 24 python train.py --test_save_pred --not_augments --data_path data/DCA1   --work_dir work_dir/ft_DCA1  &
sr 1 24 python train.py --test_save_pred --not_augments --data_path data/ARCADE --work_dir work_dir/ft_ARCADE &

### Best models
sr 1 24 python train.py --test_save_pred --bg_data_path data/XCAD   --fg_data_path data/XCAD   --fg_num 1                                              --fg_min_size 0.50 --fg_max_size 0.75 --work_dir work_dir/XCAD_fgn-1_fgovl-F_fgc-F_fgs-0.50-0.75             &
sr 1 24 python train.py --test_save_pred --bg_data_path data/ARCADE --fg_data_path data/ARCADE --fg_num 2              --fg_color --fg_color_sigma 0.5 --fg_min_size 1.00 --fg_max_size 1.00 --work_dir work_dir/ARCADE_fgn-2_fgovl-F_fgc-T_sigma-0.5_fgs-1.00-1.00 &
sr 1 24 python train.py --test_save_pred --bg_data_path data/DCA1   --fg_data_path data/DCA1   --fg_num 2 --fg_overlap --fg_color --fg_color_sigma 0.5 --fg_min_size 0.50 --fg_max_size 1.00 --work_dir work_dir/DCA1_fgn-2_fgovl-T_fgc-T_sigma-0.5_fgs-0.50-1.00   &

### Analysis models (DCA1)

### Find best images (XCAD)
