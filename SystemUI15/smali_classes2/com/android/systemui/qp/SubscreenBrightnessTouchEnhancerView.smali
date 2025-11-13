.class public Lcom/android/systemui/qp/SubscreenBrightnessTouchEnhancerView;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mBrightnessDetailContainerView:Landroid/widget/ImageView;

.field public final mContext:Landroid/content/Context;

.field public mSlider:Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;

.field public mTouchDownDetailView:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qp/SubscreenBrightnessTouchEnhancerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessTouchEnhancerView;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessTouchEnhancerView;->mBrightnessDetailContainerView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    invoke-virtual {p0, v0, v3, v4}, Lcom/android/systemui/qp/SubscreenBrightnessTouchEnhancerView;->isTouched(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessTouchEnhancerView;->mTouchDownDetailView:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessTouchEnhancerView;->mSlider:Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;

    iput-boolean v1, v0, Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;->mIsDragging:Z

    iget-boolean v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessTouchEnhancerView;->mTouchDownDetailView:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessTouchEnhancerView;->mBrightnessDetailContainerView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessTouchEnhancerView;->mBrightnessDetailContainerView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessTouchEnhancerView;->mSlider:Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;

    iget-boolean v2, p0, Lcom/android/systemui/qp/SubscreenBrightnessTouchEnhancerView;->mTouchDownDetailView:Z

    xor-int/2addr v1, v2

    iput-boolean v1, v0, Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;->mIsDetailViewTouched:Z

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessTouchEnhancerView;->mSlider:Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;

    iget-boolean v0, v0, Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;->mIsDragging:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessTouchEnhancerView;->mTouchDownDetailView:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessTouchEnhancerView;->mBrightnessDetailContainerView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    invoke-virtual {p0, v0, v3, v4}, Lcom/android/systemui/qp/SubscreenBrightnessTouchEnhancerView;->isTouched(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessTouchEnhancerView;->mBrightnessDetailContainerView:Landroid/widget/ImageView;

    if-eqz p1, :cond_4

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessTouchEnhancerView;->mBrightnessDetailContainerView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessTouchEnhancerView;->mBrightnessDetailContainerView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->performClick()Z

    :cond_4
    iput-boolean v2, p0, Lcom/android/systemui/qp/SubscreenBrightnessTouchEnhancerView;->mTouchDownDetailView:Z

    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBrightnessTouchEnhancerView;->mSlider:Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;

    iput-boolean v2, p0, Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;->mIsDetailViewTouched:Z

    iput-boolean v2, p0, Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;->mIsDragging:Z

    return v1

    :cond_5
    iput-boolean v2, p0, Lcom/android/systemui/qp/SubscreenBrightnessTouchEnhancerView;->mTouchDownDetailView:Z

    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessTouchEnhancerView;->mSlider:Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;

    iput-boolean v2, v0, Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;->mIsDetailViewTouched:Z

    iput-boolean v2, v0, Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;->mIsDragging:Z

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessTouchEnhancerView;->mSlider:Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/systemui/qp/SubscreenBrightnessTouchEnhancerView;->isTouched(Landroid/view/View;FF)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessTouchEnhancerView;->mBrightnessDetailContainerView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/systemui/qp/SubscreenBrightnessTouchEnhancerView;->isTouched(Landroid/view/View;FF)Z

    move-result v0

    if-nez v0, :cond_7

    return v1

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessTouchEnhancerView;->mBrightnessDetailContainerView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/systemui/qp/SubscreenBrightnessTouchEnhancerView;->isTouched(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_8

    iput-boolean v1, p0, Lcom/android/systemui/qp/SubscreenBrightnessTouchEnhancerView;->mTouchDownDetailView:Z

    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessTouchEnhancerView;->mSlider:Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;

    iput-boolean v1, v0, Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;->mIsDetailViewTouched:Z

    :cond_8
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final isTouched(Landroid/view/View;FF)Z
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBrightnessTouchEnhancerView;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView$$ExternalSyntheticOutline0;->m(Landroid/content/Context;)I

    move-result p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p0, v2, :cond_1

    aget p0, v0, v1

    int-to-float v3, p0

    cmpg-float v3, p2, v3

    if-gez v3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr p0, v3

    int-to-float p0, p0

    cmpl-float p0, p2, p0

    if-lez p0, :cond_0

    aget p0, v0, v2

    int-to-float p2, p0

    cmpg-float p2, p3, p2

    if-gez p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    sub-int/2addr p0, p1

    int-to-float p0, p0

    cmpl-float p0, p3, p0

    if-lez p0, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    aget p0, v0, v1

    int-to-float v3, p0

    cmpl-float v3, p2, v3

    if-lez v3, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, p0

    int-to-float p0, v3

    cmpg-float p0, p2, p0

    if-gez p0, :cond_2

    aget p0, v0, v2

    int-to-float p2, p0

    cmpl-float p2, p3, p2

    if-lez p2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p1, p0

    int-to-float p0, p1

    cmpg-float p0, p3, p0

    if-gez p0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public final onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a0c55

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;

    iput-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessTouchEnhancerView;->mSlider:Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;

    const v0, 0x7f0a01d2

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessTouchEnhancerView;->mBrightnessDetailContainerView:Landroid/widget/ImageView;

    return-void
.end method
