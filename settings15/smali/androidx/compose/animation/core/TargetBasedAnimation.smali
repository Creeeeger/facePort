.class public final Landroidx/compose/animation/core/TargetBasedAnimation;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/compose/animation/core/Animation;


# instance fields
.field public _durationNanos:J

.field public _endVelocity:Landroidx/compose/animation/core/AnimationVector;

.field public final animationSpec:Landroidx/compose/animation/core/VectorizedAnimationSpec;

.field public initialValueVector:Landroidx/compose/animation/core/AnimationVector;

.field public final initialVelocityVector:Landroidx/compose/animation/core/AnimationVector;

.field public mutableInitialValue:Ljava/lang/Object;

.field public mutableTargetValue:Ljava/lang/Object;

.field public targetValueVector:Landroidx/compose/animation/core/AnimationVector;

.field public final typeConverter:Landroidx/compose/animation/core/TwoWayConverter;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;)V
    .locals 0

    invoke-interface {p1, p2}, Landroidx/compose/animation/core/AnimationSpec;->vectorize(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedAnimationSpec;

    move-result-object p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->animationSpec:Landroidx/compose/animation/core/VectorizedAnimationSpec;

    iput-object p2, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->typeConverter:Landroidx/compose/animation/core/TwoWayConverter;

    iput-object p4, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->mutableTargetValue:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->mutableInitialValue:Ljava/lang/Object;

    check-cast p2, Landroidx/compose/animation/core/TwoWayConverterImpl;

    iget-object p1, p2, Landroidx/compose/animation/core/TwoWayConverterImpl;->convertToVector:Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/animation/core/AnimationVector;

    iput-object p1, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->initialValueVector:Landroidx/compose/animation/core/AnimationVector;

    iget-object p1, p2, Landroidx/compose/animation/core/TwoWayConverterImpl;->convertToVector:Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, p4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/compose/animation/core/AnimationVector;

    iput-object p2, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->targetValueVector:Landroidx/compose/animation/core/AnimationVector;

    if-eqz p5, :cond_0

    invoke-static {p5}, Landroidx/compose/animation/core/AnimationVectorsKt;->copy(Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-interface {p1, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/animation/core/AnimationVector;

    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationVector;->newVector$animation_core_release()Landroidx/compose/animation/core/AnimationVector;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->initialVelocityVector:Landroidx/compose/animation/core/AnimationVector;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->_durationNanos:J

    return-void
.end method


# virtual methods
.method public final getDurationNanos()J
    .locals 4

    iget-wide v0, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->_durationNanos:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->initialValueVector:Landroidx/compose/animation/core/AnimationVector;

    iget-object v1, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->targetValueVector:Landroidx/compose/animation/core/AnimationVector;

    iget-object v2, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->initialVelocityVector:Landroidx/compose/animation/core/AnimationVector;

    iget-object v3, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->animationSpec:Landroidx/compose/animation/core/VectorizedAnimationSpec;

    invoke-interface {v3, v0, v1, v2}, Landroidx/compose/animation/core/VectorizedAnimationSpec;->getDurationNanos(Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->_durationNanos:J

    :cond_0
    iget-wide v0, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->_durationNanos:J

    return-wide v0
.end method

.method public final getTargetValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->mutableTargetValue:Ljava/lang/Object;

    return-object p0
.end method

.method public final getTypeConverter()Landroidx/compose/animation/core/TwoWayConverter;
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->typeConverter:Landroidx/compose/animation/core/TwoWayConverter;

    return-object p0
.end method

.method public final getValueFromNanos(J)Ljava/lang/Object;
    .locals 7

    invoke-interface {p0, p1, p2}, Landroidx/compose/animation/core/Animation;->isFinishedFromNanos(J)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v4, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->initialValueVector:Landroidx/compose/animation/core/AnimationVector;

    iget-object v5, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->targetValueVector:Landroidx/compose/animation/core/AnimationVector;

    iget-object v6, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->initialVelocityVector:Landroidx/compose/animation/core/AnimationVector;

    iget-object v1, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->animationSpec:Landroidx/compose/animation/core/VectorizedAnimationSpec;

    move-wide v2, p1

    invoke-interface/range {v1 .. v6}, Landroidx/compose/animation/core/VectorizedAnimationSpec;->getValueFromNanos(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/animation/core/AnimationVector;->getSize$animation_core_release()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Landroidx/compose/animation/core/AnimationVector;->get$animation_core_release(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AnimationVector cannot contain a NaN. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ". Animation: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", playTimeNanos: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object p0, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->typeConverter:Landroidx/compose/animation/core/TwoWayConverter;

    check-cast p0, Landroidx/compose/animation/core/TwoWayConverterImpl;

    iget-object p0, p0, Landroidx/compose/animation/core/TwoWayConverterImpl;->convertFromVector:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_2
    iget-object p0, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->mutableTargetValue:Ljava/lang/Object;

    :goto_1
    return-object p0
.end method

.method public final getVelocityVectorFromNanos(J)Landroidx/compose/animation/core/AnimationVector;
    .locals 7

    invoke-interface {p0, p1, p2}, Landroidx/compose/animation/core/Animation;->isFinishedFromNanos(J)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v4, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->initialValueVector:Landroidx/compose/animation/core/AnimationVector;

    iget-object v5, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->targetValueVector:Landroidx/compose/animation/core/AnimationVector;

    iget-object v6, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->initialVelocityVector:Landroidx/compose/animation/core/AnimationVector;

    iget-object v1, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->animationSpec:Landroidx/compose/animation/core/VectorizedAnimationSpec;

    move-wide v2, p1

    invoke-interface/range {v1 .. v6}, Landroidx/compose/animation/core/VectorizedAnimationSpec;->getVelocityFromNanos(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->_endVelocity:Landroidx/compose/animation/core/AnimationVector;

    if-nez p1, :cond_1

    iget-object p1, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->initialValueVector:Landroidx/compose/animation/core/AnimationVector;

    iget-object p2, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->targetValueVector:Landroidx/compose/animation/core/AnimationVector;

    iget-object v0, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->initialVelocityVector:Landroidx/compose/animation/core/AnimationVector;

    iget-object v1, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->animationSpec:Landroidx/compose/animation/core/VectorizedAnimationSpec;

    invoke-interface {v1, p1, p2, v0}, Landroidx/compose/animation/core/VectorizedAnimationSpec;->getEndVelocity(Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->_endVelocity:Landroidx/compose/animation/core/AnimationVector;

    :cond_1
    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method public final isInfinite()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->animationSpec:Landroidx/compose/animation/core/VectorizedAnimationSpec;

    invoke-interface {p0}, Landroidx/compose/animation/core/VectorizedAnimationSpec;->isInfinite()Z

    move-result p0

    return p0
.end method

.method public final setMutableInitialValue$animation_core_release(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->mutableInitialValue:Ljava/lang/Object;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->mutableInitialValue:Ljava/lang/Object;

    iget-object v0, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->typeConverter:Landroidx/compose/animation/core/TwoWayConverter;

    check-cast v0, Landroidx/compose/animation/core/TwoWayConverterImpl;

    iget-object v0, v0, Landroidx/compose/animation/core/TwoWayConverterImpl;->convertToVector:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/animation/core/AnimationVector;

    iput-object p1, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->initialValueVector:Landroidx/compose/animation/core/AnimationVector;

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->_endVelocity:Landroidx/compose/animation/core/AnimationVector;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->_durationNanos:J

    :cond_0
    return-void
.end method

.method public final setMutableTargetValue$animation_core_release(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->mutableTargetValue:Ljava/lang/Object;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->mutableTargetValue:Ljava/lang/Object;

    iget-object v0, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->typeConverter:Landroidx/compose/animation/core/TwoWayConverter;

    check-cast v0, Landroidx/compose/animation/core/TwoWayConverterImpl;

    iget-object v0, v0, Landroidx/compose/animation/core/TwoWayConverterImpl;->convertToVector:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/animation/core/AnimationVector;

    iput-object p1, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->targetValueVector:Landroidx/compose/animation/core/AnimationVector;

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->_endVelocity:Landroidx/compose/animation/core/AnimationVector;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->_durationNanos:J

    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TargetBasedAnimation: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->mutableInitialValue:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->mutableTargetValue:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",initial velocity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->initialVelocityVector:Landroidx/compose/animation/core/AnimationVector;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", duration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Landroidx/compose/animation/core/Animation;->getDurationNanos()J

    move-result-wide v1

    const-wide/32 v3, 0xf4240

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms,animationSpec: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/compose/animation/core/TargetBasedAnimation;->animationSpec:Landroidx/compose/animation/core/VectorizedAnimationSpec;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
