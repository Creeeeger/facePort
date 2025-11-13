.class public Lcom/samsung/android/knox/net/firewall/Firewall;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;,
        Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;,
        Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;,
        Lcom/samsung/android/knox/net/firewall/Firewall$Direction;,
        Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;
    }
.end annotation


# static fields
.field public static final ACTION_BLOCKED_DOMAIN:Ljava/lang/String; = "com.samsung.android.knox.intent.action.BLOCKED_DOMAIN"

.field public static final ADD_OPERATION:I = 0x1

.field public static final EXTRA_BLOCKED_DOMAIN_ISFOREGROUND:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.BLOCKED_DOMAIN_ISFOREGROUND"

.field public static final EXTRA_BLOCKED_DOMAIN_PACKAGENAME:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.BLOCKED_DOMAIN_PACKAGENAME"

.field public static final EXTRA_BLOCKED_DOMAIN_TIMESTAMP:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.BLOCKED_DOMAIN_TIMESTAMP"

.field public static final EXTRA_BLOCKED_DOMAIN_UID:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.BLOCKED_DOMAIN_UID"

.field public static final EXTRA_BLOCKED_DOMAIN_URL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.BLOCKED_DOMAIN_URL"

.field public static final FIREWALL_ALLOW_RULE:I = 0x1

.field public static final FIREWALL_ALL_DOMAIN_RULES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/firewall/DomainFilterRule;",
            ">;"
        }
    .end annotation
.end field

.field public static final FIREWALL_ALL_PACKAGES:Ljava/lang/String; = "*"

.field public static final FIREWALL_ALL_RULES:I = 0xf

.field public static final FIREWALL_DENY_RULE:I = 0x2

.field public static final FIREWALL_REDIRECT_EXCEPTION_RULE:I = 0x8

.field public static final FIREWALL_REDIRECT_RULE:I = 0x4

.field public static final FIREWALL_SYSTEM_UIDS:Ljava/lang/String; = "SYSTEM_UIDS"

.field public static final MAX_LIST_SIZE_IN_BYTES:I

.field public static final REMOVE_OPERATION:I = -0x1

.field public static TAG:Ljava/lang/String;

.field public static final mRand:Ljava/util/Random;


# instance fields
.field public mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field public mService:Lcom/samsung/android/knox/net/firewall/IFirewall;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/IBinder;->getSuggestedMaxIpcSizeBytes()I

    move-result v0

    sput v0, Lcom/samsung/android/knox/net/firewall/Firewall;->MAX_LIST_SIZE_IN_BYTES:I

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/knox/net/firewall/Firewall;->FIREWALL_ALL_DOMAIN_RULES:Ljava/util/List;

    const-string v0, "FirewallSDK"

    sput-object v0, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/net/firewall/Firewall;->mRand:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/samsung/android/knox/net/firewall/Firewall;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method public static generateToken()I
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/net/firewall/Firewall;->mRand:Ljava/util/Random;

    const v1, 0x7ffffffe

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public addDomainFilterRules(Ljava/util/List;)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/firewall/DomainFilterRule;",
            ">;)[",
            "Lcom/samsung/android/knox/net/firewall/FirewallResponse;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "Firewall.addDomainFilterRules"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addDomainFilterRules() - rules.size = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "0"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/net/firewall/Firewall;->evaluateAndProcessRules(Ljava/util/List;I)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object p0

    return-object p0
.end method

