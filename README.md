# Restoring Face Biometrics on OneUi 5.1 Port roms on S10 Devices - no support for other devices

This document describes all required changes to properly restore / fix the Samsung face biometrics stack on a modified system image for Android 13.

> ⚠️ **Warning**  
> You are modifying `/system`, `/vendor` and SELinux policies.  
> Make **full backups** of `system`, `system_ext`, `vendor` and `tee` before doing anything.

---

## 0. Prerequisites

- Original stock firmware for your exact device (OneUI 4.1) (referred to as **stock**).
- A patched build knows as your custom rom. (referred to as **port** tree):
- Tools:
  - `simg2img` / `lpunpack` etc. as needed
  - `smali` / `apktool` for `framework.jar` patches
  - Signing tools for system image, can recommend rom resigner

---

## 1. Remove Legacy Vendor Face HAL

From the **port** tree, remove the legacy Samsung face HAL service and related libraries.

### 1.1. Remove old face service binaries & init rc

```bash
rm port/vendor/bin/hw/vendor.samsung.hardware.biometrics.face@2.0-service
rm port/vendor/etc/init/vendor.samsung.hardware.biometrics.face@2.0-service.rc
```

### 1.2. Clean VINTF manifest (vendor)

Edit:

```text
port/vendor/etc/vintf/manifest.xml
```

Remove the entire blocks:

```xml
    <hal format="hidl">
        <name>android.hardware.biometrics.face</name>
        <transport>hwbinder</transport>
        <version>1.0</version>
        <interface>
            <name>IBiometricsFace</name>
            <instance>default</instance>
        </interface>
        <fqname>@1.0::IBiometricsFace/default</fqname>
    </hal>
    <hal format="hidl">
        <name>vendor.samsung.hardware.biometrics.face</name>
        <transport>hwbinder</transport>
        <version>2.0</version>
        <interface>
            <name>ISehBiometricsFace</name>
            <instance>default</instance>
        </interface>
        <fqname>@2.0::ISehBiometricsFace/default</fqname>
    </hal>
```

### 1.3. Remove old vendor face-related libraries

```bash
rm port/vendor/lib/android.hardware.biometrics.common-V2-ndk.so
rm port/vendor/lib/android.hardware.biometrics.face-V2-ndk.so
rm port/vendor/lib/vendor.samsung.hardware.biometrics.face-V2-ndk.so

rm port/vendor/lib64/android.hardware.biometrics.common-V2-ndk.so
rm port/vendor/lib64/android.hardware.biometrics.face-V2-ndk.so
rm port/vendor/lib64/android.hardware.biometrics.face@1.0.so
rm port/vendor/lib64/libbinder_face.so
rm port/vendor/lib64/libcamera2ndk_vendor.so
rm port/vendor/lib64/libFaceService.so
rm port/vendor/lib64/libfmq_vendor.so
rm port/vendor/lib64/libfmq.vendor.so
rm port/vendor/lib64/libgui_vendor_face.so
rm port/vendor/lib64/libsecfr_engine.so
rm port/vendor/lib64/libsecfr_model.so
rm port/vendor/lib64/libui_face.so
rm port/vendor/lib64/libutils_face.so
rm port/vendor/lib64/vendor.samsung.hardware.biometrics.face-V2-ndk.so
rm port/vendor/lib64/vendor.samsung.hardware.biometrics.face@2.0.so
```

---

## 2. Replace TEE

Replace the **entire** `/vendor/tee` folder with the latest **stock** TEE folder from the original device firmware:

```text
Replace /port/vendor/tee with latest stock tee folder
```

---

## 3. Update SELinux Policy (system_ext)

Edit:

```text
port/system/system_root/system/system_ext/etc/selinux/system_ext_sepolicy.cil
```

Add / ensure the following SELinux types, roles and rules exist:

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

Adapt the `...` lists to whatever is already there (just make sure `faced` / `faced_exec` etc. are included).

---

## 4. Add Stock Face-Related System Apps (from original device)

From the **original device** firmware, copy the following directories into the **port** system tree:

```bash
# From original / stock → to:
# port/system/system_root/system/priv-app/

Add port/system/system_root/system/priv-app/BioFaceService
Add port/system/system_root/system/priv-app/BiometricSetting
Add port/system/system_root/system/priv-app/SecSettings (tho we replace it by the version in this repo)
```

Make sure each folder contains the original APK(s) and correct `AndroidManifest.xml` (NOOO SHIT, If any bootloops check first that the APKs are signed with your roms platform keys)

---

## 5. Add Face Libraries to /system and Remove Wrong Vendor Copy

### 5.1. Copy system libraries (64-bit and 32-bit) from original

