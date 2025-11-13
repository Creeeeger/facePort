.class final Landroidx/compose/foundation/BackgroundNode$getOutline$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $outline:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroidx/compose/ui/graphics/Outline;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $this_getOutline:Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;

.field final synthetic this$0:Landroidx/compose/foundation/BackgroundNode;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/compose/foundation/BackgroundNode;Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroidx/compose/ui/graphics/Outline;",
            ">;",
            "Landroidx/compose/foundation/BackgroundNode;",
            "Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/BackgroundNode$getOutline$1;->$outline:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Landroidx/compose/foundation/BackgroundNode$getOutline$1;->this$0:Landroidx/compose/foundation/BackgroundNode;

    iput-object p3, p0, Landroidx/compose/foundation/BackgroundNode$getOutline$1;->$this_getOutline:Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Landroidx/compose/foundation/BackgroundNode$getOutline$1;->$outline:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, p0, Landroidx/compose/foundation/BackgroundNode$getOutline$1;->this$0:Landroidx/compose/foundation/BackgroundNode;

    iget-object v1, v1, Landroidx/compose/foundation/BackgroundNode;->shape:Landroidx/compose/ui/graphics/Shape;

    iget-object v2, p0, Landroidx/compose/foundation/BackgroundNode$getOutline$1;->$this_getOutline:Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;

    check-cast v2, Landroidx/compose/ui/node/LayoutNodeDrawScope;

    iget-object v2, v2, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-interface {v2}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v2

    iget-object v4, p0, Landroidx/compose/foundation/BackgroundNode$getOutline$1;->$this_getOutline:Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;

    check-cast v4, Landroidx/compose/ui/node/LayoutNodeDrawScope;

    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v4

    iget-object p0, p0, Landroidx/compose/foundation/BackgroundNode$getOutline$1;->$this_getOutline:Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;

    invoke-interface {v1, v2, v3, v4, p0}, Landroidx/compose/ui/graphics/Shape;->createOutline-Pq9zytI(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)Landroidx/compose/ui/graphics/Outline;

    move-result-object p0

    iput-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
