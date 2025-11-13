.class public Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation
.end field

.field public final mConfig:Lcom/android/internal/net/VpnConfig;

.field public final mRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/RouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;->this$0:Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/net/VpnConfig;

    invoke-direct {v0}, Lcom/android/internal/net/VpnConfig;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;->mAddresses:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;->mRoutes:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addAddress(Ljava/lang/String;I)Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;
    .locals 0

    invoke-static {p1}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;->addAddress(Ljava/net/InetAddress;I)Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;

    move-result-object p0

    return-object p0
.end method

.method public addAddress(Ljava/net/InetAddress;I)Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;
    .locals 2

    invoke-static {}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->checkIfAdminHasVpnPermission()Z

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v1, "GenericVpnService.addAddress"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->check(Ljava/net/InetAddress;I)V

    invoke-virtual {p1}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;->mAddresses:Ljava/util/List;

    new-instance v1, Landroid/net/LinkAddress;

    invoke-direct {v1, p1, p2}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Bad address"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addAllowedApplication(Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    return-object p0
.end method

.method public addDisallowedApplication(Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    return-object p0
.end method

.method public addDnsServer(Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;
    .locals 0

    invoke-static {p1}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;->addDnsServer(Ljava/net/InetAddress;)Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;

    move-result-object p0

    return-object p0
.end method

.method public addDnsServer(Ljava/net/InetAddress;)Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;
    .locals 2

    invoke-static {}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->checkIfAdminHasVpnPermission()Z

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v1, "GenericVpnService.addDnsServer"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Bad address"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addRoute(Ljava/lang/String;I)Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;
    .locals 0

    invoke-static {p1}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;->addRoute(Ljava/net/InetAddress;I)Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;

    move-result-object p0

    return-object p0
.end method

.method public addRoute(Ljava/net/InetAddress;I)Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;
    .locals 4

    invoke-static {}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->checkIfAdminHasVpnPermission()Z

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v1, "GenericVpnService.addRoute"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->check(Ljava/net/InetAddress;I)V

    div-int/lit8 v0, p2, 0x8

    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-byte v2, v1, v0

    rem-int/lit8 v3, p2, 0x8

    shl-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-byte v2, v1, v0

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Bad address"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;->mRoutes:Ljava/util/List;

    new-instance v1, Landroid/net/RouteInfo;

    new-instance v2, Landroid/net/IpPrefix;

    invoke-direct {v2, p1, p2}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-direct {v1, v2, p1, p1, p2}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addSearchDomain(Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;
    .locals 2

    invoke-static {}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->checkIfAdminHasVpnPermission()Z

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v1, "GenericVpnService.addSearchDomain"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public allowBypass()Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;
    .locals 2

    invoke-static {}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->checkIfAdminHasVpnPermission()Z

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v1, "GenericVpnService.allowBypass"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/net/VpnConfig;->allowBypass:Z

    return-object p0
.end method

.method public allowFamily(I)Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->checkIfAdminHasVpnPermission()Z

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v1, "GenericVpnService.allowFamily"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget v0, Landroid/system/OsConstants;->AF_INET:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iput-boolean v1, p1, Lcom/android/internal/net/VpnConfig;->allowIPv4:Z

    goto :goto_0

    :cond_0
    sget v2, Landroid/system/OsConstants;->AF_INET6:I

    if-ne p1, v2, :cond_1

    iget-object p1, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iput-boolean v1, p1, Lcom/android/internal/net/VpnConfig;->allowIPv6:Z

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is neither "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " nor "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public establish()Landroid/os/ParcelFileDescriptor;
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->checkIfAdminHasVpnPermission()Z

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v1, "GenericVpnService.establish"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "establish is getting called : mVpnProfileName value is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->mVpnProfileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "config session value is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    const-string v2, "GenericVpnService"

    invoke-static {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;->mAddresses:Ljava/util/List;

    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;->mRoutes:Ljava/util/List;

    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->getService()Landroid/net/IVpnManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->getService()Landroid/net/IVpnManager;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    invoke-interface {v0, p0}, Landroid/net/IVpnManager;->establishVpn(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "VPN establish failed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setBlocking(Z)Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;
    .locals 2

    invoke-static {}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->checkIfAdminHasVpnPermission()Z

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v1, "GenericVpnService.setBlocking"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iput-boolean p1, v0, Lcom/android/internal/net/VpnConfig;->blocking:Z

    return-object p0
.end method

.method public setConfigureIntent(Landroid/app/PendingIntent;)Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;
    .locals 2

    invoke-static {}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->checkIfAdminHasVpnPermission()Z

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v1, "GenericVpnService.setConfigureIntent"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iput-object p1, v0, Lcom/android/internal/net/VpnConfig;->configureIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public setMtu(I)Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;
    .locals 2

    invoke-static {}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->checkIfAdminHasVpnPermission()Z

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v1, "GenericVpnService.setMtu"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iput p1, v0, Lcom/android/internal/net/VpnConfig;->mtu:I

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Bad mtu"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setSession(Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;
    .locals 2

    invoke-static {}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->checkIfAdminHasVpnPermission()Z

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v1, "GenericVpnService.setSession"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iput-object p1, v0, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    return-object p0
.end method
