.class public interface abstract Lcom/samsung/android/biometrics/SemBiometricConstants;
.super Ljava/lang/Object;
.source "SemBiometricConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/biometrics/SemBiometricConstants$LocalHbmCmd;,
        Lcom/samsung/android/biometrics/SemBiometricConstants$SettingDbName;,
        Lcom/samsung/android/biometrics/SemBiometricConstants$SysUiBundleKey;,
        Lcom/samsung/android/biometrics/SemBiometricConstants$GestureCalibrationDismissedReason;,
        Lcom/samsung/android/biometrics/SemBiometricConstants$GestureCalibrationEvent;,
        Lcom/samsung/android/biometrics/SemBiometricConstants$SysUiError;,
        Lcom/samsung/android/biometrics/SemBiometricConstants$SysUiRequestCommand;,
        Lcom/samsung/android/biometrics/SemBiometricConstants$SysUiPromptEvent;,
        Lcom/samsung/android/biometrics/SemBiometricConstants$SysUiTspEvent;,
        Lcom/samsung/android/biometrics/SemBiometricConstants$SysUiCommand;,
        Lcom/samsung/android/biometrics/SemBiometricConstants$SysUiType;
    }
.end annotation


# static fields
.field public static final blacklist CMD_SYSUI_ACQUIRED_EVENT:I = 0xc9

.field public static final blacklist CMD_SYSUI_ACQUIRED_VENDOR_EVENT:I = 0xca

.field public static final blacklist CMD_SYSUI_CALIBRATION_MODE:I = 0x1f5

.field public static final blacklist CMD_SYSUI_ERROR_EVENT:I = 0xcb

.field public static final blacklist CMD_SYSUI_ERROR_VENDOR_EVENT:I = 0xcc

.field public static final blacklist CMD_SYSUI_FP_GESTURE_EVENT:I = 0x258

.field public static final blacklist CMD_SYSUI_MASK_VIEW_CTL:I = 0x1f4

.field public static final blacklist CMD_SYSUI_MOVE_SENSOR_ICON:I = 0x72

.field public static final blacklist CMD_SYSUI_PAUSE_SENSOR_ICON:I = 0x70

.field public static final blacklist CMD_SYSUI_PREPARE_SESSION:I = 0x76

.field public static final blacklist CMD_SYSUI_REQ_BOUNCER_SCREEN_STATUS:I = 0x75

.field public static final blacklist CMD_SYSUI_REQ_SENSOR_ICON_VISIBILITY:I = 0x74

.field public static final blacklist CMD_SYSUI_RESUME_SENSOR_ICON:I = 0x71

.field public static final blacklist CMD_SYSUI_SCREEN_STATUS:I = 0x73

.field public static final blacklist CMD_SYSUI_SHOW_SENSOR_ICON_FROM_LOCK:I = 0x77

.field public static final blacklist DEFAULT_OPTICAL_SENSOR_BRIGHTNESS:I = 0x13f

.field public static final blacklist DEFAULT_OPTICAL_SENSOR_NITS:I = 0x20d

.field public static final blacklist DISMISSED_FP_GESTURE_ERROR:I = 0x3

.field public static final blacklist DISMISSED_FP_GESTURE_SUCCEED:I = 0x1

.field public static final blacklist DISMISSED_FP_GESTURE_USER_CANCELED:I = 0x2

.field public static final blacklist DISPLAY_STATE_ON:I = 0x2

.field public static final blacklist DISPLAY_STATE_UNKNOWN:I = 0x0

.field public static final blacklist ERROR_SYSUI_BIOMETRIC_PROMPT_ERROR:I = 0xa

.field public static final blacklist ERROR_SYSUI_CONNECTION_ERROR:I = 0x2

.field public static final blacklist ERROR_SYSUI_DIED:I = 0x1

.field public static final blacklist ERROR_SYSUI_GESTURE_CALIBRATION_ERROR:I = 0xb

.field public static final blacklist ERROR_SYSUI_UNABLE_TO_PROCESS:I = 0x3

.field public static final blacklist EVENT_FP_GESTURE_CALIBRATION_DONE:I = 0x8

.field public static final blacklist EVENT_FP_GESTURE_CALIBRATION_UI_READY:I = 0x1

.field public static final blacklist EVT_PROMPT_DIALOG_ANIMATED_IN:I = 0x3ec

