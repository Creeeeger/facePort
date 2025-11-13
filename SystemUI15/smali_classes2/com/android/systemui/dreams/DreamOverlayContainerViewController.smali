.class public final Lcom/android/systemui/dreams/DreamOverlayContainerViewController;
.super Lcom/android/systemui/util/ViewController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mAnyBouncerShowing:Z

.field public final mBackgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final mBlurUtils:Lcom/android/systemui/statusbar/BlurUtils;

.field public mBouncerAnimating:Z

.field public final mBouncerExpansionCallback:Lcom/android/systemui/dreams/DreamOverlayContainerViewController$2;

.field public final mBouncerlessExpansionCallback:Lcom/android/systemui/dreams/DreamOverlayContainerViewController$1;

.field public final mBouncerlessScrimController:Lcom/android/systemui/ambient/touch/scrim/BouncerlessScrimController;

.field public final mBurnInProtectionUpdateInterval:J

.field public final mCommunalInteractor:Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;

.field public final mComplicationHostViewController:Lcom/android/systemui/complication/ComplicationHostViewController;

.field public final mDreamManager:Landroid/app/DreamManager;

.field public final mDreamOverlayAnimationsController:Lcom/android/systemui/dreams/DreamOverlayAnimationsController;

.field public final mDreamOverlayContentView:Landroid/view/ViewGroup;

.field public final mDreamOverlayMaxTranslationY:I

.field public final mDreamOverlayStateCallback:Lcom/android/systemui/dreams/DreamOverlayStateController$Callback;

.field public mExitingLowLight:Z

.field public final mHandler:Landroid/os/Handler;

.field public mJitterStartTimeMillis:J

.field public final mKeyguardTransitionInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

.field public final mLowLightTransitionCoordinator:Lcom/android/dream/lowlight/LowLightTransitionCoordinator;

.field public final mMaxBurnInOffset:I

.field public final mMillisUntilFullJitter:J

.field public final mPrimaryBouncerCallbackInteractor:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerCallbackInteractor;

.field public final mShadeInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

.field public final mStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

.field public final mStatusBarViewController:Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;

.field public final mTouchInsetSession:Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;

.field public mWakingUpFromSwipe:Z


