.class public Landroid/content/res/FontScaleConverterImpl;
.super Ljava/lang/Object;
.source "FontScaleConverterImpl.java"

# interfaces
.implements Landroid/content/res/FontScaleConverter;


# instance fields
.field public final blacklist mFromSpValues:[F

.field public final blacklist mToDpValues:[F


# direct methods
.method public constructor blacklist <init>([F[F)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    iput-object p1, p0, Landroid/content/res/FontScaleConverterImpl;->mFromSpValues:[F

    iput-object p2, p0, Landroid/content/res/FontScaleConverterImpl;->mToDpValues:[F

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array lengths must match and be nonzero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist lookupAndInterpolate(F[F[F)F
    .locals 9

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p0}, Ljava/lang/Math;->signum(F)F

    move-result v1

    invoke-static {p1, v0}, Ljava/util/Arrays;->binarySearch([FF)I

    move-result v2

    if-ltz v2, :cond_0

    aget v3, p2, v2

    mul-float/2addr v3, v1

    return v3

    :cond_0
    add-int/lit8 v3, v2, 0x1

    neg-int v3, v3

    add-int/lit8 v3, v3, -0x1

    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    if-lt v3, v4, :cond_2

    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    aget v4, p1, v4

    array-length v5, p1

    add-int/lit8 v5, v5, -0x1

    aget v5, p2, v5

    const/4 v6, 0x0

    cmpl-float v7, v4, v6

    if-nez v7, :cond_1

    return v6

    :cond_1
    div-float v6, v5, v4

    mul-float v7, p0, v6

    return v7

    :cond_2
    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    aget v7, p1, v6

    aget v6, p2, v6

    goto :goto_0

    :cond_3
    aget v4, p1, v3

    add-int/lit8 v5, v3, 0x1

    aget v7, p1, v5

    aget v5, p2, v3

    add-int/lit8 v6, v3, 0x1

    aget v6, p2, v6

    :goto_0
    nop

    invoke-static {v5, v6, v4, v7, v0}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    move-result v8

    mul-float/2addr v8, v1

    return v8
.end method


# virtual methods
.method public whitelist convertDpToSp(F)F
    .locals 2

    iget-object v0, p0, Landroid/content/res/FontScaleConverterImpl;->mToDpValues:[F

    iget-object v1, p0, Landroid/content/res/FontScaleConverterImpl;->mFromSpValues:[F

    invoke-static {p1, v0, v1}, Landroid/content/res/FontScaleConverterImpl;->lookupAndInterpolate(F[F[F)F

    move-result v0

    return v0
.end method

.method public whitelist convertSpToDp(F)F
    .locals 2

    iget-object v0, p0, Landroid/content/res/FontScaleConverterImpl;->mFromSpValues:[F

    iget-object v1, p0, Landroid/content/res/FontScaleConverterImpl;->mToDpValues:[F

    invoke-static {p1, v0, v1}, Landroid/content/res/FontScaleConverterImpl;->lookupAndInterpolate(F[F[F)F

    move-result v0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Landroid/content/res/FontScaleConverterImpl;

    if-nez v2, :cond_2

    return v1

    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/content/res/FontScaleConverterImpl;

    iget-object v3, p0, Landroid/content/res/FontScaleConverterImpl;->mFromSpValues:[F

    iget-object v4, v2, Landroid/content/res/FontScaleConverterImpl;->mFromSpValues:[F

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/content/res/FontScaleConverterImpl;->mToDpValues:[F

    iget-object v4, v2, Landroid/content/res/FontScaleConverterImpl;->mToDpValues:[F

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    iget-object v0, p0, Landroid/content/res/FontScaleConverterImpl;->mFromSpValues:[F

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([F)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/content/res/FontScaleConverterImpl;->mToDpValues:[F

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([F)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FontScaleConverter{fromSpValues="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/res/FontScaleConverterImpl;->mFromSpValues:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", toDpValues="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/res/FontScaleConverterImpl;->mToDpValues:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
