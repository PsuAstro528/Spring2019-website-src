# importing converter
using Weave

# getting directory of lab notebooks
lab_dir = string(@__DIR__, "/", ARGS[1])

# change into lab's directories and read files
cd(lab_dir)
files = readdir()

# for each file check to see if it is a Jupyter notebook. If so make a converted version
for file in files

    # prevents short file names from causing errors
    if length(file) > 5

    	if ".ipynb"==file[(length(file)-5):length(file)]
	    println(file)
            convert_doc(file, string(file[1 : (length(file) - 6)], ".jmd"))
    	end

    end

end

# change back to the upper directory
cd(@__DIR__)