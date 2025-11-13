.class final Lcom/samsung/sesl/compose/foundation/RecoilKt$seslRecoil$2$2$1;
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
.field final synthetic $density:Landroidx/compose/ui/unit/Density;

.field final synthetic $feedbackAboveShape:Landroidx/compose/ui/graphics/Shape;

.field final synthetic $feedbackBehindShape:Landroidx/compose/ui/graphics/Shape;

.field final synthetic $feedbackBgColor$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State;"
        }
    .end annotation
.end field

.field final synthetic $layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

.field final synthetic $scale$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/ui/graphics/Shape;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/graphics/Shape;",
            "Landroidx/compose/ui/unit/LayoutDirection;",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/runtime/State;",
            "Landroidx/compose/runtime/State;",
            "Landroidx/compose/ui/graphics/Shape;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/sesl/compose/foundation/RecoilKt$seslRecoil$2$2$1;->$feedbackBehindShape:Landroidx/compose/ui/graphics/Shape;

    iput-object p2, p0, Lcom/samsung/sesl/compose/foundation/RecoilKt$seslRecoil$2$2$1;->$layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    iput-object p3, p0, Lcom/samsung/sesl/compose/foundation/RecoilKt$seslRecoil$2$2$1;->$density:Landroidx/compose/ui/unit/Density;

    iput-object p4, p0, Lcom/samsung/sesl/compose/foundation/RecoilKt$seslRecoil$2$2$1;->$feedbackBgColor$delegate:Landroidx/compose/runtime/State;

    iput-object p5, p0, Lcom/samsung/sesl/compose/foundation/RecoilKt$seslRecoil$2$2$1;->$scale$delegate:Landroidx/compose/runtime/State;

    iput-object p6, p0, Lcom/samsung/sesl/compose/foundation/RecoilKt$seslRecoil$2$2$1;->$feedbackAboveShape:Landroidx/compose/ui/graphics/Shape;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    check-cast p1, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;

    iget-object v0, p0, Lcom/samsung/sesl/compose/foundation/RecoilKt$seslRecoil$2$2$1;->$feedbackBehindShape:Landroidx/compose/ui/graphics/Shape;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/sesl/compose/foundation/RecoilKt$seslRecoil$2$2$1;->$layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    iget-object v2, p0, Lcom/samsung/sesl/compose/foundation/RecoilKt$seslRecoil$2$2$1;->$density:Landroidx/compose/ui/unit/Density;

    iget-object v3, p0, Lcom/samsung/sesl/compose/foundation/RecoilKt$seslRecoil$2$2$1;->$feedbackBgColor$delegate:Landroidx/compose/runtime/State;

    move-object v4, p1

    check-cast v4, Landroidx/compose/ui/node/LayoutNodeDrawScope;

    iget-object v4, v4, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-interface {v4}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v4

    invoke-interface {v0, v4, v5, v1, v2}, Landroidx/compose/ui/graphics/Shape;->createOutline-Pq9zytI(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)Landroidx/compose/ui/graphics/Outline;

    move-result-object v0

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/graphics/Color;

    iget-wide v1, v1, Landroidx/compose/ui/graphics/Color;->value:J

    invoke-static {p1, v0, v1, v2}, Landroidx/compose/ui/graphics/OutlineKt;->drawOutline-wDX37Ww$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Outline;J)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/sesl/compose/foundation/RecoilKt$seslRecoil$2$2$1;->$scale$delegate:Landroidx/compose/runtime/State;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/sesl/compose/foundation/RecoilKt$seslRecoil$2$2$1;->$feedbackAboveShape:Landroidx/compose/ui/graphics/Shape;

    iget-object v2, p0, Lcom/samsung/sesl/compose/foundation/RecoilKt$seslRecoil$2$2$1;->$layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    iget-object v3, p0, Lcom/samsung/sesl/compose/foundation/RecoilKt$seslRecoil$2$2$1;->$density:Landroidx/compose/ui/unit/Density;

    iget-object p0, p0, Lcom/samsung/sesl/compose/foundation/RecoilKt$seslRecoil$2$2$1;->$feedbackBgColor$delegate:Landroidx/compose/runtime/State;

    check-cast p1, Landroidx/compose/ui/node/LayoutNodeDrawScope;

    iget-object v4, p1, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-interface {v4}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getCenter-F1C5BW0()J

    move-result-wide v4

    iget-object v6, p1, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    iget-object v7, v6, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->getSize-NH-jbRc()J

    move-result-wide v8

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v10

    invoke-interface {v10}, Landroidx/compose/ui/graphics/Canvas;->save()V

    iget-object v10, v7, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->transform:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    invoke-virtual {v10, v0, v0, v4, v5}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->scale-0AR0LA0(FFJ)V

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawContent()V

    if-eqz v1, :cond_1

    invoke-interface {v6}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v4

    invoke-interface {v1, v4, v5, v2, v3}, Landroidx/compose/ui/graphics/Shape;->createOutline-Pq9zytI(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)Landroidx/compose/ui/graphics/Outline;

    move-result-object v0

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/graphics/Color;

    iget-wide v1, p0, Landroidx/compose/ui/graphics/Color;->value:J

    invoke-static {p1, v0, v1, v2}, Landroidx/compose/ui/graphics/OutlineKt;->drawOutline-wDX37Ww$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Outline;J)V

    :cond_1
    invoke-static {v7, v8, v9}, Landroidx/compose/foundation/BorderModifierNode$drawRoundRectBorder$1$$ExternalSyntheticOutline0;->m(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;J)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
