.class public final Lcom/samsung/android/nexus/particle/emitter/Emitter;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public isSubEmitter:Z

.field public final mEmissionRule:Lcom/samsung/android/nexus/particle/emitter/EmissionRule;

.field public final mEmitters:Ljava/util/ArrayList;

.field public final mEnable:Z

.field public final mParticleRule:Lcom/samsung/android/nexus/particle/emitter/ParticleRule;

.field public mWorld:Lcom/samsung/android/nexus/particle/emitter/World;

.field public subEmitterKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/nexus/particle/emitter/EmissionRule;Lcom/samsung/android/nexus/particle/emitter/ParticleRule;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/nexus/particle/emitter/Emitter;->mEnable:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/nexus/particle/emitter/Emitter;->mEmitters:Ljava/util/ArrayList;

    const-string p1, ""

    iput-object p1, p0, Lcom/samsung/android/nexus/particle/emitter/Emitter;->subEmitterKey:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/nexus/particle/emitter/Emitter;->isSubEmitter:Z

    iput-object p2, p0, Lcom/samsung/android/nexus/particle/emitter/Emitter;->mEmissionRule:Lcom/samsung/android/nexus/particle/emitter/EmissionRule;

    iput-object p3, p0, Lcom/samsung/android/nexus/particle/emitter/Emitter;->mParticleRule:Lcom/samsung/android/nexus/particle/emitter/ParticleRule;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/nexus/particle/emitter/World;Lcom/samsung/android/nexus/particle/emitter/EmissionRule;Lcom/samsung/android/nexus/particle/emitter/ParticleRule;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/nexus/particle/emitter/Emitter;->mEnable:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/nexus/particle/emitter/Emitter;->mEmitters:Ljava/util/ArrayList;

    const-string p1, ""

    iput-object p1, p0, Lcom/samsung/android/nexus/particle/emitter/Emitter;->subEmitterKey:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/nexus/particle/emitter/Emitter;->isSubEmitter:Z

    iput-object p2, p0, Lcom/samsung/android/nexus/particle/emitter/Emitter;->mWorld:Lcom/samsung/android/nexus/particle/emitter/World;

    iput-object p3, p0, Lcom/samsung/android/nexus/particle/emitter/Emitter;->mEmissionRule:Lcom/samsung/android/nexus/particle/emitter/EmissionRule;

    iput-object p4, p0, Lcom/samsung/android/nexus/particle/emitter/Emitter;->mParticleRule:Lcom/samsung/android/nexus/particle/emitter/ParticleRule;

    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/Emitter;->mEmitters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, "destroy: size = ["

    const-string v2, "]"

    invoke-static {v0, v1, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/nexus/particle/emitter/Emitter;->mParticleRule:Lcom/samsung/android/nexus/particle/emitter/ParticleRule;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Nexus[Emitter]"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v4, p0, Lcom/samsung/android/nexus/particle/emitter/Emitter;->mEmitters:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/nexus/particle/emitter/Emitter;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/samsung/android/nexus/particle/emitter/Emitter;->destroy()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_3

    iget-object v0, v2, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->particleTexture:Lcom/samsung/android/nexus/particle/emitter/texture/ParticleTexture;

    if-eqz v0, :cond_2

    const-string v0, "destroy:  particleTexture release()"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v2, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->particleTexture:Lcom/samsung/android/nexus/particle/emitter/texture/ParticleTexture;

    invoke-virtual {v0}, Lcom/samsung/android/nexus/particle/emitter/texture/ParticleTexture;->onRelease()V

    iget-object v0, v2, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->particleTexture:Lcom/samsung/android/nexus/particle/emitter/texture/ParticleTexture;

    invoke-virtual {v0}, Lcom/samsung/android/nexus/particle/emitter/texture/ParticleTexture;->onDestroy()V

    :cond_2
    iget-object v0, v2, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->factorRangeableList:Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;

    iget-object v0, v0, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;->rangeables:[Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v2, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->factorKeyFrameList:Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;

    invoke-virtual {v0}, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableKeyFrameSetList;->clear()V

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/nexus/particle/emitter/Emitter;->mEmitters:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final isScheduleAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/nexus/particle/emitter/Emitter;->mEnable:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/nexus/particle/emitter/Emitter;->mWorld:Lcom/samsung/android/nexus/particle/emitter/World;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
