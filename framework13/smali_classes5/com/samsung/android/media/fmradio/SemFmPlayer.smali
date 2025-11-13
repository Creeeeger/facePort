.class public Lcom/samsung/android/media/fmradio/SemFmPlayer;
.super Ljava/lang/Object;
.source "SemFmPlayer.java"


# static fields
.field public static final whitelist AUDIO_MODE_MONO:I = 0x8

.field public static final whitelist AUDIO_MODE_STEREO:I = 0x9

.field private static final blacklist DEBUG:Z = true

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "FmPlayer"

.field public static final blacklist OFF_AIRPLANE_MODE_SET:I = 0x3

.field public static final blacklist OFF_BATTERY_LOW:I = 0x7

.field public static final blacklist OFF_CALL_ACTIVE:I = 0x1

.field public static final blacklist OFF_DEVICE_SHUTDOWN:I = 0x6

.field public static final blacklist OFF_EAR_PHONE_DISCONNECT:I = 0x2

.field public static final blacklist OFF_NORMAL:I = 0x0

.field public static final blacklist OFF_PAUSE_COMMAND:I = 0x5

.field public static final blacklist OFF_STOP_COMMAND:I = 0x4


# instance fields
.field private blacklist mAudioManager:Landroid/media/AudioManager;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mContext:Landroid/content/Context;

    .line 86
    nop

    .line 87
    const-string v0, "FMPlayer"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 86
    invoke-static {v0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    .line 89
    nop

    .line 90
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mAudioManager:Landroid/media/AudioManager;

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Player created :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->log(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method private blacklist checkBusy()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    .line 651
    const/4 v0, 0x0

    .line 653
    .local v0, "code":I
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->isBusy()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 656
    goto :goto_0

    .line 654
    :catch_0
    move-exception v1

    .line 655
    .local v1, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v1}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 658
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 665
    return-void

    .line 659
    :cond_0
    new-instance v1, Lcom/samsung/android/media/fmradio/SemFmPlayerScanningException;

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "Player is busy in scanning. Use cancelScan to stop scanning"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const-string v3, "Player is scanning channel"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/media/fmradio/SemFmPlayerScanningException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private blacklist checkOnStatus()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    .line 637
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->isRadioEnabled()Z

    move-result v0

    .line 638
    .local v0, "val":Z
    if-eqz v0, :cond_0

    .line 644
    return-void

    .line 639
    :cond_0
    new-instance v1, Lcom/samsung/android/media/fmradio/SemFmPlayerNotEnabledException;

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "Player is not ON. use method on() to switch on FM player"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const-string v3, "Player is not ON.Call on() method to start player"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/media/fmradio/SemFmPlayerNotEnabledException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private blacklist remoteError(Landroid/os/RemoteException;)V
    .locals 3
    .param p1, "e"    # Landroid/os/RemoteException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteException in remoteError() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FmPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    new-instance v0, Lcom/samsung/android/media/fmradio/SemFmPlayerNotEnabledException;

    .line 458
    invoke-virtual {p1}, Landroid/os/RemoteException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v1

    const-string v2, "Radio service is not running restart the phone."

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/media/fmradio/SemFmPlayerNotEnabledException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public whitelist addListener(Lcom/samsung/android/media/fmradio/SemFmEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/media/fmradio/SemFmEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    .line 699
    if-nez p1, :cond_0

    .line 700
    return-void

    .line 702
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    iget-object v1, p1, Lcom/samsung/android/media/fmradio/SemFmEventListener;->callback:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->setListener(Lcom/samsung/android/media/fmradio/internal/IFMEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 705
    goto :goto_0

    .line 703
    :catch_0
    move-exception v0

    .line 704
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 706
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist cancelAFSwitching()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    .line 379
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->cancelAFSwitching()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    goto :goto_0

    .line 380
    :catch_0
    move-exception v0

    .line 381
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 383
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist cancelScan()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    .line 417
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->cancelScan()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 418
    :catch_0
    move-exception v0

    .line 419
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 421
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist cancelSeek()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    .line 535
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->cancelSeek()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 538
    goto :goto_0

    .line 536
    :catch_0
    move-exception v0

    .line 537
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 539
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist disableRadio()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    .line 218
    const/4 v0, 0x0

    .line 220
    .local v0, "val":Z
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->off()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 223
    goto :goto_0

    .line 221
    :catch_0
    move-exception v1

    .line 222
    .local v1, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v1}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 224
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public whitelist enableRadio()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, "val":Z
    const-string/jumbo v1, "ro.factory.factory_binary"

    const-string v2, "Unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "factory"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 104
    .local v1, "isFactoryBinary":Z
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->isAirPlaneMode()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    new-instance v2, Lcom/samsung/android/media/fmradio/SemAirPlaneModeEnabledException;

    new-instance v3, Ljava/lang/Throwable;

    const-string v4, "AirPlane mode is on."

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4, v3}, Lcom/samsung/android/media/fmradio/SemAirPlaneModeEnabledException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 109
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 111
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->on_in_testmode()Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 114
    goto :goto_1

    .line 112
    :catch_0
    move-exception v2

    .line 113
    .local v2, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v2}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 115
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    return v0

    .line 118
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->isTvOutPlugged()Z

    move-result v2

    if-nez v2, :cond_5

    .line 123
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->isHeadsetPlugged()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 129
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v2}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->on()Z

    move-result v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v2

    .line 132
    goto :goto_2

    .line 130
    :catch_1
    move-exception v2

    .line 131
    .restart local v2    # "e":Landroid/os/RemoteException;
    invoke-direct {p0, v2}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 133
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->isBatteryLow()Z

    move-result v2

    if-nez v2, :cond_3

    .line 137
    return v0

    .line 134
    :cond_3
    new-instance v2, Lcom/samsung/android/media/fmradio/SemLowBatteryException;

    new-instance v3, Ljava/lang/Throwable;

    const-string v4, "Batterys is low."

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const-string v4, "Battery is low."

    invoke-direct {v2, v4, v3}, Lcom/samsung/android/media/fmradio/SemLowBatteryException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 124
    :cond_4
    new-instance v2, Lcom/samsung/android/media/fmradio/SemHeadsetNotConnectedException;

    new-instance v3, Ljava/lang/Throwable;

    const-string v4, "Headset is not presents."

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4, v3}, Lcom/samsung/android/media/fmradio/SemHeadsetNotConnectedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 119
    :cond_5
    new-instance v2, Lcom/samsung/android/media/fmradio/SemTvOutConnectedException;

    new-instance v3, Ljava/lang/Throwable;

    const-string v4, "TV out is on."

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const-string v4, "TV out is on"

    invoke-direct {v2, v4, v3}, Lcom/samsung/android/media/fmradio/SemTvOutConnectedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 768
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 769
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mAudioManager:Landroid/media/AudioManager;

    .line 770
    iput-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    .line 771
    return-void
