# Semantic Version Parsing 
## In Stanza!
## Usage

```stanza
import semver

; The easiest approach is to parse strings directly:
val left = Semver("1.2.3")
val right = Semver("1.2.4")
println("%_ > %_ = %_" % [left, right, left > right])

; You can attempt to parse an invalid Semantic version 
; without throwing an exception
val semver? = Semver?("12")
match(semver?:False):
  println("12 is not a valid semantic version")

; Versions may be created directly
val v1-2-3 = Semver(1, 2, 3)

; Versions may have prerelease and build strings as well
val v1-2-3-rc1+nightly = Semver("1.2.3-rc.1+nightly)
```

## Building and Running Tests

```sh
# on Linux only
./bootstrap.sh
export PATH=$PWD/stanza-modules/stanza:$PATH
stanza build test-semver
build/bin/test-semver
```

