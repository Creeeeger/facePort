.class public final Lcom/android/systemui/statusbar/phone/ongoingactivity/animation/VisibilityTransition;
.super Landroid/transition/Visibility;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/animation/VisibilityTransition$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/animation/VisibilityTransition$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/transition/Visibility;-><init>()V

    return-void
.end method

.method public static final access$endAction(Lcom/android/systemui/statusbar/phone/ongoingactivity/animation/VisibilityTransition;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "VisibilityTransition"

    const-string v0, "endAction()"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public static getStartScaleValue(Landroid/transition/TransitionValues;Ljava/lang/String;F)F
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    instance-of p1, p0, Ljava/lang/Float;

    if-eqz p1, :cond_1

    move-object v0, p0

    check-cast v0, Ljava/lang/Float;

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p2

    :cond_2
    return p2
.end method


# virtual methods
.method public final captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/transition/Visibility;->captureStartValues(Landroid/transition/TransitionValues;)V

    iget-object p0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "com.samsung.transition:scale:scaleX"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScaleY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "com.samsung.transition:scale:scaleY"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object p1, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTransitionAlpha()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "com.samsung.transition:scale:alpha"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final createScaleAnimation(ZLandroid/view/View;FFFFFF)Landroid/animation/Animator;
    .locals 14

    move-object v0, p0

    move-object/from16 v1, p2

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3f2e147b    # 0.68f

    const v4, 0x3ea8f5c3    # 0.33f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v4, v5, v3, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v5, v4, [F

    const/4 v6, 0x0

    aput p3, v5, v6

    const/4 v7, 0x1

    aput p5, v5, v7

    invoke-static {v1, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v8, 0xc8

    const-wide/16 v10, 0x1f4

    if-eqz p1, :cond_0

    move-wide v12, v10

    goto :goto_0

    :cond_0
    move-wide v12, v8

    :goto_0
    invoke-virtual {v3, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v12, v4, [F

    aput p4, v12, v6

    aput p6, v12, v7

    invoke-static {v1, v5, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p1, :cond_1

    move-wide v12, v10

    goto :goto_1

    :cond_1
    move-wide v12, v8

    :goto_1
    invoke-virtual {v5, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v12, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v13, v4, [F

    aput p7, v13, v6

    aput p8, v13, v7

    invoke-static {v1, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    invoke-virtual {v12, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p1, :cond_2

    move-wide v8, v10

    :cond_2
    invoke-virtual {v12, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v8, 0x3

    new-array v8, v8, [Landroid/animation/Animator;

    aput-object v12, v8, v6

    aput-object v3, v8, v7

    aput-object v5, v8, v4

    invoke-virtual {v2, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    if-eqz v1, :cond_3

    new-instance v3, Lcom/android/systemui/statusbar/phone/ongoingactivity/animation/VisibilityTransition$getAnimatorListener$1;

    invoke-direct {v3, p0, v1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/animation/VisibilityTransition$getAnimatorListener$1;-><init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/animation/VisibilityTransition;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v3, Lcom/android/systemui/statusbar/phone/ongoingactivity/animation/VisibilityTransition$getTransitionListener$1;

    invoke-direct {v3, p0, v1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/animation/VisibilityTransition$getTransitionListener$1;-><init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/animation/VisibilityTransition;Landroid/view/View;)V

    invoke-virtual {p0, v3}, Landroid/transition/Visibility;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    :cond_3
    return-object v2
.end method

.method public final onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 15

    move-object/from16 v0, p3

    const-string v1, "VisibilityTransition"

    const-string v2, "onAppear"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.samsung.transition:scale:scaleX"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/ongoingactivity/animation/VisibilityTransition;->getStartScaleValue(Landroid/transition/TransitionValues;Ljava/lang/String;F)F

    move-result v1

    const-string v3, "com.samsung.transition:scale:scaleY"

    invoke-static {v0, v3, v2}, Lcom/android/systemui/statusbar/phone/ongoingactivity/animation/VisibilityTransition;->getStartScaleValue(Landroid/transition/TransitionValues;Ljava/lang/String;F)F

    move-result v3

    const-string v4, "com.samsung.transition:scale:alpha"

    invoke-static {v0, v4, v2}, Lcom/android/systemui/statusbar/phone/ongoingactivity/animation/VisibilityTransition;->getStartScaleValue(Landroid/transition/TransitionValues;Ljava/lang/String;F)F

    move-result v0

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v5, v1, v4

    if-nez v5, :cond_0

    move v9, v2

    goto :goto_0

    :cond_0
    move v9, v1

    :goto_0
    cmpg-float v1, v3, v4

    if-nez v1, :cond_1

    move v10, v2

    goto :goto_1

    :cond_1
    move v10, v3

    :goto_1
    cmpg-float v1, v0, v4

    if-nez v1, :cond_2

    move v13, v2

    goto :goto_2

    :cond_2
    move v13, v0

    :goto_2
    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/high16 v14, 0x3f800000    # 1.0f

    move-object v6, p0

    move-object/from16 v8, p2

    invoke-virtual/range {v6 .. v14}, Lcom/android/systemui/statusbar/phone/ongoingactivity/animation/VisibilityTransition;->createScaleAnimation(ZLandroid/view/View;FFFFFF)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public final onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 9

    const-string p1, "com.samsung.transition:scale:scaleX"

    const/high16 p4, 0x3f800000    # 1.0f

    invoke-static {p3, p1, p4}, Lcom/android/systemui/statusbar/phone/ongoingactivity/animation/VisibilityTransition;->getStartScaleValue(Landroid/transition/TransitionValues;Ljava/lang/String;F)F

    move-result v3

    const-string p1, "com.samsung.transition:scale:scaleY"

    invoke-static {p3, p1, p4}, Lcom/android/systemui/statusbar/phone/ongoingactivity/animation/VisibilityTransition;->getStartScaleValue(Landroid/transition/TransitionValues;Ljava/lang/String;F)F

    move-result v4

    const-string p1, "com.samsung.transition:scale:alpha"

    invoke-static {p3, p1, p4}, Lcom/android/systemui/statusbar/phone/ongoingactivity/animation/VisibilityTransition;->getStartScaleValue(Landroid/transition/TransitionValues;Ljava/lang/String;F)F

    move-result v7

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p2

    invoke-virtual/range {v0 .. v8}, Lcom/android/systemui/statusbar/phone/ongoingactivity/animation/VisibilityTransition;->createScaleAnimation(ZLandroid/view/View;FFFFFF)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method
