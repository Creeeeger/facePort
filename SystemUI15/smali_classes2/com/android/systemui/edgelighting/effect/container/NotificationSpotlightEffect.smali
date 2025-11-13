.class public final Lcom/android/systemui/edgelighting/effect/container/NotificationSpotlightEffect;
.super Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mSpotlightEffect:Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/systemui/edgelighting/effect/container/NotificationSpotlightEffect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-class p0, Lcom/android/systemui/edgelighting/effect/container/NotificationSpotlightEffect;

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
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationSpotlightEffect;->mSpotlightEffect:Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;->stopAnimation()V

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationSpotlightEffect;->mSpotlightEffect:Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final finishToastPopupAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationSpotlightEffect;->mSpotlightEffect:Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationSpotlightEffect;->mSpotlightEffect:Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationSpotlightEffect;->mSpotlightEffect:Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;

    const/16 v0, 0xa8b

    iput v0, p0, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;->mCurrWidth:I

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;->startAnimation()V

    :cond_2
    return-void
.end method

.method public final init()V
    .locals 3

    invoke-super {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->init()V

    new-instance v0, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationSpotlightEffect;->mSpotlightEffect:Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationSpotlightEffect;->mSpotlightEffect:Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;

    new-instance v1, Lcom/android/systemui/edgelighting/effect/container/NotificationSpotlightEffect$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationSpotlightEffect$1;-><init>(Lcom/android/systemui/edgelighting/effect/container/NotificationSpotlightEffect;)V

    iput-object v1, v0, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;->mAnimListener:Lcom/android/systemui/edgelighting/effect/container/NotificationSpotlightEffect$1;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0x9d9

    const/16 v2, 0xa8b

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget v1, p0, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;->mScreenWidth:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    const/16 v1, -0x778

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationSpotlightEffect;->mSpotlightEffect:Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;

    invoke-virtual {p0, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationSpotlightEffect;->mSpotlightEffect:Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setZ(F)V

    return-void
.end method

.method public final onFlickUpAnimation()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->onFlickUpAnimation()V

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationSpotlightEffect;->mSpotlightEffect:Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;->stopAnimation()V

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationSpotlightEffect;->mSpotlightEffect:Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final requestHideEffectView()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationSpotlightEffect;->mSpotlightEffect:Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final setEdgeEffectInfo(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->setEdgeEffectInfo(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;)V

    iget p1, p1, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mStrokeAlpha:F

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationSpotlightEffect;->mSpotlightEffect:Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public final setEffectColors([I)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->setEffectColors([I)V

    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationSpotlightEffect;->mSpotlightEffect:Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mConvertColor:I

    iget-object v0, p1, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;->mSpotlightDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p1, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;->mSpotlightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public final show()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationSpotlightEffect;->mSpotlightEffect:Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;->stopAnimation()V

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationSpotlightEffect;->mSpotlightEffect:Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsShowMorphView:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationSpotlightEffect;->mSpotlightEffect:Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationSpotlightEffect;->mSpotlightEffect:Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;

    const/16 v1, 0xa8b

    iput v1, v0, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;->mCurrWidth:I

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;->startAnimation()V

    :cond_0
    invoke-super {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->show()V

    return-void
.end method

.method public final update()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationSpotlightEffect;->mSpotlightEffect:Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationSpotlightEffect;->mSpotlightEffect:Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;

    const/16 v0, 0xa8b

    iput v0, p0, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;->mCurrWidth:I

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;->startAnimation()V

    :cond_0
    return-void
.end method

.method public final updateEffectLocation()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationSpotlightEffect;->mSpotlightEffect:Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;->stopAnimation()V

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationSpotlightEffect;->mSpotlightEffect:Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;->startAnimation()V

    :cond_0
    return-void
.end method
