.class public final Landroid/media/VolumeShaper$Configuration$Builder;
.super Ljava/lang/Object;
.source "VolumeShaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/VolumeShaper$Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private greylist-max-o mDurationMs:D

.field private greylist-max-o mId:I

.field private greylist-max-o mInterpolatorType:I

.field private greylist-max-o mOptionFlags:I

.field private greylist-max-o mTimes:[F

.field private greylist-max-o mType:I

.field private greylist-max-o mVolumes:[F


# direct methods
.method public constructor whitelist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mType:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mId:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mInterpolatorType:I

    iput v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mOptionFlags:I

    const-wide v0, 0x408f400000000000L    # 1000.0

    iput-wide v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mDurationMs:D

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    iput-object v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    return-void
.end method

.method public constructor whitelist <init>(Landroid/media/VolumeShaper$Configuration;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mType:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mId:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mInterpolatorType:I

    iput v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mOptionFlags:I

    const-wide v0, 0x408f400000000000L    # 1000.0

    iput-wide v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mDurationMs:D

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    iput-object v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    invoke-virtual {p1}, Landroid/media/VolumeShaper$Configuration;->getType()I

    move-result v0

    iput v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mType:I

    invoke-virtual {p1}, Landroid/media/VolumeShaper$Configuration;->getId()I

    move-result v0

    iput v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mId:I

    invoke-virtual {p1}, Landroid/media/VolumeShaper$Configuration;->getAllOptionFlags()I

    move-result v0

    iput v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mOptionFlags:I

    invoke-virtual {p1}, Landroid/media/VolumeShaper$Configuration;->getInterpolatorType()I

    move-result v0

    iput v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mInterpolatorType:I

    invoke-virtual {p1}, Landroid/media/VolumeShaper$Configuration;->getDuration()J

    move-result-wide v0

    long-to-double v0, v0

    iput-wide v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mDurationMs:D

    invoke-virtual {p1}, Landroid/media/VolumeShaper$Configuration;->getTimes()[F

    move-result-object v0

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    invoke-virtual {p1}, Landroid/media/VolumeShaper$Configuration;->getVolumes()[F

    move-result-object v0

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/media/VolumeShaper$Configuration;
    .locals 14

    iget v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mOptionFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    invoke-static {v2, v3, v0, v1}, Landroid/media/VolumeShaper$Configuration;->-$$Nest$smcheckCurveForErrorsAndThrowException([F[FZZ)V

    new-instance v1, Landroid/media/VolumeShaper$Configuration;

    iget v5, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mType:I

    iget v6, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mId:I

    iget v7, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mOptionFlags:I

    iget-wide v8, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mDurationMs:D

    iget v10, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mInterpolatorType:I

    iget-object v11, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    iget-object v12, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    const/4 v13, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v13}, Landroid/media/VolumeShaper$Configuration;-><init>(IIIDI[F[FLandroid/media/VolumeShaper$Configuration-IA;)V

    return-object v1
.end method

.method public whitelist invertVolumes()Landroid/media/VolumeShaper$Configuration$Builder;
    .locals 7

    iget v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mOptionFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    iget-object v4, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    invoke-static {v3, v4, v0, v1}, Landroid/media/VolumeShaper$Configuration;->-$$Nest$smcheckCurveForErrorsAndThrowException([F[FZZ)V

    iget-object v1, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    aget v1, v1, v2

    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    aget v2, v3, v2

    const/4 v3, 0x1

    :goto_1
    iget-object v4, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    array-length v4, v4

    if-ge v3, v4, :cond_3

    iget-object v4, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    aget v4, v4, v3

    cmpg-float v4, v4, v1

    if-gez v4, :cond_1

    iget-object v4, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    aget v1, v4, v3

    goto :goto_2

    :cond_1
    iget-object v4, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    aget v4, v4, v3

    cmpl-float v4, v4, v2

    if-lez v4, :cond_2

    iget-object v4, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    aget v2, v4, v3

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    add-float v3, v2, v1

    const/4 v4, 0x0

    :goto_3
    iget-object v5, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    array-length v5, v5

    if-ge v4, v5, :cond_4

    iget-object v5, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    iget-object v6, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    aget v6, v6, v4

    sub-float v6, v3, v6

    aput v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    return-object p0
.end method

.method public whitelist reflectTimes()Landroid/media/VolumeShaper$Configuration$Builder;
    .locals 8

    iget v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mOptionFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    invoke-static {v2, v3, v0, v1}, Landroid/media/VolumeShaper$Configuration;->-$$Nest$smcheckCurveForErrorsAndThrowException([F[FZZ)V

    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    array-length v3, v3

    div-int/lit8 v3, v3, 0x2

    const/high16 v4, 0x3f800000    # 1.0f

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    aget v3, v3, v2

    iget-object v5, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    iget-object v6, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    iget-object v7, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    array-length v7, v7

    sub-int/2addr v7, v1

    sub-int/2addr v7, v2

    aget v6, v6, v7

    sub-float v6, v4, v6

    aput v6, v5, v2

    iget-object v5, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    iget-object v6, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    array-length v6, v6

    sub-int/2addr v6, v1

    sub-int/2addr v6, v2

    sub-float/2addr v4, v3

    aput v4, v5, v6

    iget-object v4, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    aget v3, v4, v2

    iget-object v4, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    iget-object v5, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    iget-object v6, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    array-length v6, v6

    sub-int/2addr v6, v1

    sub-int/2addr v6, v2

    aget v5, v5, v6

    aput v5, v4, v2

    iget-object v4, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    iget-object v5, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    array-length v5, v5

    sub-int/2addr v5, v1

    sub-int/2addr v5, v2

    aput v3, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    array-length v3, v3

    and-int/2addr v1, v3

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    aget v3, v3, v2

    sub-float/2addr v4, v3

    aput v4, v1, v2

    :cond_2
    return-object p0
.end method

.method public whitelist scaleToEndVolume(F)Landroid/media/VolumeShaper$Configuration$Builder;
    .locals 8

    iget v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mOptionFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    iget-object v4, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    invoke-static {v3, v4, v0, v1}, Landroid/media/VolumeShaper$Configuration;->-$$Nest$smcheckCurveForErrorsAndThrowException([F[FZZ)V

    invoke-static {p1, v0}, Landroid/media/VolumeShaper$Configuration;->-$$Nest$smcheckValidVolumeAndThrowException(FZ)V

    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    aget v2, v3, v2

    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    iget-object v4, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    array-length v4, v4

    sub-int/2addr v4, v1

    aget v1, v3, v4

    cmpl-float v3, v1, v2

    if-nez v3, :cond_2

    sub-float v3, p1, v2

    const/4 v4, 0x0

    :goto_1
    iget-object v5, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    array-length v5, v5

    if-ge v4, v5, :cond_1

    iget-object v5, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    iget-object v6, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    aget v6, v6, v4

    iget-object v7, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    aget v7, v7, v4

    mul-float/2addr v7, v3

    add-float/2addr v6, v7

    aput v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    goto :goto_3

    :cond_2
    sub-float v3, p1, v2

    sub-float v4, v1, v2

    div-float/2addr v3, v4

    const/4 v4, 0x0

    :goto_2
    iget-object v5, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    array-length v5, v5

    if-ge v4, v5, :cond_3

    iget-object v5, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    iget-object v6, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    aget v6, v6, v4

    sub-float/2addr v6, v2

    mul-float/2addr v6, v3

    add-float/2addr v6, v2

    aput v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    invoke-static {v3, v0}, Landroid/media/VolumeShaper$Configuration;->-$$Nest$smclampVolume([FZ)V

    return-object p0
.end method

.method public whitelist scaleToStartVolume(F)Landroid/media/VolumeShaper$Configuration$Builder;
    .locals 9

    iget v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mOptionFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    iget-object v4, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    invoke-static {v3, v4, v0, v1}, Landroid/media/VolumeShaper$Configuration;->-$$Nest$smcheckCurveForErrorsAndThrowException([F[FZZ)V

    invoke-static {p1, v0}, Landroid/media/VolumeShaper$Configuration;->-$$Nest$smcheckValidVolumeAndThrowException(FZ)V

    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    aget v2, v3, v2

    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    iget-object v4, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    array-length v4, v4

    sub-int/2addr v4, v1

    aget v1, v3, v4

    cmpl-float v3, v1, v2

    if-nez v3, :cond_2

    sub-float v3, p1, v2

    const/4 v4, 0x0

    :goto_1
    iget-object v5, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    array-length v5, v5

    if-ge v4, v5, :cond_1

    iget-object v5, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    iget-object v6, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    aget v6, v6, v4

    iget-object v7, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    aget v7, v7, v4

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v8, v7

    mul-float/2addr v8, v3

    add-float/2addr v6, v8

    aput v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    goto :goto_3

    :cond_2
    sub-float v3, p1, v1

    sub-float v4, v2, v1

    div-float/2addr v3, v4

    const/4 v4, 0x0

    :goto_2
    iget-object v5, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    array-length v5, v5

    if-ge v4, v5, :cond_3

    iget-object v5, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    iget-object v6, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    aget v6, v6, v4

    sub-float/2addr v6, v1

    mul-float/2addr v6, v3

    add-float/2addr v6, v1

    aput v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    invoke-static {v3, v0}, Landroid/media/VolumeShaper$Configuration;->-$$Nest$smclampVolume([FZ)V

    return-object p0
.end method

.method public whitelist setCurve([F[F)Landroid/media/VolumeShaper$Configuration$Builder;
    .locals 3

    iget v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mOptionFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    move v0, v1

    invoke-static {p1, p2, v0, v2}, Landroid/media/VolumeShaper$Configuration;->-$$Nest$smcheckCurveForErrorsAndThrowException([F[FZZ)V

    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    invoke-virtual {p2}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    return-object p0
.end method

.method public whitelist setDuration(J)Landroid/media/VolumeShaper$Configuration$Builder;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    long-to-double v0, p1

    iput-wide v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mDurationMs:D

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not positive"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setId(I)Landroid/media/VolumeShaper$Configuration$Builder;
    .locals 3

    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    iput p1, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mId:I

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setInterpolatorType(I)Landroid/media/VolumeShaper$Configuration$Builder;
    .locals 3

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid interpolatorType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iput p1, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mInterpolatorType:I

    nop

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist setOptionFlags(I)Landroid/media/VolumeShaper$Configuration$Builder;
    .locals 3

    and-int/lit8 v0, p1, -0x4

    if-nez v0, :cond_0

    iget v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mOptionFlags:I

    and-int/lit8 v0, v0, -0x4

    or-int/2addr v0, p1

    iput v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mOptionFlags:I

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid bits in flag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
