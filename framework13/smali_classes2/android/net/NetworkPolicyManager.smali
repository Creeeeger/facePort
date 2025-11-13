.class public Landroid/net/NetworkPolicyManager;
.super Ljava/lang/Object;
.source "NetworkPolicyManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkPolicyManager$Listener;,
        Landroid/net/NetworkPolicyManager$SubscriptionCallbackProxy;,
        Landroid/net/NetworkPolicyManager$SubscriptionCallback;,
        Landroid/net/NetworkPolicyManager$NetworkPolicyCallbackProxy;,
        Landroid/net/NetworkPolicyManager$NetworkPolicyCallback;,
        Landroid/net/NetworkPolicyManager$UidState;,
        Landroid/net/NetworkPolicyManager$SubscriptionOverrideMask;
    }
.end annotation


# static fields
.field public static final blacklist ALLOWED_METERED_REASON_FOREGROUND:I = 0x40000

.field public static final blacklist ALLOWED_METERED_REASON_MASK:I = -0x10000

.field public static final blacklist ALLOWED_METERED_REASON_SYSTEM:I = 0x20000

.field public static final blacklist ALLOWED_METERED_REASON_USER_EXEMPTED:I = 0x10000

.field public static final blacklist ALLOWED_REASON_FOREGROUND:I = 0x2

.field public static final blacklist ALLOWED_REASON_LOW_POWER_STANDBY_ALLOWLIST:I = 0x40

.field public static final blacklist ALLOWED_REASON_NONE:I = 0x0

.field public static final blacklist ALLOWED_REASON_POWER_SAVE_ALLOWLIST:I = 0x4

.field public static final blacklist ALLOWED_REASON_POWER_SAVE_EXCEPT_IDLE_ALLOWLIST:I = 0x8

.field public static final blacklist ALLOWED_REASON_RESTRICTED_MODE_PERMISSIONS:I = 0x10

.field public static final blacklist ALLOWED_REASON_SYSTEM:I = 0x1

.field public static final blacklist ALLOWED_REASON_TOP:I = 0x20

.field private static final greylist-max-o ALLOW_PLATFORM_APP_POLICY:Z = true

.field public static final greylist-max-o EXTRA_NETWORK_TEMPLATE:Ljava/lang/String; = "android.net.NETWORK_TEMPLATE"

.field public static final greylist-max-o FIREWALL_CHAIN_NAME_DOZABLE:Ljava/lang/String; = "dozable"

.field public static final blacklist FIREWALL_CHAIN_NAME_LOW_POWER_STANDBY:Ljava/lang/String; = "low_power_standby"

.field public static final greylist-max-o FIREWALL_CHAIN_NAME_NONE:Ljava/lang/String; = "none"

.field public static final blacklist FIREWALL_CHAIN_NAME_OEM_DENY_1:Ljava/lang/String; = "fw_oem_deny_1"

.field public static final greylist-max-o FIREWALL_CHAIN_NAME_POWERSAVE:Ljava/lang/String; = "powersave"

.field public static final blacklist FIREWALL_CHAIN_NAME_RESTRICTED:Ljava/lang/String; = "restricted"

.field public static final greylist-max-o FIREWALL_CHAIN_NAME_STANDBY:Ljava/lang/String; = "standby"

.field public static final blacklist FIREWALL_POLICY_NONE:I = 0x0

.field public static final blacklist FIREWALL_POLICY_REJECT_DATA_WIFI:I = 0x3

.field public static final blacklist FIREWALL_POLICY_REJECT_MOBILE_DATA:I = 0x1

.field public static final blacklist FIREWALL_POLICY_REJECT_WIFI:I = 0x2

.field public static final greylist-max-o FIREWALL_RULE_DEFAULT:I = 0x0

.field public static final greylist-max-o FOREGROUND_THRESHOLD_STATE:I = 0x5

.field public static final greylist-max-o MASK_ALL_NETWORKS:I = 0xf0

.field public static final greylist-max-o MASK_METERED_NETWORKS:I = 0xf

.field public static final blacklist MASK_RESTRICTED_MODE_NETWORKS:I = 0xf00

.field public static final greylist-max-o POLICY_ALLOW_METERED_BACKGROUND:I = 0x4

.field public static final greylist-max-o POLICY_NONE:I = 0x0

.field public static final greylist-max-o POLICY_REJECT_METERED_BACKGROUND:I = 0x1

.field public static final greylist-max-o RULE_ALLOW_ALL:I = 0x20

