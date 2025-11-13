.class public final Landroid/net/vcn/VcnConfig$Builder;
.super Ljava/lang/Object;
.source "VcnConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/vcn/VcnConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mGatewayConnectionConfigs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/net/vcn/VcnGatewayConnectionConfig;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIsTestModeProfile:Z

.field private final blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mRestrictedTransports:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/net/vcn/VcnConfig$Builder;->mGatewayConnectionConfigs:Ljava/util/Set;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/net/vcn/VcnConfig$Builder;->mRestrictedTransports:Ljava/util/Set;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/vcn/VcnConfig$Builder;->mIsTestModeProfile:Z

    const-string v0, "context was null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/vcn/VcnConfig$Builder;->mPackageName:Ljava/lang/String;

    iget-object v0, p0, Landroid/net/vcn/VcnConfig$Builder;->mRestrictedTransports:Ljava/util/Set;

    invoke-static {}, Landroid/net/vcn/VcnConfig;->-$$Nest$sfgetRESTRICTED_TRANSPORTS_DEFAULT()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private blacklist validateRestrictedTransportsOrThrow(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "transports was null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {}, Landroid/net/vcn/VcnConfig;->-$$Nest$sfgetALLOWED_TRANSPORTS()Ljava/util/Set;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid transport "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public whitelist addGatewayConnectionConfig(Landroid/net/vcn/VcnGatewayConnectionConfig;)Landroid/net/vcn/VcnConfig$Builder;
    .locals 4

    const-string v0, "gatewayConnectionConfig was null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/net/vcn/VcnConfig$Builder;->mGatewayConnectionConfigs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/vcn/VcnGatewayConnectionConfig;

    nop

    invoke-virtual {v1}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getGatewayConnectionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getGatewayConnectionName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "GatewayConnection for specified name already exists"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Landroid/net/vcn/VcnConfig$Builder;->mGatewayConnectionConfigs:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public whitelist build()Landroid/net/vcn/VcnConfig;
    .locals 7

    new-instance v6, Landroid/net/vcn/VcnConfig;

    iget-object v1, p0, Landroid/net/vcn/VcnConfig$Builder;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/vcn/VcnConfig$Builder;->mGatewayConnectionConfigs:Ljava/util/Set;

    iget-object v3, p0, Landroid/net/vcn/VcnConfig$Builder;->mRestrictedTransports:Ljava/util/Set;

    iget-boolean v4, p0, Landroid/net/vcn/VcnConfig$Builder;->mIsTestModeProfile:Z

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/net/vcn/VcnConfig;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;ZLandroid/net/vcn/VcnConfig-IA;)V

    return-object v6
.end method

.method public blacklist setIsTestModeProfile()Landroid/net/vcn/VcnConfig$Builder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/vcn/VcnConfig$Builder;->mIsTestModeProfile:Z

    return-object p0
.end method

.method public whitelist setRestrictedUnderlyingNetworkTransports(Ljava/util/Set;)Landroid/net/vcn/VcnConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/net/vcn/VcnConfig$Builder;"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/net/vcn/VcnConfig$Builder;->validateRestrictedTransportsOrThrow(Ljava/util/Set;)V

    iget-object v0, p0, Landroid/net/vcn/VcnConfig$Builder;->mRestrictedTransports:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Landroid/net/vcn/VcnConfig$Builder;->mRestrictedTransports:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method
