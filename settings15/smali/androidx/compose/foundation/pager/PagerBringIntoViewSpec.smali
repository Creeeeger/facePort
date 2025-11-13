.class public final Landroidx/compose/foundation/pager/PagerBringIntoViewSpec;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/compose/foundation/gestures/BringIntoViewSpec;


# instance fields
.field public final defaultBringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

.field public final pagerState:Landroidx/compose/foundation/pager/PagerState;

.field public final scrollAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/gestures/BringIntoViewSpec;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerBringIntoViewSpec;->pagerState:Landroidx/compose/foundation/pager/PagerState;

    iput-object p2, p0, Landroidx/compose/foundation/pager/PagerBringIntoViewSpec;->defaultBringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    invoke-interface {p2}, Landroidx/compose/foundation/gestures/BringIntoViewSpec;->getScrollAnimationSpec()Landroidx/compose/animation/core/AnimationSpec;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerBringIntoViewSpec;->scrollAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;

    return-void
.end method


# virtual methods
.method public final calculateScrollDistance(FFF)F
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerBringIntoViewSpec;->defaultBringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    invoke-interface {v0, p1, p2, p3}, Landroidx/compose/foundation/gestures/BringIntoViewSpec;->calculateScrollDistance(FFF)F

    move-result p1

    const/4 p2, 0x0

    cmpg-float v0, p1, p2

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerBringIntoViewSpec;->pagerState:Landroidx/compose/foundation/pager/PagerState;

    if-nez v0, :cond_2

    iget p1, p0, Landroidx/compose/foundation/pager/PagerState;->firstVisiblePageOffset:I

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    int-to-float p1, p1

    const/high16 p2, -0x40800000    # -1.0f

    mul-float/2addr p1, p2

    iget-object p2, p0, Landroidx/compose/foundation/pager/PagerState;->isLastScrollForwardState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getPageSizeWithSpacing$foundation_release()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr p1, p0

    :cond_1
    neg-float p0, p3

    invoke-static {p1, p0, p3}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p2

    goto :goto_2

    :cond_2
    iget p3, p0, Landroidx/compose/foundation/pager/PagerState;->firstVisiblePageOffset:I

    int-to-float p3, p3

    const/4 v1, -0x1

    int-to-float v1, v1

    mul-float/2addr p3, v1

    :goto_0
    cmpl-float v1, p1, p2

    if-lez v1, :cond_3

    cmpg-float v1, p3, p1

    if-gez v1, :cond_3

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getPageSizeWithSpacing$foundation_release()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p3, v1

    goto :goto_0

    :cond_3
    move p2, p3

    :goto_1
    if-gez v0, :cond_4

    cmpl-float p3, p2, p1

    if-lez p3, :cond_4

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getPageSizeWithSpacing$foundation_release()I

    move-result p3

    int-to-float p3, p3

    sub-float/2addr p2, p3

    goto :goto_1

    :cond_4
    :goto_2
    return p2
.end method

.method public final getScrollAnimationSpec()Landroidx/compose/animation/core/AnimationSpec;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerBringIntoViewSpec;->scrollAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;

    return-object p0
.end method