.end method

.method public whitelist getCurrentChannel()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    .line 547
    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->checkOnStatus()V

    .line 549
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->checkBusy()V

    .line 550
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->getCurrentChannel()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 551
    :catch_0
    move-exception v0

    .line 552
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 554
    .end local v0    # "e":Landroid/os/RemoteException;
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public blacklist getLastScanResult()[J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    .line 622
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->isScanning()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 623
    return-object v1

    .line 625
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->getLastScanResult()[J

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 626
    :catch_0
    move-exception v0

    .line 627
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 629
    .end local v0    # "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method public blacklist getMaxVolume()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    .line 606
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->getMaxVolume()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 607
    :catch_0
    move-exception v0

    .line 608
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 610
    .end local v0    # "e":Landroid/os/RemoteException;
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public blacklist getPlayedFreq()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    .line 315
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->getPlayedFreq()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 316
    :catch_0
    move-exception v0

    .line 317
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 319
    .end local v0    # "e":Landroid/os/RemoteException;
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public whitelist getTunningParameter(Ljava/lang/String;I)I
    .locals 2
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    .line 796
    move v0, p2

    .line 797
    .local v0, "val":I
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->isRadioEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 799
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->getIntegerTunningParameter(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 802
    goto :goto_0

    .line 800
    :catch_0
    move-exception v1

    .line 801
    .local v1, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v1}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 804
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return v0
.end method

.method public whitelist getTunningParameter(Ljava/lang/String;J)J
    .locals 4
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    .line 830
    move-wide v0, p2

    .line 831
    .local v0, "val":J
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->isRadioEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 833
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v2, p1, p2, p3}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->getLongTunningParameter(Ljava/lang/String;J)J

    move-result-wide v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v2

    .line 836
    goto :goto_0

    .line 834
    :catch_0
    move-exception v2

    .line 835
    .local v2, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v2}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 838
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-wide v0
.end method

