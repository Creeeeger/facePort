.class public Lcom/android/systemui/power/UnintentionalLcdOnView;
.super Landroid/widget/LinearLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mCenterXOnScreen:F

.field public mCenterYOnScreen:F

.field public mCircleImage:Landroid/widget/ImageView;

.field public final mContext:Landroid/content/Context;

.field public final mCubicEaseIn:Lcom/samsung/android/graphics/spr/animation/interpolator/CubicEaseIn;

.field public mDCircleAnimator:Landroid/animation/ValueAnimator;

.field public final mDCircleEndListener:Lcom/android/systemui/power/UnintentionalLcdOnView$2;

.field public mDCircleRadius:F

.field public mDragDistanceY:F

.field public mIsCoverState:Z

.field public mIsLockerSelected:Z

.field public mLockerImage:Landroid/widget/ImageView;

.field public mLockerRing:Landroid/widget/ImageView;

.field public final mPaintColor:Landroid/graphics/Paint;

.field public final mPreviewClipRect:Landroid/graphics/RectF;

.field public final mRoundRectPath:Landroid/graphics/Path;

.field public final mSineInOut33:Landroid/view/animation/PathInterpolator;

.field public mStartY:F

.field public mTouchListener:Lcom/android/systemui/power/SecPowerNotificationWarnings;

