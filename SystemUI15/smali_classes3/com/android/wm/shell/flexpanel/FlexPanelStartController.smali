.class public final Lcom/android/wm/shell/flexpanel/FlexPanelStartController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final FLEX_PANEL_DISALLOWED_ACTIVITIES:[Ljava/lang/String;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDesktopMode:Z

.field public mFlexModePanelEnabled:Z

.field public final mHandler:Lcom/android/wm/shell/flexpanel/FlexPanelStartController$H;

.field public mIsDelayWithAutoPip:Z

.field public mIsFolded:Z

.field public mIsImeShowing:Z

.field public mIsKeyguardVisible:Z

.field public mIsNavBarHidden:Z

.field public mIsQuickPanelShowing:Z

.field public mIsTableMode:Z

.field public mIsTaskBarAppsEnabled:Z

.field public mLastFullscreenPackage:Ljava/lang/String;

.field public mMwEnabled:Z

.field public mNavBarGestureEnabled:Z

.field public mOnRecentsAnimation:Z

.field public mPendingLastAutoRunPackage:Ljava/lang/String;

.field public mRotation:I

.field public final mSemStatusBarManager:Landroid/app/SemStatusBarManager;

.field public mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

.field public mTargetTask:Landroid/app/ActivityManager$RunningTaskInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "com.android.settings.password.ConfirmLockPassword"

    const-string v1, "com.android.settings.password.ConfirmDeviceCredentialActivity$InternalActivity"

    const-string v2, "com.android.settings.password.ConfirmLockPattern"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->FLEX_PANEL_DISALLOWED_ACTIVITIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mTargetTask:Landroid/app/ActivityManager$RunningTaskInfo;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mIsNavBarHidden:Z

    iput-boolean v1, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mIsImeShowing:Z

    iput-boolean v1, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mIsQuickPanelShowing:Z

    iput-boolean v1, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mIsTaskBarAppsEnabled:Z

    iput-boolean v1, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mIsDelayWithAutoPip:Z

    iput-object p1, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/wm/shell/flexpanel/FlexPanelStartController$H;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/wm/shell/flexpanel/FlexPanelStartController$H;-><init>(Lcom/android/wm/shell/flexpanel/FlexPanelStartController;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mHandler:Lcom/android/wm/shell/flexpanel/FlexPanelStartController$H;

    const-string/jumbo v3, "sem_statusbar"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/SemStatusBarManager;

    iput-object v3, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mSemStatusBarManager:Landroid/app/SemStatusBarManager;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v3

    iput v3, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mRotation:I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "flex_mode_panel_enabled"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    iput-boolean v3, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mFlexModePanelEnabled:Z

    invoke-virtual {p0}, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->isNavBarGestureEnabled()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mNavBarGestureEnabled:Z

    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/view/SemWindowManager;->isFolded()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mIsFolded:Z

    new-instance v3, Lcom/android/wm/shell/flexpanel/FlexPanelStartController$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/android/wm/shell/flexpanel/FlexPanelStartController$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/flexpanel/FlexPanelStartController;)V

    const-class v6, Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/devicestate/DeviceStateManager;

    new-instance v7, Landroid/os/HandlerExecutor;

    invoke-direct {v7, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v6, v7, v3}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    const-string v3, "flex_panel_pref"

    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MODE_SA_LOGGING:Z

    if-eqz v6, :cond_1

    if-eqz v3, :cond_1

    const-string v6, "F006"

    invoke-interface {v3, v6, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "FlexPanelStartController"

    const-string v3, "Init FlexPanel StatusPreferences"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.systemui/com.android.wm.shell.controlpanel.ControlPanelService"

    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v3, "display_floating_icon_clear"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "ResponseAxT9Info"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.samsung.systemui.statusbar.EXPANDED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.samsung.systemui.statusbar.COLLAPSED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v3, Lcom/android/wm/shell/flexpanel/FlexPanelStartController$2;

    invoke-direct {v3, p0}, Lcom/android/wm/shell/flexpanel/FlexPanelStartController$2;-><init>(Lcom/android/wm/shell/flexpanel/FlexPanelStartController;)V

    const/4 v5, 0x2

    invoke-virtual {p1, v3, v0, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_ENABLED:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mMwEnabled:Z

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    new-instance v3, Lcom/android/wm/shell/flexpanel/FlexPanelStartController$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/android/wm/shell/flexpanel/FlexPanelStartController$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/flexpanel/FlexPanelStartController;)V

    invoke-virtual {v0, v3}, Landroid/app/ActivityThread;->registerMultiWindowCoreStateListener(Lcom/samsung/android/multiwindow/MultiWindowCoreState$MultiWindowCoreStateListener;)V

    new-instance v0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController$1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/flexpanel/FlexPanelStartController$1;-><init>(Lcom/android/wm/shell/flexpanel/FlexPanelStartController;)V

    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->registerRemoteAppTransitionListener(Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "navigation_mode"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v5, Lcom/android/wm/shell/flexpanel/FlexPanelStartController$3;

    invoke-direct {v5, p0, v2}, Lcom/android/wm/shell/flexpanel/FlexPanelStartController$3;-><init>(Lcom/android/wm/shell/flexpanel/FlexPanelStartController;Landroid/os/Handler;)V

    invoke-virtual {v0, v3, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v3, Lcom/android/wm/shell/flexpanel/FlexPanelStartController$4;

    invoke-direct {v3, p0, v2}, Lcom/android/wm/shell/flexpanel/FlexPanelStartController$4;-><init>(Lcom/android/wm/shell/flexpanel/FlexPanelStartController;Landroid/os/Handler;)V

    invoke-virtual {p1, v0, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public static isRunnablePackage(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    iget-object v1, p0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->FLEX_PANEL_DISALLOWED_ACTIVITIES:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/wm/shell/flexpanel/FlexPanelStartController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/flexpanel/FlexPanelStartController$$ExternalSyntheticLambda0;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v1

    iget v2, p0, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcom/samsung/android/view/SemWindowManager;->getSupportsFlexPanel(ILjava/lang/String;)I

    move-result p0

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public final checkValidTargetTask()Z
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mTargetTask:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    iget-boolean v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->supportsMultiWindow:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mTargetTask is Not Available, mTargetTask : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mTargetTask:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mTargetTask:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", baseActivity : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mTargetTask:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", supportsMultiWindow : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mTargetTask:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->supportsMultiWindow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "FlexPanelStartController"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->clearButton()V

    const/4 p0, 0x0

    return p0
.end method

.method public final clearButton()V
    .locals 4

    const-string v0, "display_floating_icon_clear"

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->startFloatingIcon(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mSemStatusBarManager:Landroid/app/SemStatusBarManager;

    const/4 v0, 0x0

    const/16 v1, 0xb

    const-string v2, "com.android.wm.shell.controlpanel.activity.FlexPanelActivity"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/app/SemStatusBarManager;->setNavigationBarShortcut(Ljava/lang/String;Landroid/widget/RemoteViews;II)V

    return-void
.end method

.method public final clearMessages()V
    .locals 1

    const/4 v0, 0x1

    iget-object p0, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mHandler:Lcom/android/wm/shell/flexpanel/FlexPanelStartController$H;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public final findTargetTask()V
    .locals 5

    iget-object v0, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isSplitScreenVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isMainStageEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mTargetTask:Landroid/app/ActivityManager$RunningTaskInfo;

    const/4 v0, 0x4

    const-wide/16 v1, 0x64

    iget-object p0, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mHandler:Lcom/android/wm/shell/flexpanel/FlexPanelStartController$H;

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getMainStageRootTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mTargetTask:Landroid/app/ActivityManager$RunningTaskInfo;

    return-void

    :cond_1
    iput-object v1, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mTargetTask:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    const/16 v1, 0x14

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->getTasks(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    if-eqz v1, :cond_3

    iput-object v2, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mTargetTask:Landroid/app/ActivityManager$RunningTaskInfo;

    return-void

    :cond_3
    iget-boolean v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v1

    if-ne v1, v4, :cond_5

    iput-object v2, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mTargetTask:Landroid/app/ActivityManager$RunningTaskInfo;

    return-void

    :cond_5
    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_6

    return-void

    :cond_6
    move v1, v4

    goto :goto_0

    :cond_7
    return-void
.end method

.method public final isExecutableState()Z
    .locals 6

    iget v0, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mRotation:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    iget-boolean v3, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mIsNavBarHidden:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mNavBarGestureEnabled:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->clearButton()V

    :cond_2
    iget-boolean v3, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mMwEnabled:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mIsTableMode:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mDesktopMode:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mFlexModePanelEnabled:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mIsImeShowing:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mIsQuickPanelShowing:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mIsTaskBarAppsEnabled:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mOnRecentsAnimation:Z

    if-nez v3, :cond_4

    if-eqz v0, :cond_4

    iget-boolean v3, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mIsKeyguardVisible:Z

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    return v1

    :cond_4
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "not support state, mMwEnabled="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mMwEnabled:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mIsTableMode="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mIsTableMode:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mDesktopMode="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mDesktopMode:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mFlexModePanelEnabled="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mFlexModePanelEnabled:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mIsImeShowing="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mIsImeShowing:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mIsQuickPanelShowing="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mIsQuickPanelShowing:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mIsTaskBarAppsEnabled="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mIsTaskBarAppsEnabled:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mIsGlobalActionVisible=false, mOnRecentsAnimation="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mOnRecentsAnimation:Z

    const-string v4, ", isSupportRotation="

    const-string v5, ", mIsKeyguardVisible="

    invoke-static {v1, v3, v4, v0, v5}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mIsKeyguardVisible:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlexPanelStartController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->clearButton()V

    return v2
.end method

.method public final isNavBarGestureEnabled()Z
    .locals 3

    iget-object p0, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    const-string v1, "navigation_mode"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x2

    if-gt v0, p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public final onFlexModeChanged(Z)V
    .locals 4

    const-string v0, "FlexPanelStartController"

    invoke-virtual {p0}, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->clearMessages()V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->isExecutableState()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mTargetTask:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v1, :cond_1

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/PictureInPictureParams;->isAutoEnterEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mIsDelayWithAutoPip:Z

    :cond_1
    invoke-virtual {p0}, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->findTargetTask()V

    invoke-virtual {p0}, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->checkValidTargetTask()Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const/16 p1, 0x190

    goto :goto_0

    :cond_3
    move p1, v1

    :goto_0
    iget-object v2, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isSplitScreenVisible()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isFlexPanelMode()Z

    move-result v2

    iput-boolean v1, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mIsDelayWithAutoPip:Z

    if-eqz v2, :cond_4

    iget-object v1, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mTargetTask:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {v1}, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->isRunnablePackage(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object p0, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mHandler:Lcom/android/wm/shell/flexpanel/FlexPanelStartController$H;

    const/4 v1, 0x2

    int-to-long v2, p1

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mLastFullscreenPackage:Ljava/lang/String;

    const-string p1, "in split, but not flex panel executed"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->clearButton()V

    goto :goto_1

    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->processForFullScreen(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "failed to call SemStatusBarManager"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public final processForFullScreen(I)V
    .locals 6

    iget-object v0, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mTargetTask:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mTargetTask:Landroid/app/ActivityManager$RunningTaskInfo;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mHandler:Lcom/android/wm/shell/flexpanel/FlexPanelStartController$H;

    if-eqz v1, :cond_3

    iget-object v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_3

    sget-object v4, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->FLEX_PANEL_DISALLOWED_ACTIVITIES:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/wm/shell/flexpanel/FlexPanelStartController$$ExternalSyntheticLambda0;

    invoke-direct {v5, v1}, Lcom/android/wm/shell/flexpanel/FlexPanelStartController$$ExternalSyntheticLambda0;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v4

    iget v5, v1, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Lcom/samsung/android/view/SemWindowManager;->getSupportsFlexPanel(ILjava/lang/String;)I

    move-result v1

    const/4 v4, 0x1

    and-int/2addr v1, v4

    if-eqz v1, :cond_3

    const-string v1, "AutoRun"

    invoke-static {v1, v0}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mLastFullscreenPackage:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    int-to-long p0, p1

    invoke-virtual {v3, v2, p0, p1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mLastFullscreenPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mPendingLastAutoRunPackage:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mIsDelayWithAutoPip:Z

    if-eqz p0, :cond_2

    const/16 p1, 0x3e8

    :cond_2
    int-to-long p0, p1

    invoke-virtual {v3, v4, p0, p1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_3
    :goto_0
    iput-object v0, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mLastFullscreenPackage:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mTargetTask:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {v0}, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->isRunnablePackage(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v0

    if-eqz v0, :cond_4

    int-to-long p0, p1

    invoke-virtual {v3, v2, p0, p1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->clearButton()V

    :goto_1
    return-void
.end method

.method public final setNavigationBarButton(ILandroid/app/PendingIntent;)V
    .locals 3

    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0d0101

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const v1, 0x7f0a0506

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    invoke-virtual {v0, v1, p2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const p2, 0x7f080797

    if-eq p1, p2, :cond_1

    const p2, 0x7f080796

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mContext:Landroid/content/Context;

    const p2, 0x7f1306d8

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mContext:Landroid/content/Context;

    const p2, 0x7f1306d9

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    :goto_1
    iget-object p0, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mSemStatusBarManager:Landroid/app/SemStatusBarManager;

    const/16 p1, 0xb

    const-string p2, "com.android.wm.shell.controlpanel.activity.FlexPanelActivity"

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v0, v1, p1}, Landroid/app/SemStatusBarManager;->setNavigationBarShortcut(Ljava/lang/String;Landroid/widget/RemoteViews;II)V

    return-void
.end method

.method public final startFloatingIcon(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mNavBarGestureEnabled:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_FLOATING_ICON:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mIsNavBarHidden:Z

    if-eqz v0, :cond_1

    const-string v0, "display_floating_icon_collapse"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "display_floating_icon_clear"

    :cond_1
    const-string/jumbo v0, "startFloatingIcon: extra="

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlexPanelStartController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.systemui/com.android.wm.shell.controlpanel.ControlPanelService"

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    :cond_2
    :goto_0
    return-void
.end method
