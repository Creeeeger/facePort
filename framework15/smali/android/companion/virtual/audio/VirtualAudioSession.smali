.class public final Landroid/companion/virtual/audio/VirtualAudioSession;
.super Landroid/companion/virtual/audio/IAudioRoutingCallback$Stub;
.source "VirtualAudioSession.java"

# interfaces
.implements Landroid/companion/virtual/audio/UserRestrictionsDetector$UserRestrictionsCallback;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "VirtualAudioSession"


# instance fields
.field private blacklist mAudioCapture:Landroid/companion/virtual/audio/AudioCapture;

.field private final blacklist mAudioConfigChangedCallback:Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback;

.field private blacklist mAudioInjection:Landroid/companion/virtual/audio/AudioInjection;

.field private blacklist mAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mReroutedAppUids:Landroid/util/IntArray;

.field private final blacklist mUserRestrictionsDetector:Landroid/companion/virtual/audio/UserRestrictionsDetector;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Landroid/companion/virtual/audio/IAudioRoutingCallback$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mReroutedAppUids:Landroid/util/IntArray;

    iput-object p1, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/companion/virtual/audio/UserRestrictionsDetector;

    invoke-direct {v0, p1}, Landroid/companion/virtual/audio/UserRestrictionsDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mUserRestrictionsDetector:Landroid/companion/virtual/audio/UserRestrictionsDetector;

    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback;

    invoke-direct {v0, p1, p3, p2}, Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;)V

    :goto_0
    iput-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioConfigChangedCallback:Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback;

    return-void
.end method

