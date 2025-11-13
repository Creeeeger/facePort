.class public final Landroid/app/GameModeConfiguration;
.super Ljava/lang/Object;
.source "GameModeConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/GameModeConfiguration$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/GameModeConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FPS_OVERRIDE_NONE:I


# instance fields
.field private final blacklist mFpsOverride:I

.field private final blacklist mScalingFactor:F


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmFpsOverride(Landroid/app/GameModeConfiguration;)I
    .locals 0

    iget p0, p0, Landroid/app/GameModeConfiguration;->mFpsOverride:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmScalingFactor(Landroid/app/GameModeConfiguration;)F
    .locals 0

    iget p0, p0, Landroid/app/GameModeConfiguration;->mScalingFactor:F

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/GameModeConfiguration$1;

    invoke-direct {v0}, Landroid/app/GameModeConfiguration$1;-><init>()V

    sput-object v0, Landroid/app/GameModeConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(FI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/app/GameModeConfiguration;->mScalingFactor:F

    iput p2, p0, Landroid/app/GameModeConfiguration;->mFpsOverride:I

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/app/GameModeConfiguration;->mScalingFactor:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/GameModeConfiguration;->mFpsOverride:I

    return-void
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

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/app/GameModeConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/app/GameModeConfiguration;

    iget v3, v1, Landroid/app/GameModeConfiguration;->mFpsOverride:I

    iget v4, p0, Landroid/app/GameModeConfiguration;->mFpsOverride:I

    if-ne v3, v4, :cond_2

    iget v3, v1, Landroid/app/GameModeConfiguration;->mScalingFactor:F

    iget v4, p0, Landroid/app/GameModeConfiguration;->mScalingFactor:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public whitelist getFpsOverride()I
    .locals 1

    iget v0, p0, Landroid/app/GameModeConfiguration;->mFpsOverride:I

    return v0
.end method

.method public whitelist getScalingFactor()F
    .locals 1

    iget v0, p0, Landroid/app/GameModeConfiguration;->mScalingFactor:F

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    const/4 v0, 0x7

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/GameModeConfiguration;->mFpsOverride:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/app/GameModeConfiguration;->mScalingFactor:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/app/GameModeConfiguration;->mScalingFactor:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/app/GameModeConfiguration;->mFpsOverride:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
