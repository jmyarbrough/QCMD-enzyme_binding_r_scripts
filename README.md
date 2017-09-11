# QCMD-enzyme_binding_r_scripts
R-Scripts used to analyze QCMD data consiting of binding kinetics, plotting, and Frequency and Dissipation analysis
This script is for two different runs on the QCMD to compare different proteins.
They are imported as CSV files, I am working on adding the text feature, this way when you export the QCMD data, you will not have
to convert it to CSV

Here you are able to plot the all the odd harmonic frequencies and disipation, you are also able to plot the mass which is calculated
wiht the Qsoft software.  I will ultimately add the ability to calculate the mass via R.

Then if you know the molecular weight of your protiens, you will have the ability to convert the mass to Number of molecules.
Finally I have been able to plot the normalized dissipation from the 3rd harmonic of Protein 1 and 2, subtract the two and see the 
difference.  This is an important feature to have the abilty to see the flexibility of the protein in comparison to one another.
This is a nice feature when you are looking at mutants derived from a wildtype protein.
