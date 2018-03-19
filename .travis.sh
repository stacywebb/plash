
sed -i -e "s/VERSION = '0.1dev'/VERSION = '0.$TRAVIS_BUILD_NUMBER'/g" setup.py
echo $PATH
python3 setup.py bdist_wheel
#if test "$ROOT" = true; then
#  sudo pip3 install ./dist/*.whl
#  sudo plash test
#else
pip3 install ./dist/*.whl
plash test
#fi

# deploy git 
#git tag 0.$TRAVIS_BUILD_NUMBER -m "https://pypi.org/project/plash/0.$TRAVIS_BUILD_NUMBER" && git push https://${GH_TOKEN}@github.com/ihucos/plash.git --tags
#
#
#  - provider: pypi
#    user: $PYPI_USER
#    password: $PYPI_PASSWORD
#    skip_cleanup: true
#    on:
#      branch: master
#      condition: $TRAVIS_PYTHON_VERSION = 3.6 AND $ROOT = false