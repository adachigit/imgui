project "ImGui"
    kind "StaticLib"
    language "C++"

    targetdir ("bin/" .. outputdir .. "%{prj.name}")
    objdir ("bin/" .. outputdir .. "%{prj.name}")

    files
    {
        "imconfig.h",
        "imgui.cpp",
        "imgui.h",
        "imgui_draw.cpp",
        "imgui_internal.h",
        "imgui_widgets.cpp",
        "imstb_rectpack.h",
        "imstb_textedit.h",
        "imstb_truetype.h",
        "imgui_demo.cpp"
    }

    filter "system:windows"
        systemversion "latest"
        cppdialect "C++17"
        staticruntime "On"

    filter "system:macosx"
        pic "On"
        systemversion "10.14"
        cppdialect "C++17"
        staticruntime "On"

    filter "configurations:Debug"
        runtime "Debug"
        symbols "On"

    filter "configurations:Release"
        runtime "Release"
        optimize "On"
