.class public final Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;
.super Landroid/net/vcn/VcnUnderlyingNetworkTemplate;
.source "VcnCellUnderlyingNetworkTemplate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;
    }
.end annotation


# static fields
.field private static final blacklist ALLOWED_NETWORK_PLMN_IDS_KEY:Ljava/lang/String; = "mAllowedNetworkPlmnIds"

.field private static final blacklist ALLOWED_SPECIFIC_CARRIER_IDS_KEY:Ljava/lang/String; = "mAllowedSpecificCarrierIds"

.field private static final blacklist CAPABILITIES_MATCH_CRITERIA_DEFAULT:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist CAPABILITIES_MATCH_CRITERIA_KEY:Ljava/lang/String; = "mCapabilitiesMatchCriteria"

.field private static final blacklist DEFAULT_OPPORTUNISTIC_MATCH_CRITERIA:I = 0x0

.field private static final blacklist DEFAULT_ROAMING_MATCH_CRITERIA:I = 0x0

.field private static final blacklist OPPORTUNISTIC_MATCH_KEY:Ljava/lang/String; = "mOpportunisticMatchCriteria"

.field private static final blacklist ROAMING_MATCH_KEY:Ljava/lang/String; = "mRoamingMatchCriteria"


# instance fields
.field private final blacklist mAllowedNetworkPlmnIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mAllowedSpecificCarrierIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCapabilitiesMatchCriteria:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mOpportunisticMatchCriteria:I

