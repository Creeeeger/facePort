.class public Lcom/samsung/wifitrackerlib/WcmUtils;
.super Ljava/lang/Object;
.source "WcmUtils.java"


# static fields
.field private static isWcmSupported:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static getSnsCurrentMode(Lcom/samsung/android/wifi/SemWifiManager;)I
    .locals 0

    if-eqz p0, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiManager;->getCurrentStatusMode()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getSnsEverQualityTested(Lcom/samsung/android/wifi/SemWifiManager;)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    .line 62
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiManager;->getWcmEverQualityTested()I

    move-result p0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static isWcmSupported()Z
    .locals 4

    .line 38
    sget v0, Lcom/samsung/wifitrackerlib/WcmUtils;->isWcmSupported:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 41
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Wifi_ConfigSnsStatus"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "REMOVED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    sput v1, Lcom/samsung/wifitrackerlib/WcmUtils;->isWcmSupported:I

    .line 45
    :cond_0
    sput v2, Lcom/samsung/wifitrackerlib/WcmUtils;->isWcmSupported:I

    .line 47
    :cond_1
    sget v0, Lcom/samsung/wifitrackerlib/WcmUtils;->isWcmSupported:I

    if-ne v0, v2, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method
