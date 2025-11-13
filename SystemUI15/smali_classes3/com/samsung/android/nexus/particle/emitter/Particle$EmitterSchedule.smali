.class public final Lcom/samsung/android/nexus/particle/emitter/Particle$EmitterSchedule;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final emitter:Lcom/samsung/android/nexus/particle/emitter/Emitter;

.field public nextTime:J


# direct methods
.method public constructor <init>(Lcom/samsung/android/nexus/particle/emitter/Particle;Lcom/samsung/android/nexus/particle/emitter/Emitter;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/nexus/particle/emitter/Particle$EmitterSchedule;->emitter:Lcom/samsung/android/nexus/particle/emitter/Emitter;

    iput-wide p3, p0, Lcom/samsung/android/nexus/particle/emitter/Particle$EmitterSchedule;->nextTime:J

    return-void
.end method
