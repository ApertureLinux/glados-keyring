# Aperture Linux Keyring

Repository for the Aperture Linux keyring package.

## Addition/Removal/Update of a packaging key

1. Get the keyid for the requested key
2. Add the keyid to `packager-keyids` in alphabetic order, following this
   format: full size keyid, a tab, nickname.

## Revoking a packager key

1. Remove the keyid of the revoked user from `packager-keyids`.
2. Add the removed keyid to `packager-revoked-keyids`, in alphabetic order,
   following this format: full size keyid, a tab, nickname, a tab and reason of
   revocation.

## Keyring release

1. bump the version in the Makefile
2. Run update-keys
4. git add the new .asc file in the packager directory.
4. Commit everything as 'Update keyring'
5. Create a new tag ```git tag -s $(date +"%Y%m%d")```
  5.1 for multiple releases on the same day append a release number (eg. '2')
  ```git tag -s $(date +"%Y%m%d").2```
6. Push changes
7. Upload the source tarball with ```make dist upload```
8. Update the package

