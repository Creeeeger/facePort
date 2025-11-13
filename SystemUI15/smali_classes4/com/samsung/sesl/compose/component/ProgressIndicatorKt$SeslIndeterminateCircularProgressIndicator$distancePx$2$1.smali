.class final Lcom/samsung/sesl/compose/component/ProgressIndicatorKt$SeslIndeterminateCircularProgressIndicator$distancePx$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic $distanceInside:F

.field final synthetic $distanceOutSide:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    iput p1, p0, Lcom/samsung/sesl/compose/component/ProgressIndicatorKt$SeslIndeterminateCircularProgressIndicator$distancePx$2$1;->$distanceOutSide:F

    iput p2, p0, Lcom/samsung/sesl/compose/component/ProgressIndicatorKt$SeslIndeterminateCircularProgressIndicator$distancePx$2$1;->$distanceInside:F

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;

    const/16 v0, 0x3e8

    iput v0, p1, Landroidx/compose/animation/core/KeyframesSpecBaseConfig;->durationMillis:I

    iget v1, p0, Lcom/samsung/sesl/compose/component/ProgressIndicatorKt$SeslIndeterminateCircularProgressIndicator$distancePx$2$1;->$distanceOutSide:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->at(ILjava/lang/Object;)Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;

    move-result-object v1

    sget-object v2, Lcom/samsung/sesl/compose/foundation/theme/EasingKt;->sineInOut70:Landroidx/compose/animation/core/CubicBezierEasing;

    iput-object v2, v1, Landroidx/compose/animation/core/KeyframeBaseEntity;->easing:Landroidx/compose/animation/core/Easing;

    iget v1, p0, Lcom/samsung/sesl/compose/component/ProgressIndicatorKt$SeslIndeterminateCircularProgressIndicator$distancePx$2$1;->$distanceInside:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/16 v3, 0x1f4

    invoke-virtual {p1, v3, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->at(ILjava/lang/Object;)Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;

    move-result-object v1

    iput-object v2, v1, Landroidx/compose/animation/core/KeyframeBaseEntity;->easing:Landroidx/compose/animation/core/Easing;

    iget p0, p0, Lcom/samsung/sesl/compose/component/ProgressIndicatorKt$SeslIndeterminateCircularProgressIndicator$distancePx$2$1;->$distanceOutSide:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->at(ILjava/lang/Object;)Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;

    move-result-object p0

    iput-object v2, p0, Landroidx/compose/animation/core/KeyframeBaseEntity;->easing:Landroidx/compose/animation/core/Easing;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
