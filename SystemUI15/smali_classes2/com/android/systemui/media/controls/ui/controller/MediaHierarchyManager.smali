.class public final Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public allowMediaPlayerOnLockScreen:Z

.field public animationCrossFadeProgress:F

.field public animationPending:Z

.field public animationStartAlpha:F

.field public final animationStartBounds:Landroid/graphics/Rect;

.field public final animationStartClipping:Landroid/graphics/Rect;

.field public animationStartCrossFadeProgress:F

.field public final animator:Landroid/animation/ValueAnimator;

.field public final bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field public carouselAlpha:F

.field public collapsingShadeFromQS:Z

.field public final context:Landroid/content/Context;

.field public crossFadeAnimationEndLocation:I

.field public crossFadeAnimationStartLocation:I

.field public currentAttachmentLocation:I

.field public final currentBounds:Landroid/graphics/Rect;

.field public currentClipping:Landroid/graphics/Rect;

.field public desiredLocation:I

.field public distanceForFullShadeTransition:I

.field public dozeAnimationRunning:Z

.field public dreamMediaComplicationActive:Z

.field public dreamOverlayActive:Z

.field public final dreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

.field public fullShadeTransitionProgress:F

.field public fullyAwake:Z

.field public goingToSleep:Z

.field public isCommunalShowing:Z

.field public isCrossFadeAnimatorRunning:Z

.field public final keyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

.field public final keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final keyguardViewController:Lcom/android/keyguard/KeyguardViewController;

.field public final lockScreenMediaPlayerUri:Landroid/net/Uri;

.field public final logger:Lcom/android/systemui/media/controls/ui/controller/MediaViewLogger;

.field public final mediaCarouselController:Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;

.field public final mediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;

