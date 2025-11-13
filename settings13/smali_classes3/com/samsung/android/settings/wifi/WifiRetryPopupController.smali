.class public Lcom/samsung/android/settings/wifi/WifiRetryPopupController;
.super Ljava/lang/Object;
.source "WifiRetryPopupController.java"


# static fields
.field private static final DBG:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDisableReason:I

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public static synthetic $r8$lambda$xuG7_jGbjAyyn_71F9CvWb_w6LA(ILandroid/net/wifi/WifiConfiguration;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/WifiRetryPopupController;->lambda$getWifiConfiguration$0(ILandroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 50
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiRetryPopupController;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiRetryPopupController;->mContext:Landroid/content/Context;

    const-string v0, "wifi"

    .line 58
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiRetryPopupController;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method private getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 179
    sget-boolean p0, Lcom/samsung/android/settings/wifi/WifiRetryPopupController;->DBG:Z

    if-eqz p0, :cond_0

    const-string p0, "WifiSettings.retry"

    const-string p1, "No connecting config to show retry popup"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0

    .line 182
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiRetryPopupController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/samsung/android/settings/wifi/WifiRetryPopupController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/samsung/android/settings/wifi/WifiRetryPopupController$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 183
    invoke-interface {p0}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiConfiguration;

    return-object p0
.end method

.method private static synthetic lambda$getWifiConfiguration$0(ILandroid/net/wifi/WifiConfiguration;)Z
    .locals 0

    .line 182
    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public checkToShowRetryForIncorrectPasswordLength(Lcom/android/wifitrackerlib/WifiEntry;)Z
    .locals 6

    .line 106
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 110
    :cond_0
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    move-result p1

    const/16 v2, 0x40

    const/4 v3, 0x1

    if-eq p1, v3, :cond_3

    const/4 v4, 0x2

    if-eq p1, v4, :cond_2

    const/4 v4, 0x5

    if-eq p1, v4, :cond_2

    const/16 v4, 0x8

    if-eq p1, v4, :cond_2

    :cond_1
    move p1, v1

    goto :goto_1

    .line 121
    :cond_2
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-le p1, v2, :cond_1

    :goto_0
    move p1, v3

    goto :goto_1

    .line 112
    :cond_3
    invoke-static {v0}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->getWepKey(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_4

    .line 114
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WEP key is abnormal - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getProfileKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "WifiSettings.retry"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-le p1, v2, :cond_1

    goto :goto_0

    :goto_1
    if-eqz p1, :cond_5

    const/4 p1, -0x1

    .line 128
    iput p1, p0, Lcom/samsung/android/settings/wifi/WifiRetryPopupController;->mDisableReason:I

    return v3

    :cond_5
    return v1
.end method

.method public getDisableReason()I
    .locals 0

    .line 187
    iget p0, p0, Lcom/samsung/android/settings/wifi/WifiRetryPopupController;->mDisableReason:I

    return p0
.end method

.method public isAllowToShowDialogForRetry(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "WifiSettings.retry"

    if-nez p1, :cond_0

    const-string p0, "not allowed to show retry - no matched config"

    .line 157
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 160
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiRetryPopupController;->mContext:Landroid/content/Context;

    if-nez v2, :cond_1

    const-string p0, "not allowed to show retry - mContext is NULL"

    .line 161
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 164
    :cond_1
    invoke-static {v2, p1}, Lcom/android/settings/wifi/WifiUtils;->isNetworkLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 165
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiRetryPopupController;->mContext:Landroid/content/Context;

    .line 166
    invoke-static {p0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->getDeviceOwner(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p1

    .line 165
    invoke-static {p0, p1}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    const-string p0, "not allowed to show retry - isNetworkLockedDown"

    .line 167
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 170
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiRetryPopupController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedToShowRetryDialog(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "not allowed to show retry - WifiDevicePolicyManager"

    .line 171
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public isSecurityTypeSupportRetry(Lcom/android/wifitrackerlib/WifiEntry;)Z
    .locals 4

    const/4 p0, 0x0

    if-eqz p1, :cond_6

    .line 135
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 136
    :cond_0
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_5

    const/4 v3, 0x5

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x7

    if-ne v0, v3, :cond_4

    .line 144
    :cond_2
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 145
    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz p1, :cond_4

    .line 146
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result p1

    if-eqz p1, :cond_3

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_4

    :cond_3
    move p0, v1

    :cond_4
    return p0

    :cond_5
    :goto_0
    return v1

    :cond_6
    :goto_1
    return p0
.end method

.method public needRetryForActionConnectFailed(ILandroid/net/wifi/WifiConfiguration;)Z
    .locals 1

    const/16 v0, 0x2710

    if-ge p1, v0, :cond_2

    .line 63
    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/wifi/WifiRetryPopupController;->isAllowToShowDialogForRetry(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 64
    invoke-static {p2}, Lcom/android/wifitrackerlib/Utils;->isEnterpriseNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiRetryPopupController;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/android/wifitrackerlib/Utils;->getEapDisableReasonForSemWifiConfiguration(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    .line 67
    :goto_0
    iput p1, p0, Lcom/samsung/android/settings/wifi/WifiRetryPopupController;->mDisableReason:I

    goto :goto_1

    .line 69
    :cond_1
    iput p1, p0, Lcom/samsung/android/settings/wifi/WifiRetryPopupController;->mDisableReason:I

    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public needRetryForConfiguredNetworksChanged(I)Z
    .locals 4

    .line 78
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/WifiRetryPopupController;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "WifiSettings.retry"

    if-nez v0, :cond_0

    .line 80
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cannot find config for networkId "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 84
    :cond_0
    iget p1, v0, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    const/4 v3, -0x1

    if-eq p1, v3, :cond_1

    const-string p0, "Failed to show retry popup. It\'s default AP"

    .line 85
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 89
    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object p1

    .line 90
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionStatus()I

    move-result v3

    if-eqz v3, :cond_3

    .line 91
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    move-result p1

    const/4 v3, 0x2

    if-eq p1, v3, :cond_2

    const/4 v3, 0x5

    if-eq p1, v3, :cond_2

    const/16 v3, 0x8

    if-ne p1, v3, :cond_3

    .line 95
    :cond_2
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiRetryPopupController;->isAllowToShowDialogForRetry(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 96
    iput p1, p0, Lcom/samsung/android/settings/wifi/WifiRetryPopupController;->mDisableReason:I

    .line 97
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "configured network"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/settings/wifi/WifiRetryPopupController;->mDisableReason:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method
