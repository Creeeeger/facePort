.class public final synthetic Lcom/samsung/android/nexus/particle/emitter/Particle$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/samsung/android/nexus/particle/emitter/Particle$EmitterSchedule;

    check-cast p2, Lcom/samsung/android/nexus/particle/emitter/Particle$EmitterSchedule;

    iget-wide v0, p2, Lcom/samsung/android/nexus/particle/emitter/Particle$EmitterSchedule;->nextTime:J

    iget-wide p0, p1, Lcom/samsung/android/nexus/particle/emitter/Particle$EmitterSchedule;->nextTime:J

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method
