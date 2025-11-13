.class public final Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;
.super Lcom/android/systemui/util/ViewController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/util/DesktopManager$Callback;


# static fields
.field public static final ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;


# instance fields
.field public final mAdapter:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$KeyguardUserAdapter;

.field public final mBackground:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;

.field public mBarState:I

.field public mBgAnimator:Landroid/animation/ObjectAnimator;

.field public mDarkAmount:F

.field public final mDataSetObserver:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$4;

.field public mDynamicLockMode:I

.field public final mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public mIsDexModeEnabled:Z

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mKeyguardVisibilityHelper:Lcom/android/keyguard/KeyguardVisibilityHelper;

.field public mListView:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;

.field public final mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

.field public final mScreenObserver:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$2;

.field public final mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field public final mStatusBarStateListener:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$3;

.field public final mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

.field public mUserSwitcherOpen:Z

.field public oldAdapterCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;-><init>()V

    const-wide/16 v1, 0x168

    iput-wide v1, v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    sput-object v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherView;Landroid/content/Context;Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;Landroid/os/PowerManager;)V
    .locals 10

    move-object v7, p0

    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, v7, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mIsDexModeEnabled:Z

    iput v0, v7, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mDynamicLockMode:I

    const/4 v0, 0x1

    iput v0, v7, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->oldAdapterCount:I

    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$1;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;)V

    iput-object v0, v7, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$2;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;)V

    iput-object v0, v7, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mScreenObserver:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$2;

    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$3;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;)V

    iput-object v0, v7, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mStatusBarStateListener:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$3;

    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$4;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;)V

    iput-object v0, v7, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mDataSetObserver:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$4;

    const-string v0, "KeyguardUserSwitcherController"

    const-string v1, "New KeyguardUserSwitcherController"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p5

    iput-object v0, v7, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    move-object/from16 v4, p6

    iput-object v4, v7, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    move-object/from16 v8, p7

    iput-object v8, v7, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object/from16 v0, p8

    iput-object v0, v7, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    move-object/from16 v0, p9

    iput-object v0, v7, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-boolean v0, Lcom/android/systemui/LsRune;->LOCKUI_MULTI_USER:Z

    if-eqz v0, :cond_0

    new-instance v9, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$KeyguardUserAdapter;

    move-object v0, v9

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object/from16 v4, p6

    move-object/from16 v5, p12

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$KeyguardUserAdapter;-><init>(Landroid/content/Context;Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Landroid/os/PowerManager;Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;)V

    goto :goto_0

    :cond_0
    new-instance v9, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$KeyguardUserAdapter;

    move-object v0, v9

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object/from16 v4, p6

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$KeyguardUserAdapter;-><init>(Landroid/content/Context;Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;)V

    :goto_0
    iput-object v9, v7, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mAdapter:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$KeyguardUserAdapter;

    new-instance v9, Lcom/android/keyguard/KeyguardVisibilityHelper;

    iget-object v1, v7, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v9

    move-object/from16 v2, p7

    move-object/from16 v3, p10

    move-object/from16 v4, p11

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/KeyguardVisibilityHelper;-><init>(Landroid/view/View;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;ZLcom/android/systemui/log/LogBuffer;)V

    iput-object v9, v7, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mKeyguardVisibilityHelper:Lcom/android/keyguard/KeyguardVisibilityHelper;

    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;

    move-object v1, p2

    invoke-direct {v0, p2}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mBackground:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;

    return-void
.end method


# virtual methods
.method public final closeSwitcherIfOpenAndNotSimple(Z)Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mUserSwitcherOpen:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->getMUserSwitcherInteractor()Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->repository:Lcom/android/systemui/user/data/repository/UserRepository;

    check-cast v0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    iget-object v0, v0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->_userSwitcherSettings:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v0, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/user/data/model/UserSwitcherSettingsModel;

    iget-boolean v0, v0, Lcom/android/systemui/user/data/model/UserSwitcherSettingsModel;->isSimpleUserSwitcher:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->setUserSwitcherOpened(ZZ)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public final onDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mIsDexModeEnabled:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->updatevisibility()V

    return-void
