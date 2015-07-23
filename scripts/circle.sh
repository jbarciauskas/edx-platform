#!/usr/bin/env sh

case $CIRCLE_NODE_INDEX in
    0) paver test_lib -l common/lib/xmodule ;;

    1) paver test_system -t lms/djangoapps/courseware/tests/tests.py:ActivateLoginTest ;;

    2) paver test_system -t cms/djangoapps/contentstore/tests/tests.py:AuthTestCase  ;;
esac
