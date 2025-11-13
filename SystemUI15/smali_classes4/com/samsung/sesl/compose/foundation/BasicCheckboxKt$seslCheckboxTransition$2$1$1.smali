.class final Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$seslCheckboxTransition$2$1$1;
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
.field final synthetic $checkColor:J

.field final synthetic $circleStrokeColor:J

.field final synthetic $disabledOpacity:F

.field final synthetic $enabled:Z

.field final synthetic $leftAlpha$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State;"
        }
    .end annotation
.end field

.field final synthetic $leftPathNodes$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State;"
        }
    .end annotation
.end field

.field final synthetic $rightAlpha$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State;"
        }
    .end annotation
.end field

.field final synthetic $rightPathNodes$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JFJZLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JFJZ",
            "Landroidx/compose/runtime/State;",
            "Landroidx/compose/runtime/State;",
            "Landroidx/compose/runtime/State;",
            "Landroidx/compose/runtime/State;",
            ")V"
        }
    .end annotation

    iput-wide p1, p0, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$seslCheckboxTransition$2$1$1;->$checkColor:J

    iput p3, p0, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$seslCheckboxTransition$2$1$1;->$disabledOpacity:F

    iput-wide p4, p0, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$seslCheckboxTransition$2$1$1;->$circleStrokeColor:J

    iput-boolean p6, p0, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$seslCheckboxTransition$2$1$1;->$enabled:Z

    iput-object p7, p0, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$seslCheckboxTransition$2$1$1;->$rightPathNodes$delegate:Landroidx/compose/runtime/State;

    iput-object p8, p0, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$seslCheckboxTransition$2$1$1;->$rightAlpha$delegate:Landroidx/compose/runtime/State;

    iput-object p9, p0, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$seslCheckboxTransition$2$1$1;->$leftPathNodes$delegate:Landroidx/compose/runtime/State;

    iput-object p10, p0, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$seslCheckboxTransition$2$1$1;->$leftAlpha$delegate:Landroidx/compose/runtime/State;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    check-cast p1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    sget-object v0, Lcom/samsung/sesl/compose/foundation/SeslCheckboxDefaults$OutCircle;->INSTANCE:Lcom/samsung/sesl/compose/foundation/SeslCheckboxDefaults$OutCircle;

    iget-wide v1, p0, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$seslCheckboxTransition$2$1$1;->$circleStrokeColor:J

    iget v3, p0, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$seslCheckboxTransition$2$1$1;->$disabledOpacity:F

    iget-boolean v4, p0, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$seslCheckboxTransition$2$1$1;->$enabled:Z

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->getAlpha-impl(J)F

    move-result v5

    const v6, 0x3f4ccccd    # 0.8f

    mul-float/2addr v5, v6

    mul-float/2addr v5, v3

    invoke-static {v5, v1, v2}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v1

    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v3

    const/high16 v5, 0x3e900000    # 0.28125f

    mul-float/2addr v3, v5

    new-instance v13, Landroidx/compose/ui/graphics/drawscope/Stroke;

    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v5

    const/high16 v6, 0x3d400000    # 0.046875f

    mul-float/2addr v6, v5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v11, 0x12

    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v13

    invoke-direct/range {v5 .. v12}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIILandroidx/compose/ui/graphics/PathEffect;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/high16 v9, 0x3f800000    # 1.0f

    if-eqz v4, :cond_0

    move v6, v9

    goto :goto_0

    :cond_0
    const v0, 0x3ecccccd    # 0.4f

    move v6, v0

    :goto_0
    const-wide/16 v4, 0x0

    const/16 v8, 0x64

    move-object v0, p1

    move-object v7, v13

    invoke-static/range {v0 .. v8}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawCircle-VaOC9Bg$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFJFLandroidx/compose/ui/graphics/drawscope/Stroke;I)V

    iget-object v0, p0, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$seslCheckboxTransition$2$1$1;->$rightPathNodes$delegate:Landroidx/compose/runtime/State;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/AndroidPath;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/vector/PathParserKt;->toPath(Ljava/util/List;Landroidx/compose/ui/graphics/Path;)Landroidx/compose/ui/graphics/AndroidPath;

    move-result-object v1

    invoke-static {}, Landroidx/compose/ui/graphics/Matrix;->constructor-impl$default()[F

    move-result-object v0

    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v2

    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v3

    invoke-static {v2, v3, v9, v0}, Landroidx/compose/ui/graphics/Matrix;->scale-impl(FFF[F)V

    invoke-virtual {v1, v0}, Landroidx/compose/ui/graphics/AndroidPath;->transform-58bKbWc([F)V

    iget-wide v2, p0, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$seslCheckboxTransition$2$1$1;->$checkColor:J

    iget-object v0, p0, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$seslCheckboxTransition$2$1$1;->$rightAlpha$delegate:Landroidx/compose/runtime/State;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iget v4, p0, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$seslCheckboxTransition$2$1$1;->$disabledOpacity:F

    mul-float/2addr v0, v4

    invoke-static {v0, v2, v3}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v2

    const/4 v4, 0x0

    const/16 v5, 0x3c

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawPath-LG529CI$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/AndroidPath;JLandroidx/compose/ui/graphics/drawscope/Stroke;I)V

    iget-object v0, p0, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$seslCheckboxTransition$2$1$1;->$leftPathNodes$delegate:Landroidx/compose/runtime/State;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/AndroidPath;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/vector/PathParserKt;->toPath(Ljava/util/List;Landroidx/compose/ui/graphics/Path;)Landroidx/compose/ui/graphics/AndroidPath;

    move-result-object v1

    invoke-static {}, Landroidx/compose/ui/graphics/Matrix;->constructor-impl$default()[F

    move-result-object v0

    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v2

    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v3

    invoke-static {v2, v3, v9, v0}, Landroidx/compose/ui/graphics/Matrix;->scale-impl(FFF[F)V

    invoke-virtual {v1, v0}, Landroidx/compose/ui/graphics/AndroidPath;->transform-58bKbWc([F)V

    iget-wide v2, p0, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$seslCheckboxTransition$2$1$1;->$checkColor:J

    iget-object v0, p0, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$seslCheckboxTransition$2$1$1;->$leftAlpha$delegate:Landroidx/compose/runtime/State;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iget p0, p0, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$seslCheckboxTransition$2$1$1;->$disabledOpacity:F

    mul-float/2addr v0, p0

    invoke-static {v0, v2, v3}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v2

    const/4 v4, 0x0

    const/16 v5, 0x3c

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawPath-LG529CI$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/AndroidPath;JLandroidx/compose/ui/graphics/drawscope/Stroke;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
