.class final Lcom/android/compose/grid/GridsKt$Grid$2$5;
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
.field final synthetic $cells:I

.field final synthetic $columns:I

.field final synthetic $horizontalSpacing:F

.field final synthetic $placeables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $rows:I

.field final synthetic $this_Layout:Landroidx/compose/ui/layout/MeasureScope;

.field final synthetic $verticalSpacing:F


# direct methods
.method public constructor <init>(IILandroidx/compose/ui/layout/MeasureScope;FILjava/util/List;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroidx/compose/ui/layout/MeasureScope;",
            "FI",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;F)V"
        }
    .end annotation

    iput p1, p0, Lcom/android/compose/grid/GridsKt$Grid$2$5;->$rows:I

    iput p2, p0, Lcom/android/compose/grid/GridsKt$Grid$2$5;->$columns:I

    iput-object p3, p0, Lcom/android/compose/grid/GridsKt$Grid$2$5;->$this_Layout:Landroidx/compose/ui/layout/MeasureScope;

    iput p4, p0, Lcom/android/compose/grid/GridsKt$Grid$2$5;->$verticalSpacing:F

    iput p5, p0, Lcom/android/compose/grid/GridsKt$Grid$2$5;->$cells:I

    iput-object p6, p0, Lcom/android/compose/grid/GridsKt$Grid$2$5;->$placeables:Ljava/util/List;

    iput p7, p0, Lcom/android/compose/grid/GridsKt$Grid$2$5;->$horizontalSpacing:F

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget v2, v0, Lcom/android/compose/grid/GridsKt$Grid$2$5;->$rows:I

    iget v3, v0, Lcom/android/compose/grid/GridsKt$Grid$2$5;->$columns:I

    iget-object v4, v0, Lcom/android/compose/grid/GridsKt$Grid$2$5;->$this_Layout:Landroidx/compose/ui/layout/MeasureScope;

    iget v5, v0, Lcom/android/compose/grid/GridsKt$Grid$2$5;->$verticalSpacing:F

    iget v6, v0, Lcom/android/compose/grid/GridsKt$Grid$2$5;->$cells:I

    iget-object v7, v0, Lcom/android/compose/grid/GridsKt$Grid$2$5;->$placeables:Ljava/util/List;

    iget v0, v0, Lcom/android/compose/grid/GridsKt$Grid$2$5;->$horizontalSpacing:F

    const/4 v8, 0x0

    move v9, v8

    move v10, v9

    :goto_0
    if-ge v9, v2, :cond_2

    move v11, v8

    move v12, v11

    move v13, v12

    :goto_1
    if-ge v11, v3, :cond_1

    mul-int v14, v9, v3

    add-int/2addr v14, v11

    if-ge v14, v6, :cond_0

    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/compose/ui/layout/Placeable;

    invoke-static {v1, v14, v13, v10}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    iget v15, v14, Landroidx/compose/ui/layout/Placeable;->width:I

    invoke-interface {v4, v0}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v16

    add-int v16, v16, v15

    add-int v13, v16, v13

    iget v14, v14, Landroidx/compose/ui/layout/Placeable;->height:I

    invoke-static {v12, v14}, Ljava/lang/Math;->max(II)I

    move-result v12

    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {v4, v5}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v11

    add-int/2addr v11, v12

    add-int/2addr v10, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
