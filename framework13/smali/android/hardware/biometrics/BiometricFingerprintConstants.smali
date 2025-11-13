.class public interface abstract Landroid/hardware/biometrics/BiometricFingerprintConstants;
.super Ljava/lang/Object;
.source "BiometricFingerprintConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/BiometricFingerprintConstants$FingerprintFeature;,
        Landroid/hardware/biometrics/BiometricFingerprintConstants$FingerprintSensorStatus;,
        Landroid/hardware/biometrics/BiometricFingerprintConstants$FingerprintGestureEvent;,
        Landroid/hardware/biometrics/BiometricFingerprintConstants$FingerprintInternalEvent;,
        Landroid/hardware/biometrics/BiometricFingerprintConstants$FingerprintEvent;,
        Landroid/hardware/biometrics/BiometricFingerprintConstants$FingerprintVendorAcquired;,
        Landroid/hardware/biometrics/BiometricFingerprintConstants$FingerprintAcquired;,
        Landroid/hardware/biometrics/BiometricFingerprintConstants$FingerprintVendorError;,
        Landroid/hardware/biometrics/BiometricFingerprintConstants$FingerprintError;
    }
.end annotation


# static fields
.field public static final blacklist BIOMETRIC_ERROR_NO_DEVICE_CREDENTIAL:I = 0xe

.field public static final blacklist BIOMETRIC_ERROR_RE_ENROLL:I = 0x10

.field public static final blacklist BIOMETRIC_ERROR_SECURITY_UPDATE_REQUIRED:I = 0xf

.field public static final whitelist FINGERPRINT_ACQUIRED_GOOD:I = 0x0

.field public static final whitelist FINGERPRINT_ACQUIRED_IMAGER_DIRTY:I = 0x3

.field public static final blacklist FINGERPRINT_ACQUIRED_IMMOBILE:I = 0x9

.field public static final whitelist FINGERPRINT_ACQUIRED_INSUFFICIENT:I = 0x2

.field public static final whitelist FINGERPRINT_ACQUIRED_PARTIAL:I = 0x1

.field public static final blacklist FINGERPRINT_ACQUIRED_START:I = 0x7

.field public static final blacklist FINGERPRINT_ACQUIRED_TOO_BRIGHT:I = 0xa

.field public static final whitelist FINGERPRINT_ACQUIRED_TOO_FAST:I = 0x5

.field public static final whitelist FINGERPRINT_ACQUIRED_TOO_SLOW:I = 0x4

.field public static final blacklist FINGERPRINT_ACQUIRED_UNKNOWN:I = 0x8

.field public static final greylist-max-o FINGERPRINT_ACQUIRED_VENDOR:I = 0x6

.field public static final greylist-max-o FINGERPRINT_ACQUIRED_VENDOR_BASE:I = 0x3e8

.field public static final blacklist FINGERPRINT_ERROR_BAD_CALIBRATION:I = 0x12

.field public static final whitelist FINGERPRINT_ERROR_CANCELED:I = 0x5

.field public static final whitelist FINGERPRINT_ERROR_HW_NOT_PRESENT:I = 0xc

.field public static final whitelist FINGERPRINT_ERROR_HW_UNAVAILABLE:I = 0x1

.field public static final whitelist FINGERPRINT_ERROR_LOCKOUT:I = 0x7

.field public static final whitelist FINGERPRINT_ERROR_LOCKOUT_PERMANENT:I = 0x9

.field public static final blacklist FINGERPRINT_ERROR_NEGATIVE_BUTTON:I = 0xd

.field public static final whitelist FINGERPRINT_ERROR_NO_FINGERPRINTS:I = 0xb

.field public static final whitelist FINGERPRINT_ERROR_NO_SPACE:I = 0x4

.field public static final whitelist FINGERPRINT_ERROR_TIMEOUT:I = 0x3

.field public static final whitelist FINGERPRINT_ERROR_UNABLE_TO_PROCESS:I = 0x2

.field public static final greylist-max-o FINGERPRINT_ERROR_UNABLE_TO_REMOVE:I = 0x6

.field public static final blacklist FINGERPRINT_ERROR_UNKNOWN:I = 0x11

.field public static final whitelist FINGERPRINT_ERROR_USER_CANCELED:I = 0xa

.field public static final whitelist FINGERPRINT_ERROR_VENDOR:I = 0x8

.field public static final greylist-max-r FINGERPRINT_ERROR_VENDOR_BASE:I = 0x3e8

.field public static final blacklist SEM_FEATURE_NAVIGATION:I = 0x1

.field public static final blacklist SEM_FEATURE_SWIPE_ENROLL:I = 0x2

.field public static final blacklist SEM_FEATURE_WOF_DEFAULT_OFF:I = 0x3

.field public static final blacklist SEM_FINGERPRINT_ACQUIRED_DUPLICATED_IMAGE:I = 0x3ea

.field public static final blacklist SEM_FINGERPRINT_ACQUIRED_LIGHT_TOUCH:I = 0x3eb

.field public static final blacklist SEM_FINGERPRINT_ACQUIRED_TSP_BLOCK:I = 0x3ec

