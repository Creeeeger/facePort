.class public interface abstract Lcom/android/systemui/statusbar/notification/Roundable;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# virtual methods
.method public applyRoundnessAndInvalidate()V
    .locals 0

    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getRoundableState()Lcom/android/systemui/statusbar/notification/RoundableState;

    move-result-object p0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/RoundableState;->targetView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public getBottomCornerRadius()F
    .locals 1

    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getRoundableState()Lcom/android/systemui/statusbar/notification/RoundableState;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/statusbar/notification/RoundableState;->bottomRoundness:F

    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getRoundableState()Lcom/android/systemui/statusbar/notification/RoundableState;

    move-result-object p0

    iget p0, p0, Lcom/android/systemui/statusbar/notification/RoundableState;->maxRadius:F

    mul-float/2addr v0, p0

    return v0
.end method

.method public abstract getRoundableState()Lcom/android/systemui/statusbar/notification/RoundableState;
.end method

.method public getTopCornerRadius()F
    .locals 1

    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getRoundableState()Lcom/android/systemui/statusbar/notification/RoundableState;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/statusbar/notification/RoundableState;->topRoundness:F

    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getRoundableState()Lcom/android/systemui/statusbar/notification/RoundableState;

    move-result-object p0

    iget p0, p0, Lcom/android/systemui/statusbar/notification/RoundableState;->maxRadius:F

    mul-float/2addr v0, p0

    return v0
.end method

.method public hasRoundedCorner()Z
    .locals 2

    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getRoundableState()Lcom/android/systemui/statusbar/notification/RoundableState;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/statusbar/notification/RoundableState;->topRoundness:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getRoundableState()Lcom/android/systemui/statusbar/notification/RoundableState;

    move-result-object p0

    iget p0, p0, Lcom/android/systemui/statusbar/notification/RoundableState;->bottomRoundness:F

    cmpg-float p0, p0, v1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public requestBottomRoundness(FLcom/android/systemui/statusbar/notification/SourceType;Z)Z
    .locals 4

    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getRoundableState()Lcom/android/systemui/statusbar/notification/RoundableState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/RoundableState;->bottomRoundnessMap:Ljava/util/Map;

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->maxOrNull(Ljava/lang/Iterable;)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    cmpg-float v3, p1, v2

    if-nez v3, :cond_1

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->maxOrNull(Ljava/lang/Iterable;)Ljava/lang/Float;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    :cond_2
    cmpg-float p1, v1, v2

    const/4 p2, 0x0

    if-nez p1, :cond_3

    return p2

    :cond_3
    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getRoundableState()Lcom/android/systemui/statusbar/notification/RoundableState;

    move-result-object p1

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/RoundableState;->targetView:Landroid/view/View;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/RoundableState;->bottomAnimatable:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    iget p1, p1, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;->val$animatorTag:I

    invoke-virtual {v0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    move p1, v0

    goto :goto_2

    :cond_4
    move p1, p2

    :goto_2
    if-eqz p1, :cond_5

    sub-float p1, v2, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float p1, p1, v1

    if-lez p1, :cond_5

    move p1, v0

    goto :goto_3

    :cond_5
    move p1, p2

    :goto_3
    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getRoundableState()Lcom/android/systemui/statusbar/notification/RoundableState;

    move-result-object p0

    if-nez p1, :cond_6

    if-eqz p3, :cond_7

    :cond_6
    move p2, v0

    :cond_7
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/RoundableState;->targetView:Landroid/view/View;

    sget-object p3, Lcom/android/systemui/statusbar/notification/RoundableState;->DURATION:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/RoundableState;->bottomAnimatable:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    invoke-static {p1, p0, v2, p3, p2}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    return v0
.end method

.method public requestRoundness(FFLcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;)V
    .locals 1

    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getRoundableState()Lcom/android/systemui/statusbar/notification/RoundableState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/RoundableState;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    invoke-interface {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/notification/Roundable;->requestRoundness(FFLcom/android/systemui/statusbar/notification/SourceType;Z)Z

    return-void
.end method

.method public requestRoundness(FFLcom/android/systemui/statusbar/notification/SourceType;Z)Z
    .locals 0

    invoke-interface {p0, p1, p3, p4}, Lcom/android/systemui/statusbar/notification/Roundable;->requestTopRoundness(FLcom/android/systemui/statusbar/notification/SourceType;Z)Z

    move-result p1

    invoke-interface {p0, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/Roundable;->requestBottomRoundness(FLcom/android/systemui/statusbar/notification/SourceType;Z)Z

    move-result p0

    if-nez p1, :cond_1

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

.method public requestRoundnessReset(Lcom/android/systemui/statusbar/notification/SourceType;)V
    .locals 2

    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getRoundableState()Lcom/android/systemui/statusbar/notification/RoundableState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/RoundableState;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p0, v1, v1, p1, v0}, Lcom/android/systemui/statusbar/notification/Roundable;->requestRoundness(FFLcom/android/systemui/statusbar/notification/SourceType;Z)Z

    return-void
.end method

.method public requestTopRoundness(FLcom/android/systemui/statusbar/notification/SourceType;Z)Z
    .locals 4

    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getRoundableState()Lcom/android/systemui/statusbar/notification/RoundableState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/RoundableState;->topRoundnessMap:Ljava/util/Map;

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->maxOrNull(Ljava/lang/Iterable;)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    cmpg-float v3, p1, v2

    if-nez v3, :cond_1

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->maxOrNull(Ljava/lang/Iterable;)Ljava/lang/Float;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    :cond_2
    cmpg-float p1, v1, v2

    const/4 p2, 0x0

    if-nez p1, :cond_3

    return p2

    :cond_3
    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getRoundableState()Lcom/android/systemui/statusbar/notification/RoundableState;

    move-result-object p1

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/RoundableState;->targetView:Landroid/view/View;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/RoundableState;->topAnimatable:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    iget p1, p1, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;->val$animatorTag:I

    invoke-virtual {v0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    move p1, v0

    goto :goto_2

    :cond_4
    move p1, p2

    :goto_2
    if-eqz p1, :cond_5

    sub-float p1, v2, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float p1, p1, v1

    if-lez p1, :cond_5

    move p1, v0

    goto :goto_3

    :cond_5
    move p1, p2

    :goto_3
    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getRoundableState()Lcom/android/systemui/statusbar/notification/RoundableState;

    move-result-object p0

    if-nez p1, :cond_6

    if-eqz p3, :cond_7

    :cond_6
    move p2, v0

    :cond_7
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/RoundableState;->targetView:Landroid/view/View;

    sget-object p3, Lcom/android/systemui/statusbar/notification/RoundableState;->DURATION:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/RoundableState;->topAnimatable:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    invoke-static {p1, p0, v2, p3, p2}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    return v0
.end method
