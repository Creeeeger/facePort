
# README – System Faced on Android 15 (Samsung Face Unlock Port)

> **Warning**  
> This guide is for experienced users who know how to unpack/modify/repack `system` images and flash them safely.  
> You do this entirely at your own risk – bootloops and data loss are possible.

---

## 1. Requirements

- Device on **Android 15** with a system layout like `system_root/system/...` (In this case is ExtremeRom 2.6.0 used)
- Target device family: **beyondx in this example** (Galaxy S10 series family, adjust to your exact variant, tested on S10/e/+/5G)
- Access to:
  - Your **current ROM’s** `system` / `system_ext`
  - The **stock Samsung ROM** for your device (latest Version) for original libraries and APKs
- Tools:
  - Linux/WSL or similar environment for resigning
  - `patchelf`
  - APK tooling: `apktool`, `zipalign`, `apksigner` (or equivalent)
  - Image tools: payload dumper / simg2img / etc., depending on how your ROM ships the `system` image
- Platform keys (or the keys your ROM uses) to **re-sign priv-apps**
- Ability to flash modified `system`/`system_ext` (fastboot, Odin, custom recovery, etc.)
- A brain
- Common sense (optional)
- Ability to read (IMPORTANT)

---

## 2. Prepare Working Directory

1. Extract your ROM’s `system` partition to a working directory so you have:

   ```text
   system_root/
     system/
     system_ext/
   ```

2. Extract the **stock ROM** somewhere else (for example `stock/`) – you will copy several `.so` files and APKs from there.

---

## 3. Add `faced` Binary and Init Script

### 3.1 Add `faced` Binary

Place the `faced` binary into:

```text
system_root/system/bin/faced
```

Set the SELinux file context for it to:

```text
/system/bin/faced    u:object_r:faced_exec:s0
```

> How you apply this depends on your ROM: usually via `file_contexts` / `file_contexts.bin` or `.cil` overlays.

### 3.2 Add `faced.rc` Init Service

Add the init rc file:

```text
system_root/system/etc/init/faced.rc
```

Ensure `faced.rc` defines the `service faced` entry pointing at `/system/bin/faced` and running in the `faced` SELinux domain.

---

## 4. Permissions XML Files

In `system_root/system/etc/Permissions`:

1. **Add:**

   ```text
   system_root/system/etc/Permissions/privapp-permissions-com.samsung.android.biometrics.app.setting.xml
   system_root/system/etc/Permissions/biofaceservice.xml
   ```

2. **Remove:**

   ```text
   system_root/system/etc/Permissions/android.hardware.biometrics.face.xml
   ```

This removes the generic AOSP face permission definition and replaces it with Samsung face-related permissions.

---

## 5. Patch `framework.jar`

Replace or patch:

```text
system_root/system/framework/framework.jar
```

with the **patched** version from this repo (the one prepared for this System Faced setup).

---

## 6. Add Face HAL and Vendor Libraries

### 6.1 Generic Face HAL

Add:

```text
system_root/system/lib64/hw/face.default.so
```

(From stock ROM)

### 6.2 Samsung / Vendor Face Libraries (from Stock)

From the stock ROM, copy and overwrite the following into your working tree:

```text
system_root/system/lib64/android.hardware.biometrics.face@1.0.so
system_root/system/lib64/libsecfr_engine.so
system_root/system/lib64/libsecfr_model.so
system_root/system/lib64/libteecl.so
system_root/system/lib64/vendor.samsung.hardware.biometrics.face@2.0.so
```

These are Samsung’s face biometrics libraries needed for the service.

---

## 7. Handle `libFaceService` and Library Conflicts

From **stock**, take:

- `libFaceService.so`
- `libutils.so`
- `libstagefright_foundation.so`

Then, in your working `system_root`, place them as:

```text
system_root/system/lib64/libFaceService.so
system_root/system/lib64/libstagefright_foundation_face.so
system_root/system/lib64/libutils_face.so
```

Now run `patchelf` on `libFaceService.so` in your working tree:

```bash
cd system_root/system/lib64

patchelf --replace-needed libstagefright_foundation.so libstagefright_foundation_face.so libFaceService.so
patchelf --replace-needed libutils.so libutils_face.so libFaceService.so
```

This avoids conflicts with the system-wide `libutils` and `libstagefright_foundation` which would lead to bootloops.

---

## 8. Apps & APKs (BioFaceService, Settings, SystemUI)

