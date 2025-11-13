.class public final Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;
.super Ljava/lang/Object;
.source "VcnCellUnderlyingNetworkTemplate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


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

.field private blacklist mMeteredMatchCriteria:I

.field private blacklist mMinEntryDownstreamBandwidthKbps:I

.field private blacklist mMinEntryUpstreamBandwidthKbps:I

.field private blacklist mMinExitDownstreamBandwidthKbps:I

.field private blacklist mMinExitUpstreamBandwidthKbps:I

.field private blacklist mOpportunisticMatchCriteria:I

.field private blacklist mRoamingMatchCriteria:I


# direct methods
.method public constructor whitelist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mMeteredMatchCriteria:I

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mAllowedNetworkPlmnIds:Ljava/util/Set;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mAllowedSpecificCarrierIds:Ljava/util/Set;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mCapabilitiesMatchCriteria:Ljava/util/Map;

    iput v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mRoamingMatchCriteria:I

    iput v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mOpportunisticMatchCriteria:I

    iput v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mMinEntryUpstreamBandwidthKbps:I

    iput v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mMinExitUpstreamBandwidthKbps:I

    iput v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mMinEntryDownstreamBandwidthKbps:I

    iput v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mMinExitDownstreamBandwidthKbps:I

    iget-object v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mCapabilitiesMatchCriteria:Ljava/util/Map;

    invoke-static {}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->-$$Nest$sfgetCAPABILITIES_MATCH_CRITERIA_DEFAULT()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;
    .locals 13

    new-instance v12, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;

    iget v1, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mMeteredMatchCriteria:I

    iget v2, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mMinEntryUpstreamBandwidthKbps:I

    iget v3, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mMinExitUpstreamBandwidthKbps:I

    iget v4, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mMinEntryDownstreamBandwidthKbps:I

    iget v5, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mMinExitDownstreamBandwidthKbps:I

    iget-object v6, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mAllowedNetworkPlmnIds:Ljava/util/Set;

    iget-object v7, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mAllowedSpecificCarrierIds:Ljava/util/Set;

    iget v8, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mRoamingMatchCriteria:I

    iget v9, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mOpportunisticMatchCriteria:I

    iget-object v10, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mCapabilitiesMatchCriteria:Ljava/util/Map;

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;-><init>(IIIIILjava/util/Set;Ljava/util/Set;IILjava/util/Map;Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate-IA;)V

    return-object v12
.end method

.method public whitelist setCbs(I)Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;
    .locals 3

    const-string/jumbo v0, "setCbs"

    invoke-static {p1, v0}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->validateMatchCriteria(ILjava/lang/String;)V

    iget-object v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mCapabilitiesMatchCriteria:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public whitelist setDun(I)Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;
    .locals 3

    const-string/jumbo v0, "setDun"

    invoke-static {p1, v0}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->validateMatchCriteria(ILjava/lang/String;)V

    iget-object v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mCapabilitiesMatchCriteria:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public whitelist setIms(I)Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;
    .locals 3

    const-string/jumbo v0, "setIms"

    invoke-static {p1, v0}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->validateMatchCriteria(ILjava/lang/String;)V

    iget-object v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mCapabilitiesMatchCriteria:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public whitelist setInternet(I)Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;
    .locals 3

    const-string/jumbo v0, "setInternet"

    invoke-static {p1, v0}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->validateMatchCriteria(ILjava/lang/String;)V

    iget-object v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mCapabilitiesMatchCriteria:Ljava/util/Map;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public whitelist setMetered(I)Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;
    .locals 1

    const-string/jumbo v0, "setMetered"

    invoke-static {p1, v0}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->validateMatchCriteria(ILjava/lang/String;)V

    iput p1, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mMeteredMatchCriteria:I

    return-object p0
.end method

.method public whitelist setMinDownstreamBandwidthKbps(II)Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;
    .locals 0

    invoke-static {p1, p2}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->validateMinBandwidthKbps(II)V

    iput p1, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mMinEntryDownstreamBandwidthKbps:I

    iput p2, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mMinExitDownstreamBandwidthKbps:I

    return-object p0
.end method

.method public whitelist setMinUpstreamBandwidthKbps(II)Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;
    .locals 0

    invoke-static {p1, p2}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->validateMinBandwidthKbps(II)V

    iput p1, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mMinEntryUpstreamBandwidthKbps:I

    iput p2, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mMinExitUpstreamBandwidthKbps:I

    return-object p0
.end method

.method public whitelist setMms(I)Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;
    .locals 3

    const-string/jumbo v0, "setMms"

    invoke-static {p1, v0}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->validateMatchCriteria(ILjava/lang/String;)V

    iget-object v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mCapabilitiesMatchCriteria:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public whitelist setOperatorPlmnIds(Ljava/util/Set;)Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;"
        }
    .end annotation

    invoke-static {p1}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->-$$Nest$smvalidatePlmnIds(Ljava/util/Set;)V

    iget-object v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mAllowedNetworkPlmnIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mAllowedNetworkPlmnIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public whitelist setOpportunistic(I)Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;
    .locals 1

    const-string/jumbo v0, "setOpportunistic"

    invoke-static {p1, v0}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->validateMatchCriteria(ILjava/lang/String;)V

    iput p1, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mOpportunisticMatchCriteria:I

    return-object p0
.end method

.method public whitelist setRcs(I)Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;
    .locals 3

    const-string/jumbo v0, "setRcs"

    invoke-static {p1, v0}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->validateMatchCriteria(ILjava/lang/String;)V

    iget-object v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mCapabilitiesMatchCriteria:Ljava/util/Map;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public whitelist setRoaming(I)Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;
    .locals 1

    const-string/jumbo v0, "setRoaming"

    invoke-static {p1, v0}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->validateMatchCriteria(ILjava/lang/String;)V

    iput p1, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mRoamingMatchCriteria:I

    return-object p0
.end method

.method public whitelist setSimSpecificCarrierIds(Ljava/util/Set;)Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;"
        }
    .end annotation

    const-string/jumbo v0, "simSpecificCarrierIds is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mAllowedSpecificCarrierIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->mAllowedSpecificCarrierIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method