.end method

.method public final onInit()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/util/ViewController;->onInit()V

    const-string v0, "KeyguardUserSwitcherController"

    const-string v1, "onInit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherView;

    const v1, 0x7f0a05cf

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mListView:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;

    sget-boolean v0, Lcom/android/systemui/LsRune;->LOCKUI_MULTI_USER:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->updatevisibility()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherView;

    new-instance v1, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public final onViewAttached()V
    .locals 2

    const-string v0, "KeyguardUserSwitcherController"

    const-string v1, "onViewAttached"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mAdapter:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$KeyguardUserAdapter;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mDataSetObserver:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$4;

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$KeyguardUserAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mStatusBarStateListener:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$3;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mScreenObserver:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$2;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-virtual {v1, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    sget-boolean v0, Lcom/android/systemui/LsRune;->LOCKUI_MULTI_USER:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/DesktopManager;

    invoke-interface {v0, p0}, Lcom/android/systemui/util/DesktopManager;->registerCallback(Lcom/android/systemui/util/DesktopManager$Callback;)V

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/DesktopManager;

    invoke-interface {v0}, Lcom/android/systemui/util/DesktopManager;->getSemDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->onDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->getMUserSwitcherInteractor()Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->repository:Lcom/android/systemui/user/data/repository/UserRepository;

    check-cast v0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    iget-object v0, v0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->_userSwitcherSettings:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v0, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/user/data/model/UserSwitcherSettingsModel;

    iget-boolean v0, v0, Lcom/android/systemui/user/data/model/UserSwitcherSettingsModel;->isSimpleUserSwitcher:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->setUserSwitcherOpened(ZZ)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mBackground:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherView;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->setAlpha(I)V

    :goto_0
    return-void
.end method

.method public final onViewDetached()V
    .locals 4

    const-string v0, "KeyguardUserSwitcherController"

    const-string v1, "onViewDetached"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->closeSwitcherIfOpenAndNotSimple(Z)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mDataSetObserver:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$4;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mAdapter:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$KeyguardUserAdapter;

    invoke-virtual {v2, v1}, Landroid/widget/BaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mStatusBarStateListener:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$3;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mScreenObserver:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$2;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-virtual {v2, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mBackground:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->setAlpha(I)V

    sget-boolean v0, Lcom/android/systemui/LsRune;->LOCKUI_MULTI_USER:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/DesktopManager;

    invoke-interface {v0, p0}, Lcom/android/systemui/util/DesktopManager;->unregisterCallback(Lcom/android/systemui/util/DesktopManager$Callback;)V

    :cond_0
    return-void
.end method

.method public final setAlpha(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mKeyguardVisibilityHelper:Lcom/android/keyguard/KeyguardVisibilityHelper;

    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mKeyguardViewVisibilityAnimating:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public final setUserSwitcherOpened(ZZ)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mUserSwitcherOpen:Z

    const-string/jumbo v4, "setUserSwitcherOpened: "

    const-string v5, " -> "

    const-string v6, " (animate="

    invoke-static {v4, v5, v6, v3, v1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KeyguardUserSwitcherController"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mUserSwitcherOpen:Z

    const-string/jumbo v1, "updateVisibilities: animate="

    invoke-static {v1, v4, v2}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-boolean v1, Lcom/android/systemui/LsRune;->LOCKUI_MULTI_USER:Z

    const/4 v3, 0x0

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mBgAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mUserSwitcherOpen:Z

    const-wide/16 v4, 0x190

    const/16 v6, 0xff

    const-string v7, "alpha"

    iget-object v8, v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mBackground:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;

    if-eqz v1, :cond_1

    filled-new-array {v3, v6}, [I

    move-result-object v1

    invoke-static {v8, v7, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mBgAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mBgAnimator:Landroid/animation/ObjectAnimator;

    sget-object v4, Lcom/android/app/animation/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mBgAnimator:Landroid/animation/ObjectAnimator;

    new-instance v4, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$5;

    invoke-direct {v4, v0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$5;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;)V

    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mBgAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    :cond_1
    filled-new-array {v6, v3}, [I

    move-result-object v1

    invoke-static {v8, v7, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mBgAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mBgAnimator:Landroid/animation/ObjectAnimator;

    sget-object v4, Lcom/android/app/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mBgAnimator:Landroid/animation/ObjectAnimator;

    new-instance v4, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$6;

    invoke-direct {v4, v0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$6;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;)V

    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mBgAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    :cond_2
    :goto_0
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mListView:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mUserSwitcherOpen:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v4

    const-string/jumbo v5, "updateVisibilities: open=%b animate=%b childCount=%d"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "KeyguardUserSwitcherListView"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, v1, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;->mAnimating:Z

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    new-array v5, v4, [Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView;

    move v6, v3

    :goto_1
    const/4 v7, 0x1

    if-ge v6, v4, :cond_5

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView;

    aput-object v8, v5, v6

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->clearAnimation()V

    if-nez v6, :cond_3

    aget-object v8, v5, v6

    invoke-virtual {v8, v7, v0, v2}, Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView;->updateVisibilities(ZZZ)V

    aget-object v8, v5, v6

    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->setClickable(Z)V

    goto :goto_2

    :cond_3
    aget-object v8, v5, v6

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setClickable(Z)V

    if-eqz v0, :cond_4

    aget-object v8, v5, v6

    invoke-virtual {v8, v7, v7, v3}, Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView;->updateVisibilities(ZZZ)V

    :cond_4
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    if-eqz v2, :cond_e

    if-le v4, v7, :cond_e

    const/4 v2, 0x0

    aput-object v2, v5, v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    iput-boolean v7, v1, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;->mAnimating:Z

    if-eqz v0, :cond_6

    iget-object v6, v1, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    goto :goto_3

    :cond_6
    iget-object v6, v1, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    :goto_3
    new-instance v15, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView$$ExternalSyntheticLambda0;

    invoke-direct {v15, v1, v0, v5}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;Z[Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView;)V

    iget-object v0, v6, Lcom/android/settingslib/animation/AppearAnimationUtils;->mProperties:Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->maxDelayColIndex:I

    iput v1, v0, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->maxDelayRowIndex:I

    new-array v8, v4, [[J

    iput-object v8, v0, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    const-wide/16 v8, -0x1

    move v10, v3

    :goto_4
    if-ge v10, v4, :cond_8

    iget-object v11, v0, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    new-array v12, v7, [J

    aput-object v12, v11, v10

    invoke-virtual {v6, v10, v3}, Lcom/android/settingslib/animation/AppearAnimationUtils;->calculateDelay(II)J

    move-result-wide v11

    iget-object v13, v0, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    aget-object v13, v13, v10

    aput-wide v11, v13, v3

    aget-object v13, v5, v10

    if-eqz v13, :cond_7

    cmp-long v13, v11, v8

    if-lez v13, :cond_7

    iput v3, v0, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->maxDelayColIndex:I

    iput v10, v0, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->maxDelayRowIndex:I

    move-wide v8, v11

    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_8
    iget v4, v0, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->maxDelayRowIndex:I

    if-eq v4, v1, :cond_9

    iget v4, v0, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->maxDelayColIndex:I

    if-ne v4, v1, :cond_a

    :cond_9
    move-object/from16 v19, v15

    goto :goto_a

    :cond_a
    move v1, v3

    :goto_5
    iget-object v4, v0, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    array-length v7, v4

    if-ge v1, v7, :cond_f

    aget-object v7, v4, v1

    aget-wide v10, v7, v3

    iget v7, v0, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->maxDelayRowIndex:I

    if-ne v7, v1, :cond_b

    iget v7, v0, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->maxDelayColIndex:I

    if-nez v7, :cond_b

    move-object/from16 v17, v15

    goto :goto_6

    :cond_b
    move-object/from16 v17, v2

    :goto_6
    iget-object v7, v6, Lcom/android/settingslib/animation/AppearAnimationUtils;->mRowTranslationScaler:Lcom/android/settingslib/animation/AppearAnimationUtils$RowTranslationScaler;

    if-eqz v7, :cond_c

    array-length v4, v4

    sub-int v7, v4, v1

    int-to-double v7, v7

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v7, v8, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    int-to-double v12, v4

    div-double/2addr v7, v12

    double-to-float v4, v7

    goto :goto_7

    :cond_c
    const/high16 v4, 0x3f800000    # 1.0f

    :goto_7
    iget v7, v6, Lcom/android/settingslib/animation/AppearAnimationUtils;->mStartTranslation:F

    mul-float/2addr v4, v7

    aget-object v9, v5, v1

    iget-boolean v7, v6, Lcom/android/settingslib/animation/AppearAnimationUtils;->mAppearing:Z

    if-eqz v7, :cond_d

    :goto_8
    move v14, v4

    goto :goto_9

    :cond_d
    neg-float v4, v4

    goto :goto_8

    :goto_9
    iget-object v4, v6, Lcom/android/settingslib/animation/AppearAnimationUtils;->mInterpolator:Landroid/view/animation/Interpolator;

    const/16 v18, 0x0

    iget-wide v12, v6, Lcom/android/settingslib/animation/AppearAnimationUtils;->mDuration:J

    move-object v8, v6

    move-object/from16 v19, v15

    move v15, v7

    move-object/from16 v16, v4

    invoke-virtual/range {v8 .. v18}, Lcom/android/settingslib/animation/AppearAnimationUtils;->createAnimation(Landroid/view/View;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;Lcom/android/keyguard/KeyguardInputView$1;)V

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v15, v19

    goto :goto_5

    :goto_a
    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView$$ExternalSyntheticLambda0;->run()V

    goto :goto_c

    :cond_e
    if-le v4, v7, :cond_f

    if-nez v0, :cond_f

    move v0, v7

    :goto_b
    if-ge v0, v4, :cond_f

    aget-object v1, v5, v0

    invoke-virtual {v1, v3, v7, v3}, Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView;->updateVisibilities(ZZZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_f
    :goto_c
    return-void
.end method

.method public final updatePosition(IIZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mListView:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;

    sget-object v1, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->Y:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    int-to-float p2, p2

    sget-object v2, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-static {v0, v1, p2, v2, p3}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mListView:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;

    sget-object v0, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->TRANSLATION_X:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    invoke-static {p2, v0, p1, v2, p3}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mListView:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p2, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherView;

    iget-object p3, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mListView:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;

    invoke-virtual {p2, p3, p1}, Landroid/widget/FrameLayout;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mListView:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getTranslationX()F

    move-result p2

    iget p3, p1, Landroid/graphics/Rect;->left:I

    int-to-float p3, p3

    add-float/2addr p2, p3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    add-float/2addr p2, p3

    float-to-int p2, p2

    iget-object p3, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mListView:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getTranslationY()F

    move-result p3

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    add-float/2addr p3, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    add-float/2addr p3, p1

    float-to-int p1, p3

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mBackground:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;

    iput p2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->mCircleX:I

    iput p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->mCircleY:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->updatePaint()V

    return-void
.end method

.method public final updatevisibility()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mListView:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;

    sget-boolean v1, Lcom/android/systemui/LsRune;->LOCKUI_MULTI_USER:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/systemui/LsRune;->KEYGUARD_FBE:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isKidsModeRunning()Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mIsDexModeEnabled:Z

    if-nez v2, :cond_1

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isUserUnlocked$1()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mDynamicLockMode:I

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v3, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2, v3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isUserSwitcherSettingOn()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mAdapter:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$KeyguardUserAdapter;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter;->getCount()I

    move-result p0

    const/4 v2, 0x1

    if-le p0, v2, :cond_1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/16 p0, 0x8

    :goto_1
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
