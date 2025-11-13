.class public Lcom/android/wm/shell/common/split/DividerView;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final DIVIDER_HEIGHT_PROPERTY:Lcom/android/wm/shell/common/split/DividerView$1;

.field public static final DIVIDER_MOUSE_OVER_BG_HEIGHT_PROPERTY:Lcom/android/wm/shell/common/split/DividerView$4;

.field public static final DIVIDER_MOUSE_OVER_BG_WIDTH_PROPERTY:Lcom/android/wm/shell/common/split/DividerView$3;


# instance fields
.field public final mAnimatorListener:Lcom/android/wm/shell/common/split/DividerView$2;

.field public mBackground:Landroid/view/View;

.field public final mBackgroundRect:Landroid/graphics/Rect;

.field public mCorners:Lcom/android/wm/shell/common/split/DividerRoundedCorner;

.field public mDividerBar:Landroid/widget/FrameLayout;

.field public final mDividerBounds:Landroid/graphics/Rect;

.field public mDividerPanel:Lcom/android/wm/shell/common/split/DividerPanel;

.field public mDividerResizeController:Lcom/android/wm/shell/common/split/DividerResizeController;

.field public mGestureDetector:Landroid/view/GestureDetector;

.field public final mH:Landroid/os/Handler;

.field public mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

.field public final mHandleDelegate:Lcom/android/wm/shell/common/split/DividerView$5;

.field public final mHandleHoverListener:Landroid/view/View$OnHoverListener;

.field public mHandleRegionHeight:I

.field public mHandleRegionWidth:I

.field public mHideHandle:Z

.field public final mInputManager:Landroid/hardware/input/InputManager;

.field public mInteractive:Z

.field public final mIsCellDivider:Z

.field public final mMouseOut:Lcom/android/wm/shell/common/split/DividerView$11;

.field public final mMouseOutAnimatorListener:Lcom/android/wm/shell/common/split/DividerView$9;

.field public final mMouseOutAnimatorSet:Landroid/animation/AnimatorSet;

.field public final mMouseOutRoundedCornerAnimator:Landroid/animation/ValueAnimator;

.field public final mMouseOver:Lcom/android/wm/shell/common/split/DividerView$10;

.field public final mMouseOverAnimatorListener:Lcom/android/wm/shell/common/split/DividerView$8;

.field public final mMouseOverAnimatorSet:Landroid/animation/AnimatorSet;

.field public mMouseOverBgScaleSize:I

.field public final mMouseOverRoundedCornerAnimator:Landroid/animation/ValueAnimator;

.field public mMoving:Z

.field public final mMultiSplitHandleDelegate:Lcom/android/wm/shell/common/split/DividerView$12;

.field public mNeedUpdateCursorWhenMoving:Z

.field public final mRoundedCornerUpdateListener:Lcom/android/wm/shell/common/split/DividerView$7;

.field public mSetTouchRegion:Z

.field public mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

.field public mSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

.field public mStartPos:I

.field public final mTempRect:Landroid/graphics/Rect;

.field public mTouchElevation:I

.field public final mTouchSlop:I

.field public mTouching:Z

.field public mVelocityTracker:Landroid/view/VelocityTracker;

.field public mViewHost:Landroid/view/SurfaceControlViewHost;


