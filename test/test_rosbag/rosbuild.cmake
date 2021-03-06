if(EXISTS ${CMAKE_CURRENT_BINARY_DIR}/package.cmake)
  include(${CMAKE_CURRENT_BINARY_DIR}/package.cmake)
endif()
rosbuild_add_pyunit(test/migrate_test.py TIMEOUT 120.0)
rosbuild_add_rostest(test/random_record.xml)
rosbuild_add_rostest(test/random_play.xml)
ADD_DEPENDENCIES(rostest_test_random_play.xml rostest_test_random_record.xml)
rosbuild_add_rostest(test/random_play_sim.xml)
ADD_DEPENDENCIES(rostest_test_random_play_sim.xml rostest_test_random_record.xml)

