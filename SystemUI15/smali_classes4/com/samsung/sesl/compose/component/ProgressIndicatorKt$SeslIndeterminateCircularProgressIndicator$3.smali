.class final Lcom/samsung/sesl/compose/component/ProgressIndicatorKt$SeslIndeterminateCircularProgressIndicator$3;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic $$changed:I

.field final synthetic $$default:I

.field final synthetic $boxSize:F

.field final synthetic $color:J

.field final synthetic $distance:F

.field final synthetic $distanceOffset:F

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $pointColor:J

.field final synthetic $radius:F


# direct methods
.method public constructor <init>(Landroidx/compose/ui/Modifier;JJFFFFII)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/sesl/compose/component/ProgressIndicatorKt$SeslIndeterminateCircularProgressIndicator$3;->$modifier:Landroidx/compose/ui/Modifier;

    iput-wide p2, p0, Lcom/samsung/sesl/compose/component/ProgressIndicatorKt$SeslIndeterminateCircularProgressIndicator$3;->$color:J

    iput-wide p4, p0, Lcom/samsung/sesl/compose/component/ProgressIndicatorKt$SeslIndeterminateCircularProgressIndicator$3;->$pointColor:J

    iput p6, p0, Lcom/samsung/sesl/compose/component/ProgressIndicatorKt$SeslIndeterminateCircularProgressIndicator$3;->$boxSize:F

    iput p7, p0, Lcom/samsung/sesl/compose/component/ProgressIndicatorKt$SeslIndeterminateCircularProgressIndicator$3;->$radius:F

    iput p8, p0, Lcom/samsung/sesl/compose/component/ProgressIndicatorKt$SeslIndeterminateCircularProgressIndicator$3;->$distance:F

    iput p9, p0, Lcom/samsung/sesl/compose/component/ProgressIndicatorKt$SeslIndeterminateCircularProgressIndicator$3;->$distanceOffset:F

    iput p10, p0, Lcom/samsung/sesl/compose/component/ProgressIndicatorKt$SeslIndeterminateCircularProgressIndicator$3;->$$changed:I

    iput p11, p0, Lcom/samsung/sesl/compose/component/ProgressIndicatorKt$SeslIndeterminateCircularProgressIndicator$3;->$$default:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    move-object v9, p1

    check-cast v9, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget-object v0, p0, Lcom/samsung/sesl/compose/component/ProgressIndicatorKt$SeslIndeterminateCircularProgressIndicator$3;->$modifier:Landroidx/compose/ui/Modifier;

    iget-wide v1, p0, Lcom/samsung/sesl/compose/component/ProgressIndicatorKt$SeslIndeterminateCircularProgressIndicator$3;->$color:J

    iget-wide v3, p0, Lcom/samsung/sesl/compose/component/ProgressIndicatorKt$SeslIndeterminateCircularProgressIndicator$3;->$pointColor:J

    iget v5, p0, Lcom/samsung/sesl/compose/component/ProgressIndicatorKt$SeslIndeterminateCircularProgressIndicator$3;->$boxSize:F

    iget v6, p0, Lcom/samsung/sesl/compose/component/ProgressIndicatorKt$SeslIndeterminateCircularProgressIndicator$3;->$radius:F

    iget v7, p0, Lcom/samsung/sesl/compose/component/ProgressIndicatorKt$SeslIndeterminateCircularProgressIndicator$3;->$distance:F

    iget v8, p0, Lcom/samsung/sesl/compose/component/ProgressIndicatorKt$SeslIndeterminateCircularProgressIndicator$3;->$distanceOffset:F

    iget p1, p0, Lcom/samsung/sesl/compose/component/ProgressIndicatorKt$SeslIndeterminateCircularProgressIndicator$3;->$$changed:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v10

    iget v11, p0, Lcom/samsung/sesl/compose/component/ProgressIndicatorKt$SeslIndeterminateCircularProgressIndicator$3;->$$default:I

    invoke-static/range {v0 .. v11}, Lcom/samsung/sesl/compose/component/ProgressIndicatorKt;->SeslIndeterminateCircularProgressIndicator-5cZf5Bw(Landroidx/compose/ui/Modifier;JJFFFFLandroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
