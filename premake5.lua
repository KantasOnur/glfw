project "GLFW"
    kind "StaticLib"
    language "C"
    cdialect "C11"
    systemversion "latest"

    targetdir("bin/" .. outputdir .. "/%{prj.name}")
    objdir("obj/" .. outputdir .. "/%{prj.name}")

    files
    {
        "include/GLFW/glfw3.h",
        "include/GLFW/glfw3native.h",
        "src/internal.h",
        "src/platform.h",
        "src/mappings.h",
        "src/context.c",
        "src/init.c",
        "src/input.c",
        "src/monitor.c",
        "src/platform.c",
        "src/vulkan.c",
        "src/window.c",
        "src/egl_context.c",
        "src/osmesa_context.c",
        "src/null_platform.h",
        "src/null_joystick.h",
        "src/null_init.c",
        "src/null_monitor.c",
        "src/null_window.c",
        "src/null_joystick.c"
    }

    filter "system:macosx"
        defines "_GLFW_COCOA"
        files
        {
            "src/cocoa_time.h",
            "src/cocoa_time.c",
            "src/posix_thread.h",
            "src/posix_module.c",
            "src/posix_thread.c",
            "src/cocoa_platform.h",
            "src/cocoa_joystick.h",
            "src/cocoa_init.m",
            "src/cocoa_joystick.m",
            "src/cocoa_monitor.m",
            "src/cocoa_window.m",
            "src/nsgl_context.m"
        }
        
        linkoptions 
        {
           "-framework Cocoa", 
           "-framework IOKit",
           "-framework CoreVideo"
        }

    buildoptions {"-Wall"}

