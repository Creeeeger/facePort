.class public final Landroid/companion/virtual/audio/VirtualAudioDevice;
.super Ljava/lang/Object;
.source "VirtualAudioDevice.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;,
        Landroid/companion/virtual/audio/VirtualAudioDevice$CloseListener;
    }
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mListener:Landroid/companion/virtual/audio/VirtualAudioDevice$CloseListener;

.field private blacklist mOngoingSession:Landroid/companion/virtual/audio/VirtualAudioSession;

.field private final blacklist mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

.field private final blacklist mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/companion/virtual/IVirtualDevice;Landroid/hardware/display/VirtualDisplay;Ljava/util/concurrent/Executor;Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;Landroid/companion/virtual/audio/VirtualAudioDevice$CloseListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    iput-object p3, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    iput-object p4, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mCallback:Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;

    iput-object p6, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mListener:Landroid/companion/virtual/audio/VirtualAudioDevice$CloseListener;

    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 2

    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mOngoingSession:Landroid/companion/virtual/audio/VirtualAudioSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mOngoingSession:Landroid/companion/virtual/audio/VirtualAudioSession;

    invoke-virtual {v0}, Landroid/companion/virtual/audio/VirtualAudioSession;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mOngoingSession:Landroid/companion/virtual/audio/VirtualAudioSession;

    :try_start_0
    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {v0}, Landroid/companion/virtual/IVirtualDevice;->onAudioSessionEnded()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mListener:Landroid/companion/virtual/audio/VirtualAudioDevice$CloseListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mListener:Landroid/companion/virtual/audio/VirtualAudioDevice$CloseListener;

    invoke-interface {v0}, Landroid/companion/virtual/audio/VirtualAudioDevice$CloseListener;->onClosed()V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist getAudioCapture()Landroid/companion/virtual/audio/AudioCapture;
    .locals 1

    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mOngoingSession:Landroid/companion/virtual/audio/VirtualAudioSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mOngoingSession:Landroid/companion/virtual/audio/VirtualAudioSession;

    invoke-virtual {v0}, Landroid/companion/virtual/audio/VirtualAudioSession;->getAudioCapture()Landroid/companion/virtual/audio/AudioCapture;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public whitelist getAudioInjection()Landroid/companion/virtual/audio/AudioInjection;
    .locals 1

    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mOngoingSession:Landroid/companion/virtual/audio/VirtualAudioSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mOngoingSession:Landroid/companion/virtual/audio/VirtualAudioSession;

    invoke-virtual {v0}, Landroid/companion/virtual/audio/VirtualAudioSession;->getAudioInjection()Landroid/companion/virtual/audio/AudioInjection;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public whitelist startAudioCapture(Landroid/media/AudioFormat;)Landroid/companion/virtual/audio/AudioCapture;
    .locals 4

    const-string v0, "captureFormat must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mOngoingSession:Landroid/companion/virtual/audio/VirtualAudioSession;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mOngoingSession:Landroid/companion/virtual/audio/VirtualAudioSession;

    invoke-virtual {v0}, Landroid/companion/virtual/audio/VirtualAudioSession;->getAudioCapture()Landroid/companion/virtual/audio/AudioCapture;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot start an audio capture while a session is ongoing. Call close() on this device first to end the previous session."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mOngoingSession:Landroid/companion/virtual/audio/VirtualAudioSession;

    if-nez v0, :cond_2

    new-instance v0, Landroid/companion/virtual/audio/VirtualAudioSession;

    iget-object v1, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mCallback:Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;

    iget-object v3, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, v2, v3}, Landroid/companion/virtual/audio/VirtualAudioSession;-><init>(Landroid/content/Context;Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mOngoingSession:Landroid/companion/virtual/audio/VirtualAudioSession;

    :cond_2
    :try_start_0
    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    iget-object v1, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    iget-object v2, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mOngoingSession:Landroid/companion/virtual/audio/VirtualAudioSession;

    iget-object v3, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mOngoingSession:Landroid/companion/virtual/audio/VirtualAudioSession;

    invoke-virtual {v3}, Landroid/companion/virtual/audio/VirtualAudioSession;->getAudioConfigChangedListener()Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Landroid/companion/virtual/IVirtualDevice;->onAudioSessionStarting(ILandroid/companion/virtual/audio/IAudioRoutingCallback;Landroid/companion/virtual/audio/IAudioConfigChangedCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mOngoingSession:Landroid/companion/virtual/audio/VirtualAudioSession;

    invoke-virtual {v0, p1}, Landroid/companion/virtual/audio/VirtualAudioSession;->startAudioCapture(Landroid/media/AudioFormat;)Landroid/companion/virtual/audio/AudioCapture;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist startAudioInjection(Landroid/media/AudioFormat;)Landroid/companion/virtual/audio/AudioInjection;
    .locals 4

    const-string v0, "injectionFormat must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mOngoingSession:Landroid/companion/virtual/audio/VirtualAudioSession;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mOngoingSession:Landroid/companion/virtual/audio/VirtualAudioSession;

    invoke-virtual {v0}, Landroid/companion/virtual/audio/VirtualAudioSession;->getAudioInjection()Landroid/companion/virtual/audio/AudioInjection;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot start an audio injection while a session is ongoing. Call close() on this device first to end the previous session."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mOngoingSession:Landroid/companion/virtual/audio/VirtualAudioSession;

    if-nez v0, :cond_2

    new-instance v0, Landroid/companion/virtual/audio/VirtualAudioSession;

    iget-object v1, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mCallback:Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;

    iget-object v3, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, v2, v3}, Landroid/companion/virtual/audio/VirtualAudioSession;-><init>(Landroid/content/Context;Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mOngoingSession:Landroid/companion/virtual/audio/VirtualAudioSession;

    :cond_2
    :try_start_0
    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    iget-object v1, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    iget-object v2, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mOngoingSession:Landroid/companion/virtual/audio/VirtualAudioSession;

    iget-object v3, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mOngoingSession:Landroid/companion/virtual/audio/VirtualAudioSession;

    invoke-virtual {v3}, Landroid/companion/virtual/audio/VirtualAudioSession;->getAudioConfigChangedListener()Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Landroid/companion/virtual/IVirtualDevice;->onAudioSessionStarting(ILandroid/companion/virtual/audio/IAudioRoutingCallback;Landroid/companion/virtual/audio/IAudioConfigChangedCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mOngoingSession:Landroid/companion/virtual/audio/VirtualAudioSession;

    invoke-virtual {v0, p1}, Landroid/companion/virtual/audio/VirtualAudioSession;->startAudioInjection(Landroid/media/AudioFormat;)Landroid/companion/virtual/audio/AudioInjection;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
