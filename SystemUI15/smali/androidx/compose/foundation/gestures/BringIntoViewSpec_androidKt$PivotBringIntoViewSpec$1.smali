.class public final Landroidx/compose/foundation/gestures/BringIntoViewSpec_androidKt$PivotBringIntoViewSpec$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/compose/foundation/gestures/BringIntoViewSpec;


# instance fields
.field public final parentFraction:F

.field public final scrollAnimationSpec:Landroidx/compose/animation/core/TweenSpec;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Landroidx/compose/foundation/gestures/BringIntoViewSpec_androidKt$PivotBringIntoViewSpec$1;->parentFraction:F

    new-instance v0, Landroidx/compose/animation/core/CubicBezierEasing;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3e800000    # 0.25f

    const v3, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v2, v3, v2, v1}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    const/16 v1, 0x7d

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v1, v2, v0, v3}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/gestures/BringIntoViewSpec_androidKt$PivotBringIntoViewSpec$1;->scrollAnimationSpec:Landroidx/compose/animation/core/TweenSpec;

    return-void
.end method


# virtual methods
.method public final calculateScrollDistance(FFF)F
    .locals 2

    add-float/2addr p2, p1

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpg-float v0, p2, p3

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget p0, p0, Landroidx/compose/foundation/gestures/BringIntoViewSpec_androidKt$PivotBringIntoViewSpec$1;->parentFraction:F

    mul-float/2addr p0, p3

    const/4 v1, 0x0

    mul-float/2addr v1, p2

    sub-float/2addr p0, v1

    sub-float v1, p3, p0

    if-eqz v0, :cond_1

    cmpg-float v0, v1, p2

    if-gez v0, :cond_1

    sub-float p0, p3, p2

    :cond_1
    sub-float/2addr p1, p0

    return p1
.end method

.method public final getScrollAnimationSpec()Landroidx/compose/animation/core/AnimationSpec;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/gestures/BringIntoViewSpec_androidKt$PivotBringIntoViewSpec$1;->scrollAnimationSpec:Landroidx/compose/animation/core/TweenSpec;

    return-object p0
.end method
