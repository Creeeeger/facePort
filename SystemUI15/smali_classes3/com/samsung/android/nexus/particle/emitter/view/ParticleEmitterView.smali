.class public Lcom/samsung/android/nexus/particle/emitter/view/ParticleEmitterView;
.super Landroid/view/ViewGroup;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mCustomInvalidator:Ljava/lang/Object;

.field public mEmitterParticleLayer:Lcom/samsung/android/nexus/particle/emitter/layer/EmitterParticleLayer;

.field public mLayerContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/nexus/particle/emitter/view/ParticleEmitterView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/nexus/particle/emitter/view/ParticleEmitterView;->mCustomInvalidator:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/nexus/particle/emitter/view/ParticleEmitterView;->mCustomInvalidator:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/nexus/particle/emitter/view/ParticleEmitterView;->mCustomInvalidator:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/nexus/particle/emitter/view/ParticleEmitterView;->mCustomInvalidator:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/nexus/particle/emitter/view/ParticleEmitterView;->mCustomInvalidator:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object p0, p0, Lcom/samsung/android/nexus/particle/emitter/view/ParticleEmitterView;->mLayerContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->onDestroy()V

    :cond_0
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/particle/emitter/view/ParticleEmitterView;->mLayerContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    invoke-virtual {p0, p4, p5}, Lcom/samsung/android/nexus/particle/emitter/view/ParticleEmitterView;->setEffectLayerSize(II)V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p2

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/nexus/particle/emitter/view/ParticleEmitterView;->setEffectLayerSize(II)V

    :cond_0
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/nexus/particle/emitter/view/ParticleEmitterView;->mLayerContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v4, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v5, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    const/4 v3, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->tapCommand(IIIJ)V

    goto :goto_0

    :cond_1
    iget-object v8, p0, Lcom/samsung/android/nexus/particle/emitter/view/ParticleEmitterView;->mLayerContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v10, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v11, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v12

    const/4 v9, 0x2

    invoke-virtual/range {v8 .. v13}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->tapCommand(IIIJ)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/view/ParticleEmitterView;->mLayerContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v2, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v3, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    const/4 v1, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->tapCommand(IIIJ)V

    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onVisibilityChanged(Landroid/view/View;I)V

    iget-object p0, p0, Lcom/samsung/android/nexus/particle/emitter/view/ParticleEmitterView;->mLayerContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    if-eqz p0, :cond_1

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setVisibility() : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "LayerContainer"

    invoke-static {v0, p2}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->onVisibilityChanged(Ljava/lang/Boolean;)V

    :cond_1
    return-void
.end method

.method public final onWindowVisibilityChanged(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowVisibilityChanged(I)V

    iget-object p0, p0, Lcom/samsung/android/nexus/particle/emitter/view/ParticleEmitterView;->mLayerContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setVisibility() : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LayerContainer"

    invoke-static {v1, v0}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->onVisibilityChanged(Ljava/lang/Boolean;)V

    :cond_1
    return-void
.end method

.method public final setEffectLayerSize(II)V
    .locals 4

    new-instance v0, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;-><init>(II)V

    iget-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/view/ParticleEmitterView;->mEmitterParticleLayer:Lcom/samsung/android/nexus/particle/emitter/layer/EmitterParticleLayer;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/view/ParticleEmitterView;->mCustomInvalidator:Ljava/lang/Object;

    if-nez v1, :cond_0

    move-object v1, p0

    :cond_0
    new-instance v2, Lcom/samsung/android/nexus/base/layer/LayerContainer;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/samsung/android/nexus/base/layer/LayerContainer;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/samsung/android/nexus/particle/emitter/view/ParticleEmitterView;->mLayerContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    new-instance v1, Lcom/samsung/android/nexus/particle/emitter/layer/EmitterParticleLayer;

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/nexus/particle/emitter/layer/EmitterParticleLayer;-><init>(Lcom/samsung/android/nexus/base/layer/LayerContainer;Lcom/samsung/android/nexus/base/layer/NexusLayerParams;)V

    iput-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/view/ParticleEmitterView;->mEmitterParticleLayer:Lcom/samsung/android/nexus/particle/emitter/layer/EmitterParticleLayer;

    iget-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/view/ParticleEmitterView;->mLayerContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->addLayer(Lcom/samsung/android/nexus/base/layer/BaseLayer;)V

    iget-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/view/ParticleEmitterView;->mLayerContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->setRenderMode(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->getLayerParams()Lcom/samsung/android/nexus/base/layer/NexusLayerParams;

    move-result-object v1

    if-eqz v1, :cond_2

    iget v2, v1, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->mWidth:I

    if-ne v2, p1, :cond_2

    iget v1, v1, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->mHeight:I

    if-ne v1, p2, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/view/ParticleEmitterView;->mEmitterParticleLayer:Lcom/samsung/android/nexus/particle/emitter/layer/EmitterParticleLayer;

    invoke-virtual {v1, v0}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->setLayerParams(Lcom/samsung/android/nexus/base/layer/NexusLayerParams;)V

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/nexus/particle/emitter/view/ParticleEmitterView;->mLayerContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->getNexusContext()Lcom/samsung/android/nexus/base/context/NexusContext;

    move-result-object v0

    iput p1, v0, Lcom/samsung/android/nexus/base/context/NexusContext;->mWidth:I

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->getNexusContext()Lcom/samsung/android/nexus/base/context/NexusContext;

    move-result-object v0

    iput p2, v0, Lcom/samsung/android/nexus/base/context/NexusContext;->mHeight:I

    iget-boolean v0, p0, Lcom/samsung/android/nexus/base/layer/LayerContainer;->mIsReadyToCreate:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->onCreate()V

    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->onSizeChanged(II)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/nexus/base/layer/LayerContainer;->mIsReadyToCreate:Z

    return-void
.end method