```bash
# 64-bit libs
Add port/system/system_root/system/lib64/hw/face.default.so
Add port/system/system_root/system/lib64/android.hardware.biometrics.face@1.0.so
Add port/system/system_root/system/lib64/libFaceService.so
Add port/system/system_root/system/lib64/libsecfr_engine.so
Add port/system/system_root/system/lib64/libsecfr_model.so
Add port/system/system_root/system/lib64/vendor.samsung.hardware.biometrics.face@2.0.so

# 32-bit libs (if present on original)
Add port/system/system_root/system/lib/hw/face.default.so
Add port/system/system_root/system/lib/libFaceService.so
```

### 5.2. Remove obsolete system lib

```bash
rm port/system/system_root/system/lib/vendor.samsung.hardware.biometrics.face@2.0.so
```

---

## 6. Patch `framework.jar` (face / Samsung biometrics smali)

You need to patch `framework.jar` in the **port** system tree.

Path:

```text
port/system/system_root/system/framework/framework.jar
```

1. Use `baksmali` to decompile `framework.jar` into smali.
2. Replace the problematic classes with working ones from the **UI4** (stock) firmware.

Specifically:

```text
framework5_smali/smali_classes5/com/samsung/android/biometrics/IBiometricsService*
    → replace all from ui4 to this folder

framework5_smali/smali_classes5/com/samsung/android/bio/face/*
    → replace all from ui4 to this folder
```

Rebuild `framework.jar` with `smali` and put it back into:

```text
/system/system_root/system/framework/framework.jar
```

---

## 7. Add `faced` Daemon

### 7.1. Init rc

Add the init script from the original device:

```text
port/system/system_root/system/etc/init/faced.rc
```

Make sure the content matches the original and references the correct binary (`/system/bin/faced`) and SELinux context (`u:object_r:faced_exec:s0` etc.).

### 7.2. Daemon binary

Add the `faced` binary from the original firmware:

```text
port/system/system_root/system/bin/faced
```

Assign the **proper SELinux context** when packaging the image (file_contexts):

```text
/system/bin/faced    u:object_r:faced_exec:s0
```

---

## 8. Permissions & Privapp XML

### 8.1. Remove old AOSP face permission XML

From the **port** system tree:

```bash
rm port/system/system_root/system/etc/permissions/android.hardware.biometrics.face.xml
```

### 8.2. Add Samsung BioFace permission XML

From the **stock** device:

```bash
Add port/system/system_root/system/etc/permissions/biofaceservice.xml
```

### 8.3. Ensure privapp permissions for Samsung biometrics app

Verify the following file **exists** (and matches original):

```text
port/system/system_root/system/etc/permissions/privapp-permissions-com.samsung.android.biometrics.app.setting.xml
```

If missing or modified, copy it from the original firmware.

---

## 9. Update Device Compatibility Matrix (system VINTF)

Edit:

```text
port/system/system_root/system/etc/vintf/compatibility_matrix.device.xml
```

Remove these HAL declarations:

```xml
    <hal format="hidl" optional="true">
        <name>android.hardware.biometrics.face</name>
        <version>1.0</version>
        <interface>
            <name>IBiometricsFace</name>
            <instance>default</instance>
        </interface>
    </hal>
    <hal format="hidl" optional="true">
        <name>vendor.samsung.hardware.biometrics.face</name>
        <version>2.0</version>
        <interface>
            <name>ISehBiometricsFace</name>
            <instance>default</instance>
        </interface>
    </hal>
```

This keeps VINTF in sync with the updated HAL setup.

---

## 10. Additional Framework Smali Tweaks

The following smali changes must be present. These are **Android framework** internals that Samsung code expects. (or you just copy the framework from this repo / use the patches)

### 10.1. `android.hardware.display.DisplayManager`

File:

```text
framework5_smali/smali/android/hardware/display/DisplayManager.smali
```

Around the relevant line numbers, ensure:

```smali
.method public blacklist convertToBacklight(F)I
    .locals 1
    .param p1, "nits"    # F

    .line 2979
    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManager;->convertToBrightness(F)I

    move-result v0

    return v0
.end method

.method public blacklist convertToBrightness(F)I
    .locals 1
    .param p1, "nits"    # F
    ...
```

Make sure the methods and signatures exist exactly like this.

---

### 10.2. `android.content.pm.UserInfo`

File:

```text
framework5_smali/smali/android/content/pm/UserInfo.smali
```

You need:

- Additional flag constants:

