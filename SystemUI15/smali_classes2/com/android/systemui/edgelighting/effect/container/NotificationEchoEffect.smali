.class public final Lcom/android/systemui/edgelighting/effect/container/NotificationEchoEffect;
.super Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mEchoEffectView:Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEchoEffect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-class p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEchoEffect;

    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 3

    invoke-super {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->dismiss()V

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mHandler:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$4;

    const/4 v0, 0x3

    const-wide/16 v1, 0x2bc

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final dismissToastPopup()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEchoEffect;->mEchoEffectView:Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    :cond_0
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEchoEffect;->mEchoEffectView:Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public final init()V
    .locals 11

    invoke-super {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->init()V

    new-instance v0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEchoEffect;->mEchoEffectView:Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEchoEffect;->mEchoEffectView:Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;

    iget v2, p0, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;->mScreenWidth:I

    iget v3, p0, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;->mScreenHeight:I

    iput v2, v0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mScreenWidth:I

    iput v3, v0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mScreenHeight:I

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEchoEffect;->mEchoEffectView:Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;

    invoke-virtual {p0, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEchoEffect;->mEchoEffectView:Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setZ(F)V

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEchoEffect;->mEchoEffectView:Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;

    :goto_0
    const/4 v0, 0x3

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mLeftLine:Ljava/util/ArrayList;

    new-instance v2, Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v3, -0x100

    invoke-static {v3}, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->makeGradientBg(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mScreenWidth:I

    int-to-float v4, v4

    const/high16 v5, 0x40800000    # 4.0f

    mul-float/2addr v4, v5

    const/high16 v6, 0x44870000    # 1080.0f

    div-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v7, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mScreenHeight:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->LINE_HEIGHT:[F

    aget v8, v8, v1

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-direct {v3, v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget v4, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mScreenWidth:I

    int-to-float v4, v4

    mul-int/lit8 v7, v1, 0xa

    add-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    mul-float/2addr v4, v7

    div-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    const/16 v4, 0xf

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mRightLine:Ljava/util/ArrayList;

    new-instance v2, Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x7f08077f

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget v9, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mScreenWidth:I

    int-to-float v9, v9

    mul-float/2addr v9, v5

    div-float/2addr v9, v6

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget v9, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mScreenHeight:I

    int-to-float v9, v9

    iget-object v10, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->LINE_HEIGHT:[F

    aget v10, v10, v1

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-direct {v3, v5, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget v5, p0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mScreenWidth:I

    int-to-float v5, v5

    mul-float/2addr v5, v7

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    const/16 v5, 0x15

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v2, v8}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final onFlickUpAnimation()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->onFlickUpAnimation()V

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEchoEffect;->mEchoEffectView:Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    :cond_0
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEchoEffect;->mEchoEffectView:Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public final requestHideEffectView()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEchoEffect;->mEchoEffectView:Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public final setEdgeEffectInfo(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->setEdgeEffectInfo(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;)V

    iget p1, p1, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mStrokeAlpha:F

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEchoEffect;->mEchoEffectView:Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public final setEffectColors([I)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->setEffectColors([I)V

    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEchoEffect;->mEchoEffectView:Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mConvertColor:I

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    iget-object v1, p1, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mRightLine:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {p0}, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->makeGradientBg(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p1, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mLeftLine:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {p0}, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->makeGradientBg(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final show()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEchoEffect;->mEchoEffectView:Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    :cond_0
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEchoEffect;->mEchoEffectView:Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsShowMorphView:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEchoEffect;->mEchoEffectView:Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEchoEffect;->mEchoEffectView:Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->startAnimation()V

    :cond_2
    invoke-super {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->show()V

    return-void
.end method

.method public final startToastPopupAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEchoEffect;->mEchoEffectView:Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEchoEffect;->mEchoEffectView:Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->startAnimation()V

    :cond_0
    return-void
.end method

.method public final update()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEchoEffect;->mEchoEffectView:Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEchoEffect;->mEchoEffectView:Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/view/EchoEffectView;->startAnimation()V

    :cond_0
    return-void
.end method
