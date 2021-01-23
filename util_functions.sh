RIRU_PATH="/data/adb/riru"
RIRU_MIN_COMPATIBLE_API=9
RIRU_API="10"
RIRU_VERSION_CODE="54"
RIRU_VERSION_NAME="v23.4"

abort_for_requires_new_version() {
  ui_print "*********************************************************"
  ui_print "! This module requires Riru $1 or above"
  ui_print "! Please install (upgrade) Riru from Magisk Manager"
  ui_print "! Or you can download zip from https://github.com/RikkaApps/Riru/releases"
  abort "*********************************************************"
}

abort_for_old_module() {
  ui_print "*********************************************************"
  ui_print "! This module haven't support Riru v22.0+"
  ui_print "! Please ask the developer of this module to make changes"
  abort "*********************************************************"
}

check_riru_version() {
  ui_print "- Riru: $RIRU_VERSION_NAME ($RIRU_VERSION_CODE, API $RIRU_API)"
  [ "$RIRU_MODULE_API_VERSION" -lt "$RIRU_MIN_COMPATIBLE_API" ] && abort_for_old_module
  [ "$RIRU_MODULE_MIN_API_VERSION" -gt "$RIRU_API" ] && abort_for_requires_new_version "$RIRU_MODULE_MIN_RIRU_VERSION_NAME"
}
