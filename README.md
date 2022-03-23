[![Build and Test](https://github.com/m-hilgendorf/stz-semver/actions/workflows/ci.yml/badge.svg)](https://github.com/m-hilgendorf/stz-semver/actions/workflows/ci.yml)
# Semantic Version Parsing 
## In Stanza!
## Usage

```stanza
import semver

; The easiest approach is to parse strings directly:
val left = semver/parse("1.2.3")
val right = semver/parse("1.2.4")
println("%_ > %_ = %_" % [left, right, left > right])

; You can attempt to parse an invalid Semantic version 
; without throwing an exception
val semver? = semver/parse?("12")
match(semver?:False):
  println("12 is not a valid semantic version")

; Versions may be created directly
val v1-2-3 = Semver(1, 2, 3)

; Versions may have prerelease and build strings as well
val v1-2-3-rc1+nightly = semver/parse("1.2.3-rc.1+nightly)
```

## Building and Running Tests

```sh
stanza run-test semver
```
