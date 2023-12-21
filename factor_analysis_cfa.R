library(lavaan)

model1 <- "
# srl_f_f1 =~ SRL_F_26_spec_strategies + SRL_F_23_question_self + SRL_F_25_past_strategies + SRL_F_21_goals_time_learn + SRL_F_22_deadlines + SRL_F_20_long_term_goals + SRL_F_24_dif_ways_solve
srl_f_f2 =~ SRL_F_30_difficulties_calm + SRL_F_31_problem_solutions + SRL_F_32_handle_whatever + SRL_F_33_job_exp_future
srl_f_f3 =~ SRL_F_34_self_goals_set + SRL_F_35_job_demands + SRL_F_19_personal_standards
srl_f_f4 =~ SRL_F_28_learn_new + SRL_F_29_learning_important + SRL_F_27_apply_learned
srl_p_f1 =~ SRL_P_50_lookup_unsure + SRL_P_51_knowl_gaps + SRL_P_52_challenge_job + SRL_P_43_collect_info + SRL_P_42_rel_knowl_now_past + SRL_P_44_ideas_prev_exp
srl_p_f2 =~ SRL_P_36_plan_learning_goals + SRL_P_41_organize_time + SRL_P_37_rel_learn_now_past + SRL_P_38_change_strategies + SRL_P_39_make_notes + SRL_P_40_meaning_signif_info
srl_p_f3 =~ SRL_P_46_play_ideas + SRL_P_45_resources_start_pt + SRL_P_47_alt_ways_tasks
srl_sr_f1 =~ SRL_SR_59_things_learned_team + SRL_SR_60_new_info_impact + SRL_SR_58_big_picture
srl_sr_f2 =~ SRL_SR_56_dif_ways_task_done + SRL_SR_57_things_learned_finish + SRL_SR_55_task_done_well_learned 
"

model.fit1 <- cfa(model=model1, data=df_srl_imp_mean_comb, std.lv = TRUE)

summary(model.fit1, fit.measures = TRUE, standardized=TRUE)