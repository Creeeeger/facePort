.class public final Landroidx/compose/ui/draw/ScopedGraphicsContext;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/compose/ui/graphics/GraphicsContext;


# instance fields
.field public allocatedGraphicsLayers:Landroidx/collection/MutableObjectList;

.field public graphicsContext:Landroidx/compose/ui/graphics/GraphicsContext;


# virtual methods
.method public final createGraphicsLayer()Landroidx/compose/ui/graphics/layer/GraphicsLayer;
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/draw/ScopedGraphicsContext;->graphicsContext:Landroidx/compose/ui/graphics/GraphicsContext;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/compose/ui/graphics/GraphicsContext;->createGraphicsLayer()Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/ui/draw/ScopedGraphicsContext;->allocatedGraphicsLayers:Landroidx/collection/MutableObjectList;

    if-nez v1, :cond_0

    new-instance v1, Landroidx/collection/MutableObjectList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroidx/collection/MutableObjectList;-><init>(I)V

    invoke-virtual {v1, v0}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)V

    iput-object v1, p0, Landroidx/compose/ui/draw/ScopedGraphicsContext;->allocatedGraphicsLayers:Landroidx/collection/MutableObjectList;

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_1
    const-string p0, "GraphicsContext not provided"

    invoke-static {p0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final releaseGraphicsLayer(Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/draw/ScopedGraphicsContext;->graphicsContext:Landroidx/compose/ui/graphics/GraphicsContext;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroidx/compose/ui/graphics/GraphicsContext;->releaseGraphicsLayer(Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    :cond_0
    return-void
.end method

.method public final releaseGraphicsLayers()V
    .locals 6

    iget-object v0, p0, Landroidx/compose/ui/draw/ScopedGraphicsContext;->allocatedGraphicsLayers:Landroidx/collection/MutableObjectList;

    if-eqz v0, :cond_1

    iget-object v1, v0, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    iget v2, v0, Landroidx/collection/ObjectList;->_size:I

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    check-cast v5, Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    invoke-virtual {p0, v5}, Landroidx/compose/ui/draw/ScopedGraphicsContext;->releaseGraphicsLayer(Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, v0, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    iget v1, v0, Landroidx/collection/ObjectList;->_size:I

    const/4 v2, 0x0

    invoke-static {v3, v1, v2, p0}, Lkotlin/collections/ArraysKt___ArraysKt;->fill(IILjava/lang/Object;[Ljava/lang/Object;)V

    iput v3, v0, Landroidx/collection/ObjectList;->_size:I

    :cond_1
    return-void
.end method
