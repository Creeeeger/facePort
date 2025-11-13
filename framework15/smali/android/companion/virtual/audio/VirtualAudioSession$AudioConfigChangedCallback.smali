.class public final Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback;
.super Landroid/companion/virtual/audio/IAudioConfigChangedCallback$Stub;
.source "VirtualAudioSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtual/audio/VirtualAudioSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AudioConfigChangedCallback"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$OYXOc07TPmi1sveiUIlPjyNA8g8(Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback;->lambda$onPlaybackConfigChanged$0(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$mHLv-LsOhKCECGIKv1NuS4qn2mU(Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback;->lambda$onRecordingConfigChanged$1(Ljava/util/List;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;)V
    .locals 1

    invoke-direct {p0}, Landroid/companion/virtual/audio/IAudioConfigChangedCallback$Stub;-><init>()V

    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback;->mCallback:Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;

    return-void
.end method

.method private synthetic blacklist lambda$onPlaybackConfigChanged$0(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback;->mCallback:Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;

    invoke-interface {v0, p1}, Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;->onPlaybackConfigChanged(Ljava/util/List;)V

    return-void
.end method

.method private synthetic blacklist lambda$onRecordingConfigChanged$1(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback;->mCallback:Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;

    invoke-interface {v0, p1}, Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;->onRecordingConfigChanged(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public blacklist onPlaybackConfigChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback;->mCallback:Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback$$ExternalSyntheticLambda0;-><init>(Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public blacklist onRecordingConfigChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback;->mCallback:Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback$$ExternalSyntheticLambda1;-><init>(Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
