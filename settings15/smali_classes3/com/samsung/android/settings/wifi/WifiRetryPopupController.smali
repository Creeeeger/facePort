.class public final Lcom/samsung/android/settings/wifi/WifiRetryPopupController;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final DBG:Z


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDisableReason:I

.field public final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiRetryPopupController;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiRetryPopupController;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiRetryPopupController;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method public static isSecurityTypeSupportRetry(Lcom/android/wifitrackerlib/WifiEntry;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity$1()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v3, 0x2

    if-eq v1, v3, :cond_5

    const/4 v4, 0x5

    if-ne v1, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x3

    if-eq v1, v4, :cond_2

    const/4 v4, 0x7

    if-ne v1, v4, :cond_4

    :cond_2
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    if-eqz p0, :cond_4

    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result p0

    if-eqz p0, :cond_3

    if-eq p0, v3, :cond_3

    if-ne p0, v2, :cond_4

    :cond_3
    move v0, v2

    :cond_4
    return v0

    :cond_5
    :goto_0
    return v2

    :cond_6
    :goto_1
    return v0
.end method


# virtual methods
.method public final checkToShowRetryForIncorrectPasswordLength(Lcom/android/wifitrackerlib/WifiEntry;)Z
    .locals 6

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity$1()I

    move-result p1

    const/16 v2, 0x40

    const/4 v3, 0x1

    if-eq p1, v3, :cond_2

    const/4 v4, 0x2

    if-eq p1, v4, :cond_1

    const/4 v4, 0x5

    if-eq p1, v4, :cond_1

    goto :goto_2

    :cond_1
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-le p1, v2, :cond_5

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget p1, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    if-ltz p1, :cond_3

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v5, v4

    if-ge p1, v5, :cond_3

    aget-object p1, v4, p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "WEP key is abnormal - "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getProfileKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "WifiSettings.retry"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-le p1, v2, :cond_5

    :goto_1
    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/settings/wifi/WifiRetryPopupController;->mDisableReason:I

    return v3

    :cond_5
    :goto_2
    return v1
.end method

.method public final isAllowToShowDialogForRetry(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiRetryPopupController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "WifiSettings.retry"

    if-nez v0, :cond_0

    const-string p0, "not allowed to show retry - mContext is NULL"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-static {v0, p1}, Lcom/android/settings/wifi/WifiUtils;->isNetworkLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiRetryPopupController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->getDeviceOwner(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    const-string p0, "not allowed to show retry - isNetworkLockedDown"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiRetryPopupController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedToShowRetryDialog(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "not allowed to show retry - WifiDevicePolicyManager"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method
