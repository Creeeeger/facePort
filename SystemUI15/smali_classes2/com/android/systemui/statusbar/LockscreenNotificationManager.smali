.class public final Lcom/android/systemui/statusbar/LockscreenNotificationManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;
.implements Lcom/samsung/android/view/SemWindowManager$FoldStateListener;


# static fields
.field public static mCurrentNotificationType:I


# instance fields
.field public mBarState:I

.field public final mCallbacks:Ljava/util/ArrayList;

.field public final mContext:Landroid/content/Context;

.field public final mCoverCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public mCurrentOrientation:I

.field public mCurrentUserTrackerCallback:Lcom/android/systemui/settings/UserTracker$Callback;

.field public final mHandler:Lcom/android/systemui/statusbar/LockscreenNotificationManager$LockscreenNotificationMgrHandler;

.field public mIsCovered:Z

.field public mIsFolded:Z

.field public mIsFolderStateOpen:Z

.field public final mIsKeyguardSupportLandscapePhone:Z

.field public final mLock:Ljava/lang/Object;

.field public mLockScreenNotificationStateListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;

.field public final mLogger:Lcom/android/systemui/statusbar/LockscreenNotificationManagerLogger;

.field public final mNotificationSettingUri:Landroid/net/Uri;

.field public mSemDisplayDeviceType:I

.field public mSettingNotificationType:I

.field private final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private final mSettingsListenerForNotificationStyle:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field public final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmSettingsListenerForNotificationStyle(Lcom/android/systemui/statusbar/LockscreenNotificationManager;)Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mSettingsListenerForNotificationStyle:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/util/SettingsHelper;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/LockscreenNotificationManagerLogger;Lcom/android/systemui/settings/UserTracker;Landroid/os/Handler;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mCallbacks:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$LockscreenNotificationMgrHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/statusbar/LockscreenNotificationManager$LockscreenNotificationMgrHandler;-><init>(Lcom/android/systemui/statusbar/LockscreenNotificationManager;Landroid/os/Looper;I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mHandler:Lcom/android/systemui/statusbar/LockscreenNotificationManager$LockscreenNotificationMgrHandler;

    const-string v0, "lockscreen_minimizing_notification"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mNotificationSettingUri:Landroid/net/Uri;

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mIsCovered:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mIsFolded:Z

    new-instance v1, Lcom/android/systemui/statusbar/LockscreenNotificationManager$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/LockscreenNotificationManager$1;-><init>(Lcom/android/systemui/statusbar/LockscreenNotificationManager;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mSettingsListenerForNotificationStyle:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    new-instance v3, Lcom/android/systemui/statusbar/LockscreenNotificationManager$4;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/LockscreenNotificationManager$4;-><init>(Lcom/android/systemui/statusbar/LockscreenNotificationManager;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mCoverCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iput-object p1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object p3, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iput-object p5, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mLogger:Lcom/android/systemui/statusbar/LockscreenNotificationManagerLogger;

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result p5

    const/4 v4, 0x1

    if-eqz p5, :cond_0

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result p5

    if-nez p5, :cond_0

    move p5, v4

    goto :goto_0

    :cond_0
    move p5, v2

    :goto_0
    iput-boolean p5, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mIsKeyguardSupportLandscapePhone:Z

    sget-boolean p5, Lcom/android/systemui/LsRune;->LOCKUI_SUB_DISPLAY_LOCK:Z

    if-eqz p5, :cond_1

    sget-object p5, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v5, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {p5, v5}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/android/systemui/keyguard/DisplayLifecycle;

    new-instance v6, Lcom/android/systemui/statusbar/LockscreenNotificationManager$2;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/LockscreenNotificationManager$2;-><init>(Lcom/android/systemui/statusbar/LockscreenNotificationManager;)V

    invoke-virtual {p5, v6}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    sget-object p5, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {p5, v5}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-boolean p5, p5, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    iput-boolean p5, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mIsFolderStateOpen:Z

    :cond_1
    invoke-interface {p2, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    check-cast p8, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {p8, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->onConfigChanged(Landroid/content/res/Configuration;)V

    new-array p1, v4, [Landroid/net/Uri;

    aput-object v0, p1, v2

    invoke-virtual {p3, v1, p1}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/LockscreenNotificationManager$1;->onChanged(Landroid/net/Uri;)V

    invoke-virtual {p4, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p2, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {p1, p2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    new-instance p1, Lcom/android/systemui/statusbar/LockscreenNotificationManager$3;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/LockscreenNotificationManager$3;-><init>(Lcom/android/systemui/statusbar/LockscreenNotificationManager;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mCurrentUserTrackerCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    new-instance p2, Landroid/os/HandlerExecutor;

    invoke-direct {p2, p7}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    check-cast p6, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p6, p1, p2}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    sget-boolean p1, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_NOTIFICATION_COMMON:Z

    if-nez p1, :cond_2

    sget-boolean p1, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_NOTIFICATION:Z

    if-eqz p1, :cond_3

    :cond_2
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Lcom/samsung/android/view/SemWindowManager;->registerFoldStateListener(Lcom/samsung/android/view/SemWindowManager$FoldStateListener;Landroid/os/Handler;)V

    :cond_3
    return-void
.end method

.method public static isNotificationIconsOnlyShowing()Z
    .locals 3

    sget v0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mCurrentNotificationType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method public final addCallback(Lcom/android/systemui/statusbar/LockscreenNotificationManager$Callback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 3

    iget v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mCurrentOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const-string v2, "LockscreenNotificationManager"

    if-eq v0, v1, :cond_0

    iput v1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mCurrentOrientation:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Orientation updated : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mCurrentOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->updateNotificationType()V

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mSemDisplayDeviceType:I

    iget p1, p1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    if-eq v0, p1, :cond_2

    iput p1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mSemDisplayDeviceType:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Fold state updated : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mSemDisplayDeviceType:I

    invoke-static {v0, v2, p1}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iget p1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mSemDisplayDeviceType:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mIsFolded:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->updateNotificationType()V

    :cond_2
    return-void
.end method

.method public final onFoldStateChanged(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "FOLD "

    goto :goto_0

    :cond_0
    const-string v0, "UNFOLD "

    :goto_0
    const-string v1, " FOLD STATE - "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockscreenNotificationManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mIsFolded:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mIsFolded:Z

    :cond_1
    return-void
.end method

.method public final onStateChanged(I)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mBarState:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mBarState:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "BarState updated : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mBarState:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LockscreenNotificationManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->updateNotificationType()V

    :cond_0
    return-void
.end method

.method public final onTableModeChanged(Z)V
    .locals 0

    return-void
.end method

.method public final updateNotificationType()V
    .locals 6

    sget v0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mCurrentNotificationType:I

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mIsKeyguardSupportLandscapePhone:Z

    const/4 v2, 0x3

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mCurrentOrientation:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mIsFolderStateOpen:Z

    if-nez v1, :cond_3

    iget v1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mSettingNotificationType:I

    if-eqz v1, :cond_2

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    if-ne v1, v3, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    :cond_1
    move v1, v0

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v2

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mSettingNotificationType:I

    :goto_1
    if-eq v1, v0, :cond_4

    sput v1, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mCurrentNotificationType:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mHandler:Lcom/android/systemui/statusbar/LockscreenNotificationManager$LockscreenNotificationMgrHandler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mHandler:Lcom/android/systemui/statusbar/LockscreenNotificationManager$LockscreenNotificationMgrHandler;

    sget v3, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mCurrentNotificationType:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mLockScreenNotificationStateListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->onLockScreenNotiStateChanged()V

    goto :goto_2

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_4
    :goto_2
    return-void
.end method
