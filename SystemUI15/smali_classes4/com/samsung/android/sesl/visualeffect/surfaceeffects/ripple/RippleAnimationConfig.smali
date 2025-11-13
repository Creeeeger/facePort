.class public final Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final baseRingFadeParams:Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$FadeParams;

.field public final centerFillFadeParams:Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$FadeParams;

.field public final centerX:F

.field public final centerY:F

.field public final color:I

.field public final duration:J

.field public final hintSparkleOnly:Z

.field public final interpolator:Landroid/view/animation/Interpolator;

.field public final isReverse:Z

.field public final maxHeight:F

.field public final maxWidth:F

.field public final moveSpeedX:F

.field public final moveSpeedY:F

.field public final opacity:I

.field public final pixelDensity:F

.field public final requestedFrameRate:Ljava/lang/Float;

.field public final scale:F

.field public final shouldDistort:Z

.field public final sparkleColor:I

.field public final sparkleRingFadeParams:Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$FadeParams;

.field public final sparkleStrength:F


# direct methods
.method public constructor <init>()V
    .locals 25

    move-object/from16 v0, p0

    const v23, 0x1fffff

    const/16 v24, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v0 .. v24}, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;-><init>(Ljava/lang/Float;JFFFFFFFFIIIFLcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$FadeParams;Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$FadeParams;Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$FadeParams;ZZLandroid/view/animation/Interpolator;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Float;JFFFFFFFFIIIFLcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$FadeParams;Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$FadeParams;Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$FadeParams;ZZLandroid/view/animation/Interpolator;Z)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->requestedFrameRate:Ljava/lang/Float;

    move-wide v1, p2

    iput-wide v1, v0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->duration:J

    move v1, p4

    iput v1, v0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->centerX:F

    move v1, p5

    iput v1, v0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->centerY:F

    move v1, p6

    iput v1, v0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->moveSpeedX:F

    move v1, p7

    iput v1, v0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->moveSpeedY:F

    move v1, p8

    iput v1, v0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->scale:F

    move v1, p9

    iput v1, v0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->maxWidth:F

    move v1, p10

    iput v1, v0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->maxHeight:F

    move v1, p11

    iput v1, v0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->pixelDensity:F

    move v1, p12

    iput v1, v0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->color:I

    move/from16 v1, p13

    iput v1, v0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->sparkleColor:I

    move/from16 v1, p14

    iput v1, v0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->opacity:I

    move/from16 v1, p15

    iput v1, v0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->sparkleStrength:F

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->baseRingFadeParams:Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$FadeParams;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->sparkleRingFadeParams:Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$FadeParams;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->centerFillFadeParams:Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$FadeParams;

    move/from16 v1, p19

    iput-boolean v1, v0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->shouldDistort:Z

    move/from16 v1, p20

    iput-boolean v1, v0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->isReverse:Z

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->interpolator:Landroid/view/animation/Interpolator;

    move/from16 v1, p22

    iput-boolean v1, v0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->hintSparkleOnly:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Float;JFFFFFFFFIIIFLcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$FadeParams;Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$FadeParams;Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$FadeParams;ZZLandroid/view/animation/Interpolator;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 23

    move/from16 v0, p23

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    const-wide/16 v3, 0x0

    goto :goto_1

    :cond_1
    move-wide/from16 v3, p2

    :goto_1
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    move/from16 v5, p4

    :goto_2
    and-int/lit8 v7, v0, 0x8

    if-eqz v7, :cond_3

    const/4 v7, 0x0

    goto :goto_3

    :cond_3
    move/from16 v7, p5

    :goto_3
    and-int/lit8 v8, v0, 0x10

    if-eqz v8, :cond_4

    const/4 v8, 0x0

    goto :goto_4

    :cond_4
    move/from16 v8, p6

    :goto_4
    and-int/lit8 v9, v0, 0x20

    if-eqz v9, :cond_5

    const/4 v9, 0x0

    goto :goto_5

    :cond_5
    move/from16 v9, p7

    :goto_5
    and-int/lit8 v10, v0, 0x40

    if-eqz v10, :cond_6

    const/high16 v10, 0x3f800000    # 1.0f

    goto :goto_6

    :cond_6
    move/from16 v10, p8

    :goto_6
    and-int/lit16 v12, v0, 0x80

    if-eqz v12, :cond_7

    const/4 v12, 0x0

    goto :goto_7

    :cond_7
    move/from16 v12, p9

    :goto_7
    and-int/lit16 v13, v0, 0x100

    if-eqz v13, :cond_8

    const/4 v13, 0x0

    goto :goto_8

    :cond_8
    move/from16 v13, p10

    :goto_8
    and-int/lit16 v14, v0, 0x200

    if-eqz v14, :cond_9

    const/high16 v14, 0x3f800000    # 1.0f

    goto :goto_9

    :cond_9
    move/from16 v14, p11

    :goto_9
    and-int/lit16 v15, v0, 0x400

    const/16 v16, -0x1

    if-eqz v15, :cond_a

    move/from16 v15, v16

    goto :goto_a

    :cond_a
    move/from16 v15, p12

    :goto_a
    and-int/lit16 v2, v0, 0x800

    if-eqz v2, :cond_b

    goto :goto_b

    :cond_b
    move/from16 v16, p13

    :goto_b
    and-int/lit16 v2, v0, 0x1000

    if-eqz v2, :cond_c

    const/16 v2, 0x73

    goto :goto_c

    :cond_c
    move/from16 v2, p14

    :goto_c
    and-int/lit16 v6, v0, 0x2000

    if-eqz v6, :cond_d

    const v6, 0x3e99999a    # 0.3f

    goto :goto_d

    :cond_d
    move/from16 v6, p15

    :goto_d
    and-int/lit16 v11, v0, 0x4000

    if-eqz v11, :cond_e

    const/4 v11, 0x0

    goto :goto_e

    :cond_e
    move-object/from16 v11, p16

    :goto_e
    const v17, 0x8000

    and-int v17, v0, v17

    if-eqz v17, :cond_f

    const/16 v17, 0x0

    goto :goto_f

    :cond_f
    move-object/from16 v17, p17

    :goto_f
    const/high16 v18, 0x10000

    and-int v18, v0, v18

    if-eqz v18, :cond_10

    const/16 v18, 0x0

    goto :goto_10

    :cond_10
    move-object/from16 v18, p18

    :goto_10
    const/high16 v19, 0x20000

    and-int v19, v0, v19

    if-eqz v19, :cond_11

    const/16 v19, 0x1

    goto :goto_11

    :cond_11
    move/from16 v19, p19

    :goto_11
    const/high16 v20, 0x40000

    and-int v20, v0, v20

    const/16 v21, 0x0

    if-eqz v20, :cond_12

    move/from16 v20, v21

    goto :goto_12

    :cond_12
    move/from16 v20, p20

    :goto_12
    const/high16 v22, 0x80000

    and-int v22, v0, v22

    if-eqz v22, :cond_13

    move-object/from16 p16, v11

    new-instance v11, Landroid/view/animation/PathInterpolator;

    move/from16 p15, v6

    const v6, 0x3e4ccccd    # 0.2f

    move/from16 p14, v2

    move/from16 p12, v15

    const/4 v2, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-direct {v11, v6, v2, v2, v15}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    goto :goto_13

    :cond_13
    move/from16 p14, v2

    move/from16 p15, v6

    move-object/from16 p16, v11

    move/from16 p12, v15

    move-object/from16 v11, p21

    :goto_13
    const/high16 v2, 0x100000

    and-int/2addr v0, v2

    if-eqz v0, :cond_14

    goto :goto_14

    :cond_14
    move/from16 v21, p22

    :goto_14
    move-object/from16 p1, v1

    move-wide/from16 p2, v3

    move/from16 p4, v5

    move/from16 p5, v7

    move/from16 p6, v8

    move/from16 p7, v9

    move/from16 p8, v10

    move/from16 p9, v12

    move/from16 p10, v13

    move/from16 p11, v14

    move/from16 p13, v16

    move-object/from16 p17, v17

    move-object/from16 p18, v18

    move/from16 p19, v19

    move/from16 p20, v20

    move-object/from16 p21, v11

    move/from16 p22, v21

    invoke-direct/range {p0 .. p22}, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;-><init>(Ljava/lang/Float;JFFFFFFFFIIIFLcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$FadeParams;Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$FadeParams;Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$FadeParams;ZZLandroid/view/animation/Interpolator;Z)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;

    iget-object v1, p1, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->requestedFrameRate:Ljava/lang/Float;

    iget-object v3, p0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->requestedFrameRate:Ljava/lang/Float;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->duration:J

    iget-wide v5, p1, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->duration:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->centerX:F

    iget v3, p1, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->centerX:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->centerY:F

    iget v3, p1, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->centerY:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->moveSpeedX:F

    iget v3, p1, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->moveSpeedX:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->moveSpeedY:F

    iget v3, p1, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->moveSpeedY:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->scale:F

    iget v3, p1, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->scale:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_8

    return v2

    :cond_8
    iget v1, p0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->maxWidth:F

    iget v3, p1, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->maxWidth:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_9

    return v2

    :cond_9
    iget v1, p0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->maxHeight:F

    iget v3, p1, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->maxHeight:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_a

    return v2

    :cond_a
    iget v1, p0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->pixelDensity:F

    iget v3, p1, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->pixelDensity:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_b

    return v2

    :cond_b
    iget v1, p0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->color:I

    iget v3, p1, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->color:I

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget v1, p0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->sparkleColor:I

    iget v3, p1, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->sparkleColor:I

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    iget v1, p0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->opacity:I

    iget v3, p1, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->opacity:I

    if-eq v1, v3, :cond_e

    return v2

    :cond_e
    iget v1, p0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->sparkleStrength:F

    iget v3, p1, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->sparkleStrength:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->baseRingFadeParams:Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$FadeParams;

    iget-object v3, p1, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->baseRingFadeParams:Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$FadeParams;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->sparkleRingFadeParams:Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$FadeParams;

    iget-object v3, p1, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->sparkleRingFadeParams:Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$FadeParams;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->centerFillFadeParams:Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$FadeParams;

    iget-object v3, p1, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->centerFillFadeParams:Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$FadeParams;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-boolean v1, p0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->shouldDistort:Z

    iget-boolean v3, p1, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->shouldDistort:Z

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-boolean v1, p0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->isReverse:Z

    iget-boolean v3, p1, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->isReverse:Z

    if-eq v1, v3, :cond_14

    return v2

    :cond_14
    iget-object v1, p0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->interpolator:Landroid/view/animation/Interpolator;

    iget-object v3, p1, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->interpolator:Landroid/view/animation/Interpolator;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    :cond_15
    iget-boolean p0, p0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->hintSparkleOnly:Z

    iget-boolean p1, p1, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->hintSparkleOnly:Z

    if-eq p0, p1, :cond_16

    return v2

    :cond_16
    return v0
