# RPIScript.r

print("Installing Libraries")
source("RPILib.r")

print("Importing Datasets")
source("RPIImp.r")

print("Cleaning Assignee")
source("RPIAssi.r")

print("Cleaning OpSys")
source("RPIOps.r")

print("Cleaning Product")
source("RPIPro.r")

print("Cleaning Rest")
source("RPIOth.r")	

print("Building Dataframe")
source("RPIDf.r")

print("Running the model")
source("RPIMod.r")

print("Script complete. AUC.pdf was generated.")
