.class public final Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedListPool;
.super Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public createSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedListPool;->createSize:I

    return-void
.end method


# virtual methods
.method public final retain(I)Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;
    .locals 9

    new-instance v6, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;

    invoke-direct {v6}, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;-><init>()V

    iget v0, p0, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->size:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v7

    const/4 v8, 0x1

    if-lez v7, :cond_1

    iget-object v3, p0, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->head:Lcom/samsung/android/nexus/particle/emitter/Particle;

    move-object v4, v3

    move v0, v8

    :goto_0
    if-ge v0, v7, :cond_0

    iget-object v4, v4, Lcom/samsung/android/nexus/particle/emitter/Particle;->next:Lcom/samsung/android/nexus/particle/emitter/Particle;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    move-object v0, v6

    move-object v1, p0

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->transferFrom(Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;Lcom/samsung/android/nexus/particle/emitter/Particle;Lcom/samsung/android/nexus/particle/emitter/Particle;Lcom/samsung/android/nexus/particle/emitter/Particle;I)V

    sub-int v0, p1, v7

    goto :goto_1

    :cond_1
    move v0, p1

    :goto_1
    if-lez v0, :cond_5

    iget v1, p0, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedListPool;->createSize:I

    add-int v2, v1, v0

    const/16 v3, 0x4e20

    if-gt v3, v2, :cond_2

    sub-int/2addr v3, v1

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_2
    if-nez v0, :cond_3

    return-object v6

    :cond_3
    new-instance p1, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;

    invoke-direct {p1}, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;-><init>()V

    new-instance v1, Lcom/samsung/android/nexus/particle/emitter/Particle;

    invoke-direct {v1}, Lcom/samsung/android/nexus/particle/emitter/Particle;-><init>()V

    move-object v2, v1

    :goto_2
    if-ge v8, v0, :cond_4

    new-instance v3, Lcom/samsung/android/nexus/particle/emitter/Particle;

    invoke-direct {v3}, Lcom/samsung/android/nexus/particle/emitter/Particle;-><init>()V

    iput-object v3, v2, Lcom/samsung/android/nexus/particle/emitter/Particle;->next:Lcom/samsung/android/nexus/particle/emitter/Particle;

    add-int/lit8 v8, v8, 0x1

    move-object v2, v3

    goto :goto_2

    :cond_4
    iput-object v1, p1, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->head:Lcom/samsung/android/nexus/particle/emitter/Particle;

    iput-object v2, p1, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->tail:Lcom/samsung/android/nexus/particle/emitter/Particle;

    iput v0, p1, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->size:I

    iget v1, p0, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedListPool;->createSize:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedListPool;->createSize:I

    invoke-virtual {v6, p1}, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->put(Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;)V

    :cond_5
    return-object v6
.end method
