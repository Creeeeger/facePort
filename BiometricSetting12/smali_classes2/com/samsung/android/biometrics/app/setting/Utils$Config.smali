.class public Lcom/samsung/android/biometrics/app/setting/Utils$Config;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/biometrics/app/setting/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation


# static fields
.field public static FEATURE_FACE_HAL:Z = false

.field public static final FEATURE_FAKE_AOD:Z

.field public static final FEATURE_JDM_HAL:Z

.field public static final FEATURE_NO_DELAY_IN_SCREEN_OFF:Z

.field public static final FEATURE_SUPPORT_AOD:Z

.field public static final FEATURE_SUPPORT_DESKTOP_MODE:Z

.field public static final FEATURE_SUPPORT_DISABLED_MENU_K05:Z

.field public static final FEATURE_SUPPORT_DUAL_DISPLAY:Z

.field public static final FEATURE_SUPPORT_FINGERPRINT:Z = true

.field public static final FEATURE_SUPPORT_KNOX_CONTAINER:Z = true

.field public static final FEATURE_SUPPORT_SPEN:Z

.field public static final FP_FEATURE_HW_LIGHT_SOURCE:Z

.field public static final FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

.field public static final FP_FEATURE_SENSOR_IS_OPTICAL:Z

.field public static final FP_FEATURE_SENSOR_IS_SWIPE_ENROLL:Z

.field public static final FP_FEATURE_SENSOR_IS_ULTRASONIC:Z

.field public static final FP_FEATURE_SENSOR_SIDE_WINK:Z

.field public static final FP_FEATURE_SUPPORT_GESTURE_CALIBRATION:Z

.field public static final FP_FEATURE_TSP_BLOCK:Z

.field public static SENSOR_BOTTOM_MARGIN_BOUNDARY_RECENT_HOME_KEY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    nop

    const-string v0, "in_house"

    const-string v1, "jdm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FEATURE_JDM_HAL:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_KNOX_DESKTOP"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FEATURE_SUPPORT_DESKTOP_MODE:Z

    nop

    const-string v0, "google_touch_display_ultrasonic"

    const-string v1, "touch_display"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    nop

    const-string v1, "ultrasonic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_SENSOR_IS_ULTRASONIC:Z

    nop

    const-string v1, "optical"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    nop

    const-string v1, "swipe_enroll"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_SENSOR_IS_SWIPE_ENROLL:Z

    nop

    const-string v1, "hw_light_source"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v4, "SEC_FLOATING_FEATURE_LCD_CONFIG_SELFMASK_VERSION"

    invoke-virtual {v1, v4, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-lt v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    sput-boolean v1, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_HW_LIGHT_SOURCE:Z

    nop

    const-string v1, "calibrate_navi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_SUPPORT_GESTURE_CALIBRATION:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v4, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_AOD_ITEM"

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "aodversion"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FEATURE_SUPPORT_AOD:Z

    if-nez v1, :cond_2

    const-string v1, ",screen_off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_2
    sput-boolean v1, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FEATURE_FAKE_AOD:Z

    nop

    const-string v1, "no_delay_in_screen_off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FEATURE_NO_DELAY_IN_SCREEN_OFF:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const/4 v4, -0x1

    const-string v5, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_SPEN_VERSION"

    invoke-virtual {v1, v5, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    sput-boolean v2, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FEATURE_SUPPORT_SPEN:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v4, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_DISABLED_MENU_K05"

    invoke-virtual {v1, v4, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FEATURE_SUPPORT_DISABLED_MENU_K05:Z

    const-string v1, "15"

    sput-object v1, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->SENSOR_BOTTOM_MARGIN_BOUNDARY_RECENT_HOME_KEY:Ljava/lang/String;

    sput-boolean v2, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_TSP_BLOCK:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_FOLDABLE_TYPE_FOLD"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FEATURE_SUPPORT_DUAL_DISPLAY:Z

    nop

    const-string v1, "_side_exclusive"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_SENSOR_SIDE_WINK:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
