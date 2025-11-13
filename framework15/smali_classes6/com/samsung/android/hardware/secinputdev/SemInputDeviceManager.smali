.class public Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;
.super Ljava/lang/Object;
.source "SemInputDeviceManager.java"


# static fields
.field public static final blacklist CLEAR_COVER_CLOSED:I = 0x3

.field public static final blacklist CLEAR_COVER_OPENED:I = 0x0

.field public static final blacklist DEVID_DEFAULT_TSP:I = 0x1

.field public static final blacklist DEVID_EXTRA_TSP:I = 0x2

.field public static final blacklist DEVID_KEY:I = 0x15

.field public static final blacklist DEVID_KEYBOARD:I = 0x1f

.field public static final blacklist DEVID_SPEN:I = 0xb

.field public static final blacklist DEVID_TAAS:I = 0x29

.field public static final blacklist DEVID_TSP_MAX:I = 0x3

.field public static final blacklist EAR_DETECT_DISABLE:I = 0x0

.field public static final blacklist EAR_DETECT_HIGH_SENSE_ENABLE:I = 0x3

.field public static final blacklist EAR_DETECT_LOW_SENSE_ENABLE:I = 0x1

.field public static final blacklist EXTERNAL_NOISE_DEX:I = 0x1

.field public static final blacklist FOD_PRESS_FAST_MODE_DISABLE:I = 0x0

.field public static final blacklist FOD_PRESS_FAST_MODE_ENABLE:I = 0x1

.field public static final blacklist FOD_STRICT_MODE_DISABLE:I = 0x0

.field public static final blacklist FOD_STRICT_MODE_ENABLE:I = 0x1

.field public static final blacklist FORCE_OFF:I = 0x15

.field public static final blacklist FORCE_ON:I = 0x16

.field public static final blacklist KEY_APPSELECT:I = 0x244

.field public static final blacklist KEY_BACK:I = 0x9e

.field public static final blacklist KEY_EMERGENCY:I = 0x2a0

.field public static final blacklist KEY_HOME:I = 0xac

.field public static final blacklist KEY_HOT:I = 0xfc

.field public static final blacklist KEY_MICMUTE:I = 0xf8

.field public static final blacklist KEY_POWER:I = 0x74

.field public static final blacklist KEY_RECENT:I = 0xfe

.field public static final blacklist KEY_VOLUMEDOWN:I = 0x72

.field public static final blacklist KEY_VOLUMEUP:I = 0x73

.field public static final blacklist LCD_DOZE1:I = 0x3

.field public static final blacklist LCD_DOZE2:I = 0x4

.field public static final blacklist LCD_EARLY_EVENT:Z = false

.field public static final blacklist LCD_LATE_EVENT:Z = true

.field public static final blacklist LCD_NONE:I = 0x0

.field public static final blacklist LCD_OFF:I = 0x1

.field public static final blacklist LCD_ON:I = 0x2

.field public static final blacklist MODE_DISABLE:I = 0x0

.field public static final blacklist MODE_ENABLE:I = 0x1

.field public static final blacklist MOTION_CONTROL_AIVF_THRESHOLD_TO_HIGH:I = 0x2

.field public static final blacklist MOTION_CONTROL_AIVF_THRESHOLD_TO_LOW:I = 0x0

.field public static final blacklist MOTION_CONTROL_AIVF_THRESHOLD_TO_MID:I = 0x1

.field public static final blacklist MOTION_CONTROL_ALL_ORIENTATION_0:I = 0x14

.field public static final blacklist MOTION_CONTROL_ALL_ORIENTATION_180:I = 0x16

.field public static final blacklist MOTION_CONTROL_ALL_ORIENTATION_270:I = 0x17

.field public static final blacklist MOTION_CONTROL_ALL_ORIENTATION_90:I = 0x15

.field public static final blacklist MOTION_CONTROL_ALL_SIP_IS_DISABLED:I = 0xc

.field public static final blacklist MOTION_CONTROL_ALL_SIP_IS_ENABLED:I = 0xb

