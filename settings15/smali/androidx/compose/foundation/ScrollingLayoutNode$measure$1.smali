.class final Landroidx/compose/foundation/ScrollingLayoutNode$measure$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $placeable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $side:I

.field final synthetic this$0:Landroidx/compose/foundation/ScrollingLayoutNode;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/ScrollingLayoutNode;ILandroidx/compose/ui/layout/Placeable;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/ScrollingLayoutNode$measure$1;->this$0:Landroidx/compose/foundation/ScrollingLayoutNode;

    iput p2, p0, Landroidx/compose/foundation/ScrollingLayoutNode$measure$1;->$side:I

    iput-object p3, p0, Landroidx/compose/foundation/ScrollingLayoutNode$measure$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object v0, p0, Landroidx/compose/foundation/ScrollingLayoutNode$measure$1;->this$0:Landroidx/compose/foundation/ScrollingLayoutNode;

    iget-object v0, v0, Landroidx/compose/foundation/ScrollingLayoutNode;->scrollerState:Landroidx/compose/foundation/ScrollState;

    invoke-virtual {v0}, Landroidx/compose/foundation/ScrollState;->getValue()I

    move-result v0

    iget v1, p0, Landroidx/compose/foundation/ScrollingLayoutNode$measure$1;->$side:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v0

    iget-object v1, p0, Landroidx/compose/foundation/ScrollingLayoutNode$measure$1;->this$0:Landroidx/compose/foundation/ScrollingLayoutNode;

    iget-boolean v3, v1, Landroidx/compose/foundation/ScrollingLayoutNode;->isReversed:Z

    if-eqz v3, :cond_0

    iget v3, p0, Landroidx/compose/foundation/ScrollingLayoutNode$measure$1;->$side:I

    sub-int/2addr v0, v3

    goto :goto_0

    :cond_0
    neg-int v0, v0

    :goto_0
    iget-boolean v1, v1, Landroidx/compose/foundation/ScrollingLayoutNode;->isVertical:Z

    if-eqz v1, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    new-instance v1, Landroidx/compose/foundation/ScrollingLayoutNode$measure$1$1;

    iget-object p0, p0, Landroidx/compose/foundation/ScrollingLayoutNode$measure$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    invoke-direct {v1, v3, v0, p0}, Landroidx/compose/foundation/ScrollingLayoutNode$measure$1$1;-><init>(IILandroidx/compose/ui/layout/Placeable;)V

    const/4 p0, 0x1

    iput-boolean p0, p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;->currentFrameOfReferencePlacement:Z

    invoke-virtual {v1, p1}, Landroidx/compose/foundation/ScrollingLayoutNode$measure$1$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v2, p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;->currentFrameOfReferencePlacement:Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
