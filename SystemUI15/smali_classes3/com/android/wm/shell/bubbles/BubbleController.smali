.class public final Lcom/android/wm/shell/bubbles/BubbleController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/sysui/ConfigurationChangeListener;
.implements Lcom/android/wm/shell/common/RemoteCallable;
.implements Lcom/android/wm/shell/bubbles/Bubbles$SysuiProxy$Provider;


# instance fields
.field public mAddedToWindowManager:Z

.field public final mBackgroundExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field public final mBroadcastReceiver:Lcom/android/wm/shell/bubbles/BubbleController$6;

.field public mBubbleBadgeIconFactory:Lcom/android/wm/shell/bubbles/BubbleBadgeIconFactory;

.field public final mBubbleBarViewCallback:Lcom/android/wm/shell/bubbles/BubbleController$9;

.field public final mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

.field public final mBubbleDataListener:Lcom/android/wm/shell/bubbles/BubbleController$10;

.field public mBubbleIconFactory:Lcom/android/wm/shell/bubbles/BubbleIconFactory;

.field public final mBubblePositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

.field public final mBubbleProperties:Lcom/android/wm/shell/bubbles/properties/BubbleProperties;

.field public mBubbleSALogger:Lcom/android/systemui/wmshell/BubblesManager$$ExternalSyntheticLambda1;

.field public final mBubbleStackViewCallback:Lcom/android/wm/shell/bubbles/BubbleController$8;

.field public mBubbleStateListener:Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl$1;

.field public final mBubbleTaskViewFactory:Lcom/android/wm/shell/bubbles/BubbleController$1;

.field public mBubbleViewCallback:Lcom/android/wm/shell/bubbles/BubbleController$BubbleViewCallback;

.field public final mContext:Landroid/content/Context;

.field public mCurrentProfiles:Landroid/util/SparseArray;

.field public mCurrentUserId:I

.field public final mDataRepository:Lcom/android/wm/shell/bubbles/BubbleDataRepository;

.field public mDensityDpi:I

.field public final mDisableBubblePackagesInDex:Ljava/util/HashSet;

.field public final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field public final mDragAndDropController:Lcom/android/wm/shell/draganddrop/DragAndDropController;

.field public mExpandListener:Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda6;

.field public final mExpandedViewManager:Lcom/android/wm/shell/bubbles/BubbleExpandedViewManager$Companion$fromBubbleController$1;

.field public final mFloatingContentCoordinator:Lcom/android/wm/shell/common/FloatingContentCoordinator;

.field public mFontScale:F

.field public final mImpl:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

.field public mInflateSynchronously:Z

.field public mIsDexDualMode:Z

.field public mIsStatusBarShade:Z

.field public final mLauncherApps:Landroid/content/pm/LauncherApps;

.field public mLayerView:Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;

.field public mLayoutDirection:I

.field public mLocale:Ljava/util/Locale;

.field public final mLogger:Lcom/android/wm/shell/bubbles/BubbleLogger;

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mMainHandler:Landroid/os/Handler;

.field public mNotifEntryToExpandOnShadeUnlock:Lcom/android/wm/shell/bubbles/BubbleEntry;

.field public final mOneHandedOptional:Ljava/util/Optional;

.field public mOverflowDataLoadNeeded:Z

.field public mOverflowListener:Lcom/android/wm/shell/bubbles/BubbleData$Listener;

.field public final mSavedUserBubbleData:Landroid/util/SparseArray;

.field public final mScreenBounds:Landroid/graphics/Rect;

.field public final mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

.field public final mShellController:Lcom/android/wm/shell/sysui/ShellController;

.field public final mShortcutBroadcastReceiver:Lcom/android/wm/shell/bubbles/BubbleController$7;

.field public mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

.field public final mSurfaceSynchronizer:Lcom/android/wm/shell/bubbles/BubbleStackView$SurfaceSynchronizer;

.field public mSysuiProxy:Lcom/android/systemui/wmshell/BubblesManager$5;

.field public final mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field public final mTaskStackListener:Lcom/android/wm/shell/common/TaskStackListenerImpl;

.field public mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

.field public final mTransitions:Lcom/android/wm/shell/transition/Transitions;

.field public final mUserManager:Landroid/os/UserManager;

.field public mWindowInsets:Landroid/view/WindowInsets;

.field public final mWindowManager:Landroid/view/WindowManager;

.field public final mWindowManagerShellWrapper:Lcom/android/wm/shell/WindowManagerShellWrapper;

