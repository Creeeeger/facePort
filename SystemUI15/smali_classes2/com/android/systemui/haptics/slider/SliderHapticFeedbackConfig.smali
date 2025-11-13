.class public final Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final additionalVelocityMaxBump:F

.field public final deltaMillisForDragInterval:F

.field public final deltaProgressForDragThreshold:F

.field public final exponent:F

.field public final lowerBookendScale:F

.field public final maxVelocityToScale:F

.field public final numberOfLowTicks:I

.field public final progressBasedDragMaxScale:F

.field public final progressBasedDragMinScale:F

.field public final progressInterpolatorFactor:F

.field public final upperBookendScale:F

.field public final velocityAxis:I

.field public final velocityInterpolatorFactor:F


# direct methods
.method public constructor <init>()V
    .locals 16

    const/16 v14, 0x1fff

    const/4 v15, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

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

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v15}, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;-><init>(FFFFFFFIFIFFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(FFFFFFFIFIFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;->velocityInterpolatorFactor:F

    iput p2, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;->progressInterpolatorFactor:F

    iput p3, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;->progressBasedDragMinScale:F

    iput p4, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;->progressBasedDragMaxScale:F

    iput p5, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;->additionalVelocityMaxBump:F

    iput p6, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;->deltaMillisForDragInterval:F

    iput p7, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;->deltaProgressForDragThreshold:F

    iput p8, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;->numberOfLowTicks:I

    iput p9, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;->maxVelocityToScale:F

    iput p10, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;->velocityAxis:I

    iput p11, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;->upperBookendScale:F

    iput p12, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;->lowerBookendScale:F

    iput p13, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;->exponent:F

    return-void
.end method

.method public synthetic constructor <init>(FFFFFFFIFIFFFILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 13

    move/from16 v0, p14

    and-int/lit8 v1, v0, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    move v4, v5

    goto :goto_2

    :cond_2
    move/from16 v4, p3

    :goto_2
    and-int/lit8 v6, v0, 0x8

    if-eqz v6, :cond_3

    const v6, 0x3e4ccccd    # 0.2f

    goto :goto_3

    :cond_3
    move/from16 v6, p4

    :goto_3
    and-int/lit8 v7, v0, 0x10

    if-eqz v7, :cond_4

    const v7, 0x3e19999a    # 0.15f

    goto :goto_4

    :cond_4
    move/from16 v7, p5

    :goto_4
    and-int/lit8 v8, v0, 0x20

    if-eqz v8, :cond_5

    goto :goto_5

    :cond_5
    move/from16 v5, p6

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    const v8, 0x3c75c28f    # 0.015f

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    const/4 v9, 0x5

    goto :goto_7

    :cond_7
    move/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    const/high16 v10, 0x44fa0000    # 2000.0f

    goto :goto_8

    :cond_8
    move/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_9

    const/4 v11, 0x0

    goto :goto_9

    :cond_9
    move/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_a

    goto :goto_a

    :cond_a
    move/from16 v2, p11

    :goto_a
    and-int/lit16 v12, v0, 0x800

    if-eqz v12, :cond_b

    const v12, 0x3d4ccccd    # 0.05f

    goto :goto_b

    :cond_b
    move/from16 v12, p12

    :goto_b
    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_c

    const v0, 0x3f8fd1fa

    goto :goto_c

    :cond_c
    move/from16 v0, p13

    :goto_c
    move p1, v1

    move p2, v3

    move/from16 p3, v4

    move/from16 p4, v6

    move/from16 p5, v7

    move/from16 p6, v5

    move/from16 p7, v8

    move/from16 p8, v9

    move/from16 p9, v10

    move/from16 p10, v11

    move/from16 p11, v2

    move/from16 p12, v12

    move/from16 p13, v0

    invoke-direct/range {p0 .. p13}, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;-><init>(FFFFFFFIFIFFF)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;

    iget v1, p1, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;->velocityInterpolatorFactor:F

    iget v3, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;->velocityInterpolatorFactor:F

    invoke-static {v3, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;->progressInterpolatorFactor:F

    iget v3, p1, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;->progressInterpolatorFactor:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;->progressBasedDragMinScale:F

    iget v3, p1, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;->progressBasedDragMinScale:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;->progressBasedDragMaxScale:F

    iget v3, p1, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;->progressBasedDragMaxScale:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;->additionalVelocityMaxBump:F

    iget v3, p1, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;->additionalVelocityMaxBump:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;->deltaMillisForDragInterval:F

    iget v3, p1, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;->deltaMillisForDragInterval:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;->deltaProgressForDragThreshold:F

    iget v3, p1, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;->deltaProgressForDragThreshold:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_8

    return v2

    :cond_8
    iget v1, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;->numberOfLowTicks:I

    iget v3, p1, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;->numberOfLowTicks:I

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget v1, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;->maxVelocityToScale:F

    iget v3, p1, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;->maxVelocityToScale:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_a

    return v2

    :cond_a
    iget v1, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;->velocityAxis:I

    iget v3, p1, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;->velocityAxis:I

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget v1, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;->upperBookendScale:F

    iget v3, p1, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;->upperBookendScale:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_c

    return v2

    :cond_c
    iget v1, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;->lowerBookendScale:F

    iget v3, p1, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;->lowerBookendScale:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_d

    return v2

    :cond_d
    iget p0, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;->exponent:F

    iget p1, p1, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;->exponent:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_e

    return v2

    :cond_e
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;->velocityInterpolatorFactor:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;->progressInterpolatorFactor:F

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(FII)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;->progressBasedDragMinScale:F

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(FII)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;->progressBasedDragMaxScale:F

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(FII)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;->additionalVelocityMaxBump:F

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(FII)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;->deltaMillisForDragInterval:F

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(FII)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;->deltaProgressForDragThreshold:F

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(FII)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;->numberOfLowTicks:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;->maxVelocityToScale:F

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(FII)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;->velocityAxis:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;->upperBookendScale:F

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(FII)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;->lowerBookendScale:F

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(FII)I

    move-result v0

    iget p0, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;->exponent:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SliderHapticFeedbackConfig(velocityInterpolatorFactor="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;->velocityInterpolatorFactor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", progressInterpolatorFactor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;->progressInterpolatorFactor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", progressBasedDragMinScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;->progressBasedDragMinScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", progressBasedDragMaxScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;->progressBasedDragMaxScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", additionalVelocityMaxBump="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;->additionalVelocityMaxBump:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", deltaMillisForDragInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;->deltaMillisForDragInterval:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", deltaProgressForDragThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;->deltaProgressForDragThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", numberOfLowTicks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;->numberOfLowTicks:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxVelocityToScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;->maxVelocityToScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", velocityAxis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;->velocityAxis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", upperBookendScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;->upperBookendScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", lowerBookendScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;->lowerBookendScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", exponent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackConfig;->exponent:F

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Landroidx/compose/foundation/shape/DpCornerSize$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
