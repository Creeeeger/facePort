.class public final Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mIsAllowedInEdp:Z

.field public mIsConsentedToUseNetwork:Z

.field public mIsMainSyncOn:Z

.field public mIsPersonalInfoOn:Z

.field public mIsUserAgreesPolicyNotice:Z

.field public mSetting:Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSettingV2;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;->mIsMainSyncOn:Z

    return-void
.end method


# virtual methods
.method public final setRpcSettings(Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSettingV2;)V
    .locals 4

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;->mSetting:Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSettingV2;

    iget-object p1, p1, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSettingV2;->iSyncSetting:Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;

    invoke-virtual {p1}, Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;->getProfile()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "precondition"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    and-int/lit16 v1, p1, 0x200

    const/16 v2, 0x200

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;->mIsUserAgreesPolicyNotice:Z

    and-int/lit16 v1, p1, 0x1000

    const/16 v2, 0x1000

    if-eq v1, v2, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_2
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;->mIsConsentedToUseNetwork:Z

    and-int/lit16 v1, p1, 0x100

    const/16 v2, 0x100

    if-eq v1, v2, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v0

    :goto_3
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;->mIsPersonalInfoOn:Z

    const/16 v1, 0x300

    and-int/2addr p1, v1

    if-eq p1, v1, :cond_4

    move v0, v3

    :cond_4
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;->mIsAllowedInEdp:Z

    return-void
.end method
