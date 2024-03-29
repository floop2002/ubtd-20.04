# This is the basic qmake template for the Ubuntu-SDK
# it handles creation and installation of the manifest
# file and takes care of subprojects
TEMPLATE = subdirs

#load Ubuntu specific features
load(ubuntu-click)
CONFIG += c++11

SUBDIRS += app shareplugin

# specify the manifest file, this file is required for click
# packaging and for the IDE to create runconfigurations
UBUNTU_MANIFEST_FILE=manifest.json.in

# specify translation domain, this must be equal with the
# app name in the manifest file
UBUNTU_TRANSLATION_DOMAIN="ubtd-20.04.fourloop2002"

# specify the source files that should be included into
# the translation file, from those files a translation
# template is created in po/template.pot, to create a
# translation copy the template to e.g. de.po and edit the sources
UBUNTU_TRANSLATION_SOURCES+= \
    $$files(app/*.qml,true) \
    $$files(app/*.js,true)

# specifies all translations files and makes sure they are
# compiled and installed into the right place in the click package
UBUNTU_PO_FILES+=$$files(po/*.po)