.field public mWmLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field public final mWmService:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/bubbles/BubbleData;Lcom/android/wm/shell/bubbles/BubbleStackView$SurfaceSynchronizer;Lcom/android/wm/shell/common/FloatingContentCoordinator;Lcom/android/wm/shell/bubbles/BubbleDataRepository;Lcom/android/internal/statusbar/IStatusBarService;Landroid/view/WindowManager;Lcom/android/wm/shell/WindowManagerShellWrapper;Landroid/os/UserManager;Landroid/content/pm/LauncherApps;Lcom/android/wm/shell/bubbles/BubbleLogger;Lcom/android/wm/shell/common/TaskStackListenerImpl;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/bubbles/BubblePositioner;Lcom/android/wm/shell/common/DisplayController;Ljava/util/Optional;Lcom/android/wm/shell/draganddrop/DragAndDropController;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/taskview/TaskViewTransitions;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/common/SyncTransactionQueue;Landroid/view/IWindowManager;Lcom/android/wm/shell/bubbles/properties/BubbleProperties;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/wm/shell/sysui/ShellInit;",
            "Lcom/android/wm/shell/sysui/ShellCommandHandler;",
            "Lcom/android/wm/shell/sysui/ShellController;",
            "Lcom/android/wm/shell/bubbles/BubbleData;",
            "Lcom/android/wm/shell/bubbles/BubbleStackView$SurfaceSynchronizer;",
            "Lcom/android/wm/shell/common/FloatingContentCoordinator;",
            "Lcom/android/wm/shell/bubbles/BubbleDataRepository;",
            "Lcom/android/internal/statusbar/IStatusBarService;",
            "Landroid/view/WindowManager;",
            "Lcom/android/wm/shell/WindowManagerShellWrapper;",
            "Landroid/os/UserManager;",
            "Landroid/content/pm/LauncherApps;",
            "Lcom/android/wm/shell/bubbles/BubbleLogger;",
            "Lcom/android/wm/shell/common/TaskStackListenerImpl;",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            "Lcom/android/wm/shell/bubbles/BubblePositioner;",
            "Lcom/android/wm/shell/common/DisplayController;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/onehanded/OneHandedController;",
            ">;",
            "Lcom/android/wm/shell/draganddrop/DragAndDropController;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            "Landroid/os/Handler;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            "Lcom/android/wm/shell/taskview/TaskViewTransitions;",
            "Lcom/android/wm/shell/transition/Transitions;",
            "Lcom/android/wm/shell/common/SyncTransactionQueue;",
            "Landroid/view/IWindowManager;",
            "Lcom/android/wm/shell/bubbles/properties/BubbleProperties;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;-><init>(Lcom/android/wm/shell/bubbles/BubbleController;I)V

    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mImpl:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mOverflowListener:Lcom/android/wm/shell/bubbles/BubbleData$Listener;

    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mOverflowDataLoadNeeded:Z

    iput-boolean v3, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mAddedToWindowManager:Z

    iput v3, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mDensityDpi:I

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mScreenBounds:Landroid/graphics/Rect;

    const/4 v3, 0x0

    iput v3, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mFontScale:F

    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mLocale:Ljava/util/Locale;

    const/4 v2, -0x1

    iput v2, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mLayoutDirection:I

    iput-boolean v4, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mIsStatusBarShade:Z

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mDisableBubblePackagesInDex:Ljava/util/HashSet;

    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleController$6;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/bubbles/BubbleController$6;-><init>(Lcom/android/wm/shell/bubbles/BubbleController;)V

    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mBroadcastReceiver:Lcom/android/wm/shell/bubbles/BubbleController$6;

    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleController$7;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/bubbles/BubbleController$7;-><init>(Lcom/android/wm/shell/bubbles/BubbleController;)V

    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleController$8;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/bubbles/BubbleController$8;-><init>(Lcom/android/wm/shell/bubbles/BubbleController;)V

    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleStackViewCallback:Lcom/android/wm/shell/bubbles/BubbleController$8;

    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleController$9;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/bubbles/BubbleController$9;-><init>(Lcom/android/wm/shell/bubbles/BubbleController;)V

    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleBarViewCallback:Lcom/android/wm/shell/bubbles/BubbleController$9;

    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleController$10;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/bubbles/BubbleController$10;-><init>(Lcom/android/wm/shell/bubbles/BubbleController;)V

    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleDataListener:Lcom/android/wm/shell/bubbles/BubbleController$10;

    iput-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mContext:Landroid/content/Context;

    move-object v2, p3

    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    move-object v2, p4

    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    move-object/from16 v2, p13

    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mLauncherApps:Landroid/content/pm/LauncherApps;

    if-nez p9, :cond_0

    const-string/jumbo v2, "statusbar"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, p9

    :goto_0
    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    move-object/from16 v2, p10

    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mWindowManager:Landroid/view/WindowManager;

    move-object/from16 v2, p11

    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mWindowManagerShellWrapper:Lcom/android/wm/shell/WindowManagerShellWrapper;

    move-object/from16 v2, p12

    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mUserManager:Landroid/os/UserManager;

    move-object v2, p7

    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mFloatingContentCoordinator:Lcom/android/wm/shell/common/FloatingContentCoordinator;

    move-object v2, p8

    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mDataRepository:Lcom/android/wm/shell/bubbles/BubbleDataRepository;

    move-object/from16 v2, p14

    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mLogger:Lcom/android/wm/shell/bubbles/BubbleLogger;

    move-object/from16 v2, p21

    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    move-object/from16 v3, p22

    iput-object v3, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mMainHandler:Landroid/os/Handler;

    move-object/from16 v3, p23

    iput-object v3, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mBackgroundExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    move-object/from16 v3, p15

    iput-object v3, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mTaskStackListener:Lcom/android/wm/shell/common/TaskStackListenerImpl;

    move-object/from16 v3, p16

    iput-object v3, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    move-object v4, p6

    iput-object v4, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mSurfaceSynchronizer:Lcom/android/wm/shell/bubbles/BubbleStackView$SurfaceSynchronizer;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    iput v4, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mCurrentUserId:I

    move-object/from16 v4, p17

    iput-object v4, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubblePositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    move-object v4, p5

    iput-object v4, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mSavedUserBubbleData:Landroid/util/SparseArray;

    new-instance v4, Lcom/android/wm/shell/bubbles/BubbleIconFactory;

    invoke-direct {v4, p1}, Lcom/android/wm/shell/bubbles/BubbleIconFactory;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleIconFactory:Lcom/android/wm/shell/bubbles/BubbleIconFactory;

    new-instance v4, Lcom/android/wm/shell/bubbles/BubbleBadgeIconFactory;

    invoke-direct {v4, p1}, Lcom/android/wm/shell/bubbles/BubbleBadgeIconFactory;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleBadgeIconFactory:Lcom/android/wm/shell/bubbles/BubbleBadgeIconFactory;

    move-object/from16 v4, p18

    iput-object v4, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    move-object/from16 v4, p25

    iput-object v4, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    move-object/from16 v4, p19

    iput-object v4, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mOneHandedOptional:Ljava/util/Optional;

    move-object/from16 v4, p20

    iput-object v4, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mDragAndDropController:Lcom/android/wm/shell/draganddrop/DragAndDropController;

    move-object/from16 v4, p27

    iput-object v4, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mWmService:Landroid/view/IWindowManager;

    move-object/from16 v4, p28

    iput-object v4, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleProperties:Lcom/android/wm/shell/bubbles/properties/BubbleProperties;

    new-instance v4, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda2;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/bubbles/BubbleController;I)V

    move-object v5, p2

    invoke-virtual {p2, v4, p0}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Runnable;Ljava/lang/Object;)V

    new-instance v4, Lcom/android/wm/shell/bubbles/BubbleController$1;

    move-object p2, v4

    move-object p3, p0

    move-object p4, p1

    move-object/from16 p5, p16

    move-object/from16 p6, p24

    move-object/from16 p7, p26

    move-object/from16 p8, p21

    invoke-direct/range {p2 .. p8}, Lcom/android/wm/shell/bubbles/BubbleController$1;-><init>(Lcom/android/wm/shell/bubbles/BubbleController;Landroid/content/Context;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/taskview/TaskViewTransitions;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/common/ShellExecutor;)V

    iput-object v4, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleTaskViewFactory:Lcom/android/wm/shell/bubbles/BubbleController$1;

    sget-object v2, Lcom/android/wm/shell/bubbles/BubbleExpandedViewManager;->Companion:Lcom/android/wm/shell/bubbles/BubbleExpandedViewManager$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleExpandedViewManager$Companion$fromBubbleController$1;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/bubbles/BubbleExpandedViewManager$Companion$fromBubbleController$1;-><init>(Lcom/android/wm/shell/bubbles/BubbleController;)V

    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mExpandedViewManager:Lcom/android/wm/shell/bubbles/BubbleExpandedViewManager$Companion$fromBubbleController$1;

    const-string v2, "desktopmode"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v1, :cond_1

    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/bubbles/BubbleController;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;)V

    :cond_1
    return-void
.end method