You must ensure the following priv-apps exist and are patched/resigned as needed. You NEED to resign them, otherwise - Bootloop.

1. **Add** BioFaceService:

   ```text
   system_root/system/priv-app/BioFaceService/          (directory)
   system_root/system/priv-app/BioFaceService/BioFaceService.apk
   ```

2. **Patch from repo** and replace existing:

   ```text
   system_root/system/priv-app/BiometricSetting/BiometricSetting.apk
   system_root/system/priv-app/SecSettings/SecSettings.apk
   system_root/system/system_ext/priv-app/SystemUI/SystemUI.apk
   ```

3. **Re-sign** with the correct keys (matching your ROM’s platform / priv-app keys):

   - `BioFaceService.apk`
   - `BiometricSetting.apk`
   - `SecSettings.apk`
   - `SystemUI.apk`
   - Any modified framework components if needed (`framework.jar`, etc.)

Ensure you run `zipalign` and `apksigner` (or equivalent) on any rebuilt APKs, then verify signatures.

---

## 9. SELinux Policy Changes (system_ext)

Edit:

```text
system_root/system/system_ext/etc/selinux/system_ext_sepolicy.cil
```

Append/merge the following definitions and rules:

```lisp
(roletype object_r ewlogd_exec)
(type faced)
(roletype object_r faced)
(type faced_exec)
(roletype object_r faced_exec)

(type faced_service)
(roletype object_r faced_service)

(typetransition init ewlogd_exec process ewlogd)
(allow init faced_exec (file (read getattr map execute open)))
(allow init faced (process (transition)))
(allow faced faced_exec (file (read getattr map execute open entrypoint)))
(dontaudit init faced (process (noatsecure)))
(allow init faced (process (siginh rlimitinh)))
(typetransition init faced_exec process faced)
(allow faced servicemanager (binder (call transfer)))
(allow servicemanager faced (binder (call transfer)))
(allow servicemanager faced (dir (search)))
(allow servicemanager faced (file (read open)))
(allow servicemanager faced (process (getattr)))
(allow faced system_server (binder (call)))
(allow faced system_app (binder (call)))
(allow faced permission_service (service_manager (find)))
(allow faced activity_service (service_manager (find)))
(allow faced faced_service (service_manager (add)))
(allow system_server faced_service (service_manager (find)))
(allow system_app faced_service (service_manager (add)))

(allow system_server faced_service (service_manager (find)))

(typeattributeset domain (... faced ...))

(typeattributeset file_type (... face_vendor_data_file ... faced_exec ...))

(typeattributeset exec_type (... faced_exec ...))

(typeattributeset system_file_type (... faced_exec ...))

(typeattributeset app_api_service (... face_service ... smartfaceservice_service ...))

(typeattributeset service_manager_type (... face_service ... faced_service ... smartfaceservice_service ...))

(typeattributeset binderservicedomain (... faced ...))

(typeattributeset coredomain (... faced ...))
```

Notes:

- The `...` entries mean: add `faced` / `faced_exec` / `faced_service` etc. into the existing `typeattributeset` lists instead of duplicating the entire definition.
- After editing, validate SELinux policies with your ROM’s build tools (if available) to avoid boot issues.

---

## 10. `build.prop` Changes

Edit:

```text
system_root/system/build.prop
```

1. Change:

```properties
ro.product.system.name=r12sxxx
```

to:

```properties
ro.product.system.name=beyondxxxx
```

(adjust to your exact device family identifier, THIS IS IMPORTANT).

2. Add or adjust the device property (depending on your device, THIS TOO):

```properties
ro.product.device=beyondx
```

Ensure these values match what Samsung expects for your device. This matters because in the libsecfr components Samsung compares the ```ro.product.device=``` string against beyondx to enable if the device is a S10 5G the second ToF camera.

Following this, the setup crashes on a missing cam, or a TEE which rejects missing data, depending on which device you would mess up.

---

## 11. Repack and Flash

1. Repack your modified `system_root` into a proper `system` image.
2. Flash the modified `system.img` via your usual method

3. After flashing:
   - Wipe **Dalvik / ART cache**.
   - Optionally wipe cache to prevent leftover issues.

4. Boot the device.

---

## 12. Post-Flash Checks

After boot:

