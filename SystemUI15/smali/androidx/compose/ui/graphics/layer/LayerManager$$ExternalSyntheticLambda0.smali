.class public final synthetic Landroidx/compose/ui/graphics/layer/LayerManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic f$0:Landroidx/compose/ui/graphics/layer/LayerManager;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/graphics/layer/LayerManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/graphics/layer/LayerManager$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/ui/graphics/layer/LayerManager;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/LayerManager$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/ui/graphics/layer/LayerManager;

    iget-object p1, p0, Landroidx/compose/ui/graphics/layer/LayerManager;->layerSet:Landroidx/collection/MutableScatterSet;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/graphics/layer/LayerManager;->persistLayers(Landroidx/collection/ScatterSet;)V

    const/4 p0, 0x1

    return p0
.end method
