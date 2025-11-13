.class public final Lcom/android/systemui/volume/VolumeDialogControllerImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/VolumeDialogController;
.implements Lcom/android/systemui/Dumpable;


# static fields
.field public static final DEBUG:Z

.field public static final DEFAULT_MAX_LEVEL:I

.field public static final FLAG_SMART_VIEW_NONE:I

.field public static final SONIFICIATION_VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field public static final STREAMS:Landroid/util/ArrayMap;

.field public static final TAG:Ljava/lang/String;

.field public static mIsVolumeStarEnabled:Z


# instance fields
.field public mActiveBtDevice:Landroid/bluetooth/BluetoothDevice;

.field public final mActivityManager:Landroid/app/ActivityManager;

.field public mAllSoundMute:Z

.field public final mAudio:Landroid/media/AudioManager;

.field public final mAudioService:Landroid/media/IAudioService;

.field public final mBluetoothAdapterManager:Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

.field public final mBluetoothAudioCastWrapper:Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;

.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final mBroadcastReceiverManager:Lcom/android/systemui/volume/util/BroadcastReceiverManager;

.field public final mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

.field public final mCaptioningManager:Ljava/util/concurrent/atomic/AtomicReference;

.field public final mContext:Landroid/content/Context;

.field public mCurrentUserTrackerCallback:Lcom/android/systemui/settings/UserTracker$Callback;

.field public final mDesktopManagerWrapper:Lcom/android/systemui/volume/util/DesktopManagerWrapper;

.field public mDeviceInteractive:Z

.field public final mDeviceStateManagerWrapper:Lcom/android/systemui/volume/util/DeviceStateManagerWrapper;

.field public final mDisplayManagerWrapper:Lcom/android/systemui/volume/util/DisplayManagerWrapper;

.field public final mHasVibrator:Z

.field public mIsAudioMirroringEnabled:Z

.field public mIsBudsTogetherEnabled:Z

.field public mIsDLNAEnabled:Ljava/lang/Boolean;

.field public mIsDisallowAdjustVolume:Z

.field public mIsMusicShareEnabled:Z

.field public mIsSupportTvVolumeControl:Ljava/lang/Boolean;

.field public mIsVibrating:Z

.field public mIsVolumeDialogShowing:Z

.field public mKeyDown:Z

.field public final mKeyguardManager:Landroid/app/KeyguardManager;

.field public final mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

.field public mLastToggledRingerOn:J

.field public final mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field public final mMediaSessions:Lcom/android/settingslib/volume/MediaSessions;

.field public final mMediaSessionsCallbacksW:Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;

.field public final mNoMan:Landroid/app/NotificationManager;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mRingerModeObservers:Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers;

.field public final mRouter2Manager:Landroid/media/MediaRouter2Manager;

.field public mShowA11yStream:Z

.field public mShowSafetyWarning:Z

.field public mShowVolumeDialog:Z

.field public mSmartViewFlag:I

.field public final mSoundAssistantChecker:Lcom/android/systemui/volume/soundassistant/SoundAssistantChecker;

.field public final mSoundAssistantManagerWrapper:Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;

.field public final mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

.field public mUserActivityListener:Lcom/android/systemui/volume/VolumeDialogControllerImpl$UserActivityListener;

.field public final mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;

.field public final mVibrator:Lcom/android/systemui/statusbar/VibratorHelper;

.field public final mVolumeController:Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;

.field public final mVolumeManager:Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;

.field public mVolumePolicy:Landroid/media/VolumePolicy;

.field public final mWakefullnessLifecycleObserver:Lcom/android/systemui/volume/VolumeDialogControllerImpl$2;

.field public final mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

.field public final mWorker:Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;


# direct methods
.method public static -$$Nest$mupdateRemoteFixedVolumeSession(Lcom/android/systemui/volume/VolumeDialogControllerImpl;ILandroid/media/session/MediaController$PlaybackInfo;)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Landroid/media/session/MediaController$PlaybackInfo;->getVolumeControl()I

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->streamStateW(I)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object p0

    iget-boolean v0, p0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->remoteFixedVolume:Z

    if-ne v0, p2, :cond_1

    goto :goto_1

    :cond_1
    iput-boolean p2, p0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->remoteFixedVolume:Z

    sget-boolean p0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "updateRemoteFixedVolumeSession stream="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " remoteFixedVolume="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method

