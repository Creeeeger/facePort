.class public abstract Landroid/widget/Editor$HandleView;
.super Landroid/view/View;
.source "Editor.java"

# interfaces
.implements Landroid/widget/Editor$TextViewPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "HandleView"
.end annotation


# static fields
.field private static final greylist-max-o HISTORY_SIZE:I = 0x5

.field private static final blacklist MAGNIFYING_FACTOR:F = 1.5f

.field private static final greylist-max-o TOUCH_UP_FILTER_DELAY_AFTER:I = 0x96

.field private static final greylist-max-o TOUCH_UP_FILTER_DELAY_BEFORE:I = 0x15e


# instance fields
.field private blacklist CHANGE_SIZE_EVALUATOR:Landroid/animation/TypeEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/animation/TypeEvaluator<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mContainer:Landroid/widget/PopupWindow;

.field private blacklist mContentsViewOffset:I

.field private blacklist mCurrentDragInitialTouchRawX:F

.field private blacklist mDownTime:J

.field protected greylist-max-o mDrawable:Landroid/graphics/drawable/Drawable;

.field protected greylist-max-o mDrawableLtr:Landroid/graphics/drawable/Drawable;

.field protected greylist-max-o mDrawableRtl:Landroid/graphics/drawable/Drawable;

.field protected blacklist mFirstParentY:I

.field private blacklist mHandleVelocityTracker:Landroid/view/VelocityTracker;

.field private blacklist mHideAnimator:Landroid/animation/ObjectAnimator;

.field protected greylist-max-o mHorizontalGravity:I

.field protected blacklist mHorizontalOffset:F

.field protected greylist-max-o mHotspotX:I

.field private final blacklist mIdealFingerToCursorOffset:I

.field private final greylist-max-o mIdealVerticalOffset:F

.field private greylist-max-o mIsDragging:Z

.field private blacklist mIsHideAnimating:Z

.field private blacklist mIsRestoring:Z

.field private blacklist mIsShowAnimating:Z

.field private blacklist mIsSwitching:Z

.field protected blacklist mIsVerticalScrolled:Z

.field protected greylist-max-o mLastParentX:I

.field protected greylist-max-o mLastParentXOnScreen:I

.field protected greylist-max-o mLastParentY:I

.field protected greylist-max-o mLastParentYOnScreen:I

.field private greylist-max-o mMinSize:I

.field private greylist-max-o mNumberPreviousOffsets:I

.field private final blacklist mPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private greylist-max-o mPositionHasChanged:Z

.field private greylist-max-o mPositionX:I

.field private greylist-max-o mPositionY:I

.field protected greylist-max-o mPrevLine:I

.field protected greylist-max-o mPreviousLineTouched:I

.field protected greylist-max-o mPreviousOffset:I

.field private greylist-max-o mPreviousOffsetIndex:I

