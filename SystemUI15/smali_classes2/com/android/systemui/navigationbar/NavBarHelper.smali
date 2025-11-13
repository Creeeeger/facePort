.class public final Lcom/android/systemui/navigationbar/NavBarHelper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;
.implements Lcom/android/systemui/accessibility/AccessibilityButtonModeObserver$ModeChangedListener;
.implements Lcom/android/systemui/accessibility/AccessibilityButtonTargetsObserver$TargetsChangedListener;
.implements Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;
.implements Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final dispatchRotation:Lcom/android/systemui/navigationbar/NavBarHelper$3;

.field public mA11yButtonState:J

.field public final mAccessibilityButtonModeObserver:Lcom/android/systemui/accessibility/AccessibilityButtonModeObserver;

.field public final mAccessibilityButtonTargetsObserver:Lcom/android/systemui/accessibility/AccessibilityButtonTargetsObserver;

.field public final mAccessibilityGestureHandler:Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;

.field public final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public final mAssistContentObserver:Lcom/android/systemui/navigationbar/NavBarHelper$1;

.field public final mAssistManagerLazy:Ldagger/Lazy;

.field public mAssistantAvailable:Z

.field public mAssistantTouchGestureEnabled:Z

.field public final mCentralSurfacesOptionalLazy:Ldagger/Lazy;

.field public final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mContext:Landroid/content/Context;

.field public final mCornerGestureHandler:Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;

.field public final mEdgeBackGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

.field public final mEdgeBackGestureHandlerFactory:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$Factory;

.field public final mHandler:Landroid/os/Handler;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public mLastIMEhints:I

.field public mLongPressHomeEnabled:Z

.field public final mMainExecutor:Ljava/util/concurrent/Executor;

.field public mNavBarMode:I

.field public final mNavBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

.field public final mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

.field public final mRotationWatcher:Lcom/android/systemui/navigationbar/NavBarHelper$4;

.field public mRotationWatcherRotation:I

.field private mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private final mSettingsObserver:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field public final mStateListeners:Ljava/util/List;

.field public final mSystemActions:Lcom/android/systemui/accessibility/SystemActions;

.field public mTogglingNavbarTaskbar:Z

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;

.field public final mWallpaperVisibilityListener:Lcom/android/systemui/navigationbar/NavBarHelper$2;

.field public mWallpaperVisible:Z

.field public mWindowState:I

.field public mWindowStateDisplayId:I

.field public final mWindowStateDisplays:Landroid/util/SparseIntArray;

