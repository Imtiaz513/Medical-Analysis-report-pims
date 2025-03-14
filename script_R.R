-library(tidyr)
-data<-PIMS_clean
-str(data)
 # Load necessary libraries
 library(dplyr)
 library(forcats)

### Convert specified columns to factors
data <- data %>%
  mutate(across(c(
    `How old are you?`, 
    `What is your race?`, 
    `What is your highest level of eduation?`, 
    `Are you employed?`, 
    `Are you a smoker?`, 
    `Were you smoking during pregnancy?`, 
    `Which of the following medical conditions did you have during your pregnancy?`, 
    `How did you deliver your baby?`, 
    `Was your baby born term or preterm?`, 
    `Did your baby need to be admitted to a special ward after delivery?`, 
    `Thinking back to before you had your baby, how did you plan to feed them?`, 
    `Did anyone discuss breastfeeding with you during your antenatal appointments?`, 
    `Would you have been keen to attend antenatal appointments focused on breastfeeding before the birth of your child?`, 
    `Would you be open to attending lactation consultations online?`, 
    `Have you heard of antenatal breast milk expression?`, 
    `Do you feel well supported during your breastfeeding journey so far?`, 
    `Did you have/were you offered infant skin to skin within 1 hour after the delivery of your child?`, 
    `Were you breastfeeding your baby on discharge from the hospital?`, 
    `During the first few hours after delivery, did anyone help you with breastfeeding?`, 
    `Did you/are you exclusively breastfeeding your baby?`, 
    `Has your baby ever been given formula milk?`, 
    `Which of the following problems did you face while breastfeeding?`, 
    `I think I produce enough breastmilk for my baby.`, 
    `My baby is growing well.`, 
    `My baby has enough wet diapers/passes enough urine.`, 
    `My baby has enough soiled diaperes/passes enough stools.`, 
    `My baby is normally alert.`, 
    `My baby sucks well during breastfeeding.`, 
    `My baby is well attached during breastfeeding.`, 
    `My baby appears satisfied after breastfeeds.`, 
    `My breasts feel full before feeds.`, 
    `My breasts feel soft after feeds.`, 
    `My baby feeds too often.`, 
    `My baby feeds too quickly.`, 
    `My baby needs supplementary infant formula.`, 
    `My breasts feel empty in the afternoon or evenings.`, 
    PIMS  # Convert PIMS to factor as well
  ), as.factor))

# Check structure after conversion
str(data)
library(dplyr)

#### Rename variables with shorter names
your_dataframe <- your_dataframe %>% rename(
  Subject_ID = `Subject ID`,
  Age = `How old are you?`,
  Race = `What is your race?`,
  Education = `What is your highest level of eduation?`,
  Employed = `Are you employed?`,
  Smoker = `Are you a smoker?`,
  Smoking_During_Pregnancy = `Were you smoking during pregnancy?`,
  Medical_Conditions = `Which of the following medical conditions did you have during your pregnancy?`,
  Delivery_Mode = `How did you deliver your baby?`,
  Baby_Term = `Was your baby born term or preterm?`,
  Number_of_Children = `How many children do you have?`,
  Birth_Weight = `How heavy was your baby at birth?`,
  Special_Care_Admission = `Did your baby need to be admitted to a special ward after delivery?`,
  Planned_Feeding = `Thinking back to before you had your baby, how did you plan to feed them?`,
  Discussed_Breastfeeding_Antenatal = `Did anyone discuss breastfeeding with you during your antenatal appointments?`,
  Keen_Antenatal_BF_Classes = `Would you have been keen to attend antenatal appointments focused on breastfeeding before the birth of your child?`,
  Open_to_Online_Lactation = `Would you be open to attending lactation consultations online?`,
  Heard_ABME = `Have you heard of antenatal breast milk expression?`,
  ABME_Start_Gestation = `If you attempted antenatal breast milk expression, at what gestation did you begin?`,
  Breastfeeding_Support = `Do you feel well supported during your breastfeeding journey so far?`,
  Support_Suggestions = `If you do not feel supported during your breastfeeding journey so far, what do you suggest can be done?`,
  Skin_to_Skin_1h = `Did you have/were you offered infant skin to skin within 1 hour after the delivery of your child?`,
  BF_Start_Time = `How long after delivery did you start breastfeeding your child?`,
  BF_on_Discharge = `Were you breastfeeding your baby on discharge from the hospital?`,
  BF_Help_After_Delivery = `During the first few hours after delivery, did anyone help you with breastfeeding?`,
  Exclusive_BF = `Did you/are you exclusively breastfeeding your baby?`,
  BF_Reasons = `What are the reasons you chose to breastfeed your baby?`,
  BF_Duration = `Which of the following describes how long you breastfed for?`,
  BF_Plan_Duration = `How long do you plan to continue breastfeeding your baby?`,
  Given_Formula = `Has your baby ever been given formula milk?`,
  Formula_Age = `How old was your baby when they were first given formula milk?`,
  Formula_Frequency = `How often has your baby been given infant formula?`,
  Last_7_Days_Baby_Fed = `In the last 7 days, your baby has had`,
  BF_Problems = `Which of the following problems did you face while breastfeeding?`,
  Milk_Supply = `I think I produce enough breastmilk for my baby.`,
  Baby_Growing_Well = `My baby is growing well.`,
  Wet_Diapers = `My baby has enough wet diapers/passes enough urine.`,
  Soiled_Diapers = `My baby has enough soiled diaperes/passes enough stools.`,
  Baby_Alertness = `My baby is normally alert.`,
  Sucking_Well = `My baby sucks well during breastfeeding.`,
  Baby_Attachment = `My baby is well attached during breastfeeding.`,
  Baby_Satisfied = `My baby appears satisfied after breastfeeds.`,
  Full_Breasts_Before = `My breasts feel full before feeds.`,
  Soft_Breasts_After = `My breasts feel soft after feeds.`,
  Feeds_Too_Often = `My baby feeds too often.`,
  Feeds_Too_Quickly = `My baby feeds too quickly.`,
  Needs_Formula = `My baby needs supplementary infant formula.`,
  Empty_Breasts_Afternoon = `My breasts feel empty in the afternoon or evenings.`,
  PIMS = `PIMS`
)

