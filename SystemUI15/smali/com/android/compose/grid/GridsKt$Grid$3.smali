.class final Lcom/android/compose/grid/GridsKt$Grid$3;
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

.field final synthetic $content:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation
.end field

.field final synthetic $horizontalSpacing:F

.field final synthetic $isVertical:Z

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $primarySpaces:I

.field final synthetic $verticalSpacing:F


# direct methods
.method public constructor <init>(IZLandroidx/compose/ui/Modifier;FFLkotlin/jvm/functions/Function2;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Landroidx/compose/ui/Modifier;",
            "FF",
            "Lkotlin/jvm/functions/Function2;",
            "II)V"
        }
    .end annotation

    iput p1, p0, Lcom/android/compose/grid/GridsKt$Grid$3;->$primarySpaces:I

    iput-boolean p2, p0, Lcom/android/compose/grid/GridsKt$Grid$3;->$isVertical:Z

    iput-object p3, p0, Lcom/android/compose/grid/GridsKt$Grid$3;->$modifier:Landroidx/compose/ui/Modifier;

    iput p4, p0, Lcom/android/compose/grid/GridsKt$Grid$3;->$verticalSpacing:F

    iput p5, p0, Lcom/android/compose/grid/GridsKt$Grid$3;->$horizontalSpacing:F

    iput-object p6, p0, Lcom/android/compose/grid/GridsKt$Grid$3;->$content:Lkotlin/jvm/functions/Function2;

    iput p7, p0, Lcom/android/compose/grid/GridsKt$Grid$3;->$$changed:I

    iput p8, p0, Lcom/android/compose/grid/GridsKt$Grid$3;->$$default:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget v0, p0, Lcom/android/compose/grid/GridsKt$Grid$3;->$primarySpaces:I

    iget-boolean v1, p0, Lcom/android/compose/grid/GridsKt$Grid$3;->$isVertical:Z

    iget-object v2, p0, Lcom/android/compose/grid/GridsKt$Grid$3;->$modifier:Landroidx/compose/ui/Modifier;

    iget v3, p0, Lcom/android/compose/grid/GridsKt$Grid$3;->$verticalSpacing:F

    iget v4, p0, Lcom/android/compose/grid/GridsKt$Grid$3;->$horizontalSpacing:F

    iget-object v5, p0, Lcom/android/compose/grid/GridsKt$Grid$3;->$content:Lkotlin/jvm/functions/Function2;

    iget p1, p0, Lcom/android/compose/grid/GridsKt$Grid$3;->$$changed:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v7

    iget v8, p0, Lcom/android/compose/grid/GridsKt$Grid$3;->$$default:I

    invoke-static/range {v0 .. v8}, Lcom/android/compose/grid/GridsKt;->Grid-nSlTg7c(IZLandroidx/compose/ui/Modifier;FFLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