1. Verify that the `faced` service is running (for example via `logcat` or `ps -A | grep faced`).
2. Check `logcat` for SELinux denials (`avc: denied`) related to `faced` or face services and adjust policy if needed.
3. Open **Settings → Biometrics / Face** (exact path depends on ROM/Samsung base):
   - Confirm that **Face Unlock / Face Registration** options appear and works.
   - Register a face and test face unlock / authentication.

---

## 13. Quick File Change Summary

**Add:**

- `system_root/system/bin/faced`
- `system_root/system/etc/init/faced.rc`
- `system_root/system/etc/Permissions/privapp-permissions-com.samsung.android.biometrics.app.setting.xml`
- `system_root/system/etc/Permissions/biofaceservice.xml`
- patched `system_root/system/framework/framework.jar`
- `system_root/system/lib64/hw/face.default.so`
- `system_root/system/lib64/android.hardware.biometrics.face@1.0.so`
- `system_root/system/lib64/libsecfr_engine.so`
- `system_root/system/lib64/libsecfr_model.so`
- `system_root/system/lib64/libteecl.so`
- `system_root/system/lib64/vendor.samsung.hardware.biometrics.face@2.0.so`
- `system_root/system/lib64/libFaceService.so` (with patched dependencies)
- `system_root/system/lib64/libstagefright_foundation_face.so`
- `system_root/system/lib64/libutils_face.so`
- `system_root/system/priv-app/BioFaceService/BioFaceService.apk`
- patched:
  - `system_root/system/priv-app/BiometricSetting/BiometricSetting.apk`
  - `system_root/system/priv-app/SecSettings/SecSettings.apk`
  - `system_root/system/system_ext/priv-app/SystemUI/SystemUI.apk`
- SELinux rules in `system_root/system/system_ext/etc/selinux/system_ext_sepolicy.cil`

**Remove:**

- `system_root/system/etc/Permissions/android.hardware.biometrics.face.xml`

**Edit:**

- `system_root/system/build.prop`
- SELinux file contexts (for `/system/bin/faced`)
- Policy file `system_ext_sepolicy.cil`

---

Use this README as your step-by-step checklist while building and flashing your System Faced setup on Android 15.

---

## Signing

The `sign_apk` function wraps the `apksigner` binary so you can quickly sign APKs from the current directory using a predefined signer directory containing:

- `apksigner` – the signing tool (e.g. from the Android build output)
- `platform.pk8` – the private key
- `platform.x509.pem` – the certificate

By default, the signer directory is expected at:

```bash
$HOME/Desktop/signer
```

You can adjust this path in the function if your setup differs.

## Shell Function

Add the following function to your shell configuration (e.g. `~/.bashrc`, `~/.zshrc`):

```bash
sign_apk() {
  local APK_NAME="$1"
  local SIGNER_DIR="$HOME/Desktop/signer"

  if [ -z "$APK_NAME" ]; then
    echo "Usage: sign_apk <apk-name-in-current-dir>"
    return 1
  fi

  "$SIGNER_DIR/apksigner" sign     --key "$SIGNER_DIR/platform.pk8"     --cert "$SIGNER_DIR/platform.x509.pem"     --out "$SIGNER_DIR/$APK_NAME"     "$PWD/$APK_NAME"
}
```

After adding it, reload your shell configuration, for example:

```bash
source ~/.bashrc
# or
source ~/.zshrc
```

## Usage

1. Copy the APK you want to sign into any directory.
2. Make sure the `apksigner` binary and the platform key/cert files exist in your signer directory:
   - `$HOME/Desktop/signer/apksigner`
   - `$HOME/Desktop/signer/platform.pk8`
   - `$HOME/Desktop/signer/platform.x509.pem`
3. From the directory containing the APK, run:

```bash
sign_apk my-app-unsigned.apk
```

4. The signed APK will be written to the signer directory as:

```bash
$HOME/Desktop/signer/my-app-unsigned.apk
```

(With the same filename you passed to the function.)

## Getting `apksigner` and Platform Keys

- Custom versions of `apksigner` can be downloaded or built from the Android Open Source Project (AOSP) repositories.
- In a typical Android build tree, `apksigner` and the platform keys are available in the build output. For example, the `platform.pk8` and `platform.x509.pem` files are part of the standard AOSP platform signing keys used to sign system images.

> **Note:** The AOSP default platform keys are publicly known and are intended for development/testing only. Do **not** use them for production builds.


## Other stuff
- Works on latest s24fe Base
- Tested successfully on S10e, S10, S10+, S10 5G. Thanks to all the testers <3

---Made with luuuvvvve by Crecker---