.field public static final greylist-max-o RULE_ALLOW_METERED:I = 0x1

.field public static final greylist-max-o RULE_NONE:I = 0x0

.field public static final greylist-max-o RULE_REJECT_ALL:I = 0x40

.field public static final greylist-max-o RULE_REJECT_METERED:I = 0x4

.field public static final blacklist RULE_REJECT_RESTRICTED_MODE:I = 0x400

.field public static final greylist-max-o RULE_TEMPORARY_ALLOW_METERED:I = 0x2

.field public static final blacklist SUBSCRIPTION_OVERRIDE_CONGESTED:I = 0x2

.field public static final blacklist SUBSCRIPTION_OVERRIDE_UNMETERED:I = 0x1

.field public static final blacklist TOP_THRESHOLD_STATE:I = 0x3


# instance fields
.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final blacklist mNetworkPolicyCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/NetworkPolicyManager$NetworkPolicyCallback;",
            "Landroid/net/NetworkPolicyManager$NetworkPolicyCallbackProxy;",
            ">;"
        }
    .end annotation
.end field

.field private greylist mService:Landroid/net/INetworkPolicyManager;

.field private final blacklist mSubscriptionCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/NetworkPolicyManager$SubscriptionCallback;",
            "Landroid/net/NetworkPolicyManager$SubscriptionCallbackProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$smdispatchOnUidBlockedReasonChanged(Ljava/util/concurrent/Executor;Landroid/net/NetworkPolicyManager$NetworkPolicyCallback;II)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/net/NetworkPolicyManager;->dispatchOnUidBlockedReasonChanged(Ljava/util/concurrent/Executor;Landroid/net/NetworkPolicyManager$NetworkPolicyCallback;II)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/net/INetworkPolicyManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/net/INetworkPolicyManager;

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/net/NetworkPolicyManager;->mSubscriptionCallbackMap:Ljava/util/Map;

    .line 309
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/net/NetworkPolicyManager;->mNetworkPolicyCallbackMap:Ljava/util/Map;

    .line 314
    if-eqz p2, :cond_0

    .line 317
    iput-object p1, p0, Landroid/net/NetworkPolicyManager;->mContext:Landroid/content/Context;

    .line 318
    iput-object p2, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    .line 319
    return-void

    .line 315
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "missing INetworkPolicyManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist allowedReasonsToString(I)Ljava/lang/String;
    .locals 4
    .param p0, "allowedReasons"    # I

    .line 884
    const-class v0, Landroid/net/NetworkPolicyManager;

    int-to-long v1, p0

    const-string v3, "ALLOWED_"

    invoke-static {v0, v3, v1, v2}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist blockedReasonsToString(I)Ljava/lang/String;
    .locals 4
    .param p0, "blockedReasons"    # I

    .line 878
    const-class v0, Landroid/net/ConnectivityManager;

    int-to-long v1, p0

    const-string v3, "BLOCKED_"

    invoke-static {v0, v3, v1, v2}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o cycleIterator(Landroid/net/NetworkPolicy;)Ljava/util/Iterator;
    .locals 2
    .param p0, "policy"    # Landroid/net/NetworkPolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkPolicy;",
            ")",
            "Ljava/util/Iterator<",
            "Landroid/util/Pair<",
            "Ljava/time/ZonedDateTime;",
            "Ljava/time/ZonedDateTime;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 696
    invoke-virtual {p0}, Landroid/net/NetworkPolicy;->cycleIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 697
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Range<Ljava/time/ZonedDateTime;>;>;"
    new-instance v1, Landroid/net/NetworkPolicyManager$1;

    invoke-direct {v1, v0}, Landroid/net/NetworkPolicyManager$1;-><init>(Ljava/util/Iterator;)V

    return-object v1
.end method