.field public static final blacklist EVT_PROMPT_SYSTEM_EVENT:I = 0x3eb

.field public static final blacklist EVT_PROMPT_TRY_AGAIN:I = 0x3e9

.field public static final blacklist EVT_PROMPT_USE_DEVICE_CREDENTIAL:I = 0x3ea

.field public static final blacklist EVT_TSP_FOD_SINGLE_TAP:I = 0x8

.field public static final blacklist EVT_TSP_FOD_TOUCH_DOWN:I = 0xf

.field public static final blacklist EVT_TSP_FOD_TOUCH_OUT_OF_AREA:I = 0x11

.field public static final blacklist EVT_TSP_FOD_TOUCH_UP:I = 0x10

.field public static final blacklist FP_HAL_EVENT_TOUCH_DOWN:I = 0x2

.field public static final blacklist FP_HAL_EVENT_TOUCH_UP:I = 0x1

.field public static final blacklist FP_ICON_OPTION_ALWAYS_ON_DISPLAY:I = 0x2

.field public static final blacklist FP_ICON_OPTION_NEVER:I = 0x0

.field public static final blacklist FP_ICON_OPTION_NOT_SET:I = -0x1

.field public static final blacklist FP_ICON_OPTION_TAP_TO_SHOW:I = 0x1

.field public static final blacklist KEY_AVAILABILITY_BIOMETRIC:Ljava/lang/String; = "KEY_AVAILABILITY_BIOMETRIC"

.field public static final blacklist KEY_BIOMETRICS_ID:Ljava/lang/String; = "KEY_BIOMETRICS_ID"

.field public static final blacklist KEY_BIO_TPA_MODE:Ljava/lang/String; = "biometric_tpa_mode"

.field public static final blacklist KEY_CHALLENGE_TOKEN:Ljava/lang/String; = "KEY_CHALLENGE_TOKEN"

.field public static final blacklist KEY_FP_GESTURE_DIRECTION:Ljava/lang/String; = "KEY_FP_GESTURE_DIRECTION"

.field public static final blacklist KEY_FP_ICON_ADAPTIVE_OPTION_WHEN_SCREEN_OFF:Ljava/lang/String; = "fingerprint_adaptive_icon"

.field public static final blacklist KEY_FP_ICON_OLD_OPTION_WHEN_SCREEN_OFF:Ljava/lang/String; = "fingerprint_screen_off_icon"

.field public static final blacklist KEY_FP_ICON_OPTION_WHEN_SCREEN_OFF:Ljava/lang/String; = "fingerprint_screen_off_icon_aod"

.field public static final blacklist KEY_FP_ICON_OPTION_WHEN_SCREEN_ON:Ljava/lang/String; = "fingerprint_screen_on_icon_lock"

.field public static final blacklist KEY_FP_MASKVIEW_DEBUG_MODE:Ljava/lang/String; = "fingerprint_maskview_debug_mode"

.field public static final blacklist KEY_FP_PF_GUIDELINE_DISPLAYED:Ljava/lang/String; = "fingerprint_protective_film_guideline_displayed"

.field public static final blacklist KEY_FP_VI_EFFECT_TYPE:Ljava/lang/String; = "fingerprint_effect"

.field public static final blacklist KEY_IDENTIFIER_NAME:Ljava/lang/String; = "KEY_IDENTIFIER_NAME"

.field public static final blacklist KEY_INDISPLAY_SENSOR_AREA:Ljava/lang/String; = "sem_area"

.field public static final blacklist KEY_INDISPLAY_SENSOR_OPTICAL_BRIGHTNESS:Ljava/lang/String; = "brightness"

.field public static final blacklist KEY_INDISPLAY_SENSOR_OPTICAL_LIGHT_COLOR:Ljava/lang/String; = "nits"

.field public static final blacklist KEY_INDISPLAY_SENSOR_OPTICAL_NITS:Ljava/lang/String; = "lightColor"

.field public static final blacklist KEY_KEYGUARD:Ljava/lang/String; = "KEY_KEYGUARD"

.field public static final blacklist KEY_MANAGED_PROFILE:Ljava/lang/String; = "MANAGED_PROFILE"

.field public static final blacklist KEY_MANAGED_PROFILE_COLOR:Ljava/lang/String; = "MANAGED_PROFILE_COLOR"

.field public static final blacklist KEY_MANAGED_PROFILE_KNOX:Ljava/lang/String; = "MANAGED_PROFILE_KNOX"