# Check the new column names
colnames(your_dataframe)
library(dplyr)

## Rename columns and convert character variables to factors
data <- data %>%
  rename(
    Subject_ID = `Subject ID`,
    Age = `How old are you?`,
    Race = `What is your race?`,
    Education = `What is your highest level of eduation?`,
    Employed = `Are you employed?`,
    Smoker = `Are you a smoker?`,
    Smoking_During_Pregnancy = `Were you smoking during pregnancy?`,
    Medical_Conditions = `Which of the following medical conditions did you have during your pregnancy?`,
    Delivery_Mode = `How did you deliver your baby?`,
    Baby_Term = `Was your baby born term or preterm?`,
    Number_of_Children = `How many children do you have?`,
    Birth_Weight = `How heavy was your baby at birth?`,
    Special_Care_Admission = `Did your baby need to be admitted to a special ward after delivery?`,
    Planned_Feeding = `Thinking back to before you had your baby, how did you plan to feed them?`,
    Discussed_Breastfeeding_Antenatal = `Did anyone discuss breastfeeding with you during your antenatal appointments?`,
    Keen_Antenatal_BF_Classes = `Would you have been keen to attend antenatal appointments focused on breastfeeding before the birth of your child?`,
    Open_to_Online_Lactation = `Would you be open to attending lactation consultations online?`,
    Heard_ABME = `Have you heard of antenatal breast milk expression?`,
    ABME_Start_Gestation = `If you attempted antenatal breast milk expression, at what gestation did you begin?`,
    Breastfeeding_Support = `Do you feel well supported during your breastfeeding journey so far?`,
    Support_Suggestions = `If you do not feel supported during your breastfeeding journey so far, what do you suggest can be done?`,
    Skin_to_Skin_1h = `Did you have/were you offered infant skin to skin within 1 hour after the delivery of your child?`,
    BF_Start_Time = `How long after delivery did you start breastfeeding your child?`,
    BF_on_Discharge = `Were you breastfeeding your baby on discharge from the hospital?`,
    BF_Help_After_Delivery = `During the first few hours after delivery, did anyone help you with breastfeeding?`,
    Exclusive_BF = `Did you/are you exclusively breastfeeding your baby?`,
    BF_Reasons = `What are the reasons you chose to breastfeed your baby?`,
    BF_Duration = `Which of the following describes how long you breastfed for?`,
    BF_Plan_Duration = `How long do you plan to continue breastfeeding your baby?`,
    Given_Formula = `Has your baby ever been given formula milk?`,
    Formula_Age = `How old was your baby when they were first given formula milk?`,
    Formula_Frequency = `How often has your baby been given infant formula?`,
    Last_7_Days_Baby_Fed = `In the last 7 days, your baby has had`,
    BF_Problems = `Which of the following problems did you face while breastfeeding?`,
    Milk_Supply = `I think I produce enough breastmilk for my baby.`,
    Baby_Growing_Well = `My baby is growing well.`,
    Wet_Diapers = `My baby has enough wet diapers/passes enough urine.`,
    Soiled_Diapers = `My baby has enough soiled diaperes/passes enough stools.`,
    Baby_Alertness = `My baby is normally alert.`,
    Sucking_Well = `My baby sucks well during breastfeeding.`,
    Baby_Attachment = `My baby is well attached during breastfeeding.`,
    Baby_Satisfied = `My baby appears satisfied after breastfeeds.`,
    Full_Breasts_Before = `My breasts feel full before feeds.`,
    Soft_Breasts_After = `My breasts feel soft after feeds.`,
    Feeds_Too_Often = `My baby feeds too often.`,
    Feeds_Too_Quickly = `My baby feeds too quickly.`,
    Needs_Formula = `My baby needs supplementary infant formula.`,
    Empty_Breasts_Afternoon = `My breasts feel empty in the afternoon or evenings.`,
    PIMS = `PIMS`
  ) %>%
  mutate(across(where(is.character), as.factor))  # Convert all character variables to factors

