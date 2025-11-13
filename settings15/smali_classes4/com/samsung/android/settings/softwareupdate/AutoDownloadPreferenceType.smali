.class public abstract enum Lcom/samsung/android/settings/softwareupdate/AutoDownloadPreferenceType;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/settings/softwareupdate/AutoDownloadPreferenceType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/settings/softwareupdate/AutoDownloadPreferenceType;

.field public static final enum AUTO_DOWNLOAD:Lcom/samsung/android/settings/softwareupdate/AutoDownloadPreferenceType;

.field public static final enum AUTO_DOWNLOAD_OVER_WIFI:Lcom/samsung/android/settings/softwareupdate/AutoDownloadPreferenceType;

.field public static final enum NOTHING:Lcom/samsung/android/settings/softwareupdate/AutoDownloadPreferenceType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/settings/softwareupdate/AutoDownloadPreferenceType$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/softwareupdate/AutoDownloadPreferenceType$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/softwareupdate/AutoDownloadPreferenceType;->AUTO_DOWNLOAD_OVER_WIFI:Lcom/samsung/android/settings/softwareupdate/AutoDownloadPreferenceType;

    new-instance v1, Lcom/samsung/android/settings/softwareupdate/AutoDownloadPreferenceType$2;

    invoke-direct {v1}, Lcom/samsung/android/settings/softwareupdate/AutoDownloadPreferenceType$2;-><init>()V

    sput-object v1, Lcom/samsung/android/settings/softwareupdate/AutoDownloadPreferenceType;->AUTO_DOWNLOAD:Lcom/samsung/android/settings/softwareupdate/AutoDownloadPreferenceType;

    new-instance v2, Lcom/samsung/android/settings/softwareupdate/AutoDownloadPreferenceType$3;

    invoke-direct {v2}, Lcom/samsung/android/settings/softwareupdate/AutoDownloadPreferenceType$3;-><init>()V

    sput-object v2, Lcom/samsung/android/settings/softwareupdate/AutoDownloadPreferenceType;->NOTHING:Lcom/samsung/android/settings/softwareupdate/AutoDownloadPreferenceType;

    filled-new-array {v0, v1, v2}, [Lcom/samsung/android/settings/softwareupdate/AutoDownloadPreferenceType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/softwareupdate/AutoDownloadPreferenceType;->$VALUES:[Lcom/samsung/android/settings/softwareupdate/AutoDownloadPreferenceType;

    return-void
.end method

.method public static of(Landroid/content/Context;)Lcom/samsung/android/settings/softwareupdate/AutoDownloadPreferenceType;
    .locals 8

    sget-object v0, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v0

    invoke-static {p0}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateUtils;->getDataSimSlotId(Landroid/content/Context;)I

    move-result v1

    const-string v2, "CarrierFeature_SyncML_EnableNotiDeltaBinarySizeBeforeDownload"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/samsung/android/feature/SemCarrierFeature;->getBoolean(ILjava/lang/String;ZZ)Z

    move-result v0

    sget-object v1, Lcom/samsung/android/settings/softwareupdate/AutoDownloadPreferenceType;->NOTHING:Lcom/samsung/android/settings/softwareupdate/AutoDownloadPreferenceType;

    const-string v4, "SoftwareUpdateSettings"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Disable both auto download menus. isEnableNotiDeltaBinarySizeBeforeDownload : "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v5

    invoke-static {p0}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateUtils;->getDataSimSlotId(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {v5, p0, v2, v3, v3}, Lcom/samsung/android/feature/SemCarrierFeature;->getBoolean(ILjava/lang/String;ZZ)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v0

    invoke-static {p0}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateUtils;->getDataSimSlotId(Landroid/content/Context;)I

    move-result v2

    const-string v5, "CarrierFeature_SyncML_ConfigDefStatusAutoDownload"

    const-string/jumbo v6, "wifi"

    invoke-virtual {v0, v2, v5, v6, v3}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "remove"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "Disable both auto download menus. needToRemoveAutoDownloadMenu : "

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v7

    invoke-static {p0}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateUtils;->getDataSimSlotId(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {v7, p0, v5, v6, v3}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v3, 0x1

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_2
    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->isWifiDedicated(Landroid/content/Context;)Z

    move-result v0

    sget-object v1, Lcom/samsung/android/settings/softwareupdate/AutoDownloadPreferenceType;->AUTO_DOWNLOAD_OVER_WIFI:Lcom/samsung/android/settings/softwareupdate/AutoDownloadPreferenceType;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Enable Auto download over Wi-Fi menu. isWifiDedicated : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->isWifiDedicated(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_3
    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->isShowMobileNetworkWarning(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Enable auto download over Wi-Fi menu. isShowMobileNetworkWarning : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->isShowMobileNetworkWarning(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_4
    const-string p0, "Enable auto download menu."

    invoke-static {v4, p0}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/samsung/android/settings/softwareupdate/AutoDownloadPreferenceType;->AUTO_DOWNLOAD:Lcom/samsung/android/settings/softwareupdate/AutoDownloadPreferenceType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/softwareupdate/AutoDownloadPreferenceType;
    .locals 1

    const-class v0, Lcom/samsung/android/settings/softwareupdate/AutoDownloadPreferenceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/softwareupdate/AutoDownloadPreferenceType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/settings/softwareupdate/AutoDownloadPreferenceType;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/softwareupdate/AutoDownloadPreferenceType;->$VALUES:[Lcom/samsung/android/settings/softwareupdate/AutoDownloadPreferenceType;

    invoke-virtual {v0}, [Lcom/samsung/android/settings/softwareupdate/AutoDownloadPreferenceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/settings/softwareupdate/AutoDownloadPreferenceType;

    return-object v0
.end method


# virtual methods
.method public abstract getKey()Ljava/lang/String;
.end method

.method public abstract getSummary(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getTitleId()I
.end method

.method public abstract setDBAndLogging(Landroid/content/Context;I)V
.end method

.method public abstract updateDBIfNeeded(Landroid/content/Context;)V
.end method