.method public static -$$Nest$mupdateStreamVolume(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->getLastAudibleStreamVolume(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateStreamLevelW(II)Z

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/Util;->logTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->DEBUG:Z

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->SONIFICIATION_VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->STREAMS:Landroid/util/ArrayMap;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f131451

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v5, 0x7f131487

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v5, 0x7f131486

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v3, 0x7f131483

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f131443

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f131485

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f1312d1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f1312ca

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f1312d2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f1312c6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f131482

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f131484

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xf

    sput v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->DEFAULT_MAX_LEVEL:I

    const/4 v0, -0x1

    sput v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->FLAG_SMART_VIEW_NONE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/util/RingerModeTracker;Lcom/android/systemui/util/concurrency/ThreadFactory;Landroid/media/AudioManager;Landroid/app/NotificationManager;Lcom/android/systemui/statusbar/VibratorHelper;Landroid/media/IAudioService;Landroid/view/accessibility/AccessibilityManager;Landroid/content/pm/PackageManager;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Landroid/app/KeyguardManager;Landroid/app/ActivityManager;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/volume/util/SALoggingWrapper;Lcom/android/systemui/volume/util/BroadcastReceiverManager;Lcom/android/systemui/volume/util/DisplayManagerWrapper;Lcom/android/systemui/volume/util/DesktopManagerWrapper;Lcom/android/systemui/knox/KnoxStateMonitor;Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;Lcom/android/systemui/volume/util/DeviceStateManagerWrapper;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;Lcom/android/systemui/volume/VolumeDependency;Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p11

    move-object/from16 v3, p14

    move-object/from16 v4, p25

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v5, Lcom/android/systemui/volume/VolumeDialogControllerImpl$Receiver;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$Receiver;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)V

    new-instance v7, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v7, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCaptioningManager:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v8, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    invoke-direct {v8}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;-><init>()V

    iput-object v8, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    new-instance v8, Lcom/android/systemui/plugins/VolumeDialogController$State;

    invoke-direct {v8}, Lcom/android/systemui/plugins/VolumeDialogController$State;-><init>()V

    iput-object v8, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    const/4 v8, 0x1

    iput-boolean v8, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mDeviceInteractive:Z

    new-instance v9, Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;

    invoke-direct {v9, v0, v6}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)V

    iput-object v9, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mVolumeController:Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v10, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsSupportTvVolumeControl:Ljava/lang/Boolean;

    iput-object v10, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsDLNAEnabled:Ljava/lang/Boolean;

    const/4 v10, 0x0

    iput-object v10, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mActiveBtDevice:Landroid/bluetooth/BluetoothDevice;

    new-instance v11, Lcom/android/systemui/volume/VolumeDialogControllerImpl$1;

    invoke-direct {v11, v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$1;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)V

    iput-object v11, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCurrentUserTrackerCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    new-instance v11, Lcom/android/systemui/volume/VolumeDialogControllerImpl$2;

    invoke-direct {v11, v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$2;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)V

    new-instance v12, Lcom/android/systemui/volume/VolumeDialogControllerImpl$3;

    invoke-direct {v12, v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$3;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)V

    iput-object v12, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    iput-object v13, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v14, p10

    iput-object v14, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    iput-object v2, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    new-array v14, v6, [Ljava/lang/Object;

    const/4 v15, 0x5

    invoke-static {v15, v14}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    const-string v14, "VolumeDialogControllerImpl"

    move-object/from16 v15, p4

    invoke-interface {v15, v14}, Lcom/android/systemui/util/concurrency/ThreadFactory;->buildLooperOnNewThread(Ljava/lang/String;)Landroid/os/Looper;

    move-result-object v15

    new-instance v8, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    invoke-direct {v8, v0, v15}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;Landroid/os/Looper;)V

    iput-object v8, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWorker:Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    invoke-static {v13}, Landroid/media/MediaRouter2Manager;->getInstance(Landroid/content/Context;)Landroid/media/MediaRouter2Manager;

    move-result-object v10

    iput-object v10, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mRouter2Manager:Landroid/media/MediaRouter2Manager;

    new-instance v10, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;

    invoke-direct {v10, v0, v13}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;Landroid/content/Context;)V

    iput-object v10, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mMediaSessionsCallbacksW:Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;

    new-instance v6, Lcom/android/settingslib/volume/MediaSessions;

    invoke-direct {v6, v13, v15, v10}, Lcom/android/settingslib/volume/MediaSessions;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/settingslib/volume/MediaSessions$Callbacks;)V

    iput-object v6, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mMediaSessions:Lcom/android/settingslib/volume/MediaSessions;

    iput-object v1, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    move-object/from16 v6, p6

    iput-object v6, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mNoMan:Landroid/app/NotificationManager;

    new-instance v10, Lcom/android/systemui/volume/VolumeDialogControllerImpl$SettingObserver;

    invoke-direct {v10, v0, v8}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$SettingObserver;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;Landroid/os/Handler;)V

    new-instance v15, Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers;

    invoke-interface/range {p3 .. p3}, Lcom/android/systemui/util/RingerModeTracker;->getRingerMode()Landroidx/lifecycle/LiveData;

    move-result-object v16

    move-object/from16 v6, v16

    check-cast v6, Lcom/android/systemui/util/RingerModeLiveData;

    invoke-interface/range {p3 .. p3}, Lcom/android/systemui/util/RingerModeTracker;->getRingerModeInternal()Landroidx/lifecycle/LiveData;

    move-result-object v16

    move-object/from16 v1, v16

    check-cast v1, Lcom/android/systemui/util/RingerModeLiveData;

    invoke-direct {v15, v0, v6, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;Lcom/android/systemui/util/RingerModeLiveData;Lcom/android/systemui/util/RingerModeLiveData;)V

    iput-object v15, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mRingerModeObservers:Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers;

    iget-object v1, v15, Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers;->mRingerMode:Lcom/android/systemui/util/RingerModeLiveData;

    invoke-virtual {v1}, Lcom/android/systemui/util/RingerModeLiveData;->getValue()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v4, v15, Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    move-object/from16 p1, v13

    const/4 v13, -0x1

    if-eq v6, v13, :cond_0

    iget-object v13, v4, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iput v6, v13, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeExternal:I

    :cond_0
    iget-object v6, v15, Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers;->mRingerModeObserver:Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers$1;

    invoke-virtual {v1, v6}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    iget-object v1, v15, Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers;->mRingerModeInternal:Lcom/android/systemui/util/RingerModeLiveData;

    invoke-virtual {v1}, Lcom/android/systemui/util/RingerModeLiveData;->getValue()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v13, -0x1

    if-eq v6, v13, :cond_1

    iget-object v4, v4, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iput v6, v4, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    :cond_1
    iget-object v4, v15, Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers;->mRingerModeInternalObserver:Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers$2;

    invoke-virtual {v1, v4}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    move-object/from16 v1, p2

    iput-object v1, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v1, v10, Lcom/android/systemui/volume/VolumeDialogControllerImpl$SettingObserver;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v4, v10, Lcom/android/systemui/volume/VolumeDialogControllerImpl$SettingObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v6, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, v10, Lcom/android/systemui/volume/VolumeDialogControllerImpl$SettingObserver;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v4, v10, Lcom/android/systemui/volume/VolumeDialogControllerImpl$SettingObserver;->ZEN_MODE_CONFIG_URI:Landroid/net/Uri;

    invoke-virtual {v1, v4, v6, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, v10, Lcom/android/systemui/volume/VolumeDialogControllerImpl$SettingObserver;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v4, v10, Lcom/android/systemui/volume/VolumeDialogControllerImpl$SettingObserver;->ALL_SOUND_MUTE_URI:Landroid/net/Uri;

    invoke-virtual {v1, v4, v6, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.media.STREAM_MUTE_CHANGED_ACTION"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.os.action.ACTION_EFFECTS_SUPPRESSOR_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.bluetooth.a2dp.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "com.samsung.intent.action.WIFI_DISPLAY_SOURCE_STATE"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "com.samsung.bluetooth.a2dp.intent.action.DUAL_PLAY_MODE_ENABLED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, v5, Lcom/android/systemui/volume/VolumeDialogControllerImpl$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget-object v6, v4, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v4, v4, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWorker:Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    invoke-virtual {v6, v5, v1, v4}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiverWithHandler(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/Handler;)V

    move-object/from16 v1, p7

    iput-object v1, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mVibrator:Lcom/android/systemui/statusbar/VibratorHelper;

    invoke-virtual/range {p7 .. p7}, Lcom/android/systemui/statusbar/VibratorHelper;->hasVibrator()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mHasVibrator:Z

    move-object/from16 v1, p8

    iput-object v1, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudioService:Landroid/media/IAudioService;

    move-object/from16 v1, p12

    iput-object v1, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mKeyguardManager:Landroid/app/KeyguardManager;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mActivityManager:Landroid/app/ActivityManager;

    iput-object v3, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    new-instance v1, Landroid/os/HandlerExecutor;

    invoke-direct {v1, v8}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    check-cast v3, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v3, v12, v1}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v3}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserContext()Landroid/content/Context;

    move-result-object v1

    const-class v4, Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v7, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual/range {p15 .. p15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v1, p15

    invoke-static {v1, v14, v0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable$default(Lcom/android/systemui/dump/DumpManager;Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    invoke-virtual/range {p9 .. p9}, Landroid/view/accessibility/AccessibilityManager;->isAccessibilityVolumeStreamActive()Z

    move-result v1

    invoke-virtual {v9, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;->setA11yMode(I)V

    invoke-virtual {v2, v11}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mDesktopManagerWrapper:Lcom/android/systemui/volume/util/DesktopManagerWrapper;

    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mBroadcastReceiverManager:Lcom/android/systemui/volume/util/BroadcastReceiverManager;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mDisplayManagerWrapper:Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    new-instance v1, Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mBluetoothAudioCastWrapper:Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mBluetoothAdapterManager:Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mSoundAssistantManagerWrapper:Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;

    sget-boolean v1, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_VOLUME_DIALOG:Z

    if-eqz v1, :cond_2

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mDeviceStateManagerWrapper:Lcom/android/systemui/volume/util/DeviceStateManagerWrapper;

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mDeviceStateManagerWrapper:Lcom/android/systemui/volume/util/DeviceStateManagerWrapper;

    :goto_0
    iget-object v1, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCurrentUserTrackerCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    new-instance v4, Landroid/os/HandlerExecutor;

    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v4, v5}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v3, v1, v4}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    const-class v1, Lcom/android/systemui/volume/soundassistant/SoundAssistantChecker;

    move-object/from16 v3, p26

    invoke-virtual {v3, v1}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/soundassistant/SoundAssistantChecker;

    iput-object v1, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mSoundAssistantChecker:Lcom/android/systemui/volume/soundassistant/SoundAssistantChecker;

    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mVolumeManager:Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "all_sound_off"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    :goto_1
    iput-boolean v6, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAllSoundMute:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->getDisallowAdjustVolume()Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsDisallowAdjustVolume:Z

    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "zen_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    new-instance v3, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;

    const/4 v5, 0x3

    move-object/from16 v6, p5

    invoke-virtual {v6, v5}, Landroid/media/AudioManager;->semGetFineVolume(I)I

    move-result v5

    invoke-virtual/range {p5 .. p5}, Landroid/media/AudioManager;->semGetCurrentDeviceType()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->isBluetoothLeBroadcastEnabled()Z

    move-result v7

    iget-boolean v8, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAllSoundMute:Z

    const/4 v9, 0x1

    if-ne v2, v9, :cond_4

    invoke-virtual/range {p6 .. p6}, Landroid/app/NotificationManager;->getConsolidatedNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v10

    iget v10, v10, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v10, v10, 0x40

    if-nez v10, :cond_4

    move v4, v9

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->isSmartViewEnabled()Z

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->isMusicShareEnabled()Z

    move-result v10

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsDisallowAdjustVolume:Z

    const/16 v11, 0x96

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object/from16 p0, v3

    move/from16 p1, v5

    move/from16 p2, v13

    move/from16 p3, v11

    move/from16 p4, v6

    move/from16 p5, v12

    move/from16 p6, v7

    move/from16 p7, v8

    move/from16 p8, v2

    move/from16 p9, v4

    move/from16 p10, v9

    move/from16 p11, v10

    move/from16 p12, v0

    invoke-direct/range {p0 .. p12}, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;-><init>(IIIIZZZIZZZZ)V

    iput-object v3, v1, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->volumeModel:Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateVolumeState "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SoundCraft.VolumeManager"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p25 .. p25}, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->updateCurrentVolume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "updateVolumeBar failed on init"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method public static isMediaStream(I)Z
    .locals 1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/16 v0, 0x15

    if-eq p0, v0, :cond_1

    const/16 v0, 0x16

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public final addCallback(Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->mCallbackMap:Ljava/util/Map;

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mShowA11yStream:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;->onAccessibilityModeChanged(Ljava/lang/Boolean;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public final areCaptionsEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCaptioningManager:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/CaptioningManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->isSystemAudioCaptioningEnabled()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final checkRoutedToBluetoothW(I)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const v2, 0x280003a0

    const v3, 0x400000c

    const/4 v4, 0x3

    if-ne p1, v4, :cond_6

    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v5, v4}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v4

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    and-int/2addr v2, v4

    if-eqz v2, :cond_2

    const v2, 0x20000002

    if-ne v4, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mBluetoothAdapterManager:Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

    invoke-virtual {v2}, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->getConnectedLeDevices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    move v2, v0

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->isBluetoothLeBroadcastEnabled()Z

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iput-boolean v4, v5, Lcom/android/systemui/plugins/VolumeDialogController$State;->isLeBroadcasting:Z

    if-eqz v4, :cond_4

    if-eqz v2, :cond_3

    move v1, v0

    goto :goto_2

    :cond_3
    const/4 v1, 0x2

    :cond_4
    :goto_2
    iput v1, v5, Lcom/android/systemui/plugins/VolumeDialogController$State;->broadcastMode:I

    invoke-virtual {p0, p1, v3}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateStreamRoutedToHeadsetW(IZ)Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->isMusicShareEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateStreamRoutedToBluetoothW(IZ)Z

    move-result p0

    :goto_3
    or-int/2addr p0, v1

    move v1, p0

    goto/16 :goto_a

    :cond_5
    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateStreamRoutedToBluetoothW(IZ)Z

    move-result p0

    goto :goto_3

    :cond_6
    const/16 v4, 0x15

    if-ne p1, v4, :cond_c

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->semGetPinDevice()I

    move-result v4

    and-int/2addr v3, v4

    if-eqz v3, :cond_7

    move v3, v0

    goto :goto_4

    :cond_7
    move v3, v1

    :goto_4
    and-int/2addr v2, v4

    if-eqz v2, :cond_8

    move v2, v0

    goto :goto_5

    :cond_8
    move v2, v1

    :goto_5
    const v5, 0x8000

    and-int/2addr v4, v5

    if-eqz v4, :cond_9

    move v4, v0

    goto :goto_6

    :cond_9
    move v4, v1

    :goto_6
    invoke-virtual {p0, p1, v3}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateStreamRoutedToHeadsetW(IZ)Z

    move-result v3

    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateStreamRoutedToBluetoothW(IZ)Z

    move-result v2

    or-int/2addr v2, v3

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->streamStateW(I)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object p0

    iget-boolean v3, p0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->appMirroring:Z

    if-ne v3, v4, :cond_a

    move v0, v1

    goto :goto_7

    :cond_a
    iput-boolean v4, p0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->appMirroring:Z

    sget-boolean p0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz p0, :cond_b

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateStreamRoutedToAppMirroring stream="

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " appMirroring="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_7
    or-int v1, v2, v0

    goto :goto_a

    :cond_c
    const/16 v3, 0x17

    if-eq p1, v3, :cond_f

    const/16 v3, 0x16

    if-ne p1, v3, :cond_d

    goto :goto_9

    :cond_d
    if-nez p1, :cond_10

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v3, v1}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v3

    and-int/2addr v2, v3

    if-eqz v2, :cond_e

    goto :goto_8

    :cond_e
    move v0, v1

    :goto_8
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateStreamRoutedToBluetoothW(IZ)Z

    move-result v1

    goto :goto_a

    :cond_f
    :goto_9
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateStreamRoutedToBluetoothW(IZ)Z

    move-result v1

    :cond_10
    :goto_a
    return v1
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 12
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    const-string p2, "VolumeDialogControllerImpl state:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "  mVolumePolicy: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mVolumePolicy:Landroid/media/VolumePolicy;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string p2, "  mState: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Lcom/android/systemui/plugins/VolumeDialogController$State;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "  mHasVibrator: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mHasVibrator:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    iget-object p2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mMediaSessionsCallbacksW:Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;

    iget-object p2, p2, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->mRemoteStreams:Ljava/util/HashMap;

    monitor-enter p2

    :try_start_0
    const-string v0, "  mRemoteStreams: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mMediaSessionsCallbacksW:Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->mRemoteStreams:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :catch_0
    :goto_0
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string p2, "  mShowA11yStream: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mShowA11yStream:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mMediaSessions:Lcom/android/settingslib/volume/MediaSessions;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "MediaSessions state:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "  mInit: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/settingslib/volume/MediaSessions;->mInit:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "  mRecords.size: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/settingslib/volume/MediaSessions;->mRecords:Ljava/util/Map;

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    iget-object p0, p0, Lcom/android/settingslib/volume/MediaSessions;->mRecords:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p2, 0x0

    :cond_0
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    add-int/lit8 p2, p2, 0x1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/volume/MediaSessions$MediaControllerRecord;

    iget-object v0, v0, Lcom/android/settingslib/volume/MediaSessions$MediaControllerRecord;->controller:Landroid/media/session/MediaController;

    const-string v1, "  Controller "

    const-string v2, ": "

    invoke-static {p2, v1, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getFlags()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v4

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v5

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v6

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getQueue()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getQueueTitle()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getRatingType()I

    move-result v9

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getSessionActivity()Landroid/app/PendingIntent;

    move-result-object v0

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "    PlaybackState: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/android/settingslib/volume/Util;->playbackStateToString(Landroid/media/session/PlaybackState;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v10, "    PlaybackInfo: "

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/android/settingslib/volume/Util;->playbackInfoToString(Landroid/media/session/MediaController$PlaybackInfo;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz v4, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v10, "  MediaMetadata.desc="

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/media/MediaMetadata;->getDescription()Landroid/media/MediaDescription;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "    RatingType: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "    Flags: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      "

    if-eqz v1, :cond_2

    const-string v3, "    Extras:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, "="

    invoke-static {v2, v4, v6}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    if-eqz v8, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "    QueueTitle: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    if-eqz v7, :cond_4

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "    Queue:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/session/MediaSession$QueueItem;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    if-eqz v5, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "    sessionActivity: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    return-void

    :goto_4
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public final getAudioManager()Landroid/media/AudioManager;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    return-object p0
.end method

.method public final getAudioManagerStreamMaxVolume(I)I
    .locals 2

    const/16 v0, 0x14

    sget v1, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->DEFAULT_MAX_LEVEL:I

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->isSmartViewEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mDisplayManagerWrapper:Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    invoke-virtual {p0}, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->getDisplayMaxVolume()I

    move-result v1

    goto :goto_1

    :cond_0
    const/16 v0, 0x15

    if-eq p1, v0, :cond_3

    const/16 v0, 0x16

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x17

    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    goto :goto_1

    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    :cond_4
    :goto_1
    return v1
.end method

.method public final getAudioManagerStreamMinVolume(I)I
    .locals 2

    const/16 v0, 0x14

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->isSmartViewEnabled()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mDisplayManagerWrapper:Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    iget p1, p0, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->minSmartViewVol:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/android/systemui/volume/util/SystemServiceExtension;->INSTANCE:Lcom/android/systemui/volume/util/SystemServiceExtension;

    iget-object v0, p0, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->context:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/systemui/volume/util/SystemServiceExtension;->getDisplayManager(Landroid/content/Context;)Landroid/hardware/display/DisplayManager;

    move-result-object p1

    const-string v0, "mavo"

    invoke-virtual {p1, v0}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayConfiguration(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->minSmartViewVol:I

    :cond_0
    iget v1, p0, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->minSmartViewVol:I

    goto :goto_1

    :cond_1
    const/16 v0, 0x15

    if-eq p1, v0, :cond_4

    const/16 v0, 0x16

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    const/16 v0, 0x17

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamMinVolumeInt(I)I

    move-result v1

    goto :goto_1

    :cond_4
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamMinVolumeInt(I)I

    move-result v1

    :cond_5
    :goto_1
    return v1
.end method

.method public final getCaptionsComponentState(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWorker:Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final getCaptionsEnabledState(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWorker:Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    const/16 v0, 0x12

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final getDisallowAdjustVolume()Z
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    const-string v0, "no_adjust_volume"

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p0

    const-string v0, "getDisallowAdjustVolume enabled = "

    invoke-static {v0, p0}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$allowFingerprintOnCurrentOccludingActivityChanged$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public final getLastAudibleStreamVolume(I)I
    .locals 6

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->isMediaStream(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-boolean v3, v2, Lcom/android/systemui/plugins/VolumeDialogController$State;->dualAudio:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mBluetoothAdapterManager:Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

    iget-boolean v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$State;->isLeBroadcasting:Z

    invoke-virtual {v0, v2}, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->getConnectedDevices(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    new-instance v3, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v3, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x3

    const/16 v5, 0x15

    if-eqz v0, :cond_6

    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->isMultiSoundBT()Z

    move-result v3

    if-eqz v3, :cond_3

    if-ne p1, v2, :cond_1

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {p0, v2}, Landroid/media/AudioManager;->semGetFineVolume(I)I

    move-result p0

    goto :goto_5

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    if-ne p1, v5, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_1
    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    goto :goto_2

    :cond_2
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :goto_2
    invoke-virtual {p0, p1, v2}, Landroid/media/AudioManager;->semGetFineVolume(Landroid/bluetooth/BluetoothDevice;I)I

    move-result p0

    goto :goto_5

    :cond_3
    if-ne p1, v5, :cond_4

    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->semGetPinDevice()I

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {p0, v2, p1}, Landroid/media/AudioManager;->getFineVolume(II)I

    move-result p0

    goto :goto_5

    :cond_4
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    if-ne p1, v2, :cond_5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_3
    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    goto :goto_4

    :cond_5
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_3

    :goto_4
    invoke-virtual {p0, p1, v2}, Landroid/media/AudioManager;->semGetFineVolume(Landroid/bluetooth/BluetoothDevice;I)I

    move-result p0

    goto :goto_5

    :cond_6
    if-ne p1, v5, :cond_7

    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->semGetPinDevice()I

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {p0, v2, p1}, Landroid/media/AudioManager;->getFineVolume(II)I

    move-result p0

    goto :goto_5

    :cond_7
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {p0, v2}, Landroid/media/AudioManager;->semGetFineVolume(I)I

    move-result p0

    :goto_5
    mul-int/lit8 v1, p0, 0xa

    goto :goto_6

    :cond_8
    const/16 v0, 0x14

    if-ne p1, v0, :cond_9

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->isSmartViewEnabled()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mDisplayManagerWrapper:Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    iget v1, p0, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->displayCurrentVolume:I

    goto :goto_6

    :cond_9
    const/16 v0, 0x17

    if-ne p1, v0, :cond_a

    iget-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsBudsTogetherEnabled:Z

    if-eqz p1, :cond_b

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mBluetoothAudioCastWrapper:Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;

    iget-object p0, p0, Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;->service:Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;

    if-eqz p0, :cond_b

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;->getAudioSharingDeviceVolume(Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)I

    move-result v1

    goto :goto_6

    :cond_a
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    :cond_b
    :goto_6
    return v1
.end method

.method public final getState()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWorker:Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final hasVibrator()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mHasVibrator:Z

    return p0
.end method

.method public final isAODVolumePanel()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-boolean p0, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->aodEnabled:Z

    return p0
.end method

.method public final isAudioMirroring()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsAudioMirroringEnabled:Z

    return p0
.end method

.method public final isBluetoothLeBroadcastEnabled()Z
    .locals 1

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->isEnabled(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public final isBudsTogetherEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsBudsTogetherEnabled:Z

    return p0
.end method

.method public final isDLNAEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsDLNAEnabled:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final isLeBroadcasting()Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->isBluetoothLeBroadcastEnabled()Z

    move-result p0

    return p0
.end method

.method public final isMultiSoundBT()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mSoundAssistantManagerWrapper:Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;->satMananger:Lcom/samsung/android/media/SemSoundAssistantManager;

    invoke-virtual {v2}, Lcom/samsung/android/media/SemSoundAssistantManager;->isMultiSoundOn()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;->satMananger:Lcom/samsung/android/media/SemSoundAssistantManager;

    invoke-virtual {v1}, Lcom/samsung/android/media/SemSoundAssistantManager;->getMultiSoundDevice()I

    move-result v1

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->semGetCurrentDeviceType()I

    move-result p0

    if-eq p0, v1, :cond_0

    const/16 p0, 0x8

    if-ne v1, p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final isMusicShareEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsMusicShareEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsBudsTogetherEnabled:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isSmartViewEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsDLNAEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsSupportTvVolumeControl:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final isVolumeStarEnabled()Z
    .locals 0

    sget-boolean p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsVolumeStarEnabled:Z

    return p0
.end method

.method public final notifyVisible(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsVolumeDialogShowing:Z

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-boolean v1, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->aodEnabled:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    iput-boolean v2, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->aodEnabled:Z

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWorker:Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    const/16 v0, 0xc

    invoke-virtual {p0, v0, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final onVolumeChangedW(II)Z
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p2

    iget-object v2, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mDesktopManagerWrapper:Lcom/android/systemui/volume/util/DesktopManagerWrapper;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/android/systemui/volume/util/DesktopManagerWrapper;->desktopManager:Lcom/android/systemui/util/DesktopManager;

    invoke-interface {v2}, Lcom/android/systemui/util/DesktopManager;->isStandalone()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsVolumeStarEnabled:Z

    if-nez v2, :cond_0

    return v3

    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->shouldShowUI(I)Z

    move-result v2

    and-int/lit16 v4, v1, 0x1000

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    move v4, v5

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    and-int/lit16 v6, v1, 0x800

    if-eqz v6, :cond_2

    move v6, v5

    goto :goto_1

    :cond_2
    move v6, v3

    :goto_1
    and-int/lit16 v7, v1, 0x80

    if-eqz v7, :cond_3

    move v7, v5

    goto :goto_2

    :cond_3
    move v7, v3

    :goto_2
    const/high16 v8, 0x40000

    and-int/2addr v8, v1

    if-eqz v8, :cond_4

    move v8, v5

    goto :goto_3

    :cond_4
    move v8, v3

    :goto_3
    iget-object v9, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iput-boolean v8, v9, Lcom/android/systemui/plugins/VolumeDialogController$State;->fixedSCOVolume:Z

    const/high16 v8, 0x4000000

    and-int/2addr v8, v1

    if-eqz v8, :cond_5

    move v8, v5

    goto :goto_4

    :cond_5
    move v8, v3

    :goto_4
    iput-boolean v8, v9, Lcom/android/systemui/plugins/VolumeDialogController$State;->remoteMic:Z

    const/high16 v8, 0x800000

    and-int/2addr v8, v1

    if-eqz v8, :cond_6

    const/16 v8, 0x15

    goto :goto_5

    :cond_6
    move/from16 v8, p1

    :goto_5
    const/high16 v11, 0x400000

    and-int/2addr v11, v1

    if-eqz v11, :cond_7

    sget v8, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->FLAG_SMART_VIEW_NONE:I

    iput v8, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mSmartViewFlag:I

    const/16 v8, 0x14

    invoke-virtual {v0, v8}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->streamStateW(I)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v11

    invoke-virtual {v0, v8}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->getAudioManagerStreamMinVolume(I)I

    move-result v12

    iput v12, v11, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMin:I

    invoke-virtual {v0, v8}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->streamStateW(I)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v11

    invoke-virtual {v0, v8}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->getAudioManagerStreamMaxVolume(I)I

    move-result v12

    iput v12, v11, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMax:I

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->isBluetoothLeBroadcastEnabled()Z

    move-result v11

    iput-boolean v11, v9, Lcom/android/systemui/plugins/VolumeDialogController$State;->isLeBroadcasting:Z

    iget-object v12, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mBluetoothAdapterManager:Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

    invoke-virtual {v12, v11}, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->getConnectedDevices(Z)Ljava/util/List;

    move-result-object v11

    const/high16 v13, 0x80000

    and-int/2addr v13, v1

    const/4 v14, 0x2

    if-eqz v13, :cond_8

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    if-ne v13, v14, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->shouldDualAudioUIEnabled()Z

    move-result v13

    if-eqz v13, :cond_8

    move v13, v5

    goto :goto_6

    :cond_8
    move v13, v3

    :goto_6
    iput-boolean v13, v9, Lcom/android/systemui/plugins/VolumeDialogController$State;->dualAudio:Z

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_9

    const/4 v13, 0x0

    goto :goto_7

    :cond_9
    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/bluetooth/BluetoothDevice;

    :goto_7
    iget-boolean v10, v9, Lcom/android/systemui/plugins/VolumeDialogController$State;->dualAudio:Z

    if-eqz v10, :cond_a

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v10

    if-lt v10, v14, :cond_a

    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/bluetooth/BluetoothDevice;

    goto :goto_8

    :cond_a
    const/4 v10, 0x0

    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->isMultiSoundBT()Z

    move-result v11

    invoke-static {v11}, Lcom/android/systemui/volume/util/StreamUtil;->getMusicStream(Z)I

    move-result v11

    invoke-virtual {v0, v11}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->streamStateW(I)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v11

    const/16 v14, 0x16

    invoke-virtual {v0, v14}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->streamStateW(I)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v15

    iget-object v14, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v14}, Landroid/media/AudioManager;->semGetCurrentDeviceType()I

    move-result v14

    const/16 v3, 0x1a

    const/16 v5, 0x17

    if-ne v14, v5, :cond_c

    invoke-virtual {v12}, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->getHearingAidDevices()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_b

    goto :goto_a

    :cond_b
    :goto_9
    const/4 v14, 0x1

    goto :goto_c

    :cond_c
    :goto_a
    if-eq v14, v3, :cond_e

    iget-boolean v14, v9, Lcom/android/systemui/plugins/VolumeDialogController$State;->isLeBroadcasting:Z

    if-eqz v14, :cond_d

    goto :goto_b

    :cond_d
    const/4 v14, 0x0

    goto :goto_d

    :cond_e
    :goto_b
    invoke-virtual {v12}, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->getConnectedLeHearingAidDevice()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_d

    goto :goto_9

    :goto_c
    iput-boolean v14, v11, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToHearingAid:Z

    goto :goto_e

    :goto_d
    iput-boolean v14, v11, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToHearingAid:Z

    :goto_e
    if-eqz v13, :cond_f

    invoke-virtual {v13}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v14

    goto :goto_f

    :cond_f
    const/4 v14, 0x0

    :goto_f
    if-eqz v10, :cond_10

    invoke-virtual {v10}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v3, v17

    goto :goto_10

    :cond_10
    const/4 v3, 0x0

    :goto_10
    iget-object v5, v11, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->bluetoothDeviceAddress:Ljava/lang/String;

    invoke-static {v14, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    iget-object v5, v15, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->bluetoothDeviceAddress:Ljava/lang/String;

    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    const/4 v3, 0x0

    goto :goto_11

    :cond_11
    iput-object v14, v11, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->bluetoothDeviceAddress:Ljava/lang/String;

    iput-object v3, v15, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->bluetoothDeviceAddress:Ljava/lang/String;

    const/4 v3, 0x1

    :goto_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->isMultiSoundBT()Z

    move-result v5

    invoke-static {v5}, Lcom/android/systemui/volume/util/StreamUtil;->getMusicStream(Z)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->streamStateW(I)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v5

    const/16 v11, 0x16

    invoke-virtual {v0, v11}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->streamStateW(I)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->isMusicShareEnabled()Z

    move-result v11

    if-eqz v11, :cond_12

    iget-object v11, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mBluetoothAudioCastWrapper:Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;

    invoke-virtual {v11}, Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;->getCastDeviceConnectedName()Ljava/lang/String;

    move-result-object v11

    :goto_12
    const/4 v15, 0x0

    goto/16 :goto_19

    :cond_12
    iget-boolean v11, v9, Lcom/android/systemui/plugins/VolumeDialogController$State;->isLeBroadcasting:Z

    if-eqz v11, :cond_13

    sget-object v11, Lcom/android/systemui/volume/util/BluetoothCommonUtil;->INSTANCE:Lcom/android/systemui/volume/util/BluetoothCommonUtil;

    invoke-virtual {v12}, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->getConnectedLeDevices()Ljava/util/List;

    move-result-object v12

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v12}, Lcom/android/systemui/volume/util/BluetoothCommonUtil;->mapNames(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    goto :goto_16

    :cond_13
    iget-object v11, v12, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->audioManager:Lcom/android/systemui/volume/util/AudioManagerWrapper;

    iget-object v11, v11, Lcom/android/systemui/volume/util/AudioManagerWrapper;->am:Landroid/media/AudioManager;

    invoke-virtual {v11}, Landroid/media/AudioManager;->semGetCurrentDeviceType()I

    move-result v11

    const/16 v15, 0x17

    if-eq v11, v15, :cond_18

    const/16 v15, 0x1a

    if-eq v11, v15, :cond_17

    const/16 v15, 0x1b

    if-eq v11, v15, :cond_17

    iget-object v11, v12, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->a2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v11, :cond_14

    sget-object v12, Lcom/android/systemui/volume/util/BluetoothA2dpUtil;->INSTANCE:Lcom/android/systemui/volume/util/BluetoothA2dpUtil;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Lcom/android/systemui/volume/util/BluetoothCommonUtil;->INSTANCE:Lcom/android/systemui/volume/util/BluetoothCommonUtil;

    invoke-static {v11}, Lcom/android/systemui/volume/util/BluetoothA2dpUtil;->getOrderConnectedDevices(Landroid/bluetooth/BluetoothA2dp;)Ljava/util/List;

    move-result-object v11

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11}, Lcom/android/systemui/volume/util/BluetoothCommonUtil;->mapNames(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    goto :goto_13

    :cond_14
    const/4 v11, 0x0

    :goto_13
    if-eqz v11, :cond_15

    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    move-result v12

    const/4 v15, 0x1

    xor-int/2addr v12, v15

    goto :goto_14

    :cond_15
    const/4 v12, 0x0

    :goto_14
    if-eqz v12, :cond_16

    goto :goto_15

    :cond_16
    const/4 v11, 0x0

    :goto_15
    if-nez v11, :cond_19

    sget-object v11, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    goto :goto_16

    :cond_17
    sget-object v11, Lcom/android/systemui/volume/util/BluetoothCommonUtil;->INSTANCE:Lcom/android/systemui/volume/util/BluetoothCommonUtil;

    invoke-virtual {v12}, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->getConnectedLeDevices()Ljava/util/List;

    move-result-object v12

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v12}, Lcom/android/systemui/volume/util/BluetoothCommonUtil;->mapNames(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    goto :goto_16

    :cond_18
    sget-object v11, Lcom/android/systemui/volume/util/BluetoothCommonUtil;->INSTANCE:Lcom/android/systemui/volume/util/BluetoothCommonUtil;

    invoke-virtual {v12}, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->getHearingAidDevices()Ljava/util/List;

    move-result-object v12

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v12}, Lcom/android/systemui/volume/util/BluetoothCommonUtil;->mapNames(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    :cond_19
    :goto_16
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_1b

    iget-object v11, v5, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->bluetoothDeviceName:Ljava/lang/String;

    if-eqz v11, :cond_1a

    const/4 v12, 0x0

    iput-object v12, v5, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->bluetoothDeviceName:Ljava/lang/String;

    iput-object v12, v14, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->bluetoothDeviceName:Ljava/lang/String;

    :goto_17
    const/4 v5, 0x1

    goto :goto_1a

    :cond_1a
    :goto_18
    const/4 v5, 0x0

    goto :goto_1a

    :cond_1b
    const/4 v12, 0x0

    const/4 v15, 0x0

    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v15, v16

    check-cast v15, Ljava/lang/String;

    iget-boolean v12, v9, Lcom/android/systemui/plugins/VolumeDialogController$State;->dualAudio:Z

    if-eqz v12, :cond_1c

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    move-object/from16 v17, v15

    const/4 v15, 0x2

    if-ne v12, v15, :cond_1d

    const/4 v12, 0x1

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v15, v11

    check-cast v15, Ljava/lang/String;

    move-object/from16 v11, v17

    goto :goto_19

    :cond_1c
    move-object/from16 v17, v15

    :cond_1d
    move-object/from16 v11, v17

    goto/16 :goto_12

    :goto_19
    iget-object v12, v5, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->bluetoothDeviceName:Ljava/lang/String;

    invoke-static {v11, v12}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1e

    iget-object v12, v14, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->bluetoothDeviceName:Ljava/lang/String;

    invoke-static {v15, v12}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1e

    goto :goto_18

    :cond_1e
    iput-object v11, v5, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->bluetoothDeviceName:Ljava/lang/String;

    iput-object v15, v14, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->bluetoothDeviceName:Ljava/lang/String;

    goto :goto_17

    :goto_1a
    or-int/2addr v3, v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->isMultiSoundBT()Z

    move-result v5

    invoke-static {v5}, Lcom/android/systemui/volume/util/StreamUtil;->getMusicStream(Z)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->streamStateW(I)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v5

    const/16 v11, 0x16

    invoke-virtual {v0, v11}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->streamStateW(I)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v12

    invoke-virtual {v0, v13, v5}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateStreamRoutedToBudsW(Landroid/bluetooth/BluetoothDevice;Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)V

    invoke-virtual {v0, v10, v12}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateStreamRoutedToBudsW(Landroid/bluetooth/BluetoothDevice;Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)V

    if-eqz v13, :cond_1f

    invoke-static {v13}, Lcom/android/systemui/volume/util/BluetoothIconUtil;->isHomeMini(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v11

    if-eqz v11, :cond_1f

    const/4 v11, 0x1

    goto :goto_1b

    :cond_1f
    const/4 v11, 0x0

    :goto_1b
    iput-boolean v11, v5, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToHomeMini:Z

    if-eqz v10, :cond_20

    invoke-static {v10}, Lcom/android/systemui/volume/util/BluetoothIconUtil;->isHomeMini(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v5

    if-eqz v5, :cond_20

    const/4 v5, 0x1

    goto :goto_1c

    :cond_20
    const/4 v5, 0x0

    :goto_1c
    iput-boolean v5, v12, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToHomeMini:Z

    const/16 v5, 0x16

    invoke-virtual {v0, v5}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->getLastAudibleStreamVolume(I)I

    move-result v10

    invoke-virtual {v0, v5, v10}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateStreamLevelW(II)Z

    move-result v10

    or-int/2addr v3, v10

    invoke-virtual {v0, v5}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->checkRoutedToBluetoothW(I)Z

    move-result v5

    or-int/2addr v3, v5

    const/4 v5, 0x3

    if-eqz v2, :cond_21

    invoke-virtual {v0, v8}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->checkRoutedToBluetoothW(I)Z

    move-result v10

    or-int/2addr v3, v10

    if-ne v8, v5, :cond_21

    const/16 v10, 0x15

    invoke-virtual {v0, v10}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->checkRoutedToBluetoothW(I)Z

    move-result v10

    or-int/2addr v3, v10

    :cond_21
    sget-boolean v10, Lcom/android/systemui/BasicRune;->VOLUME_HOME_IOT:Z

    if-eqz v10, :cond_26

    invoke-virtual {v0, v8}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->streamStateW(I)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v11

    invoke-virtual {v0, v8}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->getLastAudibleStreamVolume(I)I

    move-result v12

    iget v13, v11, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMin:I

    invoke-static {v8}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->isMediaStream(I)Z

    move-result v14

    if-eqz v14, :cond_22

    div-int/lit8 v14, v12, 0x64

    goto :goto_1d

    :cond_22
    move v14, v12

    :goto_1d
    if-ne v13, v14, :cond_23

    iget v13, v11, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-ne v13, v12, :cond_23

    const/4 v14, 0x2

    goto :goto_1f

    :cond_23
    iget v13, v11, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMax:I

    invoke-static {v8}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->isMediaStream(I)Z

    move-result v14

    if-eqz v14, :cond_24

    div-int/lit8 v14, v12, 0x64

    goto :goto_1e

    :cond_24
    move v14, v12

    :goto_1e
    if-ne v13, v14, :cond_25

    iget v13, v11, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-ne v13, v12, :cond_25

    move v14, v5

    goto :goto_1f

    :cond_25
    iget v11, v11, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-ge v11, v12, :cond_26

    const/4 v14, 0x1

    goto :goto_1f

    :cond_26
    const/4 v14, 0x0

    :goto_1f
    if-eqz v2, :cond_27

    invoke-virtual {v0, v8}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateActiveStreamW(I)Z

    move-result v11

    or-int/2addr v3, v11

    :cond_27
    invoke-virtual {v0, v8}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->getLastAudibleStreamVolume(I)I

    move-result v11

    invoke-virtual {v0, v8, v11}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateStreamLevelW(II)Z

    move-result v12

    or-int/2addr v3, v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->isMultiSoundBT()Z

    move-result v12

    invoke-static {v12}, Lcom/android/systemui/volume/util/StreamUtil;->getMusicStream(Z)I

    move-result v12

    invoke-virtual {v0, v12}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->streamStateW(I)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v12

    const-string v13, "onVolumeChangedW stream = "

    const-string v15, ", flags = "

    const-string v5, ", lastAudibleStreamVolume = "

    invoke-static {v8, v1, v13, v15, v5}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", changed = "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ", showUI = "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ", dualAudio = "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v13, v9, Lcom/android/systemui/plugins/VolumeDialogController$State;->dualAudio:Z

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ", musicStreamState="

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v12, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    invoke-static {v12, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    if-eqz v3, :cond_28

    invoke-virtual {v5, v9}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onStateChanged(Lcom/android/systemui/plugins/VolumeDialogController$State;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateVolumeBar()V

    :cond_28
    if-eqz v2, :cond_29

    iget-object v12, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v12}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v12

    iget-object v13, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v13}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result v13

    iget-object v15, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    move/from16 v16, v3

    const/4 v3, 0x1

    invoke-virtual {v15, v3, v12, v13}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onShowRequested(IZI)V

    goto :goto_20

    :cond_29
    move/from16 v16, v3

    :goto_20
    if-eqz v6, :cond_2a

    invoke-virtual {v5}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onShowVibrateHint()V

    :cond_2a
    if-eqz v7, :cond_2b

    invoke-virtual {v5}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onShowSilentHint()V

    :cond_2b
    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_2c

    const/4 v3, 0x1

    goto :goto_21

    :cond_2c
    const/4 v3, 0x0

    :goto_21
    if-eqz v10, :cond_30

    if-eqz v2, :cond_31

    if-nez v3, :cond_2d

    const/4 v3, 0x3

    if-eq v14, v3, :cond_2d

    const/4 v3, 0x2

    if-ne v14, v3, :cond_2e

    :cond_2d
    invoke-virtual {v5, v8, v4, v14}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onPlaySound(IZI)V

    :cond_2e
    invoke-static {v8}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->isMediaStream(I)Z

    move-result v3

    if-eqz v3, :cond_2f

    div-int/lit8 v3, v11, 0x64

    goto :goto_22

    :cond_2f
    move v3, v11

    :goto_22
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.android.server.LightsService.action.LED_CONTROL_WHITE_LED_PATTERN"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "details"

    const-string v10, "Volume:Light"

    invoke-virtual {v6, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "mode"

    const/16 v10, 0xa

    invoke-virtual {v6, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v7, "extra"

    invoke-virtual {v6, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_23

    :cond_30
    if-eqz v3, :cond_31

    invoke-virtual {v5, v8, v4}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onPlaySound(IZ)V

    :cond_31
    :goto_23
    invoke-virtual {v0, v8}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->streamStateW(I)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v3

    iget v6, v3, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    iget v7, v3, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMin:I

    if-ne v6, v7, :cond_32

    const/high16 v7, 0x10000

    and-int/2addr v7, v1

    if-eqz v7, :cond_32

    const/4 v14, -0x1

    goto :goto_24

    :cond_32
    invoke-static {v8}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->isMediaStream(I)Z

    move-result v7

    iget v3, v3, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMax:I

    if-eqz v7, :cond_33

    mul-int/lit8 v3, v3, 0x64

    :cond_33
    if-ne v6, v3, :cond_34

    const/high16 v3, 0x20000

    and-int/2addr v1, v3

    if-eqz v1, :cond_34

    const/4 v14, 0x1

    goto :goto_24

    :cond_34
    const/4 v14, 0x0

    :goto_24
    if-eqz v4, :cond_38

    if-eqz v14, :cond_37

    if-eqz v2, :cond_37

    iget-boolean v1, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mKeyDown:Z

    if-nez v1, :cond_38

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mKeyDown:Z

    iget-boolean v2, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsVibrating:Z

    if-nez v2, :cond_36

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    if-ne v0, v1, :cond_35

    iget v0, v9, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_35

    goto :goto_25

    :cond_35
    const/4 v3, 0x0

    goto :goto_26

    :cond_36
    :goto_25
    move v3, v1

    :goto_26
    invoke-virtual {v5, v1, v3}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onKeyEvent(ZZ)V

    goto :goto_27

    :cond_37
    iget-boolean v1, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mKeyDown:Z

    if-eqz v1, :cond_38

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mKeyDown:Z

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsVibrating:Z

    invoke-virtual {v5, v1, v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onKeyEvent(ZZ)V

    :cond_38
    :goto_27
    if-eqz v16, :cond_39

    if-eqz v4, :cond_39

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1, v0}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onVolumeChangedFromKey()V

    :cond_39
    return v16
.end method

.method public final removeCallback(Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->mCallbackMap:Ljava/util/Map;

    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final scheduleTouchFeedback()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mLastToggledRingerOn:J

    return-void
.end method

.method public final setActiveStream(I)V
    .locals 2

    const/16 v0, 0xb

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWorker:Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final setCaptionsEnabledState(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWorker:Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    const/16 v0, 0x13

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final setRingerMode(IZ)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWorker:Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final setSafeVolumeDialogShowing(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudioService:Landroid/media/IAudioService;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mVolumeController:Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;

    invoke-interface {v0, p0, p1}, Landroid/media/IAudioService;->notifySafetyVolumeDialogVisible(Landroid/media/IVolumeController;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final setStreamVolume(II)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWorker:Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final setStreamVolume(IILjava/lang/String;)V
    .locals 5

    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->isMediaStream(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    div-int/lit8 p2, p2, 0xa

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-boolean v4, v3, Lcom/android/systemui/plugins/VolumeDialogController$State;->dualAudio:Z

    if-eqz v4, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mBluetoothAdapterManager:Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

    iget-boolean v3, v3, Lcom/android/systemui/plugins/VolumeDialogController$State;->isLeBroadcasting:Z

    invoke-virtual {v0, v3}, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->getConnectedDevices(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    new-instance v4, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v4, v3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v3, 0x3

    if-eqz v0, :cond_3

    iget-object p1, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p3}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {p0, p1, v3, p2, v1}, Landroid/media/AudioManager;->semSetFineVolume(Landroid/bluetooth/BluetoothDevice;III)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {p0, v3, p2, v1}, Landroid/media/AudioManager;->semSetFineVolume(III)V

    goto :goto_1

    :cond_3
    const/16 p3, 0x15

    if-ne p1, p3, :cond_4

    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->semGetPinDevice()I

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {p0, v3, p2, v1, p1}, Landroid/media/AudioManager;->setFineVolume(IIII)V

    goto :goto_1

    :cond_4
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {p0, v3, p2, v1}, Landroid/media/AudioManager;->semSetFineVolume(III)V

    goto :goto_1

    :cond_5
    const/16 p3, 0x17

    if-ne p1, p3, :cond_7

    iget-boolean p3, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsBudsTogetherEnabled:Z

    if-eqz p3, :cond_8

    iget-object p3, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mBluetoothAudioCastWrapper:Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;

    iget-object p3, p3, Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;->service:Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;

    if-eqz p3, :cond_6

    invoke-virtual {p3, v2, p2}, Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;->setAudioSharingDeviceVolume(Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;I)Z

    :cond_6
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->onVolumeChangedW(II)Z

    goto :goto_1

    :cond_7
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {p0, p1, p2, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_8
    :goto_1
    return-void
.end method

.method public final setStreamVolumeDualAudio(IILjava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWorker:Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public shouldDualAudioUIEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->semGetCurrentDeviceType()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mSoundAssistantManagerWrapper:Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;

    if-eqz p0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;->satMananger:Lcom/samsung/android/media/SemSoundAssistantManager;

    invoke-virtual {v1}, Lcom/samsung/android/media/SemSoundAssistantManager;->isMultiSoundOn()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;->satMananger:Lcom/samsung/android/media/SemSoundAssistantManager;

    invoke-virtual {p0}, Lcom/samsung/android/media/SemSoundAssistantManager;->getMultiSoundDevice()I

    move-result p0

    if-eq v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final shouldShowUI(I)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    if-eqz v1, :cond_1

    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object v1, v1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    if-eqz v1, :cond_0

    iget-boolean v1, v1, Lcom/android/systemui/knox/CustomSdkMonitor;->mVolumePanelEnabledState:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    const-string p1, "KnoxStateMonitor : Disable VolumeDialog"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    :goto_0
    sget-boolean v1, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_VOLUME_DIALOG:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mDeviceStateManagerWrapper:Lcom/android/systemui/volume/util/DeviceStateManagerWrapper;

    if-eqz v1, :cond_2

    iget-boolean v1, v1, Lcom/android/systemui/volume/util/DeviceStateManagerWrapper;->isFolded:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mShowVolumeDialog:Z

    if-eqz v1, :cond_2

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget v1, v1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-boolean v3, v3, Lcom/android/systemui/plugins/VolumeDialogController$State;->aodEnabled:Z

    if-eqz v3, :cond_4

    iget-boolean p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mShowVolumeDialog:Z

    if-eqz p0, :cond_3

    and-int/lit8 p0, p1, 0x1

    if-eqz p0, :cond_3

    move v0, v2

    :cond_3
    return v0

    :cond_4
    if-eqz v1, :cond_5

    const/4 v3, 0x3

    if-eq v1, v3, :cond_5

    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mDeviceInteractive:Z

    if-eqz v1, :cond_5

    and-int/2addr p1, v2

    if-eqz p1, :cond_5

    iget-boolean p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mShowVolumeDialog:Z

    if-eqz p0, :cond_5

    move v0, v2

    :cond_5
    return v0
.end method

.method public final streamStateW(I)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-object v0, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;-><init>()V

    iget-object p0, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public final supportTvVolumeControl()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsSupportTvVolumeControl:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final updateActiveStreamW(I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v1, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->activeStream:I

    if-ne p1, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iput p1, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->activeStream:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    sget-object v1, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string/jumbo v2, "updateActiveStreamW "

    invoke-static {p1, v2, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/16 v2, 0x64

    if-ge p1, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    :goto_0
    const/16 v2, 0x15

    if-ne p1, v2, :cond_3

    const/16 p1, 0x2713

    :cond_3
    const/16 v2, 0x17

    if-eq p1, v2, :cond_4

    const/16 v2, 0x14

    if-eq p1, v2, :cond_4

    const/16 v2, 0x16

    if-ne p1, v2, :cond_5

    :cond_4
    const/4 p1, 0x3

    :cond_5
    if-eqz v0, :cond_6

    const-string v0, "forceVolumeControlStream "

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public final updateEffectsSuppressorW(Landroid/content/ComponentName;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-object v1, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->effectsSuppressor:Landroid/content/ComponentName;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    iput-object p1, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->effectsSuppressor:Landroid/content/ComponentName;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez p1, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    const-string v1, ""

    invoke-static {p0, v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v1, :cond_2

    goto :goto_0

    :catch_0
    :cond_2
    move-object p0, p1

    :goto_0
    iput-object p0, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->effectsSuppressorName:Ljava/lang/String;

    iget-object p0, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->effectsSuppressor:Landroid/content/ComponentName;

    iget-object p1, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->effectsSuppressorName:Ljava/lang/String;

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const/16 p1, 0xe

    invoke-static {p1, p0}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final updateRingerModeInternalW(I)Z
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v1, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    if-ne p1, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsVibrating:Z

    if-nez v2, :cond_1

    iput-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsVibrating:Z

    new-instance v2, Lcom/android/systemui/volume/VolumeDialogControllerImpl$$ExternalSyntheticLambda1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    const-wide/16 v3, 0x320

    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWorker:Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    invoke-virtual {v5, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    iput p1, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/16 v2, 0xb

    invoke-static {v2, p1}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    iget p1, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mLastToggledRingerOn:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    cmp-long p1, v2, v4

    if-gez p1, :cond_2

    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudioService:Landroid/media/IAudioService;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast p0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result p0

    const/4 v0, 0x5

    invoke-interface {p1, v0, p0}, Landroid/media/IAudioService;->playSoundEffect(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return v1
.end method

.method public final updateStreamLevelW(II)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->streamStateW(I)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object p0

    iget v0, p0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-ne v0, p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iput p2, p0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const/16 p1, 0xa

    invoke-static {p1, p0}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    :goto_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final updateStreamMuteW(IZ)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->streamStateW(I)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v0

    iget-boolean v1, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    if-ne v1, p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iput-boolean p2, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xf

    invoke-static {v1, v0}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    :goto_0
    if-eqz p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-ne p1, p2, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mRingerModeObservers:Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers;

    iget-object p1, p1, Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers;->mRingerModeInternal:Lcom/android/systemui/util/RingerModeLiveData;

    invoke-virtual {p1}, Lcom/android/systemui/util/RingerModeLiveData;->getValue()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateRingerModeInternalW(I)Z

    :cond_2
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final updateStreamNameMusicShare()V
    .locals 3

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->streamStateW(I)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->isMusicShareEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f131484

    goto :goto_0

    :cond_0
    iget v2, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->name:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->nameRes:Ljava/lang/String;

    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateStreamNameMusicShare "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->isMusicShareEnabled()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public final updateStreamRoutedToBluetoothW(IZ)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->streamStateW(I)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object p0

    iget-boolean v0, p0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToBluetooth:Z

    if-ne v0, p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iput-boolean p2, p0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToBluetooth:Z

    sget-boolean p0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "updateStreamRoutedToBluetoothW stream="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " routedToBluetooth="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final updateStreamRoutedToBudsW(Landroid/bluetooth/BluetoothDevice;Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/android/systemui/volume/util/BluetoothIconUtil;->isBuds(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput-boolean v2, p2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToBuds:Z

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/android/systemui/volume/util/BluetoothIconUtil;->isBuds3(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mSoundAssistantChecker:Lcom/android/systemui/volume/soundassistant/SoundAssistantChecker;

    iget-boolean p0, p0, Lcom/android/systemui/volume/soundassistant/SoundAssistantChecker;->isNeedToChangeBuds3IconToBtIcon:Z

    if-nez p0, :cond_1

    move v0, v1

    :cond_1
    iput-boolean v0, p2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToBuds3:Z

    return-void
.end method

.method public final updateStreamRoutedToHeadsetW(IZ)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->streamStateW(I)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object p0

    iget-boolean v0, p0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToHeadset:Z

    if-ne v0, p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iput-boolean p2, p0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToHeadset:Z

    sget-boolean p0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "updateStreamRoutedToHeadsetW stream="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " routedToHeadset="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final updateVolumeBar()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mVolumeManager:Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;

    iget-object v2, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    :try_start_0
    iget-boolean v3, v2, Lcom/android/systemui/plugins/VolumeDialogController$State;->isLeBroadcasting:Z

    const/16 v4, 0x8

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    iget v3, v2, Lcom/android/systemui/plugins/VolumeDialogController$State;->broadcastMode:I

    if-ne v3, v5, :cond_1

    iget-object v3, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mBluetoothAdapterManager:Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

    invoke-virtual {v3}, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->getConnectedLeHearingAidDevice()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0x17

    :goto_0
    move v10, v3

    goto :goto_1

    :cond_0
    move v10, v4

    goto :goto_1

    :cond_1
    iget-object v3, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->semGetCurrentDeviceType()I

    move-result v3

    goto :goto_0

    :goto_1
    new-instance v3, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;

    const/4 v6, 0x3

    if-ne v10, v4, :cond_2

    iget-object v4, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mActiveBtDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v4, :cond_2

    iget-object v7, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v7, v4, v6}, Landroid/media/AudioManager;->semGetFineVolume(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v4

    :goto_2
    move v7, v4

    goto :goto_3

    :cond_2
    iget-object v4, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v4, v6}, Landroid/media/AudioManager;->semGetFineVolume(I)I

    move-result v4

    goto :goto_2

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->isBluetoothLeBroadcastEnabled()Z

    move-result v12

    iget-boolean v13, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAllSoundMute:Z

    iget v14, v2, Lcom/android/systemui/plugins/VolumeDialogController$State;->zenMode:I

    if-ne v14, v5, :cond_3

    iget-boolean v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowMedia:Z

    if-eqz v2, :cond_3

    :goto_4
    move v15, v5

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_6

    :cond_3
    const/4 v5, 0x0

    goto :goto_4

    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->isSmartViewEnabled()Z

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->isMusicShareEnabled()Z

    move-result v17

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsDisallowAdjustVolume:Z

    const/16 v9, 0x96

    const/4 v11, 0x1

    const/4 v8, 0x0

    move-object v6, v3

    move/from16 v18, v0

    invoke-direct/range {v6 .. v18}, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;-><init>(IIIIZZZIZZZZ)V

    iput-object v3, v1, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->volumeModel:Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateVolumeState "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SoundCraft.VolumeManager"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->updateCurrentVolume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :goto_6
    sget-object v1, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "updateVolumeBar failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_7
    return-void
.end method

.method public final updateZenConfig()Z
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mNoMan:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getConsolidatedNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    iget v1, v0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v2, v1, 0x20

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    and-int/lit8 v5, v1, 0x40

    if-nez v5, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_2

    move v1, v4

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_2
    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->areAllPriorityOnlyRingerSoundsMuted(Landroid/app/NotificationManager$Policy;)Z

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-boolean v6, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowAlarms:Z

    if-ne v6, v2, :cond_3

    iget-boolean v6, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowMedia:Z

    if-ne v6, v5, :cond_3

    iget-boolean v6, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowRinger:Z

    if-ne v6, v0, :cond_3

    iget-boolean v6, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowSystem:Z

    if-ne v6, v1, :cond_3

    return v3

    :cond_3
    iput-boolean v2, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowAlarms:Z

    iput-boolean v5, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowMedia:Z

    iput-boolean v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowSystem:Z

    iput-boolean v0, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowRinger:Z

    const-string p0, "disallowAlarms="

    const-string v3, " disallowMedia="

    const-string v6, " disallowSystem="

    invoke-static {p0, v3, v6, v2, v5}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, " disallowRinger="

    invoke-static {p0, v1, v2, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/16 v0, 0x11

    invoke-static {v0, p0}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    return v4
.end method

.method public final updateZenModeW()Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "zen_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->zenMode:I

    if-ne v1, v0, :cond_0

    return v2

    :cond_0
    iput v0, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->zenMode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/16 v0, 0xd

    invoke-static {v0, p0}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final userActivity()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWorker:Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final vibrate(Landroid/os/VibrationEffect;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mVibrator:Lcom/android/systemui/statusbar/VibratorHelper;

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->SONIFICIATION_VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/VibratorHelper;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    return-void
.end method
