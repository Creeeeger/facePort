.class public final Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;
.implements Lcom/android/systemui/statusbar/phone/ScreenOffAnimation;


# instance fields
.field public animatorDurationScale:F

.field public final animatorDurationScaleObserver:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController$animatorDurationScaleObserver$1;

.field public aodUiAnimationPlaying:Z

.field public centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

.field public final context:Landroid/content/Context;

.field public decidedToAnimateGoingToSleep:Ljava/lang/Boolean;

.field public final dozeParameters:Ldagger/Lazy;

.field public final globalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

.field public final handler:Landroid/os/Handler;

.field public final helper:Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;

.field public initialized:Z

.field public final interactionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

.field public final keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final keyguardViewMediatorLazy:Ldagger/Lazy;

.field public final lazyBlurController:Ldagger/Lazy;

.field public lightRevealAnimationPlaying:Z

.field public final lightRevealAnimator:Landroid/animation/ValueAnimator;

.field public lightRevealScrim:Lcom/android/systemui/statusbar/LightRevealScrim;

.field public final notifShadeWindowControllerLazy:Ldagger/Lazy;

.field public final panelExpansionInteractorLazy:Ldagger/Lazy;

.field public final powerManager:Landroid/os/PowerManager;

.field public final shadeLockscreenInteractorLazy:Ldagger/Lazy;

.field public shouldAnimateInKeyguard:Z

.field public final startLightRevealCallback:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController$special$$inlined$namedRunnable$1;

.field public final statusBarStateControllerImpl:Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

