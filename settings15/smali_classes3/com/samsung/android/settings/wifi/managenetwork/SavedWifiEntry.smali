.class public final Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntry;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mIsChecked:Z

.field public mIsRemovable:Ljava/lang/Boolean;

.field public final mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntry;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntry;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    return-void
.end method


# virtual methods
.method public final isRemovableNetwork()Ljava/lang/Boolean;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntry;->mIsRemovable:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntry;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->canForget()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntry;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/wifi/WifiUtils;->isBlockedByEnterprise(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntry;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->canModifyNetwork(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->semIsEphemeral()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, v0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;

    iget-boolean v0, v0, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->isLocked:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntry;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isShopDemo(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntry;->mIsRemovable:Ljava/lang/Boolean;

    return-object v0
.end method
