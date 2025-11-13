.class public final Lcom/android/systemui/util/DeviceType;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static DEBUG_LEVEL_HIGH:I = 0x2

.field public static DEBUG_LEVEL_LOW:I = 0x0

.field public static DEBUG_LEVEL_MID:I = 0x1

.field private static final NOT_INITIALIZED:I = -0x1

.field private static final NOT_SUPPORTED:I = 0x0

.field private static final SUPPORTED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DeviceType"

.field private static debugLevel:I = -0x1

.field private static mIsSupport5G:Z = false

.field private static mIsSupport5GChecked:Z = false

.field private static sCachedEngOrUTBinary:I = -0x1

.field private static sRpCount:I = -0x2

.field private static support8InchOverTablet:I = -0x1

.field private static supportCover:I = -0x1

.field private static supportDeadzone:I = -0x1

.field private static supportESim:I = -0x1

.field private static supportFBE:I = -0x1

.field private static supportInDisplayFingerprint:I = -0x1

.field private static supportLed:I = -0x1

.field private static supportLightReveal:I = -0x1

.field private static supportLightSensor:I = -0x1

.field private static supportMultiSIM:I = -0x1

.field private static supportOpticalFingerprint:I = -0x1

.field private static supportPenDetachmentOption:Ljava/lang/Boolean; = null

.field private static supportRearFingerprint:I = -0x1

.field private static supportSEPLite:I = -0x1

.field private static supportSideFingerprint:I = -0x1

.field private static supportSideFingerprintExclusive:I = -0x1

.field private static supportTablet:I = -0x1

.field private static supportTouchProximity:I = -0x1

.field private static supportVibrator:I = -0x1

.field private static supportWeaver:I = -0x1

.field private static supportWifiOnly:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDebugLevel()I
    .locals 3

    sget v0, Lcom/android/systemui/util/DeviceType;->debugLevel:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    const-string/jumbo v0, "ro.boot.debug_level"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v0, "ro.debug_level"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "0x4f4c"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "0x494d"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget v0, Lcom/android/systemui/util/DeviceType;->DEBUG_LEVEL_MID:I

    sput v0, Lcom/android/systemui/util/DeviceType;->debugLevel:I

    goto :goto_1

    :cond_2
    const-string v1, "0x4948"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Lcom/android/systemui/util/DeviceType;->DEBUG_LEVEL_HIGH:I

    sput v0, Lcom/android/systemui/util/DeviceType;->debugLevel:I

    goto :goto_1

    :cond_3
    :goto_0
    sget v0, Lcom/android/systemui/util/DeviceType;->DEBUG_LEVEL_LOW:I

    sput v0, Lcom/android/systemui/util/DeviceType;->debugLevel:I

    :cond_4
    :goto_1
    sget v0, Lcom/android/systemui/util/DeviceType;->debugLevel:I

    return v0
.end method

.method public static getRpCount()I
    .locals 2

    sget v0, Lcom/android/systemui/util/DeviceType;->sRpCount:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "ro.boot.rp"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/systemui/util/DeviceType;->sRpCount:I

    :cond_0
    sget v0, Lcom/android/systemui/util/DeviceType;->sRpCount:I

    return v0
.end method

