.class public interface abstract Landroid/hardware/biometrics/BiometricFaceConstants;
.super Ljava/lang/Object;
.source "BiometricFaceConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/BiometricFaceConstants$FaceAcquired;,
        Landroid/hardware/biometrics/BiometricFaceConstants$FaceError;
    }
.end annotation


# static fields
.field public static final blacklist BIOMETRIC_ERROR_NO_DEVICE_CREDENTIAL:I = 0xe

.field public static final blacklist BIOMETRIC_ERROR_RE_ENROLL:I = 0x10

.field public static final blacklist BIOMETRIC_ERROR_SECURITY_UPDATE_REQUIRED:I = 0xf

.field public static final blacklist FACE_ACQUIRED_DARK_GLASSES_DETECTED:I = 0x19

.field public static final blacklist FACE_ACQUIRED_EARLY_STOP:I = 0x3fa

.field public static final blacklist FACE_ACQUIRED_FACE_OBSCURED:I = 0x13

.field public static final blacklist FACE_ACQUIRED_FAKE_FACE:I = 0x3ed

.field public static final blacklist FACE_ACQUIRED_FIRST_FRAME_RECEIVED:I = 0x18

.field public static final blacklist FACE_ACQUIRED_GOOD:I = 0x0

.field public static final blacklist FACE_ACQUIRED_INSUFFICIENT:I = 0x1

.field public static final blacklist FACE_ACQUIRED_MISALIGNED_BOTTOM:I = 0x3f5

.field public static final blacklist FACE_ACQUIRED_MISALIGNED_BOTTOM_LEFT:I = 0x3f4

.field public static final blacklist FACE_ACQUIRED_MISALIGNED_BOTTOM_RIGHT:I = 0x3f6

.field public static final blacklist FACE_ACQUIRED_MISALIGNED_LEFT:I = 0x3f1

.field public static final blacklist FACE_ACQUIRED_MISALIGNED_MIDDLE:I = 0x3f2

.field public static final blacklist FACE_ACQUIRED_MISALIGNED_RIGHT:I = 0x3f3

.field public static final blacklist FACE_ACQUIRED_MISALIGNED_TOP:I = 0x3ef

.field public static final blacklist FACE_ACQUIRED_MISALIGNED_TOP_LEFT:I = 0x3ee

.field public static final blacklist FACE_ACQUIRED_MISALIGNED_TOP_RIGHT:I = 0x3f0

.field public static final blacklist FACE_ACQUIRED_MOUTH_COVERING_DETECTED:I = 0x1a

.field public static final blacklist FACE_ACQUIRED_NOT_DETECTED:I = 0xb

.field public static final blacklist FACE_ACQUIRED_NO_MATCH_MAX_COUNT:I = 0x3fb

.field public static final blacklist FACE_ACQUIRED_ON_MASK:I = 0x3f9

.field public static final blacklist FACE_ACQUIRED_PAN_TOO_EXTREME:I = 0x10

.field public static final blacklist FACE_ACQUIRED_POOR_GAZE:I = 0xa

.field public static final blacklist FACE_ACQUIRED_PROXIMITY_ALERT:I = 0x3e9

.field public static final blacklist FACE_ACQUIRED_RECALIBRATE:I = 0xd

.field public static final blacklist FACE_ACQUIRED_ROLL_TOO_EXTREME:I = 0x12

.field public static final blacklist FACE_ACQUIRED_SENSOR_DIRTY:I = 0x15

.field public static final blacklist FACE_ACQUIRED_SET_BRIGHTNESS_UP:I = 0x3f7

.field public static final blacklist FACE_ACQUIRED_START:I = 0x14

.field public static final blacklist FACE_ACQUIRED_TILT_TOO_EXTREME:I = 0x11

.field public static final blacklist FACE_ACQUIRED_TOO_BRIGHT:I = 0x2

.field public static final blacklist FACE_ACQUIRED_TOO_CLOSE:I = 0x4

.field public static final blacklist FACE_ACQUIRED_TOO_DARK:I = 0x3

.field public static final blacklist FACE_ACQUIRED_TOO_DIFFERENT:I = 0xe

.field public static final blacklist FACE_ACQUIRED_TOO_FAR:I = 0x5

.field public static final blacklist FACE_ACQUIRED_TOO_HIGH:I = 0x6

.field public static final blacklist FACE_ACQUIRED_TOO_LEFT:I = 0x9

.field public static final blacklist FACE_ACQUIRED_TOO_LOW:I = 0x7

.field public static final blacklist FACE_ACQUIRED_TOO_MUCH_MOTION:I = 0xc

.field public static final blacklist FACE_ACQUIRED_TOO_RIGHT:I = 0x8

.field public static final blacklist FACE_ACQUIRED_TOO_SIMILAR:I = 0xf

.field public static final blacklist FACE_ACQUIRED_UNKNOWN:I = 0x17

.field public static final blacklist FACE_ACQUIRED_VENDOR:I = 0x16

.field public static final blacklist FACE_ACQUIRED_VENDOR_BASE:I = 0x3e8

.field public static final blacklist FACE_ACQUIRED_WITH_GLASSES:I = 0x3f8

.field public static final blacklist FACE_ERROR_CAMERA_ACCESS_SETTING_OFF:I = 0x186a3

.field public static final blacklist FACE_ERROR_CAMERA_FAILURE:I = 0x3eb

.field public static final blacklist FACE_ERROR_CAMERA_UNAVAILABLE:I = 0x3ec

.field public static final blacklist FACE_ERROR_CANCELED:I = 0x5

.field public static final blacklist FACE_ERROR_GET_PREVIEW:I = 0x3ea

.field public static final blacklist FACE_ERROR_HW_NOT_PRESENT:I = 0xc

.field public static final blacklist FACE_ERROR_HW_UNAVAILABLE:I = 0x1

.field public static final blacklist FACE_ERROR_LOCKOUT:I = 0x7

.field public static final blacklist FACE_ERROR_LOCKOUT_PERMANENT:I = 0x9

.field public static final blacklist FACE_ERROR_NEGATIVE_BUTTON:I = 0xd

.field public static final blacklist FACE_ERROR_NOT_ENROLLED:I = 0xb

.field public static final blacklist FACE_ERROR_NO_SPACE:I = 0x4

.field public static final blacklist FACE_ERROR_ON_MASK:I = 0x3ee

.field public static final blacklist FACE_ERROR_PPP_TIMEOUT:I = 0x3ed

.field public static final blacklist FACE_ERROR_TEMPLATE_CORRUPTED:I = 0x3e9

.field public static final blacklist FACE_ERROR_TIMEOUT:I = 0x3

.field public static final blacklist FACE_ERROR_TOO_DARK:I = 0x186a1

.field public static final blacklist FACE_ERROR_TOO_DARK_TO_ENROLL:I = 0x186a2

.field public static final blacklist FACE_ERROR_UNABLE_TO_PROCESS:I = 0x2

.field public static final blacklist FACE_ERROR_UNABLE_TO_REMOVE:I = 0x6

.field public static final blacklist FACE_ERROR_UNKNOWN:I = 0x11

.field public static final blacklist FACE_ERROR_USER_CANCELED:I = 0xa

.field public static final blacklist FACE_ERROR_VENDOR:I = 0x8

.field public static final blacklist FACE_ERROR_VENDOR_BASE:I = 0x3e8

.field public static final blacklist FEATURE_REQUIRE_ATTENTION:I = 0x1

.field public static final blacklist FEATURE_REQUIRE_REQUIRE_DIVERSITY:I = 0x2