.field public final mWm:Landroid/view/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/navigationbar/NavBarHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/accessibility/AccessibilityButtonModeObserver;Lcom/android/systemui/accessibility/AccessibilityButtonTargetsObserver;Lcom/android/systemui/accessibility/SystemActions;Lcom/android/systemui/recents/OverviewProxyService;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$Factory;Landroid/view/IWindowManager;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/settings/DisplayTracker;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/CommandQueue;Ljava/util/concurrent/Executor;Lcom/android/systemui/navigationbar/store/NavBarStore;Lcom/android/systemui/util/SettingsHelper;Landroid/hardware/display/DisplayManager;Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/accessibility/AccessibilityManager;",
            "Lcom/android/systemui/accessibility/AccessibilityButtonModeObserver;",
            "Lcom/android/systemui/accessibility/AccessibilityButtonTargetsObserver;",
            "Lcom/android/systemui/accessibility/SystemActions;",
            "Lcom/android/systemui/recents/OverviewProxyService;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Lcom/android/systemui/navigationbar/NavigationModeController;",
            "Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$Factory;",
            "Landroid/view/IWindowManager;",
            "Lcom/android/systemui/settings/UserTracker;",
            "Lcom/android/systemui/settings/DisplayTracker;",
            "Lcom/android/systemui/statusbar/NotificationShadeWindowController;",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            "Lcom/android/systemui/dump/DumpManager;",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/systemui/navigationbar/store/NavBarStore;",
            "Lcom/android/systemui/util/SettingsHelper;",
            "Landroid/hardware/display/DisplayManager;",
            "Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p11

    move-object/from16 v3, p18

    move-object/from16 v4, p23

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v5, v0, Lcom/android/systemui/navigationbar/NavBarHelper;->mHandler:Landroid/os/Handler;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v0, Lcom/android/systemui/navigationbar/NavBarHelper;->mStateListeners:Ljava/util/List;

    new-instance v6, Landroid/util/SparseIntArray;

    invoke-direct {v6}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v6, v0, Lcom/android/systemui/navigationbar/NavBarHelper;->mWindowStateDisplays:Landroid/util/SparseIntArray;

    new-instance v6, Lcom/android/systemui/navigationbar/NavBarHelper$1;

    invoke-direct {v6, p0, v5}, Lcom/android/systemui/navigationbar/NavBarHelper$1;-><init>(Lcom/android/systemui/navigationbar/NavBarHelper;Landroid/os/Handler;)V

    iput-object v6, v0, Lcom/android/systemui/navigationbar/NavBarHelper;->mAssistContentObserver:Lcom/android/systemui/navigationbar/NavBarHelper$1;

    new-instance v5, Lcom/android/systemui/navigationbar/NavBarHelper$2;

    invoke-direct {v5, p0}, Lcom/android/systemui/navigationbar/NavBarHelper$2;-><init>(Lcom/android/systemui/navigationbar/NavBarHelper;)V

    iput-object v5, v0, Lcom/android/systemui/navigationbar/NavBarHelper;->mWallpaperVisibilityListener:Lcom/android/systemui/navigationbar/NavBarHelper$2;

    new-instance v5, Lcom/android/systemui/navigationbar/NavBarHelper$3;

    invoke-direct {v5, p0}, Lcom/android/systemui/navigationbar/NavBarHelper$3;-><init>(Lcom/android/systemui/navigationbar/NavBarHelper;)V

    iput-object v5, v0, Lcom/android/systemui/navigationbar/NavBarHelper;->dispatchRotation:Lcom/android/systemui/navigationbar/NavBarHelper$3;

    new-instance v5, Lcom/android/systemui/navigationbar/NavBarHelper$4;

    invoke-direct {v5, p0}, Lcom/android/systemui/navigationbar/NavBarHelper$4;-><init>(Lcom/android/systemui/navigationbar/NavBarHelper;)V

    iput-object v5, v0, Lcom/android/systemui/navigationbar/NavBarHelper;->mRotationWatcher:Lcom/android/systemui/navigationbar/NavBarHelper$4;

    new-instance v5, Lcom/android/systemui/navigationbar/NavBarHelper$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0}, Lcom/android/systemui/navigationbar/NavBarHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/navigationbar/NavBarHelper;)V

    iput-object v5, v0, Lcom/android/systemui/navigationbar/NavBarHelper;->mSettingsObserver:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v5, v6}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "Unexpected initialization for non-primary user"

    const-string v2, "NavBarHelper"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, "OPS not initialized for non-primary user, just return"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput-object v1, v0, Lcom/android/systemui/navigationbar/NavBarHelper;->mContext:Landroid/content/Context;

    move-object/from16 v5, p15

    iput-object v5, v0, Lcom/android/systemui/navigationbar/NavBarHelper;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    iput-object v3, v0, Lcom/android/systemui/navigationbar/NavBarHelper;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/navigationbar/NavBarHelper;->mContentResolver:Landroid/content/ContentResolver;

    move-object v5, p2

    iput-object v5, v0, Lcom/android/systemui/navigationbar/NavBarHelper;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    move-object v5, p7

    iput-object v5, v0, Lcom/android/systemui/navigationbar/NavBarHelper;->mAssistManagerLazy:Ldagger/Lazy;

    move-object v5, p8

    iput-object v5, v0, Lcom/android/systemui/navigationbar/NavBarHelper;->mCentralSurfacesOptionalLazy:Ldagger/Lazy;

    move-object/from16 v5, p9

    iput-object v5, v0, Lcom/android/systemui/navigationbar/NavBarHelper;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object/from16 v5, p13

    iput-object v5, v0, Lcom/android/systemui/navigationbar/NavBarHelper;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    move-object v5, p5

    iput-object v5, v0, Lcom/android/systemui/navigationbar/NavBarHelper;->mSystemActions:Lcom/android/systemui/accessibility/SystemActions;

    move-object v5, p3

    iput-object v5, v0, Lcom/android/systemui/navigationbar/NavBarHelper;->mAccessibilityButtonModeObserver:Lcom/android/systemui/accessibility/AccessibilityButtonModeObserver;

    move-object v5, p4

    iput-object v5, v0, Lcom/android/systemui/navigationbar/NavBarHelper;->mAccessibilityButtonTargetsObserver:Lcom/android/systemui/accessibility/AccessibilityButtonTargetsObserver;

    move-object/from16 v5, p12

    iput-object v5, v0, Lcom/android/systemui/navigationbar/NavBarHelper;->mWm:Landroid/view/IWindowManager;

    invoke-virtual/range {p14 .. p14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$Factory$$ExternalSyntheticLambda0;

    invoke-direct {v5, v2, p1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$Factory$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$Factory;Landroid/content/Context;)V

    iget-object v6, v2, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$Factory;->mUiThreadContext:Lcom/android/systemui/util/concurrency/UiThreadContext;

    invoke-virtual {v6, v5}, Lcom/android/systemui/util/concurrency/UiThreadContext;->runWithScissors(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    iput-object v5, v0, Lcom/android/systemui/navigationbar/NavBarHelper;->mEdgeBackGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    move-object/from16 v5, p19

    iput-object v5, v0, Lcom/android/systemui/navigationbar/NavBarHelper;->mMainExecutor:Ljava/util/concurrent/Executor;

    move-object/from16 v5, p10

    invoke-virtual {v5, p0}, Lcom/android/systemui/navigationbar/NavigationModeController;->addListener(Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;)I

    move-result v5

    iput v5, v0, Lcom/android/systemui/navigationbar/NavBarHelper;->mNavBarMode:I

    invoke-virtual {v3, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    move-object/from16 v3, p16

    check-cast v3, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v3, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    move-object v3, p6

    invoke-virtual {p6, p0}, Lcom/android/systemui/recents/OverviewProxyService;->addCallback(Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;)V

    move-object/from16 v3, p17

    invoke-virtual {v3, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Lcom/android/systemui/Dumpable;)V

    sget-boolean v3, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz v3, :cond_1

    iput-object v2, v0, Lcom/android/systemui/navigationbar/NavBarHelper;->mEdgeBackGestureHandlerFactory:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$Factory;

    move-object/from16 v2, p20

    iput-object v2, v0, Lcom/android/systemui/navigationbar/NavBarHelper;->mNavBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    move-object/from16 v2, p21

    iput-object v2, v0, Lcom/android/systemui/navigationbar/NavBarHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    :cond_1
    sget-boolean v2, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_SEARCLE:Z

    if-eqz v2, :cond_2

    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavBarHelper;->mCornerGestureHandler:Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;

    iput-object v0, v4, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->navBarHelper:Lcom/android/systemui/navigationbar/NavBarHelper;

    :cond_2
    sget-boolean v2, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_LARGE_COVER_SCREEN:Z

    if-eqz v2, :cond_3

    new-instance v2, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;

    iget-object v3, v0, Lcom/android/systemui/navigationbar/NavBarHelper;->mNavBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    move-object/from16 v4, p22

    invoke-direct {v2, p1, p0, v3, v4}, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;-><init>(Landroid/content/Context;Lcom/android/systemui/navigationbar/NavBarHelper;Lcom/android/systemui/navigationbar/store/NavBarStore;Landroid/hardware/display/DisplayManager;)V

    iput-object v2, v0, Lcom/android/systemui/navigationbar/NavBarHelper;->mAccessibilityGestureHandler:Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;

    :cond_3
    return-void
.end method

.method public static transitionMode(IZ)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    and-int/lit8 p1, p0, 0x6

    const/4 v1, 0x6

    if-ne p1, v1, :cond_1

    const/4 p0, 0x3

    return p0

    :cond_1
    and-int/lit8 p1, p0, 0x4

    if-eqz p1, :cond_2

    return v1

    :cond_2
    and-int/lit8 p1, p0, 0x2

    if-eqz p1, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    and-int/lit8 p1, p0, 0x40

    if-eqz p1, :cond_4

    return v0

    :cond_4
    sget-boolean p1, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz p1, :cond_5

    const/high16 p1, 0x100000

    and-int/2addr p0, p1

    if-eqz p0, :cond_5

    const/4 p0, 0x7

    return p0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string p2, "NavbarTaskbarFriendster"

    const-string v0, "  longPressHomeEnabled="

    invoke-static {p1, p2, v0}, Lcom/android/keyguard/CarrierTextController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mLongPressHomeEnabled:Z

    const-string v1, "  mAssistantTouchGestureEnabled="

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mAssistantTouchGestureEnabled:Z

    const-string v1, "  mAssistantAvailable="

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mAssistantAvailable:Z

    const-string v1, "  mNavBarMode="

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p0, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mNavBarMode:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-boolean p0, Lcom/android/systemui/BasicRune;->NAVBAR_ADDITIONAL_LOG:Z

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "  AssistantBySideButton="

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean p2, Lcom/android/systemui/BasicRune;->SUPPORT_AI_AGENT:Z

    const-string v0, "  AssistantByNavStar="

    invoke-static {p0, p2, p1, v0}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object p2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p2, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p2}, Lcom/android/systemui/util/SettingsHelper;->getNavigationBarSPluginFlags()I

    move-result p2

    and-int/lit8 p2, p2, 0x8

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p0, p2, p1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    :cond_1
    return-void
.end method

.method public final getEdgeBackGestureHandler(Landroid/content/Context;)Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;
    .locals 2

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_COVER_DISPLAY:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mEdgeBackGestureHandlerFactory:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$Factory;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$Factory$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$Factory$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$Factory;Landroid/content/Context;)V

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$Factory;->mUiThreadContext:Lcom/android/systemui/util/concurrency/UiThreadContext;

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/concurrency/UiThreadContext;->runWithScissors(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mEdgeBackGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    return-object p0
.end method

.method public final isImeShown(I)Z
    .locals 5

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_TASKBAR:Z

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mLastIMEhints:I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    check-cast v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mWindowRootView:Lcom/android/systemui/scene/ui/view/WindowRootView;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/WindowInsets;->isVisible(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    sget-boolean v4, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz v4, :cond_2

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mCentralSurfacesOptionalLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBouncerShowing:Z

    and-int/2addr v0, p0

    :cond_2
    if-nez v0, :cond_3

    if-nez v1, :cond_4

    and-int/lit8 p0, p1, 0x2

    if-eqz p0, :cond_4

    :cond_3
    move v2, v3

    :cond_4
    return v2
.end method

.method public final onAccessibilityButtonModeChanged(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavBarHelper;->updateA11yState()V

    return-void
.end method

.method public final onAccessibilityButtonTargetsChanged(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavBarHelper;->updateA11yState()V

    return-void
.end method

.method public final onAccessibilityServicesStateChanged(Landroid/view/accessibility/AccessibilityManager;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavBarHelper;->updateA11yState()V

    return-void
.end method

.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mEdgeBackGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final onConnectionChanged(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/systemui/navigationbar/NavBarHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/navigationbar/NavBarHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/navigationbar/NavBarHelper;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    sget-boolean p1, Lcom/android/systemui/BasicRune;->NAVBAR_TASKBAR:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mNavBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    new-instance v0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateTaskbarAvailable;

    invoke-direct {v0}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateTaskbarAvailable;-><init>()V

    const/4 v1, 0x0

    invoke-interface {p1, p0, v0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;I)V

    :cond_0
    return-void
.end method

.method public final onNavigationModeChanged(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mNavBarMode:I

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavBarHelper;->updateAssistantAvailability()V

    sget-boolean p1, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_SEARCLE:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mCornerGestureHandler:Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->updateIsEnabled()V

    :cond_0
    sget-boolean p1, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_LARGE_COVER_SCREEN:Z

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mAccessibilityGestureHandler:Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->updateIsEnabled()V

    :cond_1
    return-void
.end method

.method public final registerNavTaskStateUpdater(Lcom/android/systemui/navigationbar/NavBarHelper$NavbarTaskbarStateUpdater;)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mStateListeners:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mTogglingNavbarTaskbar:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mStateListeners:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    const-string v0, "NavBarHelper"

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2, p0}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityServicesStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;)V

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mAccessibilityButtonModeObserver:Lcom/android/systemui/accessibility/AccessibilityButtonModeObserver;

    invoke-virtual {v2, p0}, Lcom/android/systemui/accessibility/SecureSettingsContentObserver;->addListener(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mAccessibilityButtonTargetsObserver:Lcom/android/systemui/accessibility/AccessibilityButtonTargetsObserver;

    invoke-virtual {v2, p0}, Lcom/android/systemui/accessibility/SecureSettingsContentObserver;->addListener(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "assistant"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mAssistContentObserver:Lcom/android/systemui/navigationbar/NavBarHelper$1;

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-virtual {v2, v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "assist_long_press_home_enabled"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mAssistContentObserver:Lcom/android/systemui/navigationbar/NavBarHelper$1;

    invoke-virtual {v2, v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "search_all_entrypoints_enabled"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mAssistContentObserver:Lcom/android/systemui/navigationbar/NavBarHelper$1;

    invoke-virtual {v2, v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "assist_touch_gesture_enabled"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mAssistContentObserver:Lcom/android/systemui/navigationbar/NavBarHelper$1;

    invoke-virtual {v2, v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mWm:Landroid/view/IWindowManager;

    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mRotationWatcher:Lcom/android/systemui/navigationbar/NavBarHelper$4;

    invoke-interface {v2, v3, v5}, Landroid/view/IWindowManager;->watchRotation(Landroid/view/IRotationWatcher;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "Failed to register rotation watcher"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mWm:Landroid/view/IWindowManager;

    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mWallpaperVisibilityListener:Lcom/android/systemui/navigationbar/NavBarHelper$2;

    invoke-interface {v2, v3, v5}, Landroid/view/IWindowManager;->registerWallpaperVisibilityListener(Landroid/view/IWallpaperVisibilityListener;I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mWallpaperVisible:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v3, "Failed to register wallpaper visibility listener"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mEdgeBackGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->onNavBarAttached()V

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mSettingsObserver:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    new-array v3, v1, [Landroid/net/Uri;

    const-string v4, "navigationbar_splugin_flags"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    :cond_0
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_SEARCLE:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mCornerGestureHandler:Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;

    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->isAttached:Z

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->updateIsEnabled()V

    :cond_1
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_LARGE_COVER_SCREEN:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mAccessibilityGestureHandler:Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;

    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->isAttached:Z

    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->tag:Ljava/lang/String;

    const-string v2, "onNavBarAttached"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->updateIsEnabled()V

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavBarHelper;->updateAssistantAvailability()V

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavBarHelper;->updateA11yState()V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1, v5}, Lcom/android/systemui/statusbar/CommandQueue;->recomputeDisableFlags(IZ)V

    goto :goto_2

    :cond_3
    invoke-interface {p1}, Lcom/android/systemui/navigationbar/NavBarHelper$NavbarTaskbarStateUpdater;->updateAccessibilityServicesState()V

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mAssistantAvailable:Z

    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mLongPressHomeEnabled:Z

    invoke-interface {p1, v0, v1}, Lcom/android/systemui/navigationbar/NavBarHelper$NavbarTaskbarStateUpdater;->updateAssistantAvailable(ZZ)V

    :goto_2
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mWallpaperVisible:Z

    invoke-interface {p1, v0}, Lcom/android/systemui/navigationbar/NavBarHelper$NavbarTaskbarStateUpdater;->updateWallpaperVisibility(Z)V

    iget p0, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mRotationWatcherRotation:I

    invoke-interface {p1, p0}, Lcom/android/systemui/navigationbar/NavBarHelper$NavbarTaskbarStateUpdater;->updateRotationWatcherState(I)V

    return-void
.end method

.method public final removeNavTaskStateUpdater(Lcom/android/systemui/navigationbar/NavBarHelper$NavbarTaskbarStateUpdater;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mStateListeners:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-boolean p1, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mTogglingNavbarTaskbar:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mStateListeners:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "NavBarHelper"

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityManager;->removeAccessibilityServicesStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;)Z

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mAccessibilityButtonModeObserver:Lcom/android/systemui/accessibility/AccessibilityButtonModeObserver;

    invoke-virtual {v0, p0}, Lcom/android/systemui/accessibility/SecureSettingsContentObserver;->removeListener(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mAccessibilityButtonTargetsObserver:Lcom/android/systemui/accessibility/AccessibilityButtonTargetsObserver;

    invoke-virtual {v0, p0}, Lcom/android/systemui/accessibility/SecureSettingsContentObserver;->removeListener(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mAssistContentObserver:Lcom/android/systemui/navigationbar/NavBarHelper$1;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mWm:Landroid/view/IWindowManager;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mRotationWatcher:Lcom/android/systemui/navigationbar/NavBarHelper$4;

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to unregister rotation watcher"

    invoke-static {p1, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mWm:Landroid/view/IWindowManager;

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mWallpaperVisibilityListener:Lcom/android/systemui/navigationbar/NavBarHelper$2;

    invoke-interface {v1, v2, v0}, Landroid/view/IWindowManager;->unregisterWallpaperVisibilityListener(Landroid/view/IWallpaperVisibilityListener;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "Failed to register wallpaper visibility listener"

    invoke-static {p1, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mEdgeBackGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->onNavBarDetached()V

    sget-boolean p1, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mSettingsObserver:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {p1, v1}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    :cond_0
    sget-boolean p1, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_SEARCLE:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mCornerGestureHandler:Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;

    iput-boolean v0, p1, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->isAttached:Z

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->updateIsEnabled()V

    :cond_1
    sget-boolean p1, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_LARGE_COVER_SCREEN:Z

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mAccessibilityGestureHandler:Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;

    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->isAttached:Z

    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->tag:Ljava/lang/String;

    const-string v0, "onNavBarDetached"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->disposeInputChannel()V

    :cond_2
    return-void
.end method

.method public final setAssistantOverridesRequested([I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mAssistManagerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/assist/AssistManager;

    iput-object p1, v0, Lcom/android/systemui/assist/AssistManager;->mAssistOverrideInvocationTypes:[I

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavBarHelper;->updateAssistantAvailability()V

    return-void
.end method

.method public final setWindowState(III)V
    .locals 1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mWindowStateDisplayId:I

    iput p3, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mWindowState:I

    sget-boolean p2, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mWindowStateDisplays:Landroid/util/SparseIntArray;

    invoke-virtual {p2, p1, p3}, Landroid/util/SparseIntArray;->put(II)V

    if-nez p3, :cond_1

    iget-object p2, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mNavBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    new-instance p3, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarWindowStateShowing;

    invoke-direct {p3}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarWindowStateShowing;-><init>()V

    invoke-interface {p2, p0, p3, p1}, Lcom/android/systemui/navigationbar/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;I)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mNavBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    new-instance p3, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarWindowStateHidden;

    invoke-direct {p3}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarWindowStateHidden;-><init>()V

    invoke-interface {p2, p0, p3, p1}, Lcom/android/systemui/navigationbar/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;I)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mCentralSurfacesOptionalLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Optional;

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast p1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateBubblesVisibility()V

    sget-boolean p1, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_LARGE_COVER_SCREEN:Z

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mAccessibilityGestureHandler:Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->updateIsEnabled()V

    :cond_3
    return-void
.end method

.method public final startAssistant(Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mAssistManagerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/assist/AssistManager;->startAssist(Landroid/os/Bundle;)V

    return-void
.end method

.method public final updateA11yState()V
    .locals 9

    iget-wide v0, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mA11yButtonState:J

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mAccessibilityButtonModeObserver:Lcom/android/systemui/accessibility/AccessibilityButtonModeObserver;

    invoke-virtual {v2}, Lcom/android/systemui/accessibility/SecureSettingsContentObserver;->getSettingsValue()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Invalid string for  "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "A11yButtonModeObserver"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    :goto_0
    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    if-ne v2, v6, :cond_0

    iput-wide v4, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mA11yButtonState:J

    move v2, v3

    goto :goto_4

    :cond_0
    sget-boolean v2, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v7, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v7, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v7}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v7

    const-string v8, "accessibility_button_targets"

    invoke-static {v2, v8, v7}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    move v3, v6

    :cond_1
    move v2, v3

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2, v6}, Landroid/view/accessibility/AccessibilityManager;->getAccessibilityShortcutTargets(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v6, :cond_3

    move v7, v6

    goto :goto_1

    :cond_3
    move v7, v3

    :goto_1
    const/4 v8, 0x2

    if-lt v2, v8, :cond_4

    move v3, v6

    :cond_4
    move v2, v3

    move v3, v7

    :goto_2
    if-eqz v3, :cond_5

    const-wide/16 v6, 0x10

    goto :goto_3

    :cond_5
    move-wide v6, v4

    :goto_3
    if-eqz v2, :cond_6

    const-wide/16 v4, 0x20

    :cond_6
    or-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mA11yButtonState:J

    sget-boolean v4, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_LARGE_COVER_SCREEN:Z

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mAccessibilityGestureHandler:Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;

    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->updateIsEnabled()V

    :cond_7
    :goto_4
    iget-wide v4, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mA11yButtonState:J

    cmp-long v4, v0, v4

    if-eqz v4, :cond_8

    const/16 v4, 0xb

    invoke-virtual {p0, v4, v3}, Lcom/android/systemui/navigationbar/NavBarHelper;->updateSystemAction(IZ)V

    const/16 v3, 0xc

    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/navigationbar/NavBarHelper;->updateSystemAction(IZ)V

    :cond_8
    sget-boolean v2, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz v2, :cond_9

    iget-wide v2, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mA11yButtonState:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    :cond_9
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mStateListeners:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/NavBarHelper$NavbarTaskbarStateUpdater;

    invoke-interface {v0}, Lcom/android/systemui/navigationbar/NavBarHelper$NavbarTaskbarStateUpdater;->updateAccessibilityServicesState()V

    goto :goto_5

    :cond_a
    return-void
.end method

.method public final updateAssistantAvailability()V
    .locals 9

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_AOSP_BUG_FIX:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mContentResolver:Landroid/content/ContentResolver;

    if-nez v0, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mAssistManagerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/assist/AssistManager;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v1

    iget-object v0, v0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mAssistManagerLazy:Ldagger/Lazy;

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/assist/AssistManager;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/android/systemui/assist/AssistManager;->shouldOverrideAssist(I)Z

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-eqz v3, :cond_2

    const v5, 0x1110216

    goto :goto_1

    :cond_2
    const v5, 0x1110038

    :goto_1
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v3, :cond_3

    const-string/jumbo v3, "search_all_entrypoints_enabled"

    goto :goto_2

    :cond_3
    const-string v3, "assist_long_press_home_enabled"

    :goto_2
    iget-object v6, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v6, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v6}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v6

    invoke-static {v5, v3, v4, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_4

    move v3, v2

    goto :goto_3

    :cond_4
    move v3, v1

    :goto_3
    iput-boolean v3, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mLongPressHomeEnabled:Z

    sget-boolean v4, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    const-class v5, Lcom/android/systemui/util/SettingsHelper;

    if-eqz v4, :cond_7

    if-eqz v3, :cond_6

    sget-boolean v3, Lcom/android/systemui/BasicRune;->SUPPORT_AI_AGENT:Z

    if-eqz v3, :cond_5

    sget-object v3, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v3, v5}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->getNavigationBarSPluginFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_6

    :cond_5
    move v3, v2

    goto :goto_4

    :cond_6
    move v3, v1

    :goto_4
    iput-boolean v3, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mLongPressHomeEnabled:Z

    :cond_7
    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x1110039

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iget-object v6, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v7, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v7, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v7}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v7

    const-string v8, "assist_touch_gesture_enabled"

    invoke-static {v6, v8, v3, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_8

    move v3, v2

    goto :goto_5

    :cond_8
    move v3, v1

    :goto_5
    iput-boolean v3, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mAssistantTouchGestureEnabled:Z

    if-eqz v0, :cond_a

    if-eqz v3, :cond_a

    if-eqz v4, :cond_a

    sget-boolean v0, Lcom/android/systemui/BasicRune;->SUPPORT_AI_AGENT:Z

    if-eqz v0, :cond_9

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, v5}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getNavigationBarSPluginFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_a

    :cond_9
    iget v0, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mNavBarMode:I

    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v0

    if-eqz v0, :cond_a

    move v1, v2

    :cond_a
    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mAssistantAvailable:Z

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mLongPressHomeEnabled:Z

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mStateListeners:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/navigationbar/NavBarHelper$NavbarTaskbarStateUpdater;

    invoke-interface {v3, v1, v0}, Lcom/android/systemui/navigationbar/NavBarHelper$NavbarTaskbarStateUpdater;->updateAssistantAvailable(ZZ)V

    goto :goto_6

    :cond_b
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_SEARCLE:Z

    if-eqz v0, :cond_c

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mCornerGestureHandler:Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/CornerGestureHandler;->updateIsEnabled()V

    :cond_c
    :goto_7
    return-void
.end method

.method public final updateSystemAction(IZ)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mSystemActions:Lcom/android/systemui/accessibility/SystemActions;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    :pswitch_1
    const p2, 0x1040177

    const-string v0, "SYSTEM_ACTION_DPAD_CENTER"

    goto/16 :goto_0

    :pswitch_2
    const p2, 0x104017a

    const-string v0, "SYSTEM_ACTION_DPAD_RIGHT"

    goto/16 :goto_0

    :pswitch_3
    const p2, 0x1040179

    const-string v0, "SYSTEM_ACTION_DPAD_LEFT"

    goto :goto_0

    :pswitch_4
    const p2, 0x1040178

    const-string v0, "SYSTEM_ACTION_DPAD_DOWN"

    goto :goto_0

    :pswitch_5
    const p2, 0x104017b

    const-string v0, "SYSTEM_ACTION_DPAD_UP"

    goto :goto_0

    :pswitch_6
    const p2, 0x1040176

    const-string v0, "SYSTEM_ACTION_ACCESSIBILITY_DISMISS_NOTIFICATION_SHADE"

    goto :goto_0

    :pswitch_7
    const p2, 0x104017c

    const-string v0, "SYSTEM_ACTION_ACCESSIBILITY_SHORTCUT"

    goto :goto_0

    :pswitch_8
    const p2, 0x1040181

    const-string v0, "SYSTEM_ACTION_ACCESSIBILITY_BUTTON_MENU"

    goto :goto_0

    :pswitch_9
    const p2, 0x1040182

    const-string v0, "SYSTEM_ACTION_ACCESSIBILITY_BUTTON"

    goto :goto_0

    :pswitch_a
    const p2, 0x104017d

    const-string v0, "SYSTEM_ACTION_HEADSET_HOOK"

    goto :goto_0

    :pswitch_b
    const p2, 0x1040186

    const-string v0, "SYSTEM_ACTION_TAKE_SCREENSHOT"

    goto :goto_0

    :pswitch_c
    const p2, 0x104017f

    const-string v0, "SYSTEM_ACTION_LOCK_SCREEN"

    goto :goto_0

    :pswitch_d
    const p2, 0x1040183

    const-string v0, "SYSTEM_ACTION_POWER_DIALOG"

    goto :goto_0

    :pswitch_e
    const p2, 0x1040184

    const-string v0, "SYSTEM_ACTION_QUICK_SETTINGS"

    goto :goto_0

    :pswitch_f
    const p2, 0x1040180

    const-string v0, "SYSTEM_ACTION_NOTIFICATIONS"

    goto :goto_0

    :pswitch_10
    const p2, 0x1040185

    const-string v0, "SYSTEM_ACTION_RECENTS"

    goto :goto_0

    :pswitch_11
    const p2, 0x104017e

    const-string v0, "SYSTEM_ACTION_HOME"

    goto :goto_0

    :pswitch_12
    const p2, 0x1040175

    const-string v0, "SYSTEM_ACTION_BACK"

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/accessibility/SystemActions;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0, p2, v0}, Lcom/android/systemui/accessibility/SystemActions;->createRemoteAction(ILjava/lang/String;)Landroid/app/RemoteAction;

    move-result-object p0

    invoke-virtual {v1, p0, p1}, Landroid/view/accessibility/AccessibilityManager;->registerSystemAction(Landroid/app/RemoteAction;I)V

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mSystemActions:Lcom/android/systemui/accessibility/SystemActions;

    iget-object p0, p0, Lcom/android/systemui/accessibility/SystemActions;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityManager;->unregisterSystemAction(I)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