.method private static blacklist createAudioRecordMix(Landroid/media/AudioFormat;[I)Landroid/media/audiopolicy/AudioMix;
    .locals 7

    new-instance v0, Landroid/media/audiopolicy/AudioMixingRule$Builder;

    invoke-direct {v0}, Landroid/media/audiopolicy/AudioMixingRule$Builder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->setTargetMixRole(I)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    array-length v2, p1

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, p1, v3

    const/4 v5, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->addMixRule(ILjava/lang/Object;)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->allowPrivilegedPlaybackCapture(Z)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->build()Landroid/media/audiopolicy/AudioMixingRule;

    move-result-object v1

    new-instance v2, Landroid/media/audiopolicy/AudioMix$Builder;

    invoke-direct {v2, v1}, Landroid/media/audiopolicy/AudioMix$Builder;-><init>(Landroid/media/audiopolicy/AudioMixingRule;)V

    invoke-virtual {v2, p0}, Landroid/media/audiopolicy/AudioMix$Builder;->setFormat(Landroid/media/AudioFormat;)Landroid/media/audiopolicy/AudioMix$Builder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/media/audiopolicy/AudioMix$Builder;->setRouteFlags(I)Landroid/media/audiopolicy/AudioMix$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/audiopolicy/AudioMix$Builder;->build()Landroid/media/audiopolicy/AudioMix;

    move-result-object v2

    return-object v2
.end method

.method private blacklist createAudioStreams([I)V
    .locals 8

    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioCapture:Landroid/companion/virtual/audio/AudioCapture;

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioInjection:Landroid/companion/virtual/audio/AudioInjection;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "At least one of AudioCapture and AudioInjection must be started."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

    if-nez v1, :cond_a

    iget-object v1, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mReroutedAppUids:Landroid/util/IntArray;

    invoke-virtual {v1}, Landroid/util/IntArray;->clear()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    aget v3, p1, v2

    iget-object v4, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mReroutedAppUids:Landroid/util/IntArray;

    invoke-virtual {v4, v3}, Landroid/util/IntArray;->add(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Landroid/media/audiopolicy/AudioPolicy$Builder;

    iget-object v4, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/media/audiopolicy/AudioPolicy$Builder;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioCapture:Landroid/companion/virtual/audio/AudioCapture;

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioCapture:Landroid/companion/virtual/audio/AudioCapture;

    invoke-virtual {v4}, Landroid/companion/virtual/audio/AudioCapture;->getFormat()Landroid/media/AudioFormat;

    move-result-object v4

    invoke-static {v4, p1}, Landroid/companion/virtual/audio/VirtualAudioSession;->createAudioRecordMix(Landroid/media/AudioFormat;[I)Landroid/media/audiopolicy/AudioMix;

    move-result-object v4

    move-object v1, v4

    invoke-virtual {v3, v1}, Landroid/media/audiopolicy/AudioPolicy$Builder;->addMix(Landroid/media/audiopolicy/AudioMix;)Landroid/media/audiopolicy/AudioPolicy$Builder;

    :cond_3
    iget-object v4, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioInjection:Landroid/companion/virtual/audio/AudioInjection;

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioInjection:Landroid/companion/virtual/audio/AudioInjection;

    invoke-virtual {v4}, Landroid/companion/virtual/audio/AudioInjection;->getFormat()Landroid/media/AudioFormat;

    move-result-object v4

    invoke-static {v4, p1}, Landroid/companion/virtual/audio/VirtualAudioSession;->createAudioTrackMix(Landroid/media/AudioFormat;[I)Landroid/media/audiopolicy/AudioMix;

    move-result-object v4

    move-object v2, v4

    invoke-virtual {v3, v2}, Landroid/media/audiopolicy/AudioPolicy$Builder;->addMix(Landroid/media/audiopolicy/AudioMix;)Landroid/media/audiopolicy/AudioPolicy$Builder;

    :cond_4
    invoke-virtual {v3}, Landroid/media/audiopolicy/AudioPolicy$Builder;->build()Landroid/media/audiopolicy/AudioPolicy;

    move-result-object v4

    iput-object v4, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

    iget-object v4, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mContext:Landroid/content/Context;

    const-class v5, Landroid/media/AudioManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    iget-object v5, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->registerAudioPolicy(Landroid/media/audiopolicy/AudioPolicy;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_5

    const-string v5, "VirtualAudioSession"

    const-string v6, "Failed to register audio policy!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/4 v5, 0x0

    if-eqz v1, :cond_6

    iget-object v6, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

    invoke-virtual {v6, v1}, Landroid/media/audiopolicy/AudioPolicy;->createAudioRecordSink(Landroid/media/audiopolicy/AudioMix;)Landroid/media/AudioRecord;

    move-result-object v6

    goto :goto_2

    :cond_6
    move-object v6, v5

    :goto_2
    nop

    if-eqz v2, :cond_7

    iget-object v5, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

    invoke-virtual {v5, v2}, Landroid/media/audiopolicy/AudioPolicy;->createAudioTrackSource(Landroid/media/audiopolicy/AudioMix;)Landroid/media/AudioTrack;

    move-result-object v5

    goto :goto_3

    :cond_7
    nop

    :goto_3
    nop

    iget-object v7, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioCapture:Landroid/companion/virtual/audio/AudioCapture;

    if-eqz v7, :cond_8

    iget-object v7, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioCapture:Landroid/companion/virtual/audio/AudioCapture;

    invoke-virtual {v7, v6}, Landroid/companion/virtual/audio/AudioCapture;->setAudioRecord(Landroid/media/AudioRecord;)V

    :cond_8
    iget-object v7, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioInjection:Landroid/companion/virtual/audio/AudioInjection;

    if-eqz v7, :cond_9

    iget-object v7, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioInjection:Landroid/companion/virtual/audio/AudioInjection;

    invoke-virtual {v7, v5}, Landroid/companion/virtual/audio/AudioInjection;->setAudioTrack(Landroid/media/AudioTrack;)V

    :cond_9
    monitor-exit v0

    return-void

    :cond_a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot create audio streams while the audio policy is registered. Call releaseAudioStreams() first to unregister the previous audio policy."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static blacklist createAudioTrackMix(Landroid/media/AudioFormat;[I)Landroid/media/audiopolicy/AudioMix;
    .locals 6

    new-instance v0, Landroid/media/audiopolicy/AudioMixingRule$Builder;

    invoke-direct {v0}, Landroid/media/audiopolicy/AudioMixingRule$Builder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->setTargetMixRole(I)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p1, v2

    const/4 v4, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->addMixRule(ILjava/lang/Object;)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->build()Landroid/media/audiopolicy/AudioMixingRule;

    move-result-object v1

    new-instance v2, Landroid/media/audiopolicy/AudioMix$Builder;

    invoke-direct {v2, v1}, Landroid/media/audiopolicy/AudioMix$Builder;-><init>(Landroid/media/audiopolicy/AudioMixingRule;)V

    invoke-virtual {v2, p0}, Landroid/media/audiopolicy/AudioMix$Builder;->setFormat(Landroid/media/AudioFormat;)Landroid/media/audiopolicy/AudioMix$Builder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/media/audiopolicy/AudioMix$Builder;->setRouteFlags(I)Landroid/media/audiopolicy/AudioMix$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/audiopolicy/AudioMix$Builder;->build()Landroid/media/audiopolicy/AudioMix;

    move-result-object v2

    return-object v2
.end method

.method private blacklist releaseAudioStreams()V
    .locals 4

    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioCapture:Landroid/companion/virtual/audio/AudioCapture;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioCapture:Landroid/companion/virtual/audio/AudioCapture;

    invoke-virtual {v1, v2}, Landroid/companion/virtual/audio/AudioCapture;->setAudioRecord(Landroid/media/AudioRecord;)V

    :cond_0
    iget-object v1, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioInjection:Landroid/companion/virtual/audio/AudioInjection;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioInjection:Landroid/companion/virtual/audio/AudioInjection;

    invoke-virtual {v1, v2}, Landroid/companion/virtual/audio/AudioInjection;->setAudioTrack(Landroid/media/AudioTrack;)V

    :cond_1
    iget-object v1, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mReroutedAppUids:Landroid/util/IntArray;

    invoke-virtual {v1}, Landroid/util/IntArray;->clear()V

    iget-object v1, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mContext:Landroid/content/Context;

    const-class v3, Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iget-object v3, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->unregisterAudioPolicy(Landroid/media/audiopolicy/AudioPolicy;)V

    iput-object v2, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

    const-string v2, "VirtualAudioSession"

    const-string v3, "AudioPolicy unregistered"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 3

    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mUserRestrictionsDetector:Landroid/companion/virtual/audio/UserRestrictionsDetector;

    invoke-virtual {v0}, Landroid/companion/virtual/audio/UserRestrictionsDetector;->unregister()V

    invoke-direct {p0}, Landroid/companion/virtual/audio/VirtualAudioSession;->releaseAudioStreams()V

    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioCapture:Landroid/companion/virtual/audio/AudioCapture;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioCapture:Landroid/companion/virtual/audio/AudioCapture;

    invoke-virtual {v1}, Landroid/companion/virtual/audio/AudioCapture;->close()V

    iput-object v2, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioCapture:Landroid/companion/virtual/audio/AudioCapture;

    :cond_0
    iget-object v1, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioInjection:Landroid/companion/virtual/audio/AudioInjection;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioInjection:Landroid/companion/virtual/audio/AudioInjection;

    invoke-virtual {v1}, Landroid/companion/virtual/audio/AudioInjection;->close()V

    iput-object v2, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioInjection:Landroid/companion/virtual/audio/AudioInjection;

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist getAudioCapture()Landroid/companion/virtual/audio/AudioCapture;
    .locals 2

    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioCapture:Landroid/companion/virtual/audio/AudioCapture;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist getAudioConfigChangedListener()Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback;
    .locals 1

    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioConfigChangedCallback:Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback;

    return-object v0
.end method

.method public blacklist getAudioInjection()Landroid/companion/virtual/audio/AudioInjection;
    .locals 2

    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioInjection:Landroid/companion/virtual/audio/AudioInjection;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist getReroutedAppUids()Landroid/util/IntArray;
    .locals 2

    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mReroutedAppUids:Landroid/util/IntArray;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist onAppsNeedingAudioRoutingChanged([I)V
    .locals 2

    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mReroutedAppUids:Landroid/util/IntArray;

    invoke-virtual {v1}, Landroid/util/IntArray;->toArray()[I

    move-result-object v1

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Landroid/companion/virtual/audio/VirtualAudioSession;->releaseAudioStreams()V

    array-length v0, p1

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1}, Landroid/companion/virtual/audio/VirtualAudioSession;->createAudioStreams([I)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public blacklist onMicrophoneRestrictionChanged(Z)V
    .locals 2

    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioInjection:Landroid/companion/virtual/audio/AudioInjection;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioInjection:Landroid/companion/virtual/audio/AudioInjection;

    invoke-virtual {v1, p1}, Landroid/companion/virtual/audio/AudioInjection;->setSilent(Z)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist startAudioCapture(Landroid/media/AudioFormat;)Landroid/companion/virtual/audio/AudioCapture;
    .locals 3

    const-string v0, "captureFormat must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioCapture:Landroid/companion/virtual/audio/AudioCapture;

    if-nez v1, :cond_0

    new-instance v1, Landroid/companion/virtual/audio/AudioCapture;

    invoke-direct {v1, p1}, Landroid/companion/virtual/audio/AudioCapture;-><init>(Landroid/media/AudioFormat;)V

    iput-object v1, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioCapture:Landroid/companion/virtual/audio/AudioCapture;

    iget-object v1, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioCapture:Landroid/companion/virtual/audio/AudioCapture;

    invoke-virtual {v1}, Landroid/companion/virtual/audio/AudioCapture;->startRecording()V

    iget-object v1, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioCapture:Landroid/companion/virtual/audio/AudioCapture;

    monitor-exit v0

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot start capture while another capture is ongoing."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist startAudioInjection(Landroid/media/AudioFormat;)Landroid/companion/virtual/audio/AudioInjection;
    .locals 3

    const-string v0, "injectionFormat must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioInjection:Landroid/companion/virtual/audio/AudioInjection;

    if-nez v1, :cond_0

    new-instance v1, Landroid/companion/virtual/audio/AudioInjection;

    invoke-direct {v1, p1}, Landroid/companion/virtual/audio/AudioInjection;-><init>(Landroid/media/AudioFormat;)V

    iput-object v1, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioInjection:Landroid/companion/virtual/audio/AudioInjection;

    iget-object v1, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioInjection:Landroid/companion/virtual/audio/AudioInjection;

    invoke-virtual {v1}, Landroid/companion/virtual/audio/AudioInjection;->play()V

    iget-object v1, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mUserRestrictionsDetector:Landroid/companion/virtual/audio/UserRestrictionsDetector;

    invoke-virtual {v1, p0}, Landroid/companion/virtual/audio/UserRestrictionsDetector;->register(Landroid/companion/virtual/audio/UserRestrictionsDetector$UserRestrictionsCallback;)V

    iget-object v1, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioInjection:Landroid/companion/virtual/audio/AudioInjection;

    iget-object v2, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mUserRestrictionsDetector:Landroid/companion/virtual/audio/UserRestrictionsDetector;

    invoke-virtual {v2}, Landroid/companion/virtual/audio/UserRestrictionsDetector;->isUnmuteMicrophoneDisallowed()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/companion/virtual/audio/AudioInjection;->setSilent(Z)V

    iget-object v1, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioInjection:Landroid/companion/virtual/audio/AudioInjection;

    monitor-exit v0

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot start injection while injection is already ongoing."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
