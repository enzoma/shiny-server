FILE(REMOVE_RECURSE
  "CMakeFiles/node"
  "CMakeFiles/node-complete"
  "node-prefix/src/node-stamp/node-install"
  "node-prefix/src/node-stamp/node-mkdir"
  "node-prefix/src/node-stamp/node-download"
  "node-prefix/src/node-stamp/node-update"
  "node-prefix/src/node-stamp/node-patch"
  "node-prefix/src/node-stamp/node-configure"
  "node-prefix/src/node-stamp/node-build"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/node.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