.field private final greylist-max-o mPreviousOffsets:[I

.field private final greylist-max-o mPreviousOffsetsTimes:[J

.field private blacklist mShowAnimator:Landroid/animation/ObjectAnimator;

.field private blacklist mTextViewScaleX:F

.field private blacklist mTextViewScaleY:F

.field protected greylist-max-o mTouchOffsetY:F

.field protected greylist-max-o mTouchToWindowOffsetX:F

.field protected greylist-max-o mTouchToWindowOffsetY:F

.field protected blacklist mVerticalOffset:F

.field protected blacklist mVerticalScrolledYOffset:I

.field final synthetic blacklist this$0:Landroid/widget/Editor;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContainer(Landroid/widget/Editor$HandleView;)Landroid/widget/PopupWindow;
    .locals 0

    iget-object p0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHideAnimator(Landroid/widget/Editor$HandleView;)Landroid/animation/ObjectAnimator;
    .locals 0

    iget-object p0, p0, Landroid/widget/Editor$HandleView;->mHideAnimator:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsHideAnimating(Landroid/widget/Editor$HandleView;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/Editor$HandleView;->mIsHideAnimating:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsShowAnimating(Landroid/widget/Editor$HandleView;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/Editor$HandleView;->mIsShowAnimating:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPositionX(Landroid/widget/Editor$HandleView;)I
    .locals 0

    iget p0, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPositionY(Landroid/widget/Editor$HandleView;)I
    .locals 0

    iget p0, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmShowAnimator(Landroid/widget/Editor$HandleView;)Landroid/animation/ObjectAnimator;
    .locals 0

    iget-object p0, p0, Landroid/widget/Editor$HandleView;->mShowAnimator:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHideAnimator(Landroid/widget/Editor$HandleView;Landroid/animation/ObjectAnimator;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/Editor$HandleView;->mHideAnimator:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsHideAnimating(Landroid/widget/Editor$HandleView;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/Editor$HandleView;->mIsHideAnimating:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsRestoring(Landroid/widget/Editor$HandleView;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/Editor$HandleView;->mIsRestoring:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsShowAnimating(Landroid/widget/Editor$HandleView;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/Editor$HandleView;->mIsShowAnimating:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmShowAnimator(Landroid/widget/Editor$HandleView;Landroid/animation/ObjectAnimator;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/Editor$HandleView;->mShowAnimator:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetDrawableBounds(Landroid/widget/Editor$HandleView;II)Landroid/graphics/Rect;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/Editor$HandleView;->getDrawableBounds(II)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mshouldShow(Landroid/widget/Editor$HandleView;)Z
    .locals 0

    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->shouldShow()Z

    move-result p0

    return p0
.end method

.method private constructor blacklist <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x10
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {p1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    iput v0, p0, Landroid/widget/Editor$HandleView;->mPrevLine:I

    iput v0, p0, Landroid/widget/Editor$HandleView;->mPreviousLineTouched:I

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Landroid/widget/Editor$HandleView;->mCurrentDragInitialTouchRawX:F

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/widget/Editor$HandleView;->mDownTime:J

    const/4 v2, 0x5

    new-array v3, v2, [J

    iput-object v3, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    new-array v2, v2, [I

    iput-object v2, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsets:[I

    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    iput v2, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    iput-boolean v2, p0, Landroid/widget/Editor$HandleView;->mIsRestoring:Z

    new-instance v3, Landroid/widget/Editor$HandleView$1;

    invoke-direct {v3, p0}, Landroid/widget/Editor$HandleView$1;-><init>(Landroid/widget/Editor$HandleView;)V

    iput-object v3, p0, Landroid/widget/Editor$HandleView;->CHANGE_SIZE_EVALUATOR:Landroid/animation/TypeEvaluator;

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3ee66666    # 0.45f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3e800000    # 0.25f

    const v7, 0x3eeb851f    # 0.46f

    invoke-direct {v3, v6, v7, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v3, p0, Landroid/widget/Editor$HandleView;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p0, p4}, Landroid/widget/Editor$HandleView;->setId(I)V

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-static {p1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/PopupWindow;

    invoke-static {p1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    const v7, 0x10102c8

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v4, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v1}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    const/16 v4, 0x3ea

    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0, p2, p3}, Landroid/widget/Editor$HandleView;->setDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-static {p1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x105057d

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroid/widget/Editor$HandleView;->mMinSize:I

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3fc00000    # 1.5f

    mul-float/2addr v4, v5

    float-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v4, v6

    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getPreferredHeight()I

    move-result v2

    const v4, -0x41666666    # -0.3f

    int-to-float v5, v2

    mul-float/2addr v5, v4

    iput v5, p0, Landroid/widget/Editor$HandleView;->mTouchOffsetY:F

    const-string/jumbo v4, "widget__finger_to_cursor_distance"

    invoke-static {v4, v0}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_1

    const/16 v4, 0x64

    if-le v0, v4, :cond_0

    goto :goto_0

    :cond_0
    int-to-float v4, v0

    invoke-static {p1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v1, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/Editor$HandleView;->mIdealFingerToCursorOffset:I

    iget v1, p0, Landroid/widget/Editor$HandleView;->mIdealFingerToCursorOffset:I

    int-to-float v1, v1

    iget v4, p0, Landroid/widget/Editor$HandleView;->mTouchOffsetY:F

    add-float/2addr v1, v4

    iput v1, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    goto :goto_1

    :cond_1
    :goto_0
    const v1, 0x3f333333    # 0.7f

    int-to-float v4, v2

    mul-float/2addr v4, v1

    iput v4, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    iget v1, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    iget v4, p0, Landroid/widget/Editor$HandleView;->mTouchOffsetY:F

    sub-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/Editor$HandleView;->mIdealFingerToCursorOffset:I

    :goto_1
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ILandroid/widget/Editor$HandleView-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Editor$HandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method private greylist-max-o addPositionToTouchUpFilter(I)V
    .locals 4

    iget v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x5

    iput v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsets:[I

    iget v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    aput p1, v0, v1

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    iget v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    aput-wide v2, v0, v1

    iget v0, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    return-void
.end method

.method private blacklist checkForTransforms()Z
    .locals 7

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmMagnifierAnimator(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v0

    invoke-static {v0}, Landroid/widget/Editor$MagnifierMotionAnimator;->-$$Nest$fgetmMagnifierIsShowing(Landroid/widget/Editor$MagnifierMotionAnimator;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getRotation()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    const/4 v3, 0x0

    if-nez v0, :cond_6

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getRotationX()F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_6

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getRotationY()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    goto :goto_3

    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getScaleX()F

    move-result v0

    iput v0, p0, Landroid/widget/Editor$HandleView;->mTextViewScaleX:F

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getScaleY()F

    move-result v0

    iput v0, p0, Landroid/widget/Editor$HandleView;->mTextViewScaleY:F

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_5

    instance-of v4, v0, Landroid/view/View;

    if-eqz v4, :cond_4

    move-object v4, v0

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRotation()F

    move-result v5

    cmpl-float v5, v5, v2

    if-nez v5, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->getRotationX()F

    move-result v5

    cmpl-float v5, v5, v2

    if-nez v5, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->getRotationY()F

    move-result v5

    cmpl-float v5, v5, v2

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    iget v5, p0, Landroid/widget/Editor$HandleView;->mTextViewScaleX:F

    invoke-virtual {v4}, Landroid/view/View;->getScaleX()F

    move-result v6

    mul-float/2addr v5, v6

    iput v5, p0, Landroid/widget/Editor$HandleView;->mTextViewScaleX:F

    iget v5, p0, Landroid/widget/Editor$HandleView;->mTextViewScaleY:F

    invoke-virtual {v4}, Landroid/view/View;->getScaleY()F

    move-result v6

    mul-float/2addr v5, v6

    iput v5, p0, Landroid/widget/Editor$HandleView;->mTextViewScaleY:F

    goto :goto_2

    :cond_3
    :goto_1
    return v3

    :cond_4
    :goto_2
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_5
    return v1

    :cond_6
    :goto_3
    return v3
.end method

.method private greylist-max-o filterOnTouchUp(Z)V
    .locals 10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    iget v3, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    iget v4, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    const/4 v5, 0x5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_0
    if-ge v2, v4, :cond_0

    iget-object v6, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    aget-wide v6, v6, v3

    sub-long v6, v0, v6

    const-wide/16 v8, 0x96

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    add-int/lit8 v2, v2, 0x1

    iget v6, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    sub-int/2addr v6, v2

    add-int/2addr v6, v5

    rem-int/lit8 v3, v6, 0x5

    goto :goto_0

    :cond_0
    if-lez v2, :cond_1

    if-ge v2, v4, :cond_1

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    aget-wide v5, v5, v3

    sub-long v5, v0, v5

    const-wide/16 v7, 0x15e

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsets:[I

    aget v5, v5, v3

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6, p1}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZZ)V

    :cond_1
    return-void
.end method

.method private blacklist getChangeSizeAnimator(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/animation/ObjectAnimator;
    .locals 4

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->CHANGE_SIZE_EVALUATOR:Landroid/animation/TypeEvaluator;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "bounds"

    invoke-static {v0, v3, v1, v2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Landroid/widget/Editor$HandleView$2;

    invoke-direct {v1, p0}, Landroid/widget/Editor$HandleView$2;-><init>(Landroid/widget/Editor$HandleView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Landroid/widget/Editor$HandleView$3;

    invoke-direct {v1, p0, p2}, Landroid/widget/Editor$HandleView$3;-><init>(Landroid/widget/Editor$HandleView;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method private blacklist getDrawableBounds(II)Landroid/graphics/Rect;
    .locals 7

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v0

    iget v1, p0, Landroid/widget/Editor$HandleView;->mContentsViewOffset:I

    sub-int/2addr v0, v1

    iget-boolean v1, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/widget/Editor$HandleView;->mIsRestoring:Z

    if-eqz v1, :cond_1

    :cond_0
    iget v1, p0, Landroid/widget/Editor$HandleView;->mContentsViewOffset:I

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v4

    :goto_0
    invoke-virtual {p0, v1, v2}, Landroid/widget/Editor$HandleView;->getHotspotX(Landroid/graphics/drawable/Drawable;Z)I

    move-result v1

    const/4 v2, 0x0

    iget v3, p0, Landroid/widget/Editor$HandleView;->mHorizontalGravity:I

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    mul-int/lit8 v3, p1, 0x3

    div-int/lit8 v2, v3, 0x4

    goto :goto_1

    :pswitch_2
    div-int/lit8 v2, p1, 0x4

    goto :goto_1

    :pswitch_3
    div-int/lit8 v2, p1, 0x2

    nop

    :goto_1
    new-instance v3, Landroid/graphics/Rect;

    sub-int v5, v2, v1

    sub-int v5, v0, v5

    sub-int v6, v2, v1

    sub-int v6, v0, v6

    add-int/2addr v6, p1

    invoke-direct {v3, v5, v4, v6, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private blacklist getHideAnimator()Landroid/animation/ObjectAnimator;
    .locals 8

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Landroid/widget/Editor$HandleView;->CHANGE_SIZE_EVALUATOR:Landroid/animation/TypeEvaluator;

    invoke-direct {p0, v1, v2}, Landroid/widget/Editor$HandleView;->getDrawableBounds(II)Landroid/graphics/Rect;

    move-result-object v5

    new-instance v6, Landroid/graphics/Rect;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v7, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "bounds"

    invoke-static {v3, v6, v4, v5}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-instance v4, Landroid/widget/Editor$HandleView$8;

    invoke-direct {v4, p0}, Landroid/widget/Editor$HandleView$8;-><init>(Landroid/widget/Editor$HandleView;)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v4, Landroid/widget/Editor$HandleView$9;

    invoke-direct {v4, p0}, Landroid/widget/Editor$HandleView$9;-><init>(Landroid/widget/Editor$HandleView;)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v3
.end method

.method private greylist-max-o getOtherSelectionHandle()Landroid/widget/Editor$HandleView;
    .locals 2

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->isActive()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->-$$Nest$fgetmStartHandle(Landroid/widget/Editor$SelectionModifierCursorController;)Landroid/widget/Editor$SelectionHandleView;

    move-result-object v1

    if-eq v1, p0, :cond_1

    invoke-static {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->-$$Nest$fgetmStartHandle(Landroid/widget/Editor$SelectionModifierCursorController;)Landroid/widget/Editor$SelectionHandleView;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->-$$Nest$fgetmEndHandle(Landroid/widget/Editor$SelectionModifierCursorController;)Landroid/widget/Editor$SelectionHandleView;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_2
    :goto_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist getRestorePositionAnimator()Landroid/animation/ValueAnimator;
    .locals 11

    iget v0, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget v1, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [I

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->prepareCursorControllers()V

    const/4 v1, 0x0

    return-object v1

    :cond_0
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$mgetActiveLayout(Landroid/widget/Editor;)Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v5

    invoke-virtual {p0, v3, v4}, Landroid/widget/Editor$HandleView;->getCursorHorizontalPosition(Landroid/text/Layout;I)I

    move-result v6

    iget v7, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCursorOffset()I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v7}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v7

    add-int/2addr v6, v7

    const/4 v7, 0x0

    aput v6, v2, v7

    invoke-virtual {v3, v5}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v6

    iget-object v8, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v8}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v8

    add-int/2addr v6, v8

    const/4 v8, 0x1

    aput v6, v2, v8

    aget v6, v0, v7

    iget v9, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v10

    add-int/2addr v9, v10

    add-int/2addr v6, v9

    aput v6, v0, v7

    aget v6, v2, v7

    iget v9, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v10

    add-int/2addr v9, v10

    add-int/2addr v6, v9

    aput v6, v2, v7

    iget-object v6, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v6}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->transformFromViewToWindowSpace([I)V

    iget-object v6, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v6}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->transformFromViewToWindowSpace([I)V

    aget v6, v0, v7

    iget v9, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v10

    add-int/2addr v9, v10

    sub-int/2addr v6, v9

    aput v6, v0, v7

    aget v6, v2, v7

    iget v9, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v10

    add-int/2addr v9, v10

    sub-int/2addr v6, v9

    aput v6, v2, v7

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    aget v6, v0, v7

    aget v9, v2, v7

    filled-new-array {v6, v9}, [I

    move-result-object v6

    const-string/jumbo v9, "x"

    invoke-static {v9, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v1, v7

    aget v6, v0, v8

    aget v7, v2, v8

    filled-new-array {v6, v7}, [I

    move-result-object v6

    const-string/jumbo v7, "y"

    invoke-static {v7, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v1, v8

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v6

    const-wide/16 v7, 0xfa

    invoke-virtual {v6, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v7, p0, Landroid/widget/Editor$HandleView;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v7, Landroid/widget/Editor$HandleView$5;

    invoke-direct {v7, p0}, Landroid/widget/Editor$HandleView$5;-><init>(Landroid/widget/Editor$HandleView;)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v6
.end method

.method private blacklist getRestoreSizeAnimator()Landroid/animation/ObjectAnimator;
    .locals 8

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    nop

    invoke-direct {p0, v1, v2}, Landroid/widget/Editor$HandleView;->getDrawableBounds(II)Landroid/graphics/Rect;

    move-result-object v5

    invoke-direct {p0, v3, v4}, Landroid/widget/Editor$HandleView;->getDrawableBounds(II)Landroid/graphics/Rect;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Landroid/widget/Editor$HandleView;->getChangeSizeAnimator(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v6, 0xfa

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v6, p0, Landroid/widget/Editor$HandleView;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v5
.end method

.method private blacklist getShowAnimator()Landroid/animation/ObjectAnimator;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->CHANGE_SIZE_EVALUATOR:Landroid/animation/TypeEvaluator;

    invoke-direct {p0, v0, v1}, Landroid/widget/Editor$HandleView;->getDrawableBounds(II)Landroid/graphics/Rect;

    move-result-object v6

    invoke-direct {p0, v2, v3}, Landroid/widget/Editor$HandleView;->getDrawableBounds(II)Landroid/graphics/Rect;

    move-result-object v7

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "bounds"

    invoke-static {v4, v7, v5, v6}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    new-instance v5, Landroid/widget/Editor$HandleView$6;

    invoke-direct {v5, p0}, Landroid/widget/Editor$HandleView$6;-><init>(Landroid/widget/Editor$HandleView;)V

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v5, Landroid/widget/Editor$HandleView$7;

    invoke-direct {v5, p0, v2, v3}, Landroid/widget/Editor$HandleView$7;-><init>(Landroid/widget/Editor$HandleView;II)V

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v5, 0xc8

    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v4
.end method

.method private greylist-max-o handleOverlapsMagnifier(Landroid/widget/Editor$HandleView;Landroid/graphics/Rect;)Z
    .locals 7

    iget-object v0, p1, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->hasDecorView()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v1, p2}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    return v2
.end method

.method private blacklist isScrollChanged(Landroid/view/MotionEvent;)Z
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method private blacklist isValid()Z
    .locals 3

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method private blacklist magnifySize()V
    .locals 7

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v2, v0

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v4, v1

    mul-float/2addr v4, v3

    float-to-int v3, v4

    nop

    invoke-direct {p0, v0, v1}, Landroid/widget/Editor$HandleView;->getDrawableBounds(II)Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {p0, v2, v3}, Landroid/widget/Editor$HandleView;->getDrawableBounds(II)Landroid/graphics/Rect;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Landroid/widget/Editor$HandleView;->getChangeSizeAnimator(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v5, 0xfa

    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private greylist-max-o obtainMagnifierShowCoordinates(Landroid/view/MotionEvent;Landroid/graphics/PointF;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$HandleView;->getMagnifierHandleTrigger()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    const/4 v3, -0x1

    const/4 v4, -0x1

    goto :goto_0

    :pswitch_0
    iget-object v3, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    iget-object v4, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    goto :goto_0

    :pswitch_1
    iget-object v3, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    iget-object v4, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    goto :goto_0

    :pswitch_2
    iget-object v3, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    const/4 v4, -0x1

    nop

    :goto_0
    const/4 v5, -0x1

    const/4 v6, 0x0

    if-ne v3, v5, :cond_0

    return v6

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    const/4 v8, 0x1

    if-nez v7, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    iput v7, v0, Landroid/widget/Editor$HandleView;->mCurrentDragInitialTouchRawX:F

    goto :goto_1

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    if-ne v7, v8, :cond_2

    const/high16 v7, -0x40800000    # -1.0f

    iput v7, v0, Landroid/widget/Editor$HandleView;->mCurrentDragInitialTouchRawX:F

    :cond_2
    :goto_1
    iget-object v7, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v7}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v7

    invoke-virtual {v0, v7, v3}, Landroid/widget/Editor$HandleView;->getLineForOffset(Landroid/text/Layout;I)I

    move-result v9

    if-eq v4, v5, :cond_3

    invoke-virtual {v0, v7, v3}, Landroid/widget/Editor$HandleView;->getLineForOffset(Landroid/text/Layout;I)I

    move-result v5

    if-ne v9, v5, :cond_3

    move v5, v8

    goto :goto_2

    :cond_3
    move v5, v6

    :goto_2
    if-eqz v5, :cond_6

    if-ge v3, v4, :cond_4

    move v10, v8

    goto :goto_3

    :cond_4
    move v10, v6

    :goto_3
    iget-object v11, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v11

    invoke-virtual {v0, v11, v3}, Landroid/widget/Editor$HandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v11

    iget-object v12, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v12}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v12

    invoke-virtual {v0, v12, v4}, Landroid/widget/Editor$HandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v12

    cmpg-float v11, v11, v12

    if-gez v11, :cond_5

    move v11, v8

    goto :goto_4

    :cond_5
    move v11, v6

    :goto_4
    if-eq v10, v11, :cond_6

    move v10, v8

    goto :goto_5

    :cond_6
    move v10, v6

    :goto_5
    const/4 v11, 0x2

    new-array v11, v11, [I

    iget-object v12, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v12}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v12, v11}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v12

    aget v13, v11, v6

    int-to-float v13, v13

    sub-float/2addr v12, v13

    iget v13, v0, Landroid/widget/Editor$HandleView;->mTextViewScaleX:F

    const/high16 v14, 0x3f800000    # 1.0f

    cmpl-float v13, v13, v14

    if-nez v13, :cond_7

    move v13, v12

    goto :goto_6

    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v13

    iget v14, v0, Landroid/widget/Editor$HandleView;->mCurrentDragInitialTouchRawX:F

    sub-float/2addr v13, v14

    iget v14, v0, Landroid/widget/Editor$HandleView;->mTextViewScaleX:F

    mul-float/2addr v13, v14

    iget v14, v0, Landroid/widget/Editor$HandleView;->mCurrentDragInitialTouchRawX:F

    add-float/2addr v13, v14

    aget v14, v11, v6

    int-to-float v14, v14

    sub-float/2addr v13, v14

    :goto_6
    iput v13, v1, Landroid/graphics/PointF;->x:F

    iget-object v14, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v14}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v14

    invoke-virtual {v14, v9}, Landroid/text/Layout;->getLineTop(I)I

    move-result v14

    iget-object v15, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v15}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v15

    invoke-virtual {v15, v9, v6}, Landroid/text/Layout;->getLineBottom(IZ)I

    move-result v6

    add-int/2addr v14, v6

    int-to-float v6, v14

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v6, v14

    iget-object v14, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v14}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v6, v14

    iget-object v14, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v14}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/TextView;->getScrollY()I

    move-result v14

    int-to-float v14, v14

    sub-float/2addr v6, v14

    iget v14, v0, Landroid/widget/Editor$HandleView;->mTextViewScaleY:F

    mul-float/2addr v6, v14

    iput v6, v1, Landroid/graphics/PointF;->y:F

    return v8

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist restore()V
    .locals 5

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getRestoreSizeAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getRestorePositionAnimator()Landroid/animation/ValueAnimator;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v3, "Editor"

    const-string/jumbo v4, "restorePositionAnimator is null. hide() is called."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->hide()V

    return-void

    :cond_0
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v3, Landroid/widget/Editor$HandleView$4;

    invoke-direct {v3, p0}, Landroid/widget/Editor$HandleView$4;-><init>(Landroid/widget/Editor$HandleView;)V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private greylist-max-o setVisible(Z)V
    .locals 2

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private greylist-max-o shouldShow()Z
    .locals 3

    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->isInBatchEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget v2, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->isPositionVisible(FF)Z

    move-result v0

    return v0
.end method

.method private greylist-max-o startTouchUpFilter(I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    invoke-direct {p0, p1}, Landroid/widget/Editor$HandleView;->addPositionToTouchUpFilter(I)V

    return-void
.end method

.method private greylist-max-o tooLargeTextForMagnifier()Z
    .locals 6

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmNewMagnifierEnabled(Landroid/widget/Editor;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v3

    invoke-virtual {p0, v0, v3}, Landroid/widget/Editor$HandleView;->getLineForOffset(Landroid/text/Layout;I)I

    move-result v3

    invoke-virtual {v0, v3, v2}, Landroid/text/Layout;->getLineBottom(IZ)I

    move-result v4

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-$$Nest$fgetmMaxLineHeightForMagnifier(Landroid/widget/Editor;)I

    move-result v5

    if-lt v4, v5, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmMagnifierAnimator(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v0

    invoke-static {v0}, Landroid/widget/Editor$MagnifierMotionAnimator;->-$$Nest$fgetmMagnifier(Landroid/widget/Editor$MagnifierMotionAnimator;)Landroid/widget/Magnifier;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Magnifier;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmMagnifierAnimator(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v3

    invoke-static {v3}, Landroid/widget/Editor$MagnifierMotionAnimator;->-$$Nest$fgetmMagnifier(Landroid/widget/Editor$MagnifierMotionAnimator;)Landroid/widget/Magnifier;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Magnifier;->getZoom()F

    move-result v3

    div-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    iget v4, v3, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v5, v3, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v4, v5

    iget v5, p0, Landroid/widget/Editor$HandleView;->mTextViewScaleY:F

    mul-float/2addr v5, v4

    cmpl-float v5, v5, v0

    if-lez v5, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method private blacklist updateHandlesVisibility()V
    .locals 7

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmMagnifierAnimator(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v0

    invoke-static {v0}, Landroid/widget/Editor$MagnifierMotionAnimator;->-$$Nest$fgetmMagnifier(Landroid/widget/Editor$MagnifierMotionAnimator;)Landroid/widget/Magnifier;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Magnifier;->getPosition()Landroid/graphics/Point;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    iget v4, v0, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-$$Nest$fgetmMagnifierAnimator(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v5

    invoke-static {v5}, Landroid/widget/Editor$MagnifierMotionAnimator;->-$$Nest$fgetmMagnifier(Landroid/widget/Editor$MagnifierMotionAnimator;)Landroid/widget/Magnifier;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Magnifier;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v0, Landroid/graphics/Point;->y:I

    iget-object v6, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v6}, Landroid/widget/Editor;->-$$Nest$fgetmMagnifierAnimator(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v6

    invoke-static {v6}, Landroid/widget/Editor$MagnifierMotionAnimator;->-$$Nest$fgetmMagnifier(Landroid/widget/Editor$MagnifierMotionAnimator;)Landroid/widget/Magnifier;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Magnifier;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {p0, p0, v1}, Landroid/widget/Editor$HandleView;->handleOverlapsMagnifier(Landroid/widget/Editor$HandleView;Landroid/graphics/Rect;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmDrawCursorOnMagnifier(Landroid/widget/Editor;)Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-direct {p0, v2}, Landroid/widget/Editor$HandleView;->setVisible(Z)V

    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getOtherSelectionHandle()Landroid/widget/Editor$HandleView;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v2, v1}, Landroid/widget/Editor$HandleView;->handleOverlapsMagnifier(Landroid/widget/Editor$HandleView;Landroid/graphics/Rect;)Z

    move-result v4

    xor-int/2addr v3, v4

    invoke-direct {v2, v3}, Landroid/widget/Editor$HandleView;->setVisible(Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected greylist-max-o dismiss()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    iput-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsRestoring:Z

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mHideAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getHideAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$HandleView;->mHideAnimator:Landroid/animation/ObjectAnimator;

    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mHideAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mHideAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->onDetached()V

    return-void
.end method

.method protected final greylist-max-o dismissMagnifier()V
    .locals 2

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmMagnifierAnimator(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmMagnifierAnimator(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v0

    invoke-static {v0}, Landroid/widget/Editor$MagnifierMotionAnimator;->-$$Nest$mdismiss(Landroid/widget/Editor$MagnifierMotionAnimator;)V

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/Editor;->-$$Nest$fputmRenderCursorRegardlessTiming(Landroid/widget/Editor;Z)V

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0, v1}, Landroid/widget/Editor;->-$$Nest$fputmDrawCursorOnMagnifier(Landroid/widget/Editor;Z)V

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mCursorVisible:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iput-boolean v1, v0, Landroid/widget/Editor;->mCursorVisible:Z

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$mresumeBlink(Landroid/widget/Editor;)V

    invoke-direct {p0, v1}, Landroid/widget/Editor$HandleView;->setVisible(Z)V

    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getOtherSelectionHandle()Landroid/widget/Editor$HandleView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {v0, v1}, Landroid/widget/Editor$HandleView;->setVisible(Z)V

    :cond_1
    return-void
.end method

.method public abstract greylist-max-o getCurrentCursorOffset()I
.end method

.method greylist-max-o getCursorHorizontalPosition(Landroid/text/Layout;I)I
    .locals 2

    invoke-virtual {p0, p1, p2}, Landroid/widget/Editor$HandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected greylist-max-o getCursorOffset()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getHorizontal(Landroid/text/Layout;I)F
    .locals 2

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Landroid/widget/TextView;->originalToTransformed(II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    return v1
.end method

.method protected abstract greylist-max-o getHorizontalGravity(Z)I
.end method

.method protected greylist-max-o getHorizontalOffset()I
    .locals 5

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getPreferredWidth()I

    move-result v0

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v2

    iget v3, p0, Landroid/widget/Editor$HandleView;->mHorizontalGravity:I

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    sub-int v3, v0, v1

    div-int/lit8 v3, v3, 0x2

    sub-int v4, v2, v0

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Landroid/widget/Editor$HandleView;->mContentsViewOffset:I

    goto :goto_0

    :pswitch_1
    sub-int v3, v0, v1

    sub-int v4, v2, v0

    iput v4, p0, Landroid/widget/Editor$HandleView;->mContentsViewOffset:I

    goto :goto_0

    :pswitch_2
    const/4 v3, 0x0

    const/4 v4, 0x0

    iput v4, p0, Landroid/widget/Editor$HandleView;->mContentsViewOffset:I

    nop

    :goto_0
    iget v4, p0, Landroid/widget/Editor$HandleView;->mContentsViewOffset:I

    add-int/2addr v4, v3

    return v4

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected abstract greylist-max-o getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
.end method

.method final blacklist getIdealFingerToCursorOffset()I
    .locals 1

    iget v0, p0, Landroid/widget/Editor$HandleView;->mIdealFingerToCursorOffset:I

    return v0
.end method

.method public greylist-max-o getIdealVerticalOffset()F
    .locals 1

    iget v0, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    return v0
.end method

.method public blacklist getLineForOffset(Landroid/text/Layout;I)I
    .locals 2

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Landroid/widget/TextView;->originalToTransformed(II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    return v1
.end method

.method protected abstract greylist-max-o getMagnifierHandleTrigger()I
.end method

.method protected greylist-max-o getOffsetAtCoordinate(Landroid/text/Layout;IF)I
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    move-result v0

    return v0
.end method

.method protected final greylist-max-o getPreferredHeight()I
    .locals 2

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iget v1, p0, Landroid/widget/Editor$HandleView;->mMinSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected final greylist-max-o getPreferredWidth()I
    .locals 2

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget v1, p0, Landroid/widget/Editor$HandleView;->mMinSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public greylist-max-o hide()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->dismiss()V

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$mgetPositionListener(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/Editor$PositionListener;->removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    return-void
.end method

.method protected blacklist hideAfterDelay()V
    .locals 0

    return-void
.end method

.method public whitelist invalidate()V
    .locals 3

    invoke-super {p0}, Landroid/view/View;->invalidate()V

    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsShowAnimating:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsHideAnimating:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZZ)V

    :cond_0
    return-void
.end method

.method protected greylist-max-o isAtRtlRun(Landroid/text/Layout;I)Z
    .locals 2

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Landroid/widget/TextView;->originalToTransformed(II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v1

    return v1
.end method

.method public greylist-max-o isDragging()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    return v0
.end method

.method protected blacklist isScreenOut(IZ)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o isShowing()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public greylist-max-o offsetHasBeenChanged()Z
    .locals 2

    iget v0, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public greylist-max-o onDetached()V
    .locals 0

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->dismissMagnifier()V

    return-void
.end method

.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v1

    iget v2, p0, Landroid/widget/Editor$HandleView;->mContentsViewOffset:I

    sub-int/2addr v1, v2

    iget-boolean v2, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Landroid/widget/Editor$HandleView;->mIsRestoring:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Landroid/widget/Editor$HandleView;->mIsShowAnimating:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Landroid/widget/Editor$HandleView;->mIsHideAnimating:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    add-int v3, v1, v0

    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method greylist-max-o onHandleMoved()V
    .locals 0

    return-void
.end method

.method protected whitelist onMeasure(II)V
    .locals 6

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getPreferredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getPreferredHeight()I

    move-result v1

    iget-boolean v2, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Landroid/widget/Editor$HandleView;->mIsRestoring:Z

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float/2addr v2, v3

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    :cond_1
    invoke-virtual {p0, v0, v1}, Landroid/widget/Editor$HandleView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected whitelist onSizeChanged(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Editor$HandleView;->setSystemGestureExclusionRects(Ljava/util/List;)V

    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "Editor"

    iget-object v0, v1, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0, v2}, Landroid/widget/Editor;->-$$Nest$mupdateFloatingToolbarVisibility(Landroid/widget/Editor;Landroid/view/MotionEvent;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v4, 0x1002

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    iput-boolean v5, v1, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    iput-boolean v6, v1, Landroid/widget/Editor$HandleView;->mIsRestoring:Z

    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$HandleView;->restore()V

    invoke-virtual {v1, v5}, Landroid/widget/Editor$HandleView;->updateDrawable(Z)V

    iget-object v0, v1, Landroid/widget/Editor$HandleView;->mHandleVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_4

    iget-object v0, v1, Landroid/widget/Editor$HandleView;->mHandleVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, v1, Landroid/widget/Editor$HandleView;->mHandleVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_4

    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v7, v1, Landroid/widget/Editor$HandleView;->mLastParentXOnScreen:I

    int-to-float v7, v7

    sub-float/2addr v0, v7

    iget v7, v1, Landroid/widget/Editor$HandleView;->mLastParentX:I

    int-to-float v7, v7

    add-float/2addr v7, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v8, v1, Landroid/widget/Editor$HandleView;->mLastParentYOnScreen:I

    int-to-float v8, v8

    sub-float/2addr v0, v8

    iget v8, v1, Landroid/widget/Editor$HandleView;->mLastParentY:I

    int-to-float v8, v8

    add-float/2addr v8, v0

    iget v0, v1, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    iget v9, v1, Landroid/widget/Editor$HandleView;->mLastParentY:I

    int-to-float v9, v9

    sub-float v9, v0, v9

    iget v0, v1, Landroid/widget/Editor$HandleView;->mPositionY:I

    int-to-float v0, v0

    sub-float v0, v8, v0

    iget v10, v1, Landroid/widget/Editor$HandleView;->mLastParentY:I

    int-to-float v10, v10

    sub-float v10, v0, v10

    iget v0, v1, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    cmpg-float v0, v9, v0

    if-gez v0, :cond_0

    iget v0, v1, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    invoke-static {v10, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0, v9}, Ljava/lang/Math;->max(FF)F

    move-result v0

    move v11, v0

    goto :goto_0

    :cond_0
    iget v0, v1, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    invoke-static {v10, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0, v9}, Ljava/lang/Math;->min(FF)F

    move-result v0

    move v11, v0

    :goto_0
    iget v0, v1, Landroid/widget/Editor$HandleView;->mLastParentY:I

    int-to-float v0, v0

    add-float/2addr v0, v11

    iput v0, v1, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    iget v0, v1, Landroid/widget/Editor$HandleView;->mLastParentY:I

    iget v12, v1, Landroid/widget/Editor$HandleView;->mFirstParentY:I

    sub-int/2addr v0, v12

    iput v0, v1, Landroid/widget/Editor$HandleView;->mVerticalScrolledYOffset:I

    invoke-direct/range {p0 .. p1}, Landroid/widget/Editor$HandleView;->isScrollChanged(Landroid/view/MotionEvent;)Z

    move-result v0

    iput-boolean v0, v1, Landroid/widget/Editor$HandleView;->mIsVerticalScrolled:Z

    iget v0, v1, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    sub-float v0, v7, v0

    iget v12, v1, Landroid/widget/Editor$HandleView;->mHotspotX:I

    int-to-float v12, v12

    add-float/2addr v0, v12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v12, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v13, v1, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    sub-float/2addr v0, v13

    iget v13, v1, Landroid/widget/Editor$HandleView;->mTouchOffsetY:F

    add-float/2addr v13, v0

    nop

    :try_start_0
    invoke-virtual {v2, v4}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    invoke-virtual {v1, v12, v13, v0}, Landroid/widget/Editor$HandleView;->updatePosition(FFZ)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "handle view action move IndexOutOfBoundsException : "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_1
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "handle view action move IllegalArgumentException : "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    nop

    :goto_2
    iget-object v0, v1, Landroid/widget/Editor$HandleView;->mHandleVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_4

    iget-wide v14, v1, Landroid/widget/Editor$HandleView;->mDownTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v19

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v20

    const/16 v21, 0x0

    invoke-static/range {v14 .. v21}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    iget-object v3, v1, Landroid/widget/Editor$HandleView;->mHandleVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v3, v1, Landroid/widget/Editor$HandleView;->mHandleVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v3, v1, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget-object v4, v1, Landroid/widget/Editor$HandleView;->mHandleVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v4

    const/high16 v14, 0x3f000000    # 0.5f

    cmpl-float v4, v4, v14

    if-gtz v4, :cond_1

    iget-object v4, v1, Landroid/widget/Editor$HandleView;->mHandleVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v4

    const/high16 v14, -0x41000000    # -0.5f

    cmpg-float v4, v4, v14

    if-gez v4, :cond_2

    :cond_1
    move v5, v6

    :cond_2
    invoke-static {v3, v5}, Landroid/widget/Editor;->-$$Nest$fputmIsMagnifierHideByVelocityTracker(Landroid/widget/Editor;Z)V

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    goto/16 :goto_4

    :pswitch_2
    invoke-virtual {v2, v4}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    invoke-direct {v1, v0}, Landroid/widget/Editor$HandleView;->filterOnTouchUp(Z)V

    iput-boolean v5, v1, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    iput-boolean v6, v1, Landroid/widget/Editor$HandleView;->mIsRestoring:Z

    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$HandleView;->restore()V

    iget-object v0, v1, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$mupdateWritingToolkit(Landroid/widget/Editor;)V

    goto/16 :goto_4

    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v0

    invoke-direct {v1, v0}, Landroid/widget/Editor$HandleView;->startTouchUpFilter(I)V

    iget-object v0, v1, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$mgetPositionListener(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Editor$PositionListener;->getPositionX()I

    move-result v3

    iput v3, v1, Landroid/widget/Editor$HandleView;->mLastParentX:I

    invoke-virtual {v0}, Landroid/widget/Editor$PositionListener;->getPositionY()I

    move-result v3

    iput v3, v1, Landroid/widget/Editor$HandleView;->mLastParentY:I

    iget v3, v1, Landroid/widget/Editor$HandleView;->mLastParentY:I

    iput v3, v1, Landroid/widget/Editor$HandleView;->mFirstParentY:I

    invoke-virtual {v0}, Landroid/widget/Editor$PositionListener;->getPositionXOnScreen()I

    move-result v3

    iput v3, v1, Landroid/widget/Editor$HandleView;->mLastParentXOnScreen:I

    invoke-virtual {v0}, Landroid/widget/Editor$PositionListener;->getPositionYOnScreen()I

    move-result v3

    iput v3, v1, Landroid/widget/Editor$HandleView;->mLastParentYOnScreen:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iget v4, v1, Landroid/widget/Editor$HandleView;->mLastParentXOnScreen:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, v1, Landroid/widget/Editor$HandleView;->mLastParentX:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iget v5, v1, Landroid/widget/Editor$HandleView;->mLastParentYOnScreen:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget v5, v1, Landroid/widget/Editor$HandleView;->mLastParentY:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget v5, v1, Landroid/widget/Editor$HandleView;->mPositionX:I

    int-to-float v5, v5

    sub-float v5, v3, v5

    iput v5, v1, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    iget v5, v1, Landroid/widget/Editor$HandleView;->mPositionY:I

    int-to-float v5, v5

    sub-float v5, v4, v5

    iput v5, v1, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    iput-boolean v6, v1, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    const/4 v5, -0x1

    iput v5, v1, Landroid/widget/Editor$HandleView;->mPreviousLineTouched:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    iget v7, v1, Landroid/widget/Editor$HandleView;->mPositionY:I

    int-to-float v7, v7

    sub-float/2addr v5, v7

    iput v5, v1, Landroid/widget/Editor$HandleView;->mVerticalOffset:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    iget v7, v1, Landroid/widget/Editor$HandleView;->mPositionX:I

    int-to-float v7, v7

    sub-float/2addr v5, v7

    iput v5, v1, Landroid/widget/Editor$HandleView;->mHorizontalOffset:F

    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$HandleView;->magnifySize()V

    iget-object v5, v1, Landroid/widget/Editor$HandleView;->mHandleVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v5, :cond_3

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, v1, Landroid/widget/Editor$HandleView;->mHandleVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_3

    :cond_3
    iget-object v5, v1, Landroid/widget/Editor$HandleView;->mHandleVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->clear()V

    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iput-wide v7, v1, Landroid/widget/Editor$HandleView;->mDownTime:J

    iget-wide v9, v1, Landroid/widget/Editor$HandleView;->mDownTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v15

    const/16 v16, 0x0

    invoke-static/range {v9 .. v16}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v5

    iget-object v7, v1, Landroid/widget/Editor$HandleView;->mHandleVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, v5}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v7, v1, Landroid/widget/Editor$HandleView;->mHandleVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    invoke-virtual {v5}, Landroid/view/MotionEvent;->recycle()V

    nop

    :cond_4
    :goto_4
    return v6

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected greylist-max-o positionAtCursorOffset(IZZ)V
    .locals 7

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->prepareCursorControllers()V

    return-void

    :cond_0
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$mgetActiveLayout(Landroid/widget/Editor;)Landroid/text/Layout;

    move-result-object v0

    iget v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    if-nez v1, :cond_2

    if-eqz p2, :cond_6

    :cond_2
    if-eqz v1, :cond_4

    invoke-virtual {p0, p1}, Landroid/widget/Editor$HandleView;->updateSelection(I)V

    if-eqz p3, :cond_3

    iget-object v4, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$fgetmHapticTextHandleEnabled(Landroid/widget/Editor;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    const/16 v5, 0x29

    invoke-static {v5}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->performHapticFeedback(I)Z

    :cond_3
    invoke-direct {p0, p1}, Landroid/widget/Editor$HandleView;->addPositionToTouchUpFilter(I)V

    :cond_4
    invoke-virtual {p0, v0, p1}, Landroid/widget/Editor$HandleView;->getLineForOffset(Landroid/text/Layout;I)I

    move-result v4

    iput v4, p0, Landroid/widget/Editor$HandleView;->mPrevLine:I

    iget-boolean v5, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-nez v5, :cond_5

    iget-boolean v5, p0, Landroid/widget/Editor$HandleView;->mIsRestoring:Z

    if-nez v5, :cond_5

    invoke-virtual {p0, v0, p1}, Landroid/widget/Editor$HandleView;->getCursorHorizontalPosition(Landroid/text/Layout;I)I

    move-result v5

    iget v6, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCursorOffset()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    invoke-virtual {v0, v4, v3}, Landroid/text/Layout;->getLineBottom(IZ)I

    move-result v3

    iput v3, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    iget v3, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v5

    add-int/2addr v3, v5

    iput v3, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget v3, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v5

    add-int/2addr v3, v5

    iput v3, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    :cond_5
    iput p1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    iput-boolean v2, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    :cond_6
    return-void
.end method

.method protected blacklist removeHiderCallback()V
    .locals 0

    return-void
.end method

.method blacklist setDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iput-object p1, p0, Landroid/widget/Editor$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Landroid/widget/Editor$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/Editor$HandleView;->updateDrawable(Z)V

    return-void
.end method

.method public greylist-max-o show()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsHideAnimating:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$mgetPositionListener(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/widget/Editor$PositionListener;->addSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZZ)V

    return-void
.end method

.method protected blacklist updateDrawable(Z)V
    .locals 8

    if-nez p1, :cond_0

    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/Editor$HandleView;->isAtRtlRun(Landroid/text/Layout;I)Z

    move-result v2

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_2
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    :goto_0
    iput-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v4, v2}, Landroid/widget/Editor$HandleView;->getHotspotX(Landroid/graphics/drawable/Drawable;Z)I

    move-result v4

    iput v4, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    invoke-virtual {p0, v2}, Landroid/widget/Editor$HandleView;->getHorizontalGravity(Z)I

    move-result v4

    iput v4, p0, Landroid/widget/Editor$HandleView;->mHorizontalGravity:I

    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iget v5, p0, Landroid/widget/Editor$HandleView;->mHorizontalGravity:I

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {p0, v0, v1}, Landroid/widget/Editor$HandleView;->getCursorHorizontalPosition(Landroid/text/Layout;I)I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCursorOffset()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-$$Nest$mgetPositionListener(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Editor$PositionListener;->getPositionX()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0, v4, v2}, Landroid/widget/Editor$HandleView;->isScreenOut(IZ)Z

    move-result v5

    if-eqz v5, :cond_4

    xor-int/lit8 v5, v2, 0x1

    move v2, v5

    if-eqz v2, :cond_3

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_3
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    :goto_1
    iput-object v5, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v5, v2}, Landroid/widget/Editor$HandleView;->getHotspotX(Landroid/graphics/drawable/Drawable;Z)I

    move-result v5

    iput v5, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    invoke-virtual {p0, v2}, Landroid/widget/Editor$HandleView;->getHorizontalGravity(Z)I

    move-result v5

    iput v5, p0, Landroid/widget/Editor$HandleView;->mHorizontalGravity:I

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iget v6, p0, Landroid/widget/Editor$HandleView;->mHorizontalGravity:I

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    :cond_4
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v3, v5, :cond_5

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0, v0, v1}, Landroid/widget/Editor$HandleView;->getCursorHorizontalPosition(Landroid/text/Layout;I)I

    move-result v5

    iget v6, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCursorOffset()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget v5, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget-object v6, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v6}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    iput-boolean v5, p0, Landroid/widget/Editor$HandleView;->mIsSwitching:Z

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->dismiss()V

    iget v5, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    iget v6, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    const/4 v7, 0x0

    invoke-virtual {p0, v5, v6, v7, v7}, Landroid/widget/Editor$HandleView;->updatePosition(IIZZ)V

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->postInvalidate()V

    iput-boolean v7, p0, Landroid/widget/Editor$HandleView;->mIsSwitching:Z

    :cond_5
    return-void
.end method

.method protected final greylist-max-o updateMagnifier(Landroid/view/MotionEvent;)V
    .locals 12

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$mgetMagnifierAnimator(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->checkForTransforms()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->tooLargeTextForMagnifier()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, p1, v0}, Landroid/widget/Editor$HandleView;->obtainMagnifierShowCoordinates(Landroid/view/MotionEvent;Landroid/graphics/PointF;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->showUIForTouchScreen()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    if-eqz v1, :cond_7

    iget-object v4, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4, v3}, Landroid/widget/Editor;->-$$Nest$fputmRenderCursorRegardlessTiming(Landroid/widget/Editor;Z)V

    iget-object v4, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->invalidateCursorPath()V

    iget-object v4, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$msuspendBlink(Landroid/widget/Editor;)V

    iget-object v4, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$fgetmNewMagnifierEnabled(Landroid/widget/Editor;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Landroid/widget/Editor$HandleView;->getLineForOffset(Landroid/text/Layout;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v6

    float-to-int v6, v6

    iget-object v7, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v7}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v7

    iget-object v8, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v8}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getScrollX()I

    move-result v8

    sub-int/2addr v7, v8

    add-int/2addr v6, v7

    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineRight(I)F

    move-result v7

    float-to-int v7, v7

    iget-object v8, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v8}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v8

    iget-object v9, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v9}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->getScrollX()I

    move-result v9

    sub-int/2addr v8, v9

    add-int/2addr v7, v8

    iget-object v8, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget v9, v0, Landroid/graphics/PointF;->x:F

    add-int/lit8 v10, v6, -0x14

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-ltz v9, :cond_3

    iget v9, v0, Landroid/graphics/PointF;->x:F

    add-int/lit8 v10, v7, 0x14

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_2

    goto :goto_1

    :cond_2
    move v9, v2

    goto :goto_2

    :cond_3
    :goto_1
    move v9, v3

    :goto_2
    invoke-static {v8, v9}, Landroid/widget/Editor;->-$$Nest$fputmDrawCursorOnMagnifier(Landroid/widget/Editor;Z)V

    iget-object v8, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v8}, Landroid/widget/Editor;->-$$Nest$fgetmMagnifierAnimator(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v8

    invoke-static {v8}, Landroid/widget/Editor$MagnifierMotionAnimator;->-$$Nest$fgetmMagnifier(Landroid/widget/Editor$MagnifierMotionAnimator;)Landroid/widget/Magnifier;

    move-result-object v8

    iget-object v9, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v9}, Landroid/widget/Editor;->-$$Nest$fgetmDrawCursorOnMagnifier(Landroid/widget/Editor;)Z

    move-result v9

    iget-object v10, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget-object v10, v10, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v9, v10}, Landroid/widget/Magnifier;->setDrawCursor(ZLandroid/graphics/drawable/Drawable;)V

    iget-object v8, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget-boolean v8, v8, Landroid/widget/Editor;->mCursorVisible:Z

    iget-object v9, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget-object v10, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v10}, Landroid/widget/Editor;->-$$Nest$fgetmDrawCursorOnMagnifier(Landroid/widget/Editor;)Z

    move-result v10

    xor-int/2addr v3, v10

    iput-boolean v3, v9, Landroid/widget/Editor;->mCursorVisible:Z

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget-boolean v3, v3, Landroid/widget/Editor;->mCursorVisible:Z

    if-eqz v3, :cond_4

    if-nez v8, :cond_4

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v3}, Landroid/widget/Editor;->updateCursorPosition()V

    :cond_4
    nop

    invoke-virtual {v4, v5, v2}, Landroid/text/Layout;->getLineBottom(IZ)I

    move-result v2

    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmInitialZoom(Landroid/widget/Editor;)F

    move-result v3

    iget-object v9, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v9}, Landroid/widget/Editor;->-$$Nest$fgetmMinLineHeightForMagnifier(Landroid/widget/Editor;)I

    move-result v9

    if-ge v2, v9, :cond_5

    iget-object v9, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v9}, Landroid/widget/Editor;->-$$Nest$fgetmMinLineHeightForMagnifier(Landroid/widget/Editor;)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v3

    int-to-float v10, v2

    div-float v3, v9, v10

    :cond_5
    iget-object v9, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v9}, Landroid/widget/Editor;->-$$Nest$fgetmMagnifierAnimator(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v9

    invoke-static {v9}, Landroid/widget/Editor$MagnifierMotionAnimator;->-$$Nest$fgetmMagnifier(Landroid/widget/Editor$MagnifierMotionAnimator;)Landroid/widget/Magnifier;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Landroid/widget/Magnifier;->updateSourceFactors(IF)V

    iget-object v9, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v9}, Landroid/widget/Editor;->-$$Nest$fgetmMagnifierAnimator(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v9

    invoke-static {v9}, Landroid/widget/Editor$MagnifierMotionAnimator;->-$$Nest$fgetmMagnifier(Landroid/widget/Editor$MagnifierMotionAnimator;)Landroid/widget/Magnifier;

    move-result-object v9

    iget v10, v0, Landroid/graphics/PointF;->x:F

    iget v11, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v9, v10, v11}, Landroid/widget/Magnifier;->show(FF)V

    goto :goto_3

    :cond_6
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmMagnifierAnimator(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v2

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v4, v0, Landroid/graphics/PointF;->y:F

    invoke-static {v2, v3, v4}, Landroid/widget/Editor$MagnifierMotionAnimator;->-$$Nest$mshow(Landroid/widget/Editor$MagnifierMotionAnimator;FF)V

    :goto_3
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->updateHandlesVisibility()V

    goto :goto_4

    :cond_7
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->dismissMagnifier()V

    :goto_4
    return-void
.end method

.method protected abstract greylist-max-o updatePosition(FFZ)V
.end method

.method public greylist-max-o updatePosition(IIZZ)V
    .locals 6

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p4, v1}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZZ)V

    if-nez p3, :cond_0

    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    if-eqz v0, :cond_9

    :cond_0
    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    if-eq p2, v0, :cond_2

    :cond_1
    iget v0, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    iget v2, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    sub-int v2, p1, v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    iput v0, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    iget v0, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    iget v2, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    sub-int v2, p2, v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    iput v0, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    iput p1, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    iput p2, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    :cond_2
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->onHandleMoved()V

    :cond_3
    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsRestoring:Z

    if-nez v0, :cond_8

    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->shouldShow()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget v2, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    add-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    filled-new-array {v0, v2}, [I

    move-result-object v0

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->transformFromViewToWindowSpace([I)V

    aget v2, v0, v1

    iget v3, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    aput v2, v0, v1

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Landroid/widget/Editor$HandleView;->mIsHideAnimating:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    aget v4, v0, v1

    aget v3, v0, v3

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v3, v5, v5}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->isValid()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    iget-object v4, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    aget v5, v0, v1

    aget v3, v0, v3

    invoke-virtual {v2, v4, v1, v5, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mShowAnimator:Landroid/animation/ObjectAnimator;

    if-nez v2, :cond_5

    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getShowAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/Editor$HandleView;->mShowAnimator:Landroid/animation/ObjectAnimator;

    :cond_5
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mShowAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v2

    if-nez v2, :cond_6

    iget-boolean v2, p0, Landroid/widget/Editor$HandleView;->mIsSwitching:Z

    if-nez v2, :cond_6

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mShowAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    :cond_6
    :goto_0
    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->dismiss()V

    :cond_8
    :goto_1
    iput-boolean v1, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    :cond_9
    return-void
.end method

.method protected blacklist updatePositionDuringDragging(II)V
    .locals 7

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Landroid/widget/Editor$HandleView;->getLocationInWindow([I)V

    const/4 v1, 0x0

    aget v2, v0, v1

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    aput v2, v0, v1

    const/4 v2, 0x1

    aget v3, v0, v2

    iget-object v4, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    aput v3, v0, v2

    iget v3, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    neg-int v3, v3

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v4

    sub-int/2addr v3, v4

    aget v4, v0, v1

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    aget v3, v0, v2

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    iget v3, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget v4, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    filled-new-array {v3, v4}, [I

    move-result-object v3

    iget-object v4, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->transformFromViewToWindowSpace([I)V

    aget v4, v3, v1

    iget v5, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    aput v4, v3, v1

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    aget v1, v3, v1

    aget v2, v3, v2

    const/4 v5, -0x1

    invoke-virtual {v4, v1, v2, v5, v5}, Landroid/widget/PopupWindow;->update(IIII)V

    :cond_0
    return-void
.end method

.method protected abstract greylist-max-o updateSelection(I)V
.end method
