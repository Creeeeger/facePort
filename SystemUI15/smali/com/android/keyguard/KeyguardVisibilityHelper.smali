.class public final Lcom/android/keyguard/KeyguardVisibilityHelper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mAnimateYPos:Z

.field public final mAnimationProperties:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public mKeyguardViewVisibilityAnimating:Z

.field public mLastOccludedState:Z

.field public final mLogBuffer:Lcom/android/systemui/log/LogBuffer;

.field public mMascotViewContainer:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

.field public final mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

.field public final mSetGoneEndAction:Lcom/android/keyguard/KeyguardVisibilityHelper$2;

.field public final mSetInvisibleEndAction:Lcom/android/keyguard/KeyguardVisibilityHelper$1;

.field public final mSetVisibleEndRunnable:Lcom/android/keyguard/KeyguardVisibilityHelper$$ExternalSyntheticLambda0;

.field public final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;ZLcom/android/systemui/log/LogBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mMascotViewContainer:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mLastOccludedState:Z

    new-instance p3, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-direct {p3}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;-><init>()V

    iput-object p3, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mAnimationProperties:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    new-instance p3, Lcom/android/keyguard/KeyguardVisibilityHelper$1;

    invoke-direct {p3, p0}, Lcom/android/keyguard/KeyguardVisibilityHelper$1;-><init>(Lcom/android/keyguard/KeyguardVisibilityHelper;)V

    iput-object p3, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mSetInvisibleEndAction:Lcom/android/keyguard/KeyguardVisibilityHelper$1;

    new-instance p3, Lcom/android/keyguard/KeyguardVisibilityHelper$2;

    invoke-direct {p3, p0}, Lcom/android/keyguard/KeyguardVisibilityHelper$2;-><init>(Lcom/android/keyguard/KeyguardVisibilityHelper;)V

    iput-object p3, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mSetGoneEndAction:Lcom/android/keyguard/KeyguardVisibilityHelper$2;

    new-instance p3, Lcom/android/keyguard/KeyguardVisibilityHelper$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/android/keyguard/KeyguardVisibilityHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardVisibilityHelper;)V

    iput-object p3, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mSetVisibleEndRunnable:Lcom/android/keyguard/KeyguardVisibilityHelper$$ExternalSyntheticLambda0;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mView:Landroid/view/View;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iput-object p4, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    iput-boolean p5, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mAnimateYPos:Z

    iput-object p6, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mLogBuffer:Lcom/android/systemui/log/LogBuffer;

    return-void
.end method


