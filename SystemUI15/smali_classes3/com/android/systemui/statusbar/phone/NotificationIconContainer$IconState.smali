.class public final Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
.super Lcom/android/systemui/statusbar/notification/stack/ViewState;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public clampedAppearAmount:F

.field public iconAppearAmount:F

.field public iconColor:I

.field public justAdded:Z

.field public justReplaced:Z

.field public final mCannedAnimationEndListener:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState$$ExternalSyntheticLambda0;

.field public final mView:Landroid/view/View;

.field public needsCannedAnimation:Z

.field public noAnimations:Z

.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

.field public visibleState:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;-><init>()V

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->clampedAppearAmount:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justAdded:Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconColor:I

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->mView:Landroid/view/View;

    new-instance p1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->mCannedAnimationEndListener:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState$$ExternalSyntheticLambda0;

    return-void
.end method


# virtual methods
.method public final applyToView(Landroid/view/View;)V
    .locals 14

    instance-of v0, p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    const/4 v7, 0x0

    if-eqz v0, :cond_1b

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-ne v1, v8, :cond_0

    iget v2, v0, Lcom/android/systemui/statusbar/StatusBarIconView;->mVisibleState:I

    if-eq v2, v9, :cond_1

    :cond_0
    if-ne v1, v9, :cond_2

    iget v2, v0, Lcom/android/systemui/statusbar/StatusBarIconView;->mVisibleState:I

    if-ne v2, v8, :cond_2

    :cond_1
    move v2, v9

    goto :goto_0

    :cond_2
    move v2, v7

    :goto_0
    sget-object v3, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->DOT_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$1;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget-boolean v3, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAnimationsEnabled:Z

    if-nez v3, :cond_3

    iget-object v3, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsolatedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    if-ne v0, v3, :cond_4

    :cond_3
    iget-boolean v3, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDisallowNextAnimation:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->noAnimations:Z

    if-nez v3, :cond_4

    if-nez v2, :cond_4

    move v11, v9

    goto :goto_1

    :cond_4
    move v11, v7

    :goto_1
    const/4 v12, 0x0

    if-eqz v11, :cond_15

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justAdded:Z

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justReplaced:Z

    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    iget v2, v0, Lcom/android/systemui/statusbar/StatusBarIconView;->mVisibleState:I

    if-eq v1, v2, :cond_7

    sget-object v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->DOT_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$1;

    :goto_2
    move v2, v9

    goto :goto_4

    :cond_6
    :goto_3
    invoke-super {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->applyToView(Landroid/view/View;)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justAdded:Z

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_7

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v1, v0

    move v2, v8

    move v3, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibleState(IZLcom/android/systemui/statusbar/phone/NotificationIconContainer$$ExternalSyntheticLambda0;J)V

    sget-object v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->ADD_ICON_PROPERTIES:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$4;

    goto :goto_2

    :cond_7
    move v2, v7

    move-object v1, v12

    :goto_4
    if-nez v2, :cond_9

    iget v3, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    if-ltz v3, :cond_9

    invoke-virtual {v10, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    iget v4, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    if-lt v3, v4, :cond_9

    iget v3, v0, Lcom/android/systemui/statusbar/StatusBarIconView;->mVisibleState:I

    if-ne v3, v8, :cond_8

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    if-eq v3, v8, :cond_9

    :cond_8
    sget-object v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->DOT_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$1;

    move v2, v9

    :cond_9
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->needsCannedAnimation:Z

    const-wide/16 v4, 0x64

    if-eqz v3, :cond_e

    sget-object v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->sTempProperties:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$3;

    iget-object v3, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$3;->mAnimationFilter:Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->reset()V

    sget-object v6, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->ICON_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$2;

    iget-object v13, v6, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$2;->mAnimationFilter:Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-virtual {v3, v13}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->combineFilter(Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;)V

    iput-object v12, v2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->mInterpolatorMap:Landroid/util/ArrayMap;

    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->mInterpolatorMap:Landroid/util/ArrayMap;

    if-eqz v6, :cond_a

    new-instance v13, Landroid/util/ArrayMap;

    invoke-direct {v13}, Landroid/util/ArrayMap;-><init>()V

    iput-object v13, v2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->mInterpolatorMap:Landroid/util/ArrayMap;

    iget-object v13, v2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->mInterpolatorMap:Landroid/util/ArrayMap;

    invoke-virtual {v13, v6}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    :cond_a
    iget-boolean v6, v0, Lcom/android/systemui/statusbar/StatusBarIconView;->mShowsConversation:Z

    if-eqz v6, :cond_b

    sget-object v6, Lcom/android/app/animation/Interpolators;->ICON_OVERSHOT_LESS:Landroid/view/animation/Interpolator;

    goto :goto_5

    :cond_b
    sget-object v6, Lcom/android/app/animation/Interpolators;->ICON_OVERSHOT:Landroid/view/animation/Interpolator;

    :goto_5
    sget-object v13, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-virtual {v2, v13, v6}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setCustomInterpolator(Landroid/util/Property;Landroid/view/animation/Interpolator;)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->mCannedAnimationEndListener:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState$$ExternalSyntheticLambda0;

    iput-object v6, v2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->mAnimationEndAction:Ljava/util/function/Consumer;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->combineFilter(Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;)V

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->mInterpolatorMap:Landroid/util/ArrayMap;

    if-eqz v1, :cond_d

    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->mInterpolatorMap:Landroid/util/ArrayMap;

    if-nez v3, :cond_c

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, v2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->mInterpolatorMap:Landroid/util/ArrayMap;

    :cond_c
    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->mInterpolatorMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    :cond_d
    iput-wide v4, v2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    invoke-virtual {v10, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    iput v1, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mCannedAnimationStartIndex:I

    move v2, v9

    :cond_e
    if-nez v2, :cond_10

    iget v1, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mCannedAnimationStartIndex:I

    if-ltz v1, :cond_10

    invoke-virtual {v10, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    iget v2, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mCannedAnimationStartIndex:I

    if-le v1, v2, :cond_10

    iget v1, v0, Lcom/android/systemui/statusbar/StatusBarIconView;->mVisibleState:I

    if-ne v1, v8, :cond_f

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    if-eq v1, v8, :cond_10

    :cond_f
    sget-object v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->sTempProperties:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$3;

    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$3;->mAnimationFilter:Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->reset()V

    iput-boolean v9, v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateX:Z

    iput-object v12, v1, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->mInterpolatorMap:Landroid/util/ArrayMap;

    iput-wide v4, v1, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    :cond_10
    iget-object v1, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsolatedIconForAnimation:Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v1, :cond_15

    const-wide/16 v2, 0x0

    if-ne p1, v1, :cond_13

    sget-object v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->UNISOLATION_PROPERTY:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$6;

    iget-object v6, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsolatedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v6, :cond_11

    goto :goto_6

    :cond_11
    move-wide v4, v2

    :goto_6
    iput-wide v4, v1, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    iget-object v2, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsolatedIconAnimationEndRunnable:Ljava/lang/Runnable;

    if-nez v2, :cond_12

    move-object v2, v12

    goto :goto_7

    :cond_12
    new-instance v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;)V

    :goto_7
    if-eqz v2, :cond_15

    iput-object v2, v1, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->mAnimationEndAction:Ljava/util/function/Consumer;

    iput-object v2, v1, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->mAnimationCancelAction:Ljava/util/function/Consumer;

    goto :goto_9

    :cond_13
    sget-object v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->UNISOLATION_PROPERTY_OTHERS:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$5;

    iget-object v6, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsolatedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    if-nez v6, :cond_14

    goto :goto_8

    :cond_14
    move-wide v4, v2

    :goto_8
    iput-wide v4, v1, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    :cond_15
    :goto_9
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v1, v0

    move v3, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibleState(IZLcom/android/systemui/statusbar/phone/NotificationIconContainer$$ExternalSyntheticLambda0;J)V

    iget-boolean v1, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mOverrideIconColor:Z

    if-nez v1, :cond_18

    iget-boolean v1, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsStaticLayout:Z

    if-eqz v1, :cond_16

    iget v1, v0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDrawableColor:I

    goto :goto_a

    :cond_16
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconColor:I

    :goto_a
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->needsCannedAnimation:Z

    if-eqz v2, :cond_17

    if-eqz v11, :cond_17

    goto :goto_b

    :cond_17
    move v9, v7

    :goto_b
    invoke-virtual {v0, v1, v9}, Lcom/android/systemui/statusbar/StatusBarIconView;->setIconColor(IZ)V

    goto :goto_d

    :cond_18
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ContrastColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/ContrastColorUtil;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->isGrayscale(Landroid/widget/ImageView;Lcom/android/internal/util/ContrastColorUtil;)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget v1, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mShelfIconColor:I

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->needsCannedAnimation:Z

    if-eqz v2, :cond_19

    if-eqz v11, :cond_19

    goto :goto_c

    :cond_19
    move v9, v7

    :goto_c
    invoke-virtual {v0, v1, v9}, Lcom/android/systemui/statusbar/StatusBarIconView;->setIconColor(IZ)V

    :cond_1a
    :goto_d
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->applyToView(Landroid/view/View;)V

    sget-object p1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->sTempProperties:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$3;

    iput-object v12, p1, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->mAnimationEndAction:Ljava/util/function/Consumer;

    :cond_1b
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justAdded:Z

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justReplaced:Z

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->needsCannedAnimation:Z

    return-void
.end method

.method public final initFrom(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->initFrom(Landroid/view/View;)V

    instance-of v0, p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    iget p1, p1, Lcom/android/systemui/statusbar/StatusBarIconView;->mDrawableColor:I

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconColor:I

    :cond_0
    return-void
.end method
