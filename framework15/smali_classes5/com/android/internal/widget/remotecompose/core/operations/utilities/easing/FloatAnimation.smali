.class public Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;
.super Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;
.source "FloatAnimation.java"


# instance fields
.field private blacklist mDuration:F

.field blacklist mEasingCurve:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;

.field private blacklist mInitialValue:F

.field blacklist mOffset:F

.field private blacklist mScale:F

.field blacklist mSpec:[F

.field private blacklist mTargetValue:F

.field private blacklist mType:I

.field private blacklist mWrap:F


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mType:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mDuration:F

    const/high16 v1, 0x7fc00000    # Float.NaN

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mWrap:F

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mScale:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mOffset:F

    return-void
.end method

.method public constructor blacklist <init>(IF[FFF)V
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mType:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mDuration:F

    const/high16 v1, 0x7fc00000    # Float.NaN

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mWrap:F

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mScale:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mOffset:F

    invoke-static {p2, p1, p3, p4, p5}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->packToFloatArray(FI[FFF)[F

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->setAnimationDescription([F)V

    return-void
.end method

.method public varargs constructor blacklist <init>([F)V
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mType:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mDuration:F

    const/high16 v1, 0x7fc00000    # Float.NaN

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mWrap:F

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mScale:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mOffset:F

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->setAnimationDescription([F)V

    return-void
.end method

.method private blacklist create(I[FII)V
    .locals 5

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/ElasticOutCurve;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/ElasticOutCurve;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mEasingCurve:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/BounceCurve;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/BounceCurve;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mEasingCurve:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/StepCurve;

    invoke-direct {v0, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/StepCurve;-><init>([FII)V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mEasingCurve:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;

    add-int/lit8 v1, p3, 0x0

    aget v1, p2, v1

    add-int/lit8 v2, p3, 0x1

    aget v2, p2, v2

    add-int/lit8 v3, p3, 0x2

    aget v3, p2, v3

    add-int/lit8 v4, p3, 0x3

    aget v4, p2, v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mEasingCurve:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;

    goto :goto_0

    :pswitch_5
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mEasingCurve:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static blacklist packToFloatArray(FI[FFF)[F
    .locals 10

    const/4 v0, 0x0

    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    if-eqz p2, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p2, :cond_2

    if-eq p1, v2, :cond_4

    :cond_2
    add-int/lit8 v0, v0, 0x1

    if-nez p2, :cond_3

    move v3, v1

    goto :goto_0

    :cond_3
    array-length v3, p2

    :goto_0
    add-int/2addr v0, v3

    :cond_4
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, p0, v3

    if-nez v3, :cond_5

    if-lez v0, :cond_6

    :cond_5
    add-int/lit8 v0, v0, 0x1

    :cond_6
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_7

    add-int/lit8 v0, v0, 0x1

    :cond_7
    invoke-static {p4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_8

    add-int/lit8 v0, v0, 0x1

    :cond_8
    new-array v3, v0, [F

    const/4 v4, 0x0

    if-nez p2, :cond_9

    move v5, v1

    goto :goto_1

    :cond_9
    array-length v5, p2

    :goto_1
    array-length v6, v3

    if-lez v6, :cond_a

    add-int/lit8 v6, v4, 0x1

    aput p0, v3, v4

    move v4, v6

    :cond_a
    array-length v6, v3

    if-le v6, v2, :cond_c

    invoke-static {p4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    xor-int/2addr v2, v6

    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_b

    move v6, v1

    goto :goto_2

    :cond_b
    const/4 v6, 0x2

    :goto_2
    or-int v7, v2, v6

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v7, p1

    add-int/lit8 v8, v4, 0x1

    shl-int/lit8 v9, v5, 0x10

    or-int/2addr v9, v7

    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v9

    aput v9, v3, v4

    move v4, v8

    :cond_c
    if-lez v5, :cond_d

    array-length v2, p2

    invoke-static {p2, v1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p2

    add-int/2addr v4, v1

    :cond_d
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_e

    add-int/lit8 v1, v4, 0x1

    aput p3, v3, v4

    move v4, v1

    :cond_e
    invoke-static {p4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_f

    aput p4, v3, v4

    :cond_f
    return-object v3
.end method

.method private blacklist setScaleOffset()V
    .locals 2

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mScale:F

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mOffset:F

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mScale:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mOffset:F

    :goto_0
    return-void
.end method


# virtual methods
.method public blacklist get(F)F
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mEasingCurve:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mDuration:F

    div-float v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;->get(F)F

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    add-float/2addr v0, v1

    return v0
.end method

.method public blacklist getDiff(F)F
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mEasingCurve:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mDuration:F

    div-float v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;->getDiff(F)F

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    return v0
.end method

.method public blacklist getDuration()F
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mDuration:F

    return v0
.end method

.method public blacklist getInitialValue()F
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    return v0
.end method

.method public blacklist getTargetValue()F
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    return v0
.end method

.method public blacklist setAnimationDescription([F)V
    .locals 8

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mSpec:[F

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mSpec:[F

    array-length v0, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mSpec:[F

    aget v0, v0, v1

    :goto_0
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mDuration:F

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mSpec:[F

    array-length v2, v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-le v2, v4, :cond_4

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mSpec:[F

    aget v2, v2, v4

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    and-int/lit16 v5, v2, 0xff

    iput v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mType:I

    shr-int/lit8 v5, v2, 0x8

    and-int/2addr v5, v4

    if-lez v5, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v1

    :goto_1
    shr-int/lit8 v6, v2, 0x8

    and-int/2addr v6, v3

    if-lez v6, :cond_2

    move v1, v4

    :cond_2
    shr-int/lit8 v4, v2, 0x10

    const v6, 0xffff

    and-int v0, v4, v6

    add-int/lit8 v4, v0, 0x2

    if-eqz v1, :cond_3

    iget-object v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mSpec:[F

    add-int/lit8 v7, v4, 0x1

    aget v4, v6, v4

    iput v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    move v4, v7

    :cond_3
    if-eqz v5, :cond_4

    iget-object v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mSpec:[F

    aget v6, v6, v4

    iput v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mWrap:F

    :cond_4
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mType:I

    invoke-direct {p0, v1, p1, v3, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->create(I[FII)V

    return-void
.end method

.method public blacklist setInitialValue(F)V
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mWrap:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mWrap:F

    rem-float v0, p1, v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    :goto_0
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->setScaleOffset()V

    return-void
.end method

.method public blacklist setTargetValue(F)V
    .locals 3

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mWrap:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mWrap:F

    rem-float v0, p1, v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mWrap:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mWrap:F

    rem-float v1, p1, v1

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mWrap:F

    rem-float v0, p1, v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mWrap:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mWrap:F

    rem-float v0, p1, v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    :goto_0
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->setScaleOffset()V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mWrap:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  % "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mWrap:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method
