.class public final Lcom/android/systemui/volume/view/icon/VolumeIconMotion;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final ALPHA_INTERPOLATOR:Landroid/view/animation/PathInterpolator;


# instance fields
.field public final context:Landroid/content/Context;

.field public lastAnimtor:Landroid/animation/Animator;

.field public shockValueAnimator:Landroid/animation/ValueAnimator;

.field public final storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/systemui/volume/view/icon/VolumeIconMotion$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/view/icon/VolumeIconMotion$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3e6147ae    # 0.22f

    const/high16 v4, 0x3e800000    # 0.25f

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->ALPHA_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/volume/store/VolumePanelStore;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->context:Landroid/content/Context;

    new-instance p2, Lcom/android/systemui/volume/store/StoreInteractor;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1}, Lcom/android/systemui/volume/store/StoreInteractor;-><init>(Lcom/samsung/systemui/splugins/volume/VolumeObserver;Lcom/android/systemui/volume/store/VolumePanelStore;)V

    iput-object p2, p0, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->shockValueAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public static getVibrationAnimator(Landroid/view/View;FFI)Landroid/animation/Animator;
    .locals 3

    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    neg-float v0, p1

    add-float/2addr v0, p2

    :goto_0
    const-string/jumbo p2, "translationX"

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput v0, v1, p1

    invoke-static {p0, p2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    int-to-long p1, p3

    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p0
.end method

.method public static startSplashAnimation(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    new-instance v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$4;

    invoke-direct {v1, p0, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput v0, v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    new-instance v2, Lcom/android/systemui/volume/view/icon/VolumeIconMotion$startSplashAnimation$1$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/volume/view/icon/VolumeIconMotion$startSplashAnimation$1$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)V

    new-instance p0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const/high16 v2, 0x43960000    # 300.0f

    invoke-virtual {p0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)V

    const v2, 0x3f147ae1    # 0.58f

    invoke-virtual {p0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)V

    iput-object p0, v1, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)V

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-virtual {v1, p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method


# virtual methods
.method public final cancelLastAnimator()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->lastAnimtor:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->lastAnimtor:Landroid/animation/Animator;

    return-void
.end method

.method public final startMaxAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/systemui/volume/view/icon/ScreenState;)V
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->cancelLastAnimator()V

    sget-object v3, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0x8

    invoke-virtual {p6, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p7, v3}, Landroid/view/View;->setVisibility(I)V

    if-eqz p5, :cond_0

    invoke-virtual {p5, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p4, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p5, p0, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->context:Landroid/content/Context;

    const p6, 0x7f0717ae

    invoke-static {p6, p5}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result p5

    iget-object p6, p0, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->context:Landroid/content/Context;

    sget-object p7, Lcom/android/systemui/volume/view/icon/ScreenState;->SCREEN_NORMAL:Lcom/android/systemui/volume/view/icon/ScreenState;

    if-ne p8, p7, :cond_1

    const v3, 0x7f0717b5

    goto :goto_0

    :cond_1
    const v3, 0x7f07180c

    :goto_0
    invoke-static {v3, p6}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result p6

    iget-object v3, p0, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->context:Landroid/content/Context;

    if-ne p8, p7, :cond_2

    const v4, 0x7f0717b2

    goto :goto_1

    :cond_2
    const v4, 0x7f07180a

    :goto_1
    invoke-static {v4, v3}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result v3

    if-eq p8, p7, :cond_3

    sget-boolean v4, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_WATCHFACE_VOLUME_DIALOG:Z

    if-eqz v4, :cond_3

    iget-object p5, p0, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->context:Landroid/content/Context;

    const p6, 0x7f071818

    invoke-static {p6, p5}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result p5

    iget-object p6, p0, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->context:Landroid/content/Context;

    const v3, 0x7f07181d

    invoke-static {v3, p6}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result p6

    iget-object v3, p0, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->context:Landroid/content/Context;

    const v4, 0x7f07181b

    invoke-static {v4, v3}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result v3

    :cond_3
    invoke-static {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isRing(I)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->context:Landroid/content/Context;

    if-ne p8, p7, :cond_4

    const p6, 0x7f071804

    goto :goto_2

    :cond_4
    const p6, 0x7f071811

    :goto_2
    invoke-static {p6, p1}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result p6

    iget-object p1, p0, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->context:Landroid/content/Context;

    if-ne p8, p7, :cond_5

    const v3, 0x7f071801

    goto :goto_3

    :cond_5
    const v3, 0x7f07180f

    :goto_3
    invoke-static {v3, p1}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result v3

    if-eq p8, p7, :cond_6

    sget-boolean p1, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_WATCHFACE_VOLUME_DIALOG:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->context:Landroid/content/Context;

    const p6, 0x7f071825

    invoke-static {p6, p1}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result p6

    iget-object p1, p0, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->context:Landroid/content/Context;

    const p7, 0x7f071823

    invoke-static {p7, p1}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result v3

    :cond_6
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    new-array p7, v1, [Landroid/animation/Animator;

    invoke-virtual {p3}, Landroid/view/View;->getAlpha()F

    move-result p8

    const/high16 v4, 0x3f000000    # 0.5f

    new-array v5, v0, [F

    aput p8, v5, v2

    aput v4, v5, v1

    const-string p8, "alpha"

    invoke-static {p3, p8, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, p7, v2

    invoke-virtual {p1, p7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array p7, v1, [Landroid/animation/Animator;

    invoke-virtual {p4}, Landroid/view/View;->getAlpha()F

    move-result v5

    new-array v6, v0, [F

    aput v5, v6, v2

    aput v4, v6, v1

    invoke-static {p4, p8, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p8

    aput-object p8, p7, v2

    invoke-virtual {p1, p7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 p7, 0x96

    invoke-virtual {p1, p7, p8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance p7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, p7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p7, Landroid/animation/AnimatorSet;

    invoke-direct {p7}, Landroid/animation/AnimatorSet;-><init>()V

    new-array p8, v1, [Landroid/animation/Animator;

    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result v4

    int-to-float p5, p5

    new-array v5, v0, [F

    aput v4, v5, v2

    aput p5, v5, v1

    const-string/jumbo p5, "x"

    invoke-static {p2, p5, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    aput-object p2, p8, v2

    invoke-virtual {p7, p8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array p2, v1, [Landroid/animation/Animator;

    invoke-virtual {p3}, Landroid/view/View;->getX()F

    move-result p8

    int-to-float p6, p6

    new-array v4, v0, [F

    aput p8, v4, v2

    aput p6, v4, v1

    invoke-static {p3, p5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    aput-object p3, p2, v2

    invoke-virtual {p7, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array p2, v1, [Landroid/animation/Animator;

    invoke-virtual {p4}, Landroid/view/View;->getX()F

    move-result p3

    int-to-float p6, v3

    new-array p8, v0, [F

    aput p3, p8, v2

    aput p6, p8, v1

    invoke-static {p4, p5, p8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    aput-object p3, p2, v2

    invoke-virtual {p7, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 p2, 0xc8

    invoke-virtual {p7, p2, p3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance p2, Landroid/view/animation/PathInterpolator;

    const p3, 0x3e6147ae    # 0.22f

    const/high16 p4, 0x3e800000    # 0.25f

    const/4 p5, 0x0

    const/high16 p6, 0x3f800000    # 1.0f

    invoke-direct {p2, p3, p4, p5, p6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p7, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    new-array p3, v1, [Landroid/animation/Animator;

    aput-object p1, p3, v2

    invoke-virtual {p2, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array p1, v1, [Landroid/animation/Animator;

    aput-object p7, p1, v2

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    iput-object p2, p0, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->lastAnimtor:Landroid/animation/Animator;

    return-void
.end method

.method public final startMidAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/systemui/volume/view/icon/ScreenState;)V
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->cancelLastAnimator()V

    sget-object v3, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0x8

    invoke-virtual {p7, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p8, v3}, Landroid/view/View;->setVisibility(I)V

    if-eqz p6, :cond_0

    invoke-virtual {p6, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p4, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p5, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p6, p0, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->context:Landroid/content/Context;

    const p7, 0x7f0717af

    invoke-static {p7, p6}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result p6

    iget-object p7, p0, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->context:Landroid/content/Context;

    sget-object p8, Lcom/android/systemui/volume/view/icon/ScreenState;->SCREEN_NORMAL:Lcom/android/systemui/volume/view/icon/ScreenState;

    if-ne p9, p8, :cond_1

    const v3, 0x7f0717b6

    goto :goto_0

    :cond_1
    const v3, 0x7f07180d

    :goto_0
    invoke-static {v3, p7}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result p7

    iget-object v3, p0, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->context:Landroid/content/Context;

    if-ne p9, p8, :cond_2

    const v4, 0x7f0717b3

    goto :goto_1

    :cond_2
    const v4, 0x7f07180b

    :goto_1
    invoke-static {v4, v3}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result v3

    if-eq p9, p8, :cond_3

    sget-boolean v4, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_WATCHFACE_VOLUME_DIALOG:Z

    if-eqz v4, :cond_3

    iget-object p6, p0, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->context:Landroid/content/Context;

    const p7, 0x7f071819

    invoke-static {p7, p6}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result p6

    iget-object p7, p0, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->context:Landroid/content/Context;

    const v3, 0x7f07181e

    invoke-static {v3, p7}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result p7

    iget-object v3, p0, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->context:Landroid/content/Context;

    const v4, 0x7f07181c

    invoke-static {v4, v3}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result v3

    :cond_3
    invoke-static {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isRing(I)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object p7, p0, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->context:Landroid/content/Context;

    if-ne p9, p8, :cond_4

    const v3, 0x7f071805

    goto :goto_2

    :cond_4
    const v3, 0x7f071812

    :goto_2
    invoke-static {v3, p7}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result p7

    iget-object v3, p0, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->context:Landroid/content/Context;

    if-ne p9, p8, :cond_5

    const v4, 0x7f071802

    goto :goto_3

    :cond_5
    const v4, 0x7f071810

    :goto_3
    invoke-static {v4, v3}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result v3

    if-eq p9, p8, :cond_6

    sget-boolean p8, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_WATCHFACE_VOLUME_DIALOG:Z

    if-eqz p8, :cond_6

    iget-object p7, p0, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->context:Landroid/content/Context;

    const p8, 0x7f071826

    invoke-static {p8, p7}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result p7

    iget-object p8, p0, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->context:Landroid/content/Context;

    const p9, 0x7f071824

    invoke-static {p9, p8}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result v3

    :cond_6
    invoke-virtual {p4}, Landroid/view/View;->getAlpha()F

    move-result p8

    new-array p9, v0, [F

    aput p8, p9, v2

    const/high16 p8, 0x3f000000    # 0.5f

    aput p8, p9, v1

    const-string p8, "alpha"

    invoke-static {p4, p8, p9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p9

    invoke-virtual {p5}, Landroid/view/View;->getAlpha()F

    move-result v4

    new-array v5, v0, [F

    aput v4, v5, v2

    const v4, 0x3dcccccd    # 0.1f

    aput v4, v5, v1

    invoke-static {p5, p8, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p8

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v5, v1, [Landroid/animation/Animator;

    aput-object p9, v5, v2

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array p9, v1, [Landroid/animation/Animator;

    aput-object p8, p9, v2

    invoke-virtual {v4, p9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 p8, 0x64

    invoke-virtual {v4, p8, p9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance p8, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p8}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v4, p8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p3}, Landroid/view/View;->getX()F

    move-result p8

    int-to-float p6, p6

    new-array p9, v0, [F

    aput p8, p9, v2

    aput p6, p9, v1

    const-string/jumbo p6, "x"

    invoke-static {p3, p6, p9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-virtual {p4}, Landroid/view/View;->getX()F

    move-result p8

    int-to-float p7, p7

    new-array p9, v0, [F

    aput p8, p9, v2

    aput p7, p9, v1

    invoke-static {p4, p6, p9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p4

    invoke-virtual {p5}, Landroid/view/View;->getX()F

    move-result p7

    int-to-float p8, v3

    new-array p9, v0, [F

    aput p7, p9, v2

    aput p8, p9, v1

    invoke-static {p5, p6, p9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p5

    new-instance p6, Landroid/animation/AnimatorSet;

    invoke-direct {p6}, Landroid/animation/AnimatorSet;-><init>()V

    new-array p7, v1, [Landroid/animation/Animator;

    aput-object p3, p7, v2

    invoke-virtual {p6, p7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array p3, v1, [Landroid/animation/Animator;

    aput-object p4, p3, v2

    invoke-virtual {p6, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array p3, v1, [Landroid/animation/Animator;

    aput-object p5, p3, v2

    invoke-virtual {p6, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 p3, 0xc8

    invoke-virtual {p6, p3, p4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance p3, Landroid/view/animation/PathInterpolator;

    const p4, 0x3e6147ae    # 0.22f

    const/high16 p5, 0x3e800000    # 0.25f

    const/4 p7, 0x0

    const/high16 p8, 0x3f800000    # 1.0f

    invoke-direct {p3, p4, p5, p7, p8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p6, p3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p3, Landroid/animation/AnimatorSet;

    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    new-array p4, v1, [Landroid/animation/Animator;

    aput-object p6, p4, v2

    invoke-virtual {p3, p4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array p4, v1, [Landroid/animation/Animator;

    aput-object v4, p4, v2

    invoke-virtual {p3, p4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance p4, Lcom/android/systemui/volume/view/icon/VolumeIconMotion$startMidAnimation$2$1;

    invoke-direct {p4, p0, p1, p2}, Lcom/android/systemui/volume/view/icon/VolumeIconMotion$startMidAnimation$2$1;-><init>(Lcom/android/systemui/volume/view/icon/VolumeIconMotion;II)V

    invoke-virtual {p3, p4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p3}, Landroid/animation/AnimatorSet;->start()V

    iput-object p3, p0, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->lastAnimtor:Landroid/animation/Animator;

    return-void
.end method

.method public final startMinAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/systemui/volume/view/icon/ScreenState;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p9

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->cancelLastAnimator()V

    sget-object v9, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v9, 0x8

    move-object/from16 v10, p7

    invoke-virtual {v10, v9}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v10, p8

    invoke-virtual {v10, v9}, Landroid/view/View;->setVisibility(I)V

    if-eqz v4, :cond_0

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v4, v0, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->context:Landroid/content/Context;

    sget-object v9, Lcom/android/systemui/volume/view/icon/ScreenState;->SCREEN_NORMAL:Lcom/android/systemui/volume/view/icon/ScreenState;

    if-ne v5, v9, :cond_1

    const v10, 0x7f0717b0

    goto :goto_0

    :cond_1
    const v10, 0x7f071809

    :goto_0
    invoke-static {v10, v4}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result v4

    invoke-static/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isRing(I)Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_3

    iget-object v4, v0, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->context:Landroid/content/Context;

    if-ne v5, v9, :cond_2

    const v10, 0x7f0717ff

    goto :goto_1

    :cond_2
    const v10, 0x7f07180e

    :goto_1
    invoke-static {v10, v4}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result v4

    const v10, 0x3e99999a    # 0.3f

    goto :goto_2

    :cond_3
    move v10, v11

    :goto_2
    if-eq v5, v9, :cond_4

    sget-boolean v12, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_WATCHFACE_VOLUME_DIALOG:Z

    if-eqz v12, :cond_4

    iget-object v4, v0, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->context:Landroid/content/Context;

    const v12, 0x7f07181a

    invoke-static {v12, v4}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result v4

    :cond_4
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getAlpha()F

    move-result v12

    new-array v13, v6, [F

    aput v12, v13, v8

    aput v10, v13, v7

    const-string v10, "alpha"

    invoke-static {v2, v10, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getAlpha()F

    move-result v13

    new-array v14, v6, [F

    aput v13, v14, v8

    aput v11, v14, v7

    invoke-static {v3, v10, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-instance v10, Landroid/animation/AnimatorSet;

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v13, v7, [Landroid/animation/Animator;

    aput-object v12, v13, v8

    invoke-virtual {v10, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v12, v7, [Landroid/animation/Animator;

    aput-object v3, v12, v8

    invoke-virtual {v10, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v12, 0x64

    invoke-virtual {v10, v12, v13}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v10, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getX()F

    move-result v3

    int-to-float v4, v4

    new-array v12, v6, [F

    aput v3, v12, v8

    aput v4, v12, v7

    const-string/jumbo v3, "x"

    invoke-static {v1, v3, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v12, v7, [Landroid/animation/Animator;

    aput-object v1, v12, v8

    invoke-virtual {v4, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-static/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isRing(I)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->context:Landroid/content/Context;

    if-ne v5, v9, :cond_5

    const v12, 0x7f071806

    goto :goto_3

    :cond_5
    const v12, 0x7f07180d

    :goto_3
    invoke-static {v12, v1}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result v1

    if-eq v5, v9, :cond_6

    sget-boolean v5, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_WATCHFACE_VOLUME_DIALOG:Z

    if-eqz v5, :cond_6

    iget-object v1, v0, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->context:Landroid/content/Context;

    const v5, 0x7f071827

    invoke-static {v5, v1}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result v1

    :cond_6
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getX()F

    move-result v5

    int-to-float v1, v1

    new-array v6, v6, [F

    aput v5, v6, v8

    aput v1, v6, v7

    invoke-static {v2, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-array v2, v7, [Landroid/animation/Animator;

    aput-object v1, v2, v8

    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_7
    const-wide/16 v1, 0xc8

    invoke-virtual {v4, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3e6147ae    # 0.22f

    const/high16 v5, 0x3e800000    # 0.25f

    invoke-direct {v1, v3, v5, v11, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v2, v7, [Landroid/animation/Animator;

    aput-object v10, v2, v8

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v2, v7, [Landroid/animation/Animator;

    aput-object v4, v2, v8

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v2, Lcom/android/systemui/volume/view/icon/VolumeIconMotion$startMinAnimation$2$1;

    move/from16 v3, p1

    move/from16 v4, p2

    invoke-direct {v2, p0, v3, v4}, Lcom/android/systemui/volume/view/icon/VolumeIconMotion$startMinAnimation$2$1;-><init>(Lcom/android/systemui/volume/view/icon/VolumeIconMotion;II)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    iput-object v1, v0, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->lastAnimtor:Landroid/animation/Animator;

    return-void
.end method

.method public final startMuteAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/systemui/volume/view/icon/ScreenState;)V
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->cancelLastAnimator()V

    sget-object v3, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 p6, 0x4

    invoke-virtual {p2, p6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p7, v2}, Landroid/view/View;->setVisibility(I)V

    if-eqz p5, :cond_0

    const/16 p6, 0x8

    invoke-virtual {p5, p6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p4, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p5, p0, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->context:Landroid/content/Context;

    sget-object p6, Lcom/android/systemui/volume/view/icon/ScreenState;->SCREEN_NORMAL:Lcom/android/systemui/volume/view/icon/ScreenState;

    if-ne p8, p6, :cond_1

    const v3, 0x7f0717b0

    goto :goto_0

    :cond_1
    const v3, 0x7f071809

    :goto_0
    invoke-static {v3, p5}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result p5

    invoke-static {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isRing(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->context:Landroid/content/Context;

    const p5, 0x7f0717ff

    invoke-static {p5, p1}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result p5

    :cond_2
    if-eq p8, p6, :cond_3

    sget-boolean p1, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_WATCHFACE_VOLUME_DIALOG:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->context:Landroid/content/Context;

    const p5, 0x7f07181a

    invoke-static {p5, p1}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result p5

    :cond_3
    invoke-virtual {p3}, Landroid/view/View;->getAlpha()F

    move-result p1

    const/4 p6, 0x0

    new-array p8, v0, [F

    aput p1, p8, v2

    aput p6, p8, v1

    const-string p1, "alpha"

    invoke-static {p3, p1, p8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-virtual {p4}, Landroid/view/View;->getAlpha()F

    move-result p8

    new-array v3, v0, [F

    aput p8, v3, v2

    aput p6, v3, v1

    invoke-static {p4, p1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-instance p4, Landroid/animation/AnimatorSet;

    invoke-direct {p4}, Landroid/animation/AnimatorSet;-><init>()V

    new-array p8, v1, [Landroid/animation/Animator;

    aput-object p3, p8, v2

    invoke-virtual {p4, p8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array p3, v1, [Landroid/animation/Animator;

    aput-object p1, p3, v2

    invoke-virtual {p4, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v3, 0x64

    invoke-virtual {p4, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p4, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result p1

    int-to-float p3, p5

    new-array p5, v0, [F

    aput p1, p5, v2

    aput p3, p5, v1

    const-string/jumbo p1, "x"

    invoke-static {p2, p1, p5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 p2, 0xc8

    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance p2, Landroid/view/animation/PathInterpolator;

    const/high16 p3, 0x3f800000    # 1.0f

    const p5, 0x3e6147ae    # 0.22f

    const/high16 p8, 0x3e800000    # 0.25f

    invoke-direct {p2, p5, p8, p6, p3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    new-array p3, v1, [Landroid/animation/Animator;

    aput-object p4, p3, v2

    invoke-virtual {p2, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array p3, v1, [Landroid/animation/Animator;

    aput-object p1, p3, v2

    invoke-virtual {p2, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    iput-object p2, p0, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->lastAnimtor:Landroid/animation/Animator;

    invoke-static {p7}, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->startSplashAnimation(Landroid/view/View;)V

    return-void
.end method

.method public final startSoundVibrationAnimation(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->lastAnimtor:Landroid/animation/Animator;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/animation/Animator;->cancel()V

    :cond_0
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->lastAnimtor:Landroid/animation/Animator;

    sget-object v3, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v3, 0x4

    invoke-virtual {p5, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p6, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p3, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p4, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p5, p0, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->context:Landroid/content/Context;

    const p6, 0x7f0717ff

    invoke-static {p6, p5}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result p5

    new-instance p6, Landroid/animation/AnimatorSet;

    invoke-direct {p6}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v3, v1, [Landroid/animation/Animator;

    invoke-virtual {p3}, Landroid/view/View;->getAlpha()F

    move-result v4

    const/4 v5, 0x0

    new-array v6, v0, [F

    aput v4, v6, v2

    aput v5, v6, v1

    const-string v4, "alpha"

    invoke-static {p3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    aput-object p3, v3, v2

    invoke-virtual {p6, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array p3, v1, [Landroid/animation/Animator;

    invoke-virtual {p4}, Landroid/view/View;->getAlpha()F

    move-result v3

    new-array v6, v0, [F

    aput v3, v6, v2

    aput v5, v6, v1

    invoke-static {p4, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p4

    aput-object p4, p3, v2

    invoke-virtual {p6, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 p3, 0x32

    invoke-virtual {p6, p3, p4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance p3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p6, p3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result p3

    int-to-float p4, p5

    new-array p5, v0, [F

    aput p3, p5, v2

    aput p4, p5, v1

    const-string/jumbo p3, "x"

    invoke-static {p2, p3, p5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-wide/16 p3, 0xc8

    invoke-virtual {p2, p3, p4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance p3, Landroid/view/animation/PathInterpolator;

    const/high16 p4, 0x3f800000    # 1.0f

    const p5, 0x3e6147ae    # 0.22f

    const/high16 v0, 0x3e800000    # 0.25f

    invoke-direct {p3, p5, v0, v5, p4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p2, p3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p3, Landroid/animation/AnimatorSet;

    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    new-array p4, v1, [Landroid/animation/Animator;

    aput-object p6, p4, v2

    invoke-virtual {p3, p4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array p4, v1, [Landroid/animation/Animator;

    aput-object p2, p4, v2

    invoke-virtual {p3, p4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {p3}, Landroid/animation/AnimatorSet;->start()V

    iput-object p3, p0, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->lastAnimtor:Landroid/animation/Animator;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->startVibrationAnimation(Landroid/view/View;)V

    return-void
.end method

.method public final startVibrationAnimation(Landroid/view/View;)V
    .locals 8

    invoke-virtual {p0}, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->cancelLastAnimator()V

    iget-object v0, p0, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->context:Landroid/content/Context;

    const v1, 0x7f07182b

    invoke-static {v1, v0}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenFloat(ILandroid/content/Context;)F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->context:Landroid/content/Context;

    const v2, 0x7f07182c

    invoke-static {v2, v1}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenFloat(ILandroid/content/Context;)F

    move-result v1

    neg-float v2, v0

    const/4 v3, 0x0

    const/16 v4, 0x3c

    invoke-static {p1, v3, v2, v4}, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->getVibrationAnimator(Landroid/view/View;FFI)Landroid/animation/Animator;

    move-result-object v4

    sub-float v5, v0, v1

    const/16 v6, 0x50

    invoke-static {p1, v2, v5, v6}, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->getVibrationAnimator(Landroid/view/View;FFI)Landroid/animation/Animator;

    move-result-object v2

    const/4 v6, 0x2

    int-to-float v7, v6

    mul-float/2addr v1, v7

    sub-float/2addr v0, v1

    neg-float v0, v0

    const/16 v1, 0x64

    invoke-static {p1, v5, v0, v1}, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->getVibrationAnimator(Landroid/view/View;FFI)Landroid/animation/Animator;

    move-result-object v1

    const/16 v5, 0x78

    invoke-static {p1, v0, v3, v5}, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->getVibrationAnimator(Landroid/view/View;FFI)Landroid/animation/Animator;

    move-result-object p1

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v3, 0x4

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v2, v3, v4

    aput-object v1, v3, v6

    const/4 v1, 0x3

    aput-object p1, v3, v1

    invoke-static {v3}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iput-object v0, p0, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->lastAnimtor:Landroid/animation/Animator;

    return-void
.end method
