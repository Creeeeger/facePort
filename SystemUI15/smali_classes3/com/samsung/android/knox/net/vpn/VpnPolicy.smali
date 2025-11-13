.class public Lcom/samsung/android/knox/net/vpn/VpnPolicy;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static TAG:Ljava/lang/String; = "VpnPolicy"


# instance fields
.field public lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

.field public mContextInfo:Lcom/samsung/android/knox/ContextInfo;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method


# virtual methods
.method public allowOnlySecureConnections(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "VpnPolicy.allowOnlySecureConnections"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->allowOnlySecureConnections(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed at Vpn policy API allowOnlySecureConnections "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public allowUserAddProfiles(Z)Z
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->allowUserAddProfiles(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to communicate with Vpn Policy service"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public allowUserChangeProfiles(Z)Z
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->allowUserChangeProfiles(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to communicate with Vpn Policy service"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public allowUserSetAlwaysOn(Z)Z
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->allowUserSetAlwaysOn(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to communicate with Vpn Policy service"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public checkRacoonSecurity([Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->checkRacoonSecurity(Lcom/samsung/android/knox/ContextInfo;[Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed at Vpn policy API checkRacoonSecurity "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public createProfile(Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "VpnPolicy.createProfile"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->createProfile(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed at Vpn policy API createProfile"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public deleteProfile(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "VpnPolicy.deleteProfile"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->deleteProfile(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed at Vpn policy API deleteProfile"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public getAlwaysOnProfile()Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->getAlwaysOnProfile(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to communicate with Vpn Policy service"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, v0}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDnsDomains(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->getDnsDomains(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed at Vpn policy API getDnsDomains "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDnsServers(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->getDnsServers(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed at Vpn policy API getDnsServers "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getForwardRoutes(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->getForwardRoutes(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed at Vpn policy API getForwardRoutes "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getIPSecCaCertificate(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->getCaCertificate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed at Vpn policy API getCaCertificate"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getIPSecPreSharedKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->getPresharedKey(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed at Vpn policy API getSharedSecret"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getIPSecUserCertificate(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->getUserCertificate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed at Vpn policy API getCaCertificate"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "VpnPolicy.getId"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->getId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed at Vpn policy API getId"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getIpSecIdentifier(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->getIpSecIdentifier(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed at Vpn policy API getIpSecIdentifier "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getL2TPSecret(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->getL2TPSecret(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed at Vpn policy API getL2TPSecret "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getOcspServerUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->getOcspServerUrl(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed at Vpn policy API getOcspServerUrl "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getServerName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "VpnPolicy.getServerName"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->getServerName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed at Vpn policy API getServerName"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    if-nez v0, :cond_0

    const-string/jumbo v0, "vpn_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    return-object p0
.end method

.method public getState(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "VpnPolicy.getState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->getState(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed at Vpn policy API getState"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSupportedConnectionTypes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->getSupportedConnectionTypes(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed at Vpn policy API getSupportedConnectionTypes "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "VpnPolicy.getType"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->getType(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed at Vpn policy API getType"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getUserName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "VpnPolicy.getUserName"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->getUserName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getUserPassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "VpnPolicy.getUserPassword"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->getUserPwd(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getVpnList()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "VpnPolicy.getVpnList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->getVPNList(Lcom/samsung/android/knox/ContextInfo;)[Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed at Vpn policy API getVpnList"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isAdminProfile(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "VpnPolicy.isAdminProfile"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->getId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->isAdminProfile(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed at Vpn policy API isAdminProfile"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isL2TPSecretEnabled(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "VpnPolicy.isL2TPSecretEnabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->isL2TPSecretEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed at Vpn policy API isL2TPSecretEnabled "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isOnlySecureConnectionsAllowed()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "VpnPolicy.isOnlySecureConnectionsAllowed"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->isOnlySecureConnectionsAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed at Vpn policy API isOnlySecureConnectionsAllowed "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isPPTPEncryptionEnabled(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "VpnPolicy.isPPTPEncryptionEnabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->isPPTPEncryptionEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed at Vpn policy API getCaCertificate"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isUserAddProfilesAllowed()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->isUserAddProfilesAllowed(Z)Z

    move-result p0

    return p0
.end method

.method public isUserAddProfilesAllowed(Z)Z
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->isUserAddProfilesAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to communicate with Vpn Policy service"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isUserChangeProfilesAllowed()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->isUserChangeProfilesAllowed(Z)Z

    move-result p0

    return p0
.end method

.method public isUserChangeProfilesAllowed(Z)Z
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->isUserChangeProfilesAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to communicate with Vpn Policy service"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isUserSetAlwaysOnAllowed()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->isUserSetAlwaysOnAllowed(Z)Z

    move-result p0

    return p0
.end method

.method public isUserSetAlwaysOnAllowed(Z)Z
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->isUserSetAlwaysOnAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to communicate with Vpn Policy service"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public setAlwaysOnProfile(Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->setAlwaysOnProfile(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to communicate with Vpn Policy service"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setDnsDomains(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "VpnPolicy.setDnsDomains"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->setDnsDomains(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed at Vpn policy API setDnsDomains "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setDnsServers(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "VpnPolicy.setDnsServers"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->setDnsServers(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed at Vpn policy API setDnsServers "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setForwardRoutes(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "VpnPolicy.setForwardRoutes"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->setForwardRoutes(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed at Vpn policy API setForwardRoutes "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setIPSecCaCertificate(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "VpnPolicy.setIPSecCaCertificate"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->setCaCertificate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed at Vpn policy API setCaCertificate"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setIPSecPreSharedKey(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "VpnPolicy.setIPSecPreSharedKey"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->setPresharedKey(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed at Vpn policy API setSharedSecret"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setIPSecUserCertificate(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "VpnPolicy.setIPSecUserCertificate"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->setUserCertificate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed at Vpn policy API setCaCertificate"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "VpnPolicy.setId"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->setId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed at Vpn policy API setId"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setIpSecIdentifier(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "VpnPolicy.setIpSecIdentifier"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->setIpSecIdentifier(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed at Vpn policy API setIpSecIdentifier "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setL2TPSecret(Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "VpnPolicy.setL2TPSecret"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->setL2TPSecret(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed at Vpn policy API setL2TPSecret"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setOcspServerUrl(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "VpnPolicy.setOcspServerUrl"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->setOcspServerUrl(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed at Vpn policy API setOcspServerUrl "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setPPTPEncryptionEnabled(Ljava/lang/String;Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "VpnPolicy.setPPTPEncryptionEnabled"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->setEncryptionEnabledForPPTP(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed at Vpn policy API setCaCertificate"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setProfileName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "VpnPolicy.setProfileName"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->setName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed at Vpn policy API setName"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setServerName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "VpnPolicy.setServerName"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->setServerName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed at Vpn policy API setServerName"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setUserName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "VpnPolicy.setUserName"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->setUserName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed at Vpn policy API setServerName"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setUserPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "VpnPolicy.setUserPassword"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->setUserPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed at Vpn policy API setServerName"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
