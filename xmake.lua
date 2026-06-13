-- include subprojects
includes("lib/commonlibsf")

-- set project constants
set_project("BakaConsoleEditorIDs")
set_version("3.0.0")
set_license("GPL-3.0")
set_languages("c++23")
set_warnings("allextra")

-- add rules
add_rules("mode.debug", "mode.releasedbg")
add_rules("plugin.vsxmake.autoupdate")

-- enable lto
set_policy("build.optimization.lto", true)

-- set config
set_config("commonlib_xbyak", true)

-- setup targets
target("BakaConsoleEditorIDs")
    -- add commonlibsf plugin
    add_rules("commonlibsf.plugin", {
        name = "BakaConsoleEditorIDs",
        author = "shad0wshayd3"
    })

    -- add source files
    add_files("src/**.cpp")
    add_headerfiles("src/**.h")
    add_includedirs("src")
    set_pcxxheader("src/PCH.h")

    -- add extra files
    add_extrafiles(".clang-format")