.field public final wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;Landroid/content/Context;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;Ldagger/Lazy;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Ldagger/Lazy;Lcom/android/systemui/util/settings/GlobalSettings;Ldagger/Lazy;Lcom/android/internal/jank/InteractionJankMonitor;Landroid/os/PowerManager;Ldagger/Lazy;Ldagger/Lazy;Landroid/os/Handler;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;",
            "Landroid/content/Context;",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            "Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/util/settings/GlobalSettings;",
            "Ldagger/Lazy;",
            "Lcom/android/internal/jank/InteractionJankMonitor;",
            "Landroid/os/PowerManager;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Landroid/os/Handler;",
            "Ldagger/Lazy;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->helper:Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->statusBarStateControllerImpl:Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->keyguardViewMediatorLazy:Ldagger/Lazy;

    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->dozeParameters:Ldagger/Lazy;

    iput-object p8, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->globalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    iput-object p9, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->notifShadeWindowControllerLazy:Ldagger/Lazy;

    iput-object p10, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->interactionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    iput-object p11, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->powerManager:Landroid/os/PowerManager;

    iput-object p12, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->shadeLockscreenInteractorLazy:Ldagger/Lazy;

    iput-object p13, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->panelExpansionInteractorLazy:Ldagger/Lazy;

    iput-object p14, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->handler:Landroid/os/Handler;

    iput-object p15, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->lazyBlurController:Ldagger/Lazy;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->animatorDurationScale:F

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    sget-boolean p2, Lcom/android/systemui/LsRune;->AOD_FULLSCREEN:Z

    if-eqz p2, :cond_0

    const-wide/16 p2, 0x28a

    goto :goto_0

    :cond_0
    const-wide/16 p2, 0x1f4

    :goto_0
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object p2, Lcom/android/app/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p2, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController$lightRevealAnimator$1$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController$lightRevealAnimator$1$1;-><init>(Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p2, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController$lightRevealAnimator$1$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController$lightRevealAnimator$1$2;-><init>(Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->lightRevealAnimator:Landroid/animation/ValueAnimator;

    new-instance p1, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController$special$$inlined$namedRunnable$1;

    const-string/jumbo p2, "startLightReveal"

    invoke-direct {p1, p2, p0}, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController$special$$inlined$namedRunnable$1;-><init>(Ljava/lang/String;Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->startLightRevealCallback:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController$special$$inlined$namedRunnable$1;

    new-instance p1, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController$animatorDurationScaleObserver$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController$animatorDurationScaleObserver$1;-><init>(Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->animatorDurationScaleObserver:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController$animatorDurationScaleObserver$1;

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;Landroid/content/Context;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;Ldagger/Lazy;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Ldagger/Lazy;Lcom/android/systemui/util/settings/GlobalSettings;Ldagger/Lazy;Lcom/android/internal/jank/InteractionJankMonitor;Landroid/os/PowerManager;Ldagger/Lazy;Ldagger/Lazy;Landroid/os/Handler;Ldagger/Lazy;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 17

    move/from16 v0, p16

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    move-object v15, v0

    goto :goto_0

    :cond_0
    move-object/from16 v15, p14

    :goto_0
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v16, p15

    invoke-direct/range {v1 .. v16}, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;-><init>(Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;Landroid/content/Context;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;Ldagger/Lazy;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Ldagger/Lazy;Lcom/android/systemui/util/settings/GlobalSettings;Ldagger/Lazy;Lcom/android/internal/jank/InteractionJankMonitor;Landroid/os/PowerManager;Ldagger/Lazy;Ldagger/Lazy;Landroid/os/Handler;Ldagger/Lazy;)V

    return-void
.end method


# virtual methods
.method public final animateInKeyguard(Landroid/view/View;Lcom/android/keyguard/KeyguardVisibilityHelper$$ExternalSyntheticLambda0;)V
    .locals 8

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->shouldAnimateInKeyguard:Z

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3dcccccd    # 0.1f

    mul-float/2addr v1, v2

    sub-float v1, v0, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setY(F)V

    sget-object v1, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->Y:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    invoke-static {p1, v1}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->cancelAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;)V

    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;-><init>()V

    const/16 v3, 0x1f4

    int-to-long v3, v3

    iput-wide v3, v2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    const/4 v5, 0x1

    invoke-static {p1, v1, v0, v2, v5}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->interactionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Lcom/android/internal/jank/InteractionJankMonitor;->cancel(I)Z

    sget-object v0, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->ALPHA:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->cancelAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;)V

    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;-><init>()V

    const-wide/16 v6, 0x0

    iput-wide v6, v2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    iput-wide v3, v2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    new-instance v3, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController$animateInKeyguard$1;

    invoke-direct {v3, p0, p2}, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController$animateInKeyguard$1;-><init>(Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;Ljava/lang/Runnable;)V

    iput-object v3, v2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->mAnimationEndAction:Ljava/util/function/Consumer;

    new-instance p2, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController$animateInKeyguard$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController$animateInKeyguard$2;-><init>(Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;)V

    iput-object p2, v2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->mAnimationCancelAction:Ljava/util/function/Consumer;

    sget-object p2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    sget-object v3, Lcom/android/app/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, p2, v3}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setCustomInterpolator(Landroid/util/Property;Landroid/view/animation/Interpolator;)V

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p1, v0, p2, v2, v5}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->notifShadeWindowControllerLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    check-cast p1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    iget-object p1, p1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mWindowRootView:Lcom/android/systemui/scene/ui/view/WindowRootView;

    if-eqz p1, :cond_0

    invoke-static {v1, p1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->withView(ILandroid/view/View;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->statusBarStateControllerImpl:Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->getClockId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->setTag(Ljava/lang/String;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->interactionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    invoke-virtual {p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;)Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Required value was null."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final initialize(Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/systemui/shade/ShadeViewController;Lcom/android/systemui/statusbar/LightRevealScrim;)V
    .locals 2

    sget-boolean p2, Lcom/android/systemui/LsRune;->AOD_FULLSCREEN:Z

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance p2, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController$initialize$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController$initialize$1;-><init>(Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;)V

    new-instance v0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController$initialize$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController$initialize$2;-><init>(Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->helper:Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->init(Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->initialized:Z

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->lightRevealScrim:Lcom/android/systemui/statusbar/LightRevealScrim;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    const/high16 p1, 0x3f800000    # 1.0f

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->globalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    const-string p3, "animator_duration_scale"

    invoke-interface {p2, p3, p1}, Lcom/android/systemui/util/settings/SettingsProxy;->getFloat(Ljava/lang/String;F)F

    move-result p1

    invoke-static {p1}, Landroid/view/WindowManager;->fixScale(F)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->animatorDurationScale:F

    invoke-static {p3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 p3, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->animatorDurationScaleObserver:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController$animatorDurationScaleObserver$1;

    invoke-interface {p2, p1, p3, v0}, Lcom/android/systemui/util/settings/SettingsProxy;->registerContentObserverSync(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {p1, p0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public final isAnimationPlaying()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->lightRevealAnimationPlaying:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->aodUiAnimationPlaying:Z

    if-eqz p0, :cond_0

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

.method public final isKeyguardShowDelayed()Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->isAnimationPlaying()Z

    move-result p0

    return p0
.end method

.method public final onFinishedWakingUp()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->aodUiAnimationPlaying:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->dozeParameters:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->canControlUnlockedScreenOff()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    const/4 v0, 0x1

    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateIsKeyguard(Z)Z

    :cond_1
    return-void
.end method

.method public final onStartedWakingUp()V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->decidedToAnimateGoingToSleep:Ljava/lang/Boolean;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->shouldAnimateInKeyguard:Z

    sget-boolean v2, Lcom/android/systemui/DejankUtils;->STRICT_MODE_ENABLED:Z

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    sget-object v2, Lcom/android/systemui/DejankUtils;->sPendingRunnables:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->startLightRevealCallback:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController$special$$inlined$namedRunnable$1;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    sget-object v2, Lcom/android/systemui/DejankUtils;->sHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->lightRevealAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->lightRevealAnimationPlaying:Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->handler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final overrideNotificationsDozeAmount()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->shouldPlayUnlockedScreenOffAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->isAnimationPlaying()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final shouldAnimateInKeyguard()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->shouldAnimateInKeyguard:Z

    return p0
.end method

.method public final shouldDelayDisplayDozeTransition()Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->shouldPlayUnlockedScreenOffAnimation()Z

    move-result p0

    return p0
.end method

.method public final shouldDelayKeyguardShow()Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->shouldPlayUnlockedScreenOffAnimation()Z

    move-result p0

    return p0
.end method

.method public final shouldHideScrimOnWakeUp()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->lightRevealAnimationPlaying:Z

    return p0
.end method

.method public final shouldPlayAnimation()Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->shouldPlayUnlockedScreenOffAnimation()Z

    move-result p0

    return p0
.end method

.method public final shouldPlayUnlockedScreenOffAnimation()Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->initialized:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-boolean v0, Lcom/android/systemui/LsRune;->AOD_FULLSCREEN:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->helper:Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->shouldPlayUnlockedScreenOffAnimation()Z

    move-result p0

    return p0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->dozeParameters:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->canControlUnlockedScreenOff()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->decidedToAnimateGoingToSleep:Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "animator_duration_scale"

    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "0.0"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->statusBarStateControllerImpl:Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget v0, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    if-eqz v0, :cond_5

    return v1

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->panelExpansionInteractorLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;

    invoke-interface {v0}, Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;->isPanelExpanded()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->isAnimationPlaying()Z

    move-result v0

    if-nez v0, :cond_7

    return v1

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p0

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    return v1

    :cond_9
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final shouldShowAodIconsWhenShade()Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->isAnimationPlaying()Z

    move-result p0

    return p0
.end method

.method public final startAnimation()Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->shouldPlayUnlockedScreenOffAnimation()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/systemui/LsRune;->AOD_FULLSCREEN:Z

    new-instance v1, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController$startAnimation$1;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->helper:Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController$startAnimation$1;-><init>(Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;)V

    invoke-static {v1, v0}, Lcom/android/systemui/Rune;->runIf(Ljava/lang/Runnable;Z)V

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->decidedToAnimateGoingToSleep:Ljava/lang/Boolean;

    xor-int/lit8 v1, v0, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->shouldAnimateInKeyguard:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->lightRevealAnimationPlaying:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->startLightRevealCallback:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController$special$$inlined$namedRunnable$1;

    invoke-static {v1}, Lcom/android/systemui/DejankUtils;->postAfterTraversal(Ljava/lang/Runnable;)V

    new-instance v1, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController$startAnimation$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController$startAnimation$2;-><init>(Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;)V

    if-eqz v0, :cond_0

    const-wide/16 v2, 0x12c

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x258

    :goto_0
    long-to-float v0, v2

    iget v2, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->animatorDurationScale:F

    mul-float/2addr v0, v2

    float-to-long v2, v0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->lazyBlurController:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/blur/SecQpBlurController;

    iget-object p0, p0, Lcom/android/systemui/blur/SecQpBlurController;->mBackgroundController:Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;

    if-eqz p0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;->mMaxAlpha:F

    const/4 v1, 0x0

    mul-float/2addr v1, v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;->mView:Lcom/android/systemui/statusbar/phone/SecPanelBackground;

    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->decidedToAnimateGoingToSleep:Ljava/lang/Boolean;

    const/4 p0, 0x0

    return p0
.end method
