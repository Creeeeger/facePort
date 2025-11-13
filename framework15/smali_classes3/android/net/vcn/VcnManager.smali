.class public Landroid/net/vcn/VcnManager;
.super Ljava/lang/Object;
.source "VcnManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;,
        Landroid/net/vcn/VcnManager$VcnUnderlyingNetworkPolicyListenerBinder;,
        Landroid/net/vcn/VcnManager$VcnStatusCallback;,
        Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder;,
        Landroid/net/vcn/VcnManager$VcnErrorCode;,
        Landroid/net/vcn/VcnManager$VcnStatusCode;,
        Landroid/net/vcn/VcnManager$VcnUnderlyingNetworkPolicyListener;
    }
.end annotation


# static fields
.field private static final blacklist REGISTERED_POLICY_LISTENERS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;",
            "Landroid/net/vcn/VcnManager$VcnUnderlyingNetworkPolicyListenerBinder;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String;

.field public static final whitelist VCN_ERROR_CODE_CONFIG_ERROR:I = 0x1

.field public static final whitelist VCN_ERROR_CODE_INTERNAL_ERROR:I = 0x0

.field public static final whitelist VCN_ERROR_CODE_NETWORK_ERROR:I = 0x2

.field public static final blacklist VCN_NETWORK_SELECTION_IPSEC_PACKET_LOSS_PERCENT_THRESHOLD_KEY:Ljava/lang/String; = "vcn_network_selection_ipsec_packet_loss_percent_threshold"

.field public static final blacklist VCN_NETWORK_SELECTION_MAX_SEQ_NUM_INCREASE_PER_SECOND_KEY:Ljava/lang/String; = "vcn_network_selection_max_seq_num_increase_per_second"

.field public static final blacklist VCN_NETWORK_SELECTION_PENALTY_TIMEOUT_MINUTES_LIST_KEY:Ljava/lang/String; = "vcn_network_selection_penalty_timeout_minutes_list"

.field public static final blacklist VCN_NETWORK_SELECTION_POLL_IPSEC_STATE_INTERVAL_SECONDS_KEY:Ljava/lang/String; = "vcn_network_selection_poll_ipsec_state_interval_seconds"

.field public static final blacklist VCN_NETWORK_SELECTION_WIFI_ENTRY_RSSI_THRESHOLD_KEY:Ljava/lang/String; = "vcn_network_selection_wifi_entry_rssi_threshold"

.field public static final blacklist VCN_NETWORK_SELECTION_WIFI_EXIT_RSSI_THRESHOLD_KEY:Ljava/lang/String; = "vcn_network_selection_wifi_exit_rssi_threshold"

