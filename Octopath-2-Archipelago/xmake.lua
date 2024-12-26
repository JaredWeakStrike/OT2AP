local projectName = "Octopath2AP"

target(projectName)
    add_rules("ue4ss.mod")
    add_includedirs(".")
    add_files("main.cpp")
    add_files("src/*.cpp")
    add_headerfiles("include/*.hpp")
    --set_targetdir("C:/Program Files (x86)/Steam/steamapps/common/Octopath_Traveler2/Octopath_Traveler2/Binaries/Win64/Mods/OT2AP/dlls/Mods/Octopath2AP/dlls")
    after_build(function (target)
        
        local targetFile = target:targetfile()
        print("Target file: ", targetFile)  -- Check if this is valid
        if targetFile then
            --set_filename("main")
            os.mv(targetFile, "C:/Program Files (x86)/Steam/steamapps/common/Octopath_Traveler2/Octopath_Traveler2/Binaries/Win64/Mods/OT2AP/dlls/main.dll")
            print("File copied successfully.")
        else
            print("Error: Target file path is invalid!")
        end
    end)