.class public final Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;
.super Lcom/android/systemui/statusbar/notification/TransformState;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final sInstancePool:Landroid/util/Pools$SimplePool;


# instance fields
.field public final mGroupMap:Ljava/util/HashMap;

.field public mMessagingLayout:Lcom/android/internal/widget/IMessagingLayout;

.field public mRelativeTranslationOffset:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/util/Pools$SimplePool;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    sput-object v0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->sInstancePool:Landroid/util/Pools$SimplePool;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/TransformState;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mGroupMap:Ljava/util/HashMap;

    return-void
.end method

.method public static filterHiddenGroups(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p0, v1, :cond_1

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/MessagingGroup;

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->isGone(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 p0, p0, -0x1

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static isGone(Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-nez v1, :cond_3

    return v0

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    instance-of v1, p0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    if-eqz v1, :cond_4

    check-cast p0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    iget-boolean p0, p0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->hide:Z

    if-eqz p0, :cond_4

    return v0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final appear(FLandroid/view/View;)V
    .locals 2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformInfo:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-static {p2, p0}, Lcom/android/systemui/statusbar/notification/TransformState;->createFrom(Landroid/view/View;Lcom/android/systemui/statusbar/ViewTransformationHelper;)Lcom/android/systemui/statusbar/notification/TransformState;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/TransformState;->appear(FLcom/android/systemui/statusbar/TransformableView;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final disappear(FLandroid/view/View;)V
    .locals 2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformInfo:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-static {p2, p0}, Lcom/android/systemui/statusbar/notification/TransformState;->createFrom(Landroid/view/View;Lcom/android/systemui/statusbar/ViewTransformationHelper;)Lcom/android/systemui/statusbar/notification/TransformState;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/TransformState;->disappear(FLcom/android/systemui/statusbar/TransformableView;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final initFrom(Landroid/view/View;Lcom/android/systemui/statusbar/ViewTransformationHelper;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/TransformState;->initFrom(Landroid/view/View;Lcom/android/systemui/statusbar/ViewTransformationHelper;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    instance-of v0, p2, Lcom/android/internal/widget/MessagingLinearLayout;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {p2}, Lcom/android/internal/widget/MessagingLinearLayout;->getMessagingLayout()Lcom/android/internal/widget/IMessagingLayout;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mMessagingLayout:Lcom/android/internal/widget/IMessagingLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x41000000    # 8.0f

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mRelativeTranslationOffset:F

    :cond_0
    return-void
.end method

.method public final prepareFadeIn()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->resetTransformedView()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->setVisible(ZZ)V

    return-void
.end method

.method public final recycle()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->sInstancePool:Landroid/util/Pools$SimplePool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    return-void
.end method

.method public final reset()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->reset()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mMessagingLayout:Lcom/android/internal/widget/IMessagingLayout;

    return-void
.end method

.method public final resetTransformedView()V
    .locals 8

    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->resetTransformedView()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mMessagingLayout:Lcom/android/internal/widget/IMessagingLayout;

    invoke-interface {v0}, Lcom/android/internal/widget/IMessagingLayout;->getMessagingGroups()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/MessagingGroup;

    invoke-static {v3}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->isGone(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getMessageContainer()Lcom/android/internal/widget/MessagingLinearLayout;

    move-result-object v4

    move v5, v1

    :goto_1
    invoke-virtual {v4}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_1

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->isGone(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_2

    :cond_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformInfo:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-static {v6, v7}, Lcom/android/systemui/statusbar/notification/TransformState;->createFrom(Landroid/view/View;Lcom/android/systemui/statusbar/ViewTransformationHelper;)Lcom/android/systemui/statusbar/notification/TransformState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/TransformState;->resetTransformedView()V

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    invoke-static {v6, v1}, Lcom/android/systemui/statusbar/notification/TransformState;->setClippingDeactivated(Landroid/view/View;Z)V

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getAvatar()Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformInfo:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/notification/TransformState;->createFrom(Landroid/view/View;Lcom/android/systemui/statusbar/ViewTransformationHelper;)Lcom/android/systemui/statusbar/notification/TransformState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/TransformState;->resetTransformedView()V

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getSenderView()Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformInfo:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/notification/TransformState;->createFrom(Landroid/view/View;Lcom/android/systemui/statusbar/ViewTransformationHelper;)Lcom/android/systemui/statusbar/notification/TransformState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/TransformState;->resetTransformedView()V

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getIsolatedMessage()Lcom/android/internal/widget/MessagingImageMessage;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformInfo:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/notification/TransformState;->createFrom(Landroid/view/View;Lcom/android/systemui/statusbar/ViewTransformationHelper;)Lcom/android/systemui/statusbar/notification/TransformState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/TransformState;->resetTransformedView()V

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    :cond_2
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getAvatar()Landroid/view/View;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/android/systemui/statusbar/notification/TransformState;->setClippingDeactivated(Landroid/view/View;Z)V

    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getSenderView()Landroid/widget/TextView;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/android/systemui/statusbar/notification/TransformState;->setClippingDeactivated(Landroid/view/View;Z)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/MessagingGroup;->setTranslationY(F)V

    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getMessageContainer()Lcom/android/internal/widget/MessagingLinearLayout;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/internal/widget/MessagingLinearLayout;->setTranslationY(F)V

    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getSenderView()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTranslationY(F)V

    :cond_3
    invoke-virtual {v3, v1}, Lcom/android/internal/widget/MessagingGroup;->setClippingDisabled(Z)V

    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->updateClipRect()V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mMessagingLayout:Lcom/android/internal/widget/IMessagingLayout;

    invoke-interface {p0, v1}, Lcom/android/internal/widget/IMessagingLayout;->setMessagingClippingDisabled(Z)V

    return-void
.end method

.method public final setVisible(Landroid/view/View;ZZ)V
    .locals 1

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->isGone(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/android/internal/widget/MessagingPropertyAnimator;->isAnimatingAlpha(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformInfo:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/notification/TransformState;->createFrom(Landroid/view/View;Lcom/android/systemui/statusbar/ViewTransformationHelper;)Lcom/android/systemui/statusbar/notification/TransformState;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/statusbar/notification/TransformState;->setVisible(ZZ)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setVisible(ZZ)V
    .locals 7

    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/TransformState;->setVisible(ZZ)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->resetTransformedView()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mMessagingLayout:Lcom/android/internal/widget/IMessagingLayout;

    invoke-interface {v0}, Lcom/android/internal/widget/IMessagingLayout;->getMessagingGroups()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/MessagingGroup;

    invoke-static {v3}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->isGone(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getMessageContainer()Lcom/android/internal/widget/MessagingLinearLayout;

    move-result-object v4

    move v5, v1

    :goto_1
    invoke-virtual {v4}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_0

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0, v6, p1, p2}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->setVisible(Landroid/view/View;ZZ)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getAvatar()Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4, p1, p2}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->setVisible(Landroid/view/View;ZZ)V

    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getSenderView()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {p0, v4, p1, p2}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->setVisible(Landroid/view/View;ZZ)V

    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getIsolatedMessage()Lcom/android/internal/widget/MessagingImageMessage;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v3, p1, p2}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->setVisible(Landroid/view/View;ZZ)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final transformView(FZLandroid/view/View;Landroid/view/View;ZZ)I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformInfo:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-static {p3, v0}, Lcom/android/systemui/statusbar/notification/TransformState;->createFrom(Landroid/view/View;Lcom/android/systemui/statusbar/ViewTransformationHelper;)Lcom/android/systemui/statusbar/notification/TransformState;

    move-result-object v0

    if-eqz p6, :cond_0

    sget-object p6, Lcom/android/app/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    iput-object p6, v0, Lcom/android/systemui/statusbar/notification/TransformState;->mDefaultInterpolator:Landroid/view/animation/Interpolator;

    :cond_0
    const/4 p6, 0x0

    const/4 v1, 0x1

    if-eqz p5, :cond_1

    invoke-static {p4}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->isGone(Landroid/view/View;)Z

    move-result p5

    if-nez p5, :cond_1

    move p5, v1

    goto :goto_0

    :cond_1
    move p5, p6

    :goto_0
    iput-boolean p5, v0, Lcom/android/systemui/statusbar/notification/TransformState;->mSameAsAny:Z

    const/16 p5, 0x10

    const/4 v2, 0x0

    if-eqz p2, :cond_5

    if-eqz p4, :cond_4

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformInfo:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-static {p4, p0}, Lcom/android/systemui/statusbar/notification/TransformState;->createFrom(Landroid/view/View;Lcom/android/systemui/statusbar/ViewTransformationHelper;)Lcom/android/systemui/statusbar/notification/TransformState;

    move-result-object p0

    invoke-static {p4}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->isGone(Landroid/view/View;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewTo(Lcom/android/systemui/statusbar/notification/TransformState;F)Z

    goto :goto_1

    :cond_2
    invoke-static {p3}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->isGone(Landroid/view/View;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {v0, p1, v2}, Lcom/android/systemui/statusbar/notification/TransformState;->disappear(FLcom/android/systemui/statusbar/TransformableView;)V

    :cond_3
    invoke-virtual {v0, p0, p5, v2, p1}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewTo(Lcom/android/systemui/statusbar/notification/TransformState;ILcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V

    :goto_1
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/TransformState;->getLaidOutLocationOnScreen()[I

    move-result-object p1

    aget p1, p1, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getLaidOutLocationOnScreen()[I

    move-result-object p2

    aget p2, p2, v1

    sub-int p6, p1, p2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    goto :goto_3

    :cond_4
    invoke-virtual {v0, p1, v2}, Lcom/android/systemui/statusbar/notification/TransformState;->disappear(FLcom/android/systemui/statusbar/TransformableView;)V

    goto :goto_3

    :cond_5
    if-eqz p4, :cond_8

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformInfo:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-static {p4, p0}, Lcom/android/systemui/statusbar/notification/TransformState;->createFrom(Landroid/view/View;Lcom/android/systemui/statusbar/ViewTransformationHelper;)Lcom/android/systemui/statusbar/notification/TransformState;

    move-result-object p0

    invoke-static {p4}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->isGone(Landroid/view/View;)Z

    move-result p2

    if-nez p2, :cond_6

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewFrom(Lcom/android/systemui/statusbar/notification/TransformState;F)V

    goto :goto_2

    :cond_6
    invoke-static {p3}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->isGone(Landroid/view/View;)Z

    move-result p2

    if-nez p2, :cond_7

    invoke-virtual {v0, p1, v2}, Lcom/android/systemui/statusbar/notification/TransformState;->appear(FLcom/android/systemui/statusbar/TransformableView;)V

    :cond_7
    invoke-virtual {v0, p0, p5, v2, p1}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewFrom(Lcom/android/systemui/statusbar/notification/TransformState;ILcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V

    :goto_2
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/TransformState;->getLaidOutLocationOnScreen()[I

    move-result-object p1

    aget p1, p1, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getLaidOutLocationOnScreen()[I

    move-result-object p2

    aget p2, p2, v1

    sub-int p6, p1, p2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    goto :goto_3

    :cond_8
    invoke-virtual {v0, p1, v2}, Lcom/android/systemui/statusbar/notification/TransformState;->appear(FLcom/android/systemui/statusbar/TransformableView;)V

    :goto_3
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    return p6
.end method

.method public final transformViewFrom(Lcom/android/systemui/statusbar/notification/TransformState;F)V
    .locals 1

    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->transformViewInternal(Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;FZ)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewFrom(Lcom/android/systemui/statusbar/notification/TransformState;F)V

    :goto_0
    return-void
.end method

.method public final transformViewInternal(Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;FZ)V
    .locals 30

    move-object/from16 v7, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->ensureVisible()V

    iget-object v0, v7, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mMessagingLayout:Lcom/android/internal/widget/IMessagingLayout;

    invoke-interface {v0}, Lcom/android/internal/widget/IMessagingLayout;->getMessagingGroups()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->filterHiddenGroups(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v8

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mMessagingLayout:Lcom/android/internal/widget/IMessagingLayout;

    invoke-interface {v0}, Lcom/android/internal/widget/IMessagingLayout;->getMessagingGroups()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->filterHiddenGroups(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, v7, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v9, 0x1

    sub-int/2addr v1, v9

    const v2, 0x7fffffff

    :goto_0
    const/4 v10, 0x0

    if-ltz v1, :cond_3

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/MessagingGroup;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int/2addr v4, v9

    const/4 v11, 0x0

    :goto_1
    if-ltz v4, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/MessagingGroup;

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/MessagingGroup;->calculateGroupCompatibility(Lcom/android/internal/widget/MessagingGroup;)I

    move-result v6

    if-le v6, v10, :cond_0

    move v2, v4

    move-object v11, v5

    move v10, v6

    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_1
    if-eqz v11, :cond_2

    iget-object v4, v7, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    iget-object v12, v7, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v9

    const/4 v13, 0x0

    move v14, v0

    move/from16 v16, v13

    const/4 v15, 0x0

    :goto_2
    if-ltz v14, :cond_25

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/internal/widget/MessagingGroup;

    invoke-virtual {v12, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/internal/widget/MessagingGroup;

    invoke-static {v6}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->isGone(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_24

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v17, :cond_19

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/widget/MessagingGroup;->getIsolatedMessage()Lcom/android/internal/widget/MessagingImageMessage;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, v7, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformInfo:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    iget-object v0, v0, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mViewTransformationAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    move/from16 v18, v9

    goto :goto_4

    :cond_5
    :goto_3
    move/from16 v18, v10

    :goto_4
    invoke-virtual {v6}, Lcom/android/internal/widget/MessagingGroup;->getSenderView()Landroid/widget/TextView;

    move-result-object v19

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/widget/MessagingGroup;->getSenderView()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v0

    if-lez v0, :cond_6

    move v0, v9

    goto :goto_5

    :cond_6
    move v0, v10

    :goto_5
    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    sub-int/2addr v2, v9

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v1

    if-lez v1, :cond_7

    move v1, v9

    goto :goto_6

    :cond_7
    move v1, v10

    :goto_6
    if-eq v0, v1, :cond_8

    move v0, v9

    goto :goto_7

    :cond_8
    move v0, v10

    :goto_7
    xor-int/lit8 v20, v0, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, v19

    move v11, v5

    move/from16 v5, v20

    move-object/from16 v20, v6

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->transformView(FZLandroid/view/View;Landroid/view/View;ZZ)I

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/MessagingGroup;->getAvatar()Landroid/view/View;

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/widget/MessagingGroup;->getAvatar()Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->transformView(FZLandroid/view/View;Landroid/view/View;ZZ)I

    move-result v6

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/MessagingGroup;->getMessages()Ljava/util/List;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/widget/MessagingGroup;->getMessages()Ljava/util/List;

    move-result-object v4

    move/from16 v22, v9

    move v3, v10

    move/from16 v21, v13

    :goto_8
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_16

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v9

    sub-int/2addr v0, v3

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/MessagingMessage;

    invoke-interface {v0}, Lcom/android/internal/widget/MessagingMessage;->getView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->isGone(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_9

    move/from16 v27, v3

    move-object/from16 v28, v4

    move-object/from16 v29, v5

    move v11, v6

    move-object/from16 v3, v20

    goto/16 :goto_f

    :cond_9
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v9

    sub-int/2addr v0, v3

    if-ltz v0, :cond_a

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/MessagingMessage;

    invoke-interface {v0}, Lcom/android/internal/widget/MessagingMessage;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->isGone(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_a
    const/4 v1, 0x0

    goto :goto_9

    :cond_b
    move-object v1, v0

    :goto_9
    if-nez v1, :cond_d

    cmpg-float v0, v21, v13

    if-gez v0, :cond_d

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v23

    add-int v0, v23, v0

    int-to-float v0, v0

    add-float v0, v0, v21

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v0, v9

    invoke-static {v11, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v13, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    if-eqz p3, :cond_c

    sub-float v0, v11, v0

    :cond_c
    move v9, v0

    goto :goto_a

    :cond_d
    move/from16 v9, p2

    :goto_a
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v25, v1

    move v1, v9

    move-object/from16 v26, v2

    move/from16 v2, p3

    move/from16 v27, v3

    move-object/from16 v3, v26

    move-object/from16 v28, v4

    move-object/from16 v4, v25

    move-object/from16 v29, v5

    move/from16 v5, v24

    move v11, v6

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->transformView(FZLandroid/view/View;Landroid/view/View;ZZ)I

    move-result v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/widget/MessagingGroup;->getIsolatedMessage()Lcom/android/internal/widget/MessagingImageMessage;

    move-result-object v1

    move-object/from16 v2, v25

    if-ne v1, v2, :cond_e

    const/4 v1, 0x1

    goto :goto_b

    :cond_e
    move v1, v10

    :goto_b
    cmpl-float v3, v9, v13

    if-nez v3, :cond_10

    if-nez v1, :cond_f

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/widget/MessagingGroup;->isSingleLine()Z

    move-result v3

    if-eqz v3, :cond_10

    :cond_f
    move-object/from16 v3, v20

    goto :goto_c

    :cond_10
    move-object/from16 v3, v20

    goto :goto_d

    :goto_c
    invoke-virtual {v3, v10}, Lcom/android/internal/widget/MessagingGroup;->setClippingDisabled(Z)V

    iget-object v4, v7, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mMessagingLayout:Lcom/android/internal/widget/IMessagingLayout;

    invoke-interface {v4, v10}, Lcom/android/internal/widget/IMessagingLayout;->setMessagingClippingDisabled(Z)V

    :goto_d
    if-nez v2, :cond_12

    if-eqz v22, :cond_11

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getTranslationY()F

    move-result v21

    :cond_11
    move/from16 v0, v21

    move-object/from16 v4, v26

    invoke-virtual {v4, v0}, Landroid/view/View;->setTranslationY(F)V

    const/4 v1, 0x1

    invoke-static {v4, v1}, Lcom/android/systemui/statusbar/notification/TransformState;->setClippingDeactivated(Landroid/view/View;Z)V

    move/from16 v21, v0

    goto :goto_e

    :cond_12
    move-object/from16 v4, v26

    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getIsolatedMessage()Lcom/android/internal/widget/MessagingImageMessage;

    move-result-object v5

    if-eq v5, v4, :cond_15

    if-eqz v1, :cond_13

    goto :goto_e

    :cond_13
    if-eqz p3, :cond_14

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v1

    int-to-float v0, v0

    sub-float v21, v1, v0

    goto :goto_e

    :cond_14
    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v21

    :cond_15
    :goto_e
    move/from16 v22, v10

    :goto_f
    add-int/lit8 v0, v27, 0x1

    move-object/from16 v20, v3

    move v6, v11

    move-object/from16 v4, v28

    move-object/from16 v5, v29

    const/4 v9, 0x1

    const/high16 v11, 0x3f800000    # 1.0f

    move v3, v0

    goto/16 :goto_8

    :cond_16
    move v11, v6

    move-object/from16 v3, v20

    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->updateClipRect()V

    if-nez v15, :cond_18

    if-eqz p3, :cond_17

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/widget/MessagingGroup;->getAvatar()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    int-to-float v1, v11

    sub-float v16, v0, v1

    :goto_10
    move-object v15, v3

    goto :goto_11

    :cond_17
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getAvatar()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v16

    goto :goto_10

    :cond_18
    :goto_11
    const/4 v1, 0x1

    goto/16 :goto_1a

    :cond_19
    move-object v3, v6

    if-eqz v15, :cond_1d

    if-eqz p3, :cond_1a

    iget v0, v7, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mRelativeTranslationOffset:F

    mul-float v0, v0, p2

    goto :goto_12

    :cond_1a
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v5, v0, p2

    iget v0, v7, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mRelativeTranslationOffset:F

    mul-float/2addr v0, v5

    :goto_12
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getSenderView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    const/high16 v4, 0x3f000000    # 0.5f

    if-eq v1, v2, :cond_1b

    mul-float/2addr v0, v4

    :cond_1b
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getMessageContainer()Lcom/android/internal/widget/MessagingLinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/MessagingLinearLayout;->setTranslationY(F)V

    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getSenderView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTranslationY(F)V

    const v0, 0x3f666666    # 0.9f

    mul-float v0, v0, v16

    invoke-virtual {v3, v0}, Lcom/android/internal/widget/MessagingGroup;->setTranslationY(F)V

    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getTop()I

    move-result v0

    int-to-float v0, v0

    add-float v0, v0, v16

    iget-object v1, v7, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformInfo:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    iget-object v1, v1, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mViewTransformationAnimation:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    :goto_13
    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_14

    :cond_1c
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    mul-float/2addr v1, v4

    sub-float/2addr v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    goto :goto_13

    :goto_14
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v13, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    if-eqz p3, :cond_1e

    sub-float v0, v1, v0

    goto :goto_15

    :cond_1d
    move/from16 v0, p2

    :cond_1e
    :goto_15
    if-eqz p3, :cond_21

    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getMessageContainer()Lcom/android/internal/widget/MessagingLinearLayout;

    move-result-object v1

    move v2, v10

    :goto_16
    invoke-virtual {v1}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_20

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->isGone(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_1f

    goto :goto_17

    :cond_1f
    invoke-virtual {v7, v0, v4}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->disappear(FLandroid/view/View;)V

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/notification/TransformState;->setClippingDeactivated(Landroid/view/View;Z)V

    :goto_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_20
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getAvatar()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->disappear(FLandroid/view/View;)V

    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getSenderView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->disappear(FLandroid/view/View;)V

    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getIsolatedMessage()Lcom/android/internal/widget/MessagingImageMessage;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->disappear(FLandroid/view/View;)V

    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getSenderView()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/TransformState;->setClippingDeactivated(Landroid/view/View;Z)V

    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getAvatar()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/TransformState;->setClippingDeactivated(Landroid/view/View;Z)V

    goto/16 :goto_11

    :cond_21
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getMessageContainer()Lcom/android/internal/widget/MessagingLinearLayout;

    move-result-object v1

    move v2, v10

    :goto_18
    invoke-virtual {v1}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_23

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->isGone(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_22

    goto :goto_19

    :cond_22
    invoke-virtual {v7, v0, v4}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->appear(FLandroid/view/View;)V

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/notification/TransformState;->setClippingDeactivated(Landroid/view/View;Z)V

    :goto_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_23
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getAvatar()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->appear(FLandroid/view/View;)V

    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getSenderView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->appear(FLandroid/view/View;)V

    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getIsolatedMessage()Lcom/android/internal/widget/MessagingImageMessage;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->appear(FLandroid/view/View;)V

    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getSenderView()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/TransformState;->setClippingDeactivated(Landroid/view/View;Z)V

    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getAvatar()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/TransformState;->setClippingDeactivated(Landroid/view/View;Z)V

    goto :goto_1a

    :cond_24
    move v1, v9

    :goto_1a
    add-int/lit8 v14, v14, -0x1

    move v9, v1

    goto/16 :goto_2

    :cond_25
    return-void
.end method

.method public final transformViewTo(Lcom/android/systemui/statusbar/notification/TransformState;F)Z
    .locals 1

    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->transformViewInternal(Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;FZ)V

    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewTo(Lcom/android/systemui/statusbar/notification/TransformState;F)Z

    move-result p0

    return p0
.end method