.field public mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public static -$$Nest$monLockerActionMove(Lcom/android/systemui/power/UnintentionalLcdOnView;Landroid/view/MotionEvent;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mIsLockerSelected:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mStartY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mDragDistanceY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mCenterXOnScreen:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mCenterXOnScreen:F

    iget-object v2, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerRing:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mDragDistanceY:F

    iget-object v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerRing:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    iget-object v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mCircleImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/power/UnintentionalLcdOnView;->setPreviewClipRect()V

    new-array p1, v0, [Landroid/view/View;

    iget-object p1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-ne p1, v1, :cond_2

    new-array p1, v0, [Landroid/view/View;

    iget-object p1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerImage:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/power/UnintentionalLcdOnView;->setPreviewClipRect()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/power/UnintentionalLcdOnView;->onLockerActionUp(Landroid/view/MotionEvent;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/power/UnintentionalLcdOnView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/power/UnintentionalLcdOnView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mCircleImage:Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerImage:Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerRing:Landroid/widget/ImageView;

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mDragDistanceY:F

    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mPreviewClipRect:Landroid/graphics/RectF;

    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mRoundRectPath:Landroid/graphics/Path;

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mIsLockerSelected:Z

    new-instance v0, Lcom/android/systemui/power/UnintentionalLcdOnView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/UnintentionalLcdOnView$2;-><init>(Lcom/android/systemui/power/UnintentionalLcdOnView;)V

    iput-object v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mDCircleEndListener:Lcom/android/systemui/power/UnintentionalLcdOnView$2;

    iput-object p1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3ea8f5c3    # 0.33f

    const v3, 0x3f2b851f    # 0.67f

    invoke-direct {v0, v2, p2, v3, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mSineInOut33:Landroid/view/animation/PathInterpolator;

    new-instance p2, Lcom/samsung/android/graphics/spr/animation/interpolator/CubicEaseIn;

    invoke-direct {p2}, Lcom/samsung/android/graphics/spr/animation/interpolator/CubicEaseIn;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mCubicEaseIn:Lcom/samsung/android/graphics/spr/animation/interpolator/CubicEaseIn;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mPaintColor:Landroid/graphics/Paint;

    const v0, 0x7f060032

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method public final animateWhiteCircle(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mCircleImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const-wide/16 v0, 0xfa

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mCircleImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const v2, 0x3eb33333    # 0.35f

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/power/UnintentionalLcdOnView$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/UnintentionalLcdOnView$4;-><init>(Lcom/android/systemui/power/UnintentionalLcdOnView;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mCircleImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/power/UnintentionalLcdOnView$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/UnintentionalLcdOnView$5;-><init>(Lcom/android/systemui/power/UnintentionalLcdOnView;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :goto_0
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    iget v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mDCircleRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/high16 v2, 0x40000000    # 2.0f

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mRoundRectPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mCenterXOnScreen:F

    iget-object v1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerRing:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    add-float/2addr v1, v0

    iget v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mCenterYOnScreen:F

    iget-object v2, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerRing:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget v2, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mDCircleRadius:F

    iget-object v3, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mPaintColor:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mIsLockerSelected:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mDragDistanceY:F

    iget-object v3, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerRing:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v0, v3

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mDragDistanceY:F

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mRoundRectPath:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget v1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mCenterXOnScreen:F

    iget-object v3, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerRing:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    add-float/2addr v3, v1

    iget v1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mCenterYOnScreen:F

    iget-object v2, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerRing:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mPaintColor:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v1, v0, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a0656

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerImage:Landroid/widget/ImageView;

    const v0, 0x7f0a0654

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mCircleImage:Landroid/widget/ImageView;

    const v0, 0x7f0a0655

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerRing:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerImage:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/systemui/power/UnintentionalLcdOnView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/power/UnintentionalLcdOnView$1;-><init>(Lcom/android/systemui/power/UnintentionalLcdOnView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    iget-object p2, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerRing:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    const/4 p2, 0x0

    aget p2, p1, p2

    int-to-float p2, p2

    iput p2, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mCenterXOnScreen:F

    const/4 p2, 0x1

    aget p1, p1, p2

    int-to-float p1, p1

    iput p1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mCenterYOnScreen:F

    return-void
.end method

.method public final onLockerActionUp(Landroid/view/MotionEvent;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onLockerActionUp - mIsLockerSelected  = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mIsLockerSelected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mDragDistanceY = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mDragDistanceY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " mLockerImage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerRing:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mCircleImage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mCircleImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerUI.UnintentionalLcdOnView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mIsLockerSelected:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mDragDistanceY:F

    iget-object v2, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerRing:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget-object v2, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mCircleImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/power/UnintentionalLcdOnView;->animateWhiteCircle(Z)V

    iget-object v3, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mDCircleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/animation/Animator;->cancel()V

    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/systemui/power/UnintentionalLcdOnView;->setDCircleAnimator(Z)V

    iget-object v3, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mDCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mDragDistanceY:F

    iput-boolean v2, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mIsLockerSelected:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v3, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mCenterXOnScreen:F

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mCenterXOnScreen:F

    iget-object v3, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerRing:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v0, v3

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_3

    const-string p1, "drag distance > WhiteCircleRadius"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mTouchListener:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->dismissUnintentionalLcdOnWindow()V

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.samsung.intent.action.KSO_CLICK_OK"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    :cond_3
    const-string/jumbo p1, "showDescription of unintentional locker"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerImage:Landroid/widget/ImageView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object p0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final setCoverState(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mIsCoverState:Z

    const p1, 0x7f0a0dd6

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mIsCoverState:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f1313e9

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f1313ec    # 1.9549996E38f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f1313e6

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setDCircleAnimator(Z)V
    .locals 3

    if-nez p1, :cond_0

    iget v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mDragDistanceY:F

    iput v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mDCircleRadius:F

    :cond_0
    iget v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mDCircleRadius:F

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x0

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mDCircleAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mSineInOut33:Landroid/view/animation/PathInterpolator;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mCubicEaseIn:Lcom/samsung/android/graphics/spr/animation/interpolator/CubicEaseIn;

    :goto_0
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p1, Lcom/android/systemui/power/UnintentionalLcdOnView$3;

    invoke-direct {p1, p0}, Lcom/android/systemui/power/UnintentionalLcdOnView$3;-><init>(Lcom/android/systemui/power/UnintentionalLcdOnView;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mDCircleEndListener:Lcom/android/systemui/power/UnintentionalLcdOnView$2;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public final setPreviewClipRect()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mPreviewClipRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mCenterXOnScreen:F

    iget v2, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mCenterYOnScreen:F

    iget-object v3, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerRing:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mCircleImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mCenterXOnScreen:F

    iget-object v4, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerRing:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mCenterYOnScreen:F

    iget-object v5, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerRing:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mRoundRectPath:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mPreviewClipRect:Landroid/graphics/RectF;

    const/high16 v1, 0x447a0000    # 1000.0f

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, p0, v1, v1, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    return-void
.end method