.field private final blacklist mRoamingMatchCriteria:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetCAPABILITIES_MATCH_CRITERIA_DEFAULT()Ljava/util/Map;
    .locals 1

    sget-object v0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->CAPABILITIES_MATCH_CRITERIA_DEFAULT:Ljava/util/Map;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smvalidatePlmnIds(Ljava/util/Set;)V
    .locals 0

    invoke-static {p0}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->validatePlmnIds(Ljava/util/Set;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->CAPABILITIES_MATCH_CRITERIA_DEFAULT:Ljava/util/Map;

    return-void
.end method

.method private constructor blacklist <init>(IIIIILjava/util/Set;Ljava/util/Set;IILjava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIII",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;II",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    move-object v7, p0

    const/4 v1, 0x2

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;-><init>(IIIIII)V

    new-instance v0, Landroid/util/ArraySet;

    move-object v1, p6

    invoke-direct {v0, p6}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v0, v7, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mAllowedNetworkPlmnIds:Ljava/util/Set;

    new-instance v0, Landroid/util/ArraySet;

    move-object v2, p7

    invoke-direct {v0, p7}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v0, v7, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mAllowedSpecificCarrierIds:Ljava/util/Set;

    move/from16 v0, p8

    iput v0, v7, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mRoamingMatchCriteria:I

    move/from16 v3, p9

    iput v3, v7, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mOpportunisticMatchCriteria:I

    new-instance v4, Ljava/util/HashMap;

    move-object/from16 v5, p10

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v4, v7, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mCapabilitiesMatchCriteria:Ljava/util/Map;

    invoke-virtual {p0}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->validate()V

    return-void
.end method

.method synthetic constructor blacklist <init>(IIIIILjava/util/Set;Ljava/util/Set;IILjava/util/Map;Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;-><init>(IIIIILjava/util/Set;Ljava/util/Set;IILjava/util/Map;)V

    return-void
.end method

.method public static blacklist fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;
    .locals 24

    move-object/from16 v0, p0

    const-string v1, "PersistableBundle is null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v1, "mMeteredMatchCriteria"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    nop

    const-string/jumbo v2, "mMinEntryUpstreamBandwidthKbps"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    nop

    const-string/jumbo v2, "mMinExitUpstreamBandwidthKbps"

    invoke-virtual {v0, v2, v3}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    nop

    const-string/jumbo v2, "mMinEntryDownstreamBandwidthKbps"

    invoke-virtual {v0, v2, v3}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v15

    nop

    const-string/jumbo v2, "mMinExitDownstreamBandwidthKbps"

    invoke-virtual {v0, v2, v3}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v16

    nop

    const-string/jumbo v2, "mAllowedNetworkPlmnIds"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v12

    const-string/jumbo v2, "plmnIdsBundle is null"

    invoke-static {v12, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v8, Landroid/util/ArraySet;

    sget-object v2, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->STRING_DESERIALIZER:Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Deserializer;

    invoke-static {v12, v2}, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->toList(Landroid/os/PersistableBundle;Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Deserializer;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v8, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    nop

    const-string/jumbo v2, "mAllowedSpecificCarrierIds"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v11

    const-string/jumbo v2, "specificCarrierIdsBundle is null"

    invoke-static {v11, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v9, Landroid/util/ArraySet;

    sget-object v2, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->INTEGER_DESERIALIZER:Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Deserializer;

    invoke-static {v11, v2}, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->toList(Landroid/os/PersistableBundle;Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Deserializer;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v9, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    nop

    const-string/jumbo v2, "mCapabilitiesMatchCriteria"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v10

    if-nez v10, :cond_0

    sget-object v2, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->CAPABILITIES_MATCH_CRITERIA_DEFAULT:Ljava/util/Map;

    move-object/from16 v17, v2

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->INTEGER_DESERIALIZER:Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Deserializer;

    sget-object v3, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->INTEGER_DESERIALIZER:Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Deserializer;

    invoke-static {v10, v2, v3}, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->toMap(Landroid/os/PersistableBundle;Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Deserializer;Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Deserializer;)Ljava/util/LinkedHashMap;

    move-result-object v2

    move-object/from16 v17, v2

    :goto_0
    const-string/jumbo v2, "mRoamingMatchCriteria"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v18

    const-string/jumbo v2, "mOpportunisticMatchCriteria"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v19

    new-instance v20, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;

    move-object/from16 v2, v20

    move v3, v1

    move v4, v13

    move v5, v14

    move v6, v15

    move/from16 v7, v16

    move-object/from16 v21, v10

    move/from16 v10, v18

    move-object/from16 v22, v11

    move/from16 v11, v19

    move-object/from16 v23, v12

    move-object/from16 v12, v17

    invoke-direct/range {v2 .. v12}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;-><init>(IIIIILjava/util/Set;Ljava/util/Set;IILjava/util/Map;)V

    return-object v20
.end method

.method private static blacklist validateCapabilitiesMatchCriteria(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "capabilitiesMatchCriteria is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v5, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->CAPABILITIES_MATCH_CRITERIA_DEFAULT:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NetworkCapability "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "out of range"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "capability "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->validateMatchCriteria(ILjava/lang/String;)V

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    or-int/2addr v0, v5

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    return-void

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No required capabilities found"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist validatePlmnIds(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "matchingOperatorPlmnIds is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1

    :cond_0
    const-string v2, "[0-9]+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found invalid PLMN ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method


# virtual methods
.method blacklist dumpTransportSpecificFields(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2

    iget-object v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mAllowedNetworkPlmnIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAllowedNetworkPlmnIds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mAllowedNetworkPlmnIds:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mAllowedNetworkPlmnIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAllowedSpecificCarrierIds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mAllowedSpecificCarrierIds:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCapabilitiesMatchCriteria: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mCapabilitiesMatchCriteria:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mRoamingMatchCriteria:I

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mRoamingMatchCriteria: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mRoamingMatchCriteria:I

    invoke-static {v1}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->getMatchCriteriaString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    iget v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mOpportunisticMatchCriteria:I

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mOpportunisticMatchCriteria: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mOpportunisticMatchCriteria:I

    invoke-static {v1}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->getMatchCriteriaString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    invoke-super {p0, p1}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p1, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;

    if-nez v0, :cond_1

    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;

    iget-object v2, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mAllowedNetworkPlmnIds:Ljava/util/Set;

    iget-object v3, v0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mAllowedNetworkPlmnIds:Ljava/util/Set;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mAllowedSpecificCarrierIds:Ljava/util/Set;

    iget-object v3, v0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mAllowedSpecificCarrierIds:Ljava/util/Set;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mCapabilitiesMatchCriteria:Ljava/util/Map;

    iget-object v3, v0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mCapabilitiesMatchCriteria:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mRoamingMatchCriteria:I

    iget v3, v0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mRoamingMatchCriteria:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mOpportunisticMatchCriteria:I

    iget v3, v0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mOpportunisticMatchCriteria:I

    if-ne v2, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    nop

    :goto_0
    return v1
.end method

.method public blacklist getCapabilitiesMatchCriteria()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mCapabilitiesMatchCriteria:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCbs()I
    .locals 2

    iget-object v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mCapabilitiesMatchCriteria:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getDun()I
    .locals 2

    iget-object v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mCapabilitiesMatchCriteria:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getIms()I
    .locals 2

    iget-object v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mCapabilitiesMatchCriteria:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getInternet()I
    .locals 2

    iget-object v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mCapabilitiesMatchCriteria:Ljava/util/Map;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getMms()I
    .locals 2

    iget-object v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mCapabilitiesMatchCriteria:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getOperatorPlmnIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mAllowedNetworkPlmnIds:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getOpportunistic()I
    .locals 1

    iget v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mOpportunisticMatchCriteria:I

    return v0
.end method

.method public whitelist getRcs()I
    .locals 2

    iget-object v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mCapabilitiesMatchCriteria:Ljava/util/Map;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getRoaming()I
    .locals 1

    iget v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mRoamingMatchCriteria:I

    return v0
.end method

.method public whitelist getSimSpecificCarrierIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mAllowedSpecificCarrierIds:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 7

    nop

    invoke-super {p0}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mAllowedNetworkPlmnIds:Ljava/util/Set;

    iget-object v3, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mAllowedSpecificCarrierIds:Ljava/util/Set;

    iget-object v4, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mCapabilitiesMatchCriteria:Ljava/util/Map;

    iget v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mRoamingMatchCriteria:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mOpportunisticMatchCriteria:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist toPersistableBundle()Landroid/os/PersistableBundle;
    .locals 6

    invoke-super {p0}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->toPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mAllowedNetworkPlmnIds:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v2, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->STRING_SERIALIZER:Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Serializer;

    invoke-static {v1, v2}, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->fromList(Ljava/util/List;Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Serializer;)Landroid/os/PersistableBundle;

    move-result-object v1

    const-string/jumbo v2, "mAllowedNetworkPlmnIds"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mAllowedSpecificCarrierIds:Ljava/util/Set;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v3, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->INTEGER_SERIALIZER:Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Serializer;

    invoke-static {v2, v3}, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->fromList(Ljava/util/List;Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Serializer;)Landroid/os/PersistableBundle;

    move-result-object v2

    const-string/jumbo v3, "mAllowedSpecificCarrierIds"

    invoke-virtual {v0, v3, v2}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    iget-object v3, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mCapabilitiesMatchCriteria:Ljava/util/Map;

    sget-object v4, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->INTEGER_SERIALIZER:Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Serializer;

    sget-object v5, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->INTEGER_SERIALIZER:Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Serializer;

    invoke-static {v3, v4, v5}, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->fromMap(Ljava/util/Map;Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Serializer;Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Serializer;)Landroid/os/PersistableBundle;

    move-result-object v3

    const-string/jumbo v4, "mCapabilitiesMatchCriteria"

    invoke-virtual {v0, v4, v3}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    const-string/jumbo v4, "mRoamingMatchCriteria"

    iget v5, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mRoamingMatchCriteria:I

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v4, "mOpportunisticMatchCriteria"

    iget v5, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mOpportunisticMatchCriteria:I

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method protected blacklist validate()V
    .locals 2

    invoke-super {p0}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->validate()V

    iget-object v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mAllowedNetworkPlmnIds:Ljava/util/Set;

    invoke-static {v0}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->validatePlmnIds(Ljava/util/Set;)V

    iget-object v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mCapabilitiesMatchCriteria:Ljava/util/Map;

    invoke-static {v0}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->validateCapabilitiesMatchCriteria(Ljava/util/Map;)V

    iget-object v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mAllowedSpecificCarrierIds:Ljava/util/Set;

    const-string/jumbo v1, "matchingCarrierIds is null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mRoamingMatchCriteria:I

    const-string/jumbo v1, "mRoamingMatchCriteria"

    invoke-static {v0, v1}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->validateMatchCriteria(ILjava/lang/String;)V

    iget v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mOpportunisticMatchCriteria:I

    const-string/jumbo v1, "mOpportunisticMatchCriteria"

    invoke-static {v0, v1}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->validateMatchCriteria(ILjava/lang/String;)V

    return-void
.end method
