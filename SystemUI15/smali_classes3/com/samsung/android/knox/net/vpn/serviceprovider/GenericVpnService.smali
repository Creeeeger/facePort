.class public Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;
.super Landroid/app/Service;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.net.VpnService"

.field public static final SYSTEM_VPN:Z = true

.field public static final TAG:Ljava/lang/String; = "GenericVpnService"

.field public static mVpnProfileName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static check(Ljava/net/InetAddress;I)V
    .locals 2

    invoke-virtual {p0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-nez v0, :cond_4

    instance-of v0, p0, Ljava/net/Inet4Address;

    const-string v1, "Bad prefixLength"

    if-eqz v0, :cond_1

    if-ltz p1, :cond_0

    const/16 p0, 0x20

    if-gt p1, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    instance-of p0, p0, Ljava/net/Inet6Address;

    if-eqz p0, :cond_3

    if-ltz p1, :cond_2

    const/16 p0, 0x80

    if-gt p1, p0, :cond_2

    :goto_0
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unsupported family"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Bad address"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static checkIfAdminHasVpnPermission()Z
    .locals 4

    const-string v0, "GenericVpnService"

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const-string v2, "com.samsung.android.knox.permission.KNOX_NETWORK_TRAFFIC_AGENT"

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception: checkIfAdminHasVpnPermission "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v0}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No permission grants found for UID "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " does not have com.samsung.android.knox.permission.KNOX_NETWORK_TRAFFIC_AGENT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getService()Landroid/net/IVpnManager;
    .locals 1

    const-string/jumbo v0, "vpn_management"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IVpnManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IVpnManager;

    move-result-object v0

    return-object v0
.end method

.method public static prepare(Landroid/content/Context;Ljava/lang/String;ZZ)Landroid/content/Intent;
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->checkIfAdminHasVpnPermission()Z

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v1, "GenericVpnService.prepare"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "prepare is getting called "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "isconnecting value is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "type value is "

    const-string v2, "GenericVpnService"

    invoke-static {v0, p3, v1, p2, v2}, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    instance-of v1, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;

    if-eqz v1, :cond_2

    sput-object p1, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->mVpnProfileName:Ljava/lang/String;

    check-cast p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;->isMetaEnabled()Z

    move-result p0

    if-nez p3, :cond_1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->getService()Landroid/net/IVpnManager;

    move-result-object p3

    invoke-interface {p3, p1, p0}, Landroid/net/IVpnManager;->prepareEnterpriseVpnExt(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Exception in prepare : "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x1

    if-ne p2, p0, :cond_1

    invoke-static {}, Lcom/android/internal/net/VpnConfig;->getIntentForConfirmation()Landroid/content/Intent;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const-string p0, "Invalid profile name or context passed in prepare()"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method


# virtual methods
.method public addAddress(Ljava/net/InetAddress;I)Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->checkIfAdminHasVpnPermission()Z

    new-instance p0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v0, "GenericVpnService.addAddress"

    invoke-static {p0, v0}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->check(Ljava/net/InetAddress;I)V

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->getService()Landroid/net/IVpnManager;

    move-result-object p0

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Landroid/net/IVpnManager;->addVpnAddress(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "android.net.VpnService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Callback;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Callback;-><init>(Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;I)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onRevoke()V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method public protect(I)Z
    .locals 2

    const-string/jumbo p0, "protect is not going to be called for "

    invoke-static {}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->checkIfAdminHasVpnPermission()Z

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v1, "GenericVpnService.protect"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->getService()Landroid/net/IVpnManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->getService()Landroid/net/IVpnManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/net/IVpnManager;->getChainingEnabledForProfile(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/android/internal/net/NetworkUtilsInternal;->protectFromVpn(I)Z

    move-result p0

    return p0

    :cond_0
    const-string p1, "GenericVpnService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-static {p1}, Lcom/android/internal/net/NetworkUtilsInternal;->protectFromVpn(I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public protect(Ljava/net/DatagramSocket;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/net/DatagramSocket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->protect(I)Z

    move-result p0

    return p0
.end method

.method public protect(Ljava/net/Socket;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/net/Socket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->protect(I)Z

    move-result p0

    return p0
.end method

.method public removeAddress(Ljava/net/InetAddress;I)Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->checkIfAdminHasVpnPermission()Z

    new-instance p0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v0, "GenericVpnService.removeAddress"

    invoke-static {p0, v0}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->check(Ljava/net/InetAddress;I)V

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->getService()Landroid/net/IVpnManager;

    move-result-object p0

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Landroid/net/IVpnManager;->removeVpnAddress(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