.field public static final blacklist KEY_MANAGED_PROFILE_KNOX_NAME:Ljava/lang/String; = "MANAGED_PROFILE_KNOX_NAME"

.field public static final blacklist KEY_MANAGED_PROFILE_KNOX_ONLY_CONFIRM_BIOMETRIC:Ljava/lang/String; = "MANAGED_PROFILE_KNOX_ONLY_CONFIRM_BIOMETRIC"

.field public static final blacklist KEY_MANAGED_PROFILE_KNOX_TWO_FACTOR:Ljava/lang/String; = "MANAGED_PROFILE_KNOX_TWO_FACTOR"

.field public static final blacklist KEY_PACKAGE_NAME:Ljava/lang/String; = "KEY_PACKAGE_NAME"

.field public static final blacklist KEY_SECURE_FOLDER:Ljava/lang/String; = "SECURE_FOLDER"

.field public static final blacklist KEY_SECURE_FOLDER_NAME:Ljava/lang/String; = "SECURE_FOLDER_NAME"

.field public static final blacklist LOCAL_HBM_MODE_OFF:I = 0x0

.field public static final blacklist LOCAL_HBM_MODE_ON_LIGHT_OFF:I = 0x1

.field public static final blacklist LOCAL_HBM_MODE_ON_LIGHT_ON:I = 0x2

.field public static final blacklist REQ_CMD_AOD_GONE:I = 0xa

.field public static final blacklist REQ_CMD_DISPLAY_STATE_LIMIT_CTRL:I = 0x1

.field public static final blacklist REQ_CMD_DOZE_MODE_CTRL:I = 0x2

.field public static final blacklist REQ_CMD_DVFS_CTL:I = 0x8

.field public static final blacklist REQ_CMD_FP_KEEP_BIND:I = 0xc

.field public static final blacklist REQ_CMD_GET_KEYGUARD_STATUS:I = 0x6

.field public static final blacklist REQ_CMD_HLPM_MODE_CTRL:I = 0x3

.field public static final blacklist REQ_CMD_HW_LIGHT_SOURCE_CTRL:I = 0x5

.field public static final blacklist REQ_CMD_ICON_DRAWN_TIME:I = 0xb

.field public static final blacklist REQ_CMD_LOCAL_HBM_CONTROL:I = 0xd

.field public static final blacklist REQ_CMD_OPTICAL_CTL_DISPLAY_FUNC:I = 0x7

.field public static final blacklist REQ_CMD_TOUCH_EVENT:I = 0x9

.field public static final blacklist REQ_CMD_TSP_CTRL:I = 0x4

.field public static final blacklist REQ_CMD_VENDOR_QCOM_FORCE_QDB:I = 0x64

.field public static final blacklist STATE_OFF:I = 0x0

.field public static final blacklist STATE_ON:I = 0x1

.field public static final blacklist SYSUI_TYPE_CREDENTIAL_PROMPT:I = 0x8000

.field public static final blacklist SYSUI_TYPE_FACE_PROMPT:I = 0x1000

.field public static final blacklist SYSUI_TYPE_FINGERPRINT_ALPHA_MASK_SA:I = 0x10

.field public static final blacklist SYSUI_TYPE_FINGERPRINT_CALIBRATION:I = 0x20

.field public static final blacklist SYSUI_TYPE_FINGERPRINT_ENROLL:I = 0x40

.field public static final blacklist SYSUI_TYPE_FINGERPRINT_KEYGUARD:I = 0x4

.field public static final blacklist SYSUI_TYPE_FINGERPRINT_NORMAL_APP:I = 0x1

.field public static final blacklist SYSUI_TYPE_FINGERPRINT_PRIVILEGED_APP:I = 0x2

.field public static final blacklist SYSUI_TYPE_FINGERPRINT_PROMPT:I = 0x8

.field public static final blacklist SYSUI_TYPE_GESTURE_CALIBRATION:I = 0x10000

.field public static final blacklist SYSUI_TYPE_INTELLIGENT_PROMPT:I = 0x4000

.field public static final blacklist SYSUI_TYPE_IRIS_PROMPT:I = 0x2000

.field public static final blacklist TSP_STATE_DISABLE:I = 0x0

.field public static final blacklist TSP_STATE_ENABLE:I = 0x1

.field public static final blacklist TSP_STATE_ENABLE_HALF:I = 0x2
