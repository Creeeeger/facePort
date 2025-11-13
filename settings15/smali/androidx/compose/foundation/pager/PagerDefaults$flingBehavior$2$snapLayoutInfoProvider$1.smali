.class final Landroidx/compose/foundation/pager/PagerDefaults$flingBehavior$2$snapLayoutInfoProvider$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0005\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0001H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "flingVelocity",
        "lowerBound",
        "upperBound",
        "invoke",
        "(FFF)Ljava/lang/Float;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

.field final synthetic $snapPositionalThreshold:F

.field final synthetic $state:Landroidx/compose/foundation/pager/PagerState;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/ui/unit/LayoutDirection;F)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerDefaults$flingBehavior$2$snapLayoutInfoProvider$1;->$state:Landroidx/compose/foundation/pager/PagerState;

    iput-object p2, p0, Landroidx/compose/foundation/pager/PagerDefaults$flingBehavior$2$snapLayoutInfoProvider$1;->$layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    iput p3, p0, Landroidx/compose/foundation/pager/PagerDefaults$flingBehavior$2$snapLayoutInfoProvider$1;->$snapPositionalThreshold:F

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p3

    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerDefaults$flingBehavior$2$snapLayoutInfoProvider$1;->$state:Landroidx/compose/foundation/pager/PagerState;

    iget-object v1, p0, Landroidx/compose/foundation/pager/PagerDefaults$flingBehavior$2$snapLayoutInfoProvider$1;->$layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    iget p0, p0, Landroidx/compose/foundation/pager/PagerDefaults$flingBehavior$2$snapLayoutInfoProvider$1;->$snapPositionalThreshold:F

    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerState;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object v2

    iget-object v2, v2, Landroidx/compose/foundation/pager/PagerMeasureResult;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v3, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_0

    invoke-static {v0}, Landroidx/compose/foundation/gestures/snapping/PagerSnapLayoutInfoProviderKt;->isScrollingForward(Landroidx/compose/foundation/pager/PagerState;)Z

    move-result v1

    goto :goto_0

    :cond_0
    sget-object v2, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne v1, v2, :cond_1

    invoke-static {v0}, Landroidx/compose/foundation/gestures/snapping/PagerSnapLayoutInfoProviderKt;->isScrollingForward(Landroidx/compose/foundation/pager/PagerState;)Z

    move-result v1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Landroidx/compose/foundation/gestures/snapping/PagerSnapLayoutInfoProviderKt;->isScrollingForward(Landroidx/compose/foundation/pager/PagerState;)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v5

    goto :goto_0

    :cond_2
    move v1, v4

    :goto_0
    invoke-static {v0}, Landroidx/compose/foundation/gestures/snapping/PagerSnapLayoutInfoProviderKt;->dragGestureDelta(Landroidx/compose/foundation/pager/PagerState;)F

    move-result v2

    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerState;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object v3

    iget v3, v3, Landroidx/compose/foundation/pager/PagerMeasureResult;->pageSize:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v3, v2

    int-to-float v3, v3

    sub-float v3, v2, v3

    iget-object v6, v0, Landroidx/compose/foundation/pager/PagerState;->density:Landroidx/compose/ui/unit/Density;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sget v8, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt;->MinFlingVelocityDp:F

    invoke-interface {v6, v8}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v6

    cmpg-float v6, v7, v6

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-gez v6, :cond_3

    goto :goto_1

    :cond_3
    cmpl-float p1, p1, v8

    if-lez p1, :cond_4

    move v4, v5

    goto :goto_1

    :cond_4
    move v4, v7

    :goto_1
    if-nez v4, :cond_7

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p0, p1, p0

    if-lez p0, :cond_5

    if-eqz v1, :cond_b

    goto :goto_2

    :cond_5
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p0

    iget-object p1, v0, Landroidx/compose/foundation/pager/PagerState;->density:Landroidx/compose/ui/unit/Density;

    sget v2, Landroidx/compose/foundation/pager/PagerStateKt;->DefaultPositionThreshold:F

    invoke-interface {p1, v2}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result p1

    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerState;->getPageSize$foundation_release()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerState;->getPageSize$foundation_release()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_6

    if-eqz v1, :cond_8

    goto :goto_3

    :cond_6
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p0, p0, p1

    if-gez p0, :cond_8

    goto :goto_3

    :cond_7
    if-ne v4, v5, :cond_9

    :cond_8
    :goto_2
    move p2, p3

    goto :goto_3

    :cond_9
    if-ne v4, v7, :cond_a

    goto :goto_3

    :cond_a
    move p2, v8

    :cond_b
    :goto_3
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
