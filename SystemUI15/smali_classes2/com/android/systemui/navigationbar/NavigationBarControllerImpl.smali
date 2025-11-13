.class public final Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/navigationbar/NavigationBarController;


# instance fields
.field public final mCommandQueueCallbacks:Lcom/android/systemui/navigationbar/NavigationBarControllerImpl$1;

.field public final mConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

.field public final mContext:Landroid/content/Context;

.field public final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public final mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mHasNavBar:Landroid/util/SparseBooleanArray;

.field mIsLargeScreen:Z

.field mIsPhone:Z

.field public final mNavBarHelper:Lcom/android/systemui/navigationbar/NavBarHelper;

.field public final mNavBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

.field public final mNavBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

.field public mNavMode:I

.field public final mNavigationBarComponentFactory:Lcom/android/systemui/navigationbar/NavigationBarComponent$Factory;

.field mNavigationBars:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/navigationbar/NavigationBar;",
            ">;"
        }
    .end annotation
.end field

.field public final mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

.field public final mScreenPinningNotify:Lcom/android/systemui/navigationbar/ScreenPinningNotify;

.field public final mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public final mTaskbarDelegate:Lcom/android/systemui/navigationbar/TaskbarDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/recents/OverviewProxyService;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/model/SysUiState;Lcom/android/systemui/statusbar/CommandQueue;Ljava/util/concurrent/Executor;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/navigationbar/NavBarHelper;Lcom/android/systemui/navigationbar/TaskbarDelegate;Lcom/android/systemui/navigationbar/NavigationBarComponent$Factory;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/phone/AutoHideController;Lcom/android/systemui/statusbar/phone/LightBarController;Lcom/android/systemui/shared/system/TaskStackChangeListeners;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/settings/DisplayTracker;Lcom/android/systemui/navigationbar/store/NavBarStore;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/recents/OverviewProxyService;",
            "Lcom/android/systemui/navigationbar/NavigationModeController;",
            "Lcom/android/systemui/model/SysUiState;",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            "Lcom/android/systemui/navigationbar/NavBarHelper;",
            "Lcom/android/systemui/navigationbar/TaskbarDelegate;",
            "Lcom/android/systemui/navigationbar/NavigationBarComponent$Factory;",
            "Lcom/android/systemui/dump/DumpManager;",
            "Lcom/android/systemui/statusbar/phone/AutoHideController;",
            "Lcom/android/systemui/statusbar/phone/LightBarController;",
            "Lcom/android/systemui/shared/system/TaskStackChangeListeners;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/pip/Pip;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;",
            ">;",
            "Lcom/android/systemui/util/settings/SecureSettings;",
            "Lcom/android/systemui/settings/DisplayTracker;",
            "Lcom/android/systemui/navigationbar/store/NavBarStore;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    move-object/from16 v7, p11

    move-object/from16 v8, p19

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    iput-object v9, v0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mNavigationBars:Landroid/util/SparseArray;

    new-instance v9, Landroid/util/SparseBooleanArray;

    invoke-direct {v9}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v9, v0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mHasNavBar:Landroid/util/SparseBooleanArray;

    new-instance v9, Lcom/android/settingslib/applications/InterestingConfigChanges;

    const/high16 v10, 0x40000000    # 2.0f

    invoke-direct {v9, v10}, Lcom/android/settingslib/applications/InterestingConfigChanges;-><init>(I)V

    iput-object v9, v0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    new-instance v10, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl$1;

    invoke-direct {v10, p0}, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl$1;-><init>(Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;)V

    iput-object v10, v0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mCommandQueueCallbacks:Lcom/android/systemui/navigationbar/NavigationBarControllerImpl$1;

    iput-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v11, p6

    iput-object v11, v0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mExecutor:Ljava/util/concurrent/Executor;

    move-object/from16 v11, p10

    iput-object v11, v0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mNavigationBarComponentFactory:Lcom/android/systemui/navigationbar/NavigationBarComponent$Factory;

    move-object/from16 v11, p17

    iput-object v11, v0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    move-object/from16 v11, p18

    iput-object v11, v0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    const-class v11, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/display/DisplayManager;

    iput-object v11, v0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v4, v10}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    move-object/from16 v10, p7

    check-cast v10, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v10, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/settingslib/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    invoke-virtual {p3, p0}, Lcom/android/systemui/navigationbar/NavigationModeController;->addListener(Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;)I

    move-result v9

    iput v9, v0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mNavMode:I

    iput-object v5, v0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mNavBarHelper:Lcom/android/systemui/navigationbar/NavBarHelper;

    iput-object v6, v0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mTaskbarDelegate:Lcom/android/systemui/navigationbar/TaskbarDelegate;

    const/4 v9, 0x0

    move-object/from16 v10, p16

    invoke-virtual {v10, v9}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;

    iput-object v4, v6, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iput-object v2, v6, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    iput-object v5, v6, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mNavBarHelper:Lcom/android/systemui/navigationbar/NavBarHelper;

    iput-object v3, v6, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mNavigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

    move-object/from16 v3, p4

    iput-object v3, v6, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    invoke-virtual {v7, v6}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Lcom/android/systemui/Dumpable;)V

    move-object/from16 v3, p12

    iput-object v3, v6, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    move-object/from16 v3, p13

    iput-object v3, v6, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    move-object/from16 v3, p15

    iput-object v3, v6, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mPipOptional:Ljava/util/Optional;

    iput-object v9, v6, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mBackAnimation:Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;

    new-instance v3, Lcom/android/systemui/navigationbar/TaskbarDelegate$4;

    invoke-direct {v3, v6}, Lcom/android/systemui/navigationbar/TaskbarDelegate$4;-><init>(Lcom/android/systemui/navigationbar/TaskbarDelegate;)V

    iget-object v4, v6, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mLightBarTransitionsControllerFactory:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$Factory;

    invoke-interface {v4, v3}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$Factory;->create(Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$DarkIntensityApplier;)Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object v3

    iput-object v3, v6, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mLightBarTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-object/from16 v3, p14

    iput-object v3, v6, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mTaskStackChangeListeners:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    iget-object v3, v5, Lcom/android/systemui/navigationbar/NavBarHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Lcom/android/systemui/navigationbar/NavBarHelper;->getEdgeBackGestureHandler(Landroid/content/Context;)Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    move-result-object v3

    iput-object v3, v6, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mEdgeBackGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    sget-boolean v3, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f050029

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-nez v6, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v4

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/android/systemui/shared/recents/utilities/Utilities;->isLargeScreen(Landroid/content/Context;)Z

    move-result v6

    :goto_0
    iput-boolean v6, v0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mIsLargeScreen:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x1070103

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    array-length v6, v6

    if-nez v6, :cond_2

    move v4, v5

    :cond_2
    iput-boolean v4, v0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mIsPhone:Z

    invoke-virtual {v7, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Lcom/android/systemui/Dumpable;)V

    if-eqz v3, :cond_3

    iput-object v8, v0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mNavBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result v3

    move-object v4, v8

    check-cast v4, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-virtual {v4, v3}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getNavStateManager(I)Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mNavBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    iput-object v2, v0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    :cond_3
    sget-boolean v2, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED_HARD_KEY:Z

    if-eqz v2, :cond_4

    new-instance v2, Lcom/android/systemui/navigationbar/ScreenPinningNotify;

    invoke-direct {v2, p1}, Lcom/android/systemui/navigationbar/ScreenPinningNotify;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mScreenPinningNotify:Lcom/android/systemui/navigationbar/ScreenPinningNotify;

    :cond_4
    return-void
