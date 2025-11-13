.class public final Lcom/samsung/android/settings/vpn/bixby/VpnHelper;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mService:Landroid/net/VpnManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/vpn/bixby/VpnHelper;->mContext:Landroid/content/Context;

    const-class v0, Landroid/net/VpnManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/VpnManager;

    iput-object p1, p0, Lcom/samsung/android/settings/vpn/bixby/VpnHelper;->mService:Landroid/net/VpnManager;

    return-void
.end method

.method public static findVpnProfile(Ljava/lang/String;)Lcom/android/internal/net/VpnProfile;
    .locals 7

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "VPN_"

    invoke-static {v0}, Landroid/security/LegacyVpnProfileStore;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    invoke-static {v5, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/security/LegacyVpnProfileStore;->get(Ljava/lang/String;)[B

    move-result-object p0

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


# virtual methods
.method public final connect(Lcom/android/internal/net/VpnProfile;Z)Z
    .locals 5

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/vpn/bixby/VpnHelper;->disconnect(Lcom/android/internal/net/VpnProfile;)Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/net/VpnProfile;->isValidLockdownProfile()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/settings/vpn/bixby/VpnHelper;->mContext:Landroid/content/Context;

    const v3, 0x7f14320a

    invoke-static {p2, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/settings/vpn/bixby/VpnHelper;->mService:Landroid/net/VpnManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {p2, v3, v0, v1, v0}, Landroid/net/VpnManager;->setAlwaysOnVpnPackageForUser(ILjava/lang/String;ZLjava/util/List;)Z

    iget-object p2, p0, Lcom/samsung/android/settings/vpn/bixby/VpnHelper;->mContext:Landroid/content/Context;

    iget-object v3, p1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    const-string v4, "LOCKDOWN_VPN"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v4, v3}, Landroid/security/LegacyVpnProfileStore;->put(Ljava/lang/String;[B)Z

    invoke-static {p2}, Lcom/android/settings/vpn2/VpnUtils;->getVpnManager(Landroid/content/Context;)Landroid/net/VpnManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/VpnManager;->updateLockdownVpn()Z

    goto :goto_0

    :cond_1
    iget-object p2, p1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/vpn2/VpnUtils;->getLockdownVpn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/samsung/android/settings/vpn/bixby/VpnHelper;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/settings/vpn2/VpnUtils;->clearLockdownVpn(Landroid/content/Context;)V

    :cond_2
    :goto_0
    iget-object p2, p1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/vpn2/VpnUtils;->getLockdownVpn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/samsung/android/settings/vpn/bixby/VpnHelper;->mService:Landroid/net/VpnManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {p2, v3, v0, v1, v0}, Landroid/net/VpnManager;->setAlwaysOnVpnPackageForUser(ILjava/lang/String;ZLjava/util/List;)Z

    iget-object p2, p0, Lcom/samsung/android/settings/vpn/bixby/VpnHelper;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/settings/vpn2/VpnUtils;->clearLockdownVpn(Landroid/content/Context;)V

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/vpn/bixby/VpnHelper;->mService:Landroid/net/VpnManager;

    invoke-virtual {p0, p1}, Landroid/net/VpnManager;->startLegacyVpn(Lcom/android/internal/net/VpnProfile;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p0

    const-string p1, "VpnHelper"

    const-string p2, "Failed to connect"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    :cond_3
    return v2
.end method

.method public final disconnect(Lcom/android/internal/net/VpnProfile;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/vpn/bixby/VpnHelper;->mService:Landroid/net/VpnManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/VpnManager;->getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iget-object v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/vpn/bixby/VpnHelper;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/vpn2/VpnUtils;->disconnectLegacyVpn(Landroid/content/Context;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :goto_0
    const-string p1, "VpnHelper"

    const-string v0, "Failed to disconnect"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method
