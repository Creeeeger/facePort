.class final Lcom/android/compose/animation/ExpandableKt$AnimatedContentInOverlay$composeViewInOverlay$1$contentModifier$2;
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
.field final synthetic $animatorState:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State;"
        }
    .end annotation
.end field

.field final synthetic $startHeight:F

.field final synthetic $startWidth:F


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/State;FF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State;",
            "FF)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/compose/animation/ExpandableKt$AnimatedContentInOverlay$composeViewInOverlay$1$contentModifier$2;->$animatorState:Landroidx/compose/runtime/State;

    iput p2, p0, Lcom/android/compose/animation/ExpandableKt$AnimatedContentInOverlay$composeViewInOverlay$1$contentModifier$2;->$startWidth:F

    iput p3, p0, Lcom/android/compose/animation/ExpandableKt$AnimatedContentInOverlay$composeViewInOverlay$1$contentModifier$2;->$startHeight:F

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;

    iget-object v0, p0, Lcom/android/compose/animation/ExpandableKt$AnimatedContentInOverlay$composeViewInOverlay$1$contentModifier$2;->$animatorState:Landroidx/compose/runtime/State;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/animation/TransitionAnimator$State;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget v1, p0, Lcom/android/compose/animation/ExpandableKt$AnimatedContentInOverlay$composeViewInOverlay$1$contentModifier$2;->$startWidth:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/animation/TransitionAnimator$State;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v4, p0, Lcom/android/compose/animation/ExpandableKt$AnimatedContentInOverlay$composeViewInOverlay$1$contentModifier$2;->$startWidth:F

    div-float/2addr v1, v4

    :goto_0
    iget v4, p0, Lcom/android/compose/animation/ExpandableKt$AnimatedContentInOverlay$composeViewInOverlay$1$contentModifier$2;->$startHeight:F

    cmpg-float v2, v4, v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/android/systemui/animation/TransitionAnimator$State;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget p0, p0, Lcom/android/compose/animation/ExpandableKt$AnimatedContentInOverlay$composeViewInOverlay$1$contentModifier$2;->$startHeight:F

    div-float v3, v0, p0

    :goto_1
    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result p0

    check-cast p1, Landroidx/compose/ui/node/LayoutNodeDrawScope;

    iget-object v0, p1, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getCenter-F1C5BW0()J

    move-result-wide v0

    iget-object v2, p1, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    iget-object v2, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->getSize-NH-jbRc()J

    move-result-wide v3

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v5

    invoke-interface {v5}, Landroidx/compose/ui/graphics/Canvas;->save()V

    :try_start_0
    iget-object v5, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->transform:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    invoke-virtual {v5, p0, p0, v0, v1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->scale-0AR0LA0(FFJ)V

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawContent()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3, v4}, Landroidx/compose/foundation/BorderModifierNode$drawRoundRectBorder$1$$ExternalSyntheticOutline0;->m(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;J)V

    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v2, v3, v4}, Landroidx/compose/foundation/BorderModifierNode$drawRoundRectBorder$1$$ExternalSyntheticOutline0;->m(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;J)V

    throw p0
.end method