.end method


# virtual methods
.method public final checkNavBarModes(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBar;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->checkNavBarModes()V

    :cond_0
    return-void
.end method

.method public createNavigationBar(Landroid/view/Display;Landroid/os/Bundle;Lcom/android/internal/statusbar/RegisterStatusBarResult;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    move v4, v2

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    const-string v5, "Skip createNavigationBar displayId="

    const-string v6, "NavigationBarControllerImpl"

    if-eqz v4, :cond_3

    const-string p0, " isDexDisplay="

    invoke-static {v5, v0, p0, v4, v6}, Lcom/android/keyguard/KeyguardSecSecurityContainerController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)V

    return-void

    :cond_3
    sget-boolean v4, Lcom/android/systemui/LsRune;->COVER_VIRTUAL_DISPLAY:Z

    if-eqz v4, :cond_5

    invoke-virtual {p1}, Landroid/view/Display;->getFlags()I

    move-result v4

    const/high16 v7, 0x80000

    and-int/2addr v4, v7

    if-eqz v4, :cond_4

    move v1, v2

    :cond_4
    if-eqz v1, :cond_5

    const-string p0, " isCoverDisplay="

    invoke-static {v5, v0, p0, v1, v6}, Lcom/android/keyguard/KeyguardSecSecurityContainerController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)V

    return-void

    :cond_5
    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->shouldCreateNavBarAndTaskBar(I)Z

    move-result v1

    if-nez v1, :cond_6

    return-void

    :cond_6
    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->initializeTaskbarIfNecessary()Z

    move-result v1

    if-eqz v1, :cond_7

    sget-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_POLICY_VISIBILITY:Z

    if-nez v1, :cond_7

    return-void

    :cond_7
    if-eqz v3, :cond_8

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mContext:Landroid/content/Context;

    goto :goto_2

    :cond_8
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v1

    :goto_2
    sget-boolean v2, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mNavBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    check-cast v2, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->initDisplayDependenciesIfNeeded(ILandroid/content/Context;)V

    :cond_9
    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mNavigationBarComponentFactory:Lcom/android/systemui/navigationbar/NavigationBarComponent$Factory;

    invoke-interface {v2, v1, p2}, Lcom/android/systemui/navigationbar/NavigationBarComponent$Factory;->create(Landroid/content/Context;Landroid/os/Bundle;)Lcom/android/systemui/navigationbar/NavigationBarComponent;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/systemui/navigationbar/NavigationBarComponent;->getNavigationBar()Lcom/android/systemui/navigationbar/NavigationBar;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/systemui/util/ViewController;->init()V

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl$2;

    invoke-direct {v0, p0, p3, p2, p1}, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl$2;-><init>(Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;Lcom/android/internal/statusbar/RegisterStatusBarResult;Lcom/android/systemui/navigationbar/NavigationBar;Landroid/view/Display;)V

    invoke-virtual {p2, v0}, Lcom/android/systemui/util/ViewController;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public final disableAnimationsDuringHide(IJ)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBar;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/navigationbar/NavigationBar;->disableAnimationsDuringHide(J)V

    :cond_0
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    sget-boolean p2, Lcom/android/systemui/BasicRune;->NAVBAR_ADDITIONAL_LOG:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "isSimplifiedGesture="

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_SIMPLIFIED_GESTURE:Z

    const-string v2, "isSupportSearcle="

    invoke-static {p2, v1, p1, v2}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_SEARCLE:Z

    const-string v2, "isSupportLegacyGestureOptions="

    invoke-static {p2, v1, p1, v2}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_NAVIGATION_BAR_THEME"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SupportLegacyGestureOptions"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "isSupportLegacyGestureOptions(by NavStar)="

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "navigationbar_splugin_flags"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-static {p2, v1, p1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "mIsLargeScreen="

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mIsLargeScreen:Z

    const-string v2, "mNavMode="

    invoke-static {p2, v1, p1, v2}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v1, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mNavMode:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    iget-object p2, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge v0, p2, :cond_3

    if-lez v0, :cond_2

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_2
    iget-object p2, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-virtual {p2, p1}, Lcom/android/systemui/navigationbar/NavigationBar;->dump(Ljava/io/PrintWriter;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final finishBarAnimations(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBar;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mBarBackground:Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mAnimating:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mAnimating:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public final forceRepositionCoverNavigationBar(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mNavigationBars:Landroid/util/SparseArray;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBar;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBar;->repositionNavigationBar(I)V

    :cond_0
    return-void
.end method

.method public final getDefaultNavigationBar()Lcom/android/systemui/navigationbar/NavigationBar;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mNavigationBars:Landroid/util/SparseArray;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBar;

    return-object p0
.end method

.method public final getNavigationBarView(I)Lcom/android/systemui/navigationbar/NavigationBarView;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBar;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->getView()Lcom/android/systemui/navigationbar/NavigationBarView;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final initializeTaskbarIfNecessary()Z
    .locals 8

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    const-string v1, "NavigationBarController#initializeTaskbarIfNecessary"

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mTaskbarDelegate:Lcom/android/systemui/navigationbar/TaskbarDelegate;

    iget-object v4, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mNavBarHelper:Lcom/android/systemui/navigationbar/NavBarHelper;

    const/4 v5, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    sget-boolean v6, Lcom/android/systemui/BasicRune;->NAVBAR_TASKBAR:Z

    if-eqz v6, :cond_0

    iget-object v7, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mNavBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    check-cast v7, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    invoke-virtual {v7, v2}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->isTaskBarEnabled(Z)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    move v2, v5

    :goto_0
    if-eqz v2, :cond_2

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    iput-boolean v1, v4, Lcom/android/systemui/navigationbar/NavBarHelper;->mTogglingNavbarTaskbar:Z

    sget-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_POLICY_VISIBILITY:Z

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->removeNavigationBar(I)V

    :cond_1
    invoke-virtual {v3, v0}, Lcom/android/systemui/navigationbar/TaskbarDelegate;->init(I)V

    iput-boolean v5, v4, Lcom/android/systemui/navigationbar/NavBarHelper;->mTogglingNavbarTaskbar:Z

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lcom/android/systemui/navigationbar/TaskbarDelegate;->destroy()V

    :goto_1
    if-eqz v6, :cond_3

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    if-eqz p0, :cond_3

    check-cast p0, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;

    invoke-virtual {p0, v2}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;->isTaskbarEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    const-string v0, "NavigationBarControllerImpl"

    const-string v1, "An error occurred in initializeTaskbarIfNecessary(): "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_2
    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->supportsTaskbar()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->shouldCreateNavBarAndTaskBar(I)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    move v2, v5

    :goto_3
    if-eqz v2, :cond_6

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    iput-boolean v1, v4, Lcom/android/systemui/navigationbar/NavBarHelper;->mTogglingNavbarTaskbar:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->removeNavigationBar(I)V

    invoke-virtual {v3, v0}, Lcom/android/systemui/navigationbar/TaskbarDelegate;->init(I)V

    iput-boolean v5, v4, Lcom/android/systemui/navigationbar/NavBarHelper;->mTogglingNavbarTaskbar:Z

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_4

    :cond_6
    invoke-virtual {v3}, Lcom/android/systemui/navigationbar/TaskbarDelegate;->destroy()V

    :goto_4
    return v2
.end method

.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 13

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    if-eqz v1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Skip onConfigChanged for userId="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NavigationBarControllerImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mIsLargeScreen:Z

    const/4 v2, 0x1

    const v3, 0x7f050029

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    iget-object v5, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-nez v5, :cond_1

    move v5, v2

    goto :goto_0

    :cond_1
    move v5, v4

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/shared/recents/utilities/Utilities;->isLargeScreen(Landroid/content/Context;)Z

    move-result v5

    :goto_0
    iput-boolean v5, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mIsLargeScreen:Z

    if-eqz v0, :cond_3

    move v0, v4

    :goto_1
    iget-object v5, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    iget-object v5, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/navigationbar/NavigationBar;

    iget-object v5, v5, Lcom/android/systemui/navigationbar/NavigationBar;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    new-instance v7, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnConfigChanged;

    invoke-direct {v7, p1}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnConfigChanged;-><init>(Landroid/content/res/Configuration;)V

    invoke-virtual {v5}, Landroid/content/Context;->getDisplayId()I

    move-result v8

    iget-object v9, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mNavBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    invoke-interface {v9, p0, v7, v8}, Lcom/android/systemui/navigationbar/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;I)V

    new-instance v7, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarConfigChanged;

    const v8, 0x11101e7

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    const v11, 0x11101ea

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    const v12, 0x10e00ef

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-direct {v7, v8, v10, v11, v6}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarConfigChanged;-><init>(ZZZI)V

    invoke-virtual {v5}, Landroid/content/Context;->getDisplayId()I

    move-result v5

    invoke-interface {v9, p0, v7, v5}, Lcom/android/systemui/navigationbar/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    invoke-virtual {v3, v0}, Lcom/android/settingslib/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v0

    iget-boolean v3, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mIsLargeScreen:Z

    if-eq v3, v1, :cond_4

    goto :goto_2

    :cond_4
    move v2, v4

    :goto_2
    sget-boolean v3, Lcom/android/systemui/BasicRune;->NAVBAR_ADDITIONAL_LOG:Z

    const-string v5, "NoBackGesture"

    if-eqz v3, :cond_5

    if-eqz v2, :cond_5

    const-string v3, "NavbarController: largeScreenChanged: old="

    const-string v6, ", new="

    invoke-static {v3, v6, v1}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mIsLargeScreen:Z

    invoke-static {v1, v3, v5}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "NavbarController: newConfig="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mTaskbarDelegate initialized="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mTaskbarDelegate:Lcom/android/systemui/navigationbar/TaskbarDelegate;

    iget-boolean v6, v3, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mInitialized:Z

    const-string v7, " willApplyConfigToNavbars="

    const-string v8, " navBarCount="

    invoke-static {v1, v6, v7, v0, v8}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    iget-object v6, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " largeScreenChanged="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_TASKBAR:Z

    if-eqz v1, :cond_7

    iget-boolean v5, v3, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mInitialized:Z

    if-eqz v5, :cond_7

    sget-boolean v5, Lcom/android/systemui/BasicRune;->NAVBAR_POLICY_VISIBILITY:Z

    if-nez v5, :cond_6

    iget-object v5, v3, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mWindowContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v3, v5, p1}, Lcom/android/systemui/navigationbar/TaskbarDelegate;->configurationChanged(Landroid/content/res/Resources;Landroid/content/res/Configuration;)V

    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {v3}, Lcom/android/systemui/navigationbar/TaskbarDelegate;->updateTaskbarButtonIconsAndHints()V

    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->updateNavbarForTaskbar()Z

    move-result v1

    if-eqz v1, :cond_8

    sget-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_POLICY_VISIBILITY:Z

    if-nez v1, :cond_8

    return-void

    :cond_8
    if-eqz v0, :cond_c

    :goto_3
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge v4, p1, :cond_d

    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/navigationbar/NavigationBar;

    if-eqz v1, :cond_b

    const-string v2, "disabled_state"

    iget v3, v1, Lcom/android/systemui/navigationbar/NavigationBar;->mDisabledFlags1:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "disabled2_state"

    iget v3, v1, Lcom/android/systemui/navigationbar/NavigationBar;->mDisabledFlags2:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "appearance"

    iget v3, v1, Lcom/android/systemui/navigationbar/NavigationBar;->mAppearance:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "behavior"

    iget v3, v1, Lcom/android/systemui/navigationbar/NavigationBar;->mBehavior:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "transient_state"

    iget-boolean v3, v1, Lcom/android/systemui/navigationbar/NavigationBar;->mTransientShown:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-boolean v2, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz v2, :cond_9

    const-string v2, "icon_hints"

    iget v3, v1, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationIconHints:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_9
    iget-object v1, v1, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    iget-object v1, v1, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mLightTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_a

    iget v1, v1, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mNextDarkIntensity:F

    goto :goto_4

    :cond_a
    iget v1, v1, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mDarkIntensity:F

    :goto_4
    const-string v2, "dark_intensity"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->removeNavigationBar(I)V

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->createNavigationBar(Landroid/view/Display;Landroid/os/Bundle;Lcom/android/internal/statusbar/RegisterStatusBarResult;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_c
    :goto_5
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v4, v0, :cond_d

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/navigationbar/NavigationBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_d
    return-void
.end method

.method public final onNavigationModeChanged(I)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mNavMode:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mNavMode:I

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->updateAccessibilityButtonModeIfNeeded()V

    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;I)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final removeNavigationBar(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBar;->destroyView()V

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    return-void
.end method

.method public final shouldCreateNavBarAndTaskBar(I)Z
    .locals 2

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED_HARD_KEY:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mHasNavBar:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mHasNavBar:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    return p0

    :cond_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    :try_start_0
    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->hasNavigationBar(I)Z

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mHasNavBar:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const-string p0, "NavigationBarControllerImpl"

    const-string p1, "Cannot get WindowManager."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public supportsTaskbar()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mIsLargeScreen:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mIsPhone:Z

    if-nez p0, :cond_0

    sget-object p0, Lcom/android/wm/shell/Flags;->FEATURE_FLAGS:Lcom/android/wm/shell/FeatureFlagsImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

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

.method public final touchAutoDim(I)V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBar;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    invoke-virtual {v0, p1}, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->setAutoDim(Z)V

    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAutoDim:Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda13;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const-wide/16 v1, 0x8ca

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final transitionTo(II)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBar;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    const/4 p1, 0x1

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/statusbar/phone/BarTransitions;->transitionTo(IZ)V

    :cond_0
    return-void
.end method

.method public final updateAccessibilityButtonModeIfNeeded()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    const-string v1, "accessibility_button_mode"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getIntForUser(Ljava/lang/String;II)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    return-void

    :cond_0
    iget v5, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mNavMode:I

    invoke-static {v5}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v5

    const/4 v6, 0x2

    if-eqz v5, :cond_1

    if-nez v4, :cond_1

    invoke-interface {v0, v1, v6, v3}, Lcom/android/systemui/util/settings/UserSettingsProxy;->putIntForUser(Ljava/lang/String;II)Z

    goto :goto_0

    :cond_1
    iget p0, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mNavMode:I

    invoke-static {p0}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result p0

    if-nez p0, :cond_2

    if-ne v4, v6, :cond_2

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/util/settings/UserSettingsProxy;->putIntForUser(Ljava/lang/String;II)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final updateNavbarForTaskbar()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->initializeTaskbarIfNecessary()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mNavigationBars:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_POLICY_VISIBILITY:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v2}, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->createNavigationBar(Landroid/view/Display;Landroid/os/Bundle;Lcom/android/internal/statusbar/RegisterStatusBarResult;)V

    goto :goto_0

    :cond_0
    sget-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED_HARD_KEY:Z

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    iget v1, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mNavMode:I

    invoke-static {v1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mNavigationBars:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->removeNavigationBar(I)V

    :cond_1
    :goto_0
    return v0
.end method
