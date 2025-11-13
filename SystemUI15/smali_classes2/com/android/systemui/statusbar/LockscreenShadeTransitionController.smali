.class public final Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# static fields
.field public static final Companion:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$Companion;

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final ambientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

.field public animationHandlerOnKeyguardDismiss:Lkotlin/jvm/functions/Function1;

.field public final callbacks:Ljava/util/List;

.field public centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

.field public final context:Landroid/content/Context;

.field public final depthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

.field public depthControllerTransitionDistance:I

.field public dragDownAmount:F

.field public dragDownAnimator:Landroid/animation/ValueAnimator;

.field public draggedDownEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field public final editModeController:Ldagger/Lazy;

.field public final falsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

.field public forceApplyAmount:Z

.field public fractionToShade:F

.field public fullTransitionDistance:I

.field public fullTransitionDistanceByTap:I

.field public isKeyguardAnimatorStarted:Z

.field public isWakingToShadeLocked:Z

.field public final keyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field public final keyguardTransitionController$delegate:Lkotlin/Lazy;

.field public final keyguardTransitionControllerFactory:Lcom/android/systemui/statusbar/LockscreenShadeKeyguardTransitionController$Factory;

.field public final lazyQSSceneAdapter:Ldagger/Lazy;

.field public final lockScreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field public final logger:Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;

.field public final mdmOverlayContainer:Lcom/android/systemui/mdm/MdmOverlayContainer;

.field public final mediaHierarchyManager:Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;

.field public nextHideKeyguardNeedsNoAnimation:Z

.field public notificationShelfTransitionDistance:I

.field public nsslController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

.field public overDragAmount:F

.field public final panelFlingOvershootAmount:F

.field public final panelSAStatusLogInteractor:Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;

.field public final panelSplitHelper$delegate:Lkotlin/Lazy;

.field public final panelTouchBlockHelper$delegate:Lkotlin/Lazy;

.field public final phoneShadeOverScroller$delegate:Lkotlin/Lazy;

.field public final pluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

.field public pulseHeight:F

.field public pulseHeightAnimator:Landroid/animation/ValueAnimator;

.field public qS:Lcom/android/systemui/plugins/qs/QS;

.field public final qsTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeQsTransitionController;

.field public final scrimTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeScrimTransitionController;

.field public final shadeInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

.field public final shadeLockscreenInteractorLazy:Ldagger/Lazy;

.field public final shadeRepository:Lcom/android/systemui/shade/data/repository/ShadeRepository;

.field public final singleShadeOverScrollerFactory:Lcom/android/systemui/statusbar/SingleShadeLockScreenOverScroller$Factory;

.field public final splitShadeOverScrollerFactory:Lcom/android/systemui/statusbar/SplitShadeLockScreenOverScroller$Factory;

.field public final splitShadeStateController:Lcom/android/systemui/statusbar/policy/SplitShadeStateController;

.field public final statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field public statusBarTransitionDistance:I

.field public final touchHelper:Lcom/android/systemui/statusbar/DragDownHelper;