.field public static final blacklist MOTION_CONTROL_TYPE_AIVF_EVENT:Ljava/lang/String; = "AIVF_EVENT"

.field public static final blacklist MOTION_CONTROL_TYPE_AIVF_SENSITIVITY:Ljava/lang/String; = "AIVF_SENSITIVITY"

.field public static final blacklist MOTION_CONTROL_TYPE_AIVF_THRESHOLD:Ljava/lang/String; = "AIVF_THRESHOLD"

.field public static final blacklist MOTION_CONTROL_TYPE_AIVF_VOLUME:Ljava/lang/String; = "AIVF_VOLUME"

.field public static final blacklist MOTION_CONTROL_TYPE_ALL:Ljava/lang/String; = "ALL"

.field public static final blacklist MOTION_ENABLE_TYPE_AIVF:Ljava/lang/String; = "AIVF"

.field public static final blacklist MOTION_ENABLE_TYPE_AWD:Ljava/lang/String; = "AWD"

.field public static final blacklist MOTION_ENABLE_TYPE_PALM:Ljava/lang/String; = "PALM"

.field public static final blacklist MOTION_ENABLE_TYPE_PALM_SWIPE:Ljava/lang/String; = "PALM_SWIPE"

.field public static final blacklist MOTION_ENABLE_TYPE_POCKET_DETECT:Ljava/lang/String; = "POCKET_DETECT"

.field public static final blacklist MOTION_ERROR_TYPE_NOT_LOADED_SERVICE:I = -0x2

.field public static final blacklist MOTION_ERROR_TYPE_NOT_SUPPORT_HARDWARE:I = -0x1

.field public static final blacklist MOTION_ERROR_TYPE_NOT_SUPPORT_MOTION:I = -0x3

.field public static final blacklist MOTION_ERROR_TYPE_NULL_STRING:I = -0x4

.field public static final blacklist MOTION_TYPE_AIVF:I = 0x5

.field public static final blacklist MOTION_TYPE_AWD:I = 0x6

.field public static final blacklist MOTION_TYPE_EAR_DETECTION:I = 0x3

.field public static final blacklist MOTION_TYPE_GRIP_FILTER:I = 0x4

.field public static final blacklist MOTION_TYPE_NONE:I = 0x0

.field public static final blacklist MOTION_TYPE_PALM_MUTE:I = 0x1

.field public static final blacklist MOTION_TYPE_PALM_SWIPE:I = 0x2

.field public static final blacklist MOTION_TYPE_POCKET_DETECT:I = 0x9

.field public static final blacklist MOTION_TYPE_RAWDATA_ALWAYS_ON:I = 0x7

.field public static final blacklist RAWDATA_CALLBACK:I = 0x1

.field public static final blacklist RAWDATA_LISTENER:I = 0x2

.field public static final blacklist RAWDATA_TYPE_MAX:I = 0x3

.field public static final blacklist REPORT_INFO_HANDEDGE:Ljava/lang/String; = "handedge"

.field public static final blacklist RESULT_NG:I = -0x1

.field public static final blacklist RESULT_OK:I = 0x0

.field public static final blacklist RESULT_STR_NA:Ljava/lang/String; = "NA"

.field public static final blacklist RESULT_STR_NG:Ljava/lang/String; = "NG"

.field public static final blacklist SERVICE_SHUTDOWN:I = -0x1

.field public static final blacklist SPEN_MODE_NONE:I = 0x0

.field public static final blacklist SPEN_MODE_POGO_KEYBOARD:I = 0x2

.field public static final blacklist SPEN_MODE_SPEN_COVER:I = 0x1

.field public static final blacklist SUPPORT_AOT:I = 0x1

.field public static final blacklist SUPPORT_INPUT_MONITOR:I = 0x10000

.field public static final blacklist SUPPORT_MISCALIBRATION:I = 0x200

.field public static final blacklist SUPPORT_MULTICALIBRATION:I = 0x400