.method public static hasSPenFeature(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.sec.feature.spen_usp"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    const-string v0, "isSupportActionMemoOnLockScreen FEATURE_SPEN : "

    const-string v1, "DeviceType"

    invoke-static {v0, v1, p0}, Lcom/android/settingslib/satellite/SatelliteDialogUtils$requestIsEnabled$2$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return p0
.end method

.method public static isCoverSupported()Z
    .locals 2

    sget v0, Lcom/android/systemui/util/DeviceType;->supportCover:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.cover"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput v0, Lcom/android/systemui/util/DeviceType;->supportCover:I

    :cond_0
    sget v0, Lcom/android/systemui/util/DeviceType;->supportCover:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isDeadzoneSupported()Z
    .locals 2

    sget v0, Lcom/android/systemui/util/DeviceType;->supportDeadzone:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_TSP_STATE_MANAGER"

    const-string v1, "deadzone_v2"

    invoke-static {v0, v1}, Lcom/android/systemui/BasicRune$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput v0, Lcom/android/systemui/util/DeviceType;->supportDeadzone:I

    :cond_0
    sget v0, Lcom/android/systemui/util/DeviceType;->supportDeadzone:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isDebuggable()Z
    .locals 2

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->getDebugLevel()I

    move-result v0

    sget v1, Lcom/android/systemui/util/DeviceType;->DEBUG_LEVEL_MID:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isEngBuild()Z
    .locals 2

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isEngOrUTBinary()Z
    .locals 4

    sget v0, Lcom/android/systemui/util/DeviceType;->sCachedEngOrUTBinary:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v0, :cond_2

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "persist.log.seclevel"

    const-string v3, "0"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    sput v0, Lcom/android/systemui/util/DeviceType;->sCachedEngOrUTBinary:I

    :cond_2
    sget v0, Lcom/android/systemui/util/DeviceType;->sCachedEngOrUTBinary:I

    if-lez v0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    return v1
.end method

.method public static isFactoryBinary()Z
    .locals 1

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    return v0
.end method

.method public static isFbeSupported()Z
    .locals 2

    sget v0, Lcom/android/systemui/util/DeviceType;->supportFBE:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncrypted()Z

    move-result v0

    sput v0, Lcom/android/systemui/util/DeviceType;->supportFBE:I

    :cond_0
    sget v0, Lcom/android/systemui/util/DeviceType;->supportFBE:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isHomeHubDevice()Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_CONFIG_HOMEHUB"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isInDisplayFingerprintSupported()Z
    .locals 3

    sget v0, Lcom/android/systemui/util/DeviceType;->supportInDisplayFingerprint:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    sput v2, Lcom/android/systemui/util/DeviceType;->supportInDisplayFingerprint:I

    :cond_0
    sget v0, Lcom/android/systemui/util/DeviceType;->supportInDisplayFingerprint:I

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public static isLDUOLDModel()Z
    .locals 3

    const-string v0, ""

    :try_start_0
    const-string/jumbo v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "ril.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "TAG"

    const-string/jumbo v2, "readSalesCode failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const-string v1, "PAP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "FOP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "LDU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    return v0
.end method

.method public static isLDUSKU()Z
    .locals 5

    const-string/jumbo v0, "ril.product_code"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xb

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    return v3

    :cond_0
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x38

    if-eq v2, v4, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x39

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v3, 0x1

    :cond_2
    return v3
.end method

.method public static isLedSupported()Z
    .locals 2

    sget v0, Lcom/android/systemui/util/DeviceType;->supportLed:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/sec/led/led_pattern"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    sput v0, Lcom/android/systemui/util/DeviceType;->supportLed:I

    :cond_0
    sget v0, Lcom/android/systemui/util/DeviceType;->supportLed:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isLightSensorSupported(Landroid/content/Context;)Z
    .locals 6

    sget v0, Lcom/android/systemui/util/DeviceType;->supportLightSensor:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_3

    const-string/jumbo v0, "sensor"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/SensorManager;

    invoke-virtual {p0, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_2

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_1

    const v5, 0x10044

    if-ne v4, v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    sput v2, Lcom/android/systemui/util/DeviceType;->supportLightSensor:I

    return v2

    :cond_2
    sput v1, Lcom/android/systemui/util/DeviceType;->supportLightSensor:I

    :cond_3
    sget p0, Lcom/android/systemui/util/DeviceType;->supportLightSensor:I

    if-ne p0, v2, :cond_4

    move v1, v2

    :cond_4
    return v1
.end method

.method public static isMmsSupport()Z
    .locals 2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->isDataEnabledForApn(I)Z

    move-result v0

    return v0
.end method

.method public static isMultiSimSupported()Z
    .locals 4

    sget v0, Lcom/android/systemui/util/DeviceType;->supportMultiSIM:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-le v0, v3, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sput v0, Lcom/android/systemui/util/DeviceType;->supportMultiSIM:I

    :cond_1
    sget v0, Lcom/android/systemui/util/DeviceType;->supportMultiSIM:I

    if-ne v0, v3, :cond_2

    move v2, v3

    :cond_2
    return v2
.end method

.method public static isOpticalFingerprintSupported()Z
    .locals 3

    sget v0, Lcom/android/systemui/util/DeviceType;->supportOpticalFingerprint:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    sput v2, Lcom/android/systemui/util/DeviceType;->supportOpticalFingerprint:I

    :cond_0
    sget v0, Lcom/android/systemui/util/DeviceType;->supportOpticalFingerprint:I

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public static isQcomChipType()Z
    .locals 2

    const-string/jumbo v0, "ro.hardware"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "qcom"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isRearFingerprintSupported()Z
    .locals 3

    sget v0, Lcom/android/systemui/util/DeviceType;->supportRearFingerprint:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    sput v2, Lcom/android/systemui/util/DeviceType;->supportRearFingerprint:I

    :cond_0
    sget v0, Lcom/android/systemui/util/DeviceType;->supportRearFingerprint:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    move v2, v1

    :cond_1
    return v2
.end method

.method public static isSEPLiteDevice(Landroid/content/Context;)Z
    .locals 2

    sget v0, Lcom/android/systemui/util/DeviceType;->supportSEPLite:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.samsung.feature.samsung_experience_mobile_lite"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    sput p0, Lcom/android/systemui/util/DeviceType;->supportSEPLite:I

    :cond_0
    sget p0, Lcom/android/systemui/util/DeviceType;->supportSEPLite:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isShipBuild()Z
    .locals 2

    const-string/jumbo v0, "ro.product_ship"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSideFingerprintExclusiveSupported()Z
    .locals 3

    sget v0, Lcom/android/systemui/util/DeviceType;->supportSideFingerprintExclusive:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    sput v2, Lcom/android/systemui/util/DeviceType;->supportSideFingerprintExclusive:I

    :cond_0
    sget v0, Lcom/android/systemui/util/DeviceType;->supportSideFingerprintExclusive:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    move v2, v1

    :cond_1
    return v2
.end method

.method public static isSideFingerprintSupported()Z
    .locals 3

    sget v0, Lcom/android/systemui/util/DeviceType;->supportSideFingerprint:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    sput v2, Lcom/android/systemui/util/DeviceType;->supportSideFingerprint:I

    :cond_0
    sget v0, Lcom/android/systemui/util/DeviceType;->supportSideFingerprint:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    move v2, v1

    :cond_1
    return v2
.end method

.method public static isSupport5G()Z
    .locals 5

    const-string v0, "DeviceType"

    const-string v1, "default network mode : "

    sget-boolean v2, Lcom/android/systemui/util/DeviceType;->mIsSupport5GChecked:Z

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :try_start_0
    const-string/jumbo v3, "ro.telephony.default_network"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x17

    if-lt v3, v4, :cond_0

    sput-boolean v2, Lcom/android/systemui/util/DeviceType;->mIsSupport5G:Z

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "NumberFormatException in isSupport5GConcept"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "isSupport5GConcept : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/android/systemui/util/DeviceType;->mIsSupport5G:Z

    invoke-static {v1, v3, v0}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    sput-boolean v2, Lcom/android/systemui/util/DeviceType;->mIsSupport5GChecked:Z

    :cond_1
    sget-boolean v0, Lcom/android/systemui/util/DeviceType;->mIsSupport5G:Z

    return v0
.end method

.method public static isSupportBrightnessControl()Z
    .locals 5

    const-string v0, "DeviceType"

    const-string v1, "isSupportBrightnessControl: context : "

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x1070091

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    array-length v1, v1

    const/4 v3, 0x2

    if-le v1, v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string v1, "getBrightnessValues not matched!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return v2

    :catch_0
    const-string v1, "Fail to get service array"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static isSupportESim()Z
    .locals 2

    sget v0, Lcom/android/systemui/util/DeviceType;->supportESim:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.telephony.euicc"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput v0, Lcom/android/systemui/util/DeviceType;->supportESim:I

    :cond_0
    sget v0, Lcom/android/systemui/util/DeviceType;->supportESim:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isSupportLightReveal()Z
    .locals 5

    sget v0, Lcom/android/systemui/util/DeviceType;->supportLightReveal:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x1050349

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    sput v1, Lcom/android/systemui/util/DeviceType;->supportLightReveal:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "isSupportLightReveal: supportLightReveal="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/android/systemui/util/DeviceType;->supportLightReveal:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " context="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceType"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget v0, Lcom/android/systemui/util/DeviceType;->supportLightReveal:I

    if-ne v0, v3, :cond_2

    move v2, v3

    :cond_2
    return v2
.end method

.method public static isSupportPenDetachmentOption(Landroid/content/Context;)Z
    .locals 1

    sget-object v0, Lcom/android/systemui/util/DeviceType;->supportPenDetachmentOption:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.sec.feature.spen_usp"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/android/systemui/util/DeviceType;->supportPenDetachmentOption:Ljava/lang/Boolean;

    :cond_0
    sget-object p0, Lcom/android/systemui/util/DeviceType;->supportPenDetachmentOption:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static isSupportUnbundledBleSPen()Z
    .locals 8

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_SPEN_GARAGE_SPEC"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    goto :goto_1

    :cond_1
    aget-object v5, v4, v2

    const/4 v6, 0x1

    aget-object v4, v4, v6

    const-string/jumbo v7, "unbundled_spec"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "remote"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v6

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method public static isTablet()Z
    .locals 2

    sget v0, Lcom/android/systemui/util/DeviceType;->supportTablet:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "ro.build.characteristics"

    const-string v1, "phone"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput v0, Lcom/android/systemui/util/DeviceType;->supportTablet:I

    :cond_0
    sget v0, Lcom/android/systemui/util/DeviceType;->supportTablet:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isTouchProximitySupported(Landroid/content/Context;)Z
    .locals 4

    sget v0, Lcom/android/systemui/util/DeviceType;->supportTouchProximity:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    const-string/jumbo v0, "sensor"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/SensorManager;

    const v0, 0x1003c

    invoke-virtual {p0, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p0

    if-eqz p0, :cond_0

    move p0, v3

    goto :goto_0

    :cond_0
    move p0, v2

    :goto_0
    sput p0, Lcom/android/systemui/util/DeviceType;->supportTouchProximity:I

    :cond_1
    sget p0, Lcom/android/systemui/util/DeviceType;->supportTouchProximity:I

    if-ne p0, v3, :cond_2

    move v2, v3

    :cond_2
    return v2
.end method

.method public static isVibratorSupported(Landroid/content/Context;)Z
    .locals 4

    sget v0, Lcom/android/systemui/util/DeviceType;->supportVibrator:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    const-string/jumbo v0, "vibrator"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v3

    goto :goto_0

    :cond_0
    move p0, v2

    :goto_0
    sput p0, Lcom/android/systemui/util/DeviceType;->supportVibrator:I

    :cond_1
    sget p0, Lcom/android/systemui/util/DeviceType;->supportVibrator:I

    if-ne p0, v3, :cond_2

    move v2, v3

    :cond_2
    return v2
.end method

.method public static isWeaverDevice()Z
    .locals 4

    sget v0, Lcom/android/systemui/util/DeviceType;->supportWeaver:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "security.securehw.available"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput v0, Lcom/android/systemui/util/DeviceType;->supportWeaver:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isWeaverDevice : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/android/systemui/util/DeviceType;->supportWeaver:I

    const-string v3, "DeviceType"

    invoke-static {v1, v3, v0}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_0
    sget v0, Lcom/android/systemui/util/DeviceType;->supportWeaver:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    move v2, v1

    :cond_1
    return v2
.end method

.method public static isWiFiOnlyDevice()Z
    .locals 2

    sget v0, Lcom/android/systemui/util/DeviceType;->supportWifiOnly:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "ro.carrier"

    const-string/jumbo v1, "unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "wifi-only"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput v0, Lcom/android/systemui/util/DeviceType;->supportWifiOnly:I

    :cond_0
    sget v0, Lcom/android/systemui/util/DeviceType;->supportWifiOnly:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isWifiOnly()Z
    .locals 2

    const-string/jumbo v0, "ro.carrier"

    const-string/jumbo v1, "unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "wifi-only"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