.method public addRules([Lcom/samsung/android/knox/net/firewall/FirewallRule;)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "Firewall.addRules"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addRules() - FirewallRule[].length = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    array-length v2, p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "0"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/Firewall;->getService()Lcom/samsung/android/knox/net/firewall/IFirewall;

    move-result-object v0

    if-eqz v0, :cond_2

    sget v0, Lcom/samsung/android/knox/KnoxInternalFeature;->KNOX_CONFIG_MDM_VERSION:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mService:Lcom/samsung/android/knox/net/firewall/IFirewall;

    iget-object p0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/firewall/IFirewall;->addRules(Lcom/samsung/android/knox/ContextInfo;[Lcom/samsung/android/knox/net/firewall/FirewallRule;)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    sget-object p0, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string p1, "addRules() - RemoteException at addRules method."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string p1, "Firewall.addRules() : This device doesn\'t support this API."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public clearRules(I)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "Firewall.clearRules"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "clearRules(bitmask = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/Firewall;->getService()Lcom/samsung/android/knox/net/firewall/IFirewall;

    move-result-object v0

    if-eqz v0, :cond_1

    sget v0, Lcom/samsung/android/knox/KnoxInternalFeature;->KNOX_CONFIG_MDM_VERSION:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mService:Lcom/samsung/android/knox/net/firewall/IFirewall;

    iget-object p0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/firewall/IFirewall;->clearRules(Lcom/samsung/android/knox/ContextInfo;I)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    sget-object p0, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string p1, "clearRules() - RemoteException at clearRules method."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string p1, "Firewall.clearRules() : This device doesn\'t support this API."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public enableDomainFilterOnIptables(Z)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "Firewall.enableDomainFilterOnIptables"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/Firewall;->getService()Lcom/samsung/android/knox/net/firewall/IFirewall;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v0, Lcom/samsung/android/knox/KnoxInternalFeature;->KNOX_CONFIG_MDM_VERSION:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mService:Lcom/samsung/android/knox/net/firewall/IFirewall;

    iget-object p0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/firewall/IFirewall;->enableDomainFilterOnIptables(Lcom/samsung/android/knox/ContextInfo;Z)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    sget-object p0, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string p1, "RemoteException at enableDomainFilterOnIptables method."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public enableDomainFilterReport(Z)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "enableDomainFilterReport"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "Firewall.enableDomainFilterReport"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/Firewall;->getService()Lcom/samsung/android/knox/net/firewall/IFirewall;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v0, Lcom/samsung/android/knox/KnoxInternalFeature;->KNOX_CONFIG_MDM_VERSION:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mService:Lcom/samsung/android/knox/net/firewall/IFirewall;

    iget-object p0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/firewall/IFirewall;->enableDomainFilterReport(Lcom/samsung/android/knox/ContextInfo;Z)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    sget-object p0, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string p1, "enableDomainFilterReport() - RemoteException at enableDomainFilterReport method."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public enableFirewall(Z)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "Firewall.enableFirewall"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "enableFirewall(enabled = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/Firewall;->getService()Lcom/samsung/android/knox/net/firewall/IFirewall;

    move-result-object v0

    if-eqz v0, :cond_1

    sget v0, Lcom/samsung/android/knox/KnoxInternalFeature;->KNOX_CONFIG_MDM_VERSION:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mService:Lcom/samsung/android/knox/net/firewall/IFirewall;

    iget-object p0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/firewall/IFirewall;->enableFirewall(Lcom/samsung/android/knox/ContextInfo;Z)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    sget-object p0, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string p1, "enableFirewall() - RemoteException at enableFirewall method."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string p1, "Firewall.enableFirewall() : This device doesn\'t support this API."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final evaluateAndProcessRules(Ljava/util/List;I)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/firewall/DomainFilterRule;",
            ">;I)[",
            "Lcom/samsung/android/knox/net/firewall/FirewallResponse;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/Firewall;->getService()Lcom/samsung/android/knox/net/firewall/IFirewall;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string p1, "evaluateAndProcessRules() - Error in getService()"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    sget v0, Lcom/samsung/android/knox/KnoxInternalFeature;->KNOX_CONFIG_MDM_VERSION:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_f

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/16 v3, 0x11

    const/4 v4, 0x0

    if-ge v0, v3, :cond_3

    if-eqz p1, :cond_3

    new-instance v0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;

    invoke-direct {v0}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;-><init>()V

    move v3, v4

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDns1()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDns2()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, v3, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    if-ne p2, v0, :cond_4

    if-nez p1, :cond_4

    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mService:Lcom/samsung/android/knox/net/firewall/IFirewall;

    iget-object p0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {p1, p0}, Lcom/samsung/android/knox/net/firewall/IFirewall;->clearAllDomainFilterRules(Lcom/samsung/android/knox/ContextInfo;)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object p0

    goto/16 :goto_3

    :cond_4
    if-eqz p1, :cond_e

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    goto/16 :goto_5

    :cond_5
    invoke-static {}, Lcom/samsung/android/knox/net/firewall/Firewall;->generateToken()I

    move-result v3

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;

    invoke-virtual {p0, v7}, Lcom/samsung/android/knox/net/firewall/Firewall;->pageableRule(Lcom/samsung/android/knox/net/firewall/DomainFilterRule;)Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_1

    :cond_6
    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v5, v4

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/2addr v5, v8

    sget v9, Lcom/samsung/android/knox/net/firewall/Firewall;->MAX_LIST_SIZE_IN_BYTES:I

    if-gt v5, v9, :cond_7

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    sget-object v5, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "evaluateAndProcessRules() SDK tokenValue: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;

    invoke-virtual {v10}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getIpcToken()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mService:Lcom/samsung/android/knox/net/firewall/IFirewall;

    iget-object v9, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v5, v9, v6, v3}, Lcom/samsung/android/knox/net/firewall/IFirewall;->populateDomainFilterBrokenRules(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;I)V

    sget-object v5, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "populateDomainFilterBrokenRules - rulePageable = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v8

    goto :goto_2

    :cond_8
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mService:Lcom/samsung/android/knox/net/firewall/IFirewall;

    iget-object v5, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {p1, v5, v6, v3}, Lcom/samsung/android/knox/net/firewall/IFirewall;->populateDomainFilterBrokenRules(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;I)V

    sget-object p1, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "populateDomainFilterBrokenRules() - rulePageable = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const/4 p1, 0x1

    if-ne p2, p1, :cond_a

    sget-object p1, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "populateDomainFilterBrokenRules() - Add Operation = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mService:Lcom/samsung/android/knox/net/firewall/IFirewall;

    iget-object p0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {p1, p0, v3}, Lcom/samsung/android/knox/net/firewall/IFirewall;->addDomainFilterRules(Lcom/samsung/android/knox/ContextInfo;I)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object p0

    goto :goto_3

    :cond_a
    if-ne p2, v0, :cond_d

    sget-object p1, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "populateDomainFilterBrokenRules() - Remove Operation = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mService:Lcom/samsung/android/knox/net/firewall/IFirewall;

    iget-object p0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {p1, p0, v3}, Lcom/samsung/android/knox/net/firewall/IFirewall;->removeDomainFilterRules(Lcom/samsung/android/knox/ContextInfo;I)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object p0

    :goto_3
    if-eqz p0, :cond_c

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_c

    :goto_4
    array-length p1, p0

    if-ge v4, p1, :cond_c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    new-instance p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object p2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v3, "DNS(s) not yet supported."

    invoke-direct {p1, p2, v0, v3}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object p1, p0, v4

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_c
    return-object p0

    :cond_d
    sget-object p0, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "populateDomainFilterBrokenRules() - Invalid Operation = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_e
    :goto_5
    sget-object p0, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string p1, "evaluateAndProcessRules() - No rule specified"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object p2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v0, "No rule was specified."

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    filled-new-array {p0}, [Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    sget-object p0, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string p1, "evaluateAndProcessRules() - RemoteException at evaluateAndProcessRules method"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_f
    sget-object p0, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string p1, "evaluateAndProcessRules() - Not supported"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    return-object v1
.end method

.method public getDomainFilterReport(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/firewall/DomainFilterReport;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "getDomainFilterReport"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/Firewall;->getService()Lcom/samsung/android/knox/net/firewall/IFirewall;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v0, Lcom/samsung/android/knox/KnoxInternalFeature;->KNOX_CONFIG_MDM_VERSION:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mService:Lcom/samsung/android/knox/net/firewall/IFirewall;

    iget-object p0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/firewall/IFirewall;->getDomainFilterReport(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p0, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string p1, "getDomainFilterReport() - RemoteException at getDomainFilterReport method."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getDomainFilterRules(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/firewall/DomainFilterRule;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/Firewall;->getService()Lcom/samsung/android/knox/net/firewall/IFirewall;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    sget v0, Lcom/samsung/android/knox/KnoxInternalFeature;->KNOX_CONFIG_MDM_VERSION:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_4

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/net/firewall/Firewall;->generateToken()I

    move-result v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mService:Lcom/samsung/android/knox/net/firewall/IFirewall;

    iget-object v3, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v3, p1, v0}, Lcom/samsung/android/knox/net/firewall/IFirewall;->getDomainFilterRules(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :catch_0
    move-object v1, v2

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;

    invoke-virtual {p0, v4, v2}, Lcom/samsung/android/knox/net/firewall/Firewall;->updateLastDomainRule(Lcom/samsung/android/knox/net/firewall/DomainFilterRule;Ljava/util/List;)Lcom/samsung/android/knox/net/firewall/DomainFilterRule;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_1
    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_3

    :catch_1
    :goto_2
    sget-object p0, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string p1, "getDomainFilterRules() - RemoteException at getDomainFilterRules method."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_3
    return-object v1
.end method

.method public getRules(ILcom/samsung/android/knox/net/firewall/FirewallRule$Status;)[Lcom/samsung/android/knox/net/firewall/FirewallRule;
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/Firewall;->getService()Lcom/samsung/android/knox/net/firewall/IFirewall;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget v0, Lcom/samsung/android/knox/KnoxInternalFeature;->KNOX_CONFIG_MDM_VERSION:I

    const/16 v2, 0xe

    if-lt v0, v2, :cond_1

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mService:Lcom/samsung/android/knox/net/firewall/IFirewall;

    iget-object p0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/net/firewall/IFirewall;->getRules(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;)[Lcom/samsung/android/knox/net/firewall/FirewallRule;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mService:Lcom/samsung/android/knox/net/firewall/IFirewall;

    iget-object p0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {p2, p0, p1, v1}, Lcom/samsung/android/knox/net/firewall/IFirewall;->getRules(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;)[Lcom/samsung/android/knox/net/firewall/FirewallRule;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    sget-object p0, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string p1, "getRules() - RemoteException at getRules method."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string p1, "Firewall.getRules() : This device doesn\'t support this API."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-object v1
.end method

.method public final getService()Lcom/samsung/android/knox/net/firewall/IFirewall;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mService:Lcom/samsung/android/knox/net/firewall/IFirewall;

    if-nez v0, :cond_0

    const-string v0, "firewall"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/net/firewall/IFirewall$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/net/firewall/IFirewall;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mService:Lcom/samsung/android/knox/net/firewall/IFirewall;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mService:Lcom/samsung/android/knox/net/firewall/IFirewall;

    return-object p0
.end method

.method public isDomainFilterOnIptablesEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "Firewall.isDomainFilterOnIptablesEnabled"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/Firewall;->getService()Lcom/samsung/android/knox/net/firewall/IFirewall;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v0, Lcom/samsung/android/knox/KnoxInternalFeature;->KNOX_CONFIG_MDM_VERSION:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mService:Lcom/samsung/android/knox/net/firewall/IFirewall;

    iget-object p0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/net/firewall/IFirewall;->isDomainFilterOnIptablesEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    sget-object p0, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string v0, "isDomainFilterOnIptablesEnabled() - RemoteException at isDomainFilterOnIptablesEnabled method."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isDomainFilterReportEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "isDomainFilterReportEnabled"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "Firewall.isDomainFilterReportEnabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/Firewall;->getService()Lcom/samsung/android/knox/net/firewall/IFirewall;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v0, Lcom/samsung/android/knox/KnoxInternalFeature;->KNOX_CONFIG_MDM_VERSION:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mService:Lcom/samsung/android/knox/net/firewall/IFirewall;

    iget-object p0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/net/firewall/IFirewall;->isDomainFilterReportEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    sget-object p0, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string v0, "isDomainFilterReportEnabled() - RemoteException at isDomainFilterReportEnabled method."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isFirewallEnabled()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/Firewall;->getService()Lcom/samsung/android/knox/net/firewall/IFirewall;

    move-result-object v0

    if-eqz v0, :cond_1

    sget v0, Lcom/samsung/android/knox/KnoxInternalFeature;->KNOX_CONFIG_MDM_VERSION:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mService:Lcom/samsung/android/knox/net/firewall/IFirewall;

    iget-object p0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/net/firewall/IFirewall;->isFirewallEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    sget-object p0, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string v0, "isFirewallEnabled() - RemoteException at isFirewallEnabled method."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string v0, "Firewall.isFirewallEnabled() : This device doesn\'t support this API."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public listIptablesRules()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "Firewall.listIptablesRules"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/Firewall;->getService()Lcom/samsung/android/knox/net/firewall/IFirewall;

    move-result-object v0

    if-eqz v0, :cond_1

    sget v0, Lcom/samsung/android/knox/KnoxInternalFeature;->KNOX_CONFIG_MDM_VERSION:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mService:Lcom/samsung/android/knox/net/firewall/IFirewall;

    iget-object p0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/net/firewall/IFirewall;->listIptablesRules(Lcom/samsung/android/knox/ContextInfo;)[Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    sget-object p0, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string v0, "listIptablesRules() - RemoteException at listIptablesRules method."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string v0, "Firewall.listIptablesRules() : This device doesn\'t support this API."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final pageableRule(Lcom/samsung/android/knox/net/firewall/DomainFilterRule;)Ljava/util/Map;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/net/firewall/DomainFilterRule;",
            ")",
            "Ljava/util/Map<",
            "Lcom/samsung/android/knox/net/firewall/DomainFilterRule;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDns1()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDns2()Ljava/lang/String;

    move-result-object v8

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;-><init>(Lcom/samsung/android/knox/AppIdentity;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/net/firewall/Firewall;->generateToken()I

    move-result v1

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDns1()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    array-length v4, v4

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDns2()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    array-length v5, v5

    goto :goto_1

    :cond_2
    move v5, v2

    :goto_1
    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x8

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v5, :cond_3

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    array-length v5, v5

    goto :goto_2

    :cond_3
    move v5, v2

    :goto_2
    if-eqz v3, :cond_4

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    array-length v3, v3

    goto :goto_3

    :cond_4
    move v3, v2

    :goto_3
    add-int/2addr v4, v5

    add-int/2addr v4, v3

    :cond_5
    move v11, v4

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    move-result-object v13

    if-nez v13, :cond_6

    if-eqz v12, :cond_8

    :cond_6
    if-nez v13, :cond_7

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_8

    :cond_7
    if-nez v12, :cond_9

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_9

    :cond_8
    new-instance v2, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDns1()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDns2()Ljava/lang/String;

    move-result-object v8

    move-object v3, v2

    move-object v5, v12

    move-object v6, v13

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;-><init>(Lcom/samsung/android/knox/AppIdentity;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->setIpcToken(I)V

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_9
    const/4 v15, 0x1

    if-eqz v12, :cond_c

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    move/from16 v17, v11

    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    array-length v7, v3

    add-int v3, v17, v7

    sget v4, Lcom/samsung/android/knox/net/firewall/Firewall;->MAX_LIST_SIZE_IN_BYTES:I

    if-gt v3, v4, :cond_a

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v17, v3

    goto :goto_4

    :cond_a
    new-instance v2, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v4

    if-eqz v13, :cond_b

    move-object v6, v10

    goto :goto_5

    :cond_b
    const/4 v6, 0x0

    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDns1()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDns2()Ljava/lang/String;

    move-result-object v19

    move-object v3, v2

    move-object v5, v9

    move/from16 v20, v7

    move-object/from16 v7, v18

    move-object v14, v8

    move-object/from16 v8, v19

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;-><init>(Lcom/samsung/android/knox/AppIdentity;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->setIpcToken(I)V

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int v7, v11, v20

    move/from16 v17, v7

    move v2, v15

    goto :goto_4

    :cond_c
    move/from16 v17, v11

    :cond_d
    if-eqz v13, :cond_10

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v14, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    array-length v8, v3

    add-int v3, v17, v8

    sget v4, Lcom/samsung/android/knox/net/firewall/Firewall;->MAX_LIST_SIZE_IN_BYTES:I

    if-gt v3, v4, :cond_e

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v17, v3

    goto :goto_6

    :cond_e
    new-instance v2, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v4

    if-eqz v12, :cond_f

    move-object v5, v9

    goto :goto_7

    :cond_f
    const/4 v5, 0x0

    :goto_7
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDns1()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDns2()Ljava/lang/String;

    move-result-object v16

    move-object v3, v2

    move-object v6, v10

    move/from16 v18, v8

    move-object/from16 v8, v16

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;-><init>(Lcom/samsung/android/knox/AppIdentity;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->setIpcToken(I)V

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int v8, v11, v18

    move/from16 v17, v8

    move v2, v15

    goto :goto_6

    :cond_10
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_13

    :cond_11
    new-instance v11, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDns1()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDns2()Ljava/lang/String;

    move-result-object v8

    move-object v3, v11

    move-object v5, v9

    move-object v6, v10

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;-><init>(Lcom/samsung/android/knox/AppIdentity;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_12

    invoke-virtual {v11, v1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->setIpcToken(I)V

    :cond_12
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    return-object v0
.end method

.method public removeDomainFilterRules(Ljava/util/List;)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/firewall/DomainFilterRule;",
            ">;)[",
            "Lcom/samsung/android/knox/net/firewall/FirewallResponse;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "Firewall.removeDomainFilterRules"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "removeDomainFilterRules() - rules.size = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "0"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/net/firewall/Firewall;->evaluateAndProcessRules(Ljava/util/List;I)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object p0

    return-object p0
.end method

.method public removeRules([Lcom/samsung/android/knox/net/firewall/FirewallRule;)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "Firewall.removeRules"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "removeRules() - FirewallRule[].length = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    array-length v2, p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "0"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/Firewall;->getService()Lcom/samsung/android/knox/net/firewall/IFirewall;

    move-result-object v0

    if-eqz v0, :cond_2

    sget v0, Lcom/samsung/android/knox/KnoxInternalFeature;->KNOX_CONFIG_MDM_VERSION:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mService:Lcom/samsung/android/knox/net/firewall/IFirewall;

    iget-object p0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/firewall/IFirewall;->removeRules(Lcom/samsung/android/knox/ContextInfo;[Lcom/samsung/android/knox/net/firewall/FirewallRule;)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    sget-object p0, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "removeRules() - RemoteException at removeRules method."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    const-string p1, "Firewall.removeRules() : This device doesn\'t support this API."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final updateLastDomainRule(Lcom/samsung/android/knox/net/firewall/DomainFilterRule;Ljava/util/List;)Lcom/samsung/android/knox/net/firewall/DomainFilterRule;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/net/firewall/DomainFilterRule;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/firewall/DomainFilterRule;",
            ">;)",
            "Lcom/samsung/android/knox/net/firewall/DomainFilterRule;"
        }
    .end annotation

    const/4 p0, 0x1

    invoke-static {p0, p2}, Landroidx/compose/runtime/PrioritySet$$ExternalSyntheticOutline0;->m(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->setDenyDomains(Ljava/util/List;)V

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->setAllowDomains(Ljava/util/List;)V

    :cond_2
    return-object p0
.end method
