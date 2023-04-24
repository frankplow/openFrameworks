function(find_linux_deps)

    find_package(assimp)
    if (NOT assimp_FOUND)
        message(SEND_ERROR "Dependency Assimp not found. Please install it using your system's equivalent of 'sudo apt install libassimp-dev'")
    endif()
    add_library(of-deps-assimp INTERFACE)
    add_library(of::assimp ALIAS of-deps-assimp)
    target_include_directories(of-deps-assimp INTERFACE ${ASSIMP_INCLUDE_DIRS})
    target_link_libraries(of-deps-assimp INTERFACE ${ASSIMP_LIBRARIES})

    find_package(OpenCV)
    if (NOT OpenCV_FOUND)
        message(SEND_ERROR "Dependency OpenCV not found. Please install it using your system's equivalent of 'sudo apt install libopencv-dev'")
    endif()
    add_library(of-deps-opencv INTERFACE)
    add_library(of::opencv ALIAS of-deps-opencv)
    target_include_directories(of-deps-opencv INTERFACE ${OpenCV_INCLUDE_DIRS})
    target_link_libraries(of-deps-opencv INTERFACE ${OpenCV_LIBS})

    find_package(Cairo)
    if (NOT Cairo_FOUND)
        message(SEND_ERROR "Dependency Cairo not found. Please install it using your system's equivalent of 'sudo apt install libcairo-dev'")
    endif()
    add_library(of-deps-cairo INTERFACE)
    add_library(of::cairo ALIAS of-deps-cairo)
    target_include_directories(of-deps-cairo INTERFACE ${CAIRO_INCLUDE_DIRS})
    target_link_libraries(of-deps-cairo INTERFACE ${CAIRO_LIBRARIES})

    find_package(GLFW3)
    if (NOT GLFW3_FOUND)
        message(SEND_ERROR "Dependency GLFW not found. Please install it using your system's equivalent of 'sudo apt install libglfw3-dev'")
    endif()
    add_library(of-deps-glfw INTERFACE)
    add_library(of::glfw ALIAS of-deps-glfw)
    target_include_directories(of-deps-glfw INTERFACE ${GLFW3_INCLUDE_DIRS})
    target_link_libraries(of-deps-glfw INTERFACE ${GLFW3_LIBRARIES})

    find_package(OpenSSL)
    if (NOT OPENSSL_FOUND)
        message(SEND_ERROR "Dependency OpenSSL not found. Please install it using your system's equivalent of 'sudo apt install libssl-dev'")
    endif()
    add_library(of-deps-openssl INTERFACE)
    add_library(of::openssl ALIAS of-deps-openssl)
    target_link_libraries(of-deps-openssl INTERFACE OpenSSL::SSL OpenSSL::Crypto)

    find_package(CURL)
    if (NOT CURL_FOUND)
        message(SEND_ERROR "Dependency CURL not found. Please install it using your system's equivalent of 'sudo apt install libcurl-dev'")
    endif()
    add_library(of-deps-curl INTERFACE)
    add_library(of::curl ALIAS of-deps-curl)
    target_link_libraries(of-deps-curl INTERFACE CURL::libcurl)

    find_package(Freetype)
    if (NOT FREETYPE_FOUND)
        message(SEND_ERROR "Dependency FreeType not found. Please install it using your system's equivalent of 'sudo apt install libfreetype-dev'")
    endif()
    add_library(of-deps-freetype INTERFACE)
    add_library(of::freetype ALIAS of-deps-freetype)
    target_link_libraries(of-deps-freetype INTERFACE Freetype::Freetype)

    find_package(pugixml)
    if (NOT TARGET pugixml::pugixml)
        message(SEND_ERROR "Dependency pugixml not found. Please install it using your system's equivalent of 'sudo apt install libpugixml-dev'")
    endif()
    add_library(of-deps-pugixml INTERFACE)
    add_library(of::pugixml ALIAS of-deps-pugixml)
    target_link_libraries(of-deps-pugixml INTERFACE pugixml::pugixml)

    set(URIPARSER_FIND_QUIETLY ON)
    find_package(uriparser)
    if (NOT URIPARSER_FOUND)
        message(SEND_ERROR "Dependency uriparser not found. Please install it using your system's equivalent of 'sudo apt install liburiparser-dev'")
    endif()
    add_library(of-deps-uriparser INTERFACE)
    add_library(of::uriparser ALIAS of-deps-uriparser)
    target_include_directories(of-deps-uriparser INTERFACE ${URIPARSER_INCLUDE_DIR})
    target_link_libraries(of-deps-uriparser INTERFACE ${URIPARSER_LIBRARY})

    find_package(RtAudio)
    if (NOT RTAUDIO_FOUND)
        message(SEND_ERROR "Dependency RtAudio not found. Please install it using your system's equivalent of 'sudo apt install librtaudio-dev'")
    endif()
    add_library(of-deps-rtAudio INTERFACE)
    add_library(of::rtAudio ALIAS of-deps-rtAudio)
    target_include_directories(of-deps-rtAudio INTERFACE ${RTAUDIO_INCLUDE_DIR})
    target_link_libraries(of-deps-rtAudio INTERFACE ${RTAUDIO_LIBRARIES})

    find_package(FreeImage)
    if (NOT FREEIMAGE_FOUND)
        message(SEND_ERROR "Dependency FreeImage not found. Please install it using your system's equivalent of 'sudo apt install libfreeimage-dev'")
    endif()
    add_library(of-deps-freeimage INTERFACE)
    add_library(of::FreeImage ALIAS of-deps-freeimage)
    target_include_directories(of-deps-freeimage INTERFACE ${FREEIMAGE_INCLUDE_DIR})
    target_link_libraries(of-deps-freeimage INTERFACE ${FREEIMAGE_LIBRARIES})

    find_package(GLEW)
    if (NOT GLEW_FOUND)
        message(SEND_ERROR "Dependency GLEW not found. Please install it using your system's equivalent of 'sudo apt install libglew-dev'")
    endif()
    add_library(of-deps-glew INTERFACE)
    add_library(of::glew ALIAS of-deps-glew)
    target_link_libraries(of-deps-glew INTERFACE GLEW::GLEW)

    find_package(GLUT)
    if (NOT GLUT_FOUND)
        message(SEND_ERROR "Dependency GLUT not found. Please install it using your system's equivalent of 'sudo apt install freeglut3-dev'")
    endif()
    add_library(of-deps-glut INTERFACE)
    add_library(of::glut ALIAS of-deps-glut)
    target_link_libraries(of-deps-glut INTERFACE GLUT::GLUT)

    find_package(KissFFT)
    if (NOT KISSFFT_FOUND)
        message(SEND_ERROR "Dependency KissFFT not found. Please install it using your system's equivalent of 'sudo apt install libkissfft-dev'")
    endif()
    add_library(of-deps-kissfft INTERFACE)
    add_library(of::KissFFT ALIAS of-deps-kissfft)
    target_include_directories(of-deps-kissfft INTERFACE ${KISSFFT_INCLUDE_DIRS})
    target_link_libraries(of-deps-kissfft INTERFACE ${KISSFFT_LIBRARIES})

    find_package(OpenAL)
    if (NOT OPENAL_FOUND)
        message(SEND_ERROR "Dependency OpenAL not found. Please install it using your system's equivalent of 'sudo apt install libopenal-dev'")
    endif()
    add_library(of-deps-openal INTERFACE)
    add_library(of::OpenAL ALIAS of-deps-openal)
    target_include_directories(of-deps-openal INTERFACE ${OPENAL_INCLUDE_DIR})
    target_link_libraries(of-deps-openal INTERFACE ${OPENAL_LIBRARY})

    find_package(sndfile)
    if (NOT SNDFILE_FOUND)
        message(SEND_ERROR "Dependency sndfile not found. Please install it using your system's equivalent of 'sudo apt install libsndfile-dev'")
    endif()
    add_library(of-deps-sndfile INTERFACE)
    add_library(of::sndfile ALIAS of-deps-sndfile)
    target_include_directories(of-deps-sndfile INTERFACE ${SNDFILE_INCLUDE_DIR})
    target_link_libraries(of-deps-sndfile INTERFACE ${SNDFILE_LIBRARIES})

    find_package(GLIB COMPONENTS gobject)
    if (NOT GLIB_FOUND)
        message(SEND_ERROR "Dependency GLIB not found. Please install it using your system's equivalent of 'sudo apt install libglib2.0-dev'")
    endif()
    add_library(of-deps-glib INTERFACE)
    add_library(of::glib ALIAS of-deps-glib)
    target_include_directories(of-deps-glib INTERFACE ${GLIB_INCLUDE_DIR} ${GLIBCONFIG_INCLUDE_DIR})
    target_link_libraries(of-deps-glib INTERFACE ${GLIB_LIBRARIES} ${GLIB_GOBJECT_LIBRARIES})

    find_package(GStreamer)
    if (NOT GSTREAMER_FOUND)
        message(SEND_ERROR "Dependency GStreamer not found. Please install it using your system's equivalent of 'sudo apt install libgstreamer1.0-dev'")
    endif()
    add_library(of-deps-gstreamer INTERFACE)
    add_library(of::gstreamer ALIAS of-deps-gstreamer)
    target_include_directories(of-deps-gstreamer INTERFACE ${GSTREAMER_INCLUDE_DIR})
    target_link_libraries(of-deps-gstreamer INTERFACE ${GSTREAMER_LIBRARY} ${GSTREAMERBASE_LIBRARY})

    find_package(GStreamerPluginsBase COMPONENTS video app)
    if (NOT GSTREAMER_VIDEO_LIBRARY_FOUND)
        message(SEND_ERROR "Dependency GStreamerPluginsBase not found (Video component). \nHint: 'sudo apt install libgstreamer-plugins-base1.0-dev' might do the trick")
    endif()
    if (NOT GSTREAMER_APP_LIBRARY_FOUND)
        message(SEND_ERROR "Dependency GStreamerPluginsBase not found (App component). \nHint: 'sudo apt install libgstreamer-plugins-base1.0-dev' might do the trick")
    endif()
    target_include_directories(of-deps-gstreamer INTERFACE ${GSTREAMER_VIDEO_INCLUDE_DIR} ${GSTREAMER_APP_INCLUDE_DIR})
    target_link_libraries(of-deps-gstreamer INTERFACE ${GSTREAMER_VIDEO_LIBRARY} ${GSTREAMER_APP_LIBRARY})

    find_package(Fontconfig)
    if (NOT GLUT_FOUND)
        message(SEND_ERROR "Dependency Fontconfig not found. Please install it using your system's equivalent of 'sudo apt install libfontconfig-dev'")
    endif()
    add_library(of-deps-fontconfig INTERFACE)
    add_library(of::fontconfig ALIAS of-deps-fontconfig)
    target_link_libraries(of-deps-fontconfig INTERFACE Fontconfig::Fontconfig)

    find_package(UDev)
    if (NOT UDEV_FOUND)
        message(SEND_ERROR "Dependency UDev not found. Please install it using your system's equivalent of 'sudo apt install libudev-dev'")
    endif()
    add_library(of-deps-udev INTERFACE)
    add_library(of::udev ALIAS of-deps-udev)
    target_include_directories(of-deps-udev INTERFACE ${UDEV_INCLUDE_DIRS})
    target_link_libraries(of-deps-udev INTERFACE ${UDEV_LIBRARIES})

    find_package(libusb-1.0)
    if (NOT LIBUSB_1_FOUND)
        message(SEND_ERROR "Dependency libusb-1.0 not found. Please install it using your system's equivalent of 'sudo apt install libusb-1.0-0-dev'")
    endif()
    add_library(of-deps-libusb INTERFACE)
    add_library(of::libusb ALIAS of-deps-libusb)
    target_include_directories(of-deps-libusb INTERFACE ${LIBUSB_1_INCLUDE_DIRS})
    target_link_libraries(of-deps-libusb INTERFACE ${LIBUSB_1_LIBRARIES})
    target_compile_definitions(of-deps-libusb INTERFACE ${LIBUSB_1_DEFINITIONS})

    find_package(Poco COMPONENTS Data Foundation Net NetSSL Util XML)
    if (NOT Poco_FOUND)
        message(SEND_ERROR "Dependency Poco or any of its modules not found. Please install them using your system's equivalent of 'sudo apt install libpoco-dev'")
    endif()
    add_library(of-deps-poco INTERFACE)
    add_library(of::poco ALIAS of-deps-poco)
    target_include_directories(of-deps-poco INTERFACE ${Poco_INCLUDE_DIRS})
    target_link_libraries(of-deps-poco INTERFACE ${Poco_LIBRARIES})

endfunction()
