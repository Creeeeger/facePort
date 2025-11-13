.class final Landroidx/compose/foundation/layout/PaddingNode$measure$1;
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
.field final synthetic $placeable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $this_measure:Landroidx/compose/ui/layout/MeasureScope;

.field final synthetic this$0:Landroidx/compose/foundation/layout/PaddingNode;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/layout/PaddingNode;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/MeasureScope;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/layout/PaddingNode$measure$1;->this$0:Landroidx/compose/foundation/layout/PaddingNode;

    iput-object p2, p0, Landroidx/compose/foundation/layout/PaddingNode$measure$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    iput-object p3, p0, Landroidx/compose/foundation/layout/PaddingNode$measure$1;->$this_measure:Landroidx/compose/ui/layout/MeasureScope;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object v0, p0, Landroidx/compose/foundation/layout/PaddingNode$measure$1;->this$0:Landroidx/compose/foundation/layout/PaddingNode;

    iget-boolean v1, v0, Landroidx/compose/foundation/layout/PaddingNode;->rtlAware:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/compose/foundation/layout/PaddingNode$measure$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    iget-object v2, p0, Landroidx/compose/foundation/layout/PaddingNode$measure$1;->$this_measure:Landroidx/compose/ui/layout/MeasureScope;

    iget v0, v0, Landroidx/compose/foundation/layout/PaddingNode;->start:F

    invoke-interface {v2, v0}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v0

    iget-object v2, p0, Landroidx/compose/foundation/layout/PaddingNode$measure$1;->$this_measure:Landroidx/compose/ui/layout/MeasureScope;

    iget-object p0, p0, Landroidx/compose/foundation/layout/PaddingNode$measure$1;->this$0:Landroidx/compose/foundation/layout/PaddingNode;

    iget p0, p0, Landroidx/compose/foundation/layout/PaddingNode;->top:F

    invoke-interface {v2, p0}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result p0

    invoke-static {p1, v1, v0, p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/compose/foundation/layout/PaddingNode$measure$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    iget-object v2, p0, Landroidx/compose/foundation/layout/PaddingNode$measure$1;->$this_measure:Landroidx/compose/ui/layout/MeasureScope;

    iget v0, v0, Landroidx/compose/foundation/layout/PaddingNode;->start:F

    invoke-interface {v2, v0}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v0

    iget-object v2, p0, Landroidx/compose/foundation/layout/PaddingNode$measure$1;->$this_measure:Landroidx/compose/ui/layout/MeasureScope;

    iget-object p0, p0, Landroidx/compose/foundation/layout/PaddingNode$measure$1;->this$0:Landroidx/compose/foundation/layout/PaddingNode;

    iget p0, p0, Landroidx/compose/foundation/layout/PaddingNode;->top:F

    invoke-interface {v2, p0}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result p0

    invoke-static {p1, v1, v0, p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
