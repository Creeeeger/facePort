.class public final Lcom/android/systemui/screenshot/ui/TransitioningIconDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public alpha:I

.field public colorFilter:Landroid/graphics/ColorFilter;

.field public drawable:Landroid/graphics/drawable/Drawable;

.field public enteringDrawable:Landroid/graphics/drawable/Drawable;

.field public tint:Landroid/content/res/ColorStateList;

.field public final transitionAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/16 v0, 0xff

    iput v0, p0, Lcom/android/systemui/screenshot/ui/TransitioningIconDrawable;->alpha:I

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Lcom/android/systemui/screenshot/ui/TransitioningIconDrawable$transitionAnimator$lambda$1$$inlined$doOnEnd$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/screenshot/ui/TransitioningIconDrawable$transitionAnimator$lambda$1$$inlined$doOnEnd$1;-><init>(Lcom/android/systemui/screenshot/ui/TransitioningIconDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v0, p0, Lcom/android/systemui/screenshot/ui/TransitioningIconDrawable;->transitionAnimator:Landroid/animation/ValueAnimator;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/screenshot/ui/TransitioningIconDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/screenshot/ui/TransitioningIconDrawable;->transitionAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/screenshot/ui/TransitioningIconDrawable;->transitionAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    sub-float/2addr v2, v1

    :cond_0
    invoke-virtual {p0, v0, p1, v2}, Lcom/android/systemui/screenshot/ui/TransitioningIconDrawable;->drawScaledDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;F)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/screenshot/ui/TransitioningIconDrawable;->enteringDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/screenshot/ui/TransitioningIconDrawable;->transitionAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/systemui/screenshot/ui/TransitioningIconDrawable;->drawScaledDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;F)V

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/screenshot/ui/TransitioningIconDrawable;->transitionAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_3
    return-void
.end method

.method public final drawScaledDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;F)V
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p2, p3, p3, p0, v0}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public final getOpacity()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/screenshot/ui/TransitioningIconDrawable;->alpha:I

    return p0
.end method

.method public final setAlpha(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/screenshot/ui/TransitioningIconDrawable;->alpha:I

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/screenshot/ui/TransitioningIconDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    iget-object v0, p0, Lcom/android/systemui/screenshot/ui/TransitioningIconDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/screenshot/ui/TransitioningIconDrawable;->enteringDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_1
    return-void
.end method

.method public final setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/ui/TransitioningIconDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/ui/TransitioningIconDrawable;->enteringDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    iput-object p1, p0, Lcom/android/systemui/screenshot/ui/TransitioningIconDrawable;->tint:Landroid/content/res/ColorStateList;

    return-void
.end method
