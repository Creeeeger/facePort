.class public Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final DBG:Z

.field public static final ERROR_SUPPORTED_VERSION:F = 2.4f

.field public static final INVALID_CONTAINER_ID:I = 0x0

.field public static final KEY_TETHER_AUTH_LOGIN_PAGE:Ljava/lang/String; = "key-tether-auth-login-page"

.field public static final KEY_TETHER_AUTH_RESPONSE_PAGE:Ljava/lang/String; = "key-tether-auth-response-page"

.field public static final KEY_TETHER_CAPTIVE_PORTAL_ALIAS:Ljava/lang/String; = "key-tether-captive-portal-alias"

.field public static final KEY_TETHER_CAPTIVE_PORTAL_CERTIFICATE:Ljava/lang/String; = "key-tether-captive-portal-certificate"

.field public static final KEY_TETHER_CAPTIVE_PORTAL_CERT_PASSWORD:Ljava/lang/String; = "key-tether-captive-portal-cert-password"

.field public static final KEY_TETHER_CA_ALIAS:Ljava/lang/String; = "key-tether-ca-alias"

.field public static final KEY_TETHER_CA_CERTIFICATE:Ljava/lang/String; = "key-tether-ca-certificate"

.field public static final KEY_TETHER_CA_CERT_PASSWORD:Ljava/lang/String; = "key-tether-ca-cert-password"

.field public static final KEY_TETHER_CLIENT_CERTIFICATE_ISSUED_CN:Ljava/lang/String; = "key-tether-client-certificate-issued-cn"

.field public static final KEY_TETHER_CLIENT_CERTIFICATE_ISSUER_CN:Ljava/lang/String; = "key-tether-client-certificate-issuer-cn"

.field public static final KEY_TETHER_USER_ALIAS:Ljava/lang/String; = "key-tether-user-alias"

.field public static final KEY_TETHER_USER_CERTIFICATE:Ljava/lang/String; = "key-tether-user-certificate"

.field public static final KEY_TETHER_USER_CERT_PASSWORD:Ljava/lang/String; = "key-tether-user-cert-password"

.field public static final KNOX_SDK_VERSION_CHARACTER:Ljava/lang/String; = "KNOX_ENTERPRISE_SDK_VERSION_"

.field public static TAG:Ljava/lang/String; = "GenericVpnPolicy"

.field public static VPN_RETURN_BOOL_ERROR:Z = false

.field public static VPN_RETURN_INT_ERROR:I = -0x1

.field public static VPN_RETURN_INT_SUCCESS:I

.field public static genericVpnObjectMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;",
            ">;"
        }
    .end annotation
.end field

.field public static mContext:Landroid/content/Context;

.field public static mEnterpriseDeviceManager:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

.field public static mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;


# instance fields
.field public vendorName:Ljava/lang/String;