# Check structure to confirm changes
str(data)
data <- data %>%
  mutate(Birth_Weight_Category = cut(Birth_Weight,
                                     breaks = c(-Inf, 2499, 2900, 3400, 4000, Inf),
                                     labels = c("<2500g", "2500-2900g", "3000-3400g", "3500-4000g", ">4000g"),
                                     right = TRUE))  # Include upper bound in each category

# Check the distribution
table(data$Birth_Weight_Category)
str(data)

# Load required packages
library(dplyr)
library(cardx)
library(gtsummary)

# Select the variables for comparison
variables_to_compare <- c("Age", "Race", "Education", "Employed", "Smoker",
                          "Smoking_During_Pregnancy", "Medical_Conditions", "Delivery_Mode",
                          "Baby_Term", "Number_of_Children", "Birth_Weight_Category",
                          "Special_Care_Admission", "Planned_Feeding",
                          "Discussed_Breastfeeding_Antenatal", "Keen_Antenatal_BF_Classes",
                          "Breastfeeding_Support", "Skin_to_Skin_1h", "BF_Start_Time",
                          "BF_on_Discharge", "BF_Help_After_Delivery", "BF_Duration",
                          "BF_Plan_Duration", "BF_Problems")

# Create a gtsummary table with chi-square tests
table_pims <- data %>%
  select(PIMS, all_of(variables_to_compare)) %>%
  tbl_summary(by = PIMS,  # Grouping by PIMS
              percent = "row",  # Display row percentages
              missing = "no") %>%  # Exclude missing values from summary
  add_p(test = list(all_categorical() ~ "chisq.test")) %>%  # Apply chi-square test
  add_overall() %>%  # Add overall counts
  modify_header(label = "**Variable**") %>%  # Modify table headers
  bold_labels()  # Make labels bold

# Print the table
table_pims
install.packages("gtsummary")
install.packages("dplyr")
install.packages("tidyverse")

library(gtsummary)
library(dplyr)
library(tidyverse)


### Create a summary table with Fisher's exact test results
summary_table <- data %>%
  select(PIMS, Age, Race, Education, Employed, Smoker, Smoking_During_Pregnancy,
         Medical_Conditions, Delivery_Mode, Baby_Term, Number_of_Children,
         Birth_Weight_Category, Special_Care_Admission, Planned_Feeding,
         Discussed_Breastfeeding_Antenatal, Keen_Antenatal_BF_Classes,
         Breastfeeding_Support, Skin_to_Skin_1h, BF_Start_Time,
         BF_on_Discharge, BF_Help_After_Delivery, BF_Duration,
         BF_Plan_Duration, BF_Problems) %>%
  tbl_summary(by = PIMS,  # Compare all variables with PIMS
              missing = "no") %>% 
  add_p(test = all_categorical() ~ "fisher.test") %>%  # Apply Fisher test
  add_overall() %>%  # Add overall counts
  modify_header(label = "**Variable**") %>% 
  modify_spanning_header(c("stat_1", "stat_2") ~ "**Comparison with PIMS**") %>% 
  bold_labels()

# Print the summary table
summary_table