.field public static final blacklist SEM_FINGERPRINT_ACQUIRED_TSP_UNBLOCK:I = 0x3ed

.field public static final blacklist SEM_FINGERPRINT_ACQUIRED_WET_FINGER:I = 0x3e9

.field public static final blacklist SEM_FINGERPRINT_ERROR_CALIBRATION:I = 0x3e9

.field public static final blacklist SEM_FINGERPRINT_ERROR_DISABLED_BIOMETRICS:I = 0x138a

.field public static final blacklist SEM_FINGERPRINT_ERROR_INVALID_HW:I = 0x3ed

.field public static final blacklist SEM_FINGERPRINT_ERROR_NEED_TO_RETRY:I = 0x1388

.field public static final blacklist SEM_FINGERPRINT_ERROR_ONE_HAND_MODE:I = 0x1389

.field public static final blacklist SEM_FINGERPRINT_ERROR_PATTERN_DETECTED:I = 0x3ef

.field public static final blacklist SEM_FINGERPRINT_ERROR_SERVICE_FAILURE:I = 0x3eb

.field public static final blacklist SEM_FINGERPRINT_ERROR_SMART_VIEW:I = 0x138b

.field public static final blacklist SEM_FINGERPRINT_ERROR_SYSTEM_FAILURE:I = 0x3ea

.field public static final blacklist SEM_FINGERPRINT_ERROR_TA_UPDATE:I = -0x64

.field public static final blacklist SEM_FINGERPRINT_ERROR_TEMPLATE_CORRUPTED:I = 0x3ec

.field public static final blacklist SEM_FINGERPRINT_ERROR_TEMPLATE_FORMAT_CHANGED:I = 0x3ee

.field public static final blacklist SEM_FINGERPRINT_ERROR_WIRELESS_CHARGING:I = 0x138c

.field public static final blacklist SEM_FINGERPRINT_EVENT_AUTHENTICATION_FAILED_REASON_END:I = 0xc34f

.field public static final blacklist SEM_FINGERPRINT_EVENT_AUTHENTICATION_FAILED_REASON_START:I = 0x9c40

.field public static final blacklist SEM_FINGERPRINT_EVENT_BASE:I = 0x2710

.field public static final blacklist SEM_FINGERPRINT_EVENT_CAPTURE_COMPLETED:I = 0x2713

.field public static final blacklist SEM_FINGERPRINT_EVENT_CAPTURE_FAILED:I = 0x2716

.field public static final blacklist SEM_FINGERPRINT_EVENT_CAPTURE_READY:I = 0x2711

.field public static final blacklist SEM_FINGERPRINT_EVENT_CAPTURE_STARTED:I = 0x2712

.field public static final blacklist SEM_FINGERPRINT_EVENT_CAPTURE_SUCCESS:I = 0x2715

.field public static final blacklist SEM_FINGERPRINT_EVENT_FACTORY_SNSR_SCRIPT_END:I = 0x2719

.field public static final blacklist SEM_FINGERPRINT_EVENT_FACTORY_SNSR_SCRIPT_START:I = 0x2718

.field public static final blacklist SEM_FINGERPRINT_EVENT_FINGER_LEAVE:I = 0x2714

.field public static final blacklist SEM_FINGERPRINT_EVENT_FINGER_LEAVE_TIMEOUT:I = 0x2717

.field public static final blacklist SEM_FINGERPRINT_EVENT_GESTURE_DTAP:I = 0x4e23

.field public static final blacklist SEM_FINGERPRINT_EVENT_GESTURE_LPRESS:I = 0x4e24

.field public static final blacklist SEM_FINGERPRINT_EVENT_GESTURE_SWIPE_DOWN:I = 0x4e22

.field public static final blacklist SEM_FINGERPRINT_EVENT_GESTURE_SWIPE_UP:I = 0x4e21

.field public static final blacklist SEM_FINGERPRINT_EVENT_INTERRUPT_CATCH:I = 0x271b

.field public static final blacklist SEM_FINGERPRINT_EVENT_POINTER_UP:I = 0x11171

.field public static final blacklist SEM_FINGERPRINT_EVENT_SPEN_CONTROL_OFF:I = 0x7532

.field public static final blacklist SEM_FINGERPRINT_EVENT_SPEN_CONTROL_ON:I = 0x7531

.field public static final blacklist SEM_SENSOR_STATUS_CALIBRATION_ERROR:I = 0x186cd

.field public static final blacklist SEM_SENSOR_STATUS_ERROR:I = 0x186ca

.field public static final blacklist SEM_SENSOR_STATUS_OK:I = 0x186c8

.field public static final blacklist SEM_SENSOR_STATUS_WORKING:I = 0x186c9


# direct methods
.method public static blacklist shouldTurnOffHbm(I)Z
    .locals 2
    .param p0, "acquiredInfo"    # I

    .line 397
    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p0, :pswitch_data_0

    .line 418
    :pswitch_0
    return v0

    .line 400
    :pswitch_1
    return v0

    .line 415
    :pswitch_2
    return v1

    .line 404
    :pswitch_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