.field public final mediaHosts:[Lcom/android/systemui/media/controls/ui/view/MediaHost;

.field public final mediaManager:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;

.field public onCommunalDreamingAndShadeExpanding:Z

.field public onCommunalNotDreaming:Z

.field public previousLocation:I

.field public qsExpanded:Z

.field public qsExpansion:F

.field public rootOverlay:Landroid/view/ViewGroupOverlay;

.field public rootView:Landroid/view/View;

.field public final secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public skipQqsOnExpansion:Z

.field public final splitShadeStateController:Lcom/android/systemui/statusbar/policy/SplitShadeStateController;

.field public final startAnimation:Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$startAnimation$1;

.field public final statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field public statusbarState:I

.field public targetBounds:Landroid/graphics/Rect;

.field public targetClipping:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;Lcom/android/keyguard/KeyguardViewController;Lcom/android/systemui/dreams/DreamOverlayStateController;Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;Lcom/android/systemui/communal/ui/viewmodel/CommunalTransitionViewModel;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;Lcom/android/systemui/util/settings/SecureSettings;Landroid/os/Handler;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/statusbar/policy/SplitShadeStateController;Lcom/android/systemui/media/controls/ui/controller/MediaViewLogger;Lcom/android/systemui/media/controls/util/MediaFlags;)V
    .locals 14

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    move-object/from16 v3, p8

    move-object/from16 v4, p13

    move-object/from16 v5, p14

    move-object/from16 v6, p16

    move-object/from16 v7, p17

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v8, p1

    iput-object v8, v0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->context:Landroid/content/Context;

    iput-object v1, v0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    move-object/from16 v9, p3

    iput-object v9, v0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object/from16 v9, p4

    iput-object v9, v0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    iput-object v2, v0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->mediaCarouselController:Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;

    move-object/from16 v9, p6

    iput-object v9, v0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->mediaManager:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;

    move-object/from16 v9, p7

    iput-object v9, v0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->keyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    iput-object v3, v0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->dreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    move-object/from16 v9, p9

    iput-object v9, v0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->keyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    iput-object v5, v0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    iput-object v7, v0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->splitShadeStateController:Lcom/android/systemui/statusbar/policy/SplitShadeStateController;

    move-object/from16 v9, p18

    iput-object v9, v0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->logger:Lcom/android/systemui/media/controls/ui/controller/MediaViewLogger;

    move-object/from16 v9, p19

    iput-object v9, v0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->mediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;

    const/4 v9, 0x1

    iput-boolean v9, v0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->allowMediaPlayerOnLockScreen:Z

    const-string v9, "media_controls_lock_screen"

    invoke-interface {v5, v9}, Lcom/android/systemui/util/settings/SettingsProxy;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iput-object v10, v0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->lockScreenMediaPlayerUri:Landroid/net/Uri;

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, v0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->currentBounds:Landroid/graphics/Rect;

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, v0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->animationStartBounds:Landroid/graphics/Rect;

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, v0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->animationStartClipping:Landroid/graphics/Rect;

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, v0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->currentClipping:Landroid/graphics/Rect;

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, v0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->targetClipping:Landroid/graphics/Rect;

    const/4 v10, -0x1

    iput v10, v0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->crossFadeAnimationStartLocation:I

    iput v10, v0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->crossFadeAnimationEndLocation:I

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    iput-object v11, v0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->targetBounds:Landroid/graphics/Rect;

    check-cast v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget v11, v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    iput v11, v0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->statusbarState:I

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x2

    new-array v12, v12, [F

    fill-array-data v12, :array_0

    invoke-static {v12}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v12

    sget-object v13, Lcom/android/app/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v12, v13}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v13, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$animator$1$1;

    invoke-direct {v13, p0, v12}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$animator$1$1;-><init>(Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v12, v13}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v13, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$animator$1$2;

    invoke-direct {v13, p0}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$animator$1$2;-><init>(Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;)V

    invoke-virtual {v12, v13}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v12, v0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->animator:Landroid/animation/ValueAnimator;

    const/4 v12, 0x5

    new-array v12, v12, [Lcom/android/systemui/media/controls/ui/view/MediaHost;

    iput-object v12, v0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->mediaHosts:[Lcom/android/systemui/media/controls/ui/view/MediaHost;

    iput v10, v0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->previousLocation:I

    iput v10, v0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->desiredLocation:I

    iput v10, v0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->currentAttachmentLocation:I

    new-instance v12, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$startAnimation$1;

    invoke-direct {v12, p0}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$startAnimation$1;-><init>(Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;)V

    iput-object v12, v0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->startAnimation:Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$startAnimation$1;

    iput v11, v0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->animationCrossFadeProgress:F

    iput v11, v0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->carouselAlpha:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f070759

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->distanceForFullShadeTransition:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    check-cast v7, Lcom/android/systemui/statusbar/policy/SplitShadeStateControllerImpl;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/policy/SplitShadeStateControllerImpl;->shouldUseSplitNotificationShade()V

    new-instance v7, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$1;

    invoke-direct {v7, p0}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$1;-><init>(Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;)V

    move-object/from16 v8, p11

    check-cast v8, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v8, v7}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    new-instance v7, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$2;

    invoke-direct {v7, p0}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$2;-><init>(Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;)V

    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    new-instance v1, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$3;-><init>(Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;)V

    invoke-virtual {v3, v1}, Lcom/android/systemui/dreams/DreamOverlayStateController;->addCallback(Lcom/android/systemui/dreams/DreamOverlayStateController$Callback;)V

    new-instance v1, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$4;-><init>(Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;)V

    move-object/from16 v3, p12

    invoke-virtual {v3, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    new-instance v1, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$5;-><init>(Ljava/lang/Object;)V

    iput-object v1, v2, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->updateUserVisibility:Lkotlin/jvm/functions/Function0;

    new-instance v1, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$6;-><init>(Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;)V

    iput-object v1, v2, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->updateHostVisibility:Lkotlin/jvm/functions/Function0;

    iget-object v2, v2, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->mediaCarouselViewModel:Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel;

    iput-object v1, v2, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel;->updateHostVisibility:Lkotlin/jvm/functions/Function0;

    new-instance v1, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$7;

    const/4 v2, 0x0

    invoke-direct {v1, v4, p0, v2}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$7;-><init>(Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x3

    invoke-static {v6, v2, v2, v1, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    sget-object v1, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$8;

    invoke-direct {v1, v4, p0, v2}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$8;-><init>(Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;Lkotlin/coroutines/Continuation;)V

    invoke-static {v6, v2, v2, v1, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance v1, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$settingsObserver$1;

    move-object/from16 v7, p15

    invoke-direct {v1, p0, v7}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$settingsObserver$1;-><init>(Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;Landroid/os/Handler;)V

    invoke-interface {v5, v9, v1, v10}, Lcom/android/systemui/util/settings/UserSettingsProxy;->registerContentObserverForUserSync(Ljava/lang/String;Landroid/database/ContentObserver;I)V

    new-instance v1, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$9;

    move-object/from16 v5, p10

    invoke-direct {v1, v5, p0, v4, v2}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$9;-><init>(Lcom/android/systemui/communal/ui/viewmodel/CommunalTransitionViewModel;Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;Lkotlin/coroutines/Continuation;)V

    invoke-static {v6, v2, v2, v1, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static final access$setGoingToSleep(Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->goingToSleep:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->goingToSleep:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x3

    invoke-static {p0, p1, v0}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->updateDesiredLocation$default(Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;ZI)V

    :cond_0
    return-void
.end method

.method public static applyState$default(Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;Landroid/graphics/Rect;FZLandroid/graphics/Rect;I)V
    .locals 7

    and-int/lit8 v0, p5, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p3, v1

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    sget-object p4, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManagerKt;->EMPTY_RECT:Landroid/graphics/Rect;

    :cond_1
    iget-object p5, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->mediaCarouselController:Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;

    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v2, "MediaHierarchyManager#applyState"

    invoke-static {v2}, Lcom/android/app/tracing/TraceUtilsKt;->beginSlice(Ljava/lang/String;)V

    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->currentBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iput-object p4, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->currentClipping:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->isTransitioningToFullShade()Z

    move-result p1

    const/4 p4, 0x1

    if-eqz p1, :cond_3

    move p1, p4

    goto :goto_0

    :cond_3
    iget-boolean p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->isCrossFadeAnimatorRunning:Z

    :goto_0
    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    move p2, v2

    :goto_1
    iget p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->carouselAlpha:F

    cmpg-float p1, p1, p2

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    iput p2, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->carouselAlpha:F

    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->mediaCarouselController:Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;

    iget-object p1, p1, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->mediaFrame:Landroid/view/ViewGroup;

    invoke-static {p1, p2, v1}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeIn(Landroid/view/View;FZ)V

    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->isCurrentlyInGuidedTransformation()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->isTransitioningToFullShade()Z

    move-result p1

    if-eqz p1, :cond_6

    move p1, p4

    goto :goto_3

    :cond_6
    iget-boolean p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->isCrossFadeAnimatorRunning:Z

    :goto_3
    if-eqz p1, :cond_8

    :cond_7
    move v1, p4

    :cond_8
    const/4 p1, -0x1

    if-eqz v1, :cond_9

    move p2, p1

    goto :goto_4

    :cond_9
    iget p2, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->previousLocation:I

    :goto_4
    if-eqz v1, :cond_a

    goto :goto_5

    :cond_a
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->getTransformationProgress()F

    move-result v2

    :goto_5
    iget-boolean p4, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->isCrossFadeAnimatorRunning:Z

    if-eqz p4, :cond_d

    iget p4, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->animationCrossFadeProgress:F

    float-to-double v3, p4

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    cmpl-double p4, v3, v5

    if-gtz p4, :cond_c

    iget p4, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->previousLocation:I

    if-ne p4, p1, :cond_b

    goto :goto_6

    :cond_b
    iget p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->crossFadeAnimationStartLocation:I

    goto :goto_7

    :cond_c
    :goto_6
    iget p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->crossFadeAnimationEndLocation:I

    goto :goto_7

    :cond_d
    iget p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->desiredLocation:I

    :goto_7
    invoke-virtual {p5, p2, p1, v2, p3}, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->setCurrentState(IIFZ)V

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->updateHostAttachment()V

    iget p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->currentAttachmentLocation:I

    const/16 p2, -0x3e8

    if-ne p1, p2, :cond_f

    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->currentClipping:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_e

    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->currentBounds:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->currentClipping:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    goto :goto_8

    :catchall_0
    move-exception p0

    goto :goto_9

    :cond_e
    :goto_8
    iget-object p1, p5, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->mediaFrame:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->currentBounds:Landroid/graphics/Rect;

    iget p2, p0, Landroid/graphics/Rect;->left:I

    iget p3, p0, Landroid/graphics/Rect;->top:I

    iget p4, p0, Landroid/graphics/Rect;->right:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, p2, p3, p4, p0}, Landroid/view/ViewGroup;->setLeftTopRightBottom(IIII)V

    :cond_f
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_10
    return-void

    :goto_9
    if-eqz v0, :cond_11

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_11
    throw p0
.end method

.method public static interpolateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4

    iget v0, p0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-static {v0, v1, p2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-static {v1, v2, p2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    invoke-static {v2, v3, p2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v2

    float-to-int v2, v2

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float p0, p0

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    invoke-static {p0, p1, p2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    float-to-int p0, p0

    if-nez p3, :cond_0

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    :cond_0
    invoke-virtual {p3, v0, v1, v2, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-object p3
.end method

.method public static synthetic updateDesiredLocation$default(Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;ZI)V
    .locals 1

    and-int/lit8 p2, p2, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move p1, v0

    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->updateDesiredLocation(ZZ)V

    return-void
.end method


# virtual methods
.method public final applyTargetStateIfNotAnimating()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->targetBounds:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->carouselAlpha:F

    iget-object v5, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->targetClipping:Landroid/graphics/Rect;

    const/4 v6, 0x4

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->applyState$default(Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;Landroid/graphics/Rect;FZLandroid/graphics/Rect;I)V

    :cond_0
    return-void
.end method

.method public final calculateLocation()I
    .locals 7

    iget-boolean v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->goingToSleep:Z

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->dozeAnimationRunning:Z

    if-eqz v0, :cond_0

    goto/16 :goto_9

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->statusbarState:I

    if-ne v0, v1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->onCommunalNotDreaming:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->qsExpansion:F

    cmpg-float v3, v3, v4

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    iget-boolean v3, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->onCommunalDreamingAndShadeExpanding:Z

    if-eqz v3, :cond_3

    :goto_1
    move v3, v1

    goto :goto_2

    :cond_3
    move v3, v2

    :goto_2
    iget-object v5, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->mediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    iget-boolean v5, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->dreamOverlayActive:Z

    const/4 v6, 0x2

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->dreamMediaComplicationActive:Z

    if-eqz v5, :cond_4

    const/4 v0, 0x3

    goto :goto_7

    :cond_4
    const/4 v5, 0x4

    if-eqz v3, :cond_5

    :goto_3
    move v0, v5

    goto :goto_7

    :cond_5
    iget v3, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->qsExpansion:F

    cmpl-float v4, v3, v4

    if-gtz v4, :cond_6

    goto :goto_5

    :cond_6
    if-nez v0, :cond_7

    :goto_4
    move v0, v2

    goto :goto_7

    :cond_7
    :goto_5
    const v4, 0x3ecccccd    # 0.4f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_8

    if-eqz v0, :cond_8

    goto :goto_4

    :cond_8
    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->isTransitioningToFullShade()Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_6

    :cond_9
    iget v3, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->fullShadeTransitionProgress:F

    const/high16 v4, 0x3f000000    # 0.5f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_b

    :cond_a
    move v0, v1

    goto :goto_7

    :cond_b
    :goto_6
    iget-boolean v3, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->isCommunalShowing:Z

    if-eqz v3, :cond_c

    goto :goto_3

    :cond_c
    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->allowMediaPlayerOnLockScreen:Z

    if-eqz v0, :cond_a

    move v0, v6

    :goto_7
    if-ne v0, v6, :cond_e

    invoke-virtual {p0, v0}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/controls/ui/view/MediaHost;

    move-result-object v3

    if-eqz v3, :cond_d

    iget-object v3, v3, Lcom/android/systemui/media/controls/ui/view/MediaHost;->state:Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;

    iget-boolean v3, v3, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->visible:Z

    if-ne v3, v1, :cond_d

    goto :goto_8

    :cond_d
    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mIsDozing:Z

    if-nez v1, :cond_e

    return v2

    :cond_e
    :goto_8
    if-ne v0, v6, :cond_f

    iget v1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->desiredLocation:I

    if-nez v1, :cond_f

    iget-boolean v1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->collapsingShadeFromQS:Z

    if-eqz v1, :cond_f

    return v2

    :cond_f
    if-eq v0, v6, :cond_10

    iget v1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->desiredLocation:I

    if-ne v1, v6, :cond_10

    iget-boolean v1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->fullyAwake:Z

    if-nez v1, :cond_10

    return v6

    :cond_10
    iget-boolean v1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->isCommunalShowing:Z

    if-eqz v1, :cond_11

    return v0

    :cond_11
    iget-boolean p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->skipQqsOnExpansion:Z

    if-eqz p0, :cond_12

    return v2

    :cond_12
    return v0

    :cond_13
    :goto_9
    iget p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->desiredLocation:I

    return p0
.end method

.method public final calculateTransformationType()I
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->isHubTransition()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->isTransitioningToFullShade()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->previousLocation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    iget v3, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->desiredLocation:I

    if-eqz v3, :cond_3

    :cond_2
    if-nez v0, :cond_4

    iget v3, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->desiredLocation:I

    if-ne v3, v2, :cond_4

    :cond_3
    return v1

    :cond_4
    if-ne v0, v2, :cond_5

    iget p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->desiredLocation:I

    if-ne p0, v1, :cond_5

    return v1

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public final cancelAnimationAndApplyDesiredState()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->desiredLocation:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/controls/ui/view/MediaHost;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/media/controls/ui/view/MediaHost;->getCurrentBounds()Landroid/graphics/Rect;

    move-result-object v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/16 v6, 0x8

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->applyState$default(Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;Landroid/graphics/Rect;FZLandroid/graphics/Rect;I)V

    :cond_0
    return-void
.end method

.method public final getAnimationParams(II)Lkotlin/Pair;
    .locals 4

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    if-ne p2, v0, :cond_1

    iget p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->statusbarState:I

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object p1, p0

    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardFadingAway:Z

    if-eqz p1, :cond_0

    check-cast p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-wide v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardFadingAwayDelay:J

    :cond_0
    const-wide/16 p0, 0xe0

    goto :goto_0

    :cond_1
    if-ne p1, v0, :cond_2

    if-ne p2, v3, :cond_2

    const-wide/16 p0, 0x1d0

    goto :goto_0

    :cond_2
    const-wide/16 p0, 0xc8

    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    new-instance p2, Lkotlin/Pair;

    invoke-direct {p2, p0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method

.method public final getHost(I)Lcom/android/systemui/media/controls/ui/view/MediaHost;
    .locals 0

    if-gez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->mediaHosts:[Lcom/android/systemui/media/controls/ui/view/MediaHost;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final getQSTransformationProgress()F
    .locals 3

    iget v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->desiredLocation:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/controls/ui/view/MediaHost;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->previousLocation:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/controls/ui/view/MediaHost;

    move-result-object v1

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/android/systemui/media/controls/ui/view/MediaHost;->location:I

    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    iget v0, v1, Lcom/android/systemui/media/controls/ui/view/MediaHost;->location:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, v1, Lcom/android/systemui/media/controls/ui/view/MediaHost;->state:Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;

    iget-boolean v0, v0, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->visible:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->statusbarState:I

    if-eq v0, v2, :cond_1

    :cond_0
    iget p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->qsExpansion:F

    return p0

    :cond_1
    const/high16 p0, -0x40800000    # -1.0f

    return p0
.end method

.method public final getTransformationProgress()F
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->skipQqsOnExpansion:Z

    const/high16 v1, -0x40800000    # -1.0f

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->isHubTransition()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->getQSTransformationProgress()F

    move-result v0

    iget v2, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->statusbarState:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->isTransitioningToFullShade()Z

    move-result v0

    if-eqz v0, :cond_2

    iget p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->fullShadeTransitionProgress:F

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public final isCurrentlyInGuidedTransformation()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->previousLocation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->desiredLocation:I

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->getTransformationProgress()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->previousLocation:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/controls/ui/view/MediaHost;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/systemui/media/controls/ui/view/MediaHost;->state:Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;

    iget-boolean v0, v0, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->visible:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->desiredLocation:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/controls/ui/view/MediaHost;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/systemui/media/controls/ui/view/MediaHost;->state:Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;

    iget-boolean v0, v0, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->visible:Z

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->mediaManager:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;

    invoke-interface {p0}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;->hasActiveMediaOrRecommendation()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final isHomeScreenShadeVisibleToUser()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    move-object v0, p0

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mIsDozing:Z

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget v0, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    if-nez v0, :cond_0

    check-cast p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mIsExpanded:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isHubTransition()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->desiredLocation:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->previousLocation:I

    if-ne p0, v1, :cond_0

    if-nez v0, :cond_0

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

.method public final isLockScreenShadeVisibleToUser()Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mIsDozing:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->keyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardViewController;->isBouncerShowing()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget v1, v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget v0, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    if-ne v0, v3, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->qsExpanded:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_0
    return v3
.end method

.method public final isLockScreenVisibleToUser()Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mIsDozing:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->keyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardViewController;->isBouncerShowing()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget v1, v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->allowMediaPlayerOnLockScreen:Z

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mIsExpanded:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->qsExpanded:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public final isTransitioningToFullShade()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->fullShadeTransitionProgress:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->statusbarState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public final performTransitionToNewLocation(ZZ)V
    .locals 6

    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "MediaHierarchyManager#performTransitionToNewLocation"

    invoke-static {v1}, Lcom/android/app/tracing/TraceUtilsKt;->beginSlice(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget v1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->previousLocation:I

    if-ltz v1, :cond_11

    if-eqz p1, :cond_1

    goto/16 :goto_8

    :cond_1
    iget p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->desiredLocation:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/controls/ui/view/MediaHost;

    move-result-object p1

    iget v1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->previousLocation:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/controls/ui/view/MediaHost;

    move-result-object v1

    if-eqz p1, :cond_f

    if-nez v1, :cond_2

    goto/16 :goto_7

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->updateTargetState()V

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->isCurrentlyInGuidedTransformation()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->applyTargetStateIfNotAnimating()V

    goto/16 :goto_6

    :catchall_0
    move-exception p0

    goto/16 :goto_9

    :cond_3
    if-eqz p2, :cond_c

    iget-boolean p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->isCrossFadeAnimatorRunning:Z

    iget p2, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->animationCrossFadeProgress:F

    iget-object v2, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    iget v2, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->currentAttachmentLocation:I

    iget v3, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->previousLocation:I

    if-ne v2, v3, :cond_6

    iget-object v2, v1, Lcom/android/systemui/media/controls/ui/view/MediaHost;->hostView:Lcom/android/systemui/util/animation/UniqueObjectHostView;

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->animationStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Lcom/android/systemui/media/controls/ui/view/MediaHost;->getCurrentBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->animationStartClipping:Landroid/graphics/Rect;

    iget-object v1, v1, Lcom/android/systemui/media/controls/ui/view/MediaHost;->currentClipping:Landroid/graphics/Rect;

    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_2

    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->animationStartBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->currentBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->animationStartClipping:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->currentClipping:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->calculateTransformationType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    move v1, v2

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    :goto_3
    iget v3, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->previousLocation:I

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz p1, :cond_a

    iget p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->currentAttachmentLocation:I

    iget v5, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->crossFadeAnimationEndLocation:I

    if-ne p1, v5, :cond_8

    if-eqz v1, :cond_b

    sub-float p2, v4, p2

    :goto_4
    move p1, v3

    goto :goto_5

    :cond_8
    iget p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->crossFadeAnimationStartLocation:I

    iget v5, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->desiredLocation:I

    if-ne p1, v5, :cond_9

    sub-float p2, v4, p2

    goto :goto_5

    :cond_9
    move v1, v2

    goto :goto_5

    :cond_a
    if-eqz v1, :cond_b

    iget p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->carouselAlpha:F

    sub-float/2addr v4, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float p2, v4, p1

    goto :goto_4

    :cond_b
    const/4 p2, 0x0

    goto :goto_4

    :goto_5
    iput-boolean v1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->isCrossFadeAnimatorRunning:Z

    iput p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->crossFadeAnimationStartLocation:I

    iget p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->desiredLocation:I

    iput p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->crossFadeAnimationEndLocation:I

    iget v1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->carouselAlpha:F

    iput v1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->animationStartAlpha:F

    iput p2, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->animationStartCrossFadeProgress:F

    invoke-virtual {p0, v3, p1}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->getAnimationParams(II)Lkotlin/Pair;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v1, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-boolean p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->animationPending:Z

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->rootView:Landroid/view/View;

    if-eqz p1, :cond_d

    iput-boolean v2, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->animationPending:Z

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->startAnimation:Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$startAnimation$1;

    invoke-virtual {p1, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_6

    :cond_c
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->cancelAnimationAndApplyDesiredState()V

    :cond_d
    :goto_6
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_e
    return-void

    :cond_f
    :goto_7
    :try_start_1
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->cancelAnimationAndApplyDesiredState()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_10
    return-void

    :cond_11
    :goto_8
    :try_start_2
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->cancelAnimationAndApplyDesiredState()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_12

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_12
    return-void

    :goto_9
    if-eqz v0, :cond_13

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_13
    throw p0
.end method

.method public final register(Lcom/android/systemui/media/controls/ui/view/MediaHost;)Lcom/android/systemui/util/animation/UniqueObjectHostView;
    .locals 3

    new-instance v0, Lcom/android/systemui/util/animation/UniqueObjectHostView;

    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/util/animation/UniqueObjectHostView;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$createUniqueObjectHost$1;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$createUniqueObjectHost$1;-><init>(Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;Lcom/android/systemui/util/animation/UniqueObjectHostView;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iput-object v0, p1, Lcom/android/systemui/media/controls/ui/view/MediaHost;->hostView:Lcom/android/systemui/util/animation/UniqueObjectHostView;

    new-instance v1, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$register$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager$register$1;-><init>(Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;)V

    iget-object v2, p1, Lcom/android/systemui/media/controls/ui/view/MediaHost;->visibleChangedListeners:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget v1, p1, Lcom/android/systemui/media/controls/ui/view/MediaHost;->location:I

    iget-object v2, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->mediaHosts:[Lcom/android/systemui/media/controls/ui/view/MediaHost;

    aput-object p1, v2, v1

    iget p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->desiredLocation:I

    const/4 v2, -0x1

    if-ne v1, p1, :cond_0

    iput v2, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->desiredLocation:I

    :cond_0
    iget p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->currentAttachmentLocation:I

    if-ne v1, p1, :cond_1

    iput v2, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->currentAttachmentLocation:I

    :cond_1
    const/4 p1, 0x3

    const/4 v1, 0x0

    invoke-static {p0, v1, p1}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->updateDesiredLocation$default(Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;ZI)V

    return-object v0
.end method

.method public final setQsExpanded(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->qsExpanded:Z

    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->mediaCarouselController:Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->qsExpanded:Z

    iget-object v0, v1, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;

    iput-boolean p1, v0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->qsExpanded:Z

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->isLockScreenShadeVisibleToUser()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->isHomeScreenShadeVisibleToUser()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {v1, p1}, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->logSmartspaceImpression(Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->updateUserVisibility()V

    return-void
.end method

.method public final setTransitionToFullShadeAmount(F)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->distanceForFullShadeTransition:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-static {p1}, Landroid/util/MathUtils;->saturate(F)F

    move-result p1

    iget v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->fullShadeTransitionProgress:F

    cmpg-float v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    iput p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->fullShadeTransitionProgress:F

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    iget v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->statusbarState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->isTransitioningToFullShade()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->isCrossFadeAnimatorRunning:Z

    :goto_0
    const/4 v0, 0x2

    invoke-static {p0, v1, v0}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->updateDesiredLocation$default(Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;ZI)V

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->updateTargetState()V

    iget p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->fullShadeTransitionProgress:F

    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr p1, v0

    sub-float/2addr v1, p1

    goto :goto_1

    :cond_3
    sub-float/2addr p1, v0

    div-float v1, p1, v0

    :goto_1
    iget p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->carouselAlpha:F

    cmpg-float p1, p1, v1

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    iput v1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->carouselAlpha:F

    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->mediaCarouselController:Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;

    iget-object p1, p1, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->mediaFrame:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-static {p1, v1, v0}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeIn(Landroid/view/View;FZ)V

    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->applyTargetStateIfNotAnimating()V

    :cond_5
    :goto_3
    return-void
.end method

.method public final shouldAnimateTransition(II)Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->isCurrentlyInGuidedTransformation()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->skipQqsOnExpansion:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->isHubTransition()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x1

    const/4 v2, 0x2

    if-ne p2, v2, :cond_3

    iget v3, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->desiredLocation:I

    if-ne v3, v0, :cond_3

    iget v3, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->statusbarState:I

    if-nez v3, :cond_3

    return v1

    :cond_3
    if-ne p1, v0, :cond_5

    if-ne p2, v2, :cond_5

    iget-object v3, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast v3, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mLeaveOpenOnKeyguardHide:Z

    if-nez v3, :cond_4

    iget v3, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->statusbarState:I

    if-ne v3, v2, :cond_5

    :cond_4
    return v0

    :cond_5
    iget v3, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->desiredLocation:I

    if-nez v3, :cond_6

    if-ne p2, v2, :cond_6

    iget v3, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->statusbarState:I

    if-nez v3, :cond_6

    return v1

    :cond_6
    iget v3, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->statusbarState:I

    if-ne v3, v0, :cond_8

    if-eq p1, v2, :cond_7

    if-ne p2, v2, :cond_8

    :cond_7
    return v1

    :cond_8
    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->mediaCarouselController:Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;

    iget-object p1, p1, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->mediaFrame:Landroid/view/ViewGroup;

    sget-object p2, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManagerKt;->EMPTY_RECT:Landroid/graphics/Rect;

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-eqz p2, :cond_9

    goto :goto_1

    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p2

    const/4 v2, 0x0

    cmpg-float p2, p2, v2

    if-nez p2, :cond_a

    goto :goto_1

    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_b

    :goto_1
    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_c

    iget-boolean p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->animationPending:Z

    if-eqz p0, :cond_d

    goto :goto_2

    :cond_b
    instance-of p2, p1, Landroid/view/View;

    if-nez p2, :cond_e

    :cond_c
    :goto_2
    move v1, v0

    :cond_d
    return v1

    :cond_e
    check-cast p1, Landroid/view/View;

    goto :goto_0
.end method

.method public final updateDesiredLocation(ZZ)V
    .locals 10

    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "MediaHierarchyManager#updateDesiredLocation"

    invoke-static {v1}, Lcom/android/app/tracing/TraceUtilsKt;->beginSlice(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->calculateLocation()I

    move-result v3

    iget v1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->desiredLocation:I

    if-ne v3, v1, :cond_1

    if-eqz p2, :cond_9

    iget-boolean v2, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->goingToSleep:Z

    if-nez v2, :cond_9

    iget-boolean v2, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->dozeAnimationRunning:Z

    if-eqz v2, :cond_1

    goto/16 :goto_4

    :cond_1
    const/4 v2, 0x0

    const/4 v4, 0x1

    if-ltz v1, :cond_2

    if-eq v3, v1, :cond_2

    iput v1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->previousLocation:I

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_2
    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result p2

    if-nez p2, :cond_3

    iget p2, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->statusbarState:I

    if-ne p2, v4, :cond_3

    move p2, v4

    goto :goto_0

    :cond_3
    move p2, v2

    :goto_0
    if-nez v3, :cond_4

    iget v1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->previousLocation:I

    const/4 v5, 0x2

    if-ne v1, v5, :cond_4

    if-nez p2, :cond_4

    iput v4, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->previousLocation:I

    :cond_4
    :goto_1
    iget p2, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->desiredLocation:I

    const/4 v1, -0x1

    if-ne p2, v1, :cond_5

    move p2, v4

    goto :goto_2

    :cond_5
    move p2, v2

    :goto_2
    iput v3, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->desiredLocation:I

    if-nez p1, :cond_6

    iget p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->previousLocation:I

    invoke-virtual {p0, v3, p1}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->shouldAnimateTransition(II)Z

    move-result p1

    if-eqz p1, :cond_6

    move p1, v4

    goto :goto_3

    :cond_6
    move p1, v2

    :goto_3
    iget v1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->previousLocation:I

    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->getAnimationParams(II)Lkotlin/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    invoke-virtual {p0, v3}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/controls/ui/view/MediaHost;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->calculateTransformationType()I

    move-result v2

    if-ne v2, v4, :cond_7

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->isCurrentlyInGuidedTransformation()Z

    move-result v2

    if-nez v2, :cond_7

    if-nez p1, :cond_8

    :cond_7
    iget-object v2, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->mediaCarouselController:Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;

    move-object v4, v1

    move v5, p1

    invoke-virtual/range {v2 .. v9}, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->onDesiredLocationChanged(ILcom/android/systemui/media/controls/ui/view/MediaHostState;ZJJ)Lkotlin/Unit;

    :cond_8
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->performTransitionToNewLocation(ZZ)V

    :cond_9
    :goto_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_a
    return-void

    :goto_5
    if-eqz v0, :cond_b

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_b
    throw p0
.end method

.method public final updateHostAttachment()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->mediaCarouselController:Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;

    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v3, "MediaHierarchyManager#updateHostAttachment"

    invoke-static {v3}, Lcom/android/app/tracing/TraceUtilsKt;->beginSlice(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v3, v0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->mediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    iget-boolean v3, v0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->isCrossFadeAnimatorRunning:Z

    if-eqz v3, :cond_3

    iget v3, v0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->animationCrossFadeProgress:F

    float-to-double v3, v3

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    cmpl-double v3, v3, v5

    if-gtz v3, :cond_2

    iget v3, v0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->previousLocation:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    iget v3, v0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->crossFadeAnimationStartLocation:I

    goto :goto_1

    :cond_2
    :goto_0
    iget v3, v0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->crossFadeAnimationEndLocation:I

    goto :goto_1

    :cond_3
    iget v3, v0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->desiredLocation:I

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->isTransitioningToFullShade()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    move v4, v5

    goto :goto_2

    :cond_4
    iget-boolean v4, v0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->isCrossFadeAnimatorRunning:Z

    :goto_2
    const/4 v6, 0x0

    if-nez v4, :cond_5

    iget-object v4, v0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->mediaManager:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;

    invoke-interface {v4}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;->hasActiveMediaOrRecommendation()Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v5

    goto :goto_3

    :cond_5
    move v4, v6

    :goto_3
    iget-boolean v7, v0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->isCrossFadeAnimatorRunning:Z

    const/4 v8, 0x0

    if-eqz v7, :cond_7

    invoke-virtual {v0, v3}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/controls/ui/view/MediaHost;

    move-result-object v7

    if-eqz v7, :cond_7

    iget-object v7, v7, Lcom/android/systemui/media/controls/ui/view/MediaHost;->state:Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;

    iget-boolean v7, v7, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->visible:Z

    if-ne v7, v5, :cond_7

    invoke-virtual {v0, v3}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/controls/ui/view/MediaHost;

    move-result-object v7

    if-eqz v7, :cond_7

    iget-object v7, v7, Lcom/android/systemui/media/controls/ui/view/MediaHost;->hostView:Lcom/android/systemui/util/animation/UniqueObjectHostView;

    if-eqz v7, :cond_6

    goto :goto_4

    :cond_6
    move-object v7, v8

    :goto_4
    if-eqz v7, :cond_7

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v7

    if-nez v7, :cond_7

    iget v7, v0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->desiredLocation:I

    if-eq v3, v7, :cond_7

    move v4, v5

    goto :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    :cond_7
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->isCurrentlyInGuidedTransformation()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->getTransformationProgress()F

    move-result v7

    const/high16 v9, 0x3f800000    # 1.0f

    cmpg-float v7, v7, v9

    if-nez v7, :cond_9

    :cond_8
    iget-object v7, v0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v7

    if-nez v7, :cond_9

    iget-boolean v7, v0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->animationPending:Z

    if-eqz v7, :cond_a

    :cond_9
    iget-object v7, v0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->rootOverlay:Landroid/view/ViewGroupOverlay;

    if-eqz v7, :cond_a

    if-eqz v4, :cond_a

    goto :goto_6

    :cond_a
    move v5, v6

    :goto_6
    if-eqz v5, :cond_b

    const/16 v3, -0x3e8

    :cond_b
    move v10, v3

    iget v3, v0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->currentAttachmentLocation:I

    if-eq v3, v10, :cond_f

    iput v10, v0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->currentAttachmentLocation:I

    iget-object v3, v1, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->mediaFrame:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_c

    iget-object v4, v1, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->mediaFrame:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_c
    if-eqz v5, :cond_d

    iget-object v3, v0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->rootOverlay:Landroid/view/ViewGroupOverlay;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, v1, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->mediaFrame:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    goto :goto_8

    :cond_d
    invoke-virtual {v0, v10}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/controls/ui/view/MediaHost;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, v3, Lcom/android/systemui/media/controls/ui/view/MediaHost;->hostView:Lcom/android/systemui/util/animation/UniqueObjectHostView;

    if-eqz v3, :cond_e

    goto :goto_7

    :cond_e
    move-object v3, v8

    :goto_7
    iget-object v1, v1, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->mediaFrame:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :goto_8
    iget-object v1, v0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->logger:Lcom/android/systemui/media/controls/ui/controller/MediaViewLogger;

    iget v3, v0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->currentAttachmentLocation:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v5, Lcom/android/systemui/media/controls/ui/controller/MediaViewLogger$logMediaHostAttachment$2;->INSTANCE:Lcom/android/systemui/media/controls/ui/controller/MediaViewLogger$logMediaHostAttachment$2;

    iget-object v1, v1, Lcom/android/systemui/media/controls/ui/controller/MediaViewLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v6, "MediaView"

    invoke-virtual {v1, v6, v4, v5, v8}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/android/systemui/log/LogMessageImpl;

    iput v3, v5, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    invoke-virtual {v1, v4}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iget-boolean v1, v0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->isCrossFadeAnimatorRunning:Z

    if-eqz v1, :cond_f

    iget-object v9, v0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->mediaCarouselController:Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;

    invoke-virtual {v0, v10}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/controls/ui/view/MediaHost;

    move-result-object v11

    const/4 v12, 0x0

    const-wide/16 v13, 0xc8

    const-wide/16 v15, 0x0

    invoke-virtual/range {v9 .. v16}, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->onDesiredLocationChanged(ILcom/android/systemui/media/controls/ui/view/MediaHostState;ZJJ)Lkotlin/Unit;

    :cond_f
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_10

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_10
    return-void

    :goto_9
    if-eqz v2, :cond_11

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_11
    throw v0
.end method

.method public final updateTargetState()V
    .locals 6

    iget v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->previousLocation:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/controls/ui/view/MediaHost;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->desiredLocation:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/controls/ui/view/MediaHost;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->isCurrentlyInGuidedTransformation()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->isTransitioningToFullShade()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->isCrossFadeAnimatorRunning:Z

    :goto_0
    if-nez v2, :cond_3

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->getTransformationProgress()F

    move-result v2

    iget-object v3, v1, Lcom/android/systemui/media/controls/ui/view/MediaHost;->state:Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;

    iget-boolean v3, v3, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->visible:Z

    if-nez v3, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    iget-object v3, v0, Lcom/android/systemui/media/controls/ui/view/MediaHost;->state:Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;

    iget-boolean v3, v3, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->visible:Z

    if-nez v3, :cond_2

    move-object v0, v1

    goto :goto_1

    :cond_2
    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_1
    invoke-virtual {v0}, Lcom/android/systemui/media/controls/ui/view/MediaHost;->getCurrentBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/systemui/media/controls/ui/view/MediaHost;->getCurrentBounds()Landroid/graphics/Rect;

    move-result-object v1

    const/4 v4, 0x0

    invoke-static {v1, v3, v2, v4}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->interpolateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->targetBounds:Landroid/graphics/Rect;

    iget-object v0, v0, Lcom/android/systemui/media/controls/ui/view/MediaHost;->currentClipping:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->targetClipping:Landroid/graphics/Rect;

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/systemui/media/controls/ui/view/MediaHost;->getCurrentBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->targetBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v1, Lcom/android/systemui/media/controls/ui/view/MediaHost;->currentClipping:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->targetClipping:Landroid/graphics/Rect;

    :cond_4
    :goto_2
    return-void
.end method

.method public final updateUserVisibility()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->isLockScreenVisibleToUser()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->isLockScreenShadeVisibleToUser()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->isHomeScreenShadeVisibleToUser()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    iget-boolean v3, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->qsExpanded:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->mediaManager:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;

    invoke-interface {v3}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;->hasActiveMediaOrRecommendation()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v3, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v3, v1

    :goto_3
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->mediaCarouselController:Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;

    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    iget-boolean v0, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->visibleToUser:Z

    if-eq v0, v1, :cond_5

    iput-boolean v1, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->visibleToUser:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->seekBarUpdateListener:Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->visibleToUser:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->visibleStateLogger:Lcom/android/app/tracing/TraceStateLogger;

    invoke-virtual {p0, v0}, Lcom/android/app/tracing/TraceStateLogger;->log(Ljava/lang/String;)V

    :cond_5
    return-void
.end method
