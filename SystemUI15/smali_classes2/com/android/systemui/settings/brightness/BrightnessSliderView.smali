.class public Lcom/android/systemui/settings/brightness/BrightnessSliderView;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mListener:Lcom/android/systemui/settings/brightness/BrightnessSliderController$$ExternalSyntheticLambda0;

.field public mOnInterceptListener:Lcom/android/systemui/Gefingerpoken;

.field public mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field public mScale:F

.field public final mSecBrightnessSliderView:Lcom/android/systemui/settings/brightness/SecBrightnessSliderView;

.field public mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

.field public final mSystemGestureExclusionRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mScale:F

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSystemGestureExclusionRect:Landroid/graphics/Rect;

    new-instance p1, Lcom/android/systemui/settings/brightness/SecBrightnessSliderView;

    new-instance p2, Lcom/android/systemui/settings/brightness/BrightnessSliderView$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/systemui/settings/brightness/BrightnessSliderView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/settings/brightness/BrightnessSliderView;)V

    invoke-direct {p1, p2}, Lcom/android/systemui/settings/brightness/SecBrightnessSliderView;-><init>(Ljava/util/function/Supplier;)V

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSecBrightnessSliderView:Lcom/android/systemui/settings/brightness/SecBrightnessSliderView;

    return-void
.end method


# virtual methods
.method public final applySliderScale()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v3, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mListener:Lcom/android/systemui/settings/brightness/BrightnessSliderController$$ExternalSyntheticLambda0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/systemui/settings/brightness/BrightnessSliderController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mirrorTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public getSliderScaleY()F
    .locals 0

    iget p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mScale:F

    return p0
.end method

.method public final onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a0b7c

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/settings/brightness/ToggleSeekBar;->mAccessibilityLabel:Ljava/lang/String;

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    const v1, 0x102000d

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/DrawableWrapper;

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    const v1, 0x7f0a0b7e

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mProgressDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSecBrightnessSliderView:Lcom/android/systemui/settings/brightness/SecBrightnessSliderView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/settings/brightness/SecBrightnessSliderView;->updateSliderResources()V

    :cond_0
    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mOnInterceptListener:Lcom/android/systemui/Gefingerpoken;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/systemui/Gefingerpoken;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final onLayout(ZIIII)V
    .locals 2

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->applySliderScale()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070bb9

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSystemGestureExclusionRect:Landroid/graphics/Rect;

    neg-int v1, p1

    sub-int/2addr p4, p2

    add-int/2addr p4, p1

    sub-int/2addr p5, p3

    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSystemGestureExclusionRect:Landroid/graphics/Rect;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setSystemGestureExclusionRects(Ljava/util/List;)V

    return-void
.end method

.method public final requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    iget-object p0, p0, Landroid/widget/FrameLayout;->mParent:Landroid/view/ViewParent;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method public setSliderScaleY(F)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mScale:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mScale:F

    invoke-virtual {p0}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->applySliderScale()V

    :cond_0
    return-void
.end method
