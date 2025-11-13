.class public final Landroid/net/vcn/VcnUnderlyingNetworkPolicy;
.super Ljava/lang/Object;
.source "VcnUnderlyingNetworkPolicy.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/vcn/VcnUnderlyingNetworkPolicy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mVcnNetworkPolicyResult:Landroid/net/vcn/VcnNetworkPolicyResult;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/vcn/VcnUnderlyingNetworkPolicy$1;

    invoke-direct {v0}, Landroid/net/vcn/VcnUnderlyingNetworkPolicy$1;-><init>()V

    sput-object v0, Landroid/net/vcn/VcnUnderlyingNetworkPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/net/vcn/VcnNetworkPolicyResult;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    const-string/jumbo v0, "vcnNetworkPolicyResult"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/vcn/VcnNetworkPolicyResult;

    iput-object v0, p0, Landroid/net/vcn/VcnUnderlyingNetworkPolicy;->mVcnNetworkPolicyResult:Landroid/net/vcn/VcnNetworkPolicyResult;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/vcn/VcnNetworkPolicyResult;Landroid/net/vcn/VcnUnderlyingNetworkPolicy-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/vcn/VcnUnderlyingNetworkPolicy;-><init>(Landroid/net/vcn/VcnNetworkPolicyResult;)V

    return-void
.end method

.method public constructor blacklist <init>(ZLandroid/net/NetworkCapabilities;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "mergedNetworkCapabilities must be nonnull"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Landroid/net/vcn/VcnNetworkPolicyResult;

    invoke-direct {v0, p1, p2}, Landroid/net/vcn/VcnNetworkPolicyResult;-><init>(ZLandroid/net/NetworkCapabilities;)V

    iput-object v0, p0, Landroid/net/vcn/VcnUnderlyingNetworkPolicy;->mVcnNetworkPolicyResult:Landroid/net/vcn/VcnNetworkPolicyResult;

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    instance-of v0, p1, Landroid/net/vcn/VcnUnderlyingNetworkPolicy;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/net/vcn/VcnUnderlyingNetworkPolicy;

    iget-object v1, p0, Landroid/net/vcn/VcnUnderlyingNetworkPolicy;->mVcnNetworkPolicyResult:Landroid/net/vcn/VcnNetworkPolicyResult;

    iget-object v2, v0, Landroid/net/vcn/VcnUnderlyingNetworkPolicy;->mVcnNetworkPolicyResult:Landroid/net/vcn/VcnNetworkPolicyResult;

    invoke-virtual {v1, v2}, Landroid/net/vcn/VcnNetworkPolicyResult;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public blacklist getMergedNetworkCapabilities()Landroid/net/NetworkCapabilities;
    .locals 1

    iget-object v0, p0, Landroid/net/vcn/VcnUnderlyingNetworkPolicy;->mVcnNetworkPolicyResult:Landroid/net/vcn/VcnNetworkPolicyResult;

    invoke-virtual {v0}, Landroid/net/vcn/VcnNetworkPolicyResult;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    iget-object v0, p0, Landroid/net/vcn/VcnUnderlyingNetworkPolicy;->mVcnNetworkPolicyResult:Landroid/net/vcn/VcnNetworkPolicyResult;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isTeardownRequested()Z
    .locals 1

    iget-object v0, p0, Landroid/net/vcn/VcnUnderlyingNetworkPolicy;->mVcnNetworkPolicyResult:Landroid/net/vcn/VcnNetworkPolicyResult;

    invoke-virtual {v0}, Landroid/net/vcn/VcnNetworkPolicyResult;->isTeardownRequested()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/vcn/VcnUnderlyingNetworkPolicy;->mVcnNetworkPolicyResult:Landroid/net/vcn/VcnNetworkPolicyResult;

    invoke-virtual {v0}, Landroid/net/vcn/VcnNetworkPolicyResult;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/net/vcn/VcnUnderlyingNetworkPolicy;->mVcnNetworkPolicyResult:Landroid/net/vcn/VcnNetworkPolicyResult;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
