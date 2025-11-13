.class public final Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;
.super Landroid/net/vcn/VcnUnderlyingNetworkTemplate;
.source "VcnWifiUnderlyingNetworkTemplate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;
    }
.end annotation


# static fields
.field private static final blacklist SSIDS_KEY:Ljava/lang/String; = "mSsids"


# instance fields
.field private final blacklist mSsids:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$smvalidateSsids(Ljava/util/Set;)V
    .locals 0

    invoke-static {p0}, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;->validateSsids(Ljava/util/Set;)V

    return-void
.end method

.method private constructor blacklist <init>(IIIIILjava/util/Set;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIII",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;-><init>(IIIIII)V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p6}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;->mSsids:Ljava/util/Set;

    invoke-virtual {p0}, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;->validate()V

    return-void
.end method

.method synthetic constructor blacklist <init>(IIIIILjava/util/Set;Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;-><init>(IIIIILjava/util/Set;)V

    return-void
.end method

.method public static blacklist fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;
    .locals 14

    const-string v0, "PersistableBundle is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "mMeteredMatchCriteria"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    nop

    const-string/jumbo v1, "mMinEntryUpstreamBandwidthKbps"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    nop

    const-string/jumbo v1, "mMinExitUpstreamBandwidthKbps"

    invoke-virtual {p0, v1, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    nop

    const-string/jumbo v1, "mMinEntryDownstreamBandwidthKbps"

    invoke-virtual {p0, v1, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    nop

    const-string/jumbo v1, "mMinExitDownstreamBandwidthKbps"

    invoke-virtual {p0, v1, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    const-string/jumbo v1, "mSsids"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v12

    const-string/jumbo v1, "ssidsBundle is null"

    invoke-static {v12, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v7, Landroid/util/ArraySet;

    sget-object v1, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->STRING_DESERIALIZER:Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Deserializer;

    invoke-static {v12, v1}, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->toList(Landroid/os/PersistableBundle;Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Deserializer;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v7, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    new-instance v13, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;

    move-object v1, v13

    move v2, v0

    move v3, v8

    move v4, v9

    move v5, v10

    move v6, v11

    invoke-direct/range {v1 .. v7}, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;-><init>(IIIIILjava/util/Set;)V

    return-object v13
.end method

.method private static blacklist validateSsids(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "ssids is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "found null value ssid"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method blacklist dumpTransportSpecificFields(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2

    iget-object v0, p0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;->mSsids:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mSsids: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;->mSsids:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3

    invoke-super {p0, p1}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p1, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;

    if-nez v0, :cond_1

    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;

    iget-object v1, p0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;->mSsids:Ljava/util/Set;

    iget-object v2, v0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;->mSsids:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

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

    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSsids()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;->mSsids:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    invoke-super {p0}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;->mSsids:Ljava/util/Set;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist toPersistableBundle()Landroid/os/PersistableBundle;
    .locals 3

    invoke-super {p0}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->toPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;->mSsids:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v2, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->STRING_SERIALIZER:Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Serializer;

    invoke-static {v1, v2}, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->fromList(Ljava/util/List;Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Serializer;)Landroid/os/PersistableBundle;

    move-result-object v1

    const-string/jumbo v2, "mSsids"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    return-object v0
.end method

.method protected blacklist validate()V
    .locals 1

    invoke-super {p0}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->validate()V

    iget-object v0, p0, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;->mSsids:Ljava/util/Set;

    invoke-static {v0}, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;->validateSsids(Ljava/util/Set;)V

    return-void
.end method
