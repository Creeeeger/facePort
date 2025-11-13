.class public Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;
.super Lcom/android/internal/statusbar/IStatusBar$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field private static final MGS_ABORT_TRANSIENT:I = 0xa

.field private static final MGS_FOCUSED_DISPLAY_CHANGED:I = 0x8

.field private static final MGS_SET_WINDOW_STATE:I = 0xb

.field private static final MGS_SHOW_TRANSIENT:I = 0x9

.field private static final MSG_ANIMATE_EXPAND_NOTIFICATIONS_PANEL:I = 0xd

.field private static final MSG_ANIMATE_EXPAND_SETTINGS_PANEL:I = 0xe

.field private static final MSG_COLLAPSE_PANELS:I = 0xc

.field private static final MSG_DISABLE:I = 0x7

.field private static final MSG_HANDLE_SYSTEM_KEY:I = 0x4

.field private static final MSG_HIDE_RECENT_APPS:I = 0x2

.field private static final MSG_SEND_KEYEVENT_DESKTOP_TASKBAR:I = 0x6

.field private static final MSG_SHOW_RECENT_APPS:I = 0x1

.field private static final MSG_SYSTEM_BAR_CHANGED:I = 0x5

.field private static final MSG_TOGGLE_KEYBOARD_SHORTCUTS_MENU:I = 0xf

.field private static final MSG_TOGGLE_RECENT_APPS:I = 0x3


