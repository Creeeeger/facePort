.class final Lcom/samsung/sesl/compose/foundation/BasicRadioButtonKt$seslRadioButton$2$1$1;
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
.field final synthetic $colors:Lcom/samsung/sesl/compose/foundation/SeslBasicRadioButtonColors;

.field final synthetic $disabledOpacity:F

.field final synthetic $inCircleScale$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State;"
        }
    .end annotation
.end field

.field final synthetic $outCircleScale$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State;"
        }
    .end annotation
.end field

.field final synthetic $outCircleStrokeColor$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State;"
        }
    .end annotation
.end field

.field final synthetic $outCircleStrokeWidthRatio$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/State;FLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Lcom/samsung/sesl/compose/foundation/SeslBasicRadioButtonColors;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State;",
            "F",
            "Landroidx/compose/runtime/State;",
            "Landroidx/compose/runtime/State;",
            "Landroidx/compose/runtime/State;",
            "Lcom/samsung/sesl/compose/foundation/SeslBasicRadioButtonColors;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/sesl/compose/foundation/BasicRadioButtonKt$seslRadioButton$2$1$1;->$outCircleScale$delegate:Landroidx/compose/runtime/State;

    iput p2, p0, Lcom/samsung/sesl/compose/foundation/BasicRadioButtonKt$seslRadioButton$2$1$1;->$disabledOpacity:F

    iput-object p3, p0, Lcom/samsung/sesl/compose/foundation/BasicRadioButtonKt$seslRadioButton$2$1$1;->$outCircleStrokeColor$delegate:Landroidx/compose/runtime/State;

    iput-object p4, p0, Lcom/samsung/sesl/compose/foundation/BasicRadioButtonKt$seslRadioButton$2$1$1;->$outCircleStrokeWidthRatio$delegate:Landroidx/compose/runtime/State;

    iput-object p5, p0, Lcom/samsung/sesl/compose/foundation/BasicRadioButtonKt$seslRadioButton$2$1$1;->$inCircleScale$delegate:Landroidx/compose/runtime/State;

    iput-object p6, p0, Lcom/samsung/sesl/compose/foundation/BasicRadioButtonKt$seslRadioButton$2$1$1;->$colors:Lcom/samsung/sesl/compose/foundation/SeslBasicRadioButtonColors;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    check-cast v10, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    sget-object v1, Lcom/samsung/sesl/compose/foundation/SeslRadioButtonDefaults$OutCircle;->INSTANCE:Lcom/samsung/sesl/compose/foundation/SeslRadioButtonDefaults$OutCircle;

    iget-object v2, v0, Lcom/samsung/sesl/compose/foundation/BasicRadioButtonKt$seslRadioButton$2$1$1;->$outCircleScale$delegate:Landroidx/compose/runtime/State;

    iget v7, v0, Lcom/samsung/sesl/compose/foundation/BasicRadioButtonKt$seslRadioButton$2$1$1;->$disabledOpacity:F

    iget-object v3, v0, Lcom/samsung/sesl/compose/foundation/BasicRadioButtonKt$seslRadioButton$2$1$1;->$outCircleStrokeColor$delegate:Landroidx/compose/runtime/State;

    iget-object v4, v0, Lcom/samsung/sesl/compose/foundation/BasicRadioButtonKt$seslRadioButton$2$1$1;->$outCircleStrokeWidthRatio$delegate:Landroidx/compose/runtime/State;

    invoke-interface {v10}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    move-result-object v11

    invoke-virtual {v11}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->getSize-NH-jbRc()J

    move-result-wide v12

    invoke-virtual {v11}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v5

    invoke-interface {v5}, Landroidx/compose/ui/graphics/Canvas;->save()V

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    iget-object v6, v11, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->transform:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    iget-object v8, v6, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->$this_asDrawTransform:Landroidx/compose/ui/graphics/drawscope/DrawContext;

    check-cast v8, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->getSize-NH-jbRc()J

    move-result-wide v8

    invoke-static {v8, v9}, Landroidx/compose/ui/geometry/SizeKt;->getCenter-uvyYCjk(J)J

    move-result-wide v8

    invoke-virtual {v6, v5, v2, v8, v9}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->scale-0AR0LA0(FFJ)V

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/Color;

    iget-wide v2, v2, Landroidx/compose/ui/graphics/Color;->value:J

    const v5, 0x3f4ccccd    # 0.8f

    invoke-static {v5, v2, v3}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v2

    invoke-interface {v10}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v5

    const/high16 v6, 0x3e900000    # 0.28125f

    mul-float/2addr v5, v6

    new-instance v8, Landroidx/compose/ui/graphics/drawscope/Stroke;

    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    invoke-interface {v10}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v14

    invoke-static {v14, v15}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v6

    mul-float v15, v6, v4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v20, 0x12

    const/16 v21, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v14, v8

    invoke-direct/range {v14 .. v21}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIILandroidx/compose/ui/graphics/PathEffect;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-wide/16 v14, 0x0

    const/16 v9, 0x64

    move-object v1, v10

    move v4, v5

    move-wide v5, v14

    invoke-static/range {v1 .. v9}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawCircle-VaOC9Bg$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFJFLandroidx/compose/ui/graphics/drawscope/Stroke;I)V

    invoke-static {v11, v12, v13}, Landroidx/compose/foundation/BorderModifierNode$drawRoundRectBorder$1$$ExternalSyntheticOutline0;->m(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;J)V

    sget v1, Lcom/samsung/sesl/compose/foundation/SeslRadioButtonDefaults$InCircle;->$r8$clinit:I

    iget-object v1, v0, Lcom/samsung/sesl/compose/foundation/BasicRadioButtonKt$seslRadioButton$2$1$1;->$inCircleScale$delegate:Landroidx/compose/runtime/State;

    iget-object v2, v0, Lcom/samsung/sesl/compose/foundation/BasicRadioButtonKt$seslRadioButton$2$1$1;->$colors:Lcom/samsung/sesl/compose/foundation/SeslBasicRadioButtonColors;

    iget v6, v0, Lcom/samsung/sesl/compose/foundation/BasicRadioButtonKt$seslRadioButton$2$1$1;->$disabledOpacity:F

    invoke-interface {v10}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->getSize-NH-jbRc()J

    move-result-wide v11

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/graphics/Canvas;->save()V

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    iget-object v3, v9, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->transform:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    iget-object v4, v3, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->$this_asDrawTransform:Landroidx/compose/ui/graphics/drawscope/DrawContext;

    check-cast v4, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->getSize-NH-jbRc()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/SizeKt;->getCenter-uvyYCjk(J)J

    move-result-wide v4

    invoke-virtual {v3, v0, v1, v4, v5}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->scale-0AR0LA0(FFJ)V

    iget-wide v1, v2, Lcom/samsung/sesl/compose/foundation/SeslBasicRadioButtonColors;->checkedColor:J

    invoke-interface {v10}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v0

    const/high16 v3, 0x3e200000    # 0.15625f

    mul-float/2addr v3, v0

    const/4 v7, 0x0

    const/16 v8, 0x74

    const-wide/16 v4, 0x0

    move-object v0, v10

    invoke-static/range {v0 .. v8}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawCircle-VaOC9Bg$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFJFLandroidx/compose/ui/graphics/drawscope/Stroke;I)V

    invoke-static {v9, v11, v12}, Landroidx/compose/foundation/BorderModifierNode$drawRoundRectBorder$1$$ExternalSyntheticOutline0;->m(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;J)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
