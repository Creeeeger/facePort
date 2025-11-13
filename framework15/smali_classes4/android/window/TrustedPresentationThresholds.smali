.class public final Landroid/window/TrustedPresentationThresholds;
.super Ljava/lang/Object;
.source "TrustedPresentationThresholds.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/TrustedPresentationThresholds;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mMinAlpha:F

.field private final blacklist mMinFractionRendered:F

.field private final blacklist mStabilityRequirementMs:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/window/TrustedPresentationThresholds$1;

    invoke-direct {v0}, Landroid/window/TrustedPresentationThresholds$1;-><init>()V

    sput-object v0, Landroid/window/TrustedPresentationThresholds;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(FFI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/window/TrustedPresentationThresholds;->mMinAlpha:F

    iput p2, p0, Landroid/window/TrustedPresentationThresholds;->mMinFractionRendered:F

    iput p3, p0, Landroid/window/TrustedPresentationThresholds;->mStabilityRequirementMs:I

    invoke-direct {p0}, Landroid/window/TrustedPresentationThresholds;->checkValid()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/window/TrustedPresentationThresholds;->mMinAlpha:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/window/TrustedPresentationThresholds;->mMinFractionRendered:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TrustedPresentationThresholds;->mStabilityRequirementMs:I

    invoke-direct {p0}, Landroid/window/TrustedPresentationThresholds;->checkValid()V

    return-void
.end method

.method private blacklist checkValid()V
    .locals 2

    iget v0, p0, Landroid/window/TrustedPresentationThresholds;->mMinAlpha:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Landroid/window/TrustedPresentationThresholds;->mMinFractionRendered:F

    cmpg-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Landroid/window/TrustedPresentationThresholds;->mStabilityRequirementMs:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "TrustedPresentationThresholds values are invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/window/TrustedPresentationThresholds;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Landroid/window/TrustedPresentationThresholds;

    iget v3, p0, Landroid/window/TrustedPresentationThresholds;->mMinAlpha:F

    iget v4, v1, Landroid/window/TrustedPresentationThresholds;->mMinAlpha:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    iget v3, p0, Landroid/window/TrustedPresentationThresholds;->mMinFractionRendered:F

    iget v4, v1, Landroid/window/TrustedPresentationThresholds;->mMinFractionRendered:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    iget v3, p0, Landroid/window/TrustedPresentationThresholds;->mStabilityRequirementMs:I

    iget v4, v1, Landroid/window/TrustedPresentationThresholds;->mStabilityRequirementMs:I

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public whitelist getMinAlpha()F
    .locals 1

    iget v0, p0, Landroid/window/TrustedPresentationThresholds;->mMinAlpha:F

    return v0
.end method

.method public whitelist getMinFractionRendered()F
    .locals 1

    iget v0, p0, Landroid/window/TrustedPresentationThresholds;->mMinFractionRendered:F

    return v0
.end method

.method public whitelist getStabilityRequirementMillis()I
    .locals 1

    iget v0, p0, Landroid/window/TrustedPresentationThresholds;->mStabilityRequirementMs:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    iget v0, p0, Landroid/window/TrustedPresentationThresholds;->mMinAlpha:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v1, p0, Landroid/window/TrustedPresentationThresholds;->mMinFractionRendered:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v2, p0, Landroid/window/TrustedPresentationThresholds;->mStabilityRequirementMs:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TrustedPresentationThresholds { minAlpha = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/TrustedPresentationThresholds;->mMinAlpha:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", minFractionRendered = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/TrustedPresentationThresholds;->mMinFractionRendered:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", stabilityRequirementMs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/TrustedPresentationThresholds;->mStabilityRequirementMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/window/TrustedPresentationThresholds;->mMinAlpha:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/window/TrustedPresentationThresholds;->mMinFractionRendered:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/window/TrustedPresentationThresholds;->mStabilityRequirementMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