.field public udfpsTransitionDistance:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->Companion:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$Companion;

    const-string v0, "LockscreenShadeTransitionController"

    sput-object v0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/mdm/MdmOverlayContainer;Ldagger/Lazy;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/statusbar/notification/stack/AmbientState;Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;Lcom/android/systemui/statusbar/LockscreenShadeScrimTransitionController;Lcom/android/systemui/statusbar/LockscreenShadeKeyguardTransitionController$Factory;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/keyguard/animator/KeyguardTouchSecurityInjector;Lcom/android/systemui/statusbar/NotificationShadeDepthController;Landroid/content/Context;Lcom/android/systemui/statusbar/SplitShadeLockScreenOverScroller$Factory;Lcom/android/systemui/statusbar/SingleShadeLockScreenOverScroller$Factory;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/LockscreenShadeQsTransitionController$Factory;Lcom/android/systemui/shade/data/repository/ShadeRepository;Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;Lcom/android/systemui/statusbar/policy/SplitShadeStateController;Ldagger/Lazy;Lcom/android/systemui/keyguard/domain/interactor/NaturalScrollingSettingObserver;Ldagger/Lazy;Lcom/android/systemui/pluginlock/PluginLockMediator;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/mdm/MdmOverlayContainer;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/statusbar/SysuiStatusBarStateController;",
            "Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;",
            "Lcom/android/systemui/statusbar/phone/KeyguardBypassController;",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
            "Lcom/android/systemui/classifier/FalsingCollector;",
            "Lcom/android/systemui/statusbar/notification/stack/AmbientState;",
            "Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;",
            "Lcom/android/systemui/statusbar/LockscreenShadeScrimTransitionController;",
            "Lcom/android/systemui/statusbar/LockscreenShadeKeyguardTransitionController$Factory;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/keyguard/animator/KeyguardTouchSecurityInjector;",
            "Lcom/android/systemui/statusbar/NotificationShadeDepthController;",
            "Landroid/content/Context;",
            "Lcom/android/systemui/statusbar/SplitShadeLockScreenOverScroller$Factory;",
            "Lcom/android/systemui/statusbar/SingleShadeLockScreenOverScroller$Factory;",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            "Lcom/android/systemui/plugins/FalsingManager;",
            "Lcom/android/systemui/dump/DumpManager;",
            "Lcom/android/systemui/statusbar/LockscreenShadeQsTransitionController$Factory;",
            "Lcom/android/systemui/shade/data/repository/ShadeRepository;",
            "Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;",
            "Lcom/android/systemui/statusbar/policy/SplitShadeStateController;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/keyguard/domain/interactor/NaturalScrollingSettingObserver;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/pluginlock/PluginLockMediator;",
            ")V"
        }
    .end annotation

    move-object v10, p0

    move-object/from16 v11, p3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p1

    iput-object v0, v10, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->mdmOverlayContainer:Lcom/android/systemui/mdm/MdmOverlayContainer;

    move-object v0, p2

    iput-object v0, v10, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->editModeController:Ldagger/Lazy;

    iput-object v11, v10, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    move-object/from16 v8, p4

    iput-object v8, v10, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->logger:Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;

    move-object/from16 v0, p5

    iput-object v0, v10, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->keyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    move-object/from16 v0, p6

    iput-object v0, v10, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->lockScreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    move-object/from16 v0, p7

    iput-object v0, v10, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->falsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    move-object/from16 v0, p8

    iput-object v0, v10, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->ambientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    move-object/from16 v0, p9

    iput-object v0, v10, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->mediaHierarchyManager:Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;

    move-object/from16 v0, p10

    iput-object v0, v10, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->scrimTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeScrimTransitionController;

    move-object/from16 v0, p11

    iput-object v0, v10, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->keyguardTransitionControllerFactory:Lcom/android/systemui/statusbar/LockscreenShadeKeyguardTransitionController$Factory;

    move-object/from16 v0, p14

    iput-object v0, v10, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->depthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    move-object/from16 v7, p15

    iput-object v7, v10, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->context:Landroid/content/Context;

    move-object/from16 v0, p16

    iput-object v0, v10, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->splitShadeOverScrollerFactory:Lcom/android/systemui/statusbar/SplitShadeLockScreenOverScroller$Factory;

    move-object/from16 v0, p17

    iput-object v0, v10, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->singleShadeOverScrollerFactory:Lcom/android/systemui/statusbar/SingleShadeLockScreenOverScroller$Factory;

    move-object/from16 v0, p18

    iput-object v0, v10, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    move-object/from16 v4, p24

    iput-object v4, v10, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->shadeRepository:Lcom/android/systemui/shade/data/repository/ShadeRepository;

    move-object/from16 v0, p25

    iput-object v0, v10, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->shadeInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

    move-object/from16 v0, p26

    iput-object v0, v10, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->splitShadeStateController:Lcom/android/systemui/statusbar/policy/SplitShadeStateController;

    move-object/from16 v0, p27

    iput-object v0, v10, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->shadeLockscreenInteractorLazy:Ldagger/Lazy;

    move-object/from16 v0, p29

    iput-object v0, v10, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->lazyQSSceneAdapter:Ldagger/Lazy;

    move-object/from16 v9, p30

    iput-object v9, v10, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->pluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    sget-object v0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$panelSplitHelper$2;->INSTANCE:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$panelSplitHelper$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, v10, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->panelSplitHelper$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$panelTouchBlockHelper$2;->INSTANCE:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$panelTouchBlockHelper$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, v10, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->panelTouchBlockHelper$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;

    iput-object v0, v10, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->panelSAStatusLogInteractor:Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;

    invoke-virtual/range {p15 .. p15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070c84

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, v10, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->panelFlingOvershootAmount:F

    new-instance v12, Lcom/android/systemui/statusbar/DragDownHelper;

    move-object v0, v12

    move-object/from16 v1, p21

    move-object v2, p0

    move-object/from16 v3, p28

    move-object/from16 v4, p24

    move-object/from16 v5, p12

    move-object/from16 v6, p13

    move-object/from16 v7, p15

    move-object/from16 v8, p4

    move-object/from16 v9, p30

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/statusbar/DragDownHelper;-><init>(Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Lcom/android/systemui/keyguard/domain/interactor/NaturalScrollingSettingObserver;Lcom/android/systemui/shade/data/repository/ShadeRepository;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/keyguard/animator/KeyguardTouchSecurityInjector;Landroid/content/Context;Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;Lcom/android/systemui/pluginlock/PluginLockMediator;)V

    iput-object v12, v10, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->touchHelper:Lcom/android/systemui/statusbar/DragDownHelper;

    new-instance v0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$splitShadeOverScroller$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$splitShadeOverScroller$2;-><init>(Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    new-instance v0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$phoneShadeOverScroller$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$phoneShadeOverScroller$2;-><init>(Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, v10, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->phoneShadeOverScroller$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$keyguardTransitionController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$keyguardTransitionController$2;-><init>(Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, v10, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->keyguardTransitionController$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$qsTransitionController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$qsTransitionController$1;-><init>(Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;)V

    move-object/from16 v1, p23

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/LockscreenShadeQsTransitionController$Factory;->create(Lkotlin/jvm/functions/Function0;)Lcom/android/systemui/statusbar/LockscreenShadeQsTransitionController;

    move-result-object v0

    iput-object v0, v10, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->qsTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeQsTransitionController;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v10, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->callbacks:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->updateResources$15()V

    new-instance v0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$1;-><init>(Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;)V

    move-object/from16 v1, p20

    check-cast v1, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    move-object/from16 v0, p22

    invoke-virtual {v0, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Lcom/android/systemui/Dumpable;)V

    new-instance v0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$2;-><init>(Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;)V

    move-object v1, v11

    check-cast v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    new-instance v0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$3;-><init>(Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;)V

    move-object/from16 v1, p19

    invoke-virtual {v1, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic getDragDownAnimator$frameworks__base__packages__SystemUI__android_common__SystemUI_core$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getPulseHeightAnimator$frameworks__base__packages__SystemUI__android_common__SystemUI_core$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final addCallback(Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$Callback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->callbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final canDragDown$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->editModeController:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardEditModeController;

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->getVIRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget v0, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->nsslController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_1
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mDynamicPrivacyController:Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->isInLockedDownShade()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->isQsFullyCollapsed$1()Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    :cond_4
    :goto_0
    return v1
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    new-instance p2, Landroid/util/IndentingPrintWriter;

    const-string v0, "  "

    invoke-direct {p2, p1, v0}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const-string p1, "LSShadeTransitionController:"

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->pulseHeight:F

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pulseHeight: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo p1, "useSplitShade: false"

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->dragDownAmount:F

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dragDownAmount: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->isDragDownAnywhereEnabled$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Z

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isDragDownAnywhereEnabled: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast p1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget p1, p1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isFalsingCheckNeeded: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->isWakingToShadeLocked:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isWakingToShadeLocked: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->animationHandlerOnKeyguardDismiss:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_1

    move v0, v1

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "hasPendingHandlerOnKeyguardDismiss: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final finishPulseAnimation(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->logger:Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;->logPulseExpansionFinished(Z)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->setPulseHeight(FZ)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->callbacks:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$Callback;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$Callback;->onPulseExpansionFinished()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->setPulseHeight(FZ)V

    :goto_1
    return-void
.end method

.method public final getFractionToShade()F
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->fractionToShade:F

    return p0
.end method

.method public final getPanelSplitHelper$1()Lcom/android/systemui/shade/SecPanelSplitHelper;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->panelSplitHelper$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/shade/SecPanelSplitHelper;

    return-object p0
.end method

.method public final goToLockedShade(Landroid/view/View;Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget v0, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->logger:Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;->logTryGoToLockedShade(Z)V

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->panelTouchBlockHelper$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shade/SecPanelTouchBlockHelper;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/shade/SecPanelTouchBlockHelper;->isKeyguardPanelDisabled()Z

    move-result v0

    if-ne v0, v1, :cond_1

    const-string p0, "LockscreenShadeTransitionController"

    const-string p1, "goToLockedShade: returned"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x0

    if-nez p2, :cond_2

    new-instance p2, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$goToLockedShade$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$goToLockedShade$1;-><init>(Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;)V

    goto :goto_1

    :cond_2
    move-object p2, v0

    :goto_1
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->goToLockedShadeInternal(Landroid/view/View;Lkotlin/jvm/functions/Function1;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$onDraggedDown$cancelRunnable$1;)V

    :cond_3
    return-void
.end method

.method public final goToLockedShadeInternal(Landroid/view/View;Lkotlin/jvm/functions/Function1;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$onDraggedDown$cancelRunnable$1;)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->shadeInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

    check-cast v0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;

    iget-object v0, v0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;->isShadeEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v0, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->logger:Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$onDraggedDown$cancelRunnable$1;->run()V

    :cond_0
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;->logShadeDisabledOnGoToLockedShade()V

    return-void

    :cond_1
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v2, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    if-nez v0, :cond_3

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$onDraggedDown$cancelRunnable$1;->run()V

    :cond_2
    const-string p0, "LockscreenShadeTransitionController"

    const-string p1, "not provisioned"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object p3, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->lockScreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    move-object v0, p3

    check-cast v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    iget v0, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    instance-of v2, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v3, v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setUserExpanded(ZZ)V

    :cond_4
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_5

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGroupExpansionChanging:Z

    :cond_5
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0

    :cond_6
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->falsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->keyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    if-eqz p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 p1, 0x0

    :goto_0
    check-cast p1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-object v2, p1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v4

    if-nez v4, :cond_8

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast p1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget p1, p1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    if-eqz p1, :cond_8

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardViewController;->resetKeyguardDismissAction()V

    :cond_8
    check-cast p3, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    invoke-virtual {p3, v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->isLockscreenPublicMode(I)Z

    if-eqz p2, :cond_9

    move p1, v3

    goto :goto_1

    :cond_9
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;->logGoingToLockedShade(Z)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    move-object p3, p1

    check-cast p3, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget-boolean p3, p3, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mIsDozing:Z

    if-eqz p3, :cond_a

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->isWakingToShadeLocked:Z

    :cond_a
    const/4 p3, 0x2

    invoke-interface {p1, p3}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setState(I)V

    const-wide/16 v0, 0x0

    if-eqz p2, :cond_b

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_b
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->performDefaultGoToFullShadeAnimation(J)V

    :goto_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->mdmOverlayContainer:Lcom/android/systemui/mdm/MdmOverlayContainer;

    invoke-virtual {p0}, Lcom/android/systemui/mdm/MdmOverlayContainer;->updateMdmPolicy()V

    return-void
.end method

.method public final isDragDownAnywhereEnabled$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget v0, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->keyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->isQsFullyCollapsed$1()Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 v1, 0x0

    :cond_1
    return v1
.end method

.method public final isDragDownEnabledForView$frameworks__base__packages__SystemUI__android_common__SystemUI_core(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->isDragDownAnywhereEnabled$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->nsslController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mDynamicPrivacyController:Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->isInLockedDownShade()Z

    move-result p0

    if-eqz p0, :cond_3

    if-nez p1, :cond_2

    return v1

    :cond_2
    instance-of p0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_3

    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSensitive:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public final isOverDraggingAllowed()Z
    .locals 2

    sget-object v0, Lcom/android/systemui/shade/SecPanelSplitHelper;->Companion:Lcom/android/systemui/shade/SecPanelSplitHelper$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isNotificationAsCard()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->getPanelSplitHelper$1()Lcom/android/systemui/shade/SecPanelSplitHelper;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isShadeState()Z

    move-result p0

    if-ne p0, v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :cond_1
    return v1
.end method

.method public final isQsFullyCollapsed$1()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->qS:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->isFullyCollapsed()Z

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->lazyQSSceneAdapter:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapter;

    check-cast p0, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl;

    iget-object p0, p0, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl;->qsImpl:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p0, p0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/QSImpl;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSImpl;->isFullyCollapsed()Z

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public final onDragDownStarted$frameworks__base__packages__SystemUI__android_common__SystemUI_core(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->logger:Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;->logDragDownStarted(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->nsslController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object p1, v1

    :cond_0
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->cancelLongPress()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->nsslController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->checkSnoozeLeavebehind()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->dragDownAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;->logAnimationCancelled(Z)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    sget-object p1, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->TAG:Ljava/lang/String;

    const-string v0, "onDragDownStarted"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->callbacks:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$Callback;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$Callback;->onExpansionStarted()V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final performDefaultGoToFullShadeAnimation(J)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->logger:Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;->logDefaultGoToFullShadeAnimation(J)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->shadeLockscreenInteractorLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shade/domain/interactor/ShadeLockscreenInteractor;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/android/systemui/shade/domain/interactor/ShadeLockscreenInteractor;->transitionToExpandedShade(JZ)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->forceApplyAmount:Z

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->setDragDownAmount$frameworks__base__packages__SystemUI__android_common__SystemUI_core(F)V

    iget v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->fullTransitionDistanceByTap:I

    int-to-float v0, v0

    new-instance v1, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$animateAppear$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$animateAppear$1;-><init>(Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;)V

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->setDragDownAmountAnimated(FJLkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final removeCallback(Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$Callback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->callbacks:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->callbacks:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setDragDownAmount$frameworks__base__packages__SystemUI__android_common__SystemUI_core(F)V
    .locals 7

    iget v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->dragDownAmount:F

    cmpg-float v0, v0, p1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->forceApplyAmount:Z

    if-eqz v0, :cond_12

    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->dragDownAmount:F

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dragDownAmount : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->nsslController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_1
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mDynamicPrivacyController:Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->isInLockedDownShade()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->dragDownAmount:F

    cmpg-float v0, v0, v2

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->forceApplyAmount:Z

    if-eqz v0, :cond_12

    :cond_3
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->dragDownAmount:F

    iget v3, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->notificationShelfTransitionDistance:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    invoke-static {v0}, Landroid/util/MathUtils;->saturate(F)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->fractionToShade:F

    iget-object v3, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->shadeRepository:Lcom/android/systemui/shade/data/repository/ShadeRepository;

    check-cast v3, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;

    iget-object v3, v3, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->_lockscreenShadeExpansion:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->nsslController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    move-object v1, v0

    :goto_1
    iget v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->fractionToShade:F

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iput v0, v3, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mFractionToShade:F

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateContentHeight()V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->qsTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeQsTransitionController;

    iget v1, v0, Lcom/android/systemui/statusbar/AbstractLockscreenShadeTransitionController;->dragDownAmount:F

    cmpg-float v1, p1, v1

    if-nez v1, :cond_5

    goto :goto_3

    :cond_5
    iput p1, v0, Lcom/android/systemui/statusbar/AbstractLockscreenShadeTransitionController;->dragDownAmount:F

    iget v1, v0, Lcom/android/systemui/statusbar/LockscreenShadeQsTransitionController;->qsTransitionStartDelay:I

    int-to-float v1, v1

    sub-float v1, p1, v1

    iput v1, v0, Lcom/android/systemui/statusbar/LockscreenShadeQsTransitionController;->qsDragDownAmount:F

    iget v3, v0, Lcom/android/systemui/statusbar/LockscreenShadeQsTransitionController;->qsTransitionDistance:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-static {v1}, Landroid/util/MathUtils;->saturate(F)F

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/LockscreenShadeQsTransitionController;->qsTransitionFraction:F

    iget v1, v0, Lcom/android/systemui/statusbar/LockscreenShadeQsTransitionController;->qsSquishStartFraction:F

    iget v3, v0, Lcom/android/systemui/statusbar/LockscreenShadeQsTransitionController;->qsDragDownAmount:F

    iget v4, v0, Lcom/android/systemui/statusbar/LockscreenShadeQsTransitionController;->qsSquishTransitionDistance:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v3}, Landroid/util/MathUtils;->saturate(F)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v1, v4, v3}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/LockscreenShadeQsTransitionController;->qsSquishTransitionFraction:F

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/LockscreenShadeQsTransitionController;->isTransitioningToFullShade:Z

    iget-object v1, v0, Lcom/android/systemui/statusbar/LockscreenShadeQsTransitionController;->qsProvider:Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/qs/QS;

    if-eqz v1, :cond_7

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/LockscreenShadeQsTransitionController;->isTransitioningToFullShade:Z

    iget v4, v0, Lcom/android/systemui/statusbar/LockscreenShadeQsTransitionController;->qsTransitionFraction:F

    iget v0, v0, Lcom/android/systemui/statusbar/LockscreenShadeQsTransitionController;->qsSquishTransitionFraction:F

    invoke-interface {v1, v3, v4, v0}, Lcom/android/systemui/plugins/qs/QS;->setTransitionToFullShadeProgress(ZFF)V

    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->callbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$Callback;

    iget v3, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->dragDownAmount:F

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    invoke-interface {v1, v3, v4, v5, v6}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$Callback;->setTransitionToFullShadeAmount(FZJ)V

    iget v3, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->fractionToShade:F

    invoke-interface {v1, v3}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$Callback;->setTransitionToFullShadeAmount(F)V

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->mediaHierarchyManager:Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;

    iget v1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->dragDownAmount:F

    invoke-virtual {v0, v1}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->setTransitionToFullShadeAmount(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->scrimTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeScrimTransitionController;

    iget v1, v0, Lcom/android/systemui/statusbar/AbstractLockscreenShadeTransitionController;->dragDownAmount:F

    cmpg-float v1, p1, v1

    if-nez v1, :cond_9

    goto :goto_7

    :cond_9
    iput p1, v0, Lcom/android/systemui/statusbar/AbstractLockscreenShadeTransitionController;->dragDownAmount:F

    iget v1, v0, Lcom/android/systemui/statusbar/LockscreenShadeScrimTransitionController;->scrimTransitionDistance:I

    int-to-float v1, v1

    div-float v1, p1, v1

    invoke-static {v1}, Landroid/util/MathUtils;->saturate(F)F

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/LockscreenShadeScrimTransitionController;->scrimProgress:F

    iget v1, v0, Lcom/android/systemui/statusbar/LockscreenShadeScrimTransitionController;->notificationsScrimTransitionDelay:I

    int-to-float v1, v1

    sub-float v1, p1, v1

    iput v1, v0, Lcom/android/systemui/statusbar/LockscreenShadeScrimTransitionController;->notificationsScrimDragAmount:F

    iget v3, v0, Lcom/android/systemui/statusbar/LockscreenShadeScrimTransitionController;->notificationsScrimTransitionDistance:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-static {v1}, Landroid/util/MathUtils;->saturate(F)F

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/LockscreenShadeScrimTransitionController;->notificationsScrimProgress:F

    iget v3, v0, Lcom/android/systemui/statusbar/LockscreenShadeScrimTransitionController;->scrimProgress:F

    iget-object v0, v0, Lcom/android/systemui/statusbar/LockscreenShadeScrimTransitionController;->scrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget v4, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mTransitionToFullShadeProgress:F

    cmpl-float v4, v3, v4

    if-nez v4, :cond_a

    iget v4, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mTransitionToLockScreenFullShadeNotificationsProgress:F

    cmpl-float v4, v1, v4

    if-eqz v4, :cond_e

    :cond_a
    iput v3, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mTransitionToFullShadeProgress:F

    iput v1, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mTransitionToLockScreenFullShadeNotificationsProgress:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_c

    cmpl-float v1, v1, v4

    if-lez v1, :cond_b

    goto :goto_5

    :cond_b
    const/4 v1, 0x0

    goto :goto_6

    :cond_c
    :goto_5
    const/4 v1, 0x1

    :goto_6
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mTransitioningToFullShade:Z

    if-eq v1, v3, :cond_d

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mTransitioningToFullShade:Z

    :cond_d
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->applyAndDispatchState()V

    :cond_e
    :goto_7
    iget v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->dragDownAmount:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->transitionToShadeAmountCommon(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->keyguardTransitionController$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/LockscreenShadeKeyguardTransitionController;

    iget v1, v0, Lcom/android/systemui/statusbar/AbstractLockscreenShadeTransitionController;->dragDownAmount:F

    cmpg-float v1, p1, v1

    if-nez v1, :cond_f

    goto :goto_8

    :cond_f
    iput p1, v0, Lcom/android/systemui/statusbar/AbstractLockscreenShadeTransitionController;->dragDownAmount:F

    iget v1, v0, Lcom/android/systemui/statusbar/LockscreenShadeKeyguardTransitionController;->alphaTransitionDistance:I

    int-to-float v1, v1

    div-float/2addr p1, v1

    invoke-static {p1}, Landroid/util/MathUtils;->saturate(F)F

    move-result p1

    iput p1, v0, Lcom/android/systemui/statusbar/LockscreenShadeKeyguardTransitionController;->alphaProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    iput v1, v0, Lcom/android/systemui/statusbar/LockscreenShadeKeyguardTransitionController;->alpha:F

    iget-object p1, v0, Lcom/android/systemui/statusbar/LockscreenShadeKeyguardTransitionController;->shadeLockscreenInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeLockscreenInteractor;

    invoke-interface {p1, v1}, Lcom/android/systemui/shade/domain/interactor/ShadeLockscreenInteractor;->setKeyguardTransitionProgress(F)V

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, v0, Lcom/android/systemui/statusbar/LockscreenShadeKeyguardTransitionController;->statusBarAlpha:F

    invoke-interface {p1, v1}, Lcom/android/systemui/shade/domain/interactor/ShadeLockscreenInteractor;->setKeyguardStatusBarAlpha(F)V

    iget v0, v0, Lcom/android/systemui/statusbar/LockscreenShadeKeyguardTransitionController;->alphaProgress:F

    invoke-interface {p1, v0}, Lcom/android/systemui/shade/domain/interactor/ShadeLockscreenInteractor;->onDragDownAmountChanged(F)V

    :goto_8
    iget-object p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->phoneShadeOverScroller$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/SingleShadeLockScreenOverScroller;

    iget v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->dragDownAmount:F

    iget v1, p1, Lcom/android/systemui/statusbar/SingleShadeLockScreenOverScroller;->expansionDragDownAmount:F

    cmpg-float v1, v0, v1

    if-nez v1, :cond_10

    goto :goto_9

    :cond_10
    iput v0, p1, Lcom/android/systemui/statusbar/SingleShadeLockScreenOverScroller;->expansionDragDownAmount:F

    iget-object v0, p1, Lcom/android/systemui/statusbar/SingleShadeLockScreenOverScroller;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget v0, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    const/4 v1, 0x1

    iget-object v3, p1, Lcom/android/systemui/statusbar/SingleShadeLockScreenOverScroller;->nsslController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    if-ne v0, v1, :cond_11

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isNeedsToExpandLocksNoti()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    iget v1, p1, Lcom/android/systemui/statusbar/SingleShadeLockScreenOverScroller;->expansionDragDownAmount:F

    int-to-float v0, v0

    div-float/2addr v1, v0

    invoke-static {v1}, Landroid/util/MathUtils;->saturate(F)F

    move-result v1

    iget v2, p1, Lcom/android/systemui/statusbar/SingleShadeLockScreenOverScroller;->totalDistanceForFullShadeTransition:I

    int-to-float v2, v2

    div-float/2addr v2, v0

    invoke-static {v1, v2}, Lcom/android/app/animation/Interpolators;->getOvershootInterpolation(FF)F

    move-result v0

    iget p1, p1, Lcom/android/systemui/statusbar/SingleShadeLockScreenOverScroller;->maxOverScrollAmount:I

    int-to-float p1, p1

    mul-float v2, v0, p1

    :cond_11
    float-to-int p1, v2

    int-to-float p1, p1

    iget-object v0, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iput p1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExtraTopInsetForFullShadeTransition:F

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iput p1, v1, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExtraTopInsetForFullShadeTransition:F

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateStackPosition(Z)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    :goto_9
    iget p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->dragDownAmount:F

    iget v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->notificationShelfTransitionDistance:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_12

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->isOverDraggingAllowed()Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->getScreenHeight(Landroid/content/Context;)I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x40400000    # 3.0f

    div-float/2addr p1, v0

    iget v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->dragDownAmount:F

    iget v1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->notificationShelfTransitionDistance:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    div-float/2addr v0, p1

    invoke-static {v0}, Landroid/util/MathUtils;->saturate(F)F

    move-result p1

    iget v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->panelFlingOvershootAmount:F

    mul-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->setOverDragAmount$frameworks__base__packages__SystemUI__android_common__SystemUI_core(F)V

    :cond_12
    return-void
.end method

.method public final setDragDownAmountAnimated(FJLkotlin/jvm/functions/Function0;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->logger:Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;->logDragDownAnimation(F)V

    iget v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->dragDownAmount:F

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p1, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    sget-object v0, Lcom/android/wm/shell/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x177

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$setDragDownAmountAnimated$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$setDragDownAmountAnimated$1;-><init>(Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    :cond_0
    if-eqz p4, :cond_1

    new-instance p2, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$setDragDownAmountAnimated$2;

    invoke-direct {p2, p4}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$setDragDownAmountAnimated$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->dragDownAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public final setOverDragAmount$frameworks__base__packages__SystemUI__android_common__SystemUI_core(F)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget v0, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->overDragAmount:F

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->overDragAmount:F

    cmpg-float v0, v0, p1

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iput p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->overDragAmount:F

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "overDragDownAmount : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->callbacks:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$Callback;

    iget v1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->overDragAmount:F

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$Callback;->setOverDragAmount(F)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->nsslController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    if-nez p1, :cond_3

    const/4 p1, 0x0

    :cond_3
    iget p0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->overDragAmount:F

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setOverExpansion(F)V

    :goto_1
    return-void
.end method

.method public final setPulseHeight(FZ)V
    .locals 2

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->pulseHeight:F

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p1, v0, p2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    sget-object p2, Lcom/android/wm/shell/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x177

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$setPulseHeight$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$setPulseHeight$1;-><init>(Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->pulseHeightAnimator:Landroid/animation/ValueAnimator;

    goto :goto_1

    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->pulseHeight:F

    iget-object p2, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->nsslController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    if-nez p2, :cond_1

    const/4 p2, 0x0

    :cond_1
    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setPulseHeight(F)F

    move-result p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->shadeLockscreenInteractorLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shade/domain/interactor/ShadeLockscreenInteractor;

    invoke-interface {v0, p2}, Lcom/android/systemui/shade/domain/interactor/ShadeLockscreenInteractor;->setOverStretchAmount(F)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->keyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->transitionToShadeAmountCommon(F)V

    :goto_1
    return-void
.end method

.method public final transitionToShadeAmountCommon(F)V
    .locals 3

    iget v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->depthControllerTransitionDistance:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->depthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    if-nez v0, :cond_1

    iget v0, v1, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->transitionToFullShadeProgress:F

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput v2, v1, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->transitionToFullShadeProgress:F

    goto :goto_0

    :cond_1
    int-to-float v0, v0

    div-float v0, p1, v0

    invoke-static {v0}, Landroid/util/MathUtils;->saturate(F)F

    move-result v0

    iget v2, v1, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->transitionToFullShadeProgress:F

    cmpg-float v2, v2, v0

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    iput v0, v1, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->transitionToFullShadeProgress:F

    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->udfpsTransitionDistance:I

    int-to-float v0, v0

    div-float v0, p1, v0

    invoke-static {v0}, Landroid/util/MathUtils;->saturate(F)F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->shadeRepository:Lcom/android/systemui/shade/data/repository/ShadeRepository;

    check-cast v1, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;

    iget-object v1, v1, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->_udfpsTransitionToFullShadeProgress:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->statusBarTransitionDistance:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-static {p1}, Landroid/util/MathUtils;->saturate(F)F

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    if-eqz p0, :cond_3

    move-object v2, p0

    :cond_3
    check-cast v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iput p1, v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mTransitionToFullShadeProgress:F

    return-void
.end method

.method public final updateResources$15()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->fullTransitionDistance:I

    iput v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->fullTransitionDistanceByTap:I

    iput v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->notificationShelfTransitionDistance:I

    iput v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->depthControllerTransitionDistance:I

    iput v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->udfpsTransitionDistance:I

    iput v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->statusBarTransitionDistance:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->splitShadeStateController:Lcom/android/systemui/statusbar/policy/SplitShadeStateController;

    check-cast p0, Lcom/android/systemui/statusbar/policy/SplitShadeStateControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SplitShadeStateControllerImpl;->shouldUseSplitNotificationShade()V

    return-void
.end method