.field public static final blacklist VCN_RELATED_CARRIER_CONFIG_KEYS:[Ljava/lang/String;

.field public static final blacklist VCN_RESTRICTED_TRANSPORTS_INT_ARRAY_KEY:Ljava/lang/String; = "vcn_restricted_transports"

.field public static final blacklist VCN_SAFE_MODE_TIMEOUT_SECONDS_KEY:Ljava/lang/String; = "vcn_safe_mode_timeout_seconds_key"

.field public static final whitelist VCN_STATUS_CODE_ACTIVE:I = 0x2

.field public static final whitelist VCN_STATUS_CODE_INACTIVE:I = 0x1

.field public static final whitelist VCN_STATUS_CODE_NOT_CONFIGURED:I = 0x0

.field public static final whitelist VCN_STATUS_CODE_SAFE_MODE:I = 0x3

.field public static final blacklist VCN_TUNNEL_AGGREGATION_SA_COUNT_MAX_KEY:Ljava/lang/String; = "vcn_tunnel_aggregation_sa_count_max"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mService:Landroid/net/vcn/IVcnManagementService;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 10

    const-class v0, Landroid/net/vcn/VcnManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/vcn/VcnManager;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "vcn_safe_mode_timeout_seconds_key"

    const-string/jumbo v9, "vcn_tunnel_aggregation_sa_count_max"

    const-string/jumbo v1, "vcn_network_selection_wifi_entry_rssi_threshold"

    const-string/jumbo v2, "vcn_network_selection_wifi_exit_rssi_threshold"

    const-string/jumbo v3, "vcn_network_selection_poll_ipsec_state_interval_seconds"

    const-string/jumbo v4, "vcn_network_selection_ipsec_packet_loss_percent_threshold"

    const-string/jumbo v5, "vcn_network_selection_max_seq_num_increase_per_second"

    const-string/jumbo v6, "vcn_network_selection_penalty_timeout_minutes_list"

    const-string/jumbo v7, "vcn_restricted_transports"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/vcn/VcnManager;->VCN_RELATED_CARRIER_CONFIG_KEYS:[Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/net/vcn/VcnManager;->REGISTERED_POLICY_LISTENERS:Ljava/util/Map;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/net/vcn/IVcnManagementService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "missing context"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroid/net/vcn/VcnManager;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "missing service"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/vcn/IVcnManagementService;

    iput-object v0, p0, Landroid/net/vcn/VcnManager;->mService:Landroid/net/vcn/IVcnManagementService;

    return-void
.end method

.method public static blacklist getAllPolicyListeners()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;",
            "Landroid/net/vcn/VcnManager$VcnUnderlyingNetworkPolicyListenerBinder;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroid/net/vcn/VcnManager;->REGISTERED_POLICY_LISTENERS:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist addVcnNetworkPolicyChangeListener(Ljava/util/concurrent/Executor;Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;)V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-string v0, "executor must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "listener must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Landroid/net/vcn/VcnManager$VcnUnderlyingNetworkPolicyListenerBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Landroid/net/vcn/VcnManager$VcnUnderlyingNetworkPolicyListenerBinder;-><init>(Ljava/util/concurrent/Executor;Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;Landroid/net/vcn/VcnManager$VcnUnderlyingNetworkPolicyListenerBinder-IA;)V

    sget-object v1, Landroid/net/vcn/VcnManager;->REGISTERED_POLICY_LISTENERS:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/net/vcn/VcnManager;->mService:Landroid/net/vcn/IVcnManagementService;

    invoke-interface {v1, v0}, Landroid/net/vcn/IVcnManagementService;->addVcnUnderlyingNetworkPolicyListener(Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    sget-object v2, Landroid/net/vcn/VcnManager;->REGISTERED_POLICY_LISTENERS:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "listener is already registered with VcnManager"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist addVcnUnderlyingNetworkPolicyListener(Ljava/util/concurrent/Executor;Landroid/net/vcn/VcnManager$VcnUnderlyingNetworkPolicyListener;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/net/vcn/VcnManager;->addVcnNetworkPolicyChangeListener(Ljava/util/concurrent/Executor;Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;)V

    return-void
.end method

.method public whitelist applyVcnNetworkPolicy(Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Landroid/net/vcn/VcnNetworkPolicyResult;
    .locals 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-string/jumbo v0, "networkCapabilities must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "linkProperties must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    nop

    invoke-virtual {p0, p1, p2}, Landroid/net/vcn/VcnManager;->getUnderlyingNetworkPolicy(Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Landroid/net/vcn/VcnUnderlyingNetworkPolicy;

    move-result-object v0

    new-instance v1, Landroid/net/vcn/VcnNetworkPolicyResult;

    invoke-virtual {v0}, Landroid/net/vcn/VcnUnderlyingNetworkPolicy;->isTeardownRequested()Z

    move-result v2

    invoke-virtual {v0}, Landroid/net/vcn/VcnUnderlyingNetworkPolicy;->getMergedNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/net/vcn/VcnNetworkPolicyResult;-><init>(ZLandroid/net/NetworkCapabilities;)V

    return-object v1
.end method

.method public whitelist clearVcnConfig(Landroid/os/ParcelUuid;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "subscriptionGroup was null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Landroid/net/vcn/VcnManager;->mService:Landroid/net/vcn/IVcnManagementService;

    iget-object v1, p0, Landroid/net/vcn/VcnManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/net/vcn/IVcnManagementService;->clearVcnConfig(Landroid/os/ParcelUuid;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist getConfiguredSubscriptionGroups()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/net/vcn/VcnManager;->mService:Landroid/net/vcn/IVcnManagementService;

    iget-object v1, p0, Landroid/net/vcn/VcnManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/net/vcn/IVcnManagementService;->getConfiguredSubscriptionGroups(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getUnderlyingNetworkPolicy(Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Landroid/net/vcn/VcnUnderlyingNetworkPolicy;
    .locals 2

    const-string/jumbo v0, "networkCapabilities must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "linkProperties must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Landroid/net/vcn/VcnManager;->mService:Landroid/net/vcn/IVcnManagementService;

    invoke-interface {v0, p1, p2}, Landroid/net/vcn/IVcnManagementService;->getUnderlyingNetworkPolicy(Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Landroid/net/vcn/VcnUnderlyingNetworkPolicy;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist registerVcnStatusCallback(Landroid/os/ParcelUuid;Ljava/util/concurrent/Executor;Landroid/net/vcn/VcnManager$VcnStatusCallback;)V
    .locals 3

    const-string/jumbo v0, "subscriptionGroup must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "executor must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "callback must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    monitor-enter p3

    :try_start_0
    invoke-static {p3}, Landroid/net/vcn/VcnManager$VcnStatusCallback;->-$$Nest$fgetmCbBinder(Landroid/net/vcn/VcnManager$VcnStatusCallback;)Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder;

    invoke-direct {v0, p2, p3}, Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder;-><init>(Ljava/util/concurrent/Executor;Landroid/net/vcn/VcnManager$VcnStatusCallback;)V

    invoke-static {p3, v0}, Landroid/net/vcn/VcnManager$VcnStatusCallback;->-$$Nest$fputmCbBinder(Landroid/net/vcn/VcnManager$VcnStatusCallback;Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Landroid/net/vcn/VcnManager;->mService:Landroid/net/vcn/IVcnManagementService;

    invoke-static {p3}, Landroid/net/vcn/VcnManager$VcnStatusCallback;->-$$Nest$fgetmCbBinder(Landroid/net/vcn/VcnManager$VcnStatusCallback;)Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/vcn/VcnManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Landroid/net/vcn/IVcnManagementService;->registerVcnStatusCallback(Landroid/os/ParcelUuid;Landroid/net/vcn/IVcnStatusCallback;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :try_start_2
    monitor-exit p3

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    invoke-static {p3, v1}, Landroid/net/vcn/VcnManager$VcnStatusCallback;->-$$Nest$fputmCbBinder(Landroid/net/vcn/VcnManager$VcnStatusCallback;Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "callback is already registered with VcnManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public whitelist removeVcnNetworkPolicyChangeListener(Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;)V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-string/jumbo v0, "listener must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Landroid/net/vcn/VcnManager;->REGISTERED_POLICY_LISTENERS:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/vcn/VcnManager$VcnUnderlyingNetworkPolicyListenerBinder;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/net/vcn/VcnManager;->mService:Landroid/net/vcn/IVcnManagementService;

    invoke-interface {v1, v0}, Landroid/net/vcn/IVcnManagementService;->removeVcnUnderlyingNetworkPolicyListener(Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist removeVcnUnderlyingNetworkPolicyListener(Landroid/net/vcn/VcnManager$VcnUnderlyingNetworkPolicyListener;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/vcn/VcnManager;->removeVcnNetworkPolicyChangeListener(Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;)V

    return-void
.end method

.method public whitelist setVcnConfig(Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "subscriptionGroup was null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "config was null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Landroid/net/vcn/VcnManager;->mService:Landroid/net/vcn/IVcnManagementService;

    iget-object v1, p0, Landroid/net/vcn/VcnManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Landroid/net/vcn/IVcnManagementService;->setVcnConfig(Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist unregisterVcnStatusCallback(Landroid/net/vcn/VcnManager$VcnStatusCallback;)V
    .locals 3

    const-string v0, "callback must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    invoke-static {p1}, Landroid/net/vcn/VcnManager$VcnStatusCallback;->-$$Nest$fgetmCbBinder(Landroid/net/vcn/VcnManager$VcnStatusCallback;)Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder;

    move-result-object v0

    if-nez v0, :cond_0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Landroid/net/vcn/VcnManager;->mService:Landroid/net/vcn/IVcnManagementService;

    invoke-static {p1}, Landroid/net/vcn/VcnManager$VcnStatusCallback;->-$$Nest$fgetmCbBinder(Landroid/net/vcn/VcnManager$VcnStatusCallback;)Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/net/vcn/IVcnManagementService;->unregisterVcnStatusCallback(Landroid/net/vcn/IVcnStatusCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {p1, v0}, Landroid/net/vcn/VcnManager$VcnStatusCallback;->-$$Nest$fputmCbBinder(Landroid/net/vcn/VcnManager$VcnStatusCallback;Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder;)V

    nop

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    :try_start_4
    invoke-static {p1, v0}, Landroid/net/vcn/VcnManager$VcnStatusCallback;->-$$Nest$fputmCbBinder(Landroid/net/vcn/VcnManager$VcnStatusCallback;Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder;)V

    nop

    throw v1

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method