.field public static final blacklist SUPPORT_OPENSHORT:I = 0x100

.field public static final blacklist SUPPORT_PRESSURE:I = 0x2

.field public static final blacklist SUPPORT_PROX_LP_SCAN_ENABLED:I = 0x40

.field public static final blacklist SUPPORT_RAWDATA_MOTION_AIVF:I = 0x200000

.field public static final blacklist SUPPORT_RAWDATA_MOTION_AWD:I = 0x800000

.field public static final blacklist SUPPORT_RAWDATA_MOTION_PALM:I = 0x100000

.field public static final blacklist SUPPORT_RAWDATA_MOTION_PALM_SWIPE:I = 0x400000

.field public static final blacklist SUPPORT_RAWDATA_MOTION_POCKET_DETECT:I = 0x80000

.field public static final blacklist SUPPORT_RAWDATA_TRANSFER:I = 0x40000

.field public static final blacklist SUPPORT_RR120:I = 0x4

.field public static final blacklist SUPPORT_SYSINPUT_ENABLED:I = 0x20

.field public static final blacklist SUPPORT_VRR:I = 0x8

.field public static final blacklist SUPPORT_WIRELESS_TX:I = 0x10

.field public static final blacklist SYNC_CHANGED_30_TO_60:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "SemInputDeviceManager"

.field public static blacklist gloveMode:I


# instance fields
.field private blacklist service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->gloveMode:I

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SemInputDeviceManager"

    if-nez p1, :cond_0

    const-string v1, "ISemInputDeviceManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v1, "SemInputDeviceManager ++"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    return-void
.end method

.method private blacklist activate(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/SemInputConstants$DisplayState;Z)I
    .locals 4

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    const-string v1, "activate: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activate: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->activate(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/SemInputConstants$DisplayState;Z)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "Failed to call interface: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method private blacklist getProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Property;)Ljava/lang/String;
    .locals 4

    const-string v0, "NG"

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    const-string v1, "getProperty: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProperty: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->getProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Property;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "getProperty: Failed to call interface: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
.end method

.method private blacklist runCommand(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "NG"

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    const-string v1, "runCommand: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "runCommand: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->runCommand(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "Failed to call interface: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
.end method

.method private blacklist setProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;->NOT_SPECIFIED:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private blacklist setProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;Ljava/lang/String;)I
    .locals 4

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    const-string v1, "setProperty: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setProperty: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Property;->CMD:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Property;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->setCommand(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "setProperty: Failed to call interface: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method private blacklist setProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Property;Ljava/lang/String;)I
    .locals 4

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    const-string v1, "setProperty: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setProperty: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Property;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "setProperty: Failed to call interface: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method


