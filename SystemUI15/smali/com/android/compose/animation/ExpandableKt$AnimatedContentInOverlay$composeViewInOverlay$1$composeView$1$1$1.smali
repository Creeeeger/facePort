.class final Lcom/android/compose/animation/ExpandableKt$AnimatedContentInOverlay$composeViewInOverlay$1$composeView$1$1$1;
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

.field final synthetic $color:J

.field final synthetic $controller:Lcom/android/compose/animation/ExpandableControllerImpl;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/State;JLcom/android/compose/animation/ExpandableControllerImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State;",
            "J",
            "Lcom/android/compose/animation/ExpandableControllerImpl;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/compose/animation/ExpandableKt$AnimatedContentInOverlay$composeViewInOverlay$1$composeView$1$1$1;->$animatorState:Landroidx/compose/runtime/State;

    iput-wide p2, p0, Lcom/android/compose/animation/ExpandableKt$AnimatedContentInOverlay$composeViewInOverlay$1$composeView$1$1$1;->$color:J

    iput-object p4, p0, Lcom/android/compose/animation/ExpandableKt$AnimatedContentInOverlay$composeViewInOverlay$1$composeView$1$1$1;->$controller:Lcom/android/compose/animation/ExpandableControllerImpl;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    check-cast v6, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;

    iget-object v1, v0, Lcom/android/compose/animation/ExpandableKt$AnimatedContentInOverlay$composeViewInOverlay$1$composeView$1$1$1;->$animatorState:Landroidx/compose/runtime/State;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/animation/TransitionAnimator$State;

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-boolean v2, v1, Lcom/android/systemui/animation/TransitionAnimator$State;->visible:Z

    if-nez v2, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-wide v2, v0, Lcom/android/compose/animation/ExpandableKt$AnimatedContentInOverlay$composeViewInOverlay$1$composeView$1$1$1;->$color:J

    iget-object v0, v0, Lcom/android/compose/animation/ExpandableKt$AnimatedContentInOverlay$composeViewInOverlay$1$composeView$1$1$1;->$controller:Lcom/android/compose/animation/ExpandableControllerImpl;

    iget-object v0, v0, Lcom/android/compose/animation/ExpandableControllerImpl;->borderStroke:Landroidx/compose/foundation/BorderStroke;

    iget v4, v1, Lcom/android/systemui/animation/TransitionAnimator$State;->topCornerRadius:F

    iget v1, v1, Lcom/android/systemui/animation/TransitionAnimator$State;->bottomCornerRadius:F

    cmpg-float v5, v4, v1

    if-nez v5, :cond_2

    invoke-static {v4, v4}, Landroidx/compose/ui/geometry/CornerRadiusKt;->CornerRadius(FF)J

    move-result-wide v4

    invoke-static {v6, v2, v3, v4, v5}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawRoundRect-u-Aw5IA$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJ)V

    if-eqz v0, :cond_3

    move-object v7, v6

    check-cast v7, Landroidx/compose/ui/node/LayoutNodeDrawScope;

    iget v1, v0, Landroidx/compose/foundation/BorderStroke;->width:F

    invoke-virtual {v7, v1}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->toPx-0680j_4(F)F

    move-result v1

    const/4 v2, 0x2

    int-to-float v2, v2

    div-float v2, v1, v2

    new-instance v3, Landroidx/compose/ui/graphics/drawscope/Stroke;

    const/16 v14, 0x1e

    const/4 v15, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, v3

    move v9, v1

    invoke-direct/range {v8 .. v15}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIILandroidx/compose/ui/graphics/PathEffect;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v2, v2}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v9

    iget-object v8, v7, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-interface {v8}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v11

    invoke-static {v11, v12}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v11

    sub-float/2addr v11, v1

    invoke-interface {v8}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v12

    invoke-static {v12, v13}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v8

    sub-float/2addr v8, v1

    invoke-static {v11, v8}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    move-result-wide v11

    invoke-static {v2, v4, v5}, Lcom/android/compose/animation/ExpandableKt;->shrink-Kibmq7A(FJ)J

    move-result-wide v13

    iget-object v8, v0, Landroidx/compose/foundation/BorderStroke;->brush:Landroidx/compose/ui/graphics/Brush;

    const/16 v16, 0xd0

    move-object v15, v3

    invoke-static/range {v7 .. v16}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawRoundRect-ZuiqVtQ$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Brush;JJJLandroidx/compose/ui/graphics/drawscope/DrawStyle;I)V

    goto/16 :goto_0

    :cond_2
    sget-object v5, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->CircleShape:Landroidx/compose/foundation/shape/RoundedCornerShape;

    new-instance v5, Landroidx/compose/foundation/shape/RoundedCornerShape;

    sget v7, Landroidx/compose/foundation/shape/CornerSizeKt;->$r8$clinit:I

    new-instance v7, Landroidx/compose/foundation/shape/PxCornerSize;

    invoke-direct {v7, v4}, Landroidx/compose/foundation/shape/PxCornerSize;-><init>(F)V

    new-instance v8, Landroidx/compose/foundation/shape/PxCornerSize;

    invoke-direct {v8, v4}, Landroidx/compose/foundation/shape/PxCornerSize;-><init>(F)V

    new-instance v4, Landroidx/compose/foundation/shape/PxCornerSize;

    invoke-direct {v4, v1}, Landroidx/compose/foundation/shape/PxCornerSize;-><init>(F)V

    new-instance v9, Landroidx/compose/foundation/shape/PxCornerSize;

    invoke-direct {v9, v1}, Landroidx/compose/foundation/shape/PxCornerSize;-><init>(F)V

    invoke-direct {v5, v7, v8, v4, v9}, Landroidx/compose/foundation/shape/RoundedCornerShape;-><init>(Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;)V

    move-object v1, v6

    check-cast v1, Landroidx/compose/ui/node/LayoutNodeDrawScope;

    iget-object v4, v1, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-interface {v4}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v7

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v4

    invoke-virtual {v5, v7, v8, v4, v6}, Landroidx/compose/foundation/shape/CornerBasedShape;->createOutline-Pq9zytI(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)Landroidx/compose/ui/graphics/Outline;

    move-result-object v4

    invoke-static {v6, v4, v2, v3}, Landroidx/compose/ui/graphics/OutlineKt;->drawOutline-wDX37Ww$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Outline;J)V

    if-eqz v0, :cond_3

    iget v2, v0, Landroidx/compose/foundation/BorderStroke;->width:F

    invoke-virtual {v1, v2}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->toPx-0680j_4(F)F

    move-result v9

    check-cast v4, Landroidx/compose/ui/graphics/Outline$Rounded;

    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/AndroidPath;

    move-result-object v1

    iget-object v2, v4, Landroidx/compose/ui/graphics/Outline$Rounded;->roundRect:Landroidx/compose/ui/geometry/RoundRect;

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Path;->addRoundRect$default(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/RoundRect;)V

    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/AndroidPath;

    move-result-object v3

    invoke-virtual {v2}, Landroidx/compose/ui/geometry/RoundRect;->getWidth()F

    move-result v4

    sub-float v10, v4, v9

    invoke-virtual {v2}, Landroidx/compose/ui/geometry/RoundRect;->getHeight()F

    move-result v4

    sub-float v11, v4, v9

    iget-wide v4, v2, Landroidx/compose/ui/geometry/RoundRect;->topLeftCornerRadius:J

    invoke-static {v9, v4, v5}, Lcom/android/compose/animation/ExpandableKt;->shrink-Kibmq7A(FJ)J

    move-result-wide v12

    iget-wide v4, v2, Landroidx/compose/ui/geometry/RoundRect;->topRightCornerRadius:J

    invoke-static {v9, v4, v5}, Lcom/android/compose/animation/ExpandableKt;->shrink-Kibmq7A(FJ)J

    move-result-wide v14

    iget-wide v4, v2, Landroidx/compose/ui/geometry/RoundRect;->bottomLeftCornerRadius:J

    invoke-static {v9, v4, v5}, Lcom/android/compose/animation/ExpandableKt;->shrink-Kibmq7A(FJ)J

    move-result-wide v18

    iget-wide v4, v2, Landroidx/compose/ui/geometry/RoundRect;->bottomRightCornerRadius:J

    invoke-static {v9, v4, v5}, Lcom/android/compose/animation/ExpandableKt;->shrink-Kibmq7A(FJ)J

    move-result-wide v16

    new-instance v2, Landroidx/compose/ui/geometry/RoundRect;

    const/16 v20, 0x0

    move-object v7, v2

    move v8, v9

    invoke-direct/range {v7 .. v20}, Landroidx/compose/ui/geometry/RoundRect;-><init>(FFFFJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v3, v2}, Landroidx/compose/ui/graphics/Path;->addRoundRect$default(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/RoundRect;)V

    sget-object v2, Landroidx/compose/ui/graphics/PathOperation;->Companion:Landroidx/compose/ui/graphics/PathOperation$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-virtual {v1, v1, v3, v2}, Landroidx/compose/ui/graphics/AndroidPath;->op-N5in7k0(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Path;I)Z

    const/4 v4, 0x0

    const/16 v5, 0x3c

    iget-object v2, v0, Landroidx/compose/foundation/BorderStroke;->brush:Landroidx/compose/ui/graphics/Brush;

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawPath-GBMwjPU$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/Stroke;I)V

    :cond_3
    :goto_0
    check-cast v6, Landroidx/compose/ui/node/LayoutNodeDrawScope;

    invoke-virtual {v6}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawContent()V

    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
