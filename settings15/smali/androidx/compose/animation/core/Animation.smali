.class public interface abstract Landroidx/compose/animation/core/Animation;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public abstract getDurationNanos()J
.end method

.method public abstract getTargetValue()Ljava/lang/Object;
.end method

.method public abstract getTypeConverter()Landroidx/compose/animation/core/TwoWayConverter;
.end method

.method public abstract getValueFromNanos(J)Ljava/lang/Object;
.end method

.method public abstract getVelocityVectorFromNanos(J)Landroidx/compose/animation/core/AnimationVector;
.end method

.method public isFinishedFromNanos(J)Z
    .locals 2

    invoke-interface {p0}, Landroidx/compose/animation/core/Animation;->getDurationNanos()J

    move-result-wide v0

    cmp-long p0, p1, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract isInfinite()Z
.end method
