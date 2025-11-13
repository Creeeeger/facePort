.class public interface abstract Lcom/samsung/android/oneconnect/mediaoutput/IMediaOutputService;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract addContentChangeCallback(Lcom/samsung/android/oneconnect/mediaoutput/mediadeviceoperations/IMediaContentChangeCallback;)V
.end method

.method public abstract addDeviceStatusChangeCallback(Lcom/samsung/android/oneconnect/mediaoutput/deviceoperations/IDeviceStatusChangeCallback;)V
.end method

.method public abstract addMediaDeviceControlCallback()V
.end method

.method public abstract addMediaOutputSelectedCallback(Lcom/samsung/android/oneconnect/mediaoutput/mediadeviceoperations/IMediaOutputSelectedCallback;)V
.end method

.method public abstract getCurrentMediaOutput(Ljava/lang/String;)Lcom/samsung/android/oneconnect/mediaoutput/entity/MediaOutputDevice;
.end method

.method public abstract getCurrentMediaOutputV2(Ljava/lang/String;)Lcom/samsung/android/oneconnect/mediaoutput/entity/MediaOutputDeviceV2;
.end method

.method public abstract getDevices()Ljava/util/List;
.end method

.method public abstract getMediaContent(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getMediaOutputDevices(Ljava/lang/String;)Ljava/util/List;
.end method

.method public abstract getMediaOutputDevicesV2(Ljava/lang/String;)Ljava/util/List;
.end method

.method public abstract isMuted()Z
.end method

.method public abstract isNearby()Z
.end method

.method public abstract isPpAgreed()Z
.end method

.method public abstract isSupported(Ljava/lang/String;)Z
.end method

.method public abstract launchRemoteControlPlugIn(Ljava/lang/String;)V
.end method

.method public abstract removeContentChangeCallback(Lcom/samsung/android/oneconnect/mediaoutput/mediadeviceoperations/IMediaContentChangeCallback;)V
.end method

.method public abstract removeDeviceStatusChangeCallback(Lcom/samsung/android/oneconnect/mediaoutput/deviceoperations/IDeviceStatusChangeCallback;)V
.end method

.method public abstract removeMediaDeviceControlCallback()V
.end method

.method public abstract removeMediaOutputSelectedCallback(Lcom/samsung/android/oneconnect/mediaoutput/mediadeviceoperations/IMediaOutputSelectedCallback;)V
.end method

.method public abstract selectMediaOutput(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setMute(Ljava/lang/String;Z)V
.end method

.method public abstract setPlayback(Ljava/lang/String;)V
.end method

.method public abstract startCloudSync()V
.end method

.method public abstract stopCloudSync()V
.end method

.method public abstract updateVolume(ILjava/lang/String;)V
.end method
