.class public abstract Landroid/media/PlayerBase;
.super Ljava/lang/Object;
.source "PlayerBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/PlayerBase$PlayerIdCard;,
        Landroid/media/PlayerBase$IPlayerWrapper;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o DEBUG_APP_OPS:Z = false

.field private static final greylist-max-o TAG:Ljava/lang/String; = "PlayerBase"

.field private static greylist-max-o sService:Landroid/media/IAudioService;


# instance fields
.field private greylist-max-o mAppOps:Lcom/android/internal/app/IAppOpsService;

.field private greylist-max-o mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

.field protected greylist-max-o mAttributes:Landroid/media/AudioAttributes;

.field protected greylist-max-o mAuxEffectSendLevel:F

.field private blacklist mDeviceId:I

.field private greylist-max-o mHasAppOpsPlayAudio:Z

.field private final greylist-max-o mImplType:I

.field protected greylist-max-o mLeftVolume:F

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private greylist-max-o mPanMultiplierL:F

.field private greylist-max-o mPanMultiplierR:F

.field protected greylist-max-o mPlayerIId:I

.field protected greylist-max-o mRightVolume:F

.field private greylist-max-o mStartDelayMs:I

.field private greylist-max-o mState:I

.field private blacklist mVolMultiplier:F


# direct methods
.method constructor greylist-max-o <init>(Landroid/media/AudioAttributes;I)V
    .locals 3
    .param p1, "attr"    # Landroid/media/AudioAttributes;
    .param p2, "implType"    # I

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/media/PlayerBase;->mLeftVolume:F

    .line 62
    iput v0, p0, Landroid/media/PlayerBase;->mRightVolume:F

    .line 63
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/PlayerBase;->mAuxEffectSendLevel:F

    .line 68
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    .line 73
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/PlayerBase;->mHasAppOpsPlayAudio:Z

    .line 78
    const/4 v2, -0x1

    iput v2, p0, Landroid/media/PlayerBase;->mPlayerIId:I

    .line 82
    const/4 v2, 0x0

    iput v2, p0, Landroid/media/PlayerBase;->mStartDelayMs:I

    .line 84
    iput v0, p0, Landroid/media/PlayerBase;->mPanMultiplierL:F

    .line 86
    iput v0, p0, Landroid/media/PlayerBase;->mPanMultiplierR:F

    .line 88
    iput v0, p0, Landroid/media/PlayerBase;->mVolMultiplier:F

    .line 100
    if-eqz p1, :cond_0

    .line 103
    iput-object p1, p0, Landroid/media/PlayerBase;->mAttributes:Landroid/media/AudioAttributes;

    .line 104
    iput p2, p0, Landroid/media/PlayerBase;->mImplType:I

    .line 105
    iput v1, p0, Landroid/media/PlayerBase;->mState:I

    .line 106
    return-void

    .line 101
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioAttributes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist checkMuteState(FF)V
    .locals 4
    .param p1, "leftVolume"    # F
    .param p2, "rightVolume"    # F

    .line 555
    iget-object v0, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 556
    :try_start_0
    iget v1, p0, Landroid/media/PlayerBase;->mLeftVolume:F

    cmpl-float v2, v1, p1

    if-nez v2, :cond_0

    iget v2, p0, Landroid/media/PlayerBase;->mRightVolume:F

    cmpl-float v2, v2, p2

    if-nez v2, :cond_0

    .line 557
    monitor-exit v0

    return-void

    .line 560
    :cond_0
    const/4 v2, 0x0

    cmpl-float v3, p1, v2

    if-nez v3, :cond_1

    cmpl-float v3, p2, v2

    if-nez v3, :cond_1

    .line 561
    const/16 v1, 0x64

    .local v1, "state":I
    goto :goto_0

    .line 562
    .end local v1    # "state":I
    :cond_1
    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    iget v1, p0, Landroid/media/PlayerBase;->mRightVolume:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    .line 563
    const/16 v1, 0xc8

    .line 567
    .restart local v1    # "state":I
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 570
    :try_start_1
    invoke-static {}, Landroid/media/PlayerBase;->getService()Landroid/media/IAudioService;

    move-result-object v0

    iget v2, p0, Landroid/media/PlayerBase;->mPlayerIId:I

    iget v3, p0, Landroid/media/PlayerBase;->mDeviceId:I

    invoke-interface {v0, v2, v1, v3}, Landroid/media/IAudioService;->playerEvent(III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 571
    :catch_0
    move-exception v0

    :goto_1
    nop

    .line 572
    return-void

    .line 565
    .end local v1    # "state":I
    :cond_2
    :try_start_2
    monitor-exit v0

    return-void

    .line 567
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static greylist-max-o deprecateStreamTypeForPlayback(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "streamType"    # I
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "opName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 531
    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    .line 535
    const-string v0, "Use of stream types is deprecated for operations other than volume control"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "See the documentation of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for what to use instead with android.media.AudioAttributes to qualify your playback use case"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    return-void

    .line 532
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Use of STREAM_ACCESSIBILITY is reserved for volume control"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o getService()Landroid/media/IAudioService;
    .locals 2

    .line 302
    sget-object v0, Landroid/media/PlayerBase;->sService:Landroid/media/IAudioService;

    if-eqz v0, :cond_0

    .line 303
    return-object v0

    .line 305
    :cond_0
    const-string v0, "audio"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 306
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    sput-object v1, Landroid/media/PlayerBase;->sService:Landroid/media/IAudioService;

    .line 307
    return-object v1
.end method

.method private blacklist updatePlayerVolume()V
    .locals 4

    .line 239
    iget-object v0, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 240
    :try_start_0
    iget v1, p0, Landroid/media/PlayerBase;->mVolMultiplier:F

    iget v2, p0, Landroid/media/PlayerBase;->mLeftVolume:F

    mul-float/2addr v2, v1

    iget v3, p0, Landroid/media/PlayerBase;->mPanMultiplierL:F

    mul-float/2addr v2, v3

    .line 241
    .local v2, "finalLeftVol":F
    iget v3, p0, Landroid/media/PlayerBase;->mRightVolume:F

    mul-float/2addr v1, v3

    iget v3, p0, Landroid/media/PlayerBase;->mPanMultiplierR:F

    mul-float/2addr v1, v3

    .line 242
    .local v1, "finalRightVol":F
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2, v1}, Landroid/media/PlayerBase;->playerSetVolume(ZFF)V

    .line 244
    return-void

    .line 242
    .end local v1    # "finalRightVol":F
    .end local v2    # "finalLeftVol":F
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private blacklist updateState(II)V
    .locals 5
    .param p1, "state"    # I
    .param p2, "deviceId"    # I

    .line 180
    iget-object v0, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 181
    :try_start_0
    iput p1, p0, Landroid/media/PlayerBase;->mState:I

    .line 182
    iget v1, p0, Landroid/media/PlayerBase;->mPlayerIId:I

    .line 183
    .local v1, "piid":I
    iput p2, p0, Landroid/media/PlayerBase;->mDeviceId:I

    .line 184
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    :try_start_1
    invoke-static {}, Landroid/media/PlayerBase;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, v1, p1, p2}, Landroid/media/IAudioService;->playerEvent(III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 191
    goto :goto_0

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "PlayerBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error talking to audio service, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 189
    invoke-static {p1}, Landroid/media/AudioPlaybackConfiguration;->toLogFriendlyPlayerState(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " state will not be tracked for piid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 188
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 184
    .end local v1    # "piid":I
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method greylist-max-o basePause()V
    .locals 2

    .line 215
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/media/PlayerBase;->updateState(II)V

    .line 216
    return-void
.end method

.method protected blacklist baseRegisterPlayer(I)V
    .locals 5
    .param p1, "sessionId"    # I

    .line 120
    :try_start_0
    invoke-static {}, Landroid/media/PlayerBase;->getService()Landroid/media/IAudioService;

    move-result-object v0

    new-instance v1, Landroid/media/PlayerBase$PlayerIdCard;

    iget v2, p0, Landroid/media/PlayerBase;->mImplType:I

    iget-object v3, p0, Landroid/media/PlayerBase;->mAttributes:Landroid/media/AudioAttributes;

    new-instance v4, Landroid/media/PlayerBase$IPlayerWrapper;

    invoke-direct {v4, p0}, Landroid/media/PlayerBase$IPlayerWrapper;-><init>(Landroid/media/PlayerBase;)V

    invoke-direct {v1, v2, v3, v4, p1}, Landroid/media/PlayerBase$PlayerIdCard;-><init>(ILandroid/media/AudioAttributes;Landroid/media/IPlayer;I)V

    invoke-interface {v0, v1}, Landroid/media/IAudioService;->trackPlayer(Landroid/media/PlayerBase$PlayerIdCard;)I

    move-result v0

    iput v0, p0, Landroid/media/PlayerBase;->mPlayerIId:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PlayerBase"

    const-string v2, "Error talking to audio service, player will not be tracked"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method greylist-max-o baseRelease()V
    .locals 4

    .line 277
    const/4 v0, 0x0

    .line 278
    .local v0, "releasePlayer":Z
    iget-object v1, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 279
    :try_start_0
    iget v2, p0, Landroid/media/PlayerBase;->mState:I

    if-eqz v2, :cond_0

    .line 280
    const/4 v0, 0x1

    .line 281
    const/4 v2, 0x0

    iput v2, p0, Landroid/media/PlayerBase;->mState:I

    .line 283
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    if-eqz v0, :cond_1

    .line 286
    :try_start_1
    invoke-static {}, Landroid/media/PlayerBase;->getService()Landroid/media/IAudioService;

    move-result-object v1

    iget v2, p0, Landroid/media/PlayerBase;->mPlayerIId:I

    invoke-interface {v1, v2}, Landroid/media/IAudioService;->releasePlayer(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 288
    :catch_0
    move-exception v1

    .line 289
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "PlayerBase"

    const-string v3, "Error talking to audio service, the player will still be tracked"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 290
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    nop

    .line 292
    :goto_1
    :try_start_2
    iget-object v1, p0, Landroid/media/PlayerBase;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    if-eqz v1, :cond_2

    .line 293
    iget-object v2, p0, Landroid/media/PlayerBase;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    invoke-interface {v1, v2}, Lcom/android/internal/app/IAppOpsService;->stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 297
    :cond_2
    goto :goto_2

    .line 295
    :catch_1
    move-exception v1

    .line 298
    :goto_2
    return-void

    .line 283
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method greylist-max-o baseSetAuxEffectSendLevel(F)I
    .locals 2
    .param p1, "level"    # F

    .line 265
    iget-object v0, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 266
    :try_start_0
    iput p1, p0, Landroid/media/PlayerBase;->mAuxEffectSendLevel:F

    .line 267
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/media/PlayerBase;->playerSetAuxEffectSendLevel(ZF)I

    move-result v0

    return v0

    .line 267
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method greylist-max-o baseSetPan(F)V
    .locals 4
    .param p1, "pan"    # F

    .line 224
    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 225
    .local v0, "p":F
    iget-object v2, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 226
    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_0

    .line 227
    sub-float v3, v1, v0

    :try_start_0
    iput v3, p0, Landroid/media/PlayerBase;->mPanMultiplierL:F

    .line 228
    iput v1, p0, Landroid/media/PlayerBase;->mPanMultiplierR:F

    goto :goto_0

    .line 230
    :cond_0
    iput v1, p0, Landroid/media/PlayerBase;->mPanMultiplierL:F

    .line 231
    add-float/2addr v1, v0

    iput v1, p0, Landroid/media/PlayerBase;->mPanMultiplierR:F

    .line 233
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    invoke-direct {p0}, Landroid/media/PlayerBase;->updatePlayerVolume()V

    .line 235
    return-void

    .line 233
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method greylist-max-o baseSetStartDelayMs(I)V
    .locals 2
    .param p1, "delayMs"    # I

    .line 202
    iget-object v0, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 203
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroid/media/PlayerBase;->mStartDelayMs:I

    .line 204
    monitor-exit v0

    .line 205
    return-void

    .line 204
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method greylist-max-o baseSetVolume(FF)V
    .locals 2
    .param p1, "leftVolume"    # F
    .param p2, "rightVolume"    # F

    .line 255
    invoke-direct {p0, p1, p2}, Landroid/media/PlayerBase;->checkMuteState(FF)V

    .line 257
    iget-object v0, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 258
    :try_start_0
    iput p1, p0, Landroid/media/PlayerBase;->mLeftVolume:F

    .line 259
    iput p2, p0, Landroid/media/PlayerBase;->mRightVolume:F

    .line 260
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    invoke-direct {p0}, Landroid/media/PlayerBase;->updatePlayerVolume()V

    .line 262
    return-void

    .line 260
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method blacklist baseStart(I)V
    .locals 1
    .param p1, "deviceId"    # I

    .line 198
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/media/PlayerBase;->updateState(II)V

    .line 199
    return-void
.end method

.method greylist-max-o baseStop()V
    .locals 2

    .line 220
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/media/PlayerBase;->updateState(II)V

    .line 221
    return-void
.end method

.method greylist-max-o baseUpdateAudioAttributes(Landroid/media/AudioAttributes;)V
    .locals 3
    .param p1, "attr"    # Landroid/media/AudioAttributes;

    .line 133
    if-eqz p1, :cond_0

    .line 137
    :try_start_0
    invoke-static {}, Landroid/media/PlayerBase;->getService()Landroid/media/IAudioService;

    move-result-object v0

    iget v1, p0, Landroid/media/PlayerBase;->mPlayerIId:I

    invoke-interface {v0, v1, p1}, Landroid/media/IAudioService;->playerAttributes(ILandroid/media/AudioAttributes;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PlayerBase"

    const-string v2, "Error talking to audio service, audio attributes will not be updated"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v0, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 142
    :try_start_1
    iput-object p1, p0, Landroid/media/PlayerBase;->mAttributes:Landroid/media/AudioAttributes;

    .line 143
    monitor-exit v0

    .line 144
    return-void

    .line 143
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 134
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioAttributes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist baseUpdateDeviceId(Landroid/media/AudioDeviceInfo;)V
    .locals 6
    .param p1, "deviceInfo"    # Landroid/media/AudioDeviceInfo;

    .line 159
    const/4 v0, 0x0

    .line 160
    .local v0, "deviceId":I
    if-eqz p1, :cond_0

    .line 161
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v0

    .line 164
    :cond_0
    iget-object v1, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 165
    :try_start_0
    iget v2, p0, Landroid/media/PlayerBase;->mPlayerIId:I

    .line 166
    .local v2, "piid":I
    iput v0, p0, Landroid/media/PlayerBase;->mDeviceId:I

    .line 167
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    :try_start_1
    invoke-static {}, Landroid/media/PlayerBase;->getService()Landroid/media/IAudioService;

    move-result-object v1

    const/4 v3, 0x5

    invoke-interface {v1, v2, v3, v0}, Landroid/media/IAudioService;->playerEvent(III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 175
    goto :goto_0

    .line 171
    :catch_0
    move-exception v1

    .line 172
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "PlayerBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error talking to audio service, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " device id will not be tracked for piid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 167
    .end local v2    # "piid":I
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method blacklist baseUpdateSessionId(I)V
    .locals 3
    .param p1, "sessionId"    # I

    .line 152
    :try_start_0
    invoke-static {}, Landroid/media/PlayerBase;->getService()Landroid/media/IAudioService;

    move-result-object v0

    iget v1, p0, Landroid/media/PlayerBase;->mPlayerIId:I

    invoke-interface {v0, v1, p1}, Landroid/media/IAudioService;->playerSessionId(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    goto :goto_0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PlayerBase"

    const-string v2, "Error talking to audio service, the session ID will not be updated"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method protected blacklist getCurrentOpPackageName()Ljava/lang/String;
    .locals 1

    .line 542
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPlayerIId()I
    .locals 2

    .line 110
    iget-object v0, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 111
    :try_start_0
    iget v1, p0, Landroid/media/PlayerBase;->mPlayerIId:I

    monitor-exit v0

    return v1

    .line 112
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected greylist-max-o getStartDelayMs()I
    .locals 2

    .line 208
    iget-object v0, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 209
    :try_start_0
    iget v1, p0, Landroid/media/PlayerBase;->mStartDelayMs:I

    monitor-exit v0

    return v1

    .line 210
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist getVolMultiplier()F
    .locals 1

    .line 548
    iget v0, p0, Landroid/media/PlayerBase;->mVolMultiplier:F

    return v0
.end method

.method abstract greylist-max-o playerApplyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I
.end method

.method abstract greylist-max-o playerGetVolumeShaperState(I)Landroid/media/VolumeShaper$State;
.end method

.method abstract greylist-max-o playerPause()V
.end method

.method abstract greylist-max-o playerSetAuxEffectSendLevel(ZF)I
.end method

.method abstract greylist-max-o playerSetVolume(ZFF)V
.end method

.method abstract greylist-max-o playerStart()V
.end method

.method abstract greylist-max-o playerStop()V
.end method

.method public greylist-max-o setStartDelayMs(I)V
    .locals 0
    .param p1, "delayMs"    # I

    .line 315
    invoke-virtual {p0, p1}, Landroid/media/PlayerBase;->baseSetStartDelayMs(I)V

    .line 316
    return-void
.end method

.method blacklist setVolumeMultiplier(F)V
    .locals 2
    .param p1, "vol"    # F

    .line 247
    iget-object v0, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 248
    :try_start_0
    iput p1, p0, Landroid/media/PlayerBase;->mVolMultiplier:F

    .line 249
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    invoke-direct {p0}, Landroid/media/PlayerBase;->updatePlayerVolume()V

    .line 251
    return-void

    .line 249
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