# direct methods
.method public static $r8$lambda$jy_aQFBFeBC9Yqw2PjoN8Ww1J4Q(Lcom/android/systemui/dreams/DreamOverlayContainerViewController;)V
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mJitterStartTimeMillis:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mMillisUntilFullJitter:J

    cmp-long v4, v0, v2

    iget v5, p0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mMaxBurnInOffset:I

    if-gez v4, :cond_0

    long-to-float v0, v0

    long-to-float v1, v2

    div-float/2addr v0, v1

    const/4 v1, 0x0

    int-to-float v2, v5

    invoke-static {v1, v2, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v5

    :cond_0
    div-int/lit8 v0, v5, 0x2

    const/4 v1, 0x1

    invoke-static {v5, v1}, Lcom/android/systemui/doze/util/BurnInHelperKt;->getBurnInOffset(IZ)I

    move-result v1

    sub-int/2addr v1, v0

    const/4 v2, 0x0

    invoke-static {v5, v2}, Lcom/android/systemui/doze/util/BurnInHelperKt;->getBurnInOffset(IZ)I

    move-result v2

    sub-int/2addr v2, v0

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/dreams/DreamOverlayContainerView;

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/dreams/DreamOverlayContainerView;

    int-to-float v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    new-instance v0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/dreams/DreamOverlayContainerViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/dreams/DreamOverlayContainerViewController;)V

    iget-wide v1, p0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mBurnInProtectionUpdateInterval:J

    iget-object p0, p0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static -$$Nest$mupdateTransitionState(Lcom/android/systemui/dreams/DreamOverlayContainerViewController;F)V
    .locals 12

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v4, Lcom/android/app/animation/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    const v5, 0x3cf5c28f    # 0.03f

    const/4 v6, 0x0

    if-ne v2, v0, :cond_0

    sget v7, Lcom/android/keyguard/BouncerPanelExpansionCalculator;->$r8$clinit:I

    const v7, 0x3f70a3d7    # 0.94f

    sub-float v7, p1, v7

    const v8, 0x3d75c28f    # 0.06f

    div-float/2addr v7, v8

    invoke-static {v7, v6, v3}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v7

    goto :goto_1

    :cond_0
    add-float v7, p1, v5

    invoke-static {v7}, Lcom/android/keyguard/BouncerPanelExpansionCalculator;->aboutToShowBouncerProgress(F)F

    move-result v7

    :goto_1
    check-cast v4, Landroid/view/animation/PathInterpolator;

    invoke-virtual {v4, v7}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v7

    if-ne v2, v0, :cond_3

    const v5, 0x3f7ae148    # 0.98f

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_1

    goto :goto_2

    :cond_1
    float-to-double v8, p1

    const-wide v10, 0x3fedc28f5c28f5c3L    # 0.93

    cmpg-double v3, v8, v10

    if-gez v3, :cond_2

    move v3, v6

    goto :goto_2

    :cond_2
    const v3, 0x3f6e147b    # 0.93f

    sub-float v3, p1, v3

    const v5, 0x3d4ccccd    # 0.05f

    div-float/2addr v3, v5

    goto :goto_2

    :cond_3
    add-float/2addr v5, p1

    invoke-static {v5}, Lcom/android/keyguard/BouncerPanelExpansionCalculator;->aboutToShowBouncerProgress(F)F

    move-result v3

    :goto_2
    invoke-virtual {v4, v3}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v3

    iget v4, p0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mDreamOverlayMaxTranslationY:I

    neg-int v4, v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v3}, Landroid/util/MathUtils;->lerp(IIF)F

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mComplicationHostViewController:Lcom/android/systemui/complication/ComplicationHostViewController;

    invoke-virtual {v4, v2}, Lcom/android/systemui/complication/ComplicationHostViewController;->getViewsAtPosition(I)Ljava/util/List;

    move-result-object v2

    new-instance v4, Lcom/android/systemui/dreams/DreamOverlayContainerViewController$$ExternalSyntheticLambda4;

    invoke-direct {v4, v7, v3}, Lcom/android/systemui/dreams/DreamOverlayContainerViewController$$ExternalSyntheticLambda4;-><init>(FF)V

    invoke-interface {v2, v4}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/dreams/DreamOverlayContainerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-static {p1}, Lcom/android/keyguard/BouncerPanelExpansionCalculator;->aboutToShowBouncerProgress(F)F

    move-result p1

    sub-float/2addr v3, p1

    iget-object p0, p0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mBlurUtils:Lcom/android/systemui/statusbar/BlurUtils;

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/BlurUtils;->blurRadiusOfRatio(F)F

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl;->isValid()Z

    :cond_5
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/dreams/DreamOverlayContainerView;Lcom/android/systemui/complication/ComplicationHostViewController;Landroid/view/ViewGroup;Landroid/view/View;Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;Lcom/android/dream/lowlight/LowLightTransitionCoordinator;Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;Lcom/android/systemui/statusbar/BlurUtils;Landroid/os/Handler;Lkotlinx/coroutines/CoroutineDispatcher;Landroid/content/res/Resources;IJJLcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerCallbackInteractor;Lcom/android/systemui/dreams/DreamOverlayAnimationsController;Lcom/android/systemui/dreams/DreamOverlayStateController;Lcom/android/systemui/ambient/touch/scrim/BouncerlessScrimController;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;Landroid/app/DreamManager;)V
    .locals 5

    move-object v0, p0

    move-object v1, p3

    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    new-instance v2, Lcom/android/systemui/dreams/DreamOverlayContainerViewController$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/dreams/DreamOverlayContainerViewController$1;-><init>(Lcom/android/systemui/dreams/DreamOverlayContainerViewController;)V

    iput-object v2, v0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mBouncerlessExpansionCallback:Lcom/android/systemui/dreams/DreamOverlayContainerViewController$1;

    new-instance v2, Lcom/android/systemui/dreams/DreamOverlayContainerViewController$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/dreams/DreamOverlayContainerViewController$2;-><init>(Lcom/android/systemui/dreams/DreamOverlayContainerViewController;)V

    iput-object v2, v0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mBouncerExpansionCallback:Lcom/android/systemui/dreams/DreamOverlayContainerViewController$2;

    new-instance v2, Lcom/android/systemui/dreams/DreamOverlayContainerViewController$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/dreams/DreamOverlayContainerViewController$3;-><init>(Lcom/android/systemui/dreams/DreamOverlayContainerViewController;)V

    iput-object v2, v0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mDreamOverlayStateCallback:Lcom/android/systemui/dreams/DreamOverlayStateController$Callback;

    iput-object v1, v0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mDreamOverlayContentView:Landroid/view/ViewGroup;

    move-object v2, p5

    iput-object v2, v0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mStatusBarViewController:Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;

    move-object v2, p7

    iput-object v2, v0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mTouchInsetSession:Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;

    move-object v2, p8

    iput-object v2, v0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mBlurUtils:Lcom/android/systemui/statusbar/BlurUtils;

    move-object/from16 v2, p18

    iput-object v2, v0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mDreamOverlayAnimationsController:Lcom/android/systemui/dreams/DreamOverlayAnimationsController;

    move-object/from16 v2, p19

    iput-object v2, v0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    move-object/from16 v2, p23

    iput-object v2, v0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mCommunalInteractor:Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;

    move-object v2, p6

    iput-object v2, v0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mLowLightTransitionCoordinator:Lcom/android/dream/lowlight/LowLightTransitionCoordinator;

    move-object/from16 v2, p20

    iput-object v2, v0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mBouncerlessScrimController:Lcom/android/systemui/ambient/touch/scrim/BouncerlessScrimController;

    move-object/from16 v2, p21

    iput-object v2, v0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mKeyguardTransitionInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

    move-object/from16 v2, p22

    iput-object v2, v0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mShadeInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

    move-object v2, p2

    iput-object v2, v0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mComplicationHostViewController:Lcom/android/systemui/complication/ComplicationHostViewController;

    const v3, 0x7f070397

    move-object/from16 v4, p11

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mDreamOverlayMaxTranslationY:I

    invoke-static {}, Lcom/android/systemui/Flags;->communalHub()V

    invoke-virtual {p2}, Lcom/android/systemui/complication/ComplicationHostViewController;->getView()Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object v1, p9

    iput-object v1, v0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mHandler:Landroid/os/Handler;

    move-object v1, p10

    iput-object v1, v0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mBackgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    move/from16 v1, p12

    iput v1, v0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mMaxBurnInOffset:I

    move-wide/from16 v1, p13

    iput-wide v1, v0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mBurnInProtectionUpdateInterval:J

    move-wide/from16 v1, p15

    iput-wide v1, v0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mMillisUntilFullJitter:J

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mPrimaryBouncerCallbackInteractor:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerCallbackInteractor;

    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mDreamManager:Landroid/app/DreamManager;

    return-void
