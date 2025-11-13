.class public interface abstract Lcom/android/systemui/media/mediaoutput/viewmodel/AudioPathInteraction;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# virtual methods
.method public abstract adjustVolume(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;I)V
.end method

.method public cancel(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)V
    .locals 0

    return-void
.end method

.method public deselect(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)V
    .locals 0

    return-void
.end method

.method public abstract getAudioDevices()Landroidx/lifecycle/MutableLiveData;
.end method

.method public isBroadcasting()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public select(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)V
    .locals 0

    return-void
.end method

.method public abstract transfer(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)V
.end method
