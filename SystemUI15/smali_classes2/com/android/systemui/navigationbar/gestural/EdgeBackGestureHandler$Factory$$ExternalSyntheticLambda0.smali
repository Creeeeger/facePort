.class public final synthetic Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$Factory$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$Factory;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$Factory;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$Factory$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$Factory;

    iput-object p2, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$Factory$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$Factory$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iget-object v10, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$Factory$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$Factory;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v20, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    move-object/from16 v0, v20

    iget-object v6, v10, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$Factory;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    iget-object v11, v10, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$Factory;->mViewConfiguration:Landroid/view/ViewConfiguration;

    iget-object v12, v10, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$Factory;->mWindowManager:Landroid/view/WindowManager;

    iget-object v13, v10, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$Factory;->mWindowManagerService:Landroid/view/IWindowManager;

    iget-object v14, v10, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$Factory;->mInputManager:Landroid/hardware/input/InputManager;

    iget-object v15, v10, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$Factory;->mPipOptional:Ljava/util/Optional;

    iget-object v2, v10, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$Factory;->mDesktopModeOptional:Ljava/util/Optional;

    move-object/from16 v16, v2

    iget-object v2, v10, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$Factory;->mBackGestureTfClassifierProviderProvider:Ljavax/inject/Provider;

    move-object/from16 v18, v2

    iget-object v2, v10, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$Factory;->mLightBarControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v19, v2

    iget-object v2, v10, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$Factory;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v3, v10, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$Factory;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    iget-object v4, v10, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$Factory;->mPluginManager:Lcom/android/systemui/plugins/PluginManager;

    iget-object v5, v10, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$Factory;->mUiThreadContext:Lcom/android/systemui/util/concurrency/UiThreadContext;

    iget-object v7, v10, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$Factory;->mBgHandler:Landroid/os/Handler;

    iget-object v8, v10, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$Factory;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    iget-object v9, v10, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$Factory;->mNavigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

    move-object/from16 p0, v0

    iget-object v0, v10, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$Factory;->mBackPanelControllerFactory:Lcom/android/systemui/navigationbar/gestural/BackPanelController$Factory;

    move-object/from16 v21, v2

    move-object v2, v10

    move-object v10, v0

    iget-object v0, v2, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$Factory;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v2, v21

    invoke-direct/range {v0 .. v19}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/OverviewProxyService;Lcom/android/systemui/model/SysUiState;Lcom/android/systemui/plugins/PluginManager;Lcom/android/systemui/util/concurrency/UiThreadContext;Ljava/util/concurrent/Executor;Landroid/os/Handler;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/navigationbar/gestural/BackPanelController$Factory;Landroid/view/ViewConfiguration;Landroid/view/WindowManager;Landroid/view/IWindowManager;Landroid/hardware/input/InputManager;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/systemui/plugins/FalsingManager;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v20
.end method
