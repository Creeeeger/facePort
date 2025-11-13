.class public abstract Lcom/android/settings/vpn2/VpnUtils;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static clearLockdownVpn(Landroid/content/Context;)V
    .locals 1

    const-string v0, "LOCKDOWN_VPN"

    invoke-static {v0}, Landroid/security/LegacyVpnProfileStore;->remove(Ljava/lang/String;)Z

    invoke-static {p0}, Lcom/android/settings/vpn2/VpnUtils;->getVpnManager(Landroid/content/Context;)Landroid/net/VpnManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/VpnManager;->updateLockdownVpn()Z

    return-void
.end method

.method public static disconnectLegacyVpn(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-static {p0}, Lcom/android/settings/vpn2/VpnUtils;->getVpnManager(Landroid/content/Context;)Landroid/net/VpnManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/VpnManager;->getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/android/settings/vpn2/VpnUtils;->clearLockdownVpn(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/android/settings/vpn2/VpnUtils;->getVpnManager(Landroid/content/Context;)Landroid/net/VpnManager;

    move-result-object p0

    const/4 v1, 0x0

    const-string v2, "[Legacy VPN]"

    invoke-virtual {p0, v1, v2, v0}, Landroid/net/VpnManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getLockdownVpn()Ljava/lang/String;
    .locals 2

    const-string v0, "LOCKDOWN_VPN"

    invoke-static {v0}, Landroid/security/LegacyVpnProfileStore;->get(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public static getVpnManager(Landroid/content/Context;)Landroid/net/VpnManager;
    .locals 1

    const-class v0, Landroid/net/VpnManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/VpnManager;

    return-object p0
.end method

.method public static isAnyLockdownActive(Landroid/content/Context;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-static {}, Lcom/android/settings/vpn2/VpnUtils;->getLockdownVpn()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-static {p0}, Lcom/android/settings/vpn2/VpnUtils;->getVpnManager(Landroid/content/Context;)Landroid/net/VpnManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/VpnManager;->getAlwaysOnVpnPackageForUser(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "always_on_vpn_lockdown"

    invoke-static {p0, v1, v3, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    return v2
.end method
