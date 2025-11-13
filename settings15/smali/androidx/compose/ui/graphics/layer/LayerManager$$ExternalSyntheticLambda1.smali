.class public final synthetic Landroidx/compose/ui/graphics/layer/LayerManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic f$0:Landroidx/compose/ui/graphics/layer/LayerManager;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/graphics/layer/LayerManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/graphics/layer/LayerManager$$ExternalSyntheticLambda1;->f$0:Landroidx/compose/ui/graphics/layer/LayerManager;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/LayerManager$$ExternalSyntheticLambda1;->f$0:Landroidx/compose/ui/graphics/layer/LayerManager;

    iget-object p1, p0, Landroidx/compose/ui/graphics/layer/LayerManager;->layerSet:Landroidx/collection/MutableScatterSet;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/graphics/layer/LayerManager;->persistLayers(Landroidx/collection/ScatterSet;)V

    const/4 p0, 0x1

    return p0
.end method