.field public vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->DBG:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mContext:Landroid/content/Context;

    sput-object v0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mEnterpriseDeviceManager:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->genericVpnObjectMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    iput-object v0, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vendorName:Ljava/lang/String;

    sput-object p1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mContext:Landroid/content/Context;

    sget-boolean p1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->DBG:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GenericVpnPolicy ctor : vendorName = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput-object p2, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    iput-object v0, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vendorName:Ljava/lang/String;

    sput-object p1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mContext:Landroid/content/Context;

    sget-boolean p1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->DBG:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string v0, "GenericVpnPolicy ctor : vendorName = "

    invoke-static {v0, p2, p1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput-object p2, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vendorName:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;)Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;
    .locals 8

    const-string v0, "GenericVpnPolicy getInstance : bindSuccess = "

    const-string v1, "GenericVpnPolicy getInstance : vendorName = "

    const-class v2, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;

    monitor-enter v2

    :try_start_0
    iget-object v3, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    iget v4, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-static {v3, v4}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    sget-boolean v5, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->DBG:Z

    if-eqz v5, :cond_0

    sget-object v6, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_0
    :goto_0
    const/4 v1, 0x0

    if-eqz v4, :cond_4

    :try_start_1
    const-class v6, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;

    monitor-enter v6
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v7, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->genericVpnObjectMap:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->genericVpnObjectMap:Ljava/util/HashMap;

    invoke-virtual {p0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_1
    new-instance v7, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;

    invoke-direct {v7, p0, p1}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;-><init>(Landroid/content/Context;Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;)V

    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->genericVpnObjectMap:Ljava/util/HashMap;

    invoke-virtual {p0, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p0, v7

    :goto_1
    if-eqz p0, :cond_3

    const-string v7, "com.android.settings"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    move-result-object v7

    invoke-interface {v7, p1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->bindKnoxVpnInterface(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;)Z

    move-result p1

    if-eqz v5, :cond_2

    sget-object v5, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-nez p1, :cond_3

    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->genericVpnObjectMap:Ljava/util/HashMap;

    invoke-virtual {p0, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p0, v1

    :cond_3
    monitor-exit v6

    move-object v1, p0

    goto :goto_3

    :goto_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw p0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_0
    move-exception p0

    :try_start_4
    sget-object p1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GenericVpnPolicy getInstance : returning null for vendorName = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; Exception = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_4
    :goto_3
    monitor-exit v2

    return-object v1

    :goto_4
    monitor-exit v2

    throw p0
.end method

.method public static getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    if-nez v0, :cond_0

    const-string v0, "knox_vpn_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    :cond_0
    sget-boolean v0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->DBG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "KnoxVpnPolicy getService : mKnoxVpnPolicyService = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    return-object v0
.end method

.method public static getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public activateVpnProfile(Ljava/lang/String;Z)I
    .locals 4

    const-string/jumbo v0, "startActivityAsUser  KnoxVpnPPDialog userId = "

    const/4 v1, -0x1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v3, "GenericVpnPolicy.activateVpnProfile"

    invoke-static {v2, v3}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    invoke-interface {v2, p0, p1, p2}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->activateVpnProfile(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;Z)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_2

    const/4 p0, 0x1

    if-ne p2, p0, :cond_2

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    const-string p2, "com.android.vpndialogs"

    const-string v2, "com.android.vpndialogs.KnoxVpnPPDialog"

    invoke-virtual {p0, p2, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x50800000

    invoke-virtual {p0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object p2, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_2

    sget-object p2, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p2, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p2, p0, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string p1, "activateVpnProfile >> mEnterpriseResponseData == null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string p1, "activateVpnProfile >> mService == null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Failed at GenericVpnPolicy API activateVpnProfile-Exception"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return v1
.end method

.method public addAllContainerPackagesToVpn(ILjava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, -0x1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v2, "GenericVpnPolicy.addAllContainerPackagesToVpn"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    invoke-interface {v1, p0, p1, p2}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->addAllContainerPackagesToVpn(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;ILjava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getFailureState()I

    move-result p1

    const/16 p2, 0xb

    if-eq p1, p2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string p1, "The container id entered is invalid and throwing an exception"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string p1, "addAllContainerPackagesToVpn > mEnterpriseResponseData == null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string p1, "addAllContainerPackagesToVpn > mService == null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Failed at GenericVpnPolicy API addAllContainerPackagesToVpn-Exception"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return v0
.end method

.method public addAllPackagesToVpn(Ljava/lang/String;)I
    .locals 3

    const/4 v0, -0x1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v2, "GenericVpnPolicy.addAllPackagesToVpn"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    invoke-interface {v1, p0, p1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->addAllPackagesToVpn(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string p1, "addAllPackagesToVpn > mEnterpriseResponseData == null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string p1, "addAllPackagesToVpn > mService == null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception at GenericVpnPolicy API addAllPackagesToVpn:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, p1}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return v0
.end method

.method public addContainerPackagesToVpn(I[Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, -0x1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v2, "GenericVpnPolicy.addContainerPackagesToVpn"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    invoke-interface {v1, p0, p1, p2, p3}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->addContainerPackagesToVpn(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;I[Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getFailureState()I

    move-result p1

    const/16 p2, 0xb

    if-eq p1, p2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string p1, "The container id entered is invalid and throwing an exception"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string p1, "addContainerPackageToVpn > mEnterpriseResponseData == null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string p1, "addContainerPackageToVpn > mService == null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Failed at GenericVpnPolicy API addContainerPackageToVpn-Exception"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return v0
.end method

.method public addPackagesToVpn([Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const/4 v0, -0x1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v2, "GenericVpnPolicy.addPackagesToVpn"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    invoke-interface {v1, p0, p1, p2}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->addPackagesToVpn(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;[Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string p1, "addPackageToVpn > mEnterpriseResponseData == null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string p1, "addPackageToVpn > mService == null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Failed at GenericVpnPolicy API addPackagetoDatabase-Exception"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return v0
.end method

.method public allowUsbTetheringOverVpn(Ljava/lang/String;ZLandroid/os/Bundle;)I
    .locals 3

    const/16 v0, 0x64

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v2, "GenericVpnPolicy.allowUsbTetheringOverVpn"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    if-eqz p2, :cond_3

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/os/Bundle;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroid/os/Bundle;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    sget-object p2, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    invoke-interface {p2, p0, p1, p3}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->allowAuthUsbTetheringOverVpn(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result p0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    move p0, v0

    goto :goto_2

    :cond_2
    :goto_0
    sget-object p2, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    invoke-interface {p2, p0, p1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->allowNoAuthUsbTetheringOverVpn(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)I

    move-result p0

    goto :goto_2

    :cond_3
    sget-object p2, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    invoke-interface {p2, p0, p1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->disallowUsbTetheringOverVpn(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)I

    move-result p0

    goto :goto_2

    :cond_4
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string p1, "KVES not started"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p0, 0x6e

    goto :goto_2

    :goto_1
    sget-object p1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Exception at GenericVpnPolicy API allowUsbTetheringOverVpn:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/16 p0, 0x65

    :goto_2
    if-ne p0, v0, :cond_5

    sget p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->VPN_RETURN_INT_SUCCESS:I

    :cond_5
    const/16 p1, 0x8d

    if-eq p0, p1, :cond_6

    return p0

    :cond_6
    new-instance p0, Ljava/lang/SecurityException;

    invoke-direct {p0}, Ljava/lang/SecurityException;-><init>()V

    throw p0
.end method

.method public createVpnProfile(Ljava/lang/String;)I
    .locals 3

    sget v0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->VPN_RETURN_INT_ERROR:I

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v2, "GenericVpnPolicy.createVpnProfile"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    invoke-interface {v1, p0, p1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->createVpnProfile(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string p1, "createVpnProfile Error> mEnterpriseResponseData == null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string p1, "createVpnProfile Error > mService == null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed at GenericVpnPolicy API createVpnProfile-Exception"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, p1}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    const/16 p0, 0x8d

    if-eq v0, p0, :cond_2

    return v0

    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    invoke-direct {p0}, Ljava/lang/SecurityException;-><init>()V

    throw p0
.end method

.method public getAllContainerPackagesInVpnProfile(ILjava/lang/String;)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->getAllContainerPackagesInVpnProfile(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;ILjava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getFailureState()I

    move-result p1

    const/16 p2, 0xb

    if-eq p1, p2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getFailureState()I

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string p1, "The container id entered is invalid and throwing an exception"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string p1, "getAllContainerPackagesInVpnProfile > mEnterpriseResponseData == null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string p1, "getAllContainerPackagesInVpnProfile > mService == null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed at EnterpriseContainerManager API getAllContainerPackagesInVpnProfile "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAllPackagesInVpnProfile(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->getAllPackagesInVpnProfile(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getFailureState()I

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string p1, "getAllPackagesInVpnProfile > mEnterpriseResponseData == null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string p1, "getAllPackagesInVpnProfile > mService == null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed at EnterpriseContainerManager API getAllPackagesInVpnProfile "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAllVpnProfiles()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    invoke-interface {v1, p0}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->getAllVpnProfiles(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getFailureState()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    move-object v0, p0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string v1, "getAllVpnProfiles > mEnterpriseResponseData == null"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string v1, "getAllVpnProfiles > mService == null"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object v1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed at GenericVpnPolicy API getAllVpnProfiles-Exception"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2, v1}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-object v0
.end method

.method public getCACertificate(Ljava/lang/String;)Lcom/samsung/android/knox/keystore/CertificateInfo;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    invoke-interface {v1, p0, p1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->getCACertificate(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getFailureState()I

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/keystore/CertificateInfo;

    move-object v0, p0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string p1, "getCACertificate > mEnterpriseResponseData == null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string p1, "getCACertificate > mService == null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed at GenericVpnPolicy API getCACertificate-Exception"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, p1}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-object v0
.end method

.method public getErrorString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    move-result-object v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    invoke-interface {v1, p0, p1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->getErrorString(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getStatus()I

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getStatus()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    goto :goto_2

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string p1, "getErrorString > mEnterpriseResponseData == null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string p1, "getErrorString > mService == null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    sget-object p1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed at GenericVpnPolicy API getErrorString-Exception"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, p1}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-object v0
.end method

.method public getNotificationDismissibleFlag(I)I
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    invoke-interface {v1, p0, p1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->getNotificationDismissibleFlag(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;I)I

    move-result v0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string p1, "getNotificationDismissibleFlag > mService == null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed at GenericVpnPolicy API getNotificationDismissibleFlag-Exception"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, p1}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return v0
.end method

.method public getState(Ljava/lang/String;)I
    .locals 3

    const/4 v0, -0x1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    invoke-interface {v1, p0, p1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->getState(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string p1, "getState >> mEnterpriseResponseData == null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string p1, "getState >> mService == null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed at GenericVpnPolicy API getState-Exception"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, p1}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return v0
.end method

.method public getUserCertificate(Ljava/lang/String;)Lcom/samsung/android/knox/keystore/CertificateInfo;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    invoke-interface {v1, p0, p1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->getUserCertificate(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getFailureState()I

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/keystore/CertificateInfo;

    move-object v0, p0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string p1, "getUserCertificate > mEnterpriseResponseData == null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string p1, "getUserCertificate > mService == null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed at GenericVpnPolicy API getUserCertificate-Exception"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, p1}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-object v0
.end method

.method public getVpnModeOfOperation(Ljava/lang/String;)I
    .locals 3

    const/4 v0, -0x1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    invoke-interface {v1, p0, p1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->getVpnModeOfOperation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getFailureState()I

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string p1, "getVpnModeOfOperation > mEnterpriseResponseData == null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string p1, "getVpnModeOfOperation > mService == null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed at GenericVpnPolicy API getVpnModeOfOperation-Exception"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, p1}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return v0
.end method

.method public getVpnProfile(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    invoke-interface {v1, p0, p1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->getVpnProfile(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getFailureState()I

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string p1, "getVpnProfile Error> mEnterpriseResponseData == null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string p1, "getVpnProfile Error > mService == null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed at GenericVpnPolicy API getVpnProfile-Exception"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, p1}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-object v0
.end method

.method public isUsbTetheringOverVpnEnabled(Ljava/lang/String;)I
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v1, "GenericVpnPolicy.isUsbTetheringOverVpnEnabled"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->isUsbTetheringOverVpnEnabled(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)I

    move-result p0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string p1, "KVES not started"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p0, 0x6e

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception at GenericVpnPolicy API isUsbTetheringOverVpnEnabled:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/16 p0, 0x65

    :goto_1
    const/16 p1, 0x64

    if-ne p0, p1, :cond_1

    sget p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->VPN_RETURN_INT_SUCCESS:I

    :cond_1
    const/16 p1, 0x8d

    if-eq p0, p1, :cond_2

    return p0

    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    invoke-direct {p0}, Ljava/lang/SecurityException;-><init>()V

    throw p0
.end method

.method public removeAllContainerPackagesFromVpn(ILjava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, -0x1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v2, "GenericVpnPolicy.removeAllContainerPackagesFromVpn"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    invoke-interface {v1, p0, p1, p2}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->removeAllContainerPackagesFromVpn(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;ILjava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getFailureState()I

    move-result p1

    const/16 p2, 0xb

    if-eq p1, p2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string p1, "The container id entered is invalid and throwing an exception"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "removeAllContainerPackagesFromVpn > mEnterpriseResponseData == null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "removeAllContainerPackagesFromVpn > mService == null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Exception at GenericVpnPolicy API removeAllContainerPackagesFromVpn:"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return v0
.end method

.method public removeAllPackagesFromVpn(Ljava/lang/String;)I
    .locals 3

    const/4 v0, -0x1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v2, "GenericVpnPolicy.removeAllPackagesFromVpn"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    invoke-interface {v1, p0, p1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->removeAllPackagesFromVpn(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "removeAllPackagesFromVpn > mEnterpriseResponseData == null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "removeAllPackagesFromVpn > mService == null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception at GenericVpnPolicy API removeAllPackagesFromVpn:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, p1}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return v0
.end method

.method public removeContainerPackagesFromVpn(I[Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, -0x1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v2, "GenericVpnPolicy.removeContainerPackagesFromVpn"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    invoke-interface {v1, p0, p1, p2, p3}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->removeContainerPackagesFromVpn(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;I[Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getFailureState()I

    move-result p1

    const/16 p2, 0xb

    if-eq p1, p2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string p1, "The container id entered is invalid and throwing an exception"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "removeContainerPackageFromVpn > mEnterpriseResponseData == null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "removeContainerPackageFromVpn > mService == null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Exception at GenericVpnPolicy API removeContainerPackageFromVpn:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return v0
.end method

.method public removePackagesFromVpn([Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const/4 v0, -0x1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v2, "GenericVpnPolicy.removePackagesFromVpn"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    invoke-interface {v1, p0, p1, p2}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->removePackagesFromVpn(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;[Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "removePackageFromVpn > mEnterpriseResponseData == null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "removePackageFromVpn > mService == null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Exception at GenericVpnPolicy API removePackageFromVpn:"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return v0
.end method

.method public removeVpnProfile(Ljava/lang/String;)I
    .locals 3

    sget v0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->VPN_RETURN_INT_ERROR:I

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v2, "GenericVpnPolicy.removeVpnProfile"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    invoke-interface {v1, p0, p1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->removeVpnProfile(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "removeVpnProfile\u00a0 Error> mEnterpriseResponseData == null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "removeVpnProfile\u00a0 Error > mService == null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed at GenericVpnPolicy API removeVpnProfile\u00a0-Exception"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, p1}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return v0
.end method

.method public setAutoRetryOnConnectionError(Ljava/lang/String;Z)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v2, "GenericVpnPolicy.setAutoRetryOnConnectionError"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    invoke-interface {v1, p0, p1, p2}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->setAutoRetryOnConnectionError(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;Z)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getFailureState()I

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "setAutoRetryOnConnection Error > mEnterpriseResponseData == null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "setAutoRetryOnConnection Error > mService == null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Failed at GenericVpnPolicy API setAutoRetryOnConnectionError-Exception"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return v0
.end method

.method public setCACertificate(Ljava/lang/String;[B)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v2, "GenericVpnPolicy.setCACertificate"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    invoke-interface {v1, p0, p1, p2}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->setCACertificate(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;[B)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getFailureState()I

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "setCACertificate > mEnterpriseResponseData == null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "setCACertificate > mService == null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Failed at GenericVpnPolicy API setCACertificate-Exception"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return v0
.end method

.method public setNotificationDismissibleFlag(Ljava/lang/String;II)I
    .locals 2

    const/4 v0, -0x1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    invoke-interface {v1, p0, p1, p2, p3}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->setNotificationDismissibleFlag(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;II)I

    move-result v0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "setNotificationDismissibleFlag > mService == null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Failed at GenericVpnPolicy API setNotificationDismissibleFlag-Exception"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return v0
.end method

.method public setServerCertValidationUserAcceptanceCriteria(Ljava/lang/String;ZLjava/util/List;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)Z"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v2, "GenericVpnPolicy.setServerCertValidationUserAcceptanceCriteria"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    iget-object v4, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    move v8, p4

    invoke-interface/range {v3 .. v8}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->setServerCertValidationUserAcceptanceCriteria(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;ZLjava/util/List;I)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getFailureState()I

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "setServerCertValidationUserAcceptanceCriteria Error > mEnterpriseResponseData == null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "setServerCertValidationUserAcceptanceCriteria Error > mService == null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Failed at GenericVpnPolicy API setServerCertValidationUserAcceptanceCriteria-Exception"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return v0
.end method

.method public setUserCertificate(Ljava/lang/String;[BLjava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v2, "GenericVpnPolicy.setUserCertificate"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    invoke-interface {v1, p0, p1, p2, p3}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->setUserCertificate(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;[BLjava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getFailureState()I

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "setUserCertificate > mEnterpriseResponseData == null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "setUserCertificate > mService == null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Failed at GenericVpnPolicy API setUserCertificate-Exception"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return v0
.end method

.method public setVpnModeOfOperation(Ljava/lang/String;I)I
    .locals 3

    const/4 v0, -0x1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v2, "GenericVpnPolicy.setVpnModeOfOperation"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    invoke-interface {v1, p0, p1, p2}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->setVpnModeOfOperation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;I)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getFailureState()I

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "setVpnModeOfOperation > mEnterpriseResponseData == null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "setVpnModeOfOperation > mService == null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Failed at GenericVpnPolicy API setVpnModeOfOperation-Exception"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return v0
.end method
