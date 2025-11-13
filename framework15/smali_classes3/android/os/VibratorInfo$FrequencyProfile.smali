.class public final Landroid/os/VibratorInfo$FrequencyProfile;
.super Ljava/lang/Object;
.source "VibratorInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/VibratorInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FrequencyProfile"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/VibratorInfo$FrequencyProfile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mFrequencyRangeHz:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mFrequencyResolutionHz:F

.field private final blacklist mMaxAmplitudes:[F

.field private final blacklist mMinFrequencyHz:F

.field private final blacklist mResonantFrequencyHz:F


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmResonantFrequencyHz(Landroid/os/VibratorInfo$FrequencyProfile;)F
    .locals 0

    iget p0, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mResonantFrequencyHz:F

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/VibratorInfo$FrequencyProfile$1;

    invoke-direct {v0}, Landroid/os/VibratorInfo$FrequencyProfile$1;-><init>()V

    sput-object v0, Landroid/os/VibratorInfo$FrequencyProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(FFF[F)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMinFrequencyHz:F

    iput p1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mResonantFrequencyHz:F

    iput p3, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequencyResolutionHz:F

    const/4 v0, 0x0

    if-nez p4, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p4

    :goto_0
    new-array v1, v1, [F

    iput-object v1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMaxAmplitudes:[F

    if-eqz p4, :cond_1

    iget-object v1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMaxAmplitudes:[F

    array-length v2, p4

    invoke-static {p4, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    cmpl-float v1, p1, v2

    if-lez v1, :cond_2

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_2

    cmpl-float v1, p2, v2

    if-lez v1, :cond_2

    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_2

    cmpl-float v1, p3, v2

    if-lez v1, :cond_2

    iget-object v1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMaxAmplitudes:[F

    array-length v1, v1

    if-lez v1, :cond_2

    move v1, v3

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    const/4 v4, 0x0

    :goto_2
    iget-object v5, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMaxAmplitudes:[F

    array-length v5, v5

    if-ge v4, v5, :cond_4

    iget-object v5, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMaxAmplitudes:[F

    aget v5, v5, v4

    cmpl-float v5, v5, v2

    if-ltz v5, :cond_3

    iget-object v5, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMaxAmplitudes:[F

    aget v5, v5, v4

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_3

    move v5, v3

    goto :goto_3

    :cond_3
    move v5, v0

    :goto_3
    and-int/2addr v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_5

    iget-object v2, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMaxAmplitudes:[F

    array-length v2, v2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p3

    add-float/2addr v2, p2

    goto :goto_4

    :cond_5
    const/high16 v2, 0x7fc00000    # Float.NaN

    :goto_4
    nop

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_6

    cmpl-float v4, p1, p2

    if-ltz v4, :cond_6

    cmpg-float v4, p1, v2

    if-gtz v4, :cond_6

    cmpg-float v4, p2, v2

    if-gez v4, :cond_6

    move v0, v3

    :cond_6
    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    goto :goto_5

    :cond_7
    const/4 v1, 0x0

    :goto_5
    iput-object v1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequencyRangeHz:Landroid/util/Range;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 4

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/VibratorInfo$FrequencyProfile;-><init>(FFF[F)V

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

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/os/VibratorInfo$FrequencyProfile;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/os/VibratorInfo$FrequencyProfile;

    iget v3, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMinFrequencyHz:F

    iget v4, v1, Landroid/os/VibratorInfo$FrequencyProfile;->mMinFrequencyHz:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_2

    iget v3, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mResonantFrequencyHz:F

    iget v4, v1, Landroid/os/VibratorInfo$FrequencyProfile;->mResonantFrequencyHz:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_2

    iget v3, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequencyResolutionHz:F

    iget v4, v1, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequencyResolutionHz:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMaxAmplitudes:[F

    iget-object v4, v1, Landroid/os/VibratorInfo$FrequencyProfile;->mMaxAmplitudes:[F

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public blacklist getFrequencyRangeHz()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequencyRangeHz:Landroid/util/Range;

    return-object v0
.end method

.method public blacklist getFrequencyResolutionHz()F
    .locals 1

    iget v0, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequencyResolutionHz:F

    return v0
.end method

.method public blacklist getMaxAmplitude(F)F
    .locals 8

    invoke-virtual {p0}, Landroid/os/VibratorInfo$FrequencyProfile;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequencyRangeHz:Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMinFrequencyHz:F

    sub-float v0, p1, v0

    iget v1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequencyResolutionHz:F

    div-float v1, v0, v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget-object v2, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMaxAmplitudes:[F

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    iget-object v4, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMaxAmplitudes:[F

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/util/MathUtils;->constrain(III)I

    move-result v2

    iget-object v3, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMaxAmplitudes:[F

    aget v3, v3, v1

    iget-object v4, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMaxAmplitudes:[F

    aget v4, v4, v2

    int-to-float v5, v1

    iget v6, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequencyResolutionHz:F

    mul-float/2addr v5, v6

    int-to-float v6, v2

    iget v7, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequencyResolutionHz:F

    mul-float/2addr v6, v7

    invoke-static {v3, v4, v5, v6, v0}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    move-result v3

    return v3

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getMaxAmplitudes()[F
    .locals 2

    iget-object v0, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMaxAmplitudes:[F

    iget-object v1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMaxAmplitudes:[F

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    iget v0, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMinFrequencyHz:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequencyResolutionHz:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v2, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequencyResolutionHz:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMaxAmplitudes:[F

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([F)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public blacklist isEmpty()Z
    .locals 1

    iget-object v0, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequencyRangeHz:Landroid/util/Range;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FrequencyProfile{mFrequencyRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequencyRangeHz:Landroid/util/Range;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMinFrequency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMinFrequencyHz:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mResonantFrequency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mResonantFrequencyHz:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFrequencyResolution="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequencyResolutionHz:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMaxAmplitudes count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMaxAmplitudes:[F

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mResonantFrequencyHz:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMinFrequencyHz:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequencyResolutionHz:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v0, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMaxAmplitudes:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    return-void
.end method