.end method

.method public final hashCode()I
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->requestedFrameRate:Ljava/lang/Float;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    const/16 v2, 0x1f

    mul-int/2addr v1, v2

    iget-wide v3, p0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->duration:J

    invoke-static {v1, v2, v3, v4}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v1

    iget v3, p0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->centerX:F

    invoke-static {v3, v1, v2}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(FII)I

    move-result v1

    iget v3, p0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->centerY:F

    invoke-static {v3, v1, v2}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(FII)I

    move-result v1

    iget v3, p0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->moveSpeedX:F

    invoke-static {v3, v1, v2}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(FII)I

    move-result v1

    iget v3, p0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->moveSpeedY:F

    invoke-static {v3, v1, v2}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(FII)I

    move-result v1

    iget v3, p0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->scale:F

    invoke-static {v3, v1, v2}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(FII)I

    move-result v1

    iget v3, p0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->maxWidth:F

    invoke-static {v3, v1, v2}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(FII)I

    move-result v1

    iget v3, p0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->maxHeight:F

    invoke-static {v3, v1, v2}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(FII)I

    move-result v1

    iget v3, p0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->pixelDensity:F

    invoke-static {v3, v1, v2}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(FII)I

    move-result v1

    iget v3, p0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->color:I

    invoke-static {v3, v1, v2}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v1

    iget v3, p0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->sparkleColor:I

    invoke-static {v3, v1, v2}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v1

    iget v3, p0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->opacity:I

    invoke-static {v3, v1, v2}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v1

    iget v3, p0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->sparkleStrength:F

    invoke-static {v3, v1, v2}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(FII)I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->baseRingFadeParams:Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$FadeParams;

    if-nez v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$FadeParams;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->sparkleRingFadeParams:Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$FadeParams;

    if-nez v3, :cond_2

    move v3, v0

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$FadeParams;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->centerFillFadeParams:Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$FadeParams;

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$FadeParams;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v1, v0

    mul-int/2addr v1, v2

    iget-boolean v0, p0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->shouldDistort:Z

    invoke-static {v1, v2, v0}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v1, p0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->isReverse:Z

    invoke-static {v0, v2, v1}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/2addr v1, v2

    iget-boolean p0, p0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->hintSparkleOnly:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->interpolator:Landroid/view/animation/Interpolator;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RippleAnimationConfig(requestedFrameRate="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->requestedFrameRate:Ljava/lang/Float;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", duration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->duration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", centerX="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->centerX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", centerY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->centerY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", moveSpeedX="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->moveSpeedX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", moveSpeedY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->moveSpeedY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", scale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->scale:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", maxWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->maxWidth:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", maxHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->maxHeight:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", pixelDensity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->pixelDensity:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", color="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->color:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", sparkleColor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->sparkleColor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", opacity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->opacity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", sparkleStrength="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->sparkleStrength:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", baseRingFadeParams="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->baseRingFadeParams:Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$FadeParams;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", sparkleRingFadeParams="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->sparkleRingFadeParams:Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$FadeParams;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", centerFillFadeParams="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->centerFillFadeParams:Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleShader$FadeParams;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", shouldDistort="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->shouldDistort:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isReverse="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->isReverse:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", interpolator="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", hintSparkleOnly="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/RippleAnimationConfig;->hintSparkleOnly:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
