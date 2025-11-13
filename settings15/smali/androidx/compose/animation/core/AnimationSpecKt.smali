.class public abstract Landroidx/compose/animation/core/AnimationSpecKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static infiniteRepeatable-9IiC70o$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;)Landroidx/compose/animation/core/InfiniteRepeatableSpec;
    .locals 4

    sget-object v0, Landroidx/compose/animation/core/RepeatMode;->Restart:Landroidx/compose/animation/core/RepeatMode;

    const/4 v1, 0x0

    int-to-long v1, v1

    new-instance v3, Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    invoke-direct {v3, p0, v0, v1, v2}, Landroidx/compose/animation/core/InfiniteRepeatableSpec;-><init>(Landroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;J)V

    return-object v3
.end method

.method public static spring$default(FLjava/lang/Object;I)Landroidx/compose/animation/core/SpringSpec;
    .locals 1

    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_0

    const p0, 0x44bb8000    # 1500.0f

    :cond_0
    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    :cond_1
    new-instance p2, Landroidx/compose/animation/core/SpringSpec;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p2, v0, p0, p1}, Landroidx/compose/animation/core/SpringSpec;-><init>(FFLjava/lang/Object;)V

    return-object p2
.end method

.method public static tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;
    .locals 1

    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_1

    sget-object p2, Landroidx/compose/animation/core/EasingKt;->FastOutSlowInEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    :cond_1
    new-instance p3, Landroidx/compose/animation/core/TweenSpec;

    invoke-direct {p3, p0, p1, p2}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;)V

    return-object p3
.end method