# virtual methods
.method public final log(Ljava/lang/String;)V
    .locals 3

    iget-object p0, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mLogBuffer:Lcom/android/systemui/log/LogBuffer;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    const/4 v1, 0x0

    const-string v2, "KeyguardVisibilityHelper"

    invoke-virtual {p0, v2, v0, p1, v1}, Lcom/android/systemui/log/LogBuffer;->log(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final setViewVisibility(IIZZ)V
    .locals 10

    sget-object v0, Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;->INSTANCE:Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mView:Landroid/view/View;

    sget-object v1, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->ALPHA:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->cancelAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v3, v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mKeyguardViewVisibilityAnimating:Z

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    if-nez p3, :cond_0

    if-ne p2, v8, :cond_0

    if-ne p1, v8, :cond_1

    :cond_0
    if-eqz p4, :cond_3

    :cond_1
    iput-boolean v8, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mKeyguardViewVisibilityAnimating:Z

    new-instance p1, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;-><init>()V

    sget-object p2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    sget-object p4, Lcom/android/app/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2, p4}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setCustomInterpolator(Landroid/util/Property;Landroid/view/animation/Interpolator;)V

    iget-object p2, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mSetGoneEndAction:Lcom/android/keyguard/KeyguardVisibilityHelper$2;

    iput-object p2, p1, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->mAnimationEndAction:Ljava/util/function/Consumer;

    if-eqz p3, :cond_2

    iget-wide p2, v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardFadingAwayDelay:J

    iput-wide p2, p1, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-wide p2, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardFadingAwayDuration:J

    const-wide/16 v6, 0x2

    div-long/2addr p2, v6

    iput-wide p2, p1, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    const-string p2, "goingToFullShade && keyguardFadingAway"

    invoke-virtual {p0, p2}, Lcom/android/keyguard/KeyguardVisibilityHelper;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iput-wide v6, p1, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    const-wide/16 p2, 0xa0

    iput-wide p2, p1, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    const-string p2, "goingToFullShade && !keyguardFadingAway"

    invoke-virtual {p0, p2}, Lcom/android/keyguard/KeyguardVisibilityHelper;->log(Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    iget-object p2, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mView:Landroid/view/View;

    invoke-static {p2, v1, v5, p1, v8}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    goto/16 :goto_3

    :cond_3
    const/4 p4, 0x2

    const-string v0, "keyguardFadingAway transition w/ Y Aniamtion"

    const/high16 v2, 0x3f800000    # 1.0f

    if-ne p2, p4, :cond_4

    if-ne p1, v8, :cond_4

    iget-object p1, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mView:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v8, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mKeyguardViewVisibilityAnimating:Z

    iget-object p1, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mView:Landroid/view/View;

    invoke-virtual {p1, v5}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mView:Landroid/view/View;

    new-instance p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-direct {p2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;-><init>()V

    iput-wide v6, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    const-wide/16 p3, 0x140

    iput-wide p3, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    sget-object p3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    sget-object p4, Lcom/android/app/animation/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, p3, p4}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setCustomInterpolator(Landroid/util/Property;Landroid/view/animation/Interpolator;)V

    new-instance p3, Lcom/android/keyguard/KeyguardVisibilityHelper$$ExternalSyntheticLambda3;

    invoke-direct {p3, p0}, Lcom/android/keyguard/KeyguardVisibilityHelper$$ExternalSyntheticLambda3;-><init>(Lcom/android/keyguard/KeyguardVisibilityHelper;)V

    iput-object p3, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->mAnimationEndAction:Ljava/util/function/Consumer;

    invoke-static {p1, v1, v2, p2, v8}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardVisibilityHelper;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_4
    if-ne p1, v8, :cond_9

    if-eqz p2, :cond_5

    const-string/jumbo p1, "statusBarState == KEYGUARD && oldStatusBarState != SHADE"

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardVisibilityHelper;->log(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string/jumbo p1, "statusBarState == KEYGUARD && oldStatusBarState == SHADE"

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardVisibilityHelper;->log(Ljava/lang/String;)V

    :goto_1
    if-eqz p3, :cond_7

    if-eqz p2, :cond_7

    iput-boolean v8, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mKeyguardViewVisibilityAnimating:Z

    new-instance p1, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;-><init>()V

    iput-wide v6, p1, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    sget-object p2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    sget-object p3, Lcom/android/app/animation/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2, p3}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setCustomInterpolator(Landroid/util/Property;Landroid/view/animation/Interpolator;)V

    iget-object p2, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mSetInvisibleEndAction:Lcom/android/keyguard/KeyguardVisibilityHelper$1;

    iput-object p2, p1, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->mAnimationEndAction:Ljava/util/function/Consumer;

    iget-boolean p2, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mAnimateYPos:Z

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result p2

    iget-object p3, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    int-to-float p3, p3

    const p4, 0x3d4ccccd    # 0.05f

    mul-float/2addr p3, p4

    sub-float/2addr p2, p3

    const/16 p3, 0x7d

    int-to-long p3, p3

    iget-object v2, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mAnimationProperties:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    iput-wide p3, v2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    int-to-long v6, v4

    iput-wide v6, v2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    iget-object v4, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mView:Landroid/view/View;

    sget-object v9, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->Y:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    invoke-static {v4, v9}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->cancelAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mView:Landroid/view/View;

    invoke-static {v4, v9, p2, v2, v8}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    iput-wide p3, p1, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    iput-wide v6, p1, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardVisibilityHelper;->log(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const-string p2, "keyguardFadingAway transition w/o Y Animation"

    invoke-virtual {p0, p2}, Lcom/android/keyguard/KeyguardVisibilityHelper;->log(Ljava/lang/String;)V

    :goto_2
    iget-object p2, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mView:Landroid/view/View;

    invoke-static {p2, v1, v5, p1, v8}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    goto :goto_3

    :cond_7
    iget-object p1, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;->shouldAnimateInKeyguard()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    const-string p2, "ScreenOff transition"

    invoke-virtual {p0, p2}, Lcom/android/keyguard/KeyguardVisibilityHelper;->log(Ljava/lang/String;)V

    iput-boolean v8, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mKeyguardViewVisibilityAnimating:Z

    iget-object p2, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mView:Landroid/view/View;

    iget-object p3, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mSetVisibleEndRunnable:Lcom/android/keyguard/KeyguardVisibilityHelper$$ExternalSyntheticLambda0;

    invoke-virtual {p1, p2, p3}, Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;->animateInKeyguard$1(Landroid/view/View;Lcom/android/keyguard/KeyguardVisibilityHelper$$ExternalSyntheticLambda0;)V

    goto :goto_3

    :cond_8
    const-string p1, "Direct set Visibility to VISIBLE"

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardVisibilityHelper;->log(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mView:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_9
    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    const-string p1, "Direct set Visibility to GONE"

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardVisibilityHelper;->log(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mView:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    :goto_3
    iput-boolean v3, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mLastOccludedState:Z

    return-void
.end method
