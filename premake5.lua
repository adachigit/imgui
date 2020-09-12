project "ImGui"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"
    staticruntime "on"

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

    filter "system:macosx"
        pic "on"
        systemversion "10.14"

    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        runtime "Release"
        optimize "on"
