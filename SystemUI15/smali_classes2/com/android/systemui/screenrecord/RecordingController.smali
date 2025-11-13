.class public final Lcom/android/systemui/screenrecord/RecordingController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;


# instance fields
.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public mCountDownTimer:Lcom/android/systemui/screenrecord/RecordingController$3;

.field public final mDevicePolicyResolver:Ldagger/Lazy;

.field public final mFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public final mInteractiveBroadcastOption:Landroid/os/Bundle;

.field public mIsRecording:Z

.field public mIsStarting:Z

.field public final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final mMainExecutor:Ljava/util/concurrent/Executor;

.field public final mMediaProjectionMetricsLogger:Lcom/android/systemui/mediaprojection/MediaProjectionMetricsLogger;

.field public final mScreenCaptureDisabledDialogDelegate:Lcom/android/systemui/mediaprojection/devicepolicy/ScreenCaptureDisabledDialogDelegate;

.field public final mScreenRecordDialogFactory:Lcom/android/systemui/screenrecord/ScreenRecordDialogDelegate$Factory;

.field public final mScreenRecordPermissionDialogDelegateFactory:Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate$Factory;

.field protected final mStateChangeReceiver:Landroid/content/BroadcastReceiver;

.field public mStopIntent:Landroid/app/PendingIntent;

