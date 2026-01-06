.class public abstract Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
.super Ljava/lang/Object;
.source "TimeCycleSplineSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$Sort;,
        Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$ProgressSet;,
        Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;,
        Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$TranslationZset;,
        Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$TranslationYset;,
        Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$TranslationXset;,
        Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$ScaleYset;,
        Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$ScaleXset;,
        Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$PathRotate;,
        Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$RotationYset;,
        Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$RotationXset;,
        Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$RotationSet;,
        Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$AlphaSet;,
        Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$ElevationSet;
    }
.end annotation


# static fields
.field private static final CURVE_OFFSET:I = 0x2

.field private static final CURVE_PERIOD:I = 0x1

.field private static final CURVE_VALUE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SplineSet"

.field private static VAL_2PI:F


# instance fields
.field private count:I

.field last_cycle:F

.field last_time:J

.field private mCache:[F

.field protected mContinue:Z

.field protected mCurveFit:Landroidx/constraintlayout/motion/utils/CurveFit;

.field protected mTimePoints:[I

.field private mType:Ljava/lang/String;

.field protected mValues:[[F

.field protected mWaveShape:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x40c90fdb

    sput v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->VAL_2PI:F

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mWaveShape:I

    const/16 v1, 0xa

    new-array v1, v1, [I

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mTimePoints:[I

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    const-class v2, F

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mValues:[[F

    const/4 v1, 0x3

    new-array v1, v1, [F

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mCache:[F

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mContinue:Z

    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->last_cycle:F

    return-void

    :array_0
    .array-data 4
        0xa
        0x3
    .end array-data
.end method

.method static makeCustomSpline(Ljava/lang/String;Landroid/util/SparseArray;)Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;)",
            "Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;"
        }
    .end annotation

    new-instance v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;

    invoke-direct {v0, p0, p1}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;-><init>(Ljava/lang/String;Landroid/util/SparseArray;)V

    return-object v0
.end method

.method static makeSpline(Ljava/lang/String;J)Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string v0, "alpha"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "transitionPathRotate"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "elevation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_3
    const-string v0, "rotation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_4
    const-string v0, "scaleY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_5
    const-string v0, "scaleX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_6
    const-string v0, "progress"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto :goto_1

    :sswitch_7
    const-string v0, "translationZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_1

    :sswitch_8
    const-string v0, "translationY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_9
    const-string v0, "translationX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_a
    const-string v0, "rotationY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_b
    const-string v0, "rotationX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    new-instance v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$ProgressSet;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$ProgressSet;-><init>()V

    goto :goto_2

    :pswitch_1
    new-instance v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$TranslationZset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$TranslationZset;-><init>()V

    goto :goto_2

    :pswitch_2
    new-instance v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$TranslationYset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$TranslationYset;-><init>()V

    goto :goto_2

    :pswitch_3
    new-instance v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$TranslationXset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$TranslationXset;-><init>()V

    goto :goto_2

    :pswitch_4
    new-instance v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$ScaleYset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$ScaleYset;-><init>()V

    goto :goto_2

    :pswitch_5
    new-instance v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$ScaleXset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$ScaleXset;-><init>()V

    goto :goto_2

    :pswitch_6
    new-instance v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$PathRotate;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$PathRotate;-><init>()V

    goto :goto_2

    :pswitch_7
    new-instance v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$RotationYset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$RotationYset;-><init>()V

    goto :goto_2

    :pswitch_8
    new-instance v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$RotationXset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$RotationXset;-><init>()V

    goto :goto_2

    :pswitch_9
    new-instance v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$RotationSet;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$RotationSet;-><init>()V

    goto :goto_2

    :pswitch_a
    new-instance v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$ElevationSet;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$ElevationSet;-><init>()V

    goto :goto_2

    :pswitch_b
    new-instance v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$AlphaSet;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$AlphaSet;-><init>()V

    nop

    :goto_2
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->setStartTime(J)V

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4a771f66 -> :sswitch_b
        -0x4a771f65 -> :sswitch_a
        -0x490b9c39 -> :sswitch_9
        -0x490b9c38 -> :sswitch_8
        -0x490b9c37 -> :sswitch_7
        -0x3bab3dd3 -> :sswitch_6
        -0x3621dfb2 -> :sswitch_5
        -0x3621dfb1 -> :sswitch_4
        -0x266f082 -> :sswitch_3
        -0x42d1a3 -> :sswitch_2
        0x2382115 -> :sswitch_1
        0x589b15e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected calcWave(F)F
    .locals 5

    move v0, p1

    iget v1, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mWaveShape:I

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, 0x3f800000    # 1.0f

    packed-switch v1, :pswitch_data_0

    sget v1, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->VAL_2PI:F

    mul-float/2addr v1, v0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    return v1

    :pswitch_0
    const/high16 v1, 0x40800000    # 4.0f

    mul-float v4, v0, v1

    rem-float/2addr v4, v1

    sub-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sub-float v1, v3, v1

    mul-float v2, v1, v1

    sub-float/2addr v3, v2

    return v3

    :pswitch_1
    sget v1, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->VAL_2PI:F

    mul-float/2addr v1, v0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float v1, v1

    return v1

    :pswitch_2
    mul-float v1, v0, v2

    add-float/2addr v1, v3

    rem-float/2addr v1, v2

    sub-float/2addr v3, v1

    return v3

    :pswitch_3
    mul-float v1, v0, v2

    add-float/2addr v1, v3

    rem-float/2addr v1, v2

    sub-float/2addr v1, v3

    return v1

    :pswitch_4
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sub-float/2addr v3, v1

    return v3

    :pswitch_5
    sget v1, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->VAL_2PI:F

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public get(FJLandroid/view/View;Landroidx/constraintlayout/motion/widget/KeyCache;)F
    .locals 18

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mCurveFit:Landroidx/constraintlayout/motion/utils/CurveFit;

    move/from16 v6, p1

    float-to-double v7, v6

    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mCache:[F

    invoke-virtual {v5, v7, v8, v9}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[F)V

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mCache:[F

    const/4 v7, 0x1

    aget v8, v5, v7

    const/4 v9, 0x0

    cmpl-float v10, v8, v9

    const/4 v11, 0x2

    const/4 v12, 0x0

    if-nez v10, :cond_0

    iput-boolean v12, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mContinue:Z

    aget v5, v5, v11

    return v5

    :cond_0
    iget v5, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->last_cycle:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mType:Ljava/lang/String;

    invoke-virtual {v4, v3, v5, v12}, Landroidx/constraintlayout/motion/widget/KeyCache;->getFloatValue(Ljava/lang/Object;Ljava/lang/String;I)F

    move-result v5

    iput v5, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->last_cycle:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_1

    iput v9, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->last_cycle:F

    :cond_1
    iget-wide v13, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->last_time:J

    sub-long v13, v1, v13

    iget v5, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->last_cycle:F

    float-to-double v9, v5

    long-to-double v11, v13

    const-wide v16, 0x3e112e0be826d695L    # 1.0E-9

    mul-double v11, v11, v16

    float-to-double v5, v8

    mul-double/2addr v11, v5

    add-double/2addr v9, v11

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    rem-double/2addr v9, v5

    double-to-float v5, v9

    iput v5, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->last_cycle:F

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mType:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v4, v3, v6, v9, v5}, Landroidx/constraintlayout/motion/widget/KeyCache;->setFloatValue(Ljava/lang/Object;Ljava/lang/String;IF)V

    iput-wide v1, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->last_time:J

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mCache:[F

    aget v5, v5, v9

    iget v6, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->last_cycle:F

    invoke-virtual {v0, v6}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->calcWave(F)F

    move-result v6

    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mCache:[F

    const/4 v11, 0x2

    aget v10, v10, v11

    mul-float v11, v5, v6

    add-float/2addr v11, v10

    const/4 v12, 0x0

    cmpl-float v15, v5, v12

    if-nez v15, :cond_3

    cmpl-float v12, v8, v12

    if-eqz v12, :cond_2

    goto :goto_0

    :cond_2
    move v7, v9

    :cond_3
    :goto_0
    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mContinue:Z

    return v11
.end method

.method public getCurveFit()Landroidx/constraintlayout/motion/utils/CurveFit;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mCurveFit:Landroidx/constraintlayout/motion/utils/CurveFit;

    return-object v0
.end method

.method public setPoint(IFFIF)V
    .locals 4

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mTimePoints:[I

    iget v1, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->count:I

    aput p1, v0, v1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mValues:[[F

    aget-object v2, v0, v1

    const/4 v3, 0x0

    aput p2, v2, v3

    aget-object v2, v0, v1

    const/4 v3, 0x1

    aput p3, v2, v3

    aget-object v0, v0, v1

    const/4 v1, 0x2

    aput p5, v0, v1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mWaveShape:I

    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mWaveShape:I

    iget v0, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->count:I

    add-int/2addr v0, v3

    iput v0, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->count:I

    return-void
.end method

.method public abstract setProperty(Landroid/view/View;FJLandroidx/constraintlayout/motion/widget/KeyCache;)Z
.end method

.method protected setStartTime(J)V
    .locals 0

    iput-wide p1, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->last_time:J

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mType:Ljava/lang/String;

    return-void
.end method

.method public setup(I)V
    .locals 12

    iget v0, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->count:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error no points added to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SplineSet"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mTimePoints:[I

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mValues:[[F

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v0}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$Sort;->doubleQuickSort([I[[FII)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    :goto_0
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mTimePoints:[I

    array-length v5, v2

    if-ge v1, v5, :cond_2

    aget v5, v2, v1

    add-int/lit8 v6, v1, -0x1

    aget v2, v2, v6

    if-eq v5, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-array v1, v0, [D

    const/4 v2, 0x3

    const/4 v5, 0x2

    new-array v6, v5, [I

    aput v2, v6, v3

    aput v0, v6, v4

    const-class v2, D

    invoke-static {v2, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    iget v8, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->count:I

    if-ge v7, v8, :cond_4

    if-lez v7, :cond_3

    iget-object v8, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mTimePoints:[I

    aget v9, v8, v7

    add-int/lit8 v10, v7, -0x1

    aget v8, v8, v10

    if-ne v9, v8, :cond_3

    goto :goto_2

    :cond_3
    iget-object v8, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mTimePoints:[I

    aget v8, v8, v7

    int-to-double v8, v8

    const-wide v10, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v8, v10

    aput-wide v8, v1, v6

    aget-object v8, v2, v6

    iget-object v9, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mValues:[[F

    aget-object v10, v9, v7

    aget v10, v10, v4

    float-to-double v10, v10

    aput-wide v10, v8, v4

    aget-object v8, v2, v6

    aget-object v10, v9, v7

    aget v10, v10, v3

    float-to-double v10, v10

    aput-wide v10, v8, v3

    aget-object v8, v2, v6

    aget-object v9, v9, v7

    aget v9, v9, v5

    float-to-double v9, v9

    aput-wide v9, v8, v5

    add-int/lit8 v6, v6, 0x1

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    invoke-static {p1, v1, v2}, Landroidx/constraintlayout/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/motion/utils/CurveFit;

    move-result-object v3

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mCurveFit:Landroidx/constraintlayout/motion/utils/CurveFit;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mType:Ljava/lang/String;

    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "##.##"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->count:I

    if-ge v2, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mTimePoints:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mValues:[[F

    aget-object v4, v4, v2

    invoke-virtual {v1, v4}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
