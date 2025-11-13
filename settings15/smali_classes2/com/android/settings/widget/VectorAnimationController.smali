.class public final Lcom/android/settings/widget/VectorAnimationController;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/widget/VideoPreference$AnimationController;


# instance fields
.field public mAnimatedVectorDrawableCompat:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

.field public mAnimationCallback:Lcom/android/settings/widget/VectorAnimationController$1;

.field public mPreviewDrawable:Landroid/graphics/drawable/Drawable;


# virtual methods
.method public final attachView(Landroid/view/TextureView;Landroid/view/View;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p2}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/VectorAnimationController;->mPreviewDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setVisibility(I)V

    invoke-virtual {p0, p2, p3}, Lcom/android/settings/widget/VectorAnimationController;->updateViewStates$1(Landroid/view/View;Landroid/view/View;)V

    new-instance p1, Lcom/android/settings/widget/VectorAnimationController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p2, p3}, Lcom/android/settings/widget/VectorAnimationController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/widget/VectorAnimationController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final getDuration()I
    .locals 0

    const/16 p0, 0x1388

    return p0
.end method

.method public final getVideoHeight()I
    .locals 0

    iget-object p0, p0, Lcom/android/settings/widget/VectorAnimationController;->mAnimatedVectorDrawableCompat:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->getIntrinsicHeight()I

    move-result p0

    return p0
.end method

.method public final getVideoWidth()I
    .locals 0

    iget-object p0, p0, Lcom/android/settings/widget/VectorAnimationController;->mAnimatedVectorDrawableCompat:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->getIntrinsicWidth()I

    move-result p0

    return p0
.end method

.method public final release()V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/widget/VectorAnimationController;->mAnimatedVectorDrawableCompat:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->stop()V

    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->clearAnimationCallbacks()V

    return-void
.end method

.method public final updateViewStates$1(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/widget/VectorAnimationController;->mAnimatedVectorDrawableCompat:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-virtual {v0}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->stop()V

    invoke-virtual {v0}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->clearAnimationCallbacks()V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/settings/widget/VectorAnimationController;->mPreviewDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->start()V

    iget-object p0, p0, Lcom/android/settings/widget/VectorAnimationController;->mAnimationCallback:Lcom/android/settings/widget/VectorAnimationController$1;

    invoke-virtual {v0, p0}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->registerAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V

    :goto_0
    return-void
.end method
