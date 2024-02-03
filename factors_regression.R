library(dplyr)

# SUBSECTION WLA FACTOR
# Calculate rowMeans for WLA F1: "Workplace Learning Activity" to
# facilitate further analysis
wla_f1 <- as.data.frame(rowMeans(subset_wla))
colnames(wla_f1)[1] <- "wla_f1"


# SUBSECTION SRL-F FACTORS

# SRL-F F1
# Create data frame for factor F1: "Strategic planning"
srl_f_f1 <- subset_srl_f |>
  select(
    c(
      "SRL_F_19_spec_strategies",
      "SRL_F_16_question_self",
      "SRL_F_18_past_strategies",
      "SRL_F_14_goals_time_learn",
      "SRL_F_15_deadlines",
      "SRL_F_13_long_term_goals",
      "SRL_F_17_dif_ways_solve"
    ),
  )

# Calculate rowMeans for F1: "Strategic planning" to
# facilitate further analysis
srl_f_f1 <- as.data.frame(rowMeans(srl_f_f1))
colnames(srl_f_f1)[1] <- "srl_f_f1"


# SRL-F F2
# Create data frame for factor SRL-F F2: "Self-efficacy"
srl_f_f2 <- subset_srl_f |>
  select(
    c(
      "SRL_F_48_difficulties_calm",
      "SRL_F_49_problem_solutions",
      "SRL_F_50_handle_whatever",
      "SRL_F_51_job_exp_future"
    ),
  )

# Calculate rowMeans for SRL-F F2: "Self-efficacy" to
# facilitate further analysis
srl_f_f2 <- as.data.frame(rowMeans(srl_f_f2))
colnames(srl_f_f2)[1] <- "srl_f_f2"


# SRL-F F3
# Create data frame for factor SRL-F F2: "Goal setting"
srl_f_f3 <- subset_srl_f |>
  select(
    c(
      "SRL_F_52_self_goals_set",
      "SRL_F_53_job_demands",
      "SRL_F_12_personal_standards"
    ),
  )

# Calculate rowMeans for SRL-F F2: "Goal setting" to
# facilitate further analysis
srl_f_f3 <- as.data.frame(rowMeans(srl_f_f3))
colnames(srl_f_f3)[1] <- "srl_f_f3"


# SRL-F F4
# Create data frame for factor SRL-F F4: "Task interest / value"
srl_f_f4 <- subset_srl_f |>
  select(
    c(
      "SRL_F_21_learn_new",
      "SRL_F_22_learning_important",
      "SRL_F_20_apply_learned"
    ),
  )

# Calculate rowMeans for SRL-F F4: "Task interest / value" to
# facilitate further analysis
srl_f_f4 <- as.data.frame(rowMeans(srl_f_f4))
colnames(srl_f_f4)[1] <- "srl_f_f4"


# SUBSECTION SRL-P FACTORS

# SRL-P F1
# Create data frame for factor SRL-P F1: "Elaboration strategies"
srl_p_f1 <- subset_srl_p |>
  select(
    c(
      "SRL_P_37_lookup_unsure",
      "SRL_P_38_knowl_gaps",
      "SRL_P_39_challenge_job",
      "SRL_P_30_collect_info",
      "SRL_P_29_rel_knowl_now_past",
      "SRL_P_31_ideas_prev_exp"
    ),
  )

# Calculate rowMeans for SRL-P F1: "Elaboration strategies" to
# facilitate further analysis
srl_p_f1 <- as.data.frame(rowMeans(srl_p_f1))
colnames(srl_p_f1)[1] <- "srl_p_f1"


# SRL-P F2
# Create data frame for factor SRL-P F2: "Task strategies"
srl_p_f2 <- subset_srl_p |>
  select(
    c(
      "SRL_P_23_plan_learning_goals",
      "SRL_P_28_organize_time",
      "SRL_P_24_rel_learn_now_past",
      "SRL_P_25_change_strategies",
      "SRL_P_26_make_notes",
      "SRL_P_27_meaning_signif_info"
    ),
  )

# Calculate rowMeans for SRL-P F1: "Task strategies" to
# facilitate further analysis
srl_p_f2 <- as.data.frame(rowMeans(srl_p_f2))
colnames(srl_p_f2)[1] <- "srl_p_f2"


# SRL-P F3
# Create data frame for factor SRL-P F3: "Critical thinking"
srl_p_f3 <- subset_srl_p |>
  select(
    c(
      "SRL_P_33_play_ideas",
      "SRL_P_32_resources_start_pt",
      "SRL_P_34_alt_ways_tasks"
    ),
  )

# Calculate rowMeans for SRL-P F3: "Critical thinking" to
# facilitate further analysis
srl_p_f3 <- as.data.frame(rowMeans(srl_p_f3))
colnames(srl_p_f3)[1] <- "srl_p_f3"


# SUBSECTION SRL-SR FACTORS

# SRL-SR F1
# Create data frame for factor SRL-SR F1: "Self-satisfaction"
srl_sr_f1 <- subset_srl_sr |>
  select(
    c(
      "SRL_SR_46_things_learned_team",
      "SRL_SR_47_new_info_impact",
      "SRL_SR_45_big_picture"
    ),
  )

# Calculate rowMeans for SRL-P F1: "Self-satisfaction" to
# facilitate further analysis
srl_sr_f1 <- as.data.frame(rowMeans(srl_sr_f1))
colnames(srl_sr_f1)[1] <- "srl_sr_f1"


# SRL-SR F2
# Create data frame for factor SRL-SR F2: "Self-evaluation"
srl_sr_f2 <- subset_srl_sr |>
  select(
    c(
      "SRL_SR_43_dif_ways_task_done",
      "SRL_SR_44_things_learned_finish",
      "SRL_SR_42_task_done_well_learned"
    ),
  )

# Calculate rowMeans for SRL-P F2: "Self-evaluation" to
# facilitate further analysis
srl_sr_f2 <- as.data.frame(rowMeans(srl_sr_f2))
colnames(srl_sr_f2)[1] <- "srl_sr_f2"


# SUBSECTION WLC FACTOR
# Calculate rowMeans for WLC F1: "Workplace Learning Context" to
# facilitate further analysis
wlc_f1 <- as.data.frame(rowMeans(subset_wlc))
colnames(wlc_f1)[1] <- "wlc_f1"


# SUBSECTION SE FACTOR
# Calculate rowMeans for SE F1: "Home-office self-efficacy" to
# facilitate further analysis
se_f1 <- as.data.frame(rowMeans(subset_se))
colnames(se_f1)[1] <- "se_f1"


# SUBSECTION SRL SCORES
# Get SRL scores by calculating row sums of individual observations
srl_scores <- as.data.frame(rowSums(subset_srl))
colnames(srl_scores)[1] <- "srl_scores"


# Put all individual factor vectors in their respective data frames
# into one single data frame
factors_regression <- as.data.frame(
  c(
    wlc_f1,
    wla_f1,
    srl_scores,
    srl_f_f1,
    srl_f_f2,
    srl_f_f3,
    srl_f_f4,
    srl_p_f1,
    srl_p_f2,
    srl_p_f3,
    srl_sr_f1,
    srl_sr_f2,
    se_f1
  )
)

factors_regression

