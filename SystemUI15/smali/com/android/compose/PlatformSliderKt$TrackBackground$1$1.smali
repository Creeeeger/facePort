.class final Lcom/android/compose/PlatformSliderKt$TrackBackground$1$1;
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
.field final synthetic $drawingState:Lcom/android/compose/DrawingState;

.field final synthetic $indicatorColor$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State;"
        }
    .end annotation
.end field

.field final synthetic $indicatorRadiusDp$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State;"
        }
    .end annotation
.end field

.field final synthetic $trackColor$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/compose/DrawingState;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/compose/DrawingState;",
            "Landroidx/compose/runtime/State;",
            "Landroidx/compose/runtime/State;",
            "Landroidx/compose/runtime/State;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/compose/PlatformSliderKt$TrackBackground$1$1;->$drawingState:Lcom/android/compose/DrawingState;

    iput-object p2, p0, Lcom/android/compose/PlatformSliderKt$TrackBackground$1$1;->$trackColor$delegate:Landroidx/compose/runtime/State;

    iput-object p3, p0, Lcom/android/compose/PlatformSliderKt$TrackBackground$1$1;->$indicatorRadiusDp$delegate:Landroidx/compose/runtime/State;

    iput-object p4, p0, Lcom/android/compose/PlatformSliderKt$TrackBackground$1$1;->$indicatorColor$delegate:Landroidx/compose/runtime/State;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    check-cast v7, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    invoke-interface {v7}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v1

    const/4 v2, 0x2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-interface {v7}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v3

    div-float/2addr v3, v2

    invoke-static {v1, v3}, Landroidx/compose/ui/geometry/CornerRadiusKt;->CornerRadius(FF)J

    move-result-wide v19

    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/AndroidPath;

    move-result-object v8

    iget-object v1, v0, Lcom/android/compose/PlatformSliderKt$TrackBackground$1$1;->$drawingState:Lcom/android/compose/DrawingState;

    iget v2, v1, Lcom/android/compose/DrawingState;->totalWidth:F

    invoke-static/range {v19 .. v20}, Landroidx/compose/ui/geometry/CornerRadius;->getX-impl(J)F

    move-result v3

    invoke-static/range {v19 .. v20}, Landroidx/compose/ui/geometry/CornerRadius;->getY-impl(J)F

    move-result v4

    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/CornerRadiusKt;->CornerRadius(FF)J

    move-result-wide v32

    new-instance v3, Landroidx/compose/ui/geometry/RoundRect;

    const/16 v34, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    iget v1, v1, Lcom/android/compose/DrawingState;->totalHeight:F

    move-object/from16 v21, v3

    move/from16 v24, v2

    move/from16 v25, v1

    move-wide/from16 v26, v32

    move-wide/from16 v28, v32

    move-wide/from16 v30, v32

    invoke-direct/range {v21 .. v34}, Landroidx/compose/ui/geometry/RoundRect;-><init>(FFFFJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v8, v3}, Landroidx/compose/ui/graphics/Path;->addRoundRect$default(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/RoundRect;)V

    iget-object v1, v0, Lcom/android/compose/PlatformSliderKt$TrackBackground$1$1;->$trackColor$delegate:Landroidx/compose/runtime/State;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/graphics/Color;

    iget-wide v3, v1, Landroidx/compose/ui/graphics/Color;->value:J

    const/4 v5, 0x0

    const/16 v6, 0x3c

    move-object v1, v7

    move-object v2, v8

    invoke-static/range {v1 .. v6}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawPath-LG529CI$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/AndroidPath;JLandroidx/compose/ui/graphics/drawscope/Stroke;I)V

    iget-object v1, v0, Lcom/android/compose/PlatformSliderKt$TrackBackground$1$1;->$indicatorRadiusDp$delegate:Landroidx/compose/runtime/State;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/unit/Dp;

    iget v1, v1, Landroidx/compose/ui/unit/Dp;->value:F

    invoke-interface {v7, v1}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v1

    iget-object v2, v0, Lcom/android/compose/PlatformSliderKt$TrackBackground$1$1;->$indicatorRadiusDp$delegate:Landroidx/compose/runtime/State;

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/unit/Dp;

    iget v2, v2, Landroidx/compose/ui/unit/Dp;->value:F

    invoke-interface {v7, v2}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v2

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/CornerRadiusKt;->CornerRadius(FF)J

    move-result-wide v17

    iget-object v1, v0, Lcom/android/compose/PlatformSliderKt$TrackBackground$1$1;->$drawingState:Lcom/android/compose/DrawingState;

    iget-object v0, v0, Lcom/android/compose/PlatformSliderKt$TrackBackground$1$1;->$indicatorColor$delegate:Landroidx/compose/runtime/State;

    sget-object v2, Landroidx/compose/ui/graphics/ClipOp;->Companion:Landroidx/compose/ui/graphics/ClipOp$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v2, Landroidx/compose/ui/graphics/ClipOp;->Intersect:I

    invoke-interface {v7}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->getSize-NH-jbRc()J

    move-result-wide v4

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v3

    invoke-interface {v3}, Landroidx/compose/ui/graphics/Canvas;->save()V

    :try_start_0
    iget-object v3, v6, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->transform:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    iget-object v3, v3, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->$this_asDrawTransform:Landroidx/compose/ui/graphics/drawscope/DrawContext;

    check-cast v3, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v3

    invoke-interface {v3, v8, v2}, Landroidx/compose/ui/graphics/Canvas;->clipPath-mtrdD-E(Landroidx/compose/ui/graphics/Path;I)V

    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/AndroidPath;

    move-result-object v2

    new-instance v3, Landroidx/compose/ui/geometry/RoundRect;

    iget v9, v1, Lcom/android/compose/DrawingState;->indicatorLeft:F

    iget v10, v1, Lcom/android/compose/DrawingState;->indicatorTop:F

    iget v11, v1, Lcom/android/compose/DrawingState;->indicatorRight:F

    iget v12, v1, Lcom/android/compose/DrawingState;->indicatorBottom:F

    const/16 v21, 0x0

    move-object v8, v3

    move-wide/from16 v13, v19

    move-wide/from16 v15, v17

    invoke-direct/range {v8 .. v21}, Landroidx/compose/ui/geometry/RoundRect;-><init>(FFFFJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/Path;->addRoundRect$default(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/RoundRect;)V

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/graphics/Color;

    iget-wide v8, v0, Landroidx/compose/ui/graphics/Color;->value:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v10, 0x3c

    const/4 v11, 0x0

    move-object v0, v7

    move-object v1, v2

    move-wide v2, v8

    move-wide v7, v4

    move-object v4, v11

    move v5, v10

    :try_start_1
    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawPath-LG529CI$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/AndroidPath;JLandroidx/compose/ui/graphics/drawscope/Stroke;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v6, v7, v8}, Landroidx/compose/foundation/BorderModifierNode$drawRoundRectBorder$1$$ExternalSyntheticOutline0;->m(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;J)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-wide v7, v4

    :goto_0
    invoke-static {v6, v7, v8}, Landroidx/compose/foundation/BorderModifierNode$drawRoundRectBorder$1$$ExternalSyntheticOutline0;->m(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;J)V

    throw v0
.end method
