.class public final Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaOutputComponentModel$MediaSession;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaOutputComponentModel;


# instance fields
.field public final device:Lcom/android/systemui/volume/domain/model/AudioOutputDevice;

.field public final isInAudioSharing:Z

.field public final isPlaybackActive:Z

.field public final session:Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/MediaDeviceSession;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/MediaDeviceSession;ZLcom/android/systemui/volume/domain/model/AudioOutputDevice;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaOutputComponentModel$MediaSession;->session:Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/MediaDeviceSession;

    iput-boolean p2, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaOutputComponentModel$MediaSession;->isPlaybackActive:Z

    iput-object p3, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaOutputComponentModel$MediaSession;->device:Lcom/android/systemui/volume/domain/model/AudioOutputDevice;

    iput-boolean p4, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaOutputComponentModel$MediaSession;->isInAudioSharing:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaOutputComponentModel$MediaSession;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaOutputComponentModel$MediaSession;

    iget-object v1, p1, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaOutputComponentModel$MediaSession;->session:Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/MediaDeviceSession;

    iget-object v3, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaOutputComponentModel$MediaSession;->session:Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/MediaDeviceSession;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaOutputComponentModel$MediaSession;->isPlaybackActive:Z

    iget-boolean v3, p1, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaOutputComponentModel$MediaSession;->isPlaybackActive:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaOutputComponentModel$MediaSession;->device:Lcom/android/systemui/volume/domain/model/AudioOutputDevice;

    iget-object v3, p1, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaOutputComponentModel$MediaSession;->device:Lcom/android/systemui/volume/domain/model/AudioOutputDevice;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean p0, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaOutputComponentModel$MediaSession;->isInAudioSharing:Z

    iget-boolean p1, p1, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaOutputComponentModel$MediaSession;->isInAudioSharing:Z

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getDevice()Lcom/android/systemui/volume/domain/model/AudioOutputDevice;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaOutputComponentModel$MediaSession;->device:Lcom/android/systemui/volume/domain/model/AudioOutputDevice;

    return-object p0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaOutputComponentModel$MediaSession;->session:Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/MediaDeviceSession;

    invoke-virtual {v0}, Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/MediaDeviceSession;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaOutputComponentModel$MediaSession;->isPlaybackActive:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaOutputComponentModel$MediaSession;->device:Lcom/android/systemui/volume/domain/model/AudioOutputDevice;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-boolean p0, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaOutputComponentModel$MediaSession;->isInAudioSharing:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v2

    return p0
.end method

.method public final isInAudioSharing()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaOutputComponentModel$MediaSession;->isInAudioSharing:Z

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MediaSession(session="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaOutputComponentModel$MediaSession;->session:Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/MediaDeviceSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isPlaybackActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaOutputComponentModel$MediaSession;->isPlaybackActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaOutputComponentModel$MediaSession;->device:Lcom/android/systemui/volume/domain/model/AudioOutputDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isInAudioSharing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaOutputComponentModel$MediaSession;->isInAudioSharing:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
