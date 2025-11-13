.class public final Lcom/android/settingslib/volume/shared/model/AudioStreamModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final audioStream:I

.field public final isAffectedByMute:Z

.field public final isAffectedByRingerMode:Z

.field public final isMuted:Z

.field public final maxVolume:I

.field public final minVolume:I

.field public final volume:I


# direct methods
.method private constructor <init>(IIIIZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/settingslib/volume/shared/model/AudioStreamModel;->audioStream:I

    iput p2, p0, Lcom/android/settingslib/volume/shared/model/AudioStreamModel;->volume:I

    iput p3, p0, Lcom/android/settingslib/volume/shared/model/AudioStreamModel;->minVolume:I

    iput p4, p0, Lcom/android/settingslib/volume/shared/model/AudioStreamModel;->maxVolume:I

    iput-boolean p5, p0, Lcom/android/settingslib/volume/shared/model/AudioStreamModel;->isAffectedByMute:Z

    iput-boolean p6, p0, Lcom/android/settingslib/volume/shared/model/AudioStreamModel;->isAffectedByRingerMode:Z

    iput-boolean p7, p0, Lcom/android/settingslib/volume/shared/model/AudioStreamModel;->isMuted:Z

    return-void
.end method

.method public synthetic constructor <init>(IIIIZZZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/android/settingslib/volume/shared/model/AudioStreamModel;-><init>(IIIIZZZ)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/settingslib/volume/shared/model/AudioStreamModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/settingslib/volume/shared/model/AudioStreamModel;

    iget v1, p1, Lcom/android/settingslib/volume/shared/model/AudioStreamModel;->audioStream:I

    sget-object v3, Lcom/android/settingslib/volume/shared/model/AudioStream;->supportedStreamTypes:Ljava/util/Set;

    iget v3, p0, Lcom/android/settingslib/volume/shared/model/AudioStreamModel;->audioStream:I

    if-ne v3, v1, :cond_8

    iget v1, p0, Lcom/android/settingslib/volume/shared/model/AudioStreamModel;->volume:I

    iget v3, p1, Lcom/android/settingslib/volume/shared/model/AudioStreamModel;->volume:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/settingslib/volume/shared/model/AudioStreamModel;->minVolume:I

    iget v3, p1, Lcom/android/settingslib/volume/shared/model/AudioStreamModel;->minVolume:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/android/settingslib/volume/shared/model/AudioStreamModel;->maxVolume:I

    iget v3, p1, Lcom/android/settingslib/volume/shared/model/AudioStreamModel;->maxVolume:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/android/settingslib/volume/shared/model/AudioStreamModel;->isAffectedByMute:Z

    iget-boolean v3, p1, Lcom/android/settingslib/volume/shared/model/AudioStreamModel;->isAffectedByMute:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/android/settingslib/volume/shared/model/AudioStreamModel;->isAffectedByRingerMode:Z

    iget-boolean v3, p1, Lcom/android/settingslib/volume/shared/model/AudioStreamModel;->isAffectedByRingerMode:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-boolean p0, p0, Lcom/android/settingslib/volume/shared/model/AudioStreamModel;->isMuted:Z

    iget-boolean p1, p1, Lcom/android/settingslib/volume/shared/model/AudioStreamModel;->isMuted:Z

    if-eq p0, p1, :cond_7

    return v2

    :cond_7
    return v0

    :cond_8
    return v2
.end method

.method public final hashCode()I
    .locals 3

    sget-object v0, Lcom/android/settingslib/volume/shared/model/AudioStream;->supportedStreamTypes:Ljava/util/Set;

    iget v0, p0, Lcom/android/settingslib/volume/shared/model/AudioStreamModel;->audioStream:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/settingslib/volume/shared/model/AudioStreamModel;->volume:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/settingslib/volume/shared/model/AudioStreamModel;->minVolume:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/settingslib/volume/shared/model/AudioStreamModel;->maxVolume:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/settingslib/volume/shared/model/AudioStreamModel;->isAffectedByMute:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/settingslib/volume/shared/model/AudioStreamModel;->isAffectedByRingerMode:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean p0, p0, Lcom/android/settingslib/volume/shared/model/AudioStreamModel;->isMuted:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/android/settingslib/volume/shared/model/AudioStreamModel;->audioStream:I

    invoke-static {v0}, Lcom/android/settingslib/volume/shared/model/AudioStream;->toString-impl(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioStreamModel(audioStream="

    const-string v2, ", volume="

    invoke-static {v1, v0, v2}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/settingslib/volume/shared/model/AudioStreamModel;->volume:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", minVolume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settingslib/volume/shared/model/AudioStreamModel;->minVolume:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxVolume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settingslib/volume/shared/model/AudioStreamModel;->maxVolume:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isAffectedByMute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settingslib/volume/shared/model/AudioStreamModel;->isAffectedByMute:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isAffectedByRingerMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settingslib/volume/shared/model/AudioStreamModel;->isAffectedByRingerMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isMuted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/settingslib/volume/shared/model/AudioStreamModel;->isMuted:Z

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
