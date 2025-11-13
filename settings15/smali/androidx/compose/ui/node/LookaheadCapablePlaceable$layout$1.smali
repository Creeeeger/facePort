.class public final Landroidx/compose/ui/node/LookaheadCapablePlaceable$layout$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/compose/ui/layout/MeasureResult;


# instance fields
.field public final synthetic $alignmentLines:Ljava/util/Map;

.field public final synthetic $height:I

.field public final synthetic $placementBlock:Lkotlin/jvm/functions/Function1;

.field public final synthetic $rulers:Lkotlin/jvm/functions/Function1;

.field public final synthetic $width:I

.field public final synthetic this$0:Landroidx/compose/ui/node/LookaheadCapablePlaceable;


# direct methods
.method public constructor <init>(IILjava/util/Map;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/node/LookaheadCapablePlaceable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable$layout$1;->$width:I

    iput p2, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable$layout$1;->$height:I

    iput-object p3, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable$layout$1;->$alignmentLines:Ljava/util/Map;

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable$layout$1;->$rulers:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable$layout$1;->$placementBlock:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable$layout$1;->this$0:Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    return-void
.end method


# virtual methods
.method public final getAlignmentLines()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable$layout$1;->$alignmentLines:Ljava/util/Map;

    return-object p0
.end method

.method public final getHeight()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable$layout$1;->$height:I

    return p0
.end method

.method public final getRulers()Lkotlin/jvm/functions/Function1;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable$layout$1;->$rulers:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final getWidth()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable$layout$1;->$width:I

    return p0
.end method

.method public final placeChildren()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable$layout$1;->this$0:Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    iget-object v0, v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->placementScope:Landroidx/compose/ui/layout/LookaheadCapablePlacementScope;

    iget-object p0, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable$layout$1;->$placementBlock:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
