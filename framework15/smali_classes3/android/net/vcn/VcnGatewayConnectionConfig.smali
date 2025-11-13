.class public final Landroid/net/vcn/VcnGatewayConnectionConfig;
.super Ljava/lang/Object;
.source "VcnGatewayConnectionConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;,
        Landroid/net/vcn/VcnGatewayConnectionConfig$VcnGatewayOption;,
        Landroid/net/vcn/VcnGatewayConnectionConfig$VcnSupportedCapability;
    }
.end annotation


# static fields
.field public static final blacklist ALLOWED_CAPABILITIES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist ALLOWED_GATEWAY_OPTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DEFAULT_MAX_MTU:I = 0x5dc

.field private static final blacklist DEFAULT_RETRY_INTERVALS_MS:[J

.field public static final blacklist DEFAULT_UNDERLYING_NETWORK_TEMPLATES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/vcn/VcnUnderlyingNetworkTemplate;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist EXPOSED_CAPABILITIES_KEY:Ljava/lang/String; = "mExposedCapabilities"

.field private static final blacklist GATEWAY_CONNECTION_NAME_KEY:Ljava/lang/String; = "mGatewayConnectionName"

.field private static final blacklist GATEWAY_OPTIONS_KEY:Ljava/lang/String; = "mGatewayOptions"

.field private static final blacklist IS_SAFE_MODE_DISABLED_KEY:Ljava/lang/String; = "mIsSafeModeDisabled"

.field private static final blacklist MAX_MTU_KEY:Ljava/lang/String; = "mMaxMtu"

.field private static final blacklist MAX_RETRY_INTERVAL_COUNT:I = 0xa

.field private static final blacklist MINIMUM_REPEATING_RETRY_INTERVAL_MS:J

.field static final blacklist MIN_MTU_V6:I = 0x500

.field public static final blacklist MIN_UDP_PORT_4500_NAT_TIMEOUT_SECONDS:I = 0x78

.field private static final blacklist MIN_UDP_PORT_4500_NAT_TIMEOUT_SECONDS_KEY:Ljava/lang/String; = "mMinUdpPort4500NatTimeoutSeconds"

.field public static final blacklist MIN_UDP_PORT_4500_NAT_TIMEOUT_UNSET:I = -0x1

.field private static final blacklist RETRY_INTERVAL_MS_KEY:Ljava/lang/String; = "mRetryIntervalsMs"

.field private static final blacklist TUNNEL_CONNECTION_PARAMS_KEY:Ljava/lang/String; = "mTunnelConnectionParams"

.field public static final blacklist UNDERLYING_NETWORK_TEMPLATES_KEY:Ljava/lang/String; = "mUnderlyingNetworkTemplates"

.field public static final whitelist VCN_GATEWAY_OPTION_ENABLE_DATA_STALL_RECOVERY_WITH_MOBILITY:I


# instance fields
.field private final blacklist mExposedCapabilities:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mGatewayConnectionName:Ljava/lang/String;

.field private final blacklist mGatewayOptions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mIsSafeModeDisabled:Z

.field private final blacklist mMaxMtu:I

.field private final blacklist mMinUdpPort4500NatTimeoutSeconds:I

.field private final blacklist mRetryIntervalsMs:[J

.field private blacklist mTunnelConnectionParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

.field private final blacklist mUnderlyingNetworkTemplates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/vcn/VcnUnderlyingNetworkTemplate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetDEFAULT_RETRY_INTERVALS_MS()[J
    .locals 1

    sget-object v0, Landroid/net/vcn/VcnGatewayConnectionConfig;->DEFAULT_RETRY_INTERVALS_MS:[J

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smcheckValidCapability(I)V
    .locals 0

    invoke-static {p0}, Landroid/net/vcn/VcnGatewayConnectionConfig;->checkValidCapability(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smvalidateGatewayOption(I)V
    .locals 0

    invoke-static {p0}, Landroid/net/vcn/VcnGatewayConnectionConfig;->validateGatewayOption(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smvalidateNetworkTemplateList(Ljava/util/List;)V
    .locals 0

    invoke-static {p0}, Landroid/net/vcn/VcnGatewayConnectionConfig;->validateNetworkTemplateList(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smvalidateRetryInterval([J)V
    .locals 0

    invoke-static {p0}, Landroid/net/vcn/VcnGatewayConnectionConfig;->validateRetryInterval([J)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 17

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v9, 0x8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v9, 0x9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v9, 0xa

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v9, 0xc

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v9, 0x17

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v9

    sput-object v9, Landroid/net/vcn/VcnGatewayConnectionConfig;->ALLOWED_CAPABILITIES:Ljava/util/Set;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/net/vcn/VcnGatewayConnectionConfig;->ALLOWED_GATEWAY_OPTIONS:Ljava/util/Set;

    sget-object v0, Landroid/net/vcn/VcnGatewayConnectionConfig;->ALLOWED_GATEWAY_OPTIONS:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v9, 0xf

    invoke-virtual {v0, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v11

    sput-wide v11, Landroid/net/vcn/VcnGatewayConnectionConfig;->MINIMUM_REPEATING_RETRY_INTERVAL_MS:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v11, 0x1

    invoke-virtual {v0, v11, v12}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v13

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x2

    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x5

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v15

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v11, v12}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v11

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    new-array v0, v8, [J

    aput-wide v13, v0, v1

    const/4 v1, 0x1

    aput-wide v6, v0, v1

    const/4 v1, 0x2

    aput-wide v15, v0, v1

    const/4 v1, 0x3

    aput-wide v2, v0, v1

    const/4 v1, 0x4

    aput-wide v11, v0, v1

    const/4 v1, 0x5

    aput-wide v4, v0, v1

    const/4 v1, 0x6

    aput-wide v9, v0, v1

    sput-object v0, Landroid/net/vcn/VcnGatewayConnectionConfig;->DEFAULT_RETRY_INTERVALS_MS:[J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/net/vcn/VcnGatewayConnectionConfig;->DEFAULT_UNDERLYING_NETWORK_TEMPLATES:Ljava/util/List;

    sget-object v0, Landroid/net/vcn/VcnGatewayConnectionConfig;->DEFAULT_UNDERLYING_NETWORK_TEMPLATES:Ljava/util/List;

    new-instance v1, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;

    invoke-direct {v1}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->setOpportunistic(I)Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->build()Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/net/vcn/VcnGatewayConnectionConfig;->DEFAULT_UNDERLYING_NETWORK_TEMPLATES:Ljava/util/List;

    new-instance v1, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;

    invoke-direct {v1}, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;->build()Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/net/vcn/VcnGatewayConnectionConfig;->DEFAULT_UNDERLYING_NETWORK_TEMPLATES:Ljava/util/List;

    new-instance v1, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;

    invoke-direct {v1}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->build()Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PersistableBundle;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    const-string/jumbo v0, "mTunnelConnectionParams"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v0

    const-string/jumbo v1, "tunnelConnectionParamsBundle was null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    nop

    const-string/jumbo v1, "mExposedCapabilities"

    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v1

    const-string/jumbo v2, "mGatewayConnectionName"

    invoke-virtual {p1, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mGatewayConnectionName:Ljava/lang/String;

    nop

    invoke-static {v0}, Landroid/net/vcn/persistablebundleutils/TunnelConnectionParamsUtils;->fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    move-result-object v2

    iput-object v2, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mTunnelConnectionParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    new-instance v2, Ljava/util/TreeSet;

    sget-object v3, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->INTEGER_DESERIALIZER:Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Deserializer;

    invoke-static {v1, v3}, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->toList(Landroid/os/PersistableBundle;Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Deserializer;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mExposedCapabilities:Ljava/util/SortedSet;

    nop

    const-string/jumbo v2, "mUnderlyingNetworkTemplates"

    invoke-virtual {p1, v2}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    sget-object v4, Landroid/net/vcn/VcnGatewayConnectionConfig;->DEFAULT_UNDERLYING_NETWORK_TEMPLATES:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mUnderlyingNetworkTemplates:Ljava/util/List;

    goto :goto_0

    :cond_0
    new-instance v3, Landroid/net/vcn/VcnGatewayConnectionConfig$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Landroid/net/vcn/VcnGatewayConnectionConfig$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v2, v3}, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->toList(Landroid/os/PersistableBundle;Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Deserializer;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mUnderlyingNetworkTemplates:Ljava/util/List;

    :goto_0
    const-string/jumbo v3, "mGatewayOptions"

    invoke-virtual {p1, v3}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v4

    iput-object v4, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mGatewayOptions:Ljava/util/Set;

    goto :goto_1

    :cond_1
    new-instance v4, Landroid/util/ArraySet;

    sget-object v5, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->INTEGER_DESERIALIZER:Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Deserializer;

    invoke-static {v3, v5}, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->toList(Landroid/os/PersistableBundle;Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Deserializer;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v4, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mGatewayOptions:Ljava/util/Set;

    :goto_1
    const-string/jumbo v4, "mRetryIntervalsMs"

    invoke-virtual {p1, v4}, Landroid/os/PersistableBundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v4

    iput-object v4, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mRetryIntervalsMs:[J

    const-string/jumbo v4, "mMaxMtu"

    invoke-virtual {p1, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mMaxMtu:I

    nop

    const-string/jumbo v4, "mMinUdpPort4500NatTimeoutSeconds"

    const/4 v5, -0x1

    invoke-virtual {p1, v4, v5}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mMinUdpPort4500NatTimeoutSeconds:I

    const-string/jumbo v4, "mIsSafeModeDisabled"

    invoke-virtual {p1, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mIsSafeModeDisabled:Z

    invoke-direct {p0}, Landroid/net/vcn/VcnGatewayConnectionConfig;->validate()V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Landroid/net/ipsec/ike/IkeTunnelConnectionParams;Ljava/util/Set;Ljava/util/List;[JIIZLjava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/ipsec/ike/IkeTunnelConnectionParams;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Landroid/net/vcn/VcnUnderlyingNetworkTemplate;",
            ">;[JIIZ",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mGatewayConnectionName:Ljava/lang/String;

    iput-object p2, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mTunnelConnectionParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0, p3}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mExposedCapabilities:Ljava/util/SortedSet;

    iput-object p5, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mRetryIntervalsMs:[J

    iput p6, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mMaxMtu:I

    iput p7, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mMinUdpPort4500NatTimeoutSeconds:I

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p9}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mGatewayOptions:Ljava/util/Set;

    iput-boolean p8, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mIsSafeModeDisabled:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mUnderlyingNetworkTemplates:Ljava/util/List;

    iget-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mUnderlyingNetworkTemplates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mUnderlyingNetworkTemplates:Ljava/util/List;

    sget-object v1, Landroid/net/vcn/VcnGatewayConnectionConfig;->DEFAULT_UNDERLYING_NETWORK_TEMPLATES:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-direct {p0}, Landroid/net/vcn/VcnGatewayConnectionConfig;->validate()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Landroid/net/ipsec/ike/IkeTunnelConnectionParams;Ljava/util/Set;Ljava/util/List;[JIIZLjava/util/Set;Landroid/net/vcn/VcnGatewayConnectionConfig-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Landroid/net/vcn/VcnGatewayConnectionConfig;-><init>(Ljava/lang/String;Landroid/net/ipsec/ike/IkeTunnelConnectionParams;Ljava/util/Set;Ljava/util/List;[JIIZLjava/util/Set;)V

    return-void
.end method

.method private static blacklist checkValidCapability(I)V
    .locals 3

    sget-object v0, Landroid/net/vcn/VcnGatewayConnectionConfig;->ALLOWED_CAPABILITIES:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkCapability "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "out of range"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    return-void
.end method

.method private blacklist validate()V
    .locals 5

    iget-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mGatewayConnectionName:Ljava/lang/String;

    const-string v1, "gatewayConnectionName was null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mTunnelConnectionParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    const-string/jumbo v1, "tunnel connection parameter was null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mExposedCapabilities:Ljava/util/SortedSet;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mExposedCapabilities:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "exposedCapsBundle was null or empty"

    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getAllExposedCapabilities()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/net/vcn/VcnGatewayConnectionConfig;->checkValidCapability(I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mUnderlyingNetworkTemplates:Ljava/util/List;

    invoke-static {v0}, Landroid/net/vcn/VcnGatewayConnectionConfig;->validateNetworkTemplateList(Ljava/util/List;)V

    iget-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mRetryIntervalsMs:[J

    const-string/jumbo v3, "retryIntervalsMs was null"

    invoke-static {v0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mRetryIntervalsMs:[J

    invoke-static {v0}, Landroid/net/vcn/VcnGatewayConnectionConfig;->validateRetryInterval([J)V

    iget v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mMaxMtu:I

    const/16 v3, 0x500

    if-lt v0, v3, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    const-string/jumbo v3, "maxMtu must be at least IPv6 min MTU (1280)"

    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mMinUdpPort4500NatTimeoutSeconds:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_4

    iget v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mMinUdpPort4500NatTimeoutSeconds:I

    const/16 v3, 0x78

    if-lt v0, v3, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :cond_4
    :goto_3
    const-string/jumbo v0, "minUdpPort4500NatTimeoutSeconds must be at least 120s"

    invoke-static {v1, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mGatewayOptions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/net/vcn/VcnGatewayConnectionConfig;->validateGatewayOption(I)V

    goto :goto_4

    :cond_5
    return-void
.end method

.method private static blacklist validateGatewayOption(I)V
    .locals 3

    sget-object v0, Landroid/net/vcn/VcnGatewayConnectionConfig;->ALLOWED_GATEWAY_OPTIONS:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid vcn gateway option: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist validateNetworkTemplateList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/vcn/VcnUnderlyingNetworkTemplate;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "networkPriorityRules is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;

    const-string v3, "Found null value VcnUnderlyingNetworkTemplate"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Found duplicate VcnUnderlyingNetworkTemplate"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-void
.end method

.method private static blacklist validateRetryInterval([J)V
    .locals 5

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    array-length v1, p0

    if-lez v1, :cond_0

    array-length v1, p0

    const/16 v2, 0xa

    if-gt v1, v2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string/jumbo v2, "retryIntervalsMs was null, empty or exceed max interval count"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    array-length v1, p0

    sub-int/2addr v1, v0

    aget-wide v0, p0, v1

    sget-wide v2, Landroid/net/vcn/VcnGatewayConnectionConfig;->MINIMUM_REPEATING_RETRY_INTERVAL_MS:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    return-void

    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Repeating retry interval was too short, must be a minimum of 15 minutes: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Landroid/net/vcn/VcnGatewayConnectionConfig;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/net/vcn/VcnGatewayConnectionConfig;

    iget-object v2, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mGatewayConnectionName:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mGatewayConnectionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mTunnelConnectionParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    iget-object v3, v0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mTunnelConnectionParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    invoke-virtual {v2, v3}, Landroid/net/ipsec/ike/IkeTunnelConnectionParams;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mExposedCapabilities:Ljava/util/SortedSet;

    iget-object v3, v0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mExposedCapabilities:Ljava/util/SortedSet;

    invoke-interface {v2, v3}, Ljava/util/SortedSet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mUnderlyingNetworkTemplates:Ljava/util/List;

    iget-object v3, v0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mUnderlyingNetworkTemplates:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mRetryIntervalsMs:[J

    iget-object v3, v0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mRetryIntervalsMs:[J

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mMaxMtu:I

    iget v3, v0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mMaxMtu:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mMinUdpPort4500NatTimeoutSeconds:I

    iget v3, v0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mMinUdpPort4500NatTimeoutSeconds:I

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mIsSafeModeDisabled:Z

    iget-boolean v3, v0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mIsSafeModeDisabled:Z

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mGatewayOptions:Ljava/util/Set;

    iget-object v3, v0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mGatewayOptions:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    :goto_0
    return v1
.end method

.method public blacklist getAllExposedCapabilities()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mExposedCapabilities:Ljava/util/SortedSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getExposedCapabilities()[I
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mExposedCapabilities:Ljava/util/SortedSet;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->convertToIntArray(Ljava/util/List;)[I

    move-result-object v0

    return-object v0
.end method

.method public whitelist getGatewayConnectionName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mGatewayConnectionName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getMaxMtu()I
    .locals 1

    iget v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mMaxMtu:I

    return v0
.end method

.method public whitelist getMinUdpPort4500NatTimeoutSeconds()I
    .locals 1

    iget v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mMinUdpPort4500NatTimeoutSeconds:I

    return v0
.end method

.method public whitelist getRetryIntervalsMillis()[J
    .locals 2

    iget-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mRetryIntervalsMs:[J

    iget-object v1, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mRetryIntervalsMs:[J

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTunnelConnectionParams()Landroid/net/ipsec/ike/IkeTunnelConnectionParams;
    .locals 1

    iget-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mTunnelConnectionParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    return-object v0
.end method

.method public whitelist getVcnUnderlyingNetworkPriorities()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/vcn/VcnUnderlyingNetworkTemplate;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mUnderlyingNetworkTemplates:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public whitelist hasGatewayOption(I)Z
    .locals 2

    invoke-static {p1}, Landroid/net/vcn/VcnGatewayConnectionConfig;->validateGatewayOption(I)V

    iget-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mGatewayOptions:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 9

    iget-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mGatewayConnectionName:Ljava/lang/String;

    iget-object v1, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mTunnelConnectionParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    iget-object v2, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mExposedCapabilities:Ljava/util/SortedSet;

    iget-object v3, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mUnderlyingNetworkTemplates:Ljava/util/List;

    iget-object v4, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mRetryIntervalsMs:[J

    invoke-static {v4}, Ljava/util/Arrays;->hashCode([J)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mMaxMtu:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mMinUdpPort4500NatTimeoutSeconds:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-boolean v7, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mIsSafeModeDisabled:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-object v8, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mGatewayOptions:Ljava/util/Set;

    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isSafeModeEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mIsSafeModeDisabled:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public blacklist toPersistableBundle()Landroid/os/PersistableBundle;
    .locals 7

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    iget-object v1, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mTunnelConnectionParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    invoke-static {v1}, Landroid/net/vcn/persistablebundleutils/TunnelConnectionParamsUtils;->toPersistableBundle(Landroid/net/ipsec/ike/IkeTunnelConnectionParams;)Landroid/os/PersistableBundle;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mExposedCapabilities:Ljava/util/SortedSet;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v3, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->INTEGER_SERIALIZER:Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Serializer;

    invoke-static {v2, v3}, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->fromList(Ljava/util/List;Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Serializer;)Landroid/os/PersistableBundle;

    move-result-object v2

    iget-object v3, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mUnderlyingNetworkTemplates:Ljava/util/List;

    new-instance v4, Landroid/net/vcn/VcnGatewayConnectionConfig$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Landroid/net/vcn/VcnGatewayConnectionConfig$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v3, v4}, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->fromList(Ljava/util/List;Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Serializer;)Landroid/os/PersistableBundle;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mGatewayOptions:Ljava/util/Set;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v5, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->INTEGER_SERIALIZER:Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Serializer;

    invoke-static {v4, v5}, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->fromList(Ljava/util/List;Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Serializer;)Landroid/os/PersistableBundle;

    move-result-object v4

    const-string/jumbo v5, "mGatewayConnectionName"

    iget-object v6, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mGatewayConnectionName:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "mTunnelConnectionParams"

    invoke-virtual {v0, v5, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    const-string/jumbo v5, "mExposedCapabilities"

    invoke-virtual {v0, v5, v2}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    const-string/jumbo v5, "mUnderlyingNetworkTemplates"

    invoke-virtual {v0, v5, v3}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    const-string/jumbo v5, "mGatewayOptions"

    invoke-virtual {v0, v5, v4}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    const-string/jumbo v5, "mRetryIntervalsMs"

    iget-object v6, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mRetryIntervalsMs:[J

    invoke-virtual {v0, v5, v6}, Landroid/os/PersistableBundle;->putLongArray(Ljava/lang/String;[J)V

    const-string/jumbo v5, "mMaxMtu"

    iget v6, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mMaxMtu:I

    invoke-virtual {v0, v5, v6}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v5, "mMinUdpPort4500NatTimeoutSeconds"

    iget v6, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mMinUdpPort4500NatTimeoutSeconds:I

    invoke-virtual {v0, v5, v6}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v5, "mIsSafeModeDisabled"

    iget-boolean v6, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mIsSafeModeDisabled:Z

    invoke-virtual {v0, v5, v6}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method