.end method


# virtual methods
.method public final getContainerView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public final onInit()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mDreamOverlayStateCallback:Lcom/android/systemui/dreams/DreamOverlayStateController$Callback;

    iget-object v1, p0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/dreams/DreamOverlayStateController;->addCallback(Lcom/android/systemui/dreams/DreamOverlayStateController$Callback;)V

    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mStatusBarViewController:Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;

    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->init()V

    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mComplicationHostViewController:Lcom/android/systemui/complication/ComplicationHostViewController;

    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->init()V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mDreamOverlayAnimationsController:Lcom/android/systemui/dreams/DreamOverlayAnimationsController;

    iput-object v0, v1, Lcom/android/systemui/dreams/DreamOverlayAnimationsController;->view:Landroid/view/View;

    new-instance v2, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1;-><init>(Lcom/android/systemui/dreams/DreamOverlayAnimationsController;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v2}, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt;->repeatWhenAttached$default(Landroid/view/View;Lkotlin/jvm/functions/Function3;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    iget-object p0, p0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mLowLightTransitionCoordinator:Lcom/android/dream/lowlight/LowLightTransitionCoordinator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final onViewAttached()V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mWakingUpFromSwipe:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mJitterStartTimeMillis:J

    new-instance v4, Lcom/android/systemui/dreams/DreamOverlayContainerViewController$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0}, Lcom/android/systemui/dreams/DreamOverlayContainerViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/dreams/DreamOverlayContainerViewController;)V

    iget-wide v5, v0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mBurnInProtectionUpdateInterval:J

    iget-object v7, v0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v4, v0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mBouncerExpansionCallback:Lcom/android/systemui/dreams/DreamOverlayContainerViewController$2;

    iget-object v5, v0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mPrimaryBouncerCallbackInteractor:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerCallbackInteractor;

    invoke-virtual {v5, v4}, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerCallbackInteractor;->addBouncerExpansionCallback(Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerCallbackInteractor$PrimaryBouncerExpansionCallback;)V

    iget-object v4, v0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mBouncerlessScrimController:Lcom/android/systemui/ambient/touch/scrim/BouncerlessScrimController;

    iget-object v5, v4, Lcom/android/systemui/ambient/touch/scrim/BouncerlessScrimController;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v6, Lcom/android/systemui/ambient/touch/scrim/BouncerlessScrimController$$ExternalSyntheticLambda2;

    iget-object v7, v0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mBouncerlessExpansionCallback:Lcom/android/systemui/dreams/DreamOverlayContainerViewController$1;

    invoke-direct {v6, v4, v7, v2}, Lcom/android/systemui/ambient/touch/scrim/BouncerlessScrimController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/ambient/touch/scrim/BouncerlessScrimController;Ljava/lang/Object;I)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v4

    iget-object v5, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v5, Lcom/android/systemui/dreams/DreamOverlayContainerView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getRootSurfaceControl()Landroid/view/AttachedSurfaceControl;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/view/AttachedSurfaceControl;->setTouchableRegion(Landroid/graphics/Region;)V

    invoke-virtual {v4}, Landroid/graphics/Region;->recycle()V

    invoke-static {}, Landroid/service/dreams/Flags;->dreamHandlesBeingObscured()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    new-instance v5, Lcom/android/systemui/dreams/DreamOverlayContainerViewController$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    new-instance v6, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$isFinishedInStateWhere$$inlined$map$1;

    iget-object v7, v0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mKeyguardTransitionInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

    iget-object v7, v7, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->finishedKeyguardState:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    invoke-direct {v6, v7, v5}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$isFinishedInStateWhere$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function1;)V

    invoke-static {v6}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v5

    iget-object v6, v0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mShadeInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

    check-cast v6, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;

    iget-object v6, v6, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;->baseShadeInteractor:Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;

    invoke-interface {v6}, Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;->isAnyExpanded()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v6

    iget-object v7, v0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mCommunalInteractor:Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;

    iget-object v7, v7, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->isCommunalShowing:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    new-instance v8, Lcom/android/systemui/dreams/DreamOverlayContainerViewController$$ExternalSyntheticLambda2;

    invoke-direct {v8, v0}, Lcom/android/systemui/dreams/DreamOverlayContainerViewController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/dreams/DreamOverlayContainerViewController;)V

    invoke-static {v5, v6, v7, v8}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->combineFlows(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v5

    invoke-static {v5}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v5

    iget-object v6, v0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mDreamManager:Landroid/app/DreamManager;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/android/systemui/dreams/DreamOverlayContainerViewController$$ExternalSyntheticLambda3;

    invoke-direct {v7, v6}, Lcom/android/systemui/dreams/DreamOverlayContainerViewController$$ExternalSyntheticLambda3;-><init>(Landroid/app/DreamManager;)V

    iget-object v6, v0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mBackgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {v4, v5, v7, v6}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow(Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;Lkotlin/coroutines/CoroutineContext;)V

    :cond_0
    iget-object v4, v0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    invoke-virtual {v4, v1}, Lcom/android/systemui/dreams/DreamOverlayStateController;->containsState(I)Z

    move-result v4

    if-nez v4, :cond_3

    iget-boolean v4, v0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mExitingLowLight:Z

    sget-object v5, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$startEntryAnimations$1;->INSTANCE:Lcom/android/systemui/dreams/DreamOverlayAnimationsController$startEntryAnimations$1;

    iget-object v6, v0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mDreamOverlayAnimationsController:Lcom/android/systemui/dreams/DreamOverlayAnimationsController;

    invoke-virtual {v6}, Lcom/android/systemui/dreams/DreamOverlayAnimationsController;->cancelAnimations()V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v7, 0x3

    new-array v8, v7, [Landroid/animation/Animator;

    iget-object v9, v6, Lcom/android/systemui/dreams/DreamOverlayAnimationsController;->view:Landroid/view/View;

    if-nez v9, :cond_1

    const/4 v9, 0x0

    :cond_1
    iget v11, v6, Lcom/android/systemui/dreams/DreamOverlayAnimationsController;->mDreamBlurRadius:I

    int-to-float v11, v11

    sget-object v12, Lcom/android/app/animation/Interpolators;->EMPHASIZED_DECELERATE:Landroid/view/animation/Interpolator;

    const/4 v13, 0x0

    new-array v14, v1, [F

    aput v11, v14, v3

    aput v13, v14, v2

    invoke-static {v14}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v11

    iget-wide v14, v6, Lcom/android/systemui/dreams/DreamOverlayAnimationsController;->mDreamInBlurAnimDurationMs:J

    invoke-virtual {v11, v14, v15}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v14, 0x0

    invoke-virtual {v11, v14, v15}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {v11, v12}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v10, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$blurAnimator$1$1;

    invoke-direct {v10, v6, v9}, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$blurAnimator$1$1;-><init>(Lcom/android/systemui/dreams/DreamOverlayAnimationsController;Landroid/view/View;)V

    invoke-virtual {v11, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    aput-object v11, v8, v3

    sget-object v9, Lcom/android/app/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/high16 v10, 0x3f800000    # 1.0f

    new-array v11, v1, [F

    fill-array-data v11, :array_0

    invoke-static {v11}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v11

    move/from16 v16, v4

    iget-wide v3, v6, Lcom/android/systemui/dreams/DreamOverlayAnimationsController;->mDreamInComplicationsAnimDurationMs:J

    invoke-virtual {v11, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v11, v14, v15}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {v11, v9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v3, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$alphaAnimator$1$1;

    invoke-direct {v3, v7, v6, v10, v13}, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$alphaAnimator$1$1;-><init>(ILcom/android/systemui/dreams/DreamOverlayAnimationsController;FF)V

    invoke-virtual {v11, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    aput-object v11, v8, v2

    iget v3, v6, Lcom/android/systemui/dreams/DreamOverlayAnimationsController;->mDreamInTranslationYDistance:I

    int-to-float v3, v3

    if-eqz v16, :cond_2

    const/4 v4, -0x1

    goto :goto_0

    :cond_2
    move v4, v2

    :goto_0
    int-to-float v4, v4

    mul-float/2addr v3, v4

    new-array v4, v1, [F

    const/4 v9, 0x0

    aput v3, v4, v9

    aput v13, v4, v2

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iget-wide v3, v6, Lcom/android/systemui/dreams/DreamOverlayAnimationsController;->mDreamInTranslationYDurationMs:J

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v14, v15}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {v2, v12}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v3, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$translationYAnimator$1$1;

    invoke-direct {v3, v7, v6}, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$translationYAnimator$1$1;-><init>(ILcom/android/systemui/dreams/DreamOverlayAnimationsController;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    aput-object v2, v8, v1

    invoke-virtual {v5, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v2, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$startEntryAnimations$lambda$2$$inlined$doOnEnd$1;

    invoke-direct {v2, v6}, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$startEntryAnimations$lambda$2$$inlined$doOnEnd$1;-><init>(Lcom/android/systemui/dreams/DreamOverlayAnimationsController;)V

    invoke-virtual {v5, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v2, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$startEntryAnimations$lambda$2$$inlined$doOnCancel$1;

    invoke-direct {v2, v6}, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$startEntryAnimations$lambda$2$$inlined$doOnCancel$1;-><init>(Lcom/android/systemui/dreams/DreamOverlayAnimationsController;)V

    invoke-virtual {v5, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    iget-object v2, v6, Lcom/android/systemui/dreams/DreamOverlayAnimationsController;->logger:Lcom/android/systemui/log/core/Logger;

    const-string v3, "Dream overlay entry animations started."

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v1, v4}, Lcom/android/systemui/log/core/Logger;->d$default(Lcom/android/systemui/log/core/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    iput-object v5, v6, Lcom/android/systemui/dreams/DreamOverlayAnimationsController;->mAnimator:Landroid/animation/Animator;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mExitingLowLight:Z

    :cond_3
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final onViewDetached()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mPrimaryBouncerCallbackInteractor:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerCallbackInteractor;

    iget-object v0, v0, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerCallbackInteractor;->expansionCallbacks:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mBouncerExpansionCallback:Lcom/android/systemui/dreams/DreamOverlayContainerViewController$2;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mBouncerlessScrimController:Lcom/android/systemui/ambient/touch/scrim/BouncerlessScrimController;

    iget-object v1, v0, Lcom/android/systemui/ambient/touch/scrim/BouncerlessScrimController;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/systemui/ambient/touch/scrim/BouncerlessScrimController$$ExternalSyntheticLambda2;

    iget-object v3, p0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mBouncerlessExpansionCallback:Lcom/android/systemui/dreams/DreamOverlayContainerViewController$1;

    const/4 v4, 0x0

    invoke-direct {v2, v0, v3, v4}, Lcom/android/systemui/ambient/touch/scrim/BouncerlessScrimController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/ambient/touch/scrim/BouncerlessScrimController;Ljava/lang/Object;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mTouchInsetSession:Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;

    iget-object v1, v0, Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession$$ExternalSyntheticLambda1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mDreamOverlayAnimationsController:Lcom/android/systemui/dreams/DreamOverlayAnimationsController;

    invoke-virtual {p0}, Lcom/android/systemui/dreams/DreamOverlayAnimationsController;->cancelAnimations()V

    return-void
.end method