.method private static blacklist dispatchOnUidBlockedReasonChanged(Ljava/util/concurrent/Executor;Landroid/net/NetworkPolicyManager$NetworkPolicyCallback;II)V
    .locals 3
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .param p1, "callback"    # Landroid/net/NetworkPolicyManager$NetworkPolicyCallback;
    .param p2, "uid"    # I
    .param p3, "blockedReasons"    # I

    .line 971
    if-nez p0, :cond_0

    .line 972
    invoke-interface {p1, p2, p3}, Landroid/net/NetworkPolicyManager$NetworkPolicyCallback;->onUidBlockedReasonChanged(II)V

    goto :goto_0

    .line 974
    :cond_0
    new-instance v0, Landroid/net/NetworkPolicyManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/net/NetworkPolicyManager$$ExternalSyntheticLambda0;-><init>()V

    .line 976
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 974
    invoke-static {v0, p1, v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v0

    .line 976
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v0

    .line 974
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 978
    :goto_0
    return-void
.end method

.method public static greylist from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 324
    const-string v0, "netpolicy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkPolicyManager;

    return-object v0
.end method

.method public static blacklist isProcStateAllowedWhileIdleOrPowerSaveMode(II)Z
    .locals 1
    .param p0, "procState"    # I
    .param p1, "capability"    # I

    .line 798
    const/4 v0, 0x5

    if-le p0, v0, :cond_1

    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static blacklist isProcStateAllowedWhileIdleOrPowerSaveMode(Landroid/net/NetworkPolicyManager$UidState;)Z
    .locals 2
    .param p0, "uidState"    # Landroid/net/NetworkPolicyManager$UidState;

    .line 789
    if-nez p0, :cond_0

    .line 790
    const/4 v0, 0x0

    return v0

    .line 792
    :cond_0
    iget v0, p0, Landroid/net/NetworkPolicyManager$UidState;->procState:I

    iget v1, p0, Landroid/net/NetworkPolicyManager$UidState;->capability:I

    invoke-static {v0, v1}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileIdleOrPowerSaveMode(II)Z

    move-result v0

    return v0
.end method

.method public static blacklist isProcStateAllowedWhileInLowPowerStandby(Landroid/net/NetworkPolicyManager$UidState;)Z
    .locals 3
    .param p0, "uidState"    # Landroid/net/NetworkPolicyManager$UidState;

    .line 804
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 805
    return v0

    .line 807
    :cond_0
    iget v1, p0, Landroid/net/NetworkPolicyManager$UidState;->procState:I

    const/4 v2, 0x3

    if-gt v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static greylist-max-o isProcStateAllowedWhileOnRestrictBackground(I)Z
    .locals 1
    .param p0, "procState"    # I

    .line 825
    const/4 v0, 0x5

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist isProcStateAllowedWhileOnRestrictBackground(Landroid/net/NetworkPolicyManager$UidState;)Z
    .locals 1
    .param p0, "uidState"    # Landroid/net/NetworkPolicyManager$UidState;

    .line 816
    if-nez p0, :cond_0

    .line 817
    const/4 v0, 0x0

    return v0

    .line 819
    :cond_0
    iget v0, p0, Landroid/net/NetworkPolicyManager$UidState;->procState:I

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileOnRestrictBackground(I)Z

    move-result v0

    return v0
.end method

.method public static greylist-max-o isUidValidForPolicy(Landroid/content/Context;I)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 723
    invoke-static {p1}, Landroid/os/Process;->isApplicationUid(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 724
    const/4 v0, 0x0

    return v0

    .line 751
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static greylist-max-o resolveNetworkId(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 1
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 860
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 861
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 860
    :goto_0
    invoke-static {v0}, Landroid/net/wifi/WifiInfo;->sanitizeSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o resolveNetworkId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "ssid"    # Ljava/lang/String;

    .line 866
    invoke-static {p0}, Landroid/net/wifi/WifiInfo;->sanitizeSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o uidPoliciesToString(I)Ljava/lang/String;
    .locals 5
    .param p0, "uidPolicies"    # I

    .line 772
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 773
    .local v0, "string":Ljava/lang/StringBuilder;
    if-nez p0, :cond_0

    .line 774
    const-string v1, "NONE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 776
    :cond_0
    const-class v1, Landroid/net/NetworkPolicyManager;

    int-to-long v2, p0

    const-string v4, "POLICY_"

    invoke-static {v1, v4, v2, v3}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 779
    :goto_0
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static greylist-max-o uidRulesToString(I)Ljava/lang/String;
    .locals 5
    .param p0, "uidRules"    # I

    .line 758
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 759
    .local v0, "string":Ljava/lang/StringBuilder;
    if-nez p0, :cond_0

    .line 760
    const-string v1, "NONE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 762
    :cond_0
    const-class v1, Landroid/net/NetworkPolicyManager;

    int-to-long v2, p0

    const-string v4, "RULE_"

    invoke-static {v1, v4, v2, v3}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    :goto_0
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 765
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public greylist-max-o addUidPolicy(II)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .line 354
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/net/INetworkPolicyManager;->addUidPolicy(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    nop

    .line 358
    return-void

    .line 355
    :catch_0
    move-exception v0

    .line 356
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o factoryReset(Ljava/lang/String;)V
    .locals 2
    .param p1, "subscriber"    # Ljava/lang/String;

    .line 638
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0, p1}, Landroid/net/INetworkPolicyManager;->factoryReset(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 641
    nop

    .line 642
    return-void

    .line 639
    :catch_0
    move-exception v0

    .line 640
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getFirewallRuleMobileData(I)Z
    .locals 2
    .param p1, "uid"    # I

    .line 1092
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0, p1}, Landroid/net/INetworkPolicyManager;->getFirewallRuleMobileData(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1093
    :catch_0
    move-exception v0

    .line 1094
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x1

    return v1
.end method

.method public blacklist getFirewallRuleWifi(I)Z
    .locals 2
    .param p1, "uid"    # I

    .line 1104
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0, p1}, Landroid/net/INetworkPolicyManager;->getFirewallRuleWifi(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1105
    :catch_0
    move-exception v0

    .line 1106
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x1

    return v1
.end method

.method public blacklist getMultipathPreference(Landroid/net/Network;)I
    .locals 2
    .param p1, "network"    # Landroid/net/Network;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 687
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0, p1}, Landroid/net/INetworkPolicyManager;->getMultipathPreference(Landroid/net/Network;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 688
    :catch_0
    move-exception v0

    .line 689
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist getNetworkPolicies()[Landroid/net/NetworkPolicy;
    .locals 2

    .line 457
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    iget-object v1, p0, Landroid/net/NetworkPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/net/INetworkPolicyManager;->getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 458
    :catch_0
    move-exception v0

    .line 459
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-r getRestrictBackground()Z
    .locals 2

    .line 479
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0}, Landroid/net/INetworkPolicyManager;->getRestrictBackground()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 480
    :catch_0
    move-exception v0

    .line 481
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getRestrictBackgroundStatus(I)I
    .locals 2
    .param p1, "uid"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 499
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0, p1}, Landroid/net/INetworkPolicyManager;->getRestrictBackgroundStatus(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 500
    :catch_0
    move-exception v0

    .line 501
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getSubscriptionPlan(Landroid/net/NetworkTemplate;)Landroid/telephony/SubscriptionPlan;
    .locals 2
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 588
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0, p1}, Landroid/net/INetworkPolicyManager;->getSubscriptionPlan(Landroid/net/NetworkTemplate;)Landroid/telephony/SubscriptionPlan;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 589
    :catch_0
    move-exception v0

    .line 590
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getSubscriptionPlans(ILjava/lang/String;)[Landroid/telephony/SubscriptionPlan;
    .locals 2
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 567
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/net/INetworkPolicyManager;->getSubscriptionPlans(ILjava/lang/String;)[Landroid/telephony/SubscriptionPlan;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 568
    :catch_0
    move-exception v0

    .line 569
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-r getUidPolicy(I)I
    .locals 2
    .param p1, "uid"    # I

    .line 381
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0, p1}, Landroid/net/INetworkPolicyManager;->getUidPolicy(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 382
    :catch_0
    move-exception v0

    .line 383
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist getUidsWithPolicy(I)[I
    .locals 2
    .param p1, "policy"    # I

    .line 391
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0, p1}, Landroid/net/INetworkPolicyManager;->getUidsWithPolicy(I)[I

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 392
    :catch_0
    move-exception v0

    .line 393
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isUidNetworkingBlocked(IZ)Z
    .locals 2
    .param p1, "uid"    # I
    .param p2, "meteredNetwork"    # Z

    .line 655
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/net/INetworkPolicyManager;->isUidNetworkingBlocked(IZ)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 656
    :catch_0
    move-exception v0

    .line 657
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isUidRestrictedOnMeteredNetworks(I)Z
    .locals 2
    .param p1, "uid"    # I

    .line 670
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0, p1}, Landroid/net/INetworkPolicyManager;->isUidRestrictedOnMeteredNetworks(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 671
    :catch_0
    move-exception v0

    .line 672
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyStatsProviderLimitReached()V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 625
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0}, Landroid/net/INetworkPolicyManager;->notifyStatsProviderWarningOrLimitReached()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 628
    nop

    .line 629
    return-void

    .line 626
    :catch_0
    move-exception v0

    .line 627
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyStatsProviderWarningReached()V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 606
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0}, Landroid/net/INetworkPolicyManager;->notifyStatsProviderWarningOrLimitReached()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 609
    nop

    .line 610
    return-void

    .line 607
    :catch_0
    move-exception v0

    .line 608
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist onApplicationKill(Ljava/lang/String;I)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1116
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/net/INetworkPolicyManager;->onApplicationKill(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1118
    goto :goto_0

    .line 1117
    :catch_0
    move-exception v0

    .line 1119
    :goto_0
    return-void
.end method

.method public greylist-max-p registerListener(Landroid/net/INetworkPolicyListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;

    .line 401
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0, p1}, Landroid/net/INetworkPolicyManager;->registerListener(Landroid/net/INetworkPolicyListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    nop

    .line 405
    return-void

    .line 402
    :catch_0
    move-exception v0

    .line 403
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist registerNetworkPolicyCallback(Ljava/util/concurrent/Executor;Landroid/net/NetworkPolicyManager$NetworkPolicyCallback;)V
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/net/NetworkPolicyManager$NetworkPolicyCallback;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 903
    if-eqz p2, :cond_0

    .line 907
    new-instance v0, Landroid/net/NetworkPolicyManager$NetworkPolicyCallbackProxy;

    invoke-direct {v0, p1, p2}, Landroid/net/NetworkPolicyManager$NetworkPolicyCallbackProxy;-><init>(Ljava/util/concurrent/Executor;Landroid/net/NetworkPolicyManager$NetworkPolicyCallback;)V

    .line 909
    .local v0, "callbackProxy":Landroid/net/NetworkPolicyManager$NetworkPolicyCallbackProxy;
    invoke-virtual {p0, v0}, Landroid/net/NetworkPolicyManager;->registerListener(Landroid/net/INetworkPolicyListener;)V

    .line 910
    iget-object v1, p0, Landroid/net/NetworkPolicyManager;->mNetworkPolicyCallbackMap:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 911
    return-void

    .line 904
    .end local v0    # "callbackProxy":Landroid/net/NetworkPolicyManager$NetworkPolicyCallbackProxy;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Callback cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist registerSubscriptionCallback(Landroid/net/NetworkPolicyManager$SubscriptionCallback;)V
    .locals 3
    .param p1, "callback"    # Landroid/net/NetworkPolicyManager$SubscriptionCallback;

    .line 420
    if-eqz p1, :cond_1

    .line 424
    new-instance v0, Landroid/net/NetworkPolicyManager$SubscriptionCallbackProxy;

    invoke-direct {v0, p0, p1}, Landroid/net/NetworkPolicyManager$SubscriptionCallbackProxy;-><init>(Landroid/net/NetworkPolicyManager;Landroid/net/NetworkPolicyManager$SubscriptionCallback;)V

    .line 425
    .local v0, "callbackProxy":Landroid/net/NetworkPolicyManager$SubscriptionCallbackProxy;
    iget-object v1, p0, Landroid/net/NetworkPolicyManager;->mSubscriptionCallbackMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 428
    invoke-virtual {p0, v0}, Landroid/net/NetworkPolicyManager;->registerListener(Landroid/net/INetworkPolicyListener;)V

    .line 429
    return-void

    .line 426
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Callback is already registered."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 421
    .end local v0    # "callbackProxy":Landroid/net/NetworkPolicyManager$SubscriptionCallbackProxy;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Callback cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o removeUidPolicy(II)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .line 371
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/net/INetworkPolicyManager;->removeUidPolicy(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    nop

    .line 375
    return-void

    .line 372
    :catch_0
    move-exception v0

    .line 373
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setFirewallRuleMobileData(IZ)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "allow"    # Z

    .line 1046
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/net/INetworkPolicyManager;->setFirewallRuleMobileData(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1048
    goto :goto_0

    .line 1047
    :catch_0
    move-exception v0

    .line 1049
    :goto_0
    return-void
.end method

.method public blacklist setFirewallRuleMobileDataMap(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1069
    .local p1, "uidAllowedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0, p1}, Landroid/net/INetworkPolicyManager;->setFirewallRuleMobileDataMap(Ljava/util/Map;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1071
    goto :goto_0

    .line 1070
    :catch_0
    move-exception v0

    .line 1072
    :goto_0
    return-void
.end method

.method public blacklist setFirewallRuleWifi(IZ)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "allow"    # Z

    .line 1057
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/net/INetworkPolicyManager;->setFirewallRuleWifi(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1059
    goto :goto_0

    .line 1058
    :catch_0
    move-exception v0

    .line 1060
    :goto_0
    return-void
.end method

.method public blacklist setFirewallRuleWifiMap(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1081
    .local p1, "uidAllowedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0, p1}, Landroid/net/INetworkPolicyManager;->setFirewallRuleWifiMap(Ljava/util/Map;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1083
    goto :goto_0

    .line 1082
    :catch_0
    move-exception v0

    .line 1084
    :goto_0
    return-void
.end method

.method public greylist-max-o setNetworkPolicies([Landroid/net/NetworkPolicy;)V
    .locals 2
    .param p1, "policies"    # [Landroid/net/NetworkPolicy;

    .line 447
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0, p1}, Landroid/net/INetworkPolicyManager;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    nop

    .line 451
    return-void

    .line 448
    :catch_0
    move-exception v0

    .line 449
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-r setRestrictBackground(Z)V
    .locals 2
    .param p1, "restrictBackground"    # Z

    .line 468
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0, p1}, Landroid/net/INetworkPolicyManager;->setRestrictBackground(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    nop

    .line 472
    return-void

    .line 469
    :catch_0
    move-exception v0

    .line 470
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setSubscriptionOverride(III[IJLjava/lang/String;)V
    .locals 8
    .param p1, "subId"    # I
    .param p2, "overrideMask"    # I
    .param p3, "overrideValue"    # I
    .param p4, "networkTypes"    # [I
    .param p5, "expirationDurationMillis"    # J
    .param p7, "callingPackage"    # Ljava/lang/String;

    .line 528
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-wide v5, p5

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Landroid/net/INetworkPolicyManager;->setSubscriptionOverride(III[IJLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 532
    nop

    .line 533
    return-void

    .line 530
    :catch_0
    move-exception v0

    .line 531
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setSubscriptionPlans(I[Landroid/telephony/SubscriptionPlan;JLjava/lang/String;)V
    .locals 6
    .param p1, "subId"    # I
    .param p2, "plans"    # [Landroid/telephony/SubscriptionPlan;
    .param p3, "expirationDurationMillis"    # J
    .param p5, "callingPackage"    # Ljava/lang/String;

    .line 549
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkPolicyManager;->setSubscriptionPlans(I[Landroid/telephony/SubscriptionPlan;JLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 552
    nop

    .line 553
    return-void

    .line 550
    :catch_0
    move-exception v0

    .line 551
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist setUidPolicy(II)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .line 337
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/net/INetworkPolicyManager;->setUidPolicy(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    nop

    .line 341
    return-void

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-p unregisterListener(Landroid/net/INetworkPolicyListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;

    .line 411
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0, p1}, Landroid/net/INetworkPolicyManager;->unregisterListener(Landroid/net/INetworkPolicyListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    nop

    .line 415
    return-void

    .line 412
    :catch_0
    move-exception v0

    .line 413
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist unregisterNetworkPolicyCallback(Landroid/net/NetworkPolicyManager$NetworkPolicyCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/net/NetworkPolicyManager$NetworkPolicyCallback;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 922
    if-eqz p1, :cond_1

    .line 926
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mNetworkPolicyCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkPolicyManager$NetworkPolicyCallbackProxy;

    .line 927
    .local v0, "callbackProxy":Landroid/net/NetworkPolicyManager$NetworkPolicyCallbackProxy;
    if-nez v0, :cond_0

    return-void

    .line 928
    :cond_0
    invoke-virtual {p0, v0}, Landroid/net/NetworkPolicyManager;->unregisterListener(Landroid/net/INetworkPolicyListener;)V

    .line 929
    return-void

    .line 923
    .end local v0    # "callbackProxy":Landroid/net/NetworkPolicyManager$NetworkPolicyCallbackProxy;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Callback cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist unregisterSubscriptionCallback(Landroid/net/NetworkPolicyManager$SubscriptionCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/net/NetworkPolicyManager$SubscriptionCallback;

    .line 434
    if-eqz p1, :cond_1

    .line 438
    iget-object v0, p0, Landroid/net/NetworkPolicyManager;->mSubscriptionCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkPolicyManager$SubscriptionCallbackProxy;

    .line 439
    .local v0, "callbackProxy":Landroid/net/NetworkPolicyManager$SubscriptionCallbackProxy;
    if-nez v0, :cond_0

    return-void

    .line 441
    :cond_0
    invoke-virtual {p0, v0}, Landroid/net/NetworkPolicyManager;->unregisterListener(Landroid/net/INetworkPolicyListener;)V

    .line 442
    return-void

    .line 435
    .end local v0    # "callbackProxy":Landroid/net/NetworkPolicyManager$SubscriptionCallbackProxy;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Callback cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
