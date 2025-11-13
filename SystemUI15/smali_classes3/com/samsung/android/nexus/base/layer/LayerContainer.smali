.class public final Lcom/samsung/android/nexus/base/layer/LayerContainer;
.super Lcom/samsung/android/nexus/base/layer/BaseLayer;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mEffectLayer:Ljava/util/List;

.field public mIsReadyToCreate:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/nexus/base/layer/BaseLayer;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/nexus/base/layer/LayerContainer;->mEffectLayer:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/nexus/base/layer/LayerContainer;->mIsReadyToCreate:Z

    const-string v0, "LayerContainer"

    const-string v1, "LayerContainer() : create LayerContainer"

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/nexus/base/context/NexusContext;

    invoke-direct {v0, p1}, Lcom/samsung/android/nexus/base/context/NexusContext;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->setNexusContext(Lcom/samsung/android/nexus/base/context/NexusContext;)V

    new-instance p1, Lcom/samsung/android/nexus/base/DrawRequester;

    invoke-direct {p1, p2}, Lcom/samsung/android/nexus/base/DrawRequester;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->getNexusContext()Lcom/samsung/android/nexus/base/context/NexusContext;

    move-result-object p0

    iget-object p0, p0, Lcom/samsung/android/nexus/base/context/NexusContext;->mAnimatorCore:Lcom/samsung/android/nexus/base/animator/AnimatorCore;

    iput-object p1, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mDrawRequester:Lcom/samsung/android/nexus/base/DrawRequester;

    return-void
.end method


# virtual methods
.method public final addLayer(Lcom/samsung/android/nexus/base/layer/BaseLayer;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->getNexusContext()Lcom/samsung/android/nexus/base/context/NexusContext;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->setNexusContext(Lcom/samsung/android/nexus/base/context/NexusContext;)V

    iget-boolean v0, p0, Lcom/samsung/android/nexus/base/layer/LayerContainer;->mIsReadyToCreate:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->onCreate()V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/nexus/base/layer/LayerContainer;->mEffectLayer:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final draw()V
    .locals 2

    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v0, v0, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->onDraw()V

    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final onCreate()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/nexus/base/layer/LayerContainer;->mEffectLayer:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/nexus/base/layer/BaseLayer;

    invoke-virtual {v0}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->onCreate()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    const-string v0, "LayerContainer"

    const-string v1, "destroy()"

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/nexus/base/layer/LayerContainer;->mEffectLayer:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/nexus/base/layer/BaseLayer;

    invoke-virtual {v0}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->onDestroy()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onDraw()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/nexus/base/layer/LayerContainer;->mEffectLayer:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/nexus/base/layer/BaseLayer;

    invoke-virtual {v0}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->onDraw()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/nexus/base/layer/LayerContainer;->mEffectLayer:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/nexus/base/layer/BaseLayer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onLayerParamsChanged(Lcom/samsung/android/nexus/base/layer/NexusLayerParams;)V
    .locals 0

    return-void
.end method

.method public final onSizeChanged(II)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/nexus/base/layer/LayerContainer;->mEffectLayer:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/nexus/base/layer/BaseLayer;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->onSizeChanged(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onTapEvent(IIJ)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/nexus/base/layer/LayerContainer;->mEffectLayer:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/nexus/base/layer/BaseLayer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->onTapEvent(IIJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onTouchCancelEvent(IIJ)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/nexus/base/layer/LayerContainer;->mEffectLayer:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/nexus/base/layer/BaseLayer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->onTouchCancelEvent(IIJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onTouchEvent(IIJ)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/nexus/base/layer/LayerContainer;->mEffectLayer:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/nexus/base/layer/BaseLayer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->onTouchEvent(IIJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onVisibilityChanged(Ljava/lang/Boolean;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/nexus/base/layer/LayerContainer;->mEffectLayer:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/nexus/base/layer/BaseLayer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->onVisibilityChanged(Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final removeAllLayers()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->setRenderMode(I)V

    iget-object v0, p0, Lcom/samsung/android/nexus/base/layer/LayerContainer;->mEffectLayer:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/nexus/base/layer/BaseLayer;

    invoke-virtual {v1}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->onDestroy()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/nexus/base/layer/LayerContainer;->mEffectLayer:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final setRenderMode(I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setRenderMode() : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "LayerContainer"

    invoke-static {v2, v0}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->getNexusContext()Lcom/samsung/android/nexus/base/context/NexusContext;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "NexusContext"

    invoke-static {v2, v0}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/nexus/base/context/NexusContext;->mAnimatorCore:Lcom/samsung/android/nexus/base/animator/AnimatorCore;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AnimatorCore"

    invoke-static {v1, v0}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mRenderMode:I

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->startAnimator()V

    return-void
.end method

.method public final tapCommand(IIIJ)V
    .locals 2

    const-string/jumbo v0, "topCommand() : "

    const-string v1, " , "

    invoke-static {p1, p2, v0, v1, v1}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LayerContainer"

    invoke-static {v1, v0}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->onTapEvent(IIJ)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->onTouchCancelEvent(IIJ)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->onTouchEvent(IIJ)V

    :goto_0
    return-void
.end method
