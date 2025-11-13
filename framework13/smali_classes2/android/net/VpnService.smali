.class public Landroid/net/VpnService;
.super Landroid/app/Service;
.source "VpnService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/VpnService$Builder;,
        Landroid/net/VpnService$Callback;
    }
.end annotation


# static fields
.field private static final blacklist DBG:Z

.field private static final blacklist FAST_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.fast"

.field private static final blacklist KNOXGUARD_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.kgclient"

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.net.VpnService"

.field public static final whitelist SERVICE_META_DATA_SUPPORTS_ALWAYS_ON:Ljava/lang/String; = "android.net.VpnService.SUPPORTS_ALWAYS_ON"

.field private static final blacklist SYSTEM_VPN:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "VpnService"

.field private static blacklist mIsKGClientPackageInstalled:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetmIsKGClientPackageInstalled()Z
    .locals 1

    sget-boolean v0, Landroid/net/VpnService;->mIsKGClientPackageInstalled:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smcheck(Ljava/net/InetAddress;I)V
    .locals 0

    invoke-static {p0, p1}, Landroid/net/VpnService;->check(Ljava/net/InetAddress;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smcheckNonPrefixBytes(Ljava/net/InetAddress;I)V
    .locals 0

    invoke-static {p0, p1}, Landroid/net/VpnService;->checkNonPrefixBytes(Ljava/net/InetAddress;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smgetService()Landroid/net/IVpnManager;
    .locals 1

    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IVpnManager;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 209
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Landroid/net/VpnService;->DBG:Z

    .line 215
    const/4 v0, 0x0

    sput-boolean v0, Landroid/net/VpnService;->mIsKGClientPackageInstalled:Z

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 145
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private static greylist-max-o check(Ljava/net/InetAddress;I)V
    .locals 2
    .param p0, "address"    # Ljava/net/InetAddress;
    .param p1, "prefixLength"    # I

    .line 585
    invoke-virtual {p0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-nez v0, :cond_4

    .line 588
    instance-of v0, p0, Ljava/net/Inet4Address;

    const-string v1, "Bad prefixLength"

    if-eqz v0, :cond_1

    .line 589
    if-ltz p1, :cond_0

    const/16 v0, 0x20

    if-gt p1, v0, :cond_0

    goto :goto_0

    .line 590
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 592
    :cond_1
    instance-of v0, p0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_3

    .line 593
    if-ltz p1, :cond_2

    const/16 v0, 0x80

    if-gt p1, v0, :cond_2

    .line 599
    :goto_0
    return-void

    .line 594
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 597
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported family"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 586
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad address"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist checkNonPrefixBytes(Ljava/net/InetAddress;I)V
    .locals 3
    .param p0, "address"    # Ljava/net/InetAddress;
    .param p1, "prefixLength"    # I

    .line 602
    new-instance v0, Landroid/net/IpPrefix;

    invoke-direct {v0, p0, p1}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    .line 603
    .local v0, "prefix":Landroid/net/IpPrefix;
    invoke-virtual {v0}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 606
    return-void

    .line 604
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Bad address"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist getService()Landroid/net/IVpnManager;
    .locals 1

    .line 205
    nop

    .line 206
    const-string/jumbo v0, "vpn_management"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 205
    invoke-static {v0}, Landroid/net/IVpnManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IVpnManager;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist isKGClientPackageInstalled(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 242
    const-string v0, "com.samsung.android.kgclient"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 244
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 245
    const-string v3, "android"

    invoke-virtual {v1, v3, v0}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    .line 246
    return v2

    .line 250
    :cond_0
    goto :goto_0

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "VpnService"

    const-string v3, "Exception occured while calling packageManager.getPackageInfo"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist isSecureWifiPackage(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 160
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.fast"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 162
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    const-string v2, "android"

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 163
    const/4 v1, 0x1

    return v1

    .line 165
    :cond_0
    const-string v1, "VpnService"

    const-string v2, "Secure Wi-Fi signature mismatched"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    .end local v0    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist prepare(Landroid/content/Context;)Landroid/content/Intent;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .line 280
    invoke-static {p0}, Landroid/net/VpnService;->isKGClientPackageInstalled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    const/4 v0, 0x1

    sput-boolean v0, Landroid/net/VpnService;->mIsKGClientPackageInstalled:Z

    .line 286
    :cond_0
    instance-of v0, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 287
    const-string v0, "VpnService"

    const-string v2, "prepare function with generic vpn context is called for knox vpn profile"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    move-object v2, p0

    check-cast v2, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;

    .line 289
    .local v2, "knoxVPNContext":Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;
    invoke-virtual {v2}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;->getVPNProfile()Ljava/lang/String;

    move-result-object v3

    .line 290
    .local v3, "profile":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;->getVPNState()Z

    move-result v4

    .line 291
    .local v4, "isConnecting":Z
    invoke-virtual {v2}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 292
    .local v5, "packageName":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;->isMetaEnabled()Z

    move-result v6

    .line 293
    .local v6, "isMetaEnabled":Z
    const/4 v7, 0x0

    .line 295
    .local v7, "profileType":I
    :try_start_0
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IVpnManager;

    move-result-object v8

    invoke-interface {v8, v3}, Landroid/net/IVpnManager;->knoxVpnProfileType(Ljava/lang/String;)I

    move-result v8

    move v7, v8

    .line 296
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IVpnManager;

    move-result-object v8

    invoke-interface {v8, v3, v6}, Landroid/net/IVpnManager;->prepareEnterpriseVpnExt(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    .line 297
    return-object v1

    .line 301
    :cond_1
    goto :goto_0

    .line 299
    :catch_0
    move-exception v8

    .line 300
    .local v8, "e":Landroid/os/RemoteException;
    const-string v9, "Exception occured while trying to prepare knox vpn profile"

    invoke-static {v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    .end local v8    # "e":Landroid/os/RemoteException;
    :goto_0
    if-nez v7, :cond_2

    invoke-static {}, Lcom/android/internal/net/VpnConfig;->getIntentForConfirmation()Landroid/content/Intent;

    move-result-object v1

    :cond_2
    return-object v1

    .line 307
    .end local v2    # "knoxVPNContext":Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;
    .end local v3    # "profile":Ljava/lang/String;
    .end local v4    # "isConnecting":Z
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "isMetaEnabled":Z
    .end local v7    # "profileType":I
    :cond_3
    invoke-static {p0}, Landroid/net/VpnService;->isSecureWifiPackage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 308
    invoke-static {}, Landroid/net/VpnService;->prepareAndAuthorizeVpnForFast()Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 312
    :cond_4
    :try_start_1
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IVpnManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-interface {v0, v2, v1, v3}, Landroid/net/IVpnManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v0, :cond_5

    .line 313
    return-object v1

    .line 317
    :cond_5
    goto :goto_1

    .line 315
    :catch_1
    move-exception v0

    .line 318
    :goto_1
    invoke-static {}, Lcom/android/internal/net/VpnConfig;->getIntentForConfirmation()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist prepareAndAuthorize(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 338
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IVpnManager;

    move-result-object v0

    .line 339
    .local v0, "vm":Landroid/net/IVpnManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 342
    .local v1, "packageName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 343
    .local v2, "userId":I
    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Landroid/net/IVpnManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 344
    invoke-interface {v0, v3, v1, v2}, Landroid/net/IVpnManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 346
    :cond_0
    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/net/IVpnManager;->setVpnPackageAuthorization(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    .end local v2    # "userId":I
    goto :goto_0

    .line 347
    :catch_0
    move-exception v2

    .line 350
    :goto_0
    return-void
.end method

.method private static blacklist prepareAndAuthorizeVpnForFast()Landroid/content/Intent;
    .locals 5

    .line 225
    const-string v0, "com.samsung.android.fast"

    :try_start_0
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IVpnManager;

    move-result-object v1

    .line 227
    .local v1, "vm":Landroid/net/IVpnManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 228
    .local v2, "userId":I
    const/4 v3, 0x0

    invoke-interface {v1, v0, v3, v2}, Landroid/net/IVpnManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 229
    invoke-interface {v1, v3, v0, v2}, Landroid/net/IVpnManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 231
    :cond_0
    const/4 v4, 0x1

    invoke-interface {v1, v0, v2, v4}, Landroid/net/IVpnManager;->setVpnPackageAuthorization(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    return-object v3

    .line 233
    .end local v1    # "vm":Landroid/net/IVpnManager;
    .end local v2    # "userId":I
    :catch_0
    move-exception v0

    .line 236
    invoke-static {}, Lcom/android/internal/net/VpnConfig;->getIntentForConfirmation()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public greylist-max-o addAddress(Ljava/net/InetAddress;I)Z
    .locals 2
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "prefixLength"    # I

    .line 429
    invoke-static {p1, p2}, Landroid/net/VpnService;->check(Ljava/net/InetAddress;I)V

    .line 431
    :try_start_0
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IVpnManager;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/net/IVpnManager;->addVpnAddress(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 432
    :catch_0
    move-exception v0

    .line 433
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final whitelist isAlwaysOn()Z
    .locals 2

    .line 515
    :try_start_0
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IVpnManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/net/IVpnManager;->isCallerCurrentAlwaysOnVpnApp()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 516
    :catch_0
    move-exception v0

    .line 517
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public final whitelist isLockdownEnabled()Z
    .locals 2

    .line 530
    :try_start_0
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IVpnManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/net/IVpnManager;->isCallerCurrentAlwaysOnVpnLockdownApp()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 531
    :catch_0
    move-exception v0

    .line 532
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 546
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.net.VpnService"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 547
    new-instance v1, Landroid/net/VpnService$Callback;

    invoke-direct {v1, p0, v0}, Landroid/net/VpnService$Callback;-><init>(Landroid/net/VpnService;Landroid/net/VpnService$Callback-IA;)V

    return-object v1

    .line 549
    :cond_0
    return-object v0
.end method

.method public whitelist onRevoke()V
    .locals 0

    .line 564
    invoke-virtual {p0}, Landroid/net/VpnService;->stopSelf()V

    .line 565
    return-void
.end method

.method public whitelist protect(I)Z
    .locals 3
    .param p1, "socket"    # I

    .line 369
    :try_start_0
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IVpnManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 370
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IVpnManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/net/IVpnManager;->getChainingEnabledForProfile(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 371
    invoke-static {p1}, Lcom/android/internal/net/NetworkUtilsInternal;->protectFromVpn(I)Z

    move-result v0

    return v0

    .line 373
    :cond_0
    sget-boolean v0, Landroid/net/VpnService;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "VpnService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "protect is not going to be called for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 379
    :cond_2
    invoke-static {p1}, Lcom/android/internal/net/NetworkUtilsInternal;->protectFromVpn(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 382
    :catch_0
    move-exception v0

    .line 383
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist protect(Ljava/net/DatagramSocket;)Z
    .locals 1
    .param p1, "socket"    # Ljava/net/DatagramSocket;

    .line 406
    invoke-virtual {p1}, Ljava/net/DatagramSocket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/VpnService;->protect(I)Z

    move-result v0

    return v0
.end method

.method public whitelist protect(Ljava/net/Socket;)Z
    .locals 1
    .param p1, "socket"    # Ljava/net/Socket;

    .line 395
    invoke-virtual {p1}, Ljava/net/Socket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/VpnService;->protect(I)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o removeAddress(Ljava/net/InetAddress;I)Z
    .locals 2
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "prefixLength"    # I

    .line 459
    invoke-static {p1, p2}, Landroid/net/VpnService;->check(Ljava/net/InetAddress;I)V

    .line 461
    :try_start_0
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IVpnManager;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/net/IVpnManager;->removeVpnAddress(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 462
    :catch_0
    move-exception v0

    .line 463
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist setUnderlyingNetworks([Landroid/net/Network;)Z
    .locals 2
    .param p1, "networks"    # [Landroid/net/Network;

    .line 501
    :try_start_0
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IVpnManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/net/IVpnManager;->setUnderlyingNetworksForVpn([Landroid/net/Network;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 502
    :catch_0
    move-exception v0

    .line 503
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
