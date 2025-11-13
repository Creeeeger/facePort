.class public final Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;
.super Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mDeltas:[F

.field public mValues:[F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;-><init>(Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;)V

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->mValues:[F

    array-length v0, v0

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->mValues:[F

    iget-object v2, p1, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->mDeltas:[F

    array-length v2, v2

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->mDeltas:[F

    iget-object v2, p1, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->mValues:[F

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p1, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->mDeltas:[F

    iget-object p0, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->mDeltas:[F

    array-length v0, p0

    invoke-static {p1, v3, p0, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-void
.end method

.method public constructor <init>([FLandroid/view/animation/Interpolator;[F)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;-><init>([FLandroid/view/animation/Interpolator;)V

    invoke-virtual {p0, p3}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->init([F)V

    return-void
.end method

.method public constructor <init>([F[F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;-><init>([F)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->init([F)V

    return-void
.end method

.method public constructor <init>([F[Landroid/view/animation/Interpolator;[F)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;-><init>([F[Landroid/view/animation/Interpolator;)V

    invoke-virtual {p0, p3}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->init([F)V

    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;

    invoke-direct {v0, p0}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;-><init>(Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;)V

    return-object v0
.end method

.method public final get(F)F
    .locals 7

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    :goto_0
    iget v3, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->length:I

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->fractionPositions:[F

    aget v3, v3, v0

    cmpg-float v3, v3, p1

    if-gtz v3, :cond_0

    add-int/lit8 v2, v0, 0x1

    move v6, v2

    move v2, v0

    move v0, v6

    goto :goto_0

    :cond_0
    if-gez v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "getSectionIndex: -1 : "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->fractionPositions:[F

    aget v1, v3, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->mValues:[F

    aget v0, v0, v2

    iget-object v1, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->mDeltas:[F

    aget v1, v1, v2

    if-gez v2, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    iget v3, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->length:I

    add-int/lit8 v3, v3, -0x1

    if-lt v2, v3, :cond_3

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->fractionPositions:[F

    aget v4, v3, v2

    add-int/lit8 v5, v2, 0x1

    aget v3, v3, v5

    sub-float/2addr p1, v4

    sub-float/2addr v3, v4

    div-float/2addr p1, v3

    iget-object v3, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->interpolator:Landroid/view/animation/Interpolator;

    if-nez v3, :cond_4

    iget-object p0, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->interpolators:[Landroid/view/animation/Interpolator;

    if-eqz p0, :cond_4

    aget-object v3, p0, v2

    :cond_4
    if-eqz v3, :cond_5

    invoke-interface {v3, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p0

    goto :goto_1

    :cond_5
    move p0, p1

    :goto_1
    mul-float/2addr v1, p0

    add-float/2addr v1, v0

    return v1
.end method

.method public final init([F)V
    .locals 6

    iget v0, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->length:I

    add-int/lit8 v0, v0, -0x1

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->mValues:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->mDeltas:[F

    const/4 v1, 0x0

    aget v2, p1, v1

    :goto_0
    if-ge v1, v0, :cond_0

    add-int/lit8 v3, v1, 0x1

    aget v4, p1, v3

    iget-object v5, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->mValues:[F

    aput v2, v5, v1

    iget-object v5, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->mDeltas:[F

    sub-float v2, v4, v2

    aput v2, v5, v1

    move v1, v3

    move v2, v4

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FloatKeyFrameSet{mValues="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->mValues:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDeltas="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->mDeltas:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->length:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fractionPositions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->fractionPositions:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", interpolators="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->interpolators:[Landroid/view/animation/Interpolator;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", interpolator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
