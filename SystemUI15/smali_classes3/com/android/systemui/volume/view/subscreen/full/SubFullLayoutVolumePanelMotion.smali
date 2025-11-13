.class public final Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final HIDE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field public static final TITLE_TRANSLATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;


# instance fields
.field public context:Landroid/content/Context;

.field public singleShowSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public final storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f547ae1    # 0.83f

    const v2, 0x3f333333    # 0.7f

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->HIDE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    const/high16 v2, 0x3f800000    # 1.0f

    const v4, 0x3e6147ae    # 0.22f

    invoke-direct {v0, v4, v1, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->TITLE_TRANSLATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/volume/store/StoreInteractor;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v1, v2, v1}, Lcom/android/systemui/volume/store/StoreInteractor;-><init>(Lcom/samsung/systemui/splugins/volume/VolumeObserver;Lcom/android/systemui/volume/store/VolumePanelStore;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    return-void
.end method

.method public static getSeekBarTouchDownAnimation(Landroid/view/View;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 2

    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$4;

    invoke-direct {v0, p0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    new-instance v1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion$getSeekBarTouchDownAnimation$1$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion$getSeekBarTouchDownAnimation$1$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)V

    new-instance p0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const v1, 0x43b98000    # 371.0f

    invoke-virtual {p0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)V

    iput-object p0, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    return-object v0
.end method

.method public static getSeekBarTouchUpAnimation(Landroid/view/View;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 2

    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$4;

    invoke-direct {v0, p0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    new-instance v1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion$getSeekBarTouchUpAnimation$1$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion$getSeekBarTouchUpAnimation$1$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)V

    new-instance p0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const v1, 0x43b98000    # 371.0f

    invoke-virtual {p0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)V

    iput-object p0, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    return-object v0
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

.method public static startSeekBarTouchDownAnimation(Landroidx/dynamicanimation/animation/SpringAnimation;Landroidx/dynamicanimation/animation/SpringAnimation;Z)V
    .locals 1

    if-eqz p1, :cond_1

    iget-boolean v0, p1, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->canSkipToEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->skipToEnd()V

    :cond_1
    if-eqz p2, :cond_2

    const p1, 0x3f851eb8    # 1.04f

    goto :goto_1

    :cond_2
    const p1, 0x3f88f5c3    # 1.07f

    :goto_1
    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method

.method public static startSplashAnimation(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    new-instance v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$4;

    invoke-direct {v1, p0, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    iput v0, v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    new-instance v2, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion$startSplashAnimation$1$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion$startSplashAnimation$1$1;-><init>(Landroid/view/View;)V

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
.method public final startMaxAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

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
    iget-object p5, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->context:Landroid/content/Context;

    const/4 p6, 0x0

    if-nez p5, :cond_1

    move-object p5, p6

    :cond_1
    const p7, 0x7f0714cf

    invoke-static {p7, p5}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenFloat(ILandroid/content/Context;)F

    move-result p5

    iget-object p7, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->context:Landroid/content/Context;

    if-nez p7, :cond_2

    move-object p7, p6

    :cond_2
    const v3, 0x7f0714d4

    invoke-static {v3, p7}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenFloat(ILandroid/content/Context;)F

    move-result p7

    iget-object v3, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->context:Landroid/content/Context;

    if-nez v3, :cond_3

    move-object v3, p6

    :cond_3
    const v4, 0x7f0714d2

    invoke-static {v4, v3}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenFloat(ILandroid/content/Context;)F

    move-result v3

    invoke-static {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isRing(I)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->context:Landroid/content/Context;

    if-nez p1, :cond_4

    move-object p1, p6

    :cond_4
    const p7, 0x7f07150a

    invoke-static {p7, p1}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenFloat(ILandroid/content/Context;)F

    move-result p7

    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->context:Landroid/content/Context;

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    move-object p6, p0

    :goto_0
    const p0, 0x7f071508

    invoke-static {p0, p6}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenFloat(ILandroid/content/Context;)F

    move-result v3

    :cond_6
    invoke-virtual {p3}, Landroid/view/View;->getAlpha()F

    move-result p0

    const/high16 p1, 0x3f000000    # 0.5f

    new-array p6, v0, [F

    aput p0, p6, v2

    aput p1, p6, v1

    const-string p0, "alpha"

    invoke-static {p3, p0, p6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p6

    invoke-virtual {p4}, Landroid/view/View;->getAlpha()F

    move-result v4

    new-array v5, v0, [F

    aput v4, v5, v2

    aput p1, v5, v1

    invoke-static {p4, p0, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v4, v1, [Landroid/animation/Animator;

    aput-object p6, v4, v2

    invoke-virtual {p1, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array p6, v1, [Landroid/animation/Animator;

    aput-object p0, p6, v2

    invoke-virtual {p1, p6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v4, 0x96

    invoke-virtual {p1, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance p0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result p0

    new-array p6, v0, [F

    aput p0, p6, v2

    aput p5, p6, v1

    const-string/jumbo p0, "x"

    invoke-static {p2, p0, p6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-virtual {p3}, Landroid/view/View;->getX()F

    move-result p5

    new-array p6, v0, [F

    aput p5, p6, v2

    aput p7, p6, v1

    invoke-static {p3, p0, p6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-virtual {p4}, Landroid/view/View;->getX()F

    move-result p5

    new-array p6, v0, [F

    aput p5, p6, v2

    aput v3, p6, v1

    invoke-static {p4, p0, p6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    new-instance p4, Landroid/animation/AnimatorSet;

    invoke-direct {p4}, Landroid/animation/AnimatorSet;-><init>()V

    new-array p5, v1, [Landroid/animation/Animator;

    aput-object p2, p5, v2

    invoke-virtual {p4, p5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array p2, v1, [Landroid/animation/Animator;

    aput-object p3, p2, v2

    invoke-virtual {p4, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array p2, v1, [Landroid/animation/Animator;

    aput-object p0, p2, v2

    invoke-virtual {p4, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 p2, 0xc8

    invoke-virtual {p4, p2, p3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance p0, Landroid/view/animation/PathInterpolator;

    const p2, 0x3e6147ae    # 0.22f

    const/high16 p3, 0x3e800000    # 0.25f

    const/4 p5, 0x0

    const/high16 p6, 0x3f800000    # 1.0f

    invoke-direct {p0, p2, p3, p5, p6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p4, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    new-array p2, v1, [Landroid/animation/Animator;

    aput-object p1, p2, v2

    invoke-virtual {p0, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array p1, v1, [Landroid/animation/Animator;

    aput-object p4, p1, v2

    invoke-virtual {p0, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public final startMidAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    sget-object v8, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v8, 0x8

    move-object/from16 v9, p7

    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v9, p8

    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    if-eqz v4, :cond_0

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v4, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->context:Landroid/content/Context;

    const/4 v8, 0x0

    if-nez v4, :cond_1

    move-object v4, v8

    :cond_1
    const v9, 0x7f0714d0

    invoke-static {v9, v4}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenFloat(ILandroid/content/Context;)F

    move-result v4

    iget-object v9, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->context:Landroid/content/Context;

    if-nez v9, :cond_2

    move-object v9, v8

    :cond_2
    const v10, 0x7f0714d5

    invoke-static {v10, v9}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenFloat(ILandroid/content/Context;)F

    move-result v9

    iget-object v10, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->context:Landroid/content/Context;

    if-nez v10, :cond_3

    move-object v10, v8

    :cond_3
    const v11, 0x7f0714d3

    invoke-static {v11, v10}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenFloat(ILandroid/content/Context;)F

    move-result v10

    invoke-static/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isRing(I)Z

    move-result v11

    if-eqz v11, :cond_6

    iget-object v9, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->context:Landroid/content/Context;

    if-nez v9, :cond_4

    move-object v9, v8

    :cond_4
    const v10, 0x7f07150b

    invoke-static {v10, v9}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenFloat(ILandroid/content/Context;)F

    move-result v9

    iget-object v10, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->context:Landroid/content/Context;

    if-nez v10, :cond_5

    goto :goto_0

    :cond_5
    move-object v8, v10

    :goto_0
    const v10, 0x7f071509    # 1.79555E38f

    invoke-static {v10, v8}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenFloat(ILandroid/content/Context;)F

    move-result v10

    :cond_6
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getAlpha()F

    move-result v8

    new-array v11, v5, [F

    aput v8, v11, v7

    const/high16 v8, 0x3f000000    # 0.5f

    aput v8, v11, v6

    const-string v8, "alpha"

    invoke-static {v2, v8, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getAlpha()F

    move-result v12

    new-array v13, v5, [F

    aput v12, v13, v7

    const v12, 0x3dcccccd    # 0.1f

    aput v12, v13, v6

    invoke-static {v3, v8, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    new-instance v12, Landroid/animation/AnimatorSet;

    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v13, v6, [Landroid/animation/Animator;

    aput-object v11, v13, v7

    invoke-virtual {v12, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v11, v6, [Landroid/animation/Animator;

    aput-object v8, v11, v7

    invoke-virtual {v12, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v13, 0x64

    invoke-virtual {v12, v13, v14}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v8, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v8}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v12, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getX()F

    move-result v8

    new-array v11, v5, [F

    aput v8, v11, v7

    aput v4, v11, v6

    const-string/jumbo v4, "x"

    invoke-static {v1, v4, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getX()F

    move-result v8

    new-array v11, v5, [F

    aput v8, v11, v7

    aput v9, v11, v6

    invoke-static {v2, v4, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getX()F

    move-result v8

    new-array v5, v5, [F

    aput v8, v5, v7

    aput v10, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v5, v6, [Landroid/animation/Animator;

    aput-object v1, v5, v7

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v1, v6, [Landroid/animation/Animator;

    aput-object v2, v1, v7

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v1, v6, [Landroid/animation/Animator;

    aput-object v3, v1, v7

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {v4, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e6147ae    # 0.22f

    const/high16 v3, 0x3e800000    # 0.25f

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v5, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v2, v6, [Landroid/animation/Animator;

    aput-object v4, v2, v7

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v2, v6, [Landroid/animation/Animator;

    aput-object v12, v2, v7

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v2, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion$startMidAnimation$2$1;

    move/from16 v3, p1

    move/from16 v4, p2

    invoke-direct {v2, p0, v3, v4}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion$startMidAnimation$2$1;-><init>(Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;II)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public final startMinAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

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
    iget-object p6, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->context:Landroid/content/Context;

    const/4 p7, 0x0

    if-nez p6, :cond_1

    move-object p6, p7

    :cond_1
    const p8, 0x7f0714d1

    invoke-static {p8, p6}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenFloat(ILandroid/content/Context;)F

    move-result p6

    invoke-static {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isRing(I)Z

    move-result p8

    const/4 v3, 0x0

    if-eqz p8, :cond_3

    iget-object p6, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->context:Landroid/content/Context;

    if-nez p6, :cond_2

    move-object p6, p7

    :cond_2
    const p8, 0x7f071507

    invoke-static {p8, p6}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenFloat(ILandroid/content/Context;)F

    move-result p6

    const p8, 0x3e99999a    # 0.3f

    goto :goto_0

    :cond_3
    move p8, v3

    :goto_0
    invoke-virtual {p4}, Landroid/view/View;->getAlpha()F

    move-result v4

    new-array v5, v0, [F

    aput v4, v5, v2

    aput p8, v5, v1

    const-string p8, "alpha"

    invoke-static {p4, p8, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {p5}, Landroid/view/View;->getAlpha()F

    move-result v5

    new-array v6, v0, [F

    aput v5, v6, v2

    aput v3, v6, v1

    invoke-static {p5, p8, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p5

    new-instance p8, Landroid/animation/AnimatorSet;

    invoke-direct {p8}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v5, v1, [Landroid/animation/Animator;

    aput-object v4, v5, v2

    invoke-virtual {p8, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v4, v1, [Landroid/animation/Animator;

    aput-object p5, v4, v2

    invoke-virtual {p8, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v4, 0x64

    invoke-virtual {p8, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance p5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p8, p5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p3}, Landroid/view/View;->getX()F

    move-result p5

    new-array v4, v0, [F

    aput p5, v4, v2

    aput p6, v4, v1

    const-string/jumbo p5, "x"

    invoke-static {p3, p5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    new-instance p6, Landroid/animation/AnimatorSet;

    invoke-direct {p6}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v4, v1, [Landroid/animation/Animator;

    aput-object p3, v4, v2

    invoke-virtual {p6, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-static {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isRing(I)Z

    move-result p3

    if-eqz p3, :cond_5

    iget-object p3, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->context:Landroid/content/Context;

    if-nez p3, :cond_4

    goto :goto_1

    :cond_4
    move-object p7, p3

    :goto_1
    const p3, 0x7f07150c

    invoke-static {p3, p7}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenFloat(ILandroid/content/Context;)F

    move-result p3

    invoke-virtual {p4}, Landroid/view/View;->getX()F

    move-result p7

    new-array v0, v0, [F

    aput p7, v0, v2

    aput p3, v0, v1

    invoke-static {p4, p5, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    new-array p4, v1, [Landroid/animation/Animator;

    aput-object p3, p4, v2

    invoke-virtual {p6, p4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_5
    const-wide/16 p3, 0xc8

    invoke-virtual {p6, p3, p4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance p3, Landroid/view/animation/PathInterpolator;

    const/high16 p4, 0x3f800000    # 1.0f

    const p5, 0x3e6147ae    # 0.22f

    const/high16 p7, 0x3e800000    # 0.25f

    invoke-direct {p3, p5, p7, v3, p4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p6, p3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p3, Landroid/animation/AnimatorSet;

    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    new-array p4, v1, [Landroid/animation/Animator;

    aput-object p8, p4, v2

    invoke-virtual {p3, p4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array p4, v1, [Landroid/animation/Animator;

    aput-object p6, p4, v2

    invoke-virtual {p3, p4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance p4, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion$startMinAnimation$2$1;

    invoke-direct {p4, p0, p1, p2}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion$startMinAnimation$2$1;-><init>(Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;II)V

    invoke-virtual {p3, p4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p3}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public final startMuteAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

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
    invoke-static {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isRing(I)Z

    move-result p1

    const/4 p5, 0x0

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->context:Landroid/content/Context;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move-object p5, p0

    :goto_0
    const p0, 0x7f071507

    invoke-static {p0, p5}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenFloat(ILandroid/content/Context;)F

    move-result p0

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->context:Landroid/content/Context;

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    move-object p5, p0

    :goto_1
    const p0, 0x7f0714d1

    invoke-static {p0, p5}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenFloat(ILandroid/content/Context;)F

    move-result p0

    :goto_2
    invoke-virtual {p3}, Landroid/view/View;->getAlpha()F

    move-result p1

    const/4 p5, 0x0

    new-array p6, v0, [F

    aput p1, p6, v2

    aput p5, p6, v1

    const-string p1, "alpha"

    invoke-static {p3, p1, p6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-virtual {p4}, Landroid/view/View;->getAlpha()F

    move-result p6

    new-array v3, v0, [F

    aput p6, v3, v2

    aput p5, v3, v1

    invoke-static {p4, p1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-instance p4, Landroid/animation/AnimatorSet;

    invoke-direct {p4}, Landroid/animation/AnimatorSet;-><init>()V

    new-array p6, v1, [Landroid/animation/Animator;

    aput-object p3, p6, v2

    invoke-virtual {p4, p6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

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

    new-array p3, v0, [F

    aput p1, p3, v2

    aput p0, p3, v1

    const-string/jumbo p0, "x"

    invoke-static {p2, p0, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 p1, 0xc8

    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/high16 p2, 0x3f800000    # 1.0f

    const p3, 0x3e6147ae    # 0.22f

    const/high16 p6, 0x3e800000    # 0.25f

    invoke-direct {p1, p3, p6, p5, p2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    new-array p2, v1, [Landroid/animation/Animator;

    aput-object p4, p2, v2

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array p2, v1, [Landroid/animation/Animator;

    aput-object p0, p2, v2

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    invoke-static {p7}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->startSplashAnimation(Landroid/view/View;)V

    return-void
.end method

.method public final startSoundVibrationAnimation(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v3, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v3, 0x4

    invoke-virtual {p5, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p6, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p3, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p4, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p5, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->context:Landroid/content/Context;

    if-nez p5, :cond_0

    const/4 p5, 0x0

    :cond_0
    const p6, 0x7f071507

    invoke-static {p6, p5}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenFloat(ILandroid/content/Context;)F

    move-result p5

    invoke-virtual {p3}, Landroid/view/View;->getAlpha()F

    move-result p6

    const/4 v3, 0x0

    new-array v4, v0, [F

    aput p6, v4, v2

    aput v3, v4, v1

    const-string p6, "alpha"

    invoke-static {p3, p6, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-virtual {p4}, Landroid/view/View;->getAlpha()F

    move-result v4

    new-array v5, v0, [F

    aput v4, v5, v2

    aput v3, v5, v1

    invoke-static {p4, p6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p4

    new-instance p6, Landroid/animation/AnimatorSet;

    invoke-direct {p6}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v4, v1, [Landroid/animation/Animator;

    aput-object p3, v4, v2

    invoke-virtual {p6, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array p3, v1, [Landroid/animation/Animator;

    aput-object p4, p3, v2

    invoke-virtual {p6, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 p3, 0x32

    invoke-virtual {p6, p3, p4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance p3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p6, p3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result p3

    new-array p4, v0, [F

    aput p3, p4, v2

    aput p5, p4, v1

    const-string/jumbo p3, "x"

    invoke-static {p2, p3, p4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-wide/16 p3, 0xc8

    invoke-virtual {p2, p3, p4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance p3, Landroid/view/animation/PathInterpolator;

    const/high16 p4, 0x3f800000    # 1.0f

    const p5, 0x3e6147ae    # 0.22f

    const/high16 v0, 0x3e800000    # 0.25f

    invoke-direct {p3, p5, v0, v3, p4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

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

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->startVibrationAnimation(Landroid/view/View;)V

    return-void
.end method

.method public final startVibrationAnimation(Landroid/view/View;)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->context:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    const v2, 0x7f07150e

    invoke-static {v2, v0}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenFloat(ILandroid/content/Context;)F

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->context:Landroid/content/Context;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    const p0, 0x7f07150f

    invoke-static {p0, v1}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenFloat(ILandroid/content/Context;)F

    move-result p0

    neg-float v1, v0

    const/4 v2, 0x0

    const/16 v3, 0x3c

    invoke-static {p1, v2, v1, v3}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->getVibrationAnimator(Landroid/view/View;FFI)Landroid/animation/Animator;

    move-result-object v3

    sub-float v4, v0, p0

    const/16 v5, 0x50

    invoke-static {p1, v1, v4, v5}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->getVibrationAnimator(Landroid/view/View;FFI)Landroid/animation/Animator;

    move-result-object v1

    const/4 v5, 0x2

    int-to-float v6, v5

    mul-float/2addr p0, v6

    sub-float/2addr v0, p0

    neg-float p0, v0

    const/16 v0, 0x64

    invoke-static {p1, v4, p0, v0}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->getVibrationAnimator(Landroid/view/View;FFI)Landroid/animation/Animator;

    move-result-object v0

    const/16 v4, 0x78

    invoke-static {p1, p0, v2, v4}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->getVibrationAnimator(Landroid/view/View;FFI)Landroid/animation/Animator;

    move-result-object p0

    const/4 p1, 0x4

    new-array p1, p1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object v3, p1, v2

    const/4 v2, 0x1

    aput-object v1, p1, v2

    aput-object v0, p1, v5

    const/4 v0, 0x3

    aput-object p0, p1, v0

    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