```smali
.field public static final greylist-max-o FLAG_ADMIN:I = 0x2

.field public static final blacklist FLAG_BBC_CONTAINER:I = 0x4000000
.field public static final blacklist FLAG_BMODE:I = 0x10000
.field public static final blacklist FLAG_CL_CONTAINER:I = 0x400000
.field public static final greylist-max-o FLAG_DEMO:I = 0x200
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

.field public static final greylist-max-o FLAG_INITIALIZED:I = 0x10

.field public static final blacklist FLAG_KIOSK_MODE:I = 0x8000000
.field public static final blacklist FLAG_KNOX_APPSEPARATION:I = 0x40000000
.field public static final blacklist FLAG_KNOX_WORKSPACE:I = 0x10000000
.field public static final blacklist FLAG_LIGHT_WEIGHT_CONTAINER:I = 0x1000000
.field public static final blacklist FLAG_MAINTENANCE_MODE:I = 0x80000
.field public static final greylist-max-o FLAG_MANAGED_PROFILE:I = 0x20

.field public static final blacklist FLAG_MY_KNOX:I = 0x2000000
.field public static final greylist FLAG_PRIMARY:I = 0x1
.field public static final blacklist FLAG_PROFILE:I = 0x1000
.field public static final blacklist FLAG_SDP_NOT_SUPPORTED_SECURE_FOLDER:I = 0x40000
.field public static final blacklist FLAG_SECOND_CONTAINER:I = 0x200000
.field public static final blacklist FLAG_SECURE_FOLDER:I = 0x20000
.field public static final blacklist FLAG_SYSTEM:I = 0x800
.field public static final blacklist FLAG_THIRD_CONTAINER:I = 0x800000
.field public static final blacklist FLAG_VIRTUAL_USER:I = -0x80000000

.field public static final blacklist MAINTENANCE_MODE_USER_ID:I = 0x4d
```

- New methods such as:

```smali
.method public blacklist isCLContainer()Z
    .locals 2

    .line 600
    iget v0, p0, Landroid/content/pm/UserInfo;->flags:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1
    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
```

And similarly for:

- `isKioskModeEnabled()Z`
- `isLightWeightContainer()Z`
- `isMaintenanceMode()Z`
- `isMyKnox()Z`
- `isSecondContainer()Z`
- `isSecureFolder()Z`
- `isThirdContainer()Z`
- `isUserTypeAppSeparation()Z`
- …and other container / Knox-related helpers.

Make sure they match the UI4 implementation exactly.

---

### 10.3. `android.hardware.input.InputManager`

File:

```text
framework5_smali/smali_classes2/android/hardware/input/InputManager.smali
```

Add:

```smali
.method public blacklist getLidState()I
    .locals 2

    .line 781
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0}, Landroid/hardware/input/IInputManager;->getLidState()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 782
    :catch_0
    move-exception v0

    .line 783
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist getLightState(ILandroid/hardware/lights/Light;)Landroid/hardware/lights/LightState;
    .locals 2
    .param p1, "deviceId"    # I
    ...
```

Ensure the signatures and access modifiers (`blacklist`) match.

---

### 10.4. `android.os.Build$VERSION`

File:

```text
framework5_smali/smali_classes3/android/os/Build$VERSION.smali
```

Add the field and initialization for `FIRST_SDK_INT`:

```smali
.field public static final blacklist FIRST_SDK_INT:I

.field public static final whitelist KNOWN_CODENAMES:Ljava/util/Set;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
```

And in the static initializer:

```smali
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Landroid/os/Build$VERSION;->FIRST_SDK_INT:I

    .line 373
    nop

    .line 374
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Landroid/os/Build$VERSION;->DEVICE_INITIAL_SDK_INT:I
```

Match the original implementation exactly to avoid runtime issues.

---

## 11. Remove Any Other Face Service Implementations

Scan your **system** and **vendor** trees and remove or disable any **other** face service implementations that might conflict:

- Other `face` HAL binaries / rc files.
- Third-party or AOSP face providers if they clash with Samsung’s.

> **Remove any other face service implementations please.**

So make sure Samsung’s stack is the only active one.

---

## 11.5. `build.prop` Changes

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

## 12. Re-sign the System Image

After all modifications:

1. Rebuild the `system` image from `port/system`.
2. Ensure all JARs/APKs and system partitions are correctly signed.

> `ANDDDD ofc resign system.`

So don’t forget:

- Re-sign the final system image as appropriate.

---

## 13. Summary

In short, to **fix face biometrics** on this setup you:

- Remove legacy vendor face HAL + libs and VINTF entries.
- Restore stock TEE and face-related system libs.
- Add Samsung BioFace service apps and `faced` daemon.
- Patch SELinux to allow the new `faced` domain.
- Patch `framework.jar` with Samsung biometrics / Knox / display / input / build smali changes from UI4.
- Fix permissions XMLs and compatibility matrix.
- Ensure no conflicting face services remain.
- Re-sign and flash the updated system.


## 14. Etc.

- Inside the build folder are the 2 required components prebuild and signed with the stock aosp keys
- in the Android15 branch, inside the build folder, the signing tools can be found.
