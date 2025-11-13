.class public final Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final baseRingFadeParams:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;

.field public final centerFillFadeParams:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;

.field public final centerX:F

.field public final centerY:F

.field public color:I

.field public final duration:J

.field public final maxHeight:F

.field public final maxWidth:F

.field public final opacity:I

.field public final pixelDensity:F

.field public final rippleShape:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;

.field public final shouldDistort:Z

.field public final sparkleRingFadeParams:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;

.field public final sparkleStrength:F


# direct methods
.method public constructor <init>()V
    .locals 18

    move-object/from16 v0, p0

    const/16 v16, 0x3fff

    const/16 v17, 0x0

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

    invoke-direct/range {v0 .. v17}, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;-><init>(Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;JFFFFFIIFLcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;JFFFFFIIFLcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->rippleShape:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;

    iput-wide p2, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->duration:J

    iput p4, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->centerX:F

    iput p5, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->centerY:F

    iput p6, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->maxWidth:F

    iput p7, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->maxHeight:F

    iput p8, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->pixelDensity:F

    iput p9, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->color:I

    iput p10, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->opacity:I

    iput p11, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->sparkleStrength:F

    iput-object p12, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->baseRingFadeParams:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;

    iput-object p13, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->sparkleRingFadeParams:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;

    iput-object p14, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->centerFillFadeParams:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;

    iput-boolean p15, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->shouldDistort:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;JFFFFFIIFLcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 16

    move/from16 v0, p16

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;->CIRCLE:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x0

    goto :goto_1

    :cond_1
    move-wide/from16 v2, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    move v4, v5

    goto :goto_2

    :cond_2
    move/from16 v4, p4

    :goto_2
    and-int/lit8 v6, v0, 0x8

    if-eqz v6, :cond_3

    move v6, v5

    goto :goto_3

    :cond_3
    move/from16 v6, p5

    :goto_3
    and-int/lit8 v7, v0, 0x10

    if-eqz v7, :cond_4

    move v7, v5

    goto :goto_4

    :cond_4
    move/from16 v7, p6

    :goto_4
    and-int/lit8 v8, v0, 0x20

    if-eqz v8, :cond_5

    goto :goto_5

    :cond_5
    move/from16 v5, p7

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_6

    :cond_6
    move/from16 v8, p8

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    const/4 v9, -0x1

    goto :goto_7

    :cond_7
    move/from16 v9, p9

    :goto_7
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    const/16 v10, 0x73

    goto :goto_8

    :cond_8
    move/from16 v10, p10

    :goto_8
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_9

    const v11, 0x3e99999a    # 0.3f

    goto :goto_9

    :cond_9
    move/from16 v11, p11

    :goto_9
    and-int/lit16 v12, v0, 0x400

    const/4 v13, 0x0

    if-eqz v12, :cond_a

    move-object v12, v13

    goto :goto_a

    :cond_a
    move-object/from16 v12, p12

    :goto_a
    and-int/lit16 v14, v0, 0x800

    if-eqz v14, :cond_b

    move-object v14, v13

    goto :goto_b

    :cond_b
    move-object/from16 v14, p13

    :goto_b
    and-int/lit16 v15, v0, 0x1000

    if-eqz v15, :cond_c

    goto :goto_c

    :cond_c
    move-object/from16 v13, p14

    :goto_c
    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_d

    :cond_d
    move/from16 v0, p15

    :goto_d
    move-object/from16 p1, v1

    move-wide/from16 p2, v2

    move/from16 p4, v4

    move/from16 p5, v6

    move/from16 p6, v7

    move/from16 p7, v5

    move/from16 p8, v8

    move/from16 p9, v9

    move/from16 p10, v10

    move/from16 p11, v11

    move-object/from16 p12, v12

    move-object/from16 p13, v14

    move-object/from16 p14, v13

    move/from16 p15, v0

    invoke-direct/range {p0 .. p15}, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;-><init>(Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;JFFFFFIIFLcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;Z)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;

    iget-object v1, p1, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->rippleShape:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;

    iget-object v3, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->rippleShape:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->duration:J

    iget-wide v5, p1, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->duration:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->centerX:F

    iget v3, p1, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->centerX:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->centerY:F

    iget v3, p1, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->centerY:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->maxWidth:F

    iget v3, p1, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->maxWidth:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->maxHeight:F

    iget v3, p1, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->maxHeight:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->pixelDensity:F

    iget v3, p1, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->pixelDensity:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_8

    return v2

    :cond_8
    iget v1, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->color:I

    iget v3, p1, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->color:I

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget v1, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->opacity:I

    iget v3, p1, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->opacity:I

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget v1, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->sparkleStrength:F

    iget v3, p1, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->sparkleStrength:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->baseRingFadeParams:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;

    iget-object v3, p1, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->baseRingFadeParams:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->sparkleRingFadeParams:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;

    iget-object v3, p1, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->sparkleRingFadeParams:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->centerFillFadeParams:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;

    iget-object v3, p1, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->centerFillFadeParams:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-boolean p0, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->shouldDistort:Z

    iget-boolean p1, p1, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->shouldDistort:Z

    if-eq p0, p1, :cond_f

    return v2

    :cond_f
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->rippleShape:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->duration:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->centerX:F

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(FII)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->centerY:F

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(FII)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->maxWidth:F

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(FII)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->maxHeight:F

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(FII)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->pixelDensity:F

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(FII)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->color:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->opacity:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->sparkleStrength:F

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(FII)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->baseRingFadeParams:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->sparkleRingFadeParams:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->centerFillFadeParams:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean p0, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->shouldDistort:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->color:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RippleAnimationConfig(rippleShape="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->rippleShape:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", duration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->duration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", centerX="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->centerX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", centerY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->centerY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", maxWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->maxWidth:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", maxHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->maxHeight:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", pixelDensity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->pixelDensity:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", color="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", opacity="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->opacity:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", sparkleStrength="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->sparkleStrength:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", baseRingFadeParams="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->baseRingFadeParams:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", sparkleRingFadeParams="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->sparkleRingFadeParams:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", centerFillFadeParams="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->centerFillFadeParams:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", shouldDistort="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->shouldDistort:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