.field final mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/flags/FeatureFlags;Ldagger/Lazy;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/mediaprojection/MediaProjectionMetricsLogger;Lcom/android/systemui/mediaprojection/devicepolicy/ScreenCaptureDisabledDialogDelegate;Lcom/android/systemui/screenrecord/ScreenRecordDialogDelegate$Factory;Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate$Factory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            "Lcom/android/systemui/flags/FeatureFlags;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/settings/UserTracker;",
            "Lcom/android/systemui/mediaprojection/MediaProjectionMetricsLogger;",
            "Lcom/android/systemui/mediaprojection/devicepolicy/ScreenCaptureDisabledDialogDelegate;",
            "Lcom/android/systemui/screenrecord/ScreenRecordDialogDelegate$Factory;",
            "Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate$Factory;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/screenrecord/RecordingController;->mCountDownTimer:Lcom/android/systemui/screenrecord/RecordingController$3;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/screenrecord/RecordingController;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lcom/android/systemui/screenrecord/RecordingController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/screenrecord/RecordingController$1;-><init>(Lcom/android/systemui/screenrecord/RecordingController;)V

    iput-object v0, p0, Lcom/android/systemui/screenrecord/RecordingController;->mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    new-instance v0, Lcom/android/systemui/screenrecord/RecordingController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/screenrecord/RecordingController$2;-><init>(Lcom/android/systemui/screenrecord/RecordingController;)V

    iput-object v0, p0, Lcom/android/systemui/screenrecord/RecordingController;->mStateChangeReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/systemui/screenrecord/RecordingController;->mMainExecutor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/android/systemui/screenrecord/RecordingController;->mFlags:Lcom/android/systemui/flags/FeatureFlags;

    iput-object p4, p0, Lcom/android/systemui/screenrecord/RecordingController;->mDevicePolicyResolver:Ldagger/Lazy;

    iput-object p2, p0, Lcom/android/systemui/screenrecord/RecordingController;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iput-object p5, p0, Lcom/android/systemui/screenrecord/RecordingController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    iput-object p6, p0, Lcom/android/systemui/screenrecord/RecordingController;->mMediaProjectionMetricsLogger:Lcom/android/systemui/mediaprojection/MediaProjectionMetricsLogger;

    iput-object p7, p0, Lcom/android/systemui/screenrecord/RecordingController;->mScreenCaptureDisabledDialogDelegate:Lcom/android/systemui/mediaprojection/devicepolicy/ScreenCaptureDisabledDialogDelegate;

    iput-object p8, p0, Lcom/android/systemui/screenrecord/RecordingController;->mScreenRecordDialogFactory:Lcom/android/systemui/screenrecord/ScreenRecordDialogDelegate$Factory;

    iput-object p9, p0, Lcom/android/systemui/screenrecord/RecordingController;->mScreenRecordPermissionDialogDelegateFactory:Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate$Factory;

    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/app/BroadcastOptions;->setInteractive(Z)Landroid/app/BroadcastOptions;

    invoke-virtual {p1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/screenrecord/RecordingController;->mInteractiveBroadcastOption:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final addCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/screenrecord/RecordingController$RecordingStateChangeCallback;

    iget-object p0, p0, Lcom/android/systemui/screenrecord/RecordingController;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final cancelCountdown$1()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/screenrecord/RecordingController;->mCountDownTimer:Lcom/android/systemui/screenrecord/RecordingController$3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    goto :goto_0

    :cond_0
    const-string v0, "RecordingController"

    const-string v1, "Timer was null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/screenrecord/RecordingController;->mIsStarting:Z

    iget-object p0, p0, Lcom/android/systemui/screenrecord/RecordingController;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/screenrecord/RecordingController$RecordingStateChangeCallback;

    invoke-interface {v0}, Lcom/android/systemui/screenrecord/RecordingController$RecordingStateChangeCallback;->onCountdownEnd()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final createScreenRecordDialog(Lcom/android/systemui/flags/FeatureFlags;Ljava/lang/Runnable;)Lcom/android/systemui/statusbar/phone/SystemUIDialog;
    .locals 3

    sget-object v0, Lcom/android/systemui/flags/Flags;->WM_ENABLE_PARTIAL_SCREEN_SHARING_ENTERPRISE_POLICIES:Lcom/android/systemui/flags/ReleasedFlag;

    iget-object v1, p0, Lcom/android/systemui/screenrecord/RecordingController;->mFlags:Lcom/android/systemui/flags/FeatureFlags;

    check-cast v1, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;

    invoke-virtual {v1, v0}, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/screenrecord/RecordingController;->mDevicePolicyResolver:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/mediaprojection/devicepolicy/ScreenCaptureDevicePolicyResolver;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/mediaprojection/devicepolicy/ScreenCaptureDevicePolicyResolver;->isScreenCaptureCompletelyDisabled(Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/screenrecord/RecordingController;->mScreenCaptureDisabledDialogDelegate:Lcom/android/systemui/mediaprojection/devicepolicy/ScreenCaptureDisabledDialogDelegate;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object p2, p0, Lcom/android/systemui/mediaprojection/devicepolicy/ScreenCaptureDisabledDialogDelegate;->context:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/mediaprojection/devicepolicy/ScreenCaptureDisabledDialogDelegate;->initDialog(Landroid/app/AlertDialog;)V

    return-object p1

    :cond_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    sget-object v1, Lcom/android/systemui/mediaprojection/SessionCreationSource;->SYSTEM_UI_SCREEN_RECORDER:Lcom/android/systemui/mediaprojection/SessionCreationSource;

    iget-object v2, p0, Lcom/android/systemui/screenrecord/RecordingController;->mMediaProjectionMetricsLogger:Lcom/android/systemui/mediaprojection/MediaProjectionMetricsLogger;

    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/mediaprojection/MediaProjectionMetricsLogger;->notifyProjectionInitiated(ILcom/android/systemui/mediaprojection/SessionCreationSource;)V

    sget-object v0, Lcom/android/systemui/flags/Flags;->WM_ENABLE_PARTIAL_SCREEN_SHARING:Lcom/android/systemui/flags/ReleasedFlag;

    check-cast p1, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;

    invoke-virtual {p1, v0}, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/screenrecord/RecordingController;->mScreenRecordPermissionDialogDelegateFactory:Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate$Factory;

    invoke-interface {v1, p0, p1, v0, p2}, Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate$Factory;->create(Lcom/android/systemui/screenrecord/RecordingController;Landroid/os/UserHandle;ILjava/lang/Runnable;)Lcom/android/systemui/screenrecord/ScreenRecordPermissionDialogDelegate;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/screenrecord/RecordingController;->mScreenRecordDialogFactory:Lcom/android/systemui/screenrecord/ScreenRecordDialogDelegate$Factory;

    invoke-interface {p1, p0, p2}, Lcom/android/systemui/screenrecord/ScreenRecordDialogDelegate$Factory;->create(Lcom/android/systemui/screenrecord/RecordingController;Ljava/lang/Runnable;)Lcom/android/systemui/screenrecord/ScreenRecordDialogDelegate;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog$Delegate;->createDialog()Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    move-result-object p0

    return-object p0
.end method

.method public final declared-synchronized isRecording()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/screenrecord/RecordingController;->mIsRecording:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final removeCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/screenrecord/RecordingController$RecordingStateChangeCallback;

    iget-object p0, p0, Lcom/android/systemui/screenrecord/RecordingController;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final stopRecording$1()V
    .locals 3

    const-string v0, "RecordingController"

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/screenrecord/RecordingController;->mStopIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/screenrecord/RecordingController;->mInteractiveBroadcastOption:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/app/PendingIntent;->send(Landroid/os/Bundle;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    const-string v1, "Stop intent was null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/screenrecord/RecordingController;->updateState(Z)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error stopping: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/PendingIntent$CanceledException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public final declared-synchronized updateState(Z)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/screenrecord/RecordingController;->mIsRecording:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/screenrecord/RecordingController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    iget-object v1, p0, Lcom/android/systemui/screenrecord/RecordingController;->mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/UserTrackerImpl;->removeCallback(Lcom/android/systemui/settings/UserTracker$Callback;)V

    iget-object v0, p0, Lcom/android/systemui/screenrecord/RecordingController;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v1, p0, Lcom/android/systemui/screenrecord/RecordingController;->mStateChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/screenrecord/RecordingController;->mIsRecording:Z

    iget-object v0, p0, Lcom/android/systemui/screenrecord/RecordingController;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/screenrecord/RecordingController$RecordingStateChangeCallback;

    if-eqz p1, :cond_1

    invoke-interface {v1}, Lcom/android/systemui/screenrecord/RecordingController$RecordingStateChangeCallback;->onRecordingStart()V

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Lcom/android/systemui/screenrecord/RecordingController$RecordingStateChangeCallback;->onRecordingEnd()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_2
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method
