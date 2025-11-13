.class public Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public head:Lcom/samsung/android/nexus/particle/emitter/Particle;

.field public size:I

.field public tail:Lcom/samsung/android/nexus/particle/emitter/Particle;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->head:Lcom/samsung/android/nexus/particle/emitter/Particle;

    iput-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->tail:Lcom/samsung/android/nexus/particle/emitter/Particle;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->size:I

    return-void
.end method


# virtual methods
.method public final put(Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;)V
    .locals 3

    iget v0, p1, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->size:I

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->head:Lcom/samsung/android/nexus/particle/emitter/Particle;

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->head:Lcom/samsung/android/nexus/particle/emitter/Particle;

    iput-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->head:Lcom/samsung/android/nexus/particle/emitter/Particle;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->tail:Lcom/samsung/android/nexus/particle/emitter/Particle;

    iget-object v2, p1, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->head:Lcom/samsung/android/nexus/particle/emitter/Particle;

    iput-object v2, v1, Lcom/samsung/android/nexus/particle/emitter/Particle;->next:Lcom/samsung/android/nexus/particle/emitter/Particle;

    :goto_0
    iget-object p1, p1, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->tail:Lcom/samsung/android/nexus/particle/emitter/Particle;

    iput-object p1, p0, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->tail:Lcom/samsung/android/nexus/particle/emitter/Particle;

    iget p1, p0, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->size:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->size:I

    return-void
.end method

.method public final transferFrom(Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;Lcom/samsung/android/nexus/particle/emitter/Particle;Lcom/samsung/android/nexus/particle/emitter/Particle;Lcom/samsung/android/nexus/particle/emitter/Particle;I)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p4, Lcom/samsung/android/nexus/particle/emitter/Particle;->next:Lcom/samsung/android/nexus/particle/emitter/Particle;

    iput-object v0, p2, Lcom/samsung/android/nexus/particle/emitter/Particle;->next:Lcom/samsung/android/nexus/particle/emitter/Particle;

    :cond_0
    iget-object v0, p1, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->head:Lcom/samsung/android/nexus/particle/emitter/Particle;

    if-ne p3, v0, :cond_1

    iget-object v0, p4, Lcom/samsung/android/nexus/particle/emitter/Particle;->next:Lcom/samsung/android/nexus/particle/emitter/Particle;

    iput-object v0, p1, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->head:Lcom/samsung/android/nexus/particle/emitter/Particle;

    :cond_1
    iget-object v0, p1, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->tail:Lcom/samsung/android/nexus/particle/emitter/Particle;

    if-ne p4, v0, :cond_2

    iput-object p2, p1, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->tail:Lcom/samsung/android/nexus/particle/emitter/Particle;

    :cond_2
    iget-object p2, p0, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->head:Lcom/samsung/android/nexus/particle/emitter/Particle;

    if-nez p2, :cond_3

    iput-object p3, p0, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->head:Lcom/samsung/android/nexus/particle/emitter/Particle;

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->tail:Lcom/samsung/android/nexus/particle/emitter/Particle;

    iput-object p3, p2, Lcom/samsung/android/nexus/particle/emitter/Particle;->next:Lcom/samsung/android/nexus/particle/emitter/Particle;

    :goto_0
    iput-object p4, p0, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->tail:Lcom/samsung/android/nexus/particle/emitter/Particle;

    const/4 p2, 0x0

    iput-object p2, p4, Lcom/samsung/android/nexus/particle/emitter/Particle;->next:Lcom/samsung/android/nexus/particle/emitter/Particle;

    iget p2, p0, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->size:I

    add-int/2addr p2, p5

    iput p2, p0, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->size:I

    iget p0, p1, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->size:I

    sub-int/2addr p0, p5

    iput p0, p1, Lcom/samsung/android/nexus/particle/emitter/Particle$ParticleLinkedList;->size:I

    return-void
.end method
