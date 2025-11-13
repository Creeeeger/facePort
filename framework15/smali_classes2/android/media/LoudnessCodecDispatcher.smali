.class public Landroid/media/LoudnessCodecDispatcher;
.super Ljava/lang/Object;
.source "LoudnessCodecDispatcher.java"

# interfaces
.implements Landroid/media/CallbackUtil$DispatcherStub;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "LoudnessCodecDispatcher"


# instance fields
.field private final blacklist mAudioService:Landroid/media/IAudioService;


# direct methods
.method public constructor blacklist <init>(Landroid/media/IAudioService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/IAudioService;

    iput-object v0, p0, Landroid/media/LoudnessCodecDispatcher;->mAudioService:Landroid/media/IAudioService;

    return-void
.end method


# virtual methods
.method public blacklist addLoudnessCodecInfo(IILandroid/media/LoudnessCodecInfo;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/media/LoudnessCodecDispatcher;->mAudioService:Landroid/media/IAudioService;

    invoke-interface {v0, p1, p2, p3}, Landroid/media/IAudioService;->addLoudnessCodecInfo(IILandroid/media/LoudnessCodecInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method public blacklist addLoudnessCodecListener(Landroid/media/LoudnessCodecController;Ljava/util/concurrent/Executor;Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;)V
    .locals 1

    invoke-static {}, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;->getInstance()Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;->addLoudnessCodecListener(Landroid/media/CallbackUtil$DispatcherStub;Landroid/media/LoudnessCodecController;Ljava/util/concurrent/Executor;Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;)V

    return-void
.end method

.method public blacklist getLoudnessCodecParams(Landroid/media/LoudnessCodecInfo;)Landroid/os/Bundle;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    iget-object v2, p0, Landroid/media/LoudnessCodecDispatcher;->mAudioService:Landroid/media/IAudioService;

    invoke-interface {v2, p1}, Landroid/media/IAudioService;->getLoudnessParams(Landroid/media/LoudnessCodecInfo;)Landroid/os/PersistableBundle;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/PersistableBundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-object v0
.end method

.method public blacklist register(Z)V
    .locals 2

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/media/LoudnessCodecDispatcher;->mAudioService:Landroid/media/IAudioService;

    invoke-static {}, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;->getInstance()Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/IAudioService;->registerLoudnessCodecUpdatesDispatcher(Landroid/media/ILoudnessCodecUpdatesDispatcher;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/media/LoudnessCodecDispatcher;->mAudioService:Landroid/media/IAudioService;

    invoke-static {}, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;->getInstance()Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/IAudioService;->unregisterLoudnessCodecUpdatesDispatcher(Landroid/media/ILoudnessCodecUpdatesDispatcher;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_1
    return-void
.end method

.method public blacklist removeLoudnessCodecInfo(ILandroid/media/LoudnessCodecInfo;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/media/LoudnessCodecDispatcher;->mAudioService:Landroid/media/IAudioService;

    invoke-interface {v0, p1, p2}, Landroid/media/IAudioService;->removeLoudnessCodecInfo(ILandroid/media/LoudnessCodecInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method public blacklist removeLoudnessCodecListener(Landroid/media/LoudnessCodecController;)V
    .locals 1

    invoke-static {}, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;->getInstance()Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;->removeLoudnessCodecListener(Landroid/media/LoudnessCodecController;)V

    return-void
.end method

.method public blacklist startLoudnessCodecUpdates(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/media/LoudnessCodecDispatcher;->mAudioService:Landroid/media/IAudioService;

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->startLoudnessCodecUpdates(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method public blacklist stopLoudnessCodecUpdates(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/media/LoudnessCodecDispatcher;->mAudioService:Landroid/media/IAudioService;

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->stopLoudnessCodecUpdates(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method
