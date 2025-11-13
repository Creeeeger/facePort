.class final Landroidx/compose/ui/node/NodeCoordinator$drawBlock$1$1;
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
.field final synthetic $canvas:Landroidx/compose/ui/graphics/Canvas;

.field final synthetic $parentLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

.field final synthetic this$0:Landroidx/compose/ui/node/NodeCoordinator;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/node/NodeCoordinator$drawBlock$1$1;->this$0:Landroidx/compose/ui/node/NodeCoordinator;

    iput-object p2, p0, Landroidx/compose/ui/node/NodeCoordinator$drawBlock$1$1;->$canvas:Landroidx/compose/ui/graphics/Canvas;

    iput-object p3, p0, Landroidx/compose/ui/node/NodeCoordinator$drawBlock$1$1;->$parentLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator$drawBlock$1$1;->this$0:Landroidx/compose/ui/node/NodeCoordinator;

    iget-object v1, p0, Landroidx/compose/ui/node/NodeCoordinator$drawBlock$1$1;->$canvas:Landroidx/compose/ui/graphics/Canvas;

    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator$drawBlock$1$1;->$parentLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    sget-object v2, Landroidx/compose/ui/node/NodeCoordinator;->Companion:Landroidx/compose/ui/node/NodeCoordinator$Companion;

    invoke-virtual {v0, v1, p0}, Landroidx/compose/ui/node/NodeCoordinator;->drawContainedDrawModifiers(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
