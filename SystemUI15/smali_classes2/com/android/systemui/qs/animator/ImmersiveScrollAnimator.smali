.class public final Lcom/android/systemui/qs/animator/ImmersiveScrollAnimator;
.super Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public animDistance:F

.field public bigClock:Landroid/view/View;

.field public bigClockAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public final bigClockLoc:[I

.field public bigDate:Landroid/view/View;

.field public bigDateAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public final context:Landroid/content/Context;

.field public final headerController:Lcom/android/systemui/shade/ShadeHeaderController;

.field public final lastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

.field public plmn:Landroid/view/View;

.field public plmnAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public preXDiff:F

.field public preYDiff:F

.field public qqsHeight:F

.field public scrolledPosition:F

.field public smallClock:Landroid/view/View;

.field public final smallClockLoc:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/animator/ImmersiveScrollAnimator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/animator/ImmersiveScrollAnimator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/shade/ShadeHeaderController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/animator/ImmersiveScrollAnimator;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/qs/animator/ImmersiveScrollAnimator;->headerController:Lcom/android/systemui/shade/ShadeHeaderController;

    const/4 p1, 0x2

    new-array p2, p1, [I

    iput-object p2, p0, Lcom/android/systemui/qs/animator/ImmersiveScrollAnimator;->bigClockLoc:[I

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/systemui/qs/animator/ImmersiveScrollAnimator;->smallClockLoc:[I

    new-instance p1, Lcom/android/systemui/util/ConfigurationState;

    sget-object p2, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->ORIENTATION:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/systemui/util/ConfigurationState;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lcom/android/systemui/qs/animator/ImmersiveScrollAnimator;->lastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

    return-void
.end method

.method public static getRelativePosition$1(Landroid/view/View;[I)V
    .locals 3

    instance-of v0, p0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    aget v1, p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v2, v1

    aput v2, p1, v0

    const/4 v0, 0x1

    aget v1, p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    add-int/2addr v2, v1

    aput v2, p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of v0, p0, Landroid/view/View;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/view/View;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    invoke-static {p0, p1}, Lcom/android/systemui/qs/animator/ImmersiveScrollAnimator;->getRelativePosition$1(Landroid/view/View;[I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final clearAnimationState()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->isThereNoView()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ImmersiveScrollAnimator"

    const-string v1, "clearAnimators"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/animator/ImmersiveScrollAnimator;->plmn:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/animator/ImmersiveScrollAnimator;->bigClock:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/qs/animator/ImmersiveScrollAnimator;->bigDate:Landroid/view/View;

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    :goto_1
    return-void
.end method

.method public final destroyQSViews()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mQs:Lcom/android/systemui/plugins/qs/QS;

    iput-object v0, p0, Lcom/android/systemui/qs/animator/ImmersiveScrollAnimator;->bigClock:Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/qs/animator/ImmersiveScrollAnimator;->bigDate:Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/qs/animator/ImmersiveScrollAnimator;->smallClock:Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/qs/animator/ImmersiveScrollAnimator;->plmn:Landroid/view/View;

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/animator/ImmersiveScrollAnimator;->lastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/util/ConfigurationState;->needToUpdate(Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/android/systemui/qs/animator/ImmersiveScrollAnimator$onConfigurationChanged$1$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/animator/ImmersiveScrollAnimator$onConfigurationChanged$1$1;-><init>(Lcom/android/systemui/qs/animator/ImmersiveScrollAnimator;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/systemui/util/ConfigurationState;->update(Landroid/content/res/Configuration;)V

    :cond_1
    return-void
.end method

.method public final onNotificationScrolled(I)V
    .locals 2

    const-string v0, "onNotificationScrolled : "

    const-string v1, "ImmersiveScrollAnimator"

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/android/systemui/qs/animator/QsAnimatorState;->isNotificationImmersiceScrolling:Z

    iget v0, p0, Lcom/android/systemui/qs/animator/ImmersiveScrollAnimator;->animDistance:F

    int-to-float p1, p1

    iget v1, p0, Lcom/android/systemui/qs/animator/ImmersiveScrollAnimator;->qqsHeight:F

    sub-float/2addr p1, v1

    const/4 v1, 0x0

    invoke-static {v1, p1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(FF)F

    move-result p1

    invoke-static {v0, p1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtMost(FF)F

    move-result p1

    iget v0, p0, Lcom/android/systemui/qs/animator/ImmersiveScrollAnimator;->animDistance:F

    div-float/2addr p1, v0

    invoke-static {v1, p1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(FF)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtMost(FF)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/animator/ImmersiveScrollAnimator;->setPosition$1(F)V

    return-void
.end method

.method public final onPanelExpansionChanged(Lcom/android/systemui/shade/ShadeExpansionChangeEvent;)V
    .locals 1

    iget p1, p1, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;->fraction:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/ImmersiveScrollAnimator;->updateViews$1()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/ImmersiveScrollAnimator;->updateAnimators()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/ImmersiveScrollAnimator;->clearAnimationState()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onPanelTransitionStateChanged(Lcom/android/systemui/shade/PanelTransitionStateChangeEvent;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->onPanelTransitionStateChanged(Lcom/android/systemui/shade/PanelTransitionStateChangeEvent;)V

    iget-boolean v0, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mPanelSplitEnabled:Z

    iget-boolean p1, p1, Lcom/android/systemui/shade/PanelTransitionStateChangeEvent;->enabled:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const-string p1, "ImmersiveScrollAnimator"

    const-string v0, "mPanelSplitEnabled changed"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/ImmersiveScrollAnimator;->updateViews$1()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/ImmersiveScrollAnimator;->updateAnimators()V

    return-void
.end method

.method public final setPosition$1(F)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setPosition fraction = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImmersiveScrollAnimator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/animator/ImmersiveScrollAnimator;->plmnAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/animator/ImmersiveScrollAnimator;->bigClockAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/animator/ImmersiveScrollAnimator;->bigDateAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_2
    iput p1, p0, Lcom/android/systemui/qs/animator/ImmersiveScrollAnimator;->scrolledPosition:F

    return-void
.end method

.method public final setQs(Lcom/android/systemui/plugins/qs/QS;)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/ImmersiveScrollAnimator;->destroyQSViews()V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/ImmersiveScrollAnimator;->updateViews$1()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/ImmersiveScrollAnimator;->updateAnimators()V

    return-void
.end method

.method public final updateAnimators()V
    .locals 14

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->isThereNoView()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/qs/animator/ImmersiveScrollAnimator;->bigClockLoc:[I

    aput v1, v3, v1

    aput v1, v3, v0

    iget-object v4, p0, Lcom/android/systemui/qs/animator/ImmersiveScrollAnimator;->smallClockLoc:[I

    aput v1, v4, v1

    aput v1, v4, v0

    iget-object v5, p0, Lcom/android/systemui/qs/animator/ImmersiveScrollAnimator;->bigClock:Landroid/view/View;

    if-eqz v5, :cond_1

    invoke-static {v5, v3}, Lcom/android/systemui/qs/animator/ImmersiveScrollAnimator;->getRelativePosition$1(Landroid/view/View;[I)V

    :cond_1
    iget-object v5, p0, Lcom/android/systemui/qs/animator/ImmersiveScrollAnimator;->smallClock:Landroid/view/View;

    if-eqz v5, :cond_2

    invoke-static {v5, v4}, Lcom/android/systemui/qs/animator/ImmersiveScrollAnimator;->getRelativePosition$1(Landroid/view/View;[I)V

    :cond_2
    iget-object v5, p0, Lcom/android/systemui/qs/animator/ImmersiveScrollAnimator;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070205

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/systemui/qs/animator/ImmersiveScrollAnimator;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f071489

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    iget-object v5, p0, Lcom/android/systemui/qs/animator/ImmersiveScrollAnimator;->bigClock:Landroid/view/View;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    goto :goto_0

    :cond_3
    move v5, v1

    :goto_0
    int-to-float v5, v5

    mul-float v7, v5, v6

    sub-float/2addr v5, v7

    iget-object v7, p0, Lcom/android/systemui/qs/animator/ImmersiveScrollAnimator;->bigClock:Landroid/view/View;

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    goto :goto_1

    :cond_4
    move v7, v1

    :goto_1
    int-to-float v7, v7

    mul-float v8, v7, v6

    iget-object v9, p0, Lcom/android/systemui/qs/animator/ImmersiveScrollAnimator;->smallClock:Landroid/view/View;

    if-eqz v9, :cond_5

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    goto :goto_2

    :cond_5
    move v9, v1

    :goto_2
    int-to-float v9, v9

    sub-float/2addr v9, v8

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float/2addr v9, v10

    sub-float/2addr v7, v8

    sub-float/2addr v7, v9

    aget v8, v4, v1

    aget v9, v3, v1

    sub-int/2addr v8, v9

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v5, v9

    sub-float/2addr v8, v5

    aget v4, v4, v0

    aget v3, v3, v0

    sub-int/2addr v4, v3

    int-to-float v3, v4

    div-float/2addr v7, v9

    sub-float/2addr v3, v7

    iget-object v4, p0, Lcom/android/systemui/qs/animator/ImmersiveScrollAnimator;->plmn:Landroid/view/View;

    const v5, 0x3f4ccccd    # 0.8f

    const-string v7, "alpha"

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    if-eqz v4, :cond_6

    new-instance v11, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v11}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    new-array v12, v2, [F

    fill-array-data v12, :array_0

    invoke-virtual {v11, v4, v7, v12}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    iput v5, v11, Lcom/android/systemui/qs/TouchAnimator$Builder;->mEndDelay:F

    invoke-virtual {v11}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/qs/animator/ImmersiveScrollAnimator;->plmnAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    :cond_6
    iget-object v4, p0, Lcom/android/systemui/qs/animator/ImmersiveScrollAnimator;->bigClock:Landroid/view/View;

    if-eqz v4, :cond_7

    new-instance v11, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v11}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    const-string/jumbo v12, "translationY"

    new-array v13, v2, [F

    aput v9, v13, v1

    aput v3, v13, v0

    invoke-virtual {v11, v4, v12, v13}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    const-string/jumbo v12, "scaleX"

    new-array v13, v2, [F

    aput v10, v13, v1

    aput v6, v13, v0

    invoke-virtual {v11, v4, v12, v13}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    const-string/jumbo v12, "scaleY"

    new-array v13, v2, [F

    aput v10, v13, v1

    aput v6, v13, v0

    invoke-virtual {v11, v4, v12, v13}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    invoke-virtual {v11}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/animator/ImmersiveScrollAnimator;->bigClockAnimator:Lcom/android/systemui/qs/TouchAnimator;

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/qs/animator/ImmersiveScrollAnimator;->bigDate:Landroid/view/View;

    if-eqz v0, :cond_8

    new-instance v1, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    invoke-virtual {v1, v0, v7, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    iput v5, v1, Lcom/android/systemui/qs/TouchAnimator$Builder;->mEndDelay:F

    invoke-virtual {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/animator/ImmersiveScrollAnimator;->bigDateAnimator:Lcom/android/systemui/qs/TouchAnimator;

    :cond_8
    iget v0, p0, Lcom/android/systemui/qs/animator/ImmersiveScrollAnimator;->preXDiff:F

    cmpg-float v0, v0, v8

    if-nez v0, :cond_9

    iget v0, p0, Lcom/android/systemui/qs/animator/ImmersiveScrollAnimator;->preYDiff:F

    cmpg-float v0, v0, v3

    if-nez v0, :cond_9

    goto :goto_3

    :cond_9
    iput v8, p0, Lcom/android/systemui/qs/animator/ImmersiveScrollAnimator;->preXDiff:F

    iput v3, p0, Lcom/android/systemui/qs/animator/ImmersiveScrollAnimator;->preYDiff:F

    iget v0, p0, Lcom/android/systemui/qs/animator/ImmersiveScrollAnimator;->scrolledPosition:F

    cmpg-float v1, v0, v9

    if-nez v1, :cond_a

    goto :goto_3

    :cond_a
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/animator/ImmersiveScrollAnimator;->setPosition$1(F)V

    :goto_3
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final updateViews$1()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mQs:Lcom/android/systemui/plugins/qs/QS;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->getHeader()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    const v1, 0x7f0a04db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/animator/ImmersiveScrollAnimator;->bigClock:Landroid/view/View;

    const v1, 0x7f0a04dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/animator/ImmersiveScrollAnimator;->bigDate:Landroid/view/View;

    const v1, 0x7f0a0993

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/animator/ImmersiveScrollAnimator;->headerController:Lcom/android/systemui/shade/ShadeHeaderController;

    iget-object v3, v2, Lcom/android/systemui/shade/ShadeHeaderController;->header:Landroidx/constraintlayout/motion/widget/MotionLayout;

    const v4, 0x7f0a0258

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/qs/animator/ImmersiveScrollAnimator;->smallClock:Landroid/view/View;

    iget-object v2, v2, Lcom/android/systemui/shade/ShadeHeaderController;->header:Landroidx/constraintlayout/motion/widget/MotionLayout;

    const v3, 0x7f0a00dc

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/qs/animator/ImmersiveScrollAnimator;->plmn:Landroid/view/View;

    sget-object v2, Lcom/android/systemui/shade/SecPanelSplitHelper;->Companion:Lcom/android/systemui/shade/SecPanelSplitHelper$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v2, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    :goto_1
    int-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/qs/animator/ImmersiveScrollAnimator;->qqsHeight:F

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    :cond_4
    int-to-float v0, v3

    iget v1, p0, Lcom/android/systemui/qs/animator/ImmersiveScrollAnimator;->qqsHeight:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/qs/animator/ImmersiveScrollAnimator;->animDistance:F

    return-void
.end method