.method public static canLaunchInTaskView(Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubbleEntry;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$BubbleMetadata;->getIntent()Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$BubbleMetadata;->getShortcutId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    if-nez v0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Unable to create bubble -- no intent: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/wm/shell/bubbles/BubbleEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Bubbles"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_2
    iget-object v1, p1, Lcom/android/wm/shell/bubbles/BubbleEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {v1, p0}, Lcom/android/wm/shell/bubbles/BubbleController;->getPackageManagerForUser(ILandroid/content/Context;)Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object p1, p1, Lcom/android/wm/shell/bubbles/BubbleEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController;->isResizableActivity(Landroid/content/Intent;Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static getPackageManagerForUser(ILandroid/content/Context;)Landroid/content/pm/PackageManager;
    .locals 2

    if-ltz p0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p0}, Landroid/os/UserHandle;-><init>(I)V

    const/4 p0, 0x4

    invoke-virtual {p1, v0, p0, v1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    return-object p0
.end method

.method public static isResizableActivity(Landroid/content/Intent;Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "Unable to send as bubble: "

    const-string v1, "Bubbles"

    const/4 v2, 0x0

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " null intent"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    invoke-virtual {p0, p1, v2}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " couldn\'t find activity info for intent: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    iget p1, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    invoke-static {p1}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " activity is not resizable for intent: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public asBubbles()Lcom/android/wm/shell/bubbles/Bubbles;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mImpl:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    return-object p0
.end method

.method public final blockBubbleOnDexMode(Lcom/android/wm/shell/bubbles/BubbleEntry;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification$BubbleMetadata;->getIntent()Landroid/app/PendingIntent;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mIsDexDualMode:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mDisableBubblePackagesInDex:Ljava/util/HashSet;

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final canShowAsBubbleBar()Z
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleProperties:Lcom/android/wm/shell/bubbles/properties/BubbleProperties;

    check-cast v0, Lcom/android/wm/shell/bubbles/properties/ProdBubbleProperties;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/wm/shell/bubbles/properties/ProdBubbleProperties;->_isBubbleBarEnabled:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubblePositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mDeviceConfig:Lcom/android/wm/shell/bubbles/DeviceConfig;

    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/DeviceConfig;->isLargeScreen:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final collapseStack()V
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/BubbleData;->setExpanded(Z)V

    return-void
.end method

.method public final ensureBubbleViewsAndWindowCreated()V
    .locals 13

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleController;->isShowingAsBubbleBar()Z

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubblePositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    iput-boolean v0, v1, Lcom/android/wm/shell/bubbles/BubblePositioner;->mShowingInBubbleBar:Z

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleController;->isShowingAsBubbleBar()Z

    move-result v0

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mLayerView:Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3, p0, v2}, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;-><init>(Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubbleController;Lcom/android/wm/shell/bubbles/BubbleData;)V

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mLayerView:Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mSysuiProxy:Lcom/android/systemui/wmshell/BubblesManager$5;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda13;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda13;-><init>(Ljava/lang/Object;I)V

    iput-object v4, v0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mUnBubbleConversationCallback:Ljava/util/function/Consumer;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/wm/shell/bubbles/BubbleStackViewManager;->Companion:Lcom/android/wm/shell/bubbles/BubbleStackViewManager$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/android/wm/shell/bubbles/BubbleStackViewManager$Companion$fromBubbleController$1;

    invoke-direct {v6, p0}, Lcom/android/wm/shell/bubbles/BubbleStackViewManager$Companion$fromBubbleController$1;-><init>(Lcom/android/wm/shell/bubbles/BubbleController;)V

    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleStackView;

    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    iget-object v9, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mSurfaceSynchronizer:Lcom/android/wm/shell/bubbles/BubbleStackView$SurfaceSynchronizer;

    iget-object v7, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubblePositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    iget-object v10, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mFloatingContentCoordinator:Lcom/android/wm/shell/common/FloatingContentCoordinator;

    iget-object v12, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    move-object v3, v0

    move-object v5, p0

    move-object v11, p0

    invoke-direct/range {v3 .. v12}, Lcom/android/wm/shell/bubbles/BubbleStackView;-><init>(Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubbleController;Lcom/android/wm/shell/bubbles/BubbleStackViewManager;Lcom/android/wm/shell/bubbles/BubblePositioner;Lcom/android/wm/shell/bubbles/BubbleData;Lcom/android/wm/shell/bubbles/BubbleStackView$SurfaceSynchronizer;Lcom/android/wm/shell/common/FloatingContentCoordinator;Lcom/android/wm/shell/bubbles/Bubbles$SysuiProxy$Provider;Lcom/android/wm/shell/common/ShellExecutor;)V

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->onOrientationChanged()V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mExpandListener:Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda6;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    iput-object v0, v3, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandListener:Lcom/android/wm/shell/bubbles/Bubbles$BubbleExpandListener;

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mSysuiProxy:Lcom/android/systemui/wmshell/BubblesManager$5;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mAddedToWindowManager:Z

    if-eqz v0, :cond_3

    goto/16 :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleController;->isShowingAsBubbleBar()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mLayerView:Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;

    if-nez v0, :cond_4

    goto/16 :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleController;->isShowingAsBubbleBar()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    if-nez v0, :cond_5

    goto/16 :goto_3

    :cond_5
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const v7, 0x1800028    # 4.702E-38f

    const/4 v8, -0x3

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/16 v6, 0x7f6

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mWmLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->setTrustedOverlay()V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mWmLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mWmLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x10

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    new-instance v5, Landroid/os/Binder;

    invoke-direct {v5}, Landroid/os/Binder;-><init>()V

    iput-object v5, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mWmLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const-string v5, "Bubbles!"

    invoke-virtual {v0, v5}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mWmLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mWmLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v5, 0x3

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/2addr v4, v5

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mAddedToWindowManager:Z

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v5, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBroadcastReceiver:Lcom/android/wm/shell/bubbles/BubbleController$6;

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v4, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleController;->isShowingAsBubbleBar()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v6, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mExpandedViewManager:Lcom/android/wm/shell/bubbles/BubbleExpandedViewManager$Companion$fromBubbleController$1;

    const/4 v5, 0x0

    if-eqz v4, :cond_6

    :try_start_1
    iget-object v2, v2, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflow:Lcom/android/wm/shell/bubbles/BubbleOverflow;

    iget-object v4, v2, Lcom/android/wm/shell/bubbles/BubbleOverflow;->inflater:Landroid/view/LayoutInflater;

    const v7, 0x7f0d006b

    invoke-virtual {v4, v7, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    invoke-virtual {v3}, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->applyThemeAttrs()V

    iput-object v3, v2, Lcom/android/wm/shell/bubbles/BubbleOverflow;->bubbleBarExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    invoke-virtual {v3, v6, v1, v0, v5}, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->initialize(Lcom/android/wm/shell/bubbles/BubbleExpandedViewManager;Lcom/android/wm/shell/bubbles/BubblePositioner;ZLcom/android/wm/shell/bubbles/BubbleTaskView;)V

    goto :goto_1

    :cond_6
    iget-object v0, v2, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflow:Lcom/android/wm/shell/bubbles/BubbleOverflow;

    iget-object v7, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    iget-object v8, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubblePositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0d0072

    invoke-virtual {v1, v2, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-virtual {v5}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->applyThemeAttrs()V

    iput-object v5, v0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->expandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleOverflow;->updateResources()V

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->initialize(Lcom/android/wm/shell/bubbles/BubbleExpandedViewManager;Lcom/android/wm/shell/bubbles/BubbleStackView;Lcom/android/wm/shell/bubbles/BubblePositioner;ZLcom/android/wm/shell/bubbles/BubbleTaskView;)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleController;->isShowingAsBubbleBar()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mLayerView:Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mWmLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mLayerView:Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda19;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda19;-><init>(Lcom/android/wm/shell/bubbles/BubbleController;I)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mWmLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda19;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda19;-><init>(Lcom/android/wm/shell/bubbles/BubbleController;I)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :goto_2
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_3
    return-void
.end method

.method public final expandStackAndSelectBubble(Lcom/android/wm/shell/bubbles/BubbleEntry;)V
    .locals 8

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_BUBBLES_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/wm/shell/bubbles/BubbleEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mIsStatusBarShade:Z

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BUBBLES:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v7

    const-wide v3, -0x28bb1868d60ec7ecL    # -2.513687627325242E112

    const/16 v5, 0xc

    const/4 v6, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mIsStatusBarShade:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mNotifEntryToExpandOnShadeUnlock:Lcom/android/wm/shell/bubbles/BubbleEntry;

    iget-object v0, p1, Lcom/android/wm/shell/bubbles/BubbleEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/bubbles/BubbleData;->getBubbleInStackWithKey(Ljava/lang/String;)Lcom/android/wm/shell/bubbles/Bubble;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/bubbles/BubbleData;->setSelectedBubbleAndExpandStack(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v0}, Lcom/android/wm/shell/bubbles/BubbleData;->getOverflowBubbleWithKey(Ljava/lang/String;)Lcom/android/wm/shell/bubbles/Bubble;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/BubbleController;->promoteBubbleFromOverflow(Lcom/android/wm/shell/bubbles/Bubble;)V

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/android/wm/shell/bubbles/BubbleEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->canBubble()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v0}, Lcom/android/wm/shell/bubbles/BubbleController;->setIsBubble(Lcom/android/wm/shell/bubbles/BubbleEntry;ZZ)V

    goto :goto_0

    :cond_3
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mNotifEntryToExpandOnShadeUnlock:Lcom/android/wm/shell/bubbles/BubbleEntry;

    :cond_4
    :goto_0
    return-void
.end method

.method public expandStackAndSelectBubbleFromLauncher(Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubblePositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    iput p2, v0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleBarTopOnScreen:I

    const-string p2, "Overflow"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    if-eqz p2, :cond_0

    iget-object p1, v0, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflow:Lcom/android/wm/shell/bubbles/BubbleOverflow;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->setSelectedBubbleFromLauncher(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mLayerView:Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;

    iget-object p1, v0, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflow:Lcom/android/wm/shell/bubbles/BubbleOverflow;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->showExpandedView(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->getAnyBubbleWithkey(Ljava/lang/String;)Lcom/android/wm/shell/bubbles/Bubble;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    iget-object v1, p2, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/bubbles/BubbleData;->hasBubbleInStackWithKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, p2}, Lcom/android/wm/shell/bubbles/BubbleData;->setSelectedBubbleFromLauncher(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mLayerView:Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->showExpandedView(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/bubbles/BubbleData;->hasOverflowBubbleWithKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    const-string p0, "didn\'t add bubble from launcher: "

    const-string p2, "Bubbles"

    invoke-static {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final getBubblesInGroup(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/bubbles/Bubble;

    iget-object v2, v1, Lcom/android/wm/shell/bubbles/Bubble;->mGroupKey:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getImplCachedState()Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mImpl:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->mCachedState:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;

    return-object p0
.end method

.method public getLayerView()Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mLayerView:Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;

    return-object p0
.end method

.method public getPositioner()Lcom/android/wm/shell/bubbles/BubblePositioner;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubblePositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    return-object p0
.end method

.method public final getRemoteCallExecutor()Lcom/android/wm/shell/common/ShellExecutor;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-object p0
.end method

.method public getStackView()Lcom/android/wm/shell/bubbles/BubbleStackView;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    return-object p0
.end method

.method public hasBubbles()Z
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mLayerView:Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mShowingOverflow:Z

    if-eqz v0, :cond_2

    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mExpanded:Z

    if-eqz p0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1
.end method

.method public final hideCurrentInputMethod()V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubblePositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mImeVisible:Z

    iput v1, v0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mImeHeight:I

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    :try_start_0
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {p0, v0}, Lcom/android/internal/statusbar/IStatusBarService;->hideCurrentInputMethodForBubbles(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Bubbles"

    const-string v1, "Failed to hide IME"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public inflateAndAdd(Lcom/android/wm/shell/bubbles/Bubble;ZZ)V
    .locals 12

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleController;->ensureBubbleViewsAndWindowCreated()V

    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mInflateSynchronously:Z

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/bubbles/Bubble;->setInflateSynchronously(Z)V

    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p2, p3}, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/bubbles/BubbleController;ZZ)V

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    iget-object v8, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mLayerView:Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;

    iget-object v9, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleIconFactory:Lcom/android/wm/shell/bubbles/BubbleIconFactory;

    iget-object v10, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleBadgeIconFactory:Lcom/android/wm/shell/bubbles/BubbleBadgeIconFactory;

    const/4 v11, 0x0

    iget-object v6, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubblePositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mExpandedViewManager:Lcom/android/wm/shell/bubbles/BubbleExpandedViewManager$Companion$fromBubbleController$1;

    iget-object v5, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleTaskViewFactory:Lcom/android/wm/shell/bubbles/BubbleController$1;

    move-object v1, p1

    invoke-virtual/range {v1 .. v11}, Lcom/android/wm/shell/bubbles/Bubble;->inflate(Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$Callback;Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubbleExpandedViewManager;Lcom/android/wm/shell/bubbles/BubbleTaskViewFactory;Lcom/android/wm/shell/bubbles/BubblePositioner;Lcom/android/wm/shell/bubbles/BubbleStackView;Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;Lcom/android/wm/shell/bubbles/BubbleIconFactory;Lcom/android/wm/shell/bubbles/BubbleBadgeIconFactory;Z)V

    return-void
.end method

.method public isBubbleNotificationSuppressedFromShade(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->hasAnyBubbleWithKey(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->getAnyBubbleWithkey(Ljava/lang/String;)Lcom/android/wm/shell/bubbles/Bubble;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/Bubble;->showInShade()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/bubbles/BubbleData;->isSummarySuppressed(Ljava/lang/String;)Z

    move-result v3

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSuppressedGroupKeys:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    if-nez v3, :cond_2

    :cond_1
    if-eqz v0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1
.end method

.method public final isShowingAsBubbleBar()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleController;->canShowAsBubbleBar()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleStateListener:Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl$1;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isSummaryOfBubbles(Lcom/android/wm/shell/bubbles/BubbleEntry;)Z
    .locals 5

    iget-object v0, p1, Lcom/android/wm/shell/bubbles/BubbleEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/BubbleController;->getBubblesInGroup(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/BubbleData;->isSummarySuppressed(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSuppressedGroupKeys:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    iget-object v0, p1, Lcom/android/wm/shell/bubbles/BubbleEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v4

    goto :goto_0

    :cond_0
    move p0, v3

    :goto_0
    iget-object p1, p1, Lcom/android/wm/shell/bubbles/BubbleEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification;->isGroupSummary()Z

    move-result p1

    if-nez p0, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    move v3, v4

    :cond_2
    return v3
.end method

.method public final loadOverflowBubblesFromDisk()V
    .locals 7

    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mOverflowDataLoadNeeded:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mOverflowDataLoadNeeded:Z

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda21;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mCurrentUserId:I

    new-instance v5, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda22;

    invoke-direct {v5, p0}, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda22;-><init>(Lcom/android/wm/shell/bubbles/BubbleController;)V

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mDataRepository:Lcom/android/wm/shell/bubbles/BubbleDataRepository;

    iget-object p0, v2, Lcom/android/wm/shell/bubbles/BubbleDataRepository;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleDataRepository$loadBubbles$1;

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/wm/shell/bubbles/BubbleDataRepository$loadBubbles$1;-><init>(Lcom/android/wm/shell/bubbles/BubbleDataRepository;Ljava/util/List;ILkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {p0, v2, v2, v0, v1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public onBubbleMetadataFlagChanged(Lcom/android/wm/shell/bubbles/Bubble;)V
    .locals 9

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_BUBBLES_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v1, p1, Lcom/android/wm/shell/bubbles/Bubble;->mFlags:I

    int-to-long v1, v1

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BUBBLES:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v8

    const-wide v4, 0x20162528b7433df7L

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v1, p1, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    iget v2, p1, Lcom/android/wm/shell/bubbles/Bubble;->mFlags:I

    invoke-interface {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService;->onBubbleMetadataFlagChanged(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mImpl:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->mCachedState:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;->updateBubbleSuppressedState(Lcom/android/wm/shell/bubbles/Bubble;)V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubblePositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mWindowManager:Landroid/view/WindowManager;

    invoke-static {v1, v2}, Lcom/android/wm/shell/bubbles/DeviceConfig;->create(Landroid/content/Context;Landroid/view/WindowManager;)Lcom/android/wm/shell/bubbles/DeviceConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/bubbles/BubblePositioner;->update(Lcom/android/wm/shell/bubbles/DeviceConfig;)V

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    if-eqz v0, :cond_a

    if-eqz p1, :cond_a

    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mDensityDpi:I

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mScreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mDensityDpi:I

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mScreenBounds:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleData;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    iget v1, v1, Lcom/android/wm/shell/bubbles/BubblePositioner;->mMaxBubbles:I

    iput v1, v0, Lcom/android/wm/shell/bubbles/BubbleData;->mMaxBubbles:I

    iget-boolean v1, v0, Lcom/android/wm/shell/bubbles/BubbleData;->mExpanded:Z

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleData;->trim()V

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleData;->dispatchPendingChanges()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/wm/shell/bubbles/BubbleData;->mNeedsTrimming:Z

    :goto_0
    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleIconFactory;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/wm/shell/bubbles/BubbleIconFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleIconFactory:Lcom/android/wm/shell/bubbles/BubbleIconFactory;

    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleBadgeIconFactory;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/wm/shell/bubbles/BubbleBadgeIconFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleBadgeIconFactory:Lcom/android/wm/shell/bubbles/BubbleBadgeIconFactory;

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->onDisplaySizeChanged()V

    :cond_3
    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mFontScale:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_5

    iput v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mFontScale:F

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->updateFontSize()V

    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    iget-object v1, v1, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/bubbles/Bubble;

    iget-object v2, v2, Lcom/android/wm/shell/bubbles/Bubble;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    goto :goto_1

    :cond_4
    iget-boolean v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mShowingOverflow:Z

    if-eqz v1, :cond_5

    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleOverflow:Lcom/android/wm/shell/bubbles/BubbleOverflow;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->expandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->updateFontSize()V

    :cond_5
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mLayoutDirection:I

    if-eq v0, v1, :cond_9

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mLayoutDirection:I

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    iget-object v2, v1, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    iget-object v2, v1, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackEduView:Lcom/android/wm/shell/bubbles/StackEducationView;

    if-eqz v2, :cond_6

    invoke-virtual {v2, v0}, Lcom/android/wm/shell/bubbles/StackEducationView;->setLayoutDirection(I)V

    :cond_6
    iget-object v2, v1, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageEduView:Lcom/android/wm/shell/bubbles/ManageEducationView;

    if-eqz v2, :cond_7

    invoke-virtual {v2, v0}, Lcom/android/wm/shell/bubbles/ManageEducationView;->setLayoutDirection(I)V

    :cond_7
    iget-object v1, v1, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    iget-object v1, v1, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_2

    :cond_8
    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_9
    :goto_2
    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mLocale:Ljava/util/Locale;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    iget-boolean p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mShowingOverflow:Z

    if-eqz p1, :cond_a

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleOverflow:Lcom/android/wm/shell/bubbles/BubbleOverflow;

    if-eqz p0, :cond_a

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->expandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->updateLocale()V

    :cond_a
    return-void
.end method

.method public onEntryUpdated(Lcom/android/wm/shell/bubbles/BubbleEntry;ZZ)V
    .locals 2

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController;->blockBubbleOnDexMode(Lcom/android/wm/shell/bubbles/BubbleEntry;)Z

    move-result p3

    if-eqz p3, :cond_1

    return-void

    :cond_1
    const/4 p3, 0x1

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/android/wm/shell/bubbles/BubbleController;->canLaunchInTaskView(Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubbleEntry;)Z

    move-result p2

    if-eqz p2, :cond_2

    move p2, p3

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    if-nez p2, :cond_3

    iget-object v1, p1, Lcom/android/wm/shell/bubbles/BubbleEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/bubbles/BubbleData;->hasAnyBubbleWithKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p2, p1, Lcom/android/wm/shell/bubbles/BubbleEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x7

    invoke-virtual {p0, v1, p2}, Lcom/android/wm/shell/bubbles/BubbleController;->removeBubble(ILjava/lang/String;)V

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->isBubble()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController;->updateBubble(Lcom/android/wm/shell/bubbles/BubbleEntry;)V

    :cond_4
    :goto_1
    iget-object p2, p1, Lcom/android/wm/shell/bubbles/BubbleEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController;->isSummaryOfBubbles(Lcom/android/wm/shell/bubbles/BubbleEntry;)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {v0, p2}, Lcom/android/wm/shell/bubbles/BubbleData;->isSummarySuppressed(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    iget-object p0, v0, Lcom/android/wm/shell/bubbles/BubbleData;->mSuppressedGroupKeys:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, v0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    iput-boolean p3, p0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->suppressedSummaryChanged:Z

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->suppressedSummaryGroup:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleData;->dispatchPendingChanges()V

    :cond_5
    return-void
.end method

.method public onNotificationChannelModified(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V
    .locals 4

    new-instance p4, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleData;->getOverflowBubbles()Ljava/util/List;

    move-result-object v0

    invoke-direct {p4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/bubbles/Bubble;

    iget-object v2, v1, Lcom/android/wm/shell/bubbles/Bubble;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    iget-object v2, v1, Lcom/android/wm/shell/bubbles/Bubble;->mMetadataShortcutId:Ljava/lang/String;

    :goto_1
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/android/wm/shell/bubbles/Bubble;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/android/wm/shell/bubbles/Bubble;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->canBubble()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v2, 0x7

    iget-object v1, v1, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Lcom/android/wm/shell/bubbles/BubbleData;->dismissBubbleWithKey(ILjava/lang/String;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onRankingUpdated(Landroid/service/notification/NotificationListenerService$RankingMap;Ljava/util/HashMap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/notification/NotificationListenerService$RankingMap;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Lcom/android/wm/shell/bubbles/BubbleEntry;",
            "Ljava/lang/Boolean;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    if-nez v0, :cond_0

    new-instance v0, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v0}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getOrderedKeys()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_8

    aget-object v3, v0, v2

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/android/wm/shell/bubbles/BubbleEntry;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v5, :cond_2

    iget-object v6, v5, Lcom/android/wm/shell/bubbles/BubbleEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    iget-object v7, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mCurrentProfiles:Landroid/util/SparseArray;

    if-eqz v7, :cond_1

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    :goto_1
    if-eqz v5, :cond_4

    iget-boolean v6, v5, Lcom/android/wm/shell/bubbles/BubbleEntry;->mShouldSuppressNotificationList:Z

    if-nez v6, :cond_3

    iget-object v6, v5, Lcom/android/wm/shell/bubbles/BubbleEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v6}, Landroid/service/notification/NotificationListenerService$Ranking;->isSuspended()Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    move v4, v1

    :cond_4
    iget-object v6, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p1, v3, v6}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    iget-object v6, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {v6, v3}, Lcom/android/wm/shell/bubbles/BubbleData;->hasAnyBubbleWithKey(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v6, v3}, Lcom/android/wm/shell/bubbles/BubbleData;->hasBubbleInStackWithKey(Ljava/lang/String;)Z

    if-eqz v7, :cond_5

    iget-object v8, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v8}, Landroid/service/notification/NotificationListenerService$Ranking;->canBubble()Z

    move-result v8

    if-nez v8, :cond_5

    const/4 v4, 0x4

    invoke-virtual {v6, v4, v3}, Lcom/android/wm/shell/bubbles/BubbleData;->dismissBubbleWithKey(ILjava/lang/String;)V

    goto :goto_2

    :cond_5
    if-eqz v7, :cond_6

    if-nez v4, :cond_6

    const/16 v4, 0xe

    invoke-virtual {v6, v4, v3}, Lcom/android/wm/shell/bubbles/BubbleData;->dismissBubbleWithKey(ILjava/lang/String;)V

    goto :goto_2

    :cond_6
    if-eqz v5, :cond_7

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v3}, Landroid/service/notification/NotificationListenerService$Ranking;->isBubble()Z

    move-result v3

    if-eqz v3, :cond_7

    if-nez v7, :cond_7

    const/4 v3, 0x1

    invoke-virtual {v5, v3}, Lcom/android/wm/shell/bubbles/BubbleEntry;->setFlagBubble(Z)V

    invoke-virtual {p0, v5, v4, v3}, Lcom/android/wm/shell/bubbles/BubbleController;->onEntryUpdated(Lcom/android/wm/shell/bubbles/BubbleEntry;ZZ)V

    :cond_7
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    return-void
.end method

.method public onStatusBarStateChanged(Z)V
    .locals 8

    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mIsStatusBarShade:Z

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_BUBBLES_enabled:[Z

    aget-boolean v1, v2, v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mNotifEntryToExpandOnShadeUnlock:Lcom/android/wm/shell/bubbles/BubbleEntry;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/android/wm/shell/bubbles/BubbleEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v1, "null"

    :goto_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BUBBLES:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    filled-new-array {v3, v4, v1}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v5, 0xf

    const/4 v6, 0x0

    const-wide v3, -0x561917ad8ed9c96cL

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mIsStatusBarShade:Z

    if-nez p1, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleController;->collapseStack()V

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    if-eqz p1, :cond_3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    iget-object v0, p1, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    iget-object v1, p1, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getRestingPosition()Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->setStackPosition(Landroid/graphics/PointF;)V

    iget-object p1, p1, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDismissView:Lcom/android/wm/shell/common/bubbles/DismissView;

    invoke-virtual {p1}, Lcom/android/wm/shell/common/bubbles/DismissView;->hide()V

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->resetDismissAnimator()V

    :cond_3
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mNotifEntryToExpandOnShadeUnlock:Lcom/android/wm/shell/bubbles/BubbleEntry;

    if-eqz p1, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController;->expandStackAndSelectBubble(Lcom/android/wm/shell/bubbles/BubbleEntry;)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleController;->updateBubbleViews()V

    return-void
.end method

.method public final onThemeChanged()V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->setUpFlyout()V

    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->setUpDismissView()V

    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateOverflow()V

    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateUserEdu()V

    iget-object v2, v1, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    iget-object v2, v2, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda19;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :goto_0
    iget-object v2, v1, Lcom/android/wm/shell/bubbles/BubbleStackView;->mScrim:Landroid/view/View;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1060029

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v1, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageMenuScrim:Landroid/view/View;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v3, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleIconFactory;

    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/wm/shell/bubbles/BubbleIconFactory;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleIconFactory:Lcom/android/wm/shell/bubbles/BubbleIconFactory;

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleBadgeIconFactory;

    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/wm/shell/bubbles/BubbleBadgeIconFactory;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleBadgeIconFactory:Lcom/android/wm/shell/bubbles/BubbleBadgeIconFactory;

    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    iget-object v2, v1, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    iget-object v15, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleTaskViewFactory:Lcom/android/wm/shell/bubbles/BubbleController$1;

    iget-object v14, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mExpandedViewManager:Lcom/android/wm/shell/bubbles/BubbleExpandedViewManager$Companion$fromBubbleController$1;

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/wm/shell/bubbles/Bubble;

    iget-object v6, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mContext:Landroid/content/Context;

    iget-object v10, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    iget-object v11, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mLayerView:Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;

    iget-object v12, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleIconFactory:Lcom/android/wm/shell/bubbles/BubbleIconFactory;

    iget-object v13, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleBadgeIconFactory:Lcom/android/wm/shell/bubbles/BubbleBadgeIconFactory;

    const/4 v5, 0x0

    iget-object v9, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubblePositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    const/4 v3, 0x0

    move-object v7, v14

    move-object v8, v15

    move v14, v3

    invoke-virtual/range {v4 .. v14}, Lcom/android/wm/shell/bubbles/Bubble;->inflate(Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$Callback;Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubbleExpandedViewManager;Lcom/android/wm/shell/bubbles/BubbleTaskViewFactory;Lcom/android/wm/shell/bubbles/BubblePositioner;Lcom/android/wm/shell/bubbles/BubbleStackView;Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;Lcom/android/wm/shell/bubbles/BubbleIconFactory;Lcom/android/wm/shell/bubbles/BubbleBadgeIconFactory;Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/BubbleData;->getOverflowBubbles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/wm/shell/bubbles/Bubble;

    iget-object v6, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mContext:Landroid/content/Context;

    iget-object v10, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    iget-object v11, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mLayerView:Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;

    iget-object v12, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleIconFactory:Lcom/android/wm/shell/bubbles/BubbleIconFactory;

    iget-object v13, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleBadgeIconFactory:Lcom/android/wm/shell/bubbles/BubbleBadgeIconFactory;

    const/4 v5, 0x0

    iget-object v9, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubblePositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    const/4 v2, 0x0

    move-object v7, v14

    move-object v8, v15

    move-object v3, v14

    move v14, v2

    invoke-virtual/range {v4 .. v14}, Lcom/android/wm/shell/bubbles/Bubble;->inflate(Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$Callback;Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubbleExpandedViewManager;Lcom/android/wm/shell/bubbles/BubbleTaskViewFactory;Lcom/android/wm/shell/bubbles/BubblePositioner;Lcom/android/wm/shell/bubbles/BubbleStackView;Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;Lcom/android/wm/shell/bubbles/BubbleIconFactory;Lcom/android/wm/shell/bubbles/BubbleBadgeIconFactory;Z)V

    move-object v14, v3

    goto :goto_2

    :cond_3
    return-void
.end method

.method public onUserChanged(I)V
    .locals 12

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_BUBBLES_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mCurrentUserId:I

    int-to-long v2, v0

    int-to-long v4, p1

    sget-object v6, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BUBBLES:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v11

    const/4 v9, 0x5

    const/4 v10, 0x0

    const-wide v7, -0x6f120364a6aac388L

    invoke-static/range {v6 .. v11}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mCurrentUserId:I

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mSavedUserBubbleData:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleController$UserBubbleData;

    invoke-direct {v2, v1}, Lcom/android/wm/shell/bubbles/BubbleController$UserBubbleData;-><init>(I)V

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    iget-object v4, v3, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/wm/shell/bubbles/Bubble;

    iget-object v6, v5, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/android/wm/shell/bubbles/Bubble;->showInShade()Z

    move-result v5

    iget-object v7, v2, Lcom/android/wm/shell/bubbles/BubbleController$UserBubbleData;->mKeyToShownInShadeMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    check-cast v7, Ljava/util/HashMap;

    invoke-virtual {v7, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mSavedUserBubbleData:Landroid/util/SparseArray;

    invoke-virtual {v4, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iput p1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mCurrentUserId:I

    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Lcom/android/wm/shell/bubbles/BubbleData;->dismissAll(I)V

    :goto_1
    iget-object v2, v3, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflowBubbles:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v3, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflowBubbles:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/bubbles/Bubble;

    iget-object v2, v2, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    invoke-virtual {v3, v0, v2}, Lcom/android/wm/shell/bubbles/BubbleData;->doRemove(ILjava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lcom/android/wm/shell/bubbles/BubbleData;->dispatchPendingChanges()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mOverflowDataLoadNeeded:Z

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mSavedUserBubbleData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/bubbles/BubbleController$UserBubbleData;

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mSysuiProxy:Lcom/android/systemui/wmshell/BubblesManager$5;

    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController$UserBubbleData;->mKeyToShownInShadeMap:Ljava/util/Map;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    new-instance v4, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda5;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v0, v5}, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda5;-><init>(Lcom/android/wm/shell/bubbles/BubbleController;Ljava/lang/Object;I)V

    iget-object v0, v1, Lcom/android/systemui/wmshell/BubblesManager$5;->val$sysuiMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v5, Lcom/android/systemui/wmshell/BubblesManager$$ExternalSyntheticLambda2;

    const/4 v6, 0x1

    invoke-direct {v5, v1, v2, v6, v4}, Lcom/android/systemui/wmshell/BubblesManager$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-interface {v0, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mSavedUserBubbleData:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    :goto_2
    iput p1, v3, Lcom/android/wm/shell/bubbles/BubbleData;->mCurrentUserId:I

    return-void
.end method

.method public final promoteBubbleFromOverflow(Lcom/android/wm/shell/bubbles/Bubble;)V
    .locals 8

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mLogger:Lcom/android/wm/shell/bubbles/BubbleLogger;

    sget-object v1, Lcom/android/wm/shell/bubbles/BubbleLogger$Event;->BUBBLE_OVERFLOW_REMOVE_BACK_TO_STACK:Lcom/android/wm/shell/bubbles/BubbleLogger$Event;

    invoke-virtual {v0, p1, v1}, Lcom/android/wm/shell/bubbles/BubbleLogger;->log(Lcom/android/wm/shell/bubbles/Bubble;Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_BUBBLES_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BUBBLES:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v7

    const-wide v3, 0x154eee06c27633b9L

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mInflateSynchronously:Z

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/bubbles/Bubble;->setInflateSynchronously(Z)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/bubbles/Bubble;->setShouldAutoExpand(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/wm/shell/bubbles/Bubble;->mLastAccessed:J

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/bubbles/Bubble;->setSuppressNotification(Z)V

    invoke-virtual {p1, v1}, Lcom/android/wm/shell/bubbles/Bubble;->setShowDot(Z)V

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/bubbles/BubbleController;->setIsBubble(Lcom/android/wm/shell/bubbles/Bubble;Z)V

    return-void
.end method

.method public removeAllBubbles(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->dismissAll(I)V

    return-void
.end method

.method public final removeBubble(ILjava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/bubbles/BubbleData;->hasAnyBubbleWithKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleData;->dismissBubbleWithKey(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final removeFromWindowManagerMaybe()V
    .locals 6

    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mAddedToWindowManager:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mAddedToWindowManager:Z

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda2;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/bubbles/BubbleController;I)V

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBackgroundExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    check-cast v2, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v2, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    const/16 v3, 0x8

    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    if-eqz v1, :cond_3

    :try_start_1
    iget-object v5, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v5, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v1, v4, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflow:Lcom/android/wm/shell/bubbles/BubbleOverflow;

    iget-object v5, v1, Lcom/android/wm/shell/bubbles/BubbleOverflow;->expandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    if-eqz v5, :cond_1

    iget-object v5, v5, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    if-eqz v5, :cond_1

    invoke-virtual {v5, v3}, Landroid/view/SurfaceView;->setVisibility(I)V

    :cond_1
    iput-object v2, v1, Lcom/android/wm/shell/bubbles/BubbleOverflow;->expandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    iget-object v5, v1, Lcom/android/wm/shell/bubbles/BubbleOverflow;->bubbleBarExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    if-eqz v5, :cond_2

    iget-object v5, v5, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mMenuViewController:Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController;

    invoke-virtual {v5, v0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController;->hideMenu(Z)V

    :cond_2
    iput-object v2, v1, Lcom/android/wm/shell/bubbles/BubbleOverflow;->bubbleBarExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mLayerView:Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;

    if-eqz v1, :cond_6

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object p0, v4, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflow:Lcom/android/wm/shell/bubbles/BubbleOverflow;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->expandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    if-eqz v1, :cond_4

    iget-object v1, v1, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v3}, Landroid/view/SurfaceView;->setVisibility(I)V

    :cond_4
    iput-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->expandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->bubbleBarExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    if-eqz v1, :cond_5

    iget-object v1, v1, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mMenuViewController:Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController;->hideMenu(Z)V

    :cond_5
    iput-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleOverflow;->bubbleBarExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_6
    :goto_2
    return-void
.end method

.method public setExpandListener(Lcom/android/wm/shell/bubbles/Bubbles$BubbleExpandListener;)V
    .locals 2

    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda6;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mExpandListener:Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda6;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    if-eqz p0, :cond_0

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandListener:Lcom/android/wm/shell/bubbles/Bubbles$BubbleExpandListener;

    :cond_0
    return-void
.end method

.method public setInflateSynchronously(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mInflateSynchronously:Z

    return-void
.end method

.method public final setIsBubble(Lcom/android/wm/shell/bubbles/Bubble;Z)V
    .locals 2

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean p2, p1, Lcom/android/wm/shell/bubbles/Bubble;->mIsBubble:Z

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mSysuiProxy:Lcom/android/systemui/wmshell/BubblesManager$5;

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/bubbles/BubbleController;ZLcom/android/wm/shell/bubbles/Bubble;)V

    iget-object p0, v0, Lcom/android/systemui/wmshell/BubblesManager$5;->val$sysuiMainExecutor:Ljava/util/concurrent/Executor;

    new-instance p2, Lcom/android/systemui/wmshell/BubblesManager$$ExternalSyntheticLambda2;

    iget-object p1, p1, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    invoke-direct {p2, v0, p1, v1}, Lcom/android/systemui/wmshell/BubblesManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/wmshell/BubblesManager$5;Ljava/lang/String;Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda0;)V

    invoke-interface {p0, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setIsBubble(Lcom/android/wm/shell/bubbles/BubbleEntry;ZZ)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/bubbles/BubbleEntry;->setFlagBubble(Z)V

    if-eqz p3, :cond_0

    const/4 p3, 0x3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    :try_start_0
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object p1, p1, Lcom/android/wm/shell/bubbles/BubbleEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationBubbleChanged(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final setUpBubbleViewsForMode()V
    .locals 14

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleController;->isShowingAsBubbleBar()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleBarViewCallback:Lcom/android/wm/shell/bubbles/BubbleController$9;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleStackViewCallback:Lcom/android/wm/shell/bubbles/BubbleController$8;

    :goto_0
    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleViewCallback:Lcom/android/wm/shell/bubbles/BubbleController$BubbleViewCallback;

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleOverflow:Lcom/android/wm/shell/bubbles/BubbleOverflow;

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleOverflow;->getIconView()Lcom/android/wm/shell/bubbles/BadgedImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->removeViewNoAnimation(Lcom/android/wm/shell/bubbles/BadgedImageView;)V

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda24;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda24;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleController;->removeFromWindowManagerMaybe()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mLayerView:Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;

    iput-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleController;->ensureBubbleViewsAndWindowCreated()V

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleController;->isShowingAsBubbleBar()Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda6;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Object;I)V

    goto :goto_1

    :cond_4
    iget-boolean v2, v0, Lcom/android/wm/shell/bubbles/BubbleData;->mExpanded:Z

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleData;->mSelectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    if-eqz v2, :cond_5

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda6;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Object;I)V

    :cond_5
    :goto_1
    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_2
    if-ltz v2, :cond_6

    iget-object v3, v0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/bubbles/Bubble;

    iget-object v5, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    iget-object v10, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mLayerView:Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;

    iget-object v11, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleIconFactory:Lcom/android/wm/shell/bubbles/BubbleIconFactory;

    iget-object v12, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleBadgeIconFactory:Lcom/android/wm/shell/bubbles/BubbleBadgeIconFactory;

    const/4 v13, 0x0

    iget-object v8, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubblePositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    iget-object v6, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mExpandedViewManager:Lcom/android/wm/shell/bubbles/BubbleExpandedViewManager$Companion$fromBubbleController$1;

    iget-object v7, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleTaskViewFactory:Lcom/android/wm/shell/bubbles/BubbleController$1;

    move-object v4, v1

    invoke-virtual/range {v3 .. v13}, Lcom/android/wm/shell/bubbles/Bubble;->inflate(Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$Callback;Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubbleExpandedViewManager;Lcom/android/wm/shell/bubbles/BubbleTaskViewFactory;Lcom/android/wm/shell/bubbles/BubblePositioner;Lcom/android/wm/shell/bubbles/BubbleStackView;Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;Lcom/android/wm/shell/bubbles/BubbleIconFactory;Lcom/android/wm/shell/bubbles/BubbleBadgeIconFactory;Z)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method public updateBubble(Lcom/android/wm/shell/bubbles/BubbleEntry;)V
    .locals 4

    iget-object v0, p1, Lcom/android/wm/shell/bubbles/BubbleEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mCurrentProfiles:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {p0, p1, v3, v2}, Lcom/android/wm/shell/bubbles/BubbleController;->updateBubble(Lcom/android/wm/shell/bubbles/BubbleEntry;ZZ)V

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mSavedUserBubbleData:Landroid/util/SparseArray;

    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleController$UserBubbleData;

    invoke-direct {v2, v3}, Lcom/android/wm/shell/bubbles/BubbleController$UserBubbleData;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/bubbles/BubbleController$UserBubbleData;

    iget-object p1, p1, Lcom/android/wm/shell/bubbles/BubbleEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    iget-object v1, v1, Lcom/android/wm/shell/bubbles/BubbleController$UserBubbleData;->mKeyToShownInShadeMap:Ljava/util/Map;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateBubble, ignore update for non-active user="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " currentUser="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mCurrentUserId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Bubbles"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public updateBubble(Lcom/android/wm/shell/bubbles/BubbleEntry;ZZ)V
    .locals 5

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mSysuiProxy:Lcom/android/systemui/wmshell/BubblesManager$5;

    iget-object v1, p1, Lcom/android/wm/shell/bubbles/BubbleEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/wmshell/BubblesManager$5;->val$sysuiMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/systemui/wmshell/BubblesManager$5$$ExternalSyntheticLambda1;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v1, v4}, Lcom/android/systemui/wmshell/BubblesManager$5$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/wmshell/BubblesManager$5;Ljava/lang/Object;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p1, Lcom/android/wm/shell/bubbles/BubbleEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->isTextChanged()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$BubbleMetadata;->getAutoExpandBubble()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    if-eqz v0, :cond_2

    iget-object v4, p1, Lcom/android/wm/shell/bubbles/BubbleEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/wm/shell/bubbles/BubbleData;->hasOverflowBubbleWithKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object p2, p1, Lcom/android/wm/shell/bubbles/BubbleEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Lcom/android/wm/shell/bubbles/BubbleData;->getOverflowBubbleWithKey(Ljava/lang/String;)Lcom/android/wm/shell/bubbles/Bubble;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->isBubble()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v2}, Lcom/android/wm/shell/bubbles/BubbleEntry;->setFlagBubble(Z)V

    :cond_1
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/wm/shell/bubbles/BubbleController;->updateNotNotifyingEntry(Lcom/android/wm/shell/bubbles/Bubble;Lcom/android/wm/shell/bubbles/BubbleEntry;Z)V

    goto :goto_1

    :cond_2
    iget-object v4, p1, Lcom/android/wm/shell/bubbles/BubbleEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/wm/shell/bubbles/BubbleData;->hasAnyBubbleWithKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v0, :cond_3

    iget-object p2, p1, Lcom/android/wm/shell/bubbles/BubbleEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Lcom/android/wm/shell/bubbles/BubbleData;->getAnyBubbleWithkey(Ljava/lang/String;)Lcom/android/wm/shell/bubbles/Bubble;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/wm/shell/bubbles/BubbleController;->updateNotNotifyingEntry(Lcom/android/wm/shell/bubbles/Bubble;Lcom/android/wm/shell/bubbles/BubbleEntry;Z)V

    goto :goto_1

    :cond_3
    iget-object v0, p1, Lcom/android/wm/shell/bubbles/BubbleEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getLocusId()Landroid/content/LocusId;

    move-result-object v0

    iget-object v4, v3, Lcom/android/wm/shell/bubbles/BubbleData;->mSuppressedBubbles:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object p2, p1, Lcom/android/wm/shell/bubbles/BubbleEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Lcom/android/wm/shell/bubbles/BubbleData;->getSuppressedBubbleWithKey(Ljava/lang/String;)Lcom/android/wm/shell/bubbles/Bubble;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/wm/shell/bubbles/BubbleController;->updateNotNotifyingEntry(Lcom/android/wm/shell/bubbles/Bubble;Lcom/android/wm/shell/bubbles/BubbleEntry;Z)V

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    invoke-virtual {v3, p1, v0}, Lcom/android/wm/shell/bubbles/BubbleData;->getOrCreateBubble(Lcom/android/wm/shell/bubbles/BubbleEntry;Lcom/android/wm/shell/bubbles/Bubble;)Lcom/android/wm/shell/bubbles/Bubble;

    move-result-object v0

    iget-boolean p1, p1, Lcom/android/wm/shell/bubbles/BubbleEntry;->mShouldSuppressNotificationList:Z

    if-eqz p1, :cond_6

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/bubbles/Bubble;->isEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/bubbles/Bubble;->setShouldAutoExpand(Z)V

    :cond_5
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mImpl:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->mCachedState:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;->updateBubbleSuppressedState(Lcom/android/wm/shell/bubbles/Bubble;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/wm/shell/bubbles/BubbleController;->inflateAndAdd(Lcom/android/wm/shell/bubbles/Bubble;ZZ)V

    :cond_7
    :goto_1
    return-void
.end method

.method public final updateBubbleViews()V
    .locals 9

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mLayerView:Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_BUBBLES_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mIsStatusBarShade:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleController;->hasBubbles()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BUBBLES:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const/4 v7, 0x0

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v8

    const-wide v4, -0x47e534b99ff1caeaL    # -1.9685153563080112E-38

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mIsStatusBarShade:Z

    const/4 v2, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    const/4 v3, 0x4

    if-eqz v0, :cond_2

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mLayerView:Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleController;->hasBubbles()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mLayerView:Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    if-eqz v0, :cond_14

    iget-object v3, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    iget-object v3, v3, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_4

    :cond_6
    move v3, v2

    :goto_1
    iget-object v4, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    iget-object v4, v4, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_b

    iget-object v4, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    iget-object v4, v4, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/wm/shell/bubbles/Bubble;

    iget-object v5, v4, Lcom/android/wm/shell/bubbles/Bubble;->mAppName:Ljava/lang/String;

    iget-object v6, v4, Lcom/android/wm/shell/bubbles/Bubble;->mTitle:Ljava/lang/String;

    if-nez v6, :cond_7

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f130d15

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    :cond_7
    iget-object v7, v4, Lcom/android/wm/shell/bubbles/Bubble;->mIconView:Lcom/android/wm/shell/bubbles/BadgedImageView;

    if-eqz v7, :cond_a

    iget-boolean v8, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    if-nez v8, :cond_9

    if-lez v3, :cond_8

    goto :goto_2

    :cond_8
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getBubbleCount()I

    move-result v7

    iget-object v4, v4, Lcom/android/wm/shell/bubbles/Bubble;->mIconView:Lcom/android/wm/shell/bubbles/BadgedImageView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v6, v5, v7}, [Ljava/lang/Object;

    move-result-object v5

    const v6, 0x7f130320

    invoke-virtual {v8, v6, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_9
    :goto_2
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x7f13031f

    filled-new-array {v6, v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v8, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_a
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_b
    :goto_4
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    :goto_5
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x0

    if-ge v2, v0, :cond_12

    if-lez v2, :cond_c

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    add-int/lit8 v4, v2, -0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/bubbles/Bubble;

    goto :goto_6

    :cond_c
    move-object v0, v3

    :goto_6
    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    iget-object v4, v4, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/wm/shell/bubbles/Bubble;

    iget-object v4, v4, Lcom/android/wm/shell/bubbles/Bubble;->mIconView:Lcom/android/wm/shell/bubbles/BadgedImageView;

    if-nez v4, :cond_d

    goto :goto_8

    :cond_d
    iget-boolean v5, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    if-eqz v5, :cond_f

    invoke-virtual {v4, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    if-eqz v0, :cond_e

    iget-object v3, v0, Lcom/android/wm/shell/bubbles/Bubble;->mIconView:Lcom/android/wm/shell/bubbles/BadgedImageView;

    :cond_e
    if-eqz v3, :cond_11

    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleStackView$16;

    invoke-direct {v0, p0, v3}, Lcom/android/wm/shell/bubbles/BubbleStackView$16;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;Landroid/view/View;)V

    invoke-virtual {v4, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    goto :goto_8

    :cond_f
    if-nez v2, :cond_10

    move v0, v1

    goto :goto_7

    :cond_10
    const/4 v0, 0x2

    :goto_7
    invoke-virtual {v4, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_11
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_12
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleOverflow:Lcom/android/wm/shell/bubbles/BubbleOverflow;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleOverflow;->getIconView()Lcom/android/wm/shell/bubbles/BadgedImageView;

    move-result-object v3

    :cond_13
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mShowingOverflow:Z

    if-eqz v0, :cond_14

    if-eqz v3, :cond_14

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    iget-object v2, v2, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/bubbles/Bubble;

    iget-object v0, v0, Lcom/android/wm/shell/bubbles/Bubble;->mIconView:Lcom/android/wm/shell/bubbles/BadgedImageView;

    if-eqz v0, :cond_14

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleStackView$17;

    invoke-direct {v1, p0, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView$17;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;Landroid/view/View;)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_14
    return-void
.end method

.method public final updateNotNotifyingEntry(Lcom/android/wm/shell/bubbles/Bubble;Lcom/android/wm/shell/bubbles/BubbleEntry;Z)V
    .locals 5

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->showInShade()Z

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    iget-object v2, v1, Lcom/android/wm/shell/bubbles/BubbleData;->mSelectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-virtual {p1, v2}, Lcom/android/wm/shell/bubbles/Bubble;->equals(Ljava/lang/Object;)Z

    move-result v2

    iget-boolean v1, v1, Lcom/android/wm/shell/bubbles/BubbleData;->mExpanded:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/bubbles/Bubble;->setEntry(Lcom/android/wm/shell/bubbles/BubbleEntry;)V

    if-nez v1, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->showInShade()Z

    move-result p2

    if-nez p2, :cond_2

    :cond_1
    move v3, v4

    :cond_2
    invoke-virtual {p1, v3}, Lcom/android/wm/shell/bubbles/Bubble;->setSuppressNotification(Z)V

    xor-int/lit8 p2, v1, 0x1

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/bubbles/Bubble;->setShowDot(Z)V

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->showInShade()Z

    move-result p2

    if-eq v0, p2, :cond_3

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mImpl:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->mCachedState:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;->updateBubbleSuppressedState(Lcom/android/wm/shell/bubbles/Bubble;)V

    :cond_3
    return-void
.end method

.method public final updateWindowFlagsForBackpress(Z)V
    .locals 8

    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mAddedToWindowManager:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_BUBBLES_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BUBBLES:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v7

    const/4 v5, 0x3

    const/4 v6, 0x0

    const-wide v3, -0x110b3ae33638cd7dL    # -3.0751948369522234E226

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mWmLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x28

    :goto_0
    const/high16 p1, 0x1000000

    or-int/2addr p1, v1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p0, p1, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mLayerView:Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p0, p1, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    :goto_1
    return-void
.end method
