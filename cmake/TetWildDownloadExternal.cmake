################################################################################
include(DownloadProject)

# Shortcut function
function(tetwild_download_project name)
    download_project(
        PROJ         ${name}
        SOURCE_DIR   ${TETWILD_EXTERNAL}/${name}
        DOWNLOAD_DIR ${TETWILD_EXTERNAL}/.cache/${name}
        ${ARGN}
    )
endfunction()

################################################################################

## libigl
function(tetwild_download_libigl)
    tetwild_download_project(libigl
        GIT_REPOSITORY https://github.com/jdumas/libigl.git
        GIT_TAG        5cfc34dd1680cfe5a6e545ed9f89ae5cf2d644b7
    )
endfunction()

## geogram
function(tetwild_download_geogram)
    tetwild_download_project(geogram
        GIT_REPOSITORY https://github.com/alicevision/geogram.git
        GIT_TAG        v1.6.6
    )
endfunction()

## spdlog
function(tetwild_download_spdlog)
    tetwild_download_project(spdlog
        GIT_REPOSITORY https://github.com/gabime/spdlog.git
        GIT_TAG        v1.1.0
    )
endfunction()

## CLI11
function(tetwild_download_cli11)
    tetwild_download_project(cli11
        URL     https://github.com/CLIUtils/CLI11/archive/v1.6.1.tar.gz
        URL_MD5 48ef97262adb0b47a2f0a7edbda6e2aa
    )
endfunction()