# direct methods
.method public static synthetic $r8$lambda$YGxiu2asQy_xuW4RhQgo25UjOYI(Lcom/android/wm/shell/common/split/DividerView;Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x7

    if-eq p1, v1, :cond_3

    const/16 v0, 0x9

    if-eq p1, v0, :cond_2

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mNeedUpdateCursorWhenMoving:Z

    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mH:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mMouseOver:Lcom/android/wm/shell/common/split/DividerView$10;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mH:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mMouseOut:Lcom/android/wm/shell/common/split/DividerView$11;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mH:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerView;->mMouseOut:Lcom/android/wm/shell/common/split/DividerView$11;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mH:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mMouseOver:Lcom/android/wm/shell/common/split/DividerView$10;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mH:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mMouseOut:Lcom/android/wm/shell/common/split/DividerView$11;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mH:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerView;->mMouseOver:Lcom/android/wm/shell/common/split/DividerView$10;

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    iget-boolean p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mNeedUpdateCursorWhenMoving:Z

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerView;->updateCursorType()V

    iput-boolean v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mNeedUpdateCursorWhenMoving:Z

    :cond_4
    :goto_0
    return-void
.end method

.method public static -$$Nest$msendTalkBackFeedback(Lcom/android/wm/shell/common/split/DividerView;I)V
    .locals 2

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x4000

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/wm/shell/common/split/DividerView$1;

    const-class v1, Ljava/lang/Integer;

    const-string v2, "height"

    invoke-direct {v0, v1, v2}, Lcom/android/wm/shell/common/split/DividerView$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/wm/shell/common/split/DividerView;->DIVIDER_HEIGHT_PROPERTY:Lcom/android/wm/shell/common/split/DividerView$1;

    new-instance v0, Lcom/android/wm/shell/common/split/DividerView$3;

    const-string/jumbo v3, "width"

    invoke-direct {v0, v1, v3}, Lcom/android/wm/shell/common/split/DividerView$3;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/wm/shell/common/split/DividerView;->DIVIDER_MOUSE_OVER_BG_WIDTH_PROPERTY:Lcom/android/wm/shell/common/split/DividerView$3;

    new-instance v0, Lcom/android/wm/shell/common/split/DividerView$4;

    invoke-direct {v0, v1, v2}, Lcom/android/wm/shell/common/split/DividerView$4;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/wm/shell/common/split/DividerView;->DIVIDER_MOUSE_OVER_BG_HEIGHT_PROPERTY:Lcom/android/wm/shell/common/split/DividerView$4;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mBackgroundRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mTouchSlop:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mSetTouchRegion:Z

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mMouseOverAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mMouseOutAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mMouseOverRoundedCornerAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mMouseOutRoundedCornerAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mH:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mTouching:Z

    iput-boolean p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mNeedUpdateCursorWhenMoving:Z

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mDividerBounds:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mTempRect:Landroid/graphics/Rect;

    new-instance p1, Lcom/android/wm/shell/common/split/DividerView$2;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/common/split/DividerView$2;-><init>(Lcom/android/wm/shell/common/split/DividerView;)V

    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mAnimatorListener:Lcom/android/wm/shell/common/split/DividerView$2;

    new-instance p1, Lcom/android/wm/shell/common/split/DividerView$5;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/common/split/DividerView$5;-><init>(Lcom/android/wm/shell/common/split/DividerView;)V

    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mHandleDelegate:Lcom/android/wm/shell/common/split/DividerView$5;

    new-instance p1, Lcom/android/wm/shell/common/split/DividerView$7;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/common/split/DividerView$7;-><init>(Lcom/android/wm/shell/common/split/DividerView;)V

    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mRoundedCornerUpdateListener:Lcom/android/wm/shell/common/split/DividerView$7;

    new-instance p1, Lcom/android/wm/shell/common/split/DividerView$8;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/common/split/DividerView$8;-><init>(Lcom/android/wm/shell/common/split/DividerView;)V

    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mMouseOverAnimatorListener:Lcom/android/wm/shell/common/split/DividerView$8;

    new-instance p1, Lcom/android/wm/shell/common/split/DividerView$9;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/common/split/DividerView$9;-><init>(Lcom/android/wm/shell/common/split/DividerView;)V

    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mMouseOutAnimatorListener:Lcom/android/wm/shell/common/split/DividerView$9;

    new-instance p1, Lcom/android/wm/shell/common/split/DividerView$10;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/common/split/DividerView$10;-><init>(Lcom/android/wm/shell/common/split/DividerView;)V

    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mMouseOver:Lcom/android/wm/shell/common/split/DividerView$10;

    new-instance p1, Lcom/android/wm/shell/common/split/DividerView$11;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/common/split/DividerView$11;-><init>(Lcom/android/wm/shell/common/split/DividerView;)V

    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mMouseOut:Lcom/android/wm/shell/common/split/DividerView$11;

    new-instance p1, Lcom/android/wm/shell/common/split/DividerView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/common/split/DividerView$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/common/split/DividerView;)V

    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mHandleHoverListener:Landroid/view/View$OnHoverListener;

    new-instance p1, Lcom/android/wm/shell/common/split/DividerView$12;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/common/split/DividerView$12;-><init>(Lcom/android/wm/shell/common/split/DividerView;)V

    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mMultiSplitHandleDelegate:Lcom/android/wm/shell/common/split/DividerView$12;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/wm/shell/common/split/DividerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/wm/shell/common/split/DividerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/android/wm/shell/common/split/DividerView;->mBackgroundRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p3

    iput p3, p0, Lcom/android/wm/shell/common/split/DividerView;->mTouchSlop:I

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/android/wm/shell/common/split/DividerView;->mSetTouchRegion:Z

    new-instance p4, Landroid/animation/AnimatorSet;

    invoke-direct {p4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p4, p0, Lcom/android/wm/shell/common/split/DividerView;->mMouseOverAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance p4, Landroid/animation/AnimatorSet;

    invoke-direct {p4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p4, p0, Lcom/android/wm/shell/common/split/DividerView;->mMouseOutAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance p4, Landroid/animation/ValueAnimator;

    invoke-direct {p4}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p4, p0, Lcom/android/wm/shell/common/split/DividerView;->mMouseOverRoundedCornerAnimator:Landroid/animation/ValueAnimator;

    new-instance p4, Landroid/animation/ValueAnimator;

    invoke-direct {p4}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p4, p0, Lcom/android/wm/shell/common/split/DividerView;->mMouseOutRoundedCornerAnimator:Landroid/animation/ValueAnimator;

    new-instance p4, Landroid/os/Handler;

    invoke-direct {p4}, Landroid/os/Handler;-><init>()V

    iput-object p4, p0, Lcom/android/wm/shell/common/split/DividerView;->mH:Landroid/os/Handler;

    const/4 p4, 0x0

    iput-boolean p4, p0, Lcom/android/wm/shell/common/split/DividerView;->mTouching:Z

    iput-boolean p3, p0, Lcom/android/wm/shell/common/split/DividerView;->mNeedUpdateCursorWhenMoving:Z

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/android/wm/shell/common/split/DividerView;->mDividerBounds:Landroid/graphics/Rect;

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/android/wm/shell/common/split/DividerView;->mTempRect:Landroid/graphics/Rect;

    new-instance p3, Lcom/android/wm/shell/common/split/DividerView$2;

    invoke-direct {p3, p0}, Lcom/android/wm/shell/common/split/DividerView$2;-><init>(Lcom/android/wm/shell/common/split/DividerView;)V

    iput-object p3, p0, Lcom/android/wm/shell/common/split/DividerView;->mAnimatorListener:Lcom/android/wm/shell/common/split/DividerView$2;

    new-instance p3, Lcom/android/wm/shell/common/split/DividerView$5;

    invoke-direct {p3, p0}, Lcom/android/wm/shell/common/split/DividerView$5;-><init>(Lcom/android/wm/shell/common/split/DividerView;)V

    iput-object p3, p0, Lcom/android/wm/shell/common/split/DividerView;->mHandleDelegate:Lcom/android/wm/shell/common/split/DividerView$5;

    new-instance p3, Lcom/android/wm/shell/common/split/DividerView$7;

    invoke-direct {p3, p0}, Lcom/android/wm/shell/common/split/DividerView$7;-><init>(Lcom/android/wm/shell/common/split/DividerView;)V

    iput-object p3, p0, Lcom/android/wm/shell/common/split/DividerView;->mRoundedCornerUpdateListener:Lcom/android/wm/shell/common/split/DividerView$7;

    new-instance p3, Lcom/android/wm/shell/common/split/DividerView$8;

    invoke-direct {p3, p0}, Lcom/android/wm/shell/common/split/DividerView$8;-><init>(Lcom/android/wm/shell/common/split/DividerView;)V

    iput-object p3, p0, Lcom/android/wm/shell/common/split/DividerView;->mMouseOverAnimatorListener:Lcom/android/wm/shell/common/split/DividerView$8;

    new-instance p3, Lcom/android/wm/shell/common/split/DividerView$9;

    invoke-direct {p3, p0}, Lcom/android/wm/shell/common/split/DividerView$9;-><init>(Lcom/android/wm/shell/common/split/DividerView;)V

    iput-object p3, p0, Lcom/android/wm/shell/common/split/DividerView;->mMouseOutAnimatorListener:Lcom/android/wm/shell/common/split/DividerView$9;

    new-instance p3, Lcom/android/wm/shell/common/split/DividerView$10;

    invoke-direct {p3, p0}, Lcom/android/wm/shell/common/split/DividerView$10;-><init>(Lcom/android/wm/shell/common/split/DividerView;)V

    iput-object p3, p0, Lcom/android/wm/shell/common/split/DividerView;->mMouseOver:Lcom/android/wm/shell/common/split/DividerView$10;

    new-instance p3, Lcom/android/wm/shell/common/split/DividerView$11;

    invoke-direct {p3, p0}, Lcom/android/wm/shell/common/split/DividerView$11;-><init>(Lcom/android/wm/shell/common/split/DividerView;)V

    iput-object p3, p0, Lcom/android/wm/shell/common/split/DividerView;->mMouseOut:Lcom/android/wm/shell/common/split/DividerView$11;

    new-instance p3, Lcom/android/wm/shell/common/split/DividerView$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/android/wm/shell/common/split/DividerView$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/common/split/DividerView;)V

    iput-object p3, p0, Lcom/android/wm/shell/common/split/DividerView;->mHandleHoverListener:Landroid/view/View$OnHoverListener;

    new-instance p3, Lcom/android/wm/shell/common/split/DividerView$12;

    invoke-direct {p3, p0}, Lcom/android/wm/shell/common/split/DividerView$12;-><init>(Lcom/android/wm/shell/common/split/DividerView;)V

    iput-object p3, p0, Lcom/android/wm/shell/common/split/DividerView;->mMultiSplitHandleDelegate:Lcom/android/wm/shell/common/split/DividerView$12;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p3

    sget-object v0, Lcom/android/wm/shell/R$styleable;->DividerView:[I

    invoke-virtual {p3, p2, v0, p4, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x3

    :try_start_0
    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/wm/shell/common/split/DividerView;->mIsCellDivider:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    const-class p2, Landroid/hardware/input/InputManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/InputManager;

    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mInputManager:Landroid/hardware/input/InputManager;

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method

.method public static synthetic access$000(Lcom/android/wm/shell/common/split/DividerView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/wm/shell/common/split/DividerView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/android/wm/shell/common/split/DividerView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/android/wm/shell/common/split/DividerView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/android/wm/shell/common/split/DividerView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/android/wm/shell/common/split/DividerView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$1400(Lcom/android/wm/shell/common/split/DividerView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$1500(Lcom/android/wm/shell/common/split/DividerView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$1600(Lcom/android/wm/shell/common/split/DividerView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$1700(Lcom/android/wm/shell/common/split/DividerView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/wm/shell/common/split/DividerView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/wm/shell/common/split/DividerView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/wm/shell/common/split/DividerView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/wm/shell/common/split/DividerView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/wm/shell/common/split/DividerView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/wm/shell/common/split/DividerView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/android/wm/shell/common/split/DividerView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/android/wm/shell/common/split/DividerView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public final getCurrentPosition()I
    .locals 1

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_CELL_DIVIDER:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mIsCellDivider:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerView;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellDividerPosition:I

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerView;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerPosition:I

    :goto_0
    return p0
.end method

.method public final isVerticalDivision()Z
    .locals 3

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_DIVIDER:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    if-eqz v0, :cond_1

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_CELL_DIVIDER:Z

    if-eqz v2, :cond_0

    iget-boolean p0, p0, Lcom/android/wm/shell/common/split/DividerView;->mIsCellDivider:Z

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->isVerticalDivision()Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    :cond_0
    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->isVerticalDivision()Z

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public final onFinishInflate()V
    .locals 4

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a03a0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mDividerBar:Landroid/widget/FrameLayout;

    const v0, 0x7f0a03ab

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/common/split/DividerHandleView;

    iput-object v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    const v0, 0x7f0a03ac

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/common/split/DividerRoundedCorner;

    iput-object v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mCorners:Lcom/android/wm/shell/common/split/DividerRoundedCorner;

    const v0, 0x7f0a03aa

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mBackground:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/split/DividerView;->updateBackgroundColor(Z)V

    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f071455

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/common/split/DividerView;->mMouseOverBgScaleSize:I

    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    iget-object v2, p0, Lcom/android/wm/shell/common/split/DividerView;->mHandleHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070351

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/common/split/DividerView;->mTouchElevation:I

    new-instance v1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/android/wm/shell/common/split/DividerView$DoubleTapListener;

    invoke-direct {v3, p0, v0}, Lcom/android/wm/shell/common/split/DividerView$DoubleTapListener;-><init>(Lcom/android/wm/shell/common/split/DividerView;I)V

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/wm/shell/common/split/DividerView;->mInteractive:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mHideHandle:Z

    invoke-virtual {p0, p0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_ACCESSIBILITY:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerView;->mMultiSplitHandleDelegate:Lcom/android/wm/shell/common/split/DividerView$12;

    invoke-virtual {v0, p0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerView;->mHandleDelegate:Lcom/android/wm/shell/common/split/DividerView$5;

    invoke-virtual {v0, p0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :goto_0
    return-void
.end method

.method public final onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const-string/jumbo v0, "systemui"

    const-string v1, "cursor_hover_states_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x9

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerView;->setHovering()V

    return v3

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerView;->releaseHovering()V

    return v3

    :cond_2
    return v2
.end method

.method public final onInsetsChanged(Landroid/view/InsetsState;Z)V
    .locals 5

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_CELL_DIVIDER:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mIsCellDivider:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerView;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroid/graphics/Rect;

    iget-object v1, v1, Lcom/android/wm/shell/common/split/SplitLayout;->mCellDividerBounds:Landroid/graphics/Rect;

    invoke-direct {v2, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerView;->mTempRect:Landroid/graphics/Rect;

    iget-object v0, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_0
    sget v0, Landroid/view/InsetsSource;->ID_IME:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/InsetsState;->isSourceOrDefaultVisible(II)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/InsetsState;->sourceSize()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_1
    if-ltz v0, :cond_2

    invoke-virtual {p1, v0}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/InsetsSource;->getType()I

    move-result v3

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v4

    if-ne v3, v4, :cond_1

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/InsetsSource;->hasFlags(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/wm/shell/common/split/DividerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/InsetsSource;->calculateVisibleInsets(Landroid/graphics/Rect;)Landroid/graphics/Insets;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mDividerResizeController:Lcom/android/wm/shell/common/split/DividerResizeController;

    if-eqz p1, :cond_3

    iget-boolean v0, p1, Lcom/android/wm/shell/common/split/DividerResizeController;->mIsResizing:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerView;->getCurrentPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/split/DividerResizeController;->finishResizing(I)V

    :cond_3
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mTempRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mDividerBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    if-eqz p2, :cond_4

    sget-object p1, Lcom/android/wm/shell/common/split/DividerView;->DIVIDER_HEIGHT_PROPERTY:Lcom/android/wm/shell/common/split/DividerView$1;

    iget-object p2, p0, Lcom/android/wm/shell/common/split/DividerView;->mDividerBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    filled-new-array {p2, v0}, [I

    move-result-object p2

    invoke-static {p0, p1, p2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    sget-object p2, Landroid/view/InsetsController;->RESIZE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object p2, p0, Lcom/android/wm/shell/common/split/DividerView;->mAnimatorListener:Lcom/android/wm/shell/common/split/DividerView$2;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_2

    :cond_4
    sget-object p1, Lcom/android/wm/shell/common/split/DividerView;->DIVIDER_HEIGHT_PROPERTY:Lcom/android/wm/shell/common/split/DividerView$1;

    iget-object p2, p0, Lcom/android/wm/shell/common/split/DividerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/android/wm/shell/common/split/DividerView$1;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-boolean v1, p0, Lcom/android/wm/shell/common/split/DividerView;->mSetTouchRegion:Z

    :goto_2
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mDividerBounds:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_5
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 2

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-boolean p2, p0, Lcom/android/wm/shell/common/split/DividerView;->mSetTouchRegion:Z

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/wm/shell/common/split/DividerView;->mDividerBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    iget p4, p0, Lcom/android/wm/shell/common/split/DividerView;->mHandleRegionWidth:I

    sub-int/2addr p2, p4

    div-int/lit8 p2, p2, 0x2

    iget-object p4, p0, Lcom/android/wm/shell/common/split/DividerView;->mDividerBounds:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p4

    iget p5, p0, Lcom/android/wm/shell/common/split/DividerView;->mHandleRegionHeight:I

    sub-int/2addr p4, p5

    div-int/lit8 p4, p4, 0x2

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mTempRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/wm/shell/common/split/DividerView;->mHandleRegionWidth:I

    add-int/2addr v1, p2

    add-int/2addr p5, p4

    invoke-virtual {v0, p2, p4, v1, p5}, Landroid/graphics/Rect;->set(IIII)V

    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MODE:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/wm/shell/common/split/DividerView;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object p2, p2, Lcom/android/wm/shell/common/split/SplitLayout;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-boolean p2, p2, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsFlexPanelMode:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/wm/shell/common/split/DividerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    :cond_0
    iget-object p2, p0, Lcom/android/wm/shell/common/split/DividerView;->mSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    iget-object p4, p0, Lcom/android/wm/shell/common/split/DividerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p4}, Lcom/android/wm/shell/common/split/SplitWindowManager;->setTouchRegion(Landroid/graphics/Rect;)V

    iput-boolean p3, p0, Lcom/android/wm/shell/common/split/DividerView;->mSetTouchRegion:Z

    :cond_1
    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-boolean p1, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mIsLeftRightSplit:Z

    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_CELL_DIVIDER:Z

    if-eqz p2, :cond_2

    iget-boolean p2, p0, Lcom/android/wm/shell/common/split/DividerView;->mIsCellDivider:Z

    if-eqz p2, :cond_2

    xor-int/lit8 p1, p1, 0x1

    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p4, 0x7f071450

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    sget-boolean p4, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MODE:Z

    if-eqz p4, :cond_3

    iget-object p4, p0, Lcom/android/wm/shell/common/split/DividerView;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object p4, p4, Lcom/android/wm/shell/common/split/SplitLayout;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-boolean p4, p4, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsFlexPanelMode:Z

    if-eqz p4, :cond_3

    move p2, p3

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p4

    sub-int/2addr p4, p2

    div-int/lit8 p4, p4, 0x2

    goto :goto_0

    :cond_4
    move p4, p3

    :goto_0
    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p3

    sub-int/2addr p3, p2

    div-int/lit8 p3, p3, 0x2

    :goto_1
    if-eqz p1, :cond_6

    add-int p5, p4, p2

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p5

    :goto_2
    if-eqz p1, :cond_7

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p1

    goto :goto_3

    :cond_7
    add-int p1, p3, p2

    :goto_3
    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerView;->mBackgroundRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p4, p3, p5, p1}, Landroid/graphics/Rect;->set(IIII)V

    :cond_8
    return-void
.end method

.method public final onMeasure(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_DIVIDER:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerView;->isVerticalDivision()Z

    move-result p2

    const/4 v0, -0x1

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerView;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSize:I

    iput p0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/4 p0, 0x1

    iput p0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    :cond_0
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerView;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSize:I

    iput p0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 p0, 0x10

    iput p0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_1
    :goto_0
    return-void
.end method

.method public final onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerView;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-boolean p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mIsLeftRightSplit:Z

    if-eqz p0, :cond_0

    const/16 p0, 0x4e26

    goto :goto_0

    :cond_0
    const/16 p0, 0x4e27

    :goto_0
    invoke-static {p1, p0}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p0

    return-object p0
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12

    const/4 p1, 0x1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerView;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    const/4 v2, 0x0

    if-eqz v1, :cond_21

    iget-boolean v3, p0, Lcom/android/wm/shell/common/split/DividerView;->mInteractive:Z

    if-eqz v3, :cond_21

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MODE:Z

    if-eqz v3, :cond_0

    iget-object v1, v1, Lcom/android/wm/shell/common/split/SplitLayout;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-boolean v1, v1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsFlexPanelMode:Z

    if-eqz v1, :cond_0

    goto/16 :goto_f

    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-virtual {p2, v1, v3}, Landroid/view/MotionEvent;->setLocation(FF)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_DIVIDER:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerView;->isVerticalDivision()Z

    move-result v3

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/wm/shell/common/split/DividerView;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-boolean v3, v3, Lcom/android/wm/shell/common/split/SplitLayout;->mIsLeftRightSplit:Z

    :goto_0
    if-eqz v3, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    :goto_1
    float-to-int v4, v4

    if-eqz v1, :cond_3

    iget-object v5, p0, Lcom/android/wm/shell/common/split/DividerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v5, :cond_3

    return v2

    :cond_3
    const/4 v5, 0x3

    if-eqz v1, :cond_1e

    const/4 v6, 0x0

    if-eq v1, p1, :cond_1a

    if-eq v1, v0, :cond_4

    if-eq v1, v5, :cond_1a

    goto/16 :goto_e

    :cond_4
    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-boolean v1, p0, Lcom/android/wm/shell/common/split/DividerView;->mMoving:Z

    const-string v3, "DividerResizeController"

    if-nez v1, :cond_a

    iget v1, p0, Lcom/android/wm/shell/common/split/DividerView;->mStartPos:I

    sub-int v1, v4, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v7, p0, Lcom/android/wm/shell/common/split/DividerView;->mTouchSlop:I

    if-le v1, v7, :cond_a

    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerView;->mDividerResizeController:Lcom/android/wm/shell/common/split/DividerResizeController;

    iget-object v7, p0, Lcom/android/wm/shell/common/split/DividerView;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-boolean v8, v1, Lcom/android/wm/shell/common/split/DividerResizeController;->mResizingRequested:Z

    if-eqz v8, :cond_5

    const-string/jumbo v1, "startResizing: failed, already resizing state!"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_5
    iget-boolean v8, v1, Lcom/android/wm/shell/common/split/DividerResizeController;->mUseGuideViewByMultiStar:Z

    sput-boolean v8, Lcom/android/wm/shell/common/split/DividerResizeController;->USE_GUIDE_VIEW_EFFECTS:Z

    iget-object v8, v1, Lcom/android/wm/shell/common/split/DividerResizeController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v8}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->closeHandleMenuIfNeeded()V

    iput-boolean p1, v1, Lcom/android/wm/shell/common/split/DividerResizeController;->mResizingRequested:Z

    iput-object v7, v1, Lcom/android/wm/shell/common/split/DividerResizeController;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iput-object p0, v1, Lcom/android/wm/shell/common/split/DividerResizeController;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    iget v7, v7, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSize:I

    iput v7, v1, Lcom/android/wm/shell/common/split/DividerResizeController;->mDividerSize:I

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerView;->isVerticalDivision()Z

    move-result v7

    xor-int/2addr v7, p1

    iput-boolean v7, v1, Lcom/android/wm/shell/common/split/DividerResizeController;->mIsHorizontalDivision:Z

    iget-object v7, v1, Lcom/android/wm/shell/common/split/DividerResizeController;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    invoke-virtual {v7}, Lcom/android/wm/shell/common/split/DividerView;->getCurrentPosition()I

    move-result v7

    iput v7, v1, Lcom/android/wm/shell/common/split/DividerResizeController;->mCurrentDividerPosition:I

    iget-object v7, v1, Lcom/android/wm/shell/common/split/DividerResizeController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070aaa

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v1, Lcom/android/wm/shell/common/split/DividerResizeController;->mDefaultHandleMoveThreshold:I

    iget-object v7, v1, Lcom/android/wm/shell/common/split/DividerResizeController;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f0d00e9

    invoke-virtual {v7, v8, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/wm/shell/common/split/DividerResizeLayout;

    iput-object v6, v1, Lcom/android/wm/shell/common/split/DividerResizeController;->mDividerResizeLayout:Lcom/android/wm/shell/common/split/DividerResizeLayout;

    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_NATURAL_RESIZING:Z

    if-eqz v6, :cond_7

    iget-object v7, v1, Lcom/android/wm/shell/common/split/DividerResizeController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v7}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitActive()Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, v1, Lcom/android/wm/shell/common/split/DividerResizeController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v7}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getCellHostStageType()I

    move-result v7

    if-nez v7, :cond_6

    move v7, p1

    goto :goto_2

    :cond_6
    move v7, v2

    :goto_2
    iput v7, v1, Lcom/android/wm/shell/common/split/DividerResizeController;->mHalfSplitStageType:I

    :cond_7
    iget-object v7, v1, Lcom/android/wm/shell/common/split/DividerResizeController;->mResizeAlgorithm:Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v7, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->this$0:Lcom/android/wm/shell/common/split/DividerResizeController;

    if-eqz v6, :cond_8

    iget-object v6, v8, Lcom/android/wm/shell/common/split/DividerResizeController;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    if-eqz v6, :cond_8

    iget-boolean v6, v6, Lcom/android/wm/shell/common/split/DividerView;->mIsCellDivider:Z

    if-eqz v6, :cond_8

    iget-object v6, v8, Lcom/android/wm/shell/common/split/DividerResizeController;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v6}, Lcom/android/wm/shell/common/split/SplitLayout;->getCellSnapAlgorithm()Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;

    move-result-object v6

    goto :goto_3

    :cond_8
    iget-object v6, v8, Lcom/android/wm/shell/common/split/DividerResizeController;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object v6, v6, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSnapAlgorithm:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;

    :goto_3
    iput-object v6, v7, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mDividerSnapAlgorithm:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;

    iget-boolean v6, v8, Lcom/android/wm/shell/common/split/DividerResizeController;->mIsHorizontalDivision:Z

    if-eqz v6, :cond_9

    iget-object v6, v8, Lcom/android/wm/shell/common/split/DividerResizeController;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Landroid/graphics/Rect;

    iget-object v6, v6, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-direct {v8, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v6

    goto :goto_4

    :cond_9
    iget-object v6, v8, Lcom/android/wm/shell/common/split/DividerResizeController;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Landroid/graphics/Rect;

    iget-object v6, v6, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-direct {v8, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v6

    :goto_4
    iput v6, v7, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mDisplaySize:I

    iget-object v8, v7, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mDividerSnapAlgorithm:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;

    iget-object v9, v8, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    iget v9, v9, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;->position:I

    iput v9, v7, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mFirstSplitTargetPosition:I

    iget-object v10, v8, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mMiddleTarget:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    iget v10, v10, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;->position:I

    iput v10, v7, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mMiddleTargetPosition:I

    iget-object v8, v8, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    iget v8, v8, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;->position:I

    iput v8, v7, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mLastSplitTargetPosition:I

    div-int/lit8 v10, v9, 0x2

    iput v10, v7, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mDismissStartThreshold:I

    sub-int v11, v6, v8

    div-int/2addr v11, v0

    sub-int/2addr v6, v11

    iput v6, v7, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mDismissEndThreshold:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    const/high16 v11, 0x3f200000    # 0.625f

    mul-float/2addr v9, v11

    float-to-int v9, v9

    add-int/2addr v10, v9

    iput v10, v7, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mFirstFadeOutPosition:I

    sub-int v8, v6, v8

    int-to-float v8, v8

    mul-float/2addr v8, v11

    float-to-int v8, v8

    sub-int/2addr v6, v8

    iput v6, v7, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mLastFadeOutPosition:I

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "ResizeAlgorithm_init: "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v1, Lcom/android/wm/shell/common/split/DividerResizeController;->mDividerResizeLayout:Lcom/android/wm/shell/common/split/DividerResizeLayout;

    iget-object v8, v1, Lcom/android/wm/shell/common/split/DividerResizeController;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object v1, v1, Lcom/android/wm/shell/common/split/DividerResizeController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v6, p0, v8, v1, v7}, Lcom/android/wm/shell/common/split/DividerResizeLayout;->init(Lcom/android/wm/shell/common/split/DividerView;Lcom/android/wm/shell/common/split/SplitLayout;Lcom/android/wm/shell/splitscreen/StageCoordinator;Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;)V

    :goto_5
    iput-boolean p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mMoving:Z

    :cond_a
    iget-boolean v1, p0, Lcom/android/wm/shell/common/split/DividerView;->mMoving:Z

    if-eqz v1, :cond_20

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    if-ne v1, v5, :cond_b

    iget-boolean v1, p0, Lcom/android/wm/shell/common/split/DividerView;->mNeedUpdateCursorWhenMoving:Z

    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerView;->updateCursorType()V

    iput-boolean v2, p0, Lcom/android/wm/shell/common/split/DividerView;->mNeedUpdateCursorWhenMoving:Z

    :cond_b
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerView;->getCurrentPosition()I

    move-result v1

    add-int/2addr v1, v4

    iget v4, p0, Lcom/android/wm/shell/common/split/DividerView;->mStartPos:I

    sub-int/2addr v1, v4

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerView;->mDividerResizeController:Lcom/android/wm/shell/common/split/DividerResizeController;

    iget-boolean v4, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mResizingRequested:Z

    if-eqz v4, :cond_20

    iget-boolean v4, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mIsFinishing:Z

    if-eqz v4, :cond_c

    goto/16 :goto_e

    :cond_c
    iget-boolean v4, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mIsResizing:Z

    if-eqz v4, :cond_d

    goto :goto_6

    :cond_d
    iget v4, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mCurrentDividerPosition:I

    sub-int/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v6, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mDefaultHandleMoveThreshold:I

    if-le v4, v6, :cond_20

    iput-boolean p1, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mIsResizing:Z

    const-string/jumbo v4, "validateMoveEvent: start move divider, pos="

    invoke-static {v1, v4, v3}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    if-eqz v3, :cond_e

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result p2

    if-ne p2, v5, :cond_e

    const-string p2, "1000"

    const-string v3, "From Mouse snapping"

    invoke-static {p2, v3}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    :goto_6
    iget-object p2, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mResizeAlgorithm:Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;

    invoke-static {p2, v1}, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->-$$Nest$mupdate(Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;I)V

    sget-boolean v1, Lcom/android/wm/shell/common/split/DividerResizeController;->USE_GUIDE_VIEW_EFFECTS:Z

    if-eqz v1, :cond_f

    invoke-virtual {p2}, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->getSnapTargetPosition()I

    move-result v1

    goto :goto_7

    :cond_f
    invoke-virtual {p2}, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->isInStartDismissZone()Z

    move-result v1

    if-eqz v1, :cond_10

    iget v1, p2, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mDismissStartThreshold:I

    goto :goto_7

    :cond_10
    invoke-virtual {p2}, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->isInEndDismissZone()Z

    move-result v1

    if-eqz v1, :cond_11

    iget v1, p2, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mDismissEndThreshold:I

    goto :goto_7

    :cond_11
    iget v1, p2, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mTouchPosition:I

    :goto_7
    invoke-virtual {p2}, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->getSnapTargetPosition()I

    move-result v3

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerResizeController;->mDividerResizeLayout:Lcom/android/wm/shell/common/split/DividerResizeLayout;

    iget p2, p2, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mSplitDismissSide:I

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v5, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mResizeTargets:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    sub-int/2addr v5, p1

    :goto_8
    if-ltz v5, :cond_20

    iget-object v6, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mResizeTargets:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;

    if-eqz v6, :cond_19

    if-nez p2, :cond_12

    iget-object v7, v6, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, v1, v7}, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->calculateBoundsForPosition(ILandroid/graphics/Rect;)V

    iget-object v7, v6, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mEndBounds:Landroid/graphics/Rect;

    iget-object v8, v6, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iput-boolean p1, v6, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mShouldPlayHaptic:Z

    goto :goto_9

    :cond_12
    iget-object v7, v6, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, v3, v7}, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->calculateBoundsForPosition(ILandroid/graphics/Rect;)V

    iget-object v7, v6, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mEndBounds:Landroid/graphics/Rect;

    iget-object v8, v6, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_9
    iget-boolean v7, v6, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mIsResizing:Z

    iget-object v8, v6, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->this$0:Lcom/android/wm/shell/common/split/DividerResizeLayout;

    if-nez v7, :cond_15

    iput-boolean p1, v6, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mIsResizing:Z

    iget-object v7, v6, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mView:Landroid/widget/ImageView;

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v7, v6, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mView:Landroid/widget/ImageView;

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v7, v6, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mBlurView:Landroid/widget/ImageView;

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-boolean v7, Lcom/android/wm/shell/common/split/DividerResizeController;->USE_GUIDE_VIEW_EFFECTS:Z

    if-eqz v7, :cond_13

    iget-object v7, v8, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mGuideBarView:Landroid/widget/ImageView;

    if-eqz v7, :cond_13

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_13
    iget-object v7, v6, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mEndBounds:Landroid/graphics/Rect;

    const-wide/16 v9, 0x12c

    invoke-virtual {v6, v7, p1, v9, v10}, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->startBoundsAnimation(Landroid/graphics/Rect;ZJ)V

    iget-object v7, v6, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mBlurAnimator:Landroid/animation/ValueAnimator;

    if-eqz v7, :cond_14

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->end()V

    :cond_14
    new-array v7, v0, [F

    fill-array-data v7, :array_0

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    iput-object v7, v6, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mBlurAnimator:Landroid/animation/ValueAnimator;

    new-instance v9, Lcom/android/wm/shell/common/split/DividerResizeLayout$$ExternalSyntheticLambda3;

    invoke-direct {v9, v6, p1}, Lcom/android/wm/shell/common/split/DividerResizeLayout$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v7, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v7, v6, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mBlurAnimator:Landroid/animation/ValueAnimator;

    new-instance v9, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget$2;

    invoke-direct {v9, v6}, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget$2;-><init>(Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;)V

    invoke-virtual {v7, v9}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v7, v6, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mBlurAnimator:Landroid/animation/ValueAnimator;

    sget-object v9, Lcom/android/wm/shell/common/split/DividerResizeLayout;->SINE_OUT_60:Landroid/view/animation/Interpolator;

    invoke-virtual {v7, v9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v7, v6, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mBlurAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v9, 0x64

    invoke-virtual {v7, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v7, v6, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mBlurAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    invoke-virtual {v6, p1}, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->startOutlineInsetsAnimation(Z)V

    :cond_15
    iget v7, v6, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mSplitDismissSide:I

    if-eq v7, p2, :cond_17

    iput p2, v6, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mSplitDismissSide:I

    if-nez p2, :cond_16

    move v7, p1

    goto :goto_a

    :cond_16
    move v7, v2

    :goto_a
    invoke-virtual {v6, v7}, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->startOutlineInsetsAnimation(Z)V

    iget-object v7, v6, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mTmpBounds:Landroid/graphics/Rect;

    const-wide/16 v9, 0x190

    invoke-virtual {v6, v7, v2, v9, v10}, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->startBoundsAnimation(Landroid/graphics/Rect;ZJ)V

    :cond_17
    iget-object v7, v6, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    if-eqz v7, :cond_18

    goto :goto_b

    :cond_18
    iget-object v7, v6, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->updateViewBounds(Landroid/graphics/Rect;)V

    :goto_b
    iget-boolean v7, v6, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mShouldPlayHaptic:Z

    if-eqz v7, :cond_19

    if-eqz p2, :cond_19

    iput-boolean v2, v6, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mShouldPlayHaptic:Z

    invoke-virtual {v8, v2}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    :cond_19
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_8

    :cond_1a
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerView;->releaseTouching()V

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    if-ne v0, v5, :cond_1b

    iput-boolean p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mNeedUpdateCursorWhenMoving:Z

    :cond_1b
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object p2, p0, Lcom/android/wm/shell/common/split/DividerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v0, 0x3e8

    invoke-virtual {p2, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    if-eqz v3, :cond_1c

    iget-object p2, p0, Lcom/android/wm/shell/common/split/DividerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p2}, Landroid/view/VelocityTracker;->getXVelocity()F

    goto :goto_c

    :cond_1c
    iget-object p2, p0, Lcom/android/wm/shell/common/split/DividerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p2}, Landroid/view/VelocityTracker;->getYVelocity()F

    :goto_c
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_CELL_DIVIDER:Z

    if-eqz p2, :cond_1d

    iget-boolean p2, p0, Lcom/android/wm/shell/common/split/DividerView;->mIsCellDivider:Z

    if-eqz p2, :cond_1d

    iget-object p2, p0, Lcom/android/wm/shell/common/split/DividerView;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget p2, p2, Lcom/android/wm/shell/common/split/SplitLayout;->mCellDividerPosition:I

    goto :goto_d

    :cond_1d
    iget-object p2, p0, Lcom/android/wm/shell/common/split/DividerView;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget p2, p2, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerPosition:I

    :goto_d
    add-int/2addr p2, v4

    iget v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mStartPos:I

    sub-int/2addr p2, v0

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mDividerResizeController:Lcom/android/wm/shell/common/split/DividerResizeController;

    invoke-virtual {v0, p2}, Lcom/android/wm/shell/common/split/DividerResizeController;->finishResizing(I)V

    iput-boolean v2, p0, Lcom/android/wm/shell/common/split/DividerView;->mMoving:Z

    iget-object p2, p0, Lcom/android/wm/shell/common/split/DividerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p2, :cond_20

    invoke-virtual {p2}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v6, p0, Lcom/android/wm/shell/common/split/DividerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_e

    :cond_1e
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p0, v2}, Lcom/android/wm/shell/common/split/DividerView;->setSlippery(Z)V

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/wm/shell/animation/Interpolators;->TOUCH_RESPONSE:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v6, 0x96

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/wm/shell/common/split/DividerView;->mTouchElevation:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iput-boolean p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mTouching:Z

    iput v4, p0, Lcom/android/wm/shell/common/split/DividerView;->mStartPos:I

    iput-boolean v2, p0, Lcom/android/wm/shell/common/split/DividerView;->mMoving:Z

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget v1, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerPosition:I

    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/common/split/SplitLayout;->updateDividerBounds(IZ)V

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object v1, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    const/16 v3, 0x34

    invoke-static {v3, v1, v0}, Lcom/android/wm/shell/common/InteractionJankMonitorUtils;->beginTracing(ILandroid/content/Context;Landroid/view/SurfaceControl;)V

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result p2

    if-ne p2, v5, :cond_1f

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerView;->updateCursorType()V

    :cond_1f
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    :cond_20
    :goto_e
    return p1

    :cond_21
    :goto_f
    return v2

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final openDividerPanelIfNeeded()V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mDividerPanel:Lcom/android/wm/shell/common/split/DividerPanel;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/DividerPanel;->isSupportPanelOpenPolicy()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_CELL_DIVIDER:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mIsCellDivider:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object v0, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->closeHandleMenuIfNeeded()V

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerView;->mDividerPanel:Lcom/android/wm/shell/common/split/DividerPanel;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerPanel;->updateDividerPanel()V

    :cond_1
    :goto_0
    return-void
.end method

.method public releaseHovering()V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/split/DividerHandleView;->setHovering(Z)V

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object v0, Lcom/android/wm/shell/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public final releaseTouching()V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/split/DividerView;->setSlippery(Z)V

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/wm/shell/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mTouching:Z

    return-void
.end method

.method public setHovering()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/split/DividerHandleView;->setHovering(Z)V

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/wm/shell/animation/Interpolators;->TOUCH_RESPONSE:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget p0, p0, Lcom/android/wm/shell/common/split/DividerView;->mTouchElevation:I

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public final setInteractive(Ljava/lang/String;ZZ)V
    .locals 8

    iget-boolean v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mInteractive:Z

    if-ne p2, v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    const-string v0, "interactive"

    goto :goto_0

    :cond_1
    const-string v0, "non-interactive"

    :goto_0
    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v0, v3, p1}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v5, 0xc

    const-string v6, "Set divider bar %s hide handle=%b from %s"

    const-wide v3, 0x54441870d4ab3ec6L    # 8.584733389479257E97

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iput-boolean p2, p0, Lcom/android/wm/shell/common/split/DividerView;->mInteractive:Z

    iput-boolean p3, p0, Lcom/android/wm/shell/common/split/DividerView;->mHideHandle:Z

    if-nez p2, :cond_3

    if-eqz p3, :cond_3

    iget-boolean p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mMoving:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget p2, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerPosition:I

    new-instance p3, Lcom/android/wm/shell/common/split/DividerView$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, p2}, Lcom/android/wm/shell/common/split/DividerView$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/common/split/DividerView;I)V

    const/16 v0, 0xfa

    invoke-virtual {p1, v1, p2, v0, p3}, Lcom/android/wm/shell/common/split/SplitLayout;->flingDividerPosition(IIILjava/lang/Runnable;)V

    iput-boolean v1, p0, Lcom/android/wm/shell/common/split/DividerView;->mMoving:Z

    :cond_3
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerView;->releaseTouching()V

    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    iget-boolean p2, p0, Lcom/android/wm/shell/common/split/DividerView;->mInteractive:Z

    if-nez p2, :cond_4

    iget-boolean p0, p0, Lcom/android/wm/shell/common/split/DividerView;->mHideHandle:Z

    if-eqz p0, :cond_4

    const/4 v1, 0x4

    :cond_4
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final setSlippery(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mViewHost:Landroid/view/SurfaceControlViewHost;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x20000000

    and-int v3, v1, v2

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-ne v3, p1, :cond_2

    return-void

    :cond_2
    if-eqz p1, :cond_3

    or-int p1, v1, v2

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_1

    :cond_3
    const p1, -0x20000001

    and-int/2addr p1, v1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_1
    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerView;->mViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {p0, v0}, Landroid/view/SurfaceControlViewHost;->relayout(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public final updateBackgroundColor(Z)V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerView;->mBackground:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1060430

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method

.method public final updateCursorType()V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerView;->mInputManager:Landroid/hardware/input/InputManager;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerView;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-boolean p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mIsLeftRightSplit:Z

    if-nez p0, :cond_0

    const/16 p0, 0x278a

    goto :goto_0

    :cond_0
    const/16 p0, 0x278b

    :goto_0
    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    :cond_1
    return-void
.end method
