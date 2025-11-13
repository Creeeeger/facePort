.class public Lcom/samsung/android/knox/net/wifi/WifiPolicy;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final ENGINE_ID_SECPKCS11:Ljava/lang/String; = "secpkcs11"

.field public static final ENGINE_ID_UCMENGINE:Ljava/lang/String; = "ucsengine"

.field public static final SECURITY_LEVEL_EAP_AKA:I = 0x19

.field public static final SECURITY_LEVEL_EAP_AKA_CCKM:I = 0x1b

.field public static final SECURITY_LEVEL_EAP_AKA_FT:I = 0x1a

.field public static final SECURITY_LEVEL_EAP_AKA_PRIME:I = 0x1c

.field public static final SECURITY_LEVEL_EAP_AKA_PRIME_CCKM:I = 0x1e

.field public static final SECURITY_LEVEL_EAP_AKA_PRIME_FT:I = 0x1d

.field public static final SECURITY_LEVEL_EAP_FAST:I = 0x4

.field public static final SECURITY_LEVEL_EAP_FAST_CCKM:I = 0x12

.field public static final SECURITY_LEVEL_EAP_FAST_FT:I = 0x11

.field public static final SECURITY_LEVEL_EAP_LEAP:I = 0x3

.field public static final SECURITY_LEVEL_EAP_LEAP_CCKM:I = 0x10

.field public static final SECURITY_LEVEL_EAP_LEAP_FT:I = 0xf

.field public static final SECURITY_LEVEL_EAP_PEAP:I = 0x5

.field public static final SECURITY_LEVEL_EAP_PEAP_CCKM:I = 0xa

.field public static final SECURITY_LEVEL_EAP_PEAP_FT:I = 0x9

.field public static final SECURITY_LEVEL_EAP_PWD:I = 0x13

.field public static final SECURITY_LEVEL_EAP_PWD_CCKM:I = 0x15

.field public static final SECURITY_LEVEL_EAP_PWD_FT:I = 0x14

.field public static final SECURITY_LEVEL_EAP_SIM:I = 0x16

.field public static final SECURITY_LEVEL_EAP_SIM_CCKM:I = 0x18

.field public static final SECURITY_LEVEL_EAP_SIM_FT:I = 0x17

.field public static final SECURITY_LEVEL_EAP_TLS:I = 0x7

.field public static final SECURITY_LEVEL_EAP_TLS_CCKM:I = 0xe

.field public static final SECURITY_LEVEL_EAP_TLS_FT:I = 0xd

.field public static final SECURITY_LEVEL_EAP_TTLS:I = 0x6

.field public static final SECURITY_LEVEL_EAP_TTLS_CCKM:I = 0xc

.field public static final SECURITY_LEVEL_EAP_TTLS_FT:I = 0xb

.field public static final SECURITY_LEVEL_FT_PSK:I = 0x8

.field public static final SECURITY_LEVEL_OPEN:I = 0x0

.field public static final SECURITY_LEVEL_SAE:I = 0x1f

.field public static final SECURITY_LEVEL_WEP:I = 0x1

.field public static final SECURITY_LEVEL_WPA:I = 0x2

.field public static final SECURITY_TYPE_OPEN:Ljava/lang/String; = "Open"

.field public static final SECURITY_TYPE_SAE:Ljava/lang/String; = "SAE"

.field public static final SECURITY_TYPE_WPA2_PSK:Ljava/lang/String; = "WPA2_PSK"

.field public static final SECURITY_TYPE_WPA_PSK:Ljava/lang/String; = "WPA_PSK"

.field public static TAG:Ljava/lang/String; = "WifiPolicy"


# instance fields
.field public mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field public mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method