# instance fields
.field private mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueueCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue$H;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue$H;-><init>(Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;Landroid/os/Looper;Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue$1;)V

    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic access$100(Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public abortTransient(II)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v1

    iput p1, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iput p2, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/16 p1, 0xa

    invoke-virtual {p0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public addCallback(Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueueCallbacks;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addQsTile(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

.method public addQsTileToFrontOrEnd(Landroid/content/ComponentName;Z)V
    .locals 0

    return-void
.end method

.method public animateCollapsePanels()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public animateExpandNotificationsPanel()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public animateExpandSettingsPanel(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v1, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public appTransitionCancelled(I)V
    .locals 0

    return-void
.end method

.method public appTransitionFinished(I)V
    .locals 0

    return-void
.end method

.method public appTransitionPending(I)V
    .locals 0

    return-void
.end method

.method public appTransitionStarting(IJJ)V
    .locals 0

    return-void
.end method

.method public cancelPreloadRecentApps()V
    .locals 0

    return-void
.end method

.method public cancelRequestAddTile(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public clearCallback()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public clickQsTile(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

.method public confirmImmersivePrompt()V
    .locals 0

    return-void
.end method

.method public disable(III)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v1

    iput p1, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iput p2, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    iput p3, v1, Lcom/android/internal/os/SomeArgs;->argi3:I

    iget-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    iget-object p3, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p3

    if-ne p2, p3, :cond_0

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public dismissInattentiveSleepWarning(Z)V
    .locals 0

    return-void
.end method

.method public dismissKeyboardShortcutsMenu()V
    .locals 0

    return-void
.end method

.method public dumpProto([Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    return-void
.end method

.method public handleSystemKey(Landroid/view/KeyEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public hideAuthenticationDialog(J)V
    .locals 0

    return-void
.end method

.method public hideRecentApps(ZZ)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {p0, v2, p1, p2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public hideToast(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    return-void
.end method

.method public immersiveModeChanged(IZ)V
    .locals 0

    return-void
.end method

.method public moveFocusedTaskToDesktop(I)V
    .locals 0

    return-void
.end method

.method public moveFocusedTaskToFullscreen(I)V
    .locals 0

    return-void
.end method

.method public moveFocusedTaskToStageSplit(IZ)V
    .locals 0

    return-void
.end method

.method public notifyRequestedGameToolsWin(Z)V
    .locals 0

    return-void
.end method

.method public notifyRequestedSystemKey(ZZ)V
    .locals 0

    return-void
.end method

.method public notifySamsungPayInfo(IZLandroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public onBiometricAuthenticated(I)V
    .locals 0

    return-void
.end method

.method public onBiometricError(III)V
    .locals 0

    return-void
.end method

.method public onBiometricHelp(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onCameraLaunchGestureDetected(I)V
    .locals 0

    return-void
.end method

.method public onDisplayReady(I)V
    .locals 0

    return-void
.end method

.method public onEmergencyActionLaunchGestureDetected()V
    .locals 0

    return-void
.end method

.method public onFlashlightKeyPressed(I)V
    .locals 0

    return-void
.end method

.method public onFocusedDisplayChanged(I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, p1, v1, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onProposedRotationChanged(IZ)V
    .locals 0

    return-void
.end method

.method public onRecentsAnimationStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onSystemBarAttributesChanged(II[Lcom/android/internal/view/AppearanceRegion;ZIILjava/lang/String;[Lcom/android/internal/statusbar/LetterboxDetails;)V
    .locals 1

    iget-object p8, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter p8

    :try_start_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    iput p4, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput p5, v0, Lcom/android/internal/os/SomeArgs;->argi4:I

    iput p6, v0, Lcom/android/internal/os/SomeArgs;->argi5:I

    iput-object p7, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x5

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    monitor-exit p8

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public passThroughShellCommand([Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    return-void
.end method

.method public preloadRecentApps()V
    .locals 0

    return-void
.end method

.method public registerNearbyMediaDevicesProvider(Landroid/media/INearbyMediaDevicesProvider;)V
    .locals 0

    return-void
.end method

.method public remQsTile(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

.method public removeCallback(Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueueCallbacks;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeIcon(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public requestAddTile(ILandroid/content/ComponentName;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Lcom/android/internal/statusbar/IAddTileResultCallback;)V
    .locals 0

    return-void
.end method

.method public requestAddTile(Landroid/content/ComponentName;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Lcom/android/internal/statusbar/IAddTileResultCallback;)V
    .locals 0

    return-void
.end method

.method public requestMagnificationConnection(Z)V
    .locals 0

    return-void
.end method

.method public requestTileServiceListeningState(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

.method public requestWindowMagnificationConnection(Z)V
    .locals 0

    return-void
.end method

.method public resetScheduleAutoHide()V
    .locals 0

    return-void
.end method

.method public runGcForTest()V
    .locals 0

    return-void
.end method

.method public sendKeyEventToDesktopTaskbar(Landroid/view/KeyEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public sendThreeFingerGestureKeyEvent(Landroid/view/KeyEvent;)V
    .locals 0

    return-void
.end method

.method public setBiometicContextListener(Landroid/hardware/biometrics/IBiometricContextListener;)V
    .locals 0

    return-void
.end method

.method public setBlueLightFilter(ZI)V
    .locals 0

    return-void
.end method

.method public setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 0

    return-void
.end method

.method public setImeWindowStatus(ILandroid/os/IBinder;IIZ)V
    .locals 0

    return-void
.end method

.method public setIndicatorBgColor(I)V
    .locals 0

    return-void
.end method

.method public setNavigationBarLumaSamplingEnabled(IZ)V
    .locals 0

    return-void
.end method

.method public setNavigationBarShortcut(Ljava/lang/String;Landroid/widget/RemoteViews;II)V
    .locals 0

    return-void
.end method

.method public setQsTiles([Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setSplitscreenFocus(Z)V
    .locals 0

    return-void
.end method

.method public setTopAppHidesStatusBar(Z)V
    .locals 0

    return-void
.end method

.method public setUdfpsRefreshRateCallback(Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;)V
    .locals 0

    return-void
.end method

.method public setWindowState(III)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v1

    iput p1, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iput p2, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    iput p3, v1, Lcom/android/internal/os/SomeArgs;->argi3:I

    iget-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    iget-object p3, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p3

    if-ne p2, p3, :cond_0

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public showAssistDisclosure()V
    .locals 0

    return-void
.end method

.method public showAuthenticationDialog(Landroid/hardware/biometrics/PromptInfo;Landroid/hardware/biometrics/IBiometricSysuiReceiver;[IZZIJLjava/lang/String;J)V
    .locals 0

    return-void
.end method

.method public showGlobalActionsMenu(I)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public showInattentiveSleepWarning()V
    .locals 0

    return-void
.end method

.method public showMediaOutputSwitcher(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    return-void
.end method

.method public showPictureInPictureMenu()V
    .locals 0

    return-void
.end method

.method public showPinningEnterExitToast(Z)V
    .locals 0

    return-void
.end method

.method public showPinningEscapeToast()V
    .locals 0

    return-void
.end method

.method public showRearDisplayDialog(I)V
    .locals 0

    return-void
.end method

.method public showRecentApps(Z)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, p1, v1, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public showScreenPinningRequest(I)V
    .locals 0

    return-void
.end method

.method public showShutdownUi(ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public showToast(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/CharSequence;Landroid/os/IBinder;ILandroid/app/ITransientNotificationCallback;I)V
    .locals 0

    return-void
.end method

.method public showTransient(IIZ)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v1

    iput p1, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iput p2, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    iput p3, v1, Lcom/android/internal/os/SomeArgs;->argi3:I

    iget-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    iget-object p3, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p3

    if-ne p2, p3, :cond_0

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public showWirelessChargingAnimation(I)V
    .locals 0

    return-void
.end method

.method public startAssist(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public startSearcleByHomeKey(ZZ)V
    .locals 0

    return-void
.end method

.method public startTracing()V
    .locals 0

    return-void
.end method

.method public stopTracing()V
    .locals 0

    return-void
.end method

.method public suppressAmbientDisplay(Z)V
    .locals 0

    return-void
.end method

.method public toggleKeyboardShortcutsMenu(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {p0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public toggleNotificationsPanel()V
    .locals 0

    return-void
.end method

.method public togglePanel()V
    .locals 0

    return-void
.end method

.method public toggleRecentApps()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v3, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public toggleSplitScreen()V
    .locals 0

    return-void
.end method

.method public toggleTaskbar()V
    .locals 0

    return-void
.end method

.method public unregisterNearbyMediaDevicesProvider(Landroid/media/INearbyMediaDevicesProvider;)V
    .locals 0

    return-void
.end method

.method public updateMediaTapToTransferReceiverDisplay(ILandroid/media/MediaRoute2Info;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public updateMediaTapToTransferSenderDisplay(ILandroid/media/MediaRoute2Info;Lcom/android/internal/statusbar/IUndoMediaTransferCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
