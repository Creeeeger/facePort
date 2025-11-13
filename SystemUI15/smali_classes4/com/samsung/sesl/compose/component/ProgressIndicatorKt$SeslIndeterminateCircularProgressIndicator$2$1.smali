.class final Lcom/samsung/sesl/compose/component/ProgressIndicatorKt$SeslIndeterminateCircularProgressIndicator$2$1;
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
.field final synthetic $color:J

.field final synthetic $distancePx$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State;"
        }
    .end annotation
.end field

.field final synthetic $dotRadius:F

.field final synthetic $pointColor:J


# direct methods
.method public constructor <init>(JFJLandroidx/compose/runtime/State;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JFJ",
            "Landroidx/compose/runtime/State;",
            ")V"
        }
    .end annotation

    iput-wide p1, p0, Lcom/samsung/sesl/compose/component/ProgressIndicatorKt$SeslIndeterminateCircularProgressIndicator$2$1;->$color:J

    iput p3, p0, Lcom/samsung/sesl/compose/component/ProgressIndicatorKt$SeslIndeterminateCircularProgressIndicator$2$1;->$dotRadius:F

    iput-wide p4, p0, Lcom/samsung/sesl/compose/component/ProgressIndicatorKt$SeslIndeterminateCircularProgressIndicator$2$1;->$pointColor:J

    iput-object p6, p0, Lcom/samsung/sesl/compose/component/ProgressIndicatorKt$SeslIndeterminateCircularProgressIndicator$2$1;->$distancePx$delegate:Landroidx/compose/runtime/State;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    check-cast p1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    iget-wide v1, p0, Lcom/samsung/sesl/compose/component/ProgressIndicatorKt$SeslIndeterminateCircularProgressIndicator$2$1;->$color:J

    iget v3, p0, Lcom/samsung/sesl/compose/component/ProgressIndicatorKt$SeslIndeterminateCircularProgressIndicator$2$1;->$dotRadius:F

    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/SizeKt;->getCenter-uvyYCjk(J)J

    move-result-wide v4

    iget-object v0, p0, Lcom/samsung/sesl/compose/component/ProgressIndicatorKt$SeslIndeterminateCircularProgressIndicator$2$1;->$distancePx$delegate:Landroidx/compose/runtime/State;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    const/4 v9, 0x0

    invoke-static {v9, v0}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v4

    const/4 v7, 0x0

    const/16 v8, 0x78

    const/4 v6, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v8}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawCircle-VaOC9Bg$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFJFLandroidx/compose/ui/graphics/drawscope/Stroke;I)V

    iget-wide v1, p0, Lcom/samsung/sesl/compose/component/ProgressIndicatorKt$SeslIndeterminateCircularProgressIndicator$2$1;->$color:J

    iget v3, p0, Lcom/samsung/sesl/compose/component/ProgressIndicatorKt$SeslIndeterminateCircularProgressIndicator$2$1;->$dotRadius:F

    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/SizeKt;->getCenter-uvyYCjk(J)J

    move-result-wide v4

    iget-object v0, p0, Lcom/samsung/sesl/compose/component/ProgressIndicatorKt$SeslIndeterminateCircularProgressIndicator$2$1;->$distancePx$delegate:Landroidx/compose/runtime/State;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    neg-float v0, v0

    invoke-static {v9, v0}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v4

    const/4 v7, 0x0

    const/16 v8, 0x78

    const/4 v6, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v8}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawCircle-VaOC9Bg$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFJFLandroidx/compose/ui/graphics/drawscope/Stroke;I)V

    iget-wide v1, p0, Lcom/samsung/sesl/compose/component/ProgressIndicatorKt$SeslIndeterminateCircularProgressIndicator$2$1;->$pointColor:J

    iget v3, p0, Lcom/samsung/sesl/compose/component/ProgressIndicatorKt$SeslIndeterminateCircularProgressIndicator$2$1;->$dotRadius:F

    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/SizeKt;->getCenter-uvyYCjk(J)J

    move-result-wide v4

    iget-object v0, p0, Lcom/samsung/sesl/compose/component/ProgressIndicatorKt$SeslIndeterminateCircularProgressIndicator$2$1;->$distancePx$delegate:Landroidx/compose/runtime/State;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-static {v0, v9}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v4

    const/4 v7, 0x0

    const/16 v8, 0x78

    const/4 v6, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v8}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawCircle-VaOC9Bg$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFJFLandroidx/compose/ui/graphics/drawscope/Stroke;I)V

    iget-wide v1, p0, Lcom/samsung/sesl/compose/component/ProgressIndicatorKt$SeslIndeterminateCircularProgressIndicator$2$1;->$color:J

    iget v3, p0, Lcom/samsung/sesl/compose/component/ProgressIndicatorKt$SeslIndeterminateCircularProgressIndicator$2$1;->$dotRadius:F

    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/SizeKt;->getCenter-uvyYCjk(J)J

    move-result-wide v4

    iget-object p0, p0, Lcom/samsung/sesl/compose/component/ProgressIndicatorKt$SeslIndeterminateCircularProgressIndicator$2$1;->$distancePx$delegate:Landroidx/compose/runtime/State;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    neg-float p0, p0

    invoke-static {p0, v9}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v4

    const/4 v7, 0x0

    const/16 v8, 0x78

    const/4 v6, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v8}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawCircle-VaOC9Bg$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFJFLandroidx/compose/ui/graphics/drawscope/Stroke;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