# virtual methods
.method public activateWifiSsidRestriction(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "WifiPolicy.activateWifiSsidRestriction"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->activateWifiSsidRestriction(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with wifi policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public addBlockedNetwork(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string p1, "WifiPolicy.addBlockedNetwork"

    invoke-static {p0, p1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public addNetworkWithRandomizationState(Landroid/net/wifi/WifiConfiguration;Z)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "WifiPolicy.addNetworkWithRandomizationState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->addNetworkWithRandomizationState(Landroid/net/wifi/WifiConfiguration;Z)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with wifi policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public addWifiSsidsToBlackList(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "WifiPolicy.addWifiSsidsToBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->addWifiSsidToBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with Wifi Policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public addWifiSsidsToWhiteList(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "WifiPolicy.addWifiSsidsToWhiteList(List<String>)"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->addWifiSsidToWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with Wifi policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public addWifiSsidsToWhiteList(Ljava/util/List;Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "WifiPolicy.addWifiSsidsToWhiteList(List<String>, boolean)"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->addWifiSsidsToBlackList(Ljava/util/List;)Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p2, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed to update wildCard in Blacklist, Wildcard may be already present!"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v2

    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->addWifiSsidsToWhiteList(Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz p2, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public allowOpenWifiAp(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "WifiPolicy.allowOpenWifiAp"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->allowOpenWifiAp(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with Wifi Policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public allowWifiApSettingUserModification(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "WifiPolicy.allowWifiApSettingUserModification"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->allowWifiApSettingUserModification(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with Wifi Policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public allowWifiScanning(ZLcom/samsung/android/knox/ContextInfo;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    invoke-interface {p0, p2, p1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->allowWifiScanning(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with wifi policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public clearWifiSsidsFromBlackList()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "WifiPolicy.clearWifiSsidsFromBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->clearWifiSsidBlackList(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with Wifi Policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public clearWifiSsidsFromList()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "WifiPolicy.clearWifiSsidsFromList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->clearWifiSsidsFromWhiteList()Z

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->clearWifiSsidsFromBlackList()Z

    move-result p0

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public clearWifiSsidsFromWhiteList()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "WifiPolicy.clearWifiSsidsFromWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->clearWifiSsidWhiteList(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with wifi policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getAllowUserPolicyChanges()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->getAllowUserPolicyChanges(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with getAllowUserPolicyChanges"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public getAllowUserProfiles(Z)Z
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getAllowUserProfilesInternal(ZI)Z

    move-result p0

    return p0
.end method

.method public getAllowUserProfilesInternal(ZI)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->getAllowUserProfiles(Lcom/samsung/android/knox/ContextInfo;ZI)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with getAllowUserProfiles"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public getAutomaticConnectionToWifi()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->getAutomaticConnectionToWifi(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with getAutomaticConnectionToWifi"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public getBlockedNetworks()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->getBlockedNetworks(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v1, "getBlockedNetworks - Failed talking with Wifi service"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    return-object p0
.end method

.method public getMinimumRequiredSecurity()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->getMinimumRequiredSecurity(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with getSupportedSecurity"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getNetworkSSIDList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "WifiPolicy.getNetworkSSIDList"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->getNetworkSSIDList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed at WiFi policy API getNetworkSSID"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    return-object p0
.end method

.method public getPasswordHidden()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->getPasswordHidden(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with getPasswordHidden"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getPromptCredentialsEnabled()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->getPromptCredentialsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with getPromptCredentialsEnabled"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    if-nez v0, :cond_0

    const-string/jumbo v0, "wifi_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    return-object p0
.end method

.method public getWifiApSetting()Landroid/net/wifi/WifiConfiguration;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->getWifiApSetting(Lcom/samsung/android/knox/ContextInfo;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with Wifi Policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWifiProfile(Ljava/lang/String;)Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->getWifiProfile(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed at WiFi policy API getWifiProfile"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWifiSsidsFromBlackLists()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/wifi/WifiControlInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->getAllWifiSsidBlackLists(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with Wifi policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWifiSsidsFromWhiteLists()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/wifi/WifiControlInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->getAllWifiSsidWhiteLists(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with wifi policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isNetworkBlocked(Ljava/lang/String;Z)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isOpenWifiApAllowed()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->isOpenWifiApAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with Wifi Policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isWifiAllowed(Z)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->isWifiAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with isWifiEnabled"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isWifiApSettingUserModificationAllowed()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->isWifiApSettingUserModificationAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with Wifi Policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isWifiScanningAllowed()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->isWifiScanningAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with wifi policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isWifiSsidRestrictionActive()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "WifiPolicy.isWifiSsidRestrictionActive"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->isWifiSsidRestrictionActive(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with wifi policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isWifiStateChangeAllowed()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->isWifiStateChangeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with isWifiEnabled"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public removeBlockedNetwork(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "WifiPolicy.removeBlockedNetwork"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->removeBlockedNetwork(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "removeBlockedNetwork - Failed talking with Wifi service"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public removeNetworkConfiguration(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "WifiPolicy.removeNetworkConfiguration"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->removeNetworkConfiguration(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed at WiFi policy API removeNetworkConfiguration"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public removeWifiSsidsFromBlackList(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "WifiPolicy.removeWifiSsidsFromBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->removeWifiSsidFromBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with Wifi Policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public removeWifiSsidsFromWhiteList(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "WifiPolicy.removeWifiSsidsFromWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->removeWifiSsidFromWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with wifi policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setAllowUserPolicyChanges(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "WifiPolicy.setAllowUserPolicyChanges"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->setAllowUserPolicyChanges(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with setAllowUserPolicyChanges"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setAllowUserProfiles(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "WifiPolicy.setAllowUserProfiles"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->setAllowUserProfiles(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with setAllowUserProfiles"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setAutomaticConnectionToWifi(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "WifiPolicy.setAutomaticConnectionToWifi"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->setAutomaticConnectionToWifi(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with setAutomaticConnectionToWifi"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setMinimumRequiredSecurity(I)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "WifiPolicy.setMinimumRequiredSecurity"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->setMinimumRequiredSecurity(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with setMinimumRequiredSecurity"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setPasswordHidden(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "WifiPolicy.setPasswordHidden"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->setPasswordHidden(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with setPasswordHidden"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setPromptCredentialsEnabled(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "WifiPolicy.setPromptCredentialsEnabled"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->setPromptCredentialsEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with setPromptCredentialsEnabled"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setWifi(Z)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->setWifi(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with setWifiEnabled"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setWifiAllowed(Z)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->setWifiAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with setWifiEnabled"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setWifiApSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "WifiPolicy.setWifiApSetting"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->setWifiApSetting(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with Wifi Policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setWifiProfile(Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "WifiPolicy.setWifiProfile"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget v0, Lcom/samsung/android/knox/KnoxInternalFeature;->KNOX_CONFIG_MDM_VERSION:I

    const/16 v1, 0x10

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->getStorageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    :cond_0
    const/16 v1, 0x11

    if-ge v0, v1, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyAuthConfigList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->setWifiProfile(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed at WiFi policy API setWifiProfile"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return v2
.end method

.method public setWifiStateChangeAllowed(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "WifiPolicy.setWifiStateChangeAllowed"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->setWifiStateChangeAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with setWifiEnabled"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