.method public whitelist getTunningParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    .line 865
    move-object v0, p2

    .line 866
    .local v0, "val":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->isRadioEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 868
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->getStringTunningParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 871
    goto :goto_0

    .line 869
    :catch_0
    move-exception v1

    .line 870
    .local v1, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v1}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 873
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-object v0
.end method

.method public blacklist getVolume()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    .line 579
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->getVolume()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 580
    :catch_0
    move-exception v0

    .line 581
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 584
    .end local v0    # "e":Landroid/os/RemoteException;
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public blacklist isAirPlaneMode()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->isAirPlaneMode()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 173
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isAlternateFrequencyEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    .line 686
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->isAFEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 687
    :catch_0
    move-exception v0

    .line 688
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 690
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isBatteryLow()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->isBatteryLow()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 185
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isDeviceSpeakerEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    .line 881
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->isDeviceSpeakerEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 882
    :catch_0
    move-exception v0

    .line 883
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 885
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isHeadsetPlugged()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->isHeadsetPlugged()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 149
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isRadioDataSystemEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    .line 674
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->isRDSEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 675
    :catch_0
    move-exception v0

    .line 676
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 678
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isRadioEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    .line 234
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->isOn()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 238
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isScanning()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    .line 431
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->isScanning()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 432
    :catch_0
    move-exception v0

    .line 433
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 435
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isSeeking()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    .line 446
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->isSeeking()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 447
    :catch_0
    move-exception v0

    .line 448
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 450
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isSoftmuteEnabled()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    .line 755
    const/4 v0, 0x0

    .line 757
    .local v0, "val":Z
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->getSoftMuteMode()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 760
    goto :goto_0

    .line 758
    :catch_0
    move-exception v1

    .line 759
    .local v1, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v1}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 761
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public blacklist isTvOutPlugged()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->isTvOutPlugged()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 161
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist log(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .line 77
    const-string v0, "FmPlayer"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-void
.end method

.method public whitelist removeListener(Lcom/samsung/android/media/fmradio/SemFmEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/media/fmradio/SemFmEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    .line 715
    if-nez p1, :cond_0

    .line 716
    return-void

    .line 718
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    iget-object v1, p1, Lcom/samsung/android/media/fmradio/SemFmEventListener;->callback:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->removeListener(Lcom/samsung/android/media/fmradio/internal/IFMEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 721
    goto :goto_0

    .line 719
    :catch_0
    move-exception v0

    .line 720
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 722
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist searchAll()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    .line 326
    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->checkOnStatus()V

    .line 329
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->checkBusy()V

    .line 330
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->searchAll()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 331
    :catch_0
    move-exception v0

    .line 332
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 334
    .end local v0    # "e":Landroid/os/RemoteException;
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public blacklist searchDown()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    .line 264
    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->checkOnStatus()V

    .line 267
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->checkBusy()V

    .line 268
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->searchDown()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 272
    .end local v0    # "e":Landroid/os/RemoteException;
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public blacklist searchUp()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    .line 298
    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->checkOnStatus()V

    .line 301
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->checkBusy()V

    .line 302
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->searchUp()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 306
    .end local v0    # "e":Landroid/os/RemoteException;
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public whitelist seekDown()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    .line 518
    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->checkOnStatus()V

    .line 521
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->checkBusy()V

    .line 522
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->seekDown()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 523
    :catch_0
    move-exception v0

    .line 524
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 526
    .end local v0    # "e":Landroid/os/RemoteException;
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public whitelist seekUp()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    .line 501
    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->checkOnStatus()V

    .line 504
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->checkBusy()V

    .line 505
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->seekUp()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 506
    :catch_0
    move-exception v0

    .line 507
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 509
    .end local v0    # "e":Landroid/os/RemoteException;
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public whitelist setAlternateFrequencyEnabled(Z)V
    .locals 1
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    .line 362
    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->checkOnStatus()V

    .line 365
    if-eqz p1, :cond_0

    .line 366
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->enableAF()V

    goto :goto_0

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->disableAF()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    :goto_0
    goto :goto_1

    .line 369
    :catch_0
    move-exception v0

    .line 370
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 372
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method public whitelist setAudioMode(I)V
    .locals 1
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    .line 282
    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->checkOnStatus()V

    .line 285
    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    .line 286
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->setStereo()V

    goto :goto_1

    .line 289
    :catch_0
    move-exception v0

    goto :goto_0

    .line 287
    :cond_0
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 288
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->setMono()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 290
    .local v0, "e":Landroid/os/RemoteException;
    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_2

    .line 291
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    nop

    .line 292
    :goto_2
    return-void
.end method

.method public blacklist setBand(I)V
    .locals 1
    .param p1, "band"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    .line 390
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0, p1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->setBand(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    goto :goto_0

    .line 391
    :catch_0
    move-exception v0

    .line 392
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 394
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist setChannelSpacing(I)V
    .locals 1
    .param p1, "spacing"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    .line 404
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0, p1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->setChannelSpacing(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    goto :goto_0

    .line 405
    :catch_0
    move-exception v0

    .line 406
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 408
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist setFMIntenna(Z)V
    .locals 1
    .param p1, "setFMIntenna"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    .line 728
    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->checkOnStatus()V

    .line 730
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0, p1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->setFMIntenna(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 733
    goto :goto_0

    .line 731
    :catch_0
    move-exception v0

    .line 732
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 734
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist setMuteEnabled(Z)Z
    .locals 1
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    .line 485
    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->checkOnStatus()V

    .line 487
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0, p1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->mute(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    const/4 v0, 0x1

    return v0

    .line 489
    :catch_0
    move-exception v0

    .line 490
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 492
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setRadioDataSystemEnabled(Z)V
    .locals 1
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    .line 344
    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->checkOnStatus()V

    .line 347
    if-eqz p1, :cond_0

    .line 348
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->enableRDS()V

    goto :goto_0

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->disableRDS()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    :goto_0
    goto :goto_1

    .line 351
    :catch_0
    move-exception v0

    .line 352
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 354
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method public whitelist setRecordMode(Z)V
    .locals 1
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    .line 594
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0, p1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->setRecordMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 597
    goto :goto_0

    .line 595
    :catch_0
    move-exception v0

    .line 596
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 598
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist setSoftmuteEnabled(Z)V
    .locals 1
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    .line 743
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0, p1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->setSoftmute(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 746
    goto :goto_0

    .line 744
    :catch_0
    move-exception v0

    .line 745
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 747
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist setSpeakerEnabled(Z)Z
    .locals 3
    .param p1, "speakerOn"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setting speakerOn = :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->log(Ljava/lang/String;)V

    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0, p1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->setSpeakerOn(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    goto :goto_0

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 203
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x2

    if-eqz p1, :cond_0

    .line 204
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->semSetRadioOutputPath(I)Z

    goto :goto_1

    .line 206
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->semSetRadioOutputPath(I)Z

    .line 209
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->semGetRadioOutputPath()I

    move-result v1

    if-ne v1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_2
    return v0
.end method

.method public whitelist setTunningParameter(Ljava/lang/String;I)V
    .locals 1
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    .line 780
    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->checkOnStatus()V

    .line 782
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->setIntegerTunningParameter(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 785
    goto :goto_0

    .line 783
    :catch_0
    move-exception v0

    .line 784
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 786
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist setTunningParameter(Ljava/lang/String;J)V
    .locals 1
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    .line 814
    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->checkOnStatus()V

    .line 816
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->setLongTunningParameter(Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 819
    goto :goto_0

    .line 817
    :catch_0
    move-exception v0

    .line 818
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 820
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist setTunningParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    .line 848
    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->checkOnStatus()V

    .line 850
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->setStringTunningParameter(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 853
    goto :goto_0

    .line 851
    :catch_0
    move-exception v0

    .line 852
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 854
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist setVolume(J)V
    .locals 1
    .param p1, "val"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    .line 565
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->setVolume(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 568
    goto :goto_0

    .line 566
    :catch_0
    move-exception v0

    .line 567
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 570
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist startScan()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    .line 247
    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->checkOnStatus()V

    .line 250
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->checkBusy()V

    .line 251
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->scan()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    goto :goto_0

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 256
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist tune(J)Z
    .locals 1
    .param p1, "frequency"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/media/fmradio/SemFmPlayerException;
        }
    .end annotation

    .line 468
    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->checkOnStatus()V

    .line 470
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayer;->mPlayer:Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;->tune(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    const/4 v0, 0x1

    return v0

    .line 472
    :catch_0
    move-exception v0

    .line 473
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/fmradio/SemFmPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 475
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method
