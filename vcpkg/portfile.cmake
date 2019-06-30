include(vcpkg_common_functions)

vcpkg_from_github(

    OUT_SOURCE_PATH SOURCE_PATH
    REPO gsoc-bloom-windows/ament_cmake-release
    REF vcpkg/ros-dashing-ament-cmake-gtest_0.7.3-1_10
)

vcpkg_configure_cmake(
    SOURCE_PATH ${SOURCE_PATH}
)

vcpkg_install_cmake()

file(INSTALL ${SOURCE_PATH}/license.txt DESTINATION ${CURRENT_PACKAGES_DIR}/share/ros-dashing-ament-cmake-gtest RENAME copyright)
file(INSTALL ${SOURCE_PATH}/include/ros-dashing-ament-cmake-gtest_for_vcpkg.h DESTINATION ${CURRENT_PACKAGES_DIR}/include)

file(REMOVE_RECURSE ${CURRENT_PACKAGES_DIR}/debug/share)
