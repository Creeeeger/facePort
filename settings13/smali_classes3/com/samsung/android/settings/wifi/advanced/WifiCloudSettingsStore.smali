.class public Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;
.super Ljava/lang/Object;
.source "WifiCloudSettingsStore.java"


# instance fields
.field private mIsConsentedToUseNetwork:Z

.field private mIsPersonalInfoOn:Z

.field private mSetting:Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRpcSettings()Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;->mSetting:Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;

    return-object p0
.end method

.method public isConsentedToUseNetwork()Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;->mIsConsentedToUseNetwork:Z

    return p0
.end method

.method public isPersonalInfo()Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;->mIsPersonalInfoOn:Z

    return p0
.end method

.method public rpcSettingDescription(Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;)Ljava/lang/String;
    .locals 2

    const-string p0, "com.android.settings.wifiprofilesync"

    .line 60
    invoke-virtual {p1, p0, p2}, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;->getProfile(Ljava/lang/String;Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;)Landroid/os/Bundle;

    move-result-object p0

    .line 61
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Sync profile - cloudDisplayName: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p2, Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;->cloudDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n serviceDiaplayName: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p2, Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;->serviceDiaplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n preCondition: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p2, Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;->preCondition:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n accountName: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p2, Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;->accountName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n authorityName: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p2, Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;->authorityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n lastUpdatedTime: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p2, Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;->lastUpdatedTime:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "\n isOn: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p2, Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;->isOn:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n usingNetworkOption: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;->usingNetworkOption:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\n status: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "rcode"

    .line 69
    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setConsentInfo(Z)V
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;->mIsConsentedToUseNetwork:Z

    return-void
.end method

.method public setPersonalInfo(Z)V
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;->mIsPersonalInfoOn:Z

    return-void
.end method

.method public setRpcSettings(Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;->mSetting:Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;

    return-void
.end method
