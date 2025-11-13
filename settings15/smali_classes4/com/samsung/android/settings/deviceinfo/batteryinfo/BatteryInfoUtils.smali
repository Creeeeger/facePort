.class public abstract Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryInfoUtils;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final mBatteryCount:I

.field public static final mBatteryType:I

.field public static final mIsCountryUnderEcoRegulatory:Z

.field public static final mIsDetachableBatteryDevice:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "/sys/class/power_supply/sec_auth_3rd/qr_code"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryInfoUtils;->isExist(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x2

    if-nez v0, :cond_3

    const-string v0, "/sys/class/power_supply/sbp-fg-3/qr_code"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryInfoUtils;->isExist(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "/sys/class/power_supply/sec_auth_2nd/qr_code"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryInfoUtils;->isExist(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "/sys/class/power_supply/sbp-fg-2/qr_code"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryInfoUtils;->isExist(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_2

    :cond_2
    :goto_0
    move v0, v2

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x3

    :goto_2
    sput v0, Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryInfoUtils;->mBatteryCount:I

    const-string v0, "/sys/class/power_supply/sec_auth/qr_code"

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryInfoUtils;->isExist(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    move v2, v1

    goto :goto_3

    :cond_4
    const-string v0, "/sys/class/power_supply/sbp-fg/qr_code"

    invoke-static {v0, v3}, Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryInfoUtils;->isExist(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    move v2, v3

    :goto_3
    sput v2, Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryInfoUtils;->mBatteryType:I

    const-string v0, "SecDeviceInfoUtils"

    const-string v2, "csc region: "

    :try_start_0
    new-instance v4, Lcom/samsung/android/settings/csc/CscParser;

    invoke-static {}, Lcom/samsung/android/settings/csc/CscParser;->getCustomerPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/samsung/android/settings/csc/CscParser;-><init>(Ljava/lang/String;)V

    const-string v5, "GeneralInfo.Region"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "parse fail for getRegion "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, ""

    :goto_4
    const-string v0, "EUR"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/Utils;->readCountryCode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_5

    :cond_6
    move v1, v3

    :cond_7
    :goto_5
    const-string v0, "is Country Under Eco Regulatory = "

    const-string v2, "BatteryInfoUtils"

    invoke-static {v0, v2, v1}, Lcom/android/settings/AirplaneModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    sput-boolean v1, Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryInfoUtils;->mIsCountryUnderEcoRegulatory:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_ELECTRIC_RATED_VALUE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryInfoUtils;->mIsDetachableBatteryDevice:Z

    return-void
.end method

.method public static isExist(Ljava/lang/String;Z)Z
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    invoke-static {p0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    new-array v0, v0, [Ljava/nio/file/LinkOption;

    invoke-static {v1, v0}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "[isExist]path:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", result:"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BatteryInfoUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method