# virtual methods
.method public blacklist enableMotion(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;ZLjava/lang/String;)I
    .locals 1

    invoke-virtual {p1}, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->enableMotion(Ljava/lang/String;ZLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist enableMotion(Ljava/lang/String;ZLjava/lang/String;)I
    .locals 4

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    const-string v1, "enableMotion: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->enableMotion(Ljava/lang/String;ZLjava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "Failed to call interface: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public blacklist getAodActiveArea(I)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;->getFromInt(I)Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Property;->AOD_ACTIVE_AREA:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Property;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->getProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Property;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCommandList(I)Ljava/lang/String;
    .locals 4

    const-string v0, "NG"

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    const-string v1, "getCommandList: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;->getFromInt(I)Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->getCommandList(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "Failed to call interface: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
.end method

.method public blacklist getDeviceEnabled(I)I
    .locals 4

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    const-string v1, "getDeviceEnabled: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;->getFromInt(I)Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->getDeviceEnabled(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "Failed to call interface: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public blacklist getFodInfo(I)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;->getFromInt(I)Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Property;->FOD_INFO:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Property;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->getProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Property;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getFodPosition(I)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;->getFromInt(I)Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Property;->FOD_POS:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Property;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->getProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Property;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getKeyPressStateAll()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    const-string v1, "getKeyPressStateAll: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    invoke-interface {v1}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->getKeyPressStateAll()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "Failed to call interface: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
.end method

.method public blacklist getMotionControl(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    const-string v1, "getMotionControl: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->getMotionControl(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "Failed to call interface: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public blacklist getScrubPosition(I)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;->getFromInt(I)Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Property;->SCRUB_POS:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Property;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->getProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Property;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSpenPosition()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;->SPEN:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Property;->EPEN_POS:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Property;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->getProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Property;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSupportDevice(I)I
    .locals 4

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    const-string v1, "getSupportDevice: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;->getFromInt(I)Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->getSupportDevice(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "Failed to call interface: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public blacklist getTspSupportFeature(I)I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    const-string v1, "getTspSupportFeature: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;->getFromInt(I)Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->getTspSupportFeature(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "Failed to call interface: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public blacklist isEnableMotion(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p1}, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->isEnableMotion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist isEnableMotion(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    const-string v1, "isEnableMotion: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->isEnableMotion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "Failed to call interface: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public blacklist isKeyPressedByKeycode(I)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    const-string v1, "isKeyPressedByKeycode: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->isKeyPressedByKeycode(I)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "Failed to call interface: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public blacklist isSupportMotion(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->isSupportMotion(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public blacklist isSupportMotion(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    const-string v1, "isSupportMotion: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->isSupportMotion(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "Failed to call interface: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public blacklist registerListener(ILjava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    const-string v1, "registerListener: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const/4 v3, 0x0

    invoke-interface {v1, v3, p1, p2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->registerListener(Landroid/os/IBinder;ILjava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "Failed to call interface: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public blacklist registerListener(Landroid/os/IBinder;ILjava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    const-string v1, "registerListener: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->registerListener(Landroid/os/IBinder;ILjava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "Failed to call interface: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public blacklist runEmergency(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;->getFromInt(I)Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->runCommand(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist runEmergencyCurrentTsp(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;->CURRENT_TSP:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->runCommand(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist sendRawdataTsp(I[I)I
    .locals 4

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    const-string v1, "sendRawdataTsp: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;->getFromInt(I)Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;

    move-result-object v3

    invoke-interface {v1, v3, p2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->sendRawdataTsp(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;[I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "Failed to call interface: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public blacklist setAlwaysLowPowerMode(II)I
    .locals 4

    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;->getFromInt(I)Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;->ALWAYS_LOW_POWER_MODE:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist setAodEnable(I)I
    .locals 3

    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;->AOD:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist setAodNotiRect(IIII)I
    .locals 3

    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;->AOD_NOTI_RECT:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist setAodRect(IIII)I
    .locals 3

    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;->AOD_RECT:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist setAotEnable(I)I
    .locals 4

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    const-string v1, "setAotEnable: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAotEnable: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->setAotEnable(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "Failed to call interface: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public blacklist setBrushEnable(I)I
    .locals 3

    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;->BRUSH:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist setCoverMode(ZI)V
    .locals 5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;->DEFAULT_TSP:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;->CLEAR_COVER:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->gloveMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;->EXTRA_TSP:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;->CLEAR_COVER:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->gloveMode:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;->SPEN:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;->CLEAR_COVER:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;->NOT_SPECIFIED:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;->CLEAR_COVER:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "3,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public blacklist setFodEnable(IIII)I
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;->FOD:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;->FOD:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist setFodIconVisible(I)I
    .locals 3

    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;->FOD_ICON_VISIBLE:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist setFodLpMode(I)I
    .locals 3

    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;->FOD_LP:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist setFodRect(IIII)I
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;->CURRENT_TSP:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;

    sget-object v2, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;->FOD_RECT:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;

    invoke-direct {p0, v1, v2, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public blacklist setGripData(Ljava/lang/String;)I
    .locals 2

    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;->CURRENT_TSP:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;->GRIP_DATA:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist setLowSensitivityMode(II)I
    .locals 3

    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;->LOW_SENSITIVITY:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist setLowSensitivityModeEnable(I)I
    .locals 3

    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;->LOW_SENSITIVITY:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist setMotionControl(Ljava/lang/String;ILjava/lang/String;)I
    .locals 4

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    const-string v1, "setMotionControl: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->setMotionControl(Ljava/lang/String;ILjava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "Failed to call interface: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public blacklist setNoteMode(I)I
    .locals 3

    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;->NOTE_APP:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist setPocketModeEnable(I)I
    .locals 3

    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;->POCKET_MODE:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist setProxPowerOff(II)I
    .locals 4

    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;->getFromInt(I)Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Property;->PROX_OFF:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Property;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Property;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist setSingletapEnable(I)I
    .locals 3

    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;->SINGLETAP:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist setSipMode(I)I
    .locals 4

    if-nez p1, :cond_0

    const/16 v0, 0xc

    goto :goto_0

    :cond_0
    const/16 v0, 0xb

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ALL"

    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setMotionControl(Ljava/lang/String;ILjava/lang/String;)I

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;->SIP:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public blacklist setSpayEnable(I)I
    .locals 3

    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;->SPAY:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist setSpenBleChargeMode(I)I
    .locals 4

    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;->SPEN:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;->SPEN_BLE_CHARGING:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist setSpenCoverType(I)I
    .locals 4

    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;->SPEN:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;->SPEN_COVER_TYPE:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist setSpenEnabled(IIZ)I
    .locals 2

    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;->getFromInt(I)Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;

    move-result-object v0

    invoke-static {p2}, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$DisplayState;->getFromInt(I)Lcom/samsung/android/hardware/secinputdev/SemInputConstants$DisplayState;

    move-result-object v1

    invoke-direct {p0, v0, v1, p3}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->activate(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/SemInputConstants$DisplayState;Z)I

    move-result v0

    return v0
.end method

.method public blacklist setSpenLowCurrentMode(I)I
    .locals 4

    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;->SPEN:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;->SPEN_LOWCURRENT:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist setSpenPdctLowSensitivityEnable(I)I
    .locals 4

    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;->SPEN:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;->SPEN_PDCT_LOWSENSITIVITY:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist setSpenPower(I)I
    .locals 4

    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;->SPEN:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;->SPEN_POWER:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist setSpenPowerSavingMode(I)I
    .locals 4

    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;->SPEN:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;->SPEN_SAVING_MODE:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist setStylusEnable(I)I
    .locals 3

    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;->STYLUS:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist setSyncChanged(I)I
    .locals 3

    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;->SYNC_CHANGED:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist setTemperature(I)I
    .locals 3

    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;->TEMPERATURE:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist setTouchableArea(I)I
    .locals 3

    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;->TOUCHABLE_AREA:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist setTspEnabled(IIZ)I
    .locals 2

    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;->getFromInt(I)Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;

    move-result-object v0

    invoke-static {p2}, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$DisplayState;->getFromInt(I)Lcom/samsung/android/hardware/secinputdev/SemInputConstants$DisplayState;

    move-result-object v1

    invoke-direct {p0, v0, v1, p3}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->activate(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/SemInputConstants$DisplayState;Z)I

    move-result v0

    return v0
.end method

.method public blacklist setWirelessChargingMode(II)I
    .locals 4

    const/4 v0, 0x1

    const-string v1, ""

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;->NOT_SPECIFIED:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;

    sget-object v2, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;->WIRELESS_CHARGER:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v2, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;->getFromInt(I)Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;->WIRELESS_CHARGER:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v2, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist unregisterListener(ILjava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    const-string v1, "unregisterListener: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const/4 v3, 0x0

    invoke-interface {v1, v3, p1, p2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->unregisterListener(Landroid/os/IBinder;ILjava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "Failed to call interface: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public blacklist unregisterListener(Landroid/os/IBinder;ILjava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    const-string v1, "unregisterListener: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->unregisterListener(Landroid/os/IBinder;ILjava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "Failed to call interface: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method
