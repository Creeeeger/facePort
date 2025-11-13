.class public Lcom/samsung/android/settings/vpn/bixby/VpnHelper;
.super Ljava/lang/Object;
.source "VpnHelper.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/net/VpnManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/samsung/android/settings/vpn/bixby/VpnHelper;->mContext:Landroid/content/Context;

    .line 36
    const-class v0, Landroid/net/VpnManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/VpnManager;

    iput-object p1, p0, Lcom/samsung/android/settings/vpn/bixby/VpnHelper;->mService:Landroid/net/VpnManager;

    return-void
.end method

.method protected static findVpnProfile(Ljava/lang/String;)Lcom/android/internal/net/VpnProfile;
    .locals 7

    .line 152
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "VPN_"

    .line 155
    invoke-static {v0}, Landroid/security/LegacyVpnProfileStore;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 156
    invoke-static {v5, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 157
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 158
    invoke-static {p0}, Landroid/security/LegacyVpnProfileStore;->get(Ljava/lang/String;)[B

    move-result-object p0

    .line 157
    invoke-static {v5, p0}, Lcom/android/internal/net/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;

    move-result-object p0

    if-eqz p0, :cond_2

    return-object p0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method protected static getVpnProfileNames(Ljava/util/List;)[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/net/VpnProfile;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 169
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 170
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 171
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private isConnected(Lcom/android/internal/net/VpnProfile;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    iget-object p0, p0, Lcom/samsung/android/settings/vpn/bixby/VpnHelper;->mService:Landroid/net/VpnManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/VpnManager;->getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 81
    iget-object p1, p1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    const/4 p1, 0x3

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected static loadVpnProfiles()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/net/VpnProfile;",
            ">;"
        }
    .end annotation

    .line 126
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "VPN_"

    .line 128
    invoke-static {v1}, Landroid/security/LegacyVpnProfileStore;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 129
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 130
    invoke-static {v6}, Landroid/security/LegacyVpnProfileStore;->get(Ljava/lang/String;)[B

    move-result-object v6

    .line 129
    invoke-static {v5, v6}, Lcom/android/internal/net/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 132
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 136
    :cond_1
    new-instance v1, Lcom/samsung/android/settings/vpn/bixby/VpnHelper$1;

    invoke-direct {v1}, Lcom/samsung/android/settings/vpn/bixby/VpnHelper$1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    return-object v0
.end method

.method protected static startVpnSettings(Landroid/app/Activity;)V
    .locals 2

    .line 177
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.VPN_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.settings"

    .line 178
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private updateLockdownVpn(ZLcom/android/internal/net/VpnProfile;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 44
    invoke-virtual {p2}, Lcom/android/internal/net/VpnProfile;->isValidLockdownProfile()Z

    move-result p1

    if-nez p1, :cond_0

    .line 45
    iget-object p0, p0, Lcom/samsung/android/settings/vpn/bixby/VpnHelper;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->vpn_lockdown_config_error:I

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 46
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 50
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/vpn/bixby/VpnHelper;->mService:Landroid/net/VpnManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1, v2}, Landroid/net/VpnManager;->setAlwaysOnVpnPackageForUser(ILjava/lang/String;ZLjava/util/List;)Z

    .line 52
    iget-object p0, p0, Lcom/samsung/android/settings/vpn/bixby/VpnHelper;->mContext:Landroid/content/Context;

    iget-object p1, p2, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/settings/vpn2/VpnUtils;->setLockdownVpn(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :cond_1
    iget-object p1, p2, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settings/vpn2/VpnUtils;->isVpnLockdown(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 56
    iget-object p0, p0, Lcom/samsung/android/settings/vpn/bixby/VpnHelper;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/vpn2/VpnUtils;->clearLockdownVpn(Landroid/content/Context;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method protected connect(Lcom/android/internal/net/VpnProfile;Z)Z
    .locals 4

    .line 87
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/vpn/bixby/VpnHelper;->disconnect(Lcom/android/internal/net/VpnProfile;)Z

    .line 90
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/settings/vpn/bixby/VpnHelper;->updateLockdownVpn(ZLcom/android/internal/net/VpnProfile;)V

    .line 94
    iget-object p2, p1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-static {p2}, Lcom/android/settings/vpn2/VpnUtils;->isVpnLockdown(Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 97
    iget-object p2, p0, Lcom/samsung/android/settings/vpn/bixby/VpnHelper;->mService:Landroid/net/VpnManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v2, v3, v2}, Landroid/net/VpnManager;->setAlwaysOnVpnPackageForUser(ILjava/lang/String;ZLjava/util/List;)Z

    .line 100
    iget-object p2, p0, Lcom/samsung/android/settings/vpn/bixby/VpnHelper;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/settings/vpn2/VpnUtils;->clearLockdownVpn(Landroid/content/Context;)V

    .line 102
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/vpn/bixby/VpnHelper;->mService:Landroid/net/VpnManager;

    invoke-virtual {p0, p1}, Landroid/net/VpnManager;->startLegacyVpn(Lcom/android/internal/net/VpnProfile;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p0

    const-string p1, "VpnHelper"

    const-string p2, "Failed to connect"

    .line 105
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3

    :cond_0
    return v0
.end method

.method public disconnect(Lcom/android/internal/net/VpnProfile;)Z
    .locals 1

    .line 69
    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/vpn/bixby/VpnHelper;->isConnected(Lcom/android/internal/net/VpnProfile;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 72
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/vpn/bixby/VpnHelper;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/vpn2/VpnUtils;->disconnectLegacyVpn(Landroid/content/Context;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "VpnHelper"

    const-string v0, "Failed to disconnect"

    .line 74
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method protected getConnectedVpnProfileKey()Ljava/lang/String;
    .locals 2

    .line 113
    iget-object p0, p0, Lcom/samsung/android/settings/vpn/bixby/VpnHelper;->mService:Landroid/net/VpnManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/VpnManager;->getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 114
    iget v0, p0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 115
    iget-object p0, p0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected isVpnLockdown(Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 121
    invoke-static {p1}, Lcom/android/settings/vpn2/VpnUtils;->isVpnLockdown(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
