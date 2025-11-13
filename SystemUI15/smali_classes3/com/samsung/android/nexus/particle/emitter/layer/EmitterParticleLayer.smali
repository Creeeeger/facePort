.class public final Lcom/samsung/android/nexus/particle/emitter/layer/EmitterParticleLayer;
.super Lcom/samsung/android/nexus/particle/BaseParticleLayer;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mWorld:Lcom/samsung/android/nexus/particle/emitter/World;


# direct methods
.method public constructor <init>(Lcom/samsung/android/nexus/base/layer/LayerContainer;Lcom/samsung/android/nexus/base/layer/NexusLayerParams;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/samsung/android/nexus/particle/BaseParticleLayer;-><init>(Lcom/samsung/android/nexus/base/layer/NexusLayerParams;)V

    new-instance v0, Lcom/samsung/android/nexus/particle/emitter/World;

    invoke-direct {v0, p1}, Lcom/samsung/android/nexus/particle/emitter/World;-><init>(Lcom/samsung/android/nexus/base/layer/LayerContainer;)V

    iput-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/layer/EmitterParticleLayer;->mWorld:Lcom/samsung/android/nexus/particle/emitter/World;

    iget p0, p2, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->mWidth:I

    int-to-float p0, p0

    iget p1, p2, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->mHeight:I

    int-to-float p1, p1

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/nexus/particle/emitter/World;->setSize(FF)V

    invoke-virtual {v0}, Lcom/samsung/android/nexus/particle/emitter/World;->start()V

    invoke-virtual {v0}, Lcom/samsung/android/nexus/particle/emitter/World;->resume()V

    return-void
.end method


# virtual methods
.method public final drawOnCanvas(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object p0, p0, Lcom/samsung/android/nexus/particle/emitter/layer/EmitterParticleLayer;->mWorld:Lcom/samsung/android/nexus/particle/emitter/World;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/nexus/particle/emitter/World;->step(J)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/particle/emitter/World;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 9

    iget-object p0, p0, Lcom/samsung/android/nexus/particle/emitter/layer/EmitterParticleLayer;->mWorld:Lcom/samsung/android/nexus/particle/emitter/World;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "World"

    const-string/jumbo v1, "stop: "

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/nexus/particle/emitter/World;->mIsRunning:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/nexus/particle/emitter/World;->mTotalPausedTime:J

    iput-wide v1, p0, Lcom/samsung/android/nexus/particle/emitter/World;->mPausedTime:J

    iget-object v3, p0, Lcom/samsung/android/nexus/particle/emitter/World;->mWorldParticleLinkedList:Lcom/samsung/android/nexus/particle/emitter/World$WorldParticleLinkedList;

    iget v4, v3, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->size:I

    const/4 v5, 0x0

    if-gtz v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v6, v3, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->head:Lcom/samsung/android/nexus/particle/emitter/Particle;

    move v7, v0

    :goto_0
    if-ge v7, v4, :cond_2

    iput-boolean v0, v6, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEnable:Z

    iput-wide v1, v6, Lcom/samsung/android/nexus/particle/emitter/Particle;->mStartTime:J

    iput-wide v1, v6, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEndTime:J

    iget-object v8, v6, Lcom/samsung/android/nexus/particle/emitter/Particle;->mEmitterSchedules:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    iget-object v8, v6, Lcom/samsung/android/nexus/particle/emitter/Particle;->mParticleTexture:Lcom/samsung/android/nexus/particle/emitter/texture/ParticleTexture;

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Lcom/samsung/android/nexus/particle/emitter/texture/ParticleTexture;->onRelease()V

    iput-object v5, v6, Lcom/samsung/android/nexus/particle/emitter/Particle;->mParticleTexture:Lcom/samsung/android/nexus/particle/emitter/texture/ParticleTexture;

    :cond_1
    invoke-virtual {v6}, Lcom/samsung/android/nexus/particle/emitter/Particle;->release()V

    iget-object v6, v6, Lcom/samsung/android/nexus/particle/emitter/Particle;->next:Lcom/samsung/android/nexus/particle/emitter/Particle;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/samsung/android/nexus/particle/emitter/Particle;->sPool:Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedListPool;

    invoke-virtual {v1, v3}, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->put(Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;)V

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/World;->mRootEmitter:Lcom/samsung/android/nexus/particle/emitter/Emitter;

    invoke-virtual {v1}, Lcom/samsung/android/nexus/particle/emitter/Emitter;->destroy()V

    iget-object p0, p0, Lcom/samsung/android/nexus/particle/emitter/World;->mRootParticle:Lcom/samsung/android/nexus/particle/emitter/Particle;

    invoke-virtual {p0}, Lcom/samsung/android/nexus/particle/emitter/Particle;->release()V

    sget-object p0, Lcom/samsung/android/nexus/particle/emitter/Particle;->sPool:Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedListPool;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "Particle"

    const-string v2, "clear: "

    invoke-static {v1, v2}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->head:Lcom/samsung/android/nexus/particle/emitter/Particle;

    :goto_2
    if-eqz v1, :cond_3

    iget-object v2, v1, Lcom/samsung/android/nexus/particle/emitter/Particle;->next:Lcom/samsung/android/nexus/particle/emitter/Particle;

    invoke-virtual {v1}, Lcom/samsung/android/nexus/particle/emitter/Particle;->release()V

    iput-object v5, v1, Lcom/samsung/android/nexus/particle/emitter/Particle;->next:Lcom/samsung/android/nexus/particle/emitter/Particle;

    move-object v1, v2

    goto :goto_2

    :cond_3
    iput-object v5, p0, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->head:Lcom/samsung/android/nexus/particle/emitter/Particle;

    iput-object v5, p0, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->tail:Lcom/samsung/android/nexus/particle/emitter/Particle;

    iput v0, p0, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->size:I

    iput v0, p0, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedListPool;->createSize:I

    sget-object p0, Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache;->sLruCache:Landroid/util/LruCache;

    invoke-virtual {p0}, Landroid/util/LruCache;->evictAll()V

    return-void
.end method

.method public final onLayerParamsChanged(Lcom/samsung/android/nexus/base/layer/NexusLayerParams;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/nexus/particle/BaseParticleLayer;->mNeedToInit:Z

    iget-object p0, p0, Lcom/samsung/android/nexus/particle/emitter/layer/EmitterParticleLayer;->mWorld:Lcom/samsung/android/nexus/particle/emitter/World;

    if-eqz p0, :cond_0

    iget v0, p1, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->mWidth:I

    int-to-float v0, v0

    iget p1, p1, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->mHeight:I

    int-to-float p1, p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/nexus/particle/emitter/World;->setSize(FF)V

    invoke-virtual {p0}, Lcom/samsung/android/nexus/particle/emitter/World;->start()V

    invoke-virtual {p0}, Lcom/samsung/android/nexus/particle/emitter/World;->resume()V

    :cond_0
    return-void
.end method

.method public final onVisibilityChanged(Ljava/lang/Boolean;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p0, p0, Lcom/samsung/android/nexus/particle/emitter/layer/EmitterParticleLayer;->mWorld:Lcom/samsung/android/nexus/particle/emitter/World;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/nexus/particle/emitter/World;->resume()V

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/samsung/android/nexus/particle/emitter/World;->mIsPaused:Z

    if-nez p1, :cond_1

    const-string p1, "World"

    const-string v0, "pause: "

    invoke-static {p1, v0}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/nexus/particle/emitter/World;->mIsPaused:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/nexus/particle/emitter/World;->mPausedTime:J

    :cond_1
    :goto_0
    return-void
.end method

.method public final prepareToDraw()V
    .locals 0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    return-void
.end method
