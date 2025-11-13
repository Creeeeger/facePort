.class public final Lcom/android/systemui/statusbar/notification/PropertyAnimator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;)V
    .locals 0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->getAnimatorTag()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public static setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->getAnimatorTag()I

    move-result v0

    sget-object v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->NO_NEW_ANIMATIONS:Lcom/android/systemui/statusbar/notification/stack/ViewState$1;

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->getProperty()Landroid/util/Property;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    :goto_0
    if-eqz p4, :cond_2

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    :goto_1
    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->startAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    :goto_2
    return-void
.end method

.method public static startAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->getProperty()Landroid/util/Property;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->getAnimationStartTag()I

    move-result v4

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->getAnimationEndTag()I

    move-result v5

    sget-object v6, Lcom/android/systemui/statusbar/notification/stack/ViewState;->NO_NEW_ANIMATIONS:Lcom/android/systemui/statusbar/notification/stack/ViewState$1;

    invoke-virtual {p0, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {p0, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v8

    cmpl-float v8, v8, p2

    if-nez v8, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->getAnimatorTag()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/animation/ValueAnimator;

    const/4 v9, 0x0

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v10

    goto :goto_0

    :cond_1
    move-object v10, v9

    :goto_0
    if-eqz v10, :cond_b

    invoke-virtual {v10, v3}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->shouldAnimateProperty(Landroid/util/Property;)Z

    move-result v10

    if-nez v10, :cond_2

    goto/16 :goto_2

    :cond_2
    invoke-virtual {v3, p0}, Landroid/util/Property;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {p3, v3}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getAnimationFinishListener(Landroid/util/Property;)Landroid/animation/AnimatorListenerAdapter;

    move-result-object v7

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_3
    if-eqz v7, :cond_4

    invoke-virtual {v7, v9}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_4
    return-void

    :cond_5
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v10

    new-array v1, v1, [F

    aput v10, v1, v2

    aput p2, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/notification/PropertyAnimator$$ExternalSyntheticLambda0;

    invoke-direct {v1, v3, p0}, Lcom/android/systemui/statusbar/notification/PropertyAnimator$$ExternalSyntheticLambda0;-><init>(Landroid/util/Property;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p3, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->mInterpolatorMap:Landroid/util/ArrayMap;

    if-eqz v1, :cond_6

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/view/animation/Interpolator;

    :cond_6
    if-eqz v9, :cond_7

    goto :goto_1

    :cond_7
    sget-object v9, Lcom/android/app/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    :goto_1
    invoke-virtual {v0, v9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-wide v1, p3, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    invoke-static {v1, v2, v8}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-wide v1, p3, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-lez v1, :cond_9

    if-eqz v8, :cond_8

    invoke-virtual {v8}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_9

    :cond_8
    iget-wide v1, p3, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    :cond_9
    new-instance p3, Lcom/android/systemui/statusbar/notification/PropertyAnimator$1;

    invoke-direct {p3, p0, p1, v4, v5}, Lcom/android/systemui/statusbar/notification/PropertyAnimator$1;-><init>(Landroid/view/View;III)V

    invoke-virtual {v0, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz v7, :cond_a

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_a
    invoke-static {v0, v7}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p0, v4, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v5, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void

    :cond_b
    :goto_2
    if-eqz v8, :cond_c

    invoke-virtual {v8}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result p3

    sub-float p3, p2, p3

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v3, p3

    aget-object p1, p1, v2

    new-array p3, v1, [F

    aput v3, p3, v2

    aput p2, p3, v0

    invoke-virtual {p1, p3}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v4, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v5, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v8}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide p0

    invoke-virtual {v8, p0, p1}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    return-void

    :cond_c
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v3, p0, p1}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
