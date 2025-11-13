.class public final Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;
.super Ljava/lang/Object;
.source "LocalFloatingToolbarPopup.java"

# interfaces
.implements Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;,
        Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$FloatingOnAttachStateChangeListener;,
        Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanelViewHelper;,
        Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$LogAccelerateInterpolator;,
        Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;
    }
.end annotation


# static fields
.field private static final blacklist MAX_OVERFLOW_SIZE:I = 0x4

.field private static final blacklist MIN_OVERFLOW_SIZE:I = 0x1

.field private static final blacklist NEED_CHANGE_DIRECTION_ALL:I = 0x3

.field private static final blacklist NEED_CHANGE_DIRECTION_HORIZONTAL:I = 0x2

.field private static final blacklist NEED_CHANGE_DIRECTION_VERTICAL:I = 0x1

.field private static final blacklist NEED_NOT_CHANGE_DIRECTION:I

.field private static blacklist mCutoutLeftMargin:I

.field private static blacklist mCutoutRightMargin:I

.field private static blacklist sIsDiscardTouch:Z

.field private static blacklist sIsMovingStarted:Z

.field private static blacklist sIsScrolling:Z

.field private static blacklist sIsSemType:Z


# instance fields
.field private blacklist mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

.field private final blacklist mArrow:Landroid/graphics/drawable/Drawable;

.field private final blacklist mArrowSem:Landroid/graphics/drawable/Drawable;

.field private final blacklist mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

.field private final blacklist mContentContainer:Landroid/view/ViewGroup;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mCoordsOnWindow:Landroid/graphics/Point;

.field private blacklist mDeltaX:I

.field private blacklist mDeltaY:I

.field private final blacklist mDismissAnimation:Landroid/animation/AnimatorSet;

.field private blacklist mDismissed:Z

.field private blacklist mDividerHorizontal:Landroid/widget/ImageView;

.field private blacklist mDividerVertical:Landroid/widget/ImageView;

.field private final blacklist mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field private final blacklist mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private blacklist mHidden:Z

.field private final blacklist mHideAnimation:Landroid/animation/AnimatorSet;

.field private final blacklist mIconTextSpacing:I

.field private final blacklist mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

.field private blacklist mIsClosedOpposites:Z

.field private blacklist mIsMovingFirstTime:Z

.field private blacklist mIsOverflowOpen:Z

.field private blacklist mLastTouchDownX:F

.field private blacklist mLastTouchDownY:F

.field private final blacklist mLineHeight:I

.field private final blacklist mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private final blacklist mLogAccelerateInterpolator:Landroid/view/animation/Interpolator;

.field private final blacklist mMainPanel:Landroid/view/ViewGroup;

.field private blacklist mMainPanelSize:Landroid/util/Size;

.field private final blacklist mMarginHorizontal:I

.field private final blacklist mMarginVertical:I

.field private final blacklist mMenuFirstImageStartPadding:I

.field private final blacklist mMenuFirstLastSidePadding:I

.field private final blacklist mMenuItemButtonOnClickListener:Landroid/view/View$OnClickListener;

.field private final blacklist mMenuItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mMoved:Z

.field private blacklist mMovedPos:Landroid/graphics/Point;

.field private final blacklist mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

.field private blacklist mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private final blacklist mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

.field private blacklist mOpenOverflowUpwards:Z

.field private blacklist mOriginalPos:Landroid/graphics/Point;

.field private final blacklist mOverflow:Landroid/graphics/drawable/Drawable;

.field private final blacklist mOverflowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private final blacklist mOverflowButton:Landroid/widget/ImageButton;

.field private final blacklist mOverflowButtonSize:Landroid/util/Size;

.field private blacklist mOverflowMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

.field private blacklist mOverflowPanelSize:Landroid/util/Size;

.field private final blacklist mOverflowPanelViewHelper:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanelViewHelper;

.field private final blacklist mParent:Landroid/view/View;

.field private final blacklist mParentRoot:Landroid/view/View;

.field private blacklist mParentRootWindowInset:Landroid/view/WindowInsets;

.field private final blacklist mPopupTopMargin:I

.field private final blacklist mPopupVerticalOffset:I

.field private final blacklist mPopupWindow:Landroid/widget/PopupWindow;

.field private final blacklist mPreparePopupContentRTLHelper:Ljava/lang/Runnable;

.field private blacklist mPrevTouchX:F

.field private blacklist mPrevTouchY:F

.field private final blacklist mPreviousContentRect:Landroid/graphics/Rect;

.field private final blacklist mShowAnimation:Landroid/animation/AnimatorSet;

.field private blacklist mSuggestedWidth:I

.field private final blacklist mTmpCoords:[I

.field private final blacklist mToArrow:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field private final blacklist mToOverflow:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field private blacklist mToolbarHiddenArea:[I

.field private blacklist mToolbarVisibleRect:Landroid/graphics/Rect;

.field private blacklist mTouchSlop:I

.field private final blacklist mTouchableRegion:Landroid/graphics/Region;

.field private blacklist mTransitionDurationScale:I

.field private final blacklist mViewPortOnScreen:Landroid/graphics/Rect;

.field private blacklist mWidthChanged:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContentContainer(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCoordsOnWindow(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)Landroid/graphics/Point;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeltaX(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mDeltaX:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeltaY(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mDeltaY:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsClosedOpposites(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mIsClosedOpposites:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsMovingFirstTime(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mIsMovingFirstTime:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLastTouchDownX(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)F
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mLastTouchDownX:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLastTouchDownY(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)F
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mLastTouchDownY:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMainPanel(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMainPanelSize(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMenuItems(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMenuItems:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnAnchorRootDetachedListener(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)Landroid/view/View$OnAttachStateChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnMenuItemClickListener(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)Landroid/view/MenuItem$OnMenuItemClickListener;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOpenOverflowUpwards(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOpenOverflowUpwards:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOverflowButton(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOverflowButtonSize(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOverflowPanel(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOverflowPanelSize(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOverflowPanelViewHelper(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanelViewHelper;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelViewHelper:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanelViewHelper;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmParentRoot(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mParentRoot:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPopupWindow(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)Landroid/widget/PopupWindow;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPrevTouchX(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)F
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPrevTouchX:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPrevTouchY(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)F
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPrevTouchY:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTouchSlop(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mTouchSlop:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDeltaX(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mDeltaX:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDeltaY(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mDeltaY:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsMovingFirstTime(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mIsMovingFirstTime:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLastTouchDownX(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;F)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mLastTouchDownX:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLastTouchDownY(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;F)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mLastTouchDownY:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMoved(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMoved:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPrevTouchX(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;F)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPrevTouchX:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPrevTouchY(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;F)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPrevTouchY:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcalculateCoords(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->calculateCoords(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$misInRTLMode(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->isInRTLMode()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misInsideOfViewPortRect(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;FF)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->isInsideOfViewPortRect(FF)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misOverflowAnimating(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->isOverflowAnimating()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mpositionContentYCoordinatesIfOpeningOverflowUpwards(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->positionContentYCoordinatesIfOpeningOverflowUpwards()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrecalCoordsOnWindowX(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->recalCoordsOnWindowX()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetContentAreaAsTouchableSurface(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->setContentAreaAsTouchableSurface()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetPanelsStatesAtRestingPosition(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->setPanelsStatesAtRestingPosition()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsIsDiscardTouch()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->sIsDiscardTouch:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsIsScrolling()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->sIsScrolling:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsIsSemType()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->sIsSemType:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsIsDiscardTouch(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->sIsDiscardTouch:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsIsMovingStarted(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->sIsMovingStarted:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsIsScrolling(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->sIsScrolling:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smcreateMenuItemButton(Landroid/content/Context;Landroid/view/MenuItem;IZ)Landroid/view/View;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->createMenuItemButton(Landroid/content/Context;Landroid/view/MenuItem;IZ)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smsetHeight(Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->setHeight(Landroid/view/View;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smsetWidth(Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->setWidth(Landroid/view/View;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smupdateMenuItemButton(Landroid/view/View;Landroid/view/MenuItem;IZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->updateMenuItemButton(Landroid/view/View;Landroid/view/MenuItem;IZ)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 162
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->sIsSemType:Z

    .line 2548
    sput-boolean v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->sIsMovingStarted:Z

    .line 2549
    sput-boolean v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->sIsDiscardTouch:Z

    .line 2550
    sput-boolean v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->sIsScrolling:Z

    .line 2565
    sput v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mCutoutLeftMargin:I

    .line 2566
    sput v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mCutoutRightMargin:I

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/view/View;Z)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/View;
    .param p3, "isSemTypeFloating"    # Z

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    .line 144
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    .line 146
    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mTmpCoords:[I

    .line 148
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mTouchableRegion:Landroid/graphics/Region;

    .line 149
    new-instance v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)V

    iput-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    .line 168
    new-instance v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$1;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$1;-><init>(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)V

    iput-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPreparePopupContentRTLHelper:Ljava/lang/Runnable;

    .line 177
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mDismissed:Z

    .line 186
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMenuItems:Ljava/util/Map;

    .line 188
    new-instance v2, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$2;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$2;-><init>(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)V

    iput-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMenuItemButtonOnClickListener:Landroid/view/View$OnClickListener;

    .line 212
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPreviousContentRect:Landroid/graphics/Rect;

    .line 214
    iput-boolean v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mWidthChanged:Z

    .line 1963
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mIsClosedOpposites:Z

    .line 1982
    iput-boolean v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mIsMovingFirstTime:Z

    .line 1986
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mToolbarVisibleRect:Landroid/graphics/Rect;

    .line 1987
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mToolbarHiddenArea:[I

    .line 1990
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMovedPos:Landroid/graphics/Point;

    .line 1991
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOriginalPos:Landroid/graphics/Point;

    .line 2025
    new-instance v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$FloatingOnAttachStateChangeListener;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$FloatingOnAttachStateChangeListener;-><init>(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)V

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 224
    sput-boolean p3, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->sIsSemType:Z

    .line 226
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mParent:Landroid/view/View;

    .line 227
    invoke-static {p1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->applyDefaultTheme(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContext:Landroid/content/Context;

    .line 228
    invoke-static {v3}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->createContentContainer(Landroid/content/Context;)Landroid/view/ViewGroup;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    .line 229
    invoke-static {v4}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->createPopupWindow(Landroid/view/ViewGroup;)Landroid/widget/PopupWindow;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 230
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 231
    const v7, 0x1050160

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMarginHorizontal:I

    .line 233
    sget-boolean v6, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->sIsSemType:Z

    if-eqz v6, :cond_0

    .line 234
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10503df

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMarginVertical:I

    .line 236
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10503d4

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mLineHeight:I

    goto :goto_0

    .line 239
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x105016d

    .line 240
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMarginVertical:I

    .line 241
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x105015f

    .line 242
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mLineHeight:I

    .line 246
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1050161

    .line 247
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mIconTextSpacing:I

    .line 250
    new-instance v7, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$LogAccelerateInterpolator;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$LogAccelerateInterpolator;-><init>(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$LogAccelerateInterpolator-IA;)V

    iput-object v7, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mLogAccelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 251
    const v7, 0x10c000d

    invoke-static {v3, v7}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 253
    const v7, 0x10c000e

    invoke-static {v3, v7}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 255
    const v7, 0x10c000f

    invoke-static {v3, v7}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 259
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x108031e

    .line 260
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mArrow:Landroid/graphics/drawable/Drawable;

    .line 261
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 262
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x108031c

    .line 263
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflow:Landroid/graphics/drawable/Drawable;

    .line 264
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 265
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x108031d

    .line 266
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-object v7, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mToArrow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 267
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->setAutoMirrored(Z)V

    .line 268
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x108031f

    .line 269
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-object v7, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mToOverflow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 270
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->setAutoMirrored(Z)V

    .line 273
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->createOverflowButton()Landroid/widget/ImageButton;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    .line 274
    invoke-static {v7}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->measure(Landroid/view/View;)Landroid/util/Size;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    .line 275
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->createMainPanel()Landroid/view/ViewGroup;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    .line 276
    new-instance v7, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanelViewHelper;

    invoke-direct {v7, v3, v6}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanelViewHelper;-><init>(Landroid/content/Context;I)V

    iput-object v7, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelViewHelper:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanelViewHelper;

    .line 277
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->createOverflowPanel()Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    .line 280
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->createOverflowAnimationListener()Landroid/view/animation/Animation$AnimationListener;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 281
    new-instance v7, Landroid/view/animation/AnimationSet;

    invoke-direct {v7, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v7, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    .line 282
    invoke-virtual {v7, v6}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 283
    new-instance v7, Landroid/view/animation/AnimationSet;

    invoke-direct {v7, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v7, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    .line 284
    invoke-virtual {v7, v6}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 285
    invoke-static {v4}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->createEnterAnimation(Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mShowAnimation:Landroid/animation/AnimatorSet;

    .line 286
    const/16 v1, 0x96

    new-instance v6, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$3;

    invoke-direct {v6, p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$3;-><init>(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)V

    invoke-static {v4, v1, v6}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->createExitAnimation(Landroid/view/View;ILandroid/animation/Animator$AnimatorListener;)Landroid/animation/AnimatorSet;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mDismissAnimation:Landroid/animation/AnimatorSet;

    .line 301
    new-instance v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$4;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$4;-><init>(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)V

    invoke-static {v4, v2, v1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->createExitAnimation(Landroid/view/View;ILandroid/animation/Animator$AnimatorListener;)Landroid/animation/AnimatorSet;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mHideAnimation:Landroid/animation/AnimatorSet;

    .line 311
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10503d6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMenuFirstLastSidePadding:I

    .line 313
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10503d7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMenuFirstImageStartPadding:I

    .line 315
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10503de

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPopupTopMargin:I

    .line 316
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10503e0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPopupVerticalOffset:I

    .line 317
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080bb5

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mArrowSem:Landroid/graphics/drawable/Drawable;

    .line 318
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->createDividers()V

    .line 320
    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 321
    .local v1, "viewConfig":Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mTouchSlop:I

    .line 323
    new-instance v2, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$5;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$5;-><init>(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)V

    invoke-virtual {v5, v2}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 388
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mParentRoot:Landroid/view/View;

    .line 389
    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mParentRootWindowInset:Landroid/view/WindowInsets;

    .line 391
    return-void
.end method

.method private static blacklist applyDefaultTheme(Landroid/content/Context;)Landroid/content/Context;
    .locals 6
    .param p0, "originalContext"    # Landroid/content/Context;

    .line 2454
    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x1010590

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {p0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 2455
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 2457
    .local v2, "isLightTheme":Z
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v4, v4, 0x30

    const/16 v5, 0x20

    if-eq v4, v5, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    .line 2459
    .local v0, "isLightMode":Z
    :goto_0
    sget-boolean v3, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->sIsSemType:Z

    if-eqz v3, :cond_1

    if-eq v2, v0, :cond_1

    .line 2460
    move v2, v0

    .line 2464
    :cond_1
    if-eqz v2, :cond_2

    const v3, 0x103012b

    goto :goto_1

    :cond_2
    const v3, 0x1030128

    .line 2465
    .local v3, "themeId":I
    :goto_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 2466
    new-instance v4, Landroid/view/ContextThemeWrapper;

    invoke-direct {v4, p0, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    return-object v4
.end method

.method private blacklist calculateCoords(II)V
    .locals 17
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 2075
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mParent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mTmpCoords:[I

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2076
    iget-object v1, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mTmpCoords:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    .line 2077
    .local v3, "rootViewLeftOnScreen":I
    const/4 v4, 0x1

    aget v1, v1, v4

    .line 2078
    .local v1, "rootViewTopOnScreen":I
    iget-object v5, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mParent:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    iget-object v6, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mTmpCoords:[I

    invoke-virtual {v5, v6}, Landroid/view/View;->getLocationInWindow([I)V

    .line 2079
    iget-object v5, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mTmpCoords:[I

    aget v6, v5, v2

    .line 2080
    .local v6, "rootViewLeftOnWindow":I
    aget v5, v5, v4

    .line 2081
    .local v5, "rootViewTopOnWindow":I
    sub-int v7, v3, v6

    .line 2082
    .local v7, "windowLeftOnScreen":I
    sub-int v8, v1, v5

    .line 2084
    .local v8, "windowTopOnScreen":I
    iget-object v9, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget-object v10, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mToolbarHiddenArea:[I

    aget v10, v10, v2

    add-int/2addr v9, v10

    .line 2085
    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    sub-int/2addr v9, v7

    .line 2084
    move/from16 v10, p1

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 2087
    .local v9, "left":I
    iget-object v11, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    iget-object v12, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mToolbarHiddenArea:[I

    aget v12, v12, v4

    add-int/2addr v11, v12

    .line 2088
    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    sub-int/2addr v11, v8

    .line 2087
    move/from16 v12, p2

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 2091
    .local v11, "top":I
    iget-object v13, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mToolbarVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v13

    add-int/2addr v13, v9

    iget-object v14, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mToolbarHiddenArea:[I

    aget v14, v14, v2

    sub-int/2addr v13, v14

    iget-object v14, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->right:I

    sub-int/2addr v14, v7

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 2093
    .local v13, "right":I
    iget-object v14, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mToolbarVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v14

    add-int/2addr v14, v11

    iget-object v15, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mToolbarHiddenArea:[I

    aget v15, v15, v4

    sub-int/2addr v14, v15

    .line 2094
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->getViewPortVisibleHeight()I

    move-result v15

    sub-int/2addr v15, v8

    .line 2093
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 2096
    .local v14, "bottom":I
    iget-object v15, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mToolbarVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v15

    sub-int v15, v13, v15

    iget-object v4, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mToolbarHiddenArea:[I

    aget v2, v4, v2

    add-int/2addr v15, v2

    invoke-static {v9, v15}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2097
    .end local v9    # "left":I
    .local v2, "left":I
    iget-object v4, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mToolbarVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int v4, v14, v4

    iget-object v9, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mToolbarHiddenArea:[I

    const/4 v15, 0x1

    aget v9, v9, v15

    add-int/2addr v4, v9

    invoke-static {v11, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 2099
    .end local v11    # "top":I
    .local v4, "top":I
    iget-object v9, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    invoke-virtual {v9, v2, v4}, Landroid/graphics/Point;->set(II)V

    .line 2102
    iget-boolean v9, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMoved:Z

    if-eqz v9, :cond_0

    .line 2103
    iget-object v9, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMovedPos:Landroid/graphics/Point;

    iget-object v11, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOriginalPos:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->x:I

    iget-object v15, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v15, v15, Landroid/graphics/Point;->x:I

    sub-int/2addr v11, v15

    iget-object v15, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOriginalPos:Landroid/graphics/Point;

    iget v15, v15, Landroid/graphics/Point;->y:I

    move/from16 v16, v1

    .end local v1    # "rootViewTopOnScreen":I
    .local v16, "rootViewTopOnScreen":I
    iget-object v1, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v15, v1

    invoke-virtual {v9, v11, v15}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    .line 2102
    .end local v16    # "rootViewTopOnScreen":I
    .restart local v1    # "rootViewTopOnScreen":I
    :cond_0
    move/from16 v16, v1

    .line 2106
    .end local v1    # "rootViewTopOnScreen":I
    .restart local v16    # "rootViewTopOnScreen":I
    :goto_0
    return-void
.end method

.method private blacklist calculateOverflowHeight(I)I
    .locals 4
    .param p1, "maxItemSize"    # I

    .line 1620
    nop

    .line 1623
    const/4 v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    .line 1624
    invoke-virtual {v1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->getCount()I

    move-result v1

    .line 1622
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1620
    const/4 v1, 0x4

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1625
    .local v0, "actualSize":I
    const/4 v1, 0x0

    .line 1626
    .local v1, "extension":I
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v2}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1629
    iget v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mLineHeight:I

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 1631
    :cond_0
    iget v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mLineHeight:I

    mul-int/2addr v2, v0

    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    .line 1632
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, v1

    .line 1631
    return v2
.end method

.method private blacklist cancelDismissAndHideAnimations()V
    .locals 1

    .line 803
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mDismissAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 804
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mHideAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 805
    return-void
.end method

.method private blacklist cancelOverflowAnimations()V
    .locals 1

    .line 808
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 809
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 810
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 811
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mToArrow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    .line 812
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mToOverflow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    .line 813
    return-void
.end method

.method private blacklist changeOverflowPanelAdapterOrder()V
    .locals 4

    .line 2215
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowMenuItems:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2216
    .local v0, "overflowMenuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    iget-boolean v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOpenOverflowUpwards:Z

    if-eqz v1, :cond_0

    .line 2217
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 2219
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    .line 2220
    invoke-virtual {v1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Landroid/widget/ArrayAdapter;

    .line 2221
    .local v1, "overflowPanelAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Landroid/view/MenuItem;>;"
    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->clear()V

    .line 2222
    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 2223
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2225
    iget-boolean v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOpenOverflowUpwards:Z

    if-eqz v2, :cond_1

    .line 2226
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->setSelection(I)V

    .line 2228
    :cond_1
    return-void
.end method

.method private blacklist clearPanels()V
    .locals 2

    .line 1584
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    .line 1585
    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    .line 1586
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mIsOverflowOpen:Z

    .line 1587
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1588
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    .line 1589
    invoke-virtual {v0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 1590
    .local v0, "overflowPanelAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Landroid/view/MenuItem;>;"
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 1591
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1592
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1593
    return-void
.end method

.method private blacklist closeOverflow()V
    .locals 17

    .line 929
    move-object/from16 v6, p0

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->isNeedToChangeDirection()I

    move-result v7

    .line 930
    .local v7, "needToChangeDirection":I
    const/4 v0, 0x2

    if-ne v7, v0, :cond_1

    .line 932
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->isInRTLMode()Z

    move-result v0

    iget-boolean v1, v6, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mIsClosedOpposites:Z

    if-ne v0, v1, :cond_0

    .line 933
    xor-int/lit8 v0, v1, 0x1

    iput-boolean v0, v6, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mIsClosedOpposites:Z

    .line 934
    iget-object v0, v6, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, v6, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getX()F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, v6, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, v6, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 937
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->shiftPopup()V

    .line 938
    iget-boolean v0, v6, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mIsClosedOpposites:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, v6, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mIsClosedOpposites:Z

    goto :goto_0

    .line 941
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->shiftPopup()V

    .line 942
    iget-boolean v0, v6, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mIsClosedOpposites:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, v6, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mIsClosedOpposites:Z

    .line 945
    :cond_1
    :goto_0
    sget-boolean v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->sIsSemType:Z

    if-eqz v0, :cond_2

    .line 946
    iget-object v0, v6, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mDividerHorizontal:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 949
    :cond_2
    iget-object v0, v6, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v8

    .line 950
    .local v8, "targetWidth":I
    iget-object v0, v6, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v9

    .line 951
    .local v9, "startWidth":I
    iget-object v0, v6, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getX()F

    move-result v10

    .line 952
    .local v10, "left":F
    iget-object v0, v6, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float v11, v10, v0

    .line 953
    .local v11, "right":F
    new-instance v12, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$9;

    move-object v0, v12

    move-object/from16 v1, p0

    move v2, v8

    move v3, v9

    move v4, v11

    move v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$9;-><init>(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;IIFF)V

    .line 981
    .local v0, "widthAnimation":Landroid/view/animation/Animation;
    iget-object v1, v6, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    .line 982
    .local v1, "targetHeight":I
    iget-object v2, v6, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    .line 983
    .local v2, "startHeight":I
    iget-object v3, v6, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getY()F

    move-result v3

    iget-object v4, v6, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    .line 984
    .local v3, "bottom":F
    new-instance v4, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$10;

    invoke-direct {v4, v6, v1, v2, v3}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$10;-><init>(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;IIF)V

    .line 995
    .local v4, "heightAnimation":Landroid/view/animation/Animation;
    iget-object v5, v6, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v5}, Landroid/widget/ImageButton;->getX()F

    move-result v5

    .line 997
    .local v5, "overflowButtonStartX":F
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->isInRTLMode()Z

    move-result v12

    if-eqz v12, :cond_3

    int-to-float v12, v9

    sub-float v12, v5, v12

    iget-object v13, v6, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v13}, Landroid/widget/ImageButton;->getWidth()I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v12, v13

    goto :goto_1

    .line 998
    :cond_3
    int-to-float v12, v9

    add-float/2addr v12, v5

    iget-object v13, v6, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v13}, Landroid/widget/ImageButton;->getWidth()I

    move-result v13

    int-to-float v13, v13

    sub-float/2addr v12, v13

    :goto_1
    nop

    .line 999
    .local v12, "overflowButtonTargetX":F
    new-instance v13, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$11;

    invoke-direct {v13, v6, v5, v12, v9}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$11;-><init>(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;FFI)V

    .line 1010
    .local v13, "overflowButtonAnimation":Landroid/view/animation/Animation;
    iget-object v14, v6, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v14}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1011
    const/16 v14, 0xfa

    invoke-direct {v6, v14}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->getAdjustedDuration(I)I

    move-result v15

    int-to-long v14, v15

    invoke-virtual {v0, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1012
    iget-object v14, v6, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mLogAccelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v14}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1013
    const/16 v14, 0xfa

    invoke-direct {v6, v14}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->getAdjustedDuration(I)I

    move-result v15

    int-to-long v14, v15

    invoke-virtual {v4, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1014
    iget-object v14, v6, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v13, v14}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1015
    const/16 v14, 0xfa

    invoke-direct {v6, v14}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->getAdjustedDuration(I)I

    move-result v14

    int-to-long v14, v14

    invoke-virtual {v13, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1016
    iget-object v14, v6, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v14}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->clear()V

    .line 1017
    iget-object v14, v6, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v14, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1018
    iget-object v14, v6, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v14, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1019
    iget-object v14, v6, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v14, v13}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1020
    iget-object v14, v6, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v15, v6, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1021
    const/4 v14, 0x0

    iput-boolean v14, v6, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mIsOverflowOpen:Z

    .line 1022
    iget-object v14, v6, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v14}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v14

    const/high16 v15, 0x3f800000    # 1.0f

    .line 1023
    invoke-virtual {v14, v15}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v14

    iget-object v15, v6, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 1024
    invoke-virtual {v14, v15}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v14

    move-object v15, v0

    move/from16 v16, v1

    .end local v0    # "widthAnimation":Landroid/view/animation/Animation;
    .end local v1    # "targetHeight":I
    .local v15, "widthAnimation":Landroid/view/animation/Animation;
    .local v16, "targetHeight":I
    const-wide/16 v0, 0x64

    .line 1025
    invoke-virtual {v14, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1026
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1027
    iget-object v0, v6, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 1028
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, v6, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 1029
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    move v14, v2

    .end local v2    # "startHeight":I
    .local v14, "startHeight":I
    const-wide/16 v1, 0x96

    .line 1030
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1031
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1032
    return-void
.end method

.method private static blacklist createContentContainer(Landroid/content/Context;)Landroid/view/ViewGroup;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 2387
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2390
    sget-boolean v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->sIsSemType:Z

    if-eqz v1, :cond_0

    const v1, 0x1090162

    goto :goto_0

    .line 2391
    :cond_0
    const v1, 0x109008b

    :goto_0
    const/4 v2, 0x0

    .line 2390
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2393
    .local v0, "contentContainer":Landroid/view/ViewGroup;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2395
    const-string v1, "floating_toolbar"

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 2396
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2397
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipToOutline(Z)V

    .line 2398
    return-object v0
.end method

.method private blacklist createDividers()V
    .locals 7

    .line 2231
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mDividerVertical:Landroid/widget/ImageView;

    .line 2232
    const v1, 0x1080bb2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2234
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mDividerVertical:Landroid/widget/ImageView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2237
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mDividerVertical:Landroid/widget/ImageView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImportantForAccessibility(I)V

    .line 2238
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mDividerVertical:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2239
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mDividerVertical:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 2240
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mDividerVertical:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2242
    new-instance v0, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mDividerHorizontal:Landroid/widget/ImageView;

    .line 2243
    const v6, 0x1080bb3

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2245
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mDividerHorizontal:Landroid/widget/ImageView;

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v3, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2248
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mDividerHorizontal:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImportantForAccessibility(I)V

    .line 2249
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mDividerHorizontal:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2250
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mDividerHorizontal:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 2251
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mDividerHorizontal:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2252
    return-void
.end method

.method private static blacklist createEnterAnimation(Landroid/view/View;)Landroid/animation/AnimatorSet;
    .locals 5
    .param p0, "view"    # Landroid/view/View;

    .line 2427
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2428
    .local v0, "animation":Landroid/animation/AnimatorSet;
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/Animator;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    .line 2429
    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v3, 0x96

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 2428
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2430
    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static blacklist createExitAnimation(Landroid/view/View;ILandroid/animation/Animator$AnimatorListener;)Landroid/animation/AnimatorSet;
    .locals 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "startDelay"    # I
    .param p2, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .line 2442
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2443
    .local v0, "animation":Landroid/animation/AnimatorSet;
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/Animator;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    .line 2444
    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v3, 0x64

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 2443
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2445
    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 2446
    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2447
    return-object v0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private blacklist createMainPanel()Landroid/view/ViewGroup;
    .locals 2

    .line 1674
    new-instance v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$12;

    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$12;-><init>(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;Landroid/content/Context;)V

    .line 1693
    .local v0, "mainPanel":Landroid/view/ViewGroup;
    return-object v0
.end method

.method private static blacklist createMenuItemButton(Landroid/content/Context;Landroid/view/MenuItem;IZ)Landroid/view/View;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "menuItem"    # Landroid/view/MenuItem;
    .param p2, "iconTextSpacing"    # I
    .param p3, "showIcon"    # Z

    .line 2337
    sget-boolean v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->sIsSemType:Z

    if-eqz v0, :cond_0

    const v0, 0x1090163

    goto :goto_0

    .line 2338
    :cond_0
    const v0, 0x109008c

    :goto_0
    nop

    .line 2340
    .local v0, "res":I
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2341
    .local v1, "menuItemButton":Landroid/view/View;
    if-eqz p1, :cond_1

    .line 2342
    invoke-static {v1, p1, p2, p3}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->updateMenuItemButton(Landroid/view/View;Landroid/view/MenuItem;IZ)V

    .line 2345
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->semSetHoverPopupType(I)V

    .line 2347
    return-object v1
.end method

.method private blacklist createOverflowAnimationListener()Landroid/view/animation/Animation$AnimationListener;
    .locals 1

    .line 1784
    new-instance v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$14;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$14;-><init>(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)V

    .line 1810
    .local v0, "listener":Landroid/view/animation/Animation$AnimationListener;
    return-object v0
.end method

.method private blacklist createOverflowButton()Landroid/widget/ImageButton;
    .locals 3

    .line 1702
    sget-boolean v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->sIsSemType:Z

    if-eqz v0, :cond_0

    const v0, 0x1090164

    goto :goto_0

    .line 1703
    :cond_0
    const v0, 0x109008e

    :goto_0
    nop

    .line 1705
    .local v0, "res":I
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 1707
    .local v1, "overflowButton":Landroid/widget/ImageButton;
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1709
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->semSetHoverPopupType(I)V

    .line 1710
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 1712
    new-instance v2, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;Landroid/widget/ImageButton;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1744
    return-object v1
.end method

.method private blacklist createOverflowPanel()Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;
    .locals 4

    .line 1748
    new-instance v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;-><init>(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)V

    .line 1749
    .local v0, "overflowPanel":Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1751
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 1752
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->setDividerHeight(I)V

    .line 1754
    new-instance v2, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$13;

    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3, v1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$13;-><init>(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;Landroid/content/Context;I)V

    move-object v1, v2

    .line 1762
    .local v1, "adapter":Landroid/widget/ArrayAdapter;
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1764
    new-instance v2, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;)V

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1772
    return-object v0
.end method

.method private static blacklist createPopupWindow(Landroid/view/ViewGroup;)Landroid/widget/PopupWindow;
    .locals 4
    .param p0, "content"    # Landroid/view/ViewGroup;

    .line 2402
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2405
    .local v0, "popupContentHolder":Landroid/view/ViewGroup;
    move-object v1, v0

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 2407
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    .line 2410
    .local v1, "popupWindow":Landroid/widget/PopupWindow;
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 2411
    const/16 v3, 0x3ed

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 2413
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 2414
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2415
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2417
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2418
    return-object v1
.end method

.method private blacklist getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;
    .locals 1

    .line 2028
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-nez v0, :cond_0

    .line 2029
    new-instance v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$15;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$15;-><init>(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)V

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 2039
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    return-object v0
.end method

.method private blacklist getAdjustedDuration(I)I
    .locals 2
    .param p1, "originalDuration"    # I

    .line 1649
    iget v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mTransitionDurationScale:I

    const/16 v1, 0x96

    if-ge v0, v1, :cond_0

    .line 1651
    add-int/lit8 v0, p1, -0x32

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 1652
    :cond_0
    const/16 v1, 0x12c

    if-le v0, v1, :cond_1

    .line 1654
    add-int/lit8 v0, p1, 0x32

    return v0

    .line 1661
    :cond_1
    int-to-float v0, p1

    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private blacklist getAdjustedToolbarWidth(I)I
    .locals 4
    .param p1, "suggestedWidth"    # I

    .line 1307
    move v0, p1

    .line 1308
    .local v0, "width":I
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->refreshViewPort()V

    .line 1309
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mParent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1310
    const v3, 0x1050160

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 1311
    .local v1, "maximumWidth":I
    if-gtz v0, :cond_0

    .line 1312
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mParent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105016b

    .line 1313
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1315
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2
.end method

.method private blacklist getDisplayCutout()Landroid/view/DisplayCutout;
    .locals 2

    .line 2264
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mParentRoot:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2265
    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    .line 2266
    .local v0, "rootWindowInsets":Landroid/view/WindowInsets;
    if-eqz v0, :cond_0

    .line 2267
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    .line 2268
    .local v1, "displayCutout":Landroid/view/DisplayCutout;
    if-eqz v1, :cond_0

    .line 2269
    return-object v1

    .line 2273
    .end local v0    # "rootWindowInsets":Landroid/view/WindowInsets;
    .end local v1    # "displayCutout":Landroid/view/DisplayCutout;
    :cond_0
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mCutoutRightMargin:I

    sput v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mCutoutLeftMargin:I

    .line 2274
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist getImeHeight()I
    .locals 4

    .line 2558
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mParentRootWindowInset:Landroid/view/WindowInsets;

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    .line 2559
    .local v0, "imeInset":Landroid/graphics/Insets;
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mParentRootWindowInset:Landroid/view/WindowInsets;

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v1

    .line 2560
    .local v1, "navibarInset":Landroid/graphics/Insets;
    iget v2, v0, Landroid/graphics/Insets;->bottom:I

    iget v3, v1, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v2, v3

    return v2
.end method

.method private blacklist getOverflowWidth()I
    .locals 5

    .line 1604
    const/4 v0, 0x0

    .line 1605
    .local v0, "overflowWidth":I
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 1606
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1607
    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v3}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/MenuItem;

    .line 1608
    .local v3, "menuItem":Landroid/view/MenuItem;
    iget-object v4, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelViewHelper:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanelViewHelper;

    .line 1609
    invoke-virtual {v4, v3}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanelViewHelper;->calculateWidth(Landroid/view/MenuItem;)I

    move-result v4

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1606
    .end local v3    # "menuItem":Landroid/view/MenuItem;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1612
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    .line 1613
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMarginHorizontal:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    .line 1612
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1615
    return v0
.end method

.method private blacklist getViewPortVisibleHeight()I
    .locals 6

    .line 2043
    new-instance v0, Lcom/samsung/android/app/SemMultiWindowManager;

    invoke-direct {v0}, Lcom/samsung/android/app/SemMultiWindowManager;-><init>()V

    .line 2044
    .local v0, "multiWindowManager":Lcom/samsung/android/app/SemMultiWindowManager;
    invoke-virtual {v0}, Lcom/samsung/android/app/SemMultiWindowManager;->getMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 2045
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    return v1

    .line 2048
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContext:Landroid/content/Context;

    .line 2049
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 2050
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 2051
    .local v2, "appHeight":I
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->getImeHeight()I

    move-result v3

    .line 2052
    .local v3, "sipHeight":I
    sub-int v4, v2, v3

    .line 2054
    .local v4, "viewPortVisibleHeight":I
    iget-object v5, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->isPopOver()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2055
    move v4, v2

    .line 2058
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/app/SemMultiWindowManager;->getMode()I

    move-result v5

    if-eqz v5, :cond_2

    .line 2060
    move v4, v2

    .line 2061
    iget-object v5, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    .line 2064
    :cond_2
    return v4
.end method

.method private blacklist hasOverflow()Z
    .locals 1

    .line 1377
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isCutoutMarginSet()Z
    .locals 1

    .line 2257
    sget v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mCutoutLeftMargin:I

    if-nez v0, :cond_0

    sget v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mCutoutRightMargin:I

    if-nez v0, :cond_0

    .line 2258
    const/4 v0, 0x0

    return v0

    .line 2260
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist isInRTLMode()Z
    .locals 2

    .line 1371
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContext:Landroid/content/Context;

    .line 1372
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1371
    :goto_0
    return v1
.end method

.method private blacklist isInsideOfViewPortRect(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 2069
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->refreshViewPort()V

    .line 2070
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    cmpl-float v0, v0, p1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    cmpg-float v0, v0, p2

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    cmpl-float v0, v0, p2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isLayoutRequired(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;)Z"
        }
    .end annotation

    .line 445
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMenuItems:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;->reprEquals(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private blacklist isNeedToChangeDirection()I
    .locals 15

    .line 2128
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2129
    .local v0, "popupArea":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v2

    iget-object v4, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v4

    invoke-direct {v1, v3, v3, v2, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2130
    .local v1, "popupAreaReverse":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v4, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 2131
    .local v2, "absOffsetX":I
    iget-object v4, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    .line 2132
    .local v4, "offsetY":I
    iget-boolean v5, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOpenOverflowUpwards:Z

    if-eqz v5, :cond_0

    .line 2133
    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v4

    iput v5, v0, Landroid/graphics/Rect;->bottom:I

    .line 2134
    iget v5, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v4

    iput v5, v1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 2136
    :cond_0
    iget v5, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v4

    iput v5, v0, Landroid/graphics/Rect;->top:I

    .line 2137
    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v4

    iput v5, v1, Landroid/graphics/Rect;->bottom:I

    .line 2140
    :goto_0
    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMarginVertical:I

    add-int/2addr v5, v6

    iput v5, v0, Landroid/graphics/Rect;->top:I

    .line 2141
    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    iget v6, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMarginVertical:I

    sub-int/2addr v5, v6

    iput v5, v0, Landroid/graphics/Rect;->bottom:I

    .line 2142
    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMarginVertical:I

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->top:I

    .line 2143
    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    iget v6, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMarginVertical:I

    sub-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->bottom:I

    .line 2145
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->isInRTLMode()Z

    move-result v5

    iget-boolean v6, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mIsClosedOpposites:Z

    if-eq v5, v6, :cond_1

    .line 2146
    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget v6, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMarginHorizontal:I

    add-int/2addr v6, v2

    add-int/2addr v5, v6

    iput v5, v0, Landroid/graphics/Rect;->left:I

    .line 2147
    iget v5, v0, Landroid/graphics/Rect;->right:I

    iget v6, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMarginHorizontal:I

    sub-int/2addr v5, v6

    iput v5, v0, Landroid/graphics/Rect;->right:I

    .line 2148
    iget v5, v1, Landroid/graphics/Rect;->left:I

    iget v6, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMarginHorizontal:I

    add-int/2addr v6, v2

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->left:I

    .line 2149
    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget v6, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMarginHorizontal:I

    sub-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 2151
    :cond_1
    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget v6, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMarginHorizontal:I

    add-int/2addr v5, v6

    iput v5, v0, Landroid/graphics/Rect;->left:I

    .line 2152
    iget v5, v0, Landroid/graphics/Rect;->right:I

    iget v6, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMarginHorizontal:I

    add-int/2addr v6, v2

    sub-int/2addr v5, v6

    iput v5, v0, Landroid/graphics/Rect;->right:I

    .line 2153
    iget v5, v1, Landroid/graphics/Rect;->left:I

    iget v6, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMarginHorizontal:I

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->left:I

    .line 2154
    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget v6, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMarginHorizontal:I

    add-int/2addr v6, v2

    sub-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->right:I

    .line 2157
    :goto_1
    iget-object v5, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mParent:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mTmpCoords:[I

    invoke-virtual {v5, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2158
    iget-object v5, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mTmpCoords:[I

    aget v6, v5, v3

    .line 2159
    .local v6, "rootViewLeftOnScreen":I
    const/4 v7, 0x1

    aget v5, v5, v7

    .line 2160
    .local v5, "rootViewTopOnScreen":I
    iget-object v8, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mParent:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mTmpCoords:[I

    invoke-virtual {v8, v9}, Landroid/view/View;->getLocationInWindow([I)V

    .line 2161
    iget-object v8, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mTmpCoords:[I

    aget v9, v8, v3

    .line 2162
    .local v9, "rootViewLeftOnWindow":I
    aget v8, v8, v7

    .line 2163
    .local v8, "rootViewTopOnWindow":I
    sub-int v10, v6, v9

    .line 2164
    .local v10, "windowLeftOnScreen":I
    sub-int v11, v5, v8

    .line 2166
    .local v11, "windowTopOnScreen":I
    iget-object v12, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->x:I

    iget-object v13, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v13, v13, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Rect;->offset(II)V

    .line 2167
    invoke-virtual {v0, v10, v11}, Landroid/graphics/Rect;->offset(II)V

    .line 2168
    iget-object v12, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->x:I

    iget-object v13, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v13, v13, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v12, v13}, Landroid/graphics/Rect;->offset(II)V

    .line 2169
    invoke-virtual {v1, v10, v11}, Landroid/graphics/Rect;->offset(II)V

    .line 2171
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 2172
    .local v12, "viewArea":Landroid/graphics/Rect;
    iget-object v13, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v12, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2173
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->getViewPortVisibleHeight()I

    move-result v13

    iput v13, v12, Landroid/graphics/Rect;->bottom:I

    .line 2175
    invoke-virtual {v12, v0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 2176
    iget v13, v12, Landroid/graphics/Rect;->left:I

    iget v14, v0, Landroid/graphics/Rect;->left:I

    if-gt v13, v14, :cond_3

    iget v13, v12, Landroid/graphics/Rect;->right:I

    iget v14, v0, Landroid/graphics/Rect;->right:I

    if-lt v13, v14, :cond_3

    .line 2177
    invoke-virtual {v12, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 2178
    return v3

    .line 2180
    :cond_2
    return v7

    .line 2181
    :cond_3
    iget v3, v12, Landroid/graphics/Rect;->top:I

    iget v7, v0, Landroid/graphics/Rect;->top:I

    if-gt v3, v7, :cond_4

    iget v3, v12, Landroid/graphics/Rect;->bottom:I

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    if-lt v3, v7, :cond_4

    .line 2182
    const/4 v3, 0x2

    return v3

    .line 2184
    :cond_4
    const/4 v3, 0x3

    return v3

    .line 2186
    :cond_5
    return v3
.end method

.method private blacklist isOverflowAnimating()Z
    .locals 4

    .line 1776
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->hasStarted()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    .line 1777
    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1778
    .local v0, "overflowOpening":Z
    :goto_0
    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3}, Landroid/view/animation/AnimationSet;->hasStarted()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    .line 1779
    invoke-virtual {v3}, Landroid/view/animation/AnimationSet;->hasEnded()Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 1780
    .local v3, "overflowClosing":Z
    :goto_1
    if-nez v0, :cond_3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :cond_3
    :goto_2
    return v1
.end method

.method private blacklist layoutMenuItems(Ljava/util/List;Landroid/view/MenuItem$OnMenuItemClickListener;I)V
    .locals 1
    .param p2, "menuItemClickListener"    # Landroid/view/MenuItem$OnMenuItemClickListener;
    .param p3, "suggestedWidth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;",
            "Landroid/view/MenuItem$OnMenuItemClickListener;",
            "I)V"
        }
    .end annotation

    .line 415
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->cancelOverflowAnimations()V

    .line 416
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->clearPanels()V

    .line 417
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->updateMenuItems(Ljava/util/List;Landroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 418
    invoke-direct {p0, p3}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->getAdjustedToolbarWidth(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->layoutMainPanelItems(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    .line 419
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 421
    invoke-direct {p0, p1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->layoutOverflowPanelItems(Ljava/util/List;)V

    .line 423
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->updatePopupSize()V

    .line 424
    return-void
.end method

.method private blacklist layoutOverflowPanelItems(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;)V"
        }
    .end annotation

    .line 1527
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    iput-object p1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowMenuItems:Ljava/util/List;

    .line 1528
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    .line 1529
    invoke-virtual {v0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 1530
    .local v0, "overflowPanelAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Landroid/view/MenuItem;>;"
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 1531
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 1532
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1533
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/MenuItem;

    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 1532
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1535
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1536
    iget-boolean v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOpenOverflowUpwards:Z

    if-eqz v2, :cond_1

    .line 1537
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->setY(F)V

    goto :goto_1

    .line 1539
    :cond_1
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->setY(F)V

    .line 1542
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->getOverflowWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1543
    .local v2, "width":I
    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->calculateOverflowHeight(I)I

    move-result v3

    .line 1544
    .local v3, "height":I
    new-instance v4, Landroid/util/Size;

    invoke-direct {v4, v2, v3}, Landroid/util/Size;-><init>(II)V

    iput-object v4, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    .line 1545
    iget-object v5, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    invoke-static {v5, v4}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->setSize(Landroid/view/View;Landroid/util/Size;)V

    .line 1546
    return-void
.end method

.method private blacklist maybeComputeTransitionDurationScale()V
    .locals 6

    .line 1665
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    if-eqz v1, :cond_0

    .line 1666
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1667
    .local v0, "w":I
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1668
    .local v1, "h":I
    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    iget-object v4, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    .line 1669
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    float-to-double v4, v4

    div-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mTransitionDurationScale:I

    .line 1671
    .end local v0    # "w":I
    .end local v1    # "h":I
    :cond_0
    return-void
.end method

.method private static blacklist measure(Landroid/view/View;)Landroid/util/Size;
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .line 1814
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1815
    invoke-virtual {p0, v1, v1}, Landroid/view/View;->measure(II)V

    .line 1816
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method private blacklist openOverflow()V
    .locals 18

    .line 817
    move-object/from16 v6, p0

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->isNeedToChangeDirection()I

    move-result v7

    .line 818
    .local v7, "needToChangeDirection":I
    const/4 v0, 0x3

    const/4 v8, 0x1

    if-eq v7, v8, :cond_0

    if-ne v7, v0, :cond_1

    .line 820
    :cond_0
    iget-boolean v1, v6, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOpenOverflowUpwards:Z

    xor-int/2addr v1, v8

    iput-boolean v1, v6, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOpenOverflowUpwards:Z

    .line 822
    :cond_1
    const/4 v1, 0x2

    if-eq v7, v1, :cond_2

    if-ne v7, v0, :cond_4

    .line 825
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->isInRTLMode()Z

    move-result v0

    iget-boolean v1, v6, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mIsClosedOpposites:Z

    if-ne v0, v1, :cond_3

    .line 826
    xor-int/lit8 v0, v1, 0x1

    iput-boolean v0, v6, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mIsClosedOpposites:Z

    .line 827
    iget-object v0, v6, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, v6, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getX()F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, v6, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, v6, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    .line 830
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->shiftPopup()V

    .line 831
    iget-boolean v0, v6, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mIsClosedOpposites:Z

    xor-int/2addr v0, v8

    iput-boolean v0, v6, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mIsClosedOpposites:Z

    goto :goto_0

    .line 834
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->shiftPopup()V

    .line 835
    iget-boolean v0, v6, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mIsClosedOpposites:Z

    xor-int/2addr v0, v8

    iput-boolean v0, v6, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mIsClosedOpposites:Z

    .line 838
    :cond_4
    :goto_0
    sget-boolean v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->sIsSemType:Z

    if-eqz v0, :cond_5

    .line 839
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->changeOverflowPanelAdapterOrder()V

    .line 843
    :cond_5
    iget-object v0, v6, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v9

    .line 844
    .local v9, "targetWidth":I
    iget-object v0, v6, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v10

    .line 845
    .local v10, "targetHeight":I
    iget-object v0, v6, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v11

    .line 846
    .local v11, "startWidth":I
    iget-object v0, v6, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v12

    .line 847
    .local v12, "startHeight":I
    iget-object v0, v6, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getY()F

    move-result v13

    .line 848
    .local v13, "startY":F
    iget-object v0, v6, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getX()F

    move-result v14

    .line 849
    .local v14, "left":F
    iget-object v0, v6, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float v15, v14, v0

    .line 850
    .local v15, "right":F
    new-instance v16, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$6;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move v2, v9

    move v3, v11

    move v4, v14

    move v5, v15

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$6;-><init>(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;IIFF)V

    .line 879
    .local v0, "widthAnimation":Landroid/view/animation/Animation;
    new-instance v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$7;

    invoke-direct {v1, v6, v10, v12, v13}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$7;-><init>(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;IIF)V

    .line 891
    .local v1, "heightAnimation":Landroid/view/animation/Animation;
    iget-object v2, v6, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getX()F

    move-result v2

    .line 893
    .local v2, "overflowButtonStartX":F
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->isInRTLMode()Z

    move-result v3

    if-eqz v3, :cond_6

    int-to-float v3, v9

    add-float/2addr v3, v2

    iget-object v4, v6, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    goto :goto_1

    .line 894
    :cond_6
    int-to-float v3, v9

    sub-float v3, v2, v3

    iget-object v4, v6, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    :goto_1
    nop

    .line 895
    .local v3, "overflowButtonTargetX":F
    new-instance v4, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$8;

    invoke-direct {v4, v6, v2, v3, v11}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$8;-><init>(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;FFI)V

    .line 906
    .local v4, "overflowButtonAnimation":Landroid/view/animation/Animation;
    iget-object v5, v6, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mLogAccelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 907
    const/16 v5, 0xfa

    invoke-direct {v6, v5}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->getAdjustedDuration(I)I

    move-result v8

    int-to-long v5, v8

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 908
    move-object/from16 v5, p0

    iget-object v6, v5, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 909
    const/16 v6, 0xfa

    invoke-direct {v5, v6}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->getAdjustedDuration(I)I

    move-result v8

    move/from16 v17, v7

    .end local v7    # "needToChangeDirection":I
    .local v17, "needToChangeDirection":I
    int-to-long v6, v8

    invoke-virtual {v1, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 910
    iget-object v6, v5, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 911
    const/16 v6, 0xfa

    invoke-direct {v5, v6}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->getAdjustedDuration(I)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v4, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 912
    iget-object v6, v5, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v6}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 913
    iget-object v6, v5, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v6}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 914
    iget-object v6, v5, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v6, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 915
    iget-object v6, v5, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v6, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 916
    iget-object v6, v5, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v6, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 917
    iget-object v6, v5, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v7, v5, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 918
    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mIsOverflowOpen:Z

    .line 919
    iget-object v6, v5, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/4 v7, 0x0

    .line 920
    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    iget-object v7, v5, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 921
    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v7, 0xfa

    .line 922
    invoke-virtual {v6, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    .line 923
    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 924
    iget-object v6, v5, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->setAlpha(F)V

    .line 925
    return-void
.end method

.method private blacklist positionContentYCoordinatesIfOpeningOverflowUpwards()V
    .locals 3

    .line 1596
    iget-boolean v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOpenOverflowUpwards:Z

    if-eqz v0, :cond_0

    .line 1597
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setY(F)V

    .line 1598
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setY(F)V

    .line 1599
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->setY(F)V

    .line 1601
    :cond_0
    return-void
.end method

.method private blacklist preparePopupContent()V
    .locals 2

    .line 1552
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1556
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->hasOverflow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1557
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1559
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1560
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->hasOverflow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1561
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1563
    sget-boolean v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->sIsSemType:Z

    if-eqz v0, :cond_1

    .line 1564
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mDividerHorizontal:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1568
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->setPanelsStatesAtRestingPosition()V

    .line 1569
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->setContentAreaAsTouchableSurface()V

    .line 1574
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->isInRTLMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1575
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 1576
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPreparePopupContentRTLHelper:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 1578
    :cond_2
    return-void
.end method

.method private blacklist recalCoordsOnWindowX()V
    .locals 6

    .line 2302
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    .line 2303
    .local v0, "displayCutout":Landroid/view/DisplayCutout;
    if-eqz v0, :cond_0

    .line 2304
    invoke-direct {p0, v0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->setCutoutMarginValue(Landroid/view/DisplayCutout;)V

    .line 2307
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->isCutoutMarginSet()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2308
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 2310
    .local v1, "rotation":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 2311
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->isInRTLMode()Z

    move-result v2

    if-nez v2, :cond_5

    .line 2312
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    sget v4, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mCutoutLeftMargin:I

    if-ge v3, v4, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->x:I

    :goto_0
    iput v4, v2, Landroid/graphics/Point;->x:I

    goto :goto_2

    .line 2314
    :cond_2
    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    .line 2315
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v2

    .line 2316
    .local v2, "currentPopupWindowWidth":I
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->hasOverflow()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2317
    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    .line 2318
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    add-int/2addr v3, v2

    div-int/lit8 v2, v3, 0x2

    .line 2320
    :cond_3
    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->x:I

    add-int/2addr v4, v2

    sget v5, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mCutoutRightMargin:I

    if-le v4, v5, :cond_4

    .line 2321
    sub-int/2addr v5, v2

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v5, v4, Landroid/graphics/Point;->x:I

    :goto_1
    iput v5, v3, Landroid/graphics/Point;->x:I

    .line 2324
    .end local v1    # "rotation":I
    .end local v2    # "currentPopupWindowWidth":I
    :cond_5
    :goto_2
    return-void
.end method

.method private blacklist refreshCoordinatesAndOverflowDirection(Landroid/graphics/Rect;)V
    .locals 19
    .param p1, "contentRectOnScreen"    # Landroid/graphics/Rect;

    .line 588
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->refreshViewPort()V

    .line 590
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->isMovingStarted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 591
    return-void

    .line 597
    :cond_0
    nop

    .line 598
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    iget-object v3, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget-object v3, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 599
    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    .line 597
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 603
    .local v2, "x":I
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->hasOverflow()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 604
    iget-object v3, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v3

    iget-object v4, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    .line 605
    .local v3, "halfPopupWindowWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    div-int/lit8 v5, v3, 0x2

    sub-int/2addr v4, v5

    iget-object v5, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v3

    iget v6, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMarginHorizontal:I

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 608
    .end local v3    # "halfPopupWindowWidth":I
    :cond_1
    const/4 v3, 0x0

    .line 609
    .local v3, "offsetX":I
    iget v4, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPopupVerticalOffset:I

    .line 612
    .local v4, "offsetY":I
    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget-object v6, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    .line 614
    .local v5, "availableHeightAboveContent":I
    iget-object v6, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    .line 617
    .local v6, "availableHeightBelowContent":I
    iget v7, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMarginVertical:I

    mul-int/lit8 v7, v7, 0x2

    .line 618
    .local v7, "margin":I
    iget v8, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mLineHeight:I

    add-int/2addr v8, v7

    .line 620
    .local v8, "toolbarHeightWithVerticalMargin":I
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->hasOverflow()Z

    move-result v9

    const/4 v10, 0x1

    if-nez v9, :cond_5

    .line 621
    if-lt v5, v8, :cond_2

    .line 623
    iget v9, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v8

    .local v9, "y":I
    goto/16 :goto_1

    .line 624
    .end local v9    # "y":I
    :cond_2
    if-lt v6, v8, :cond_3

    .line 626
    iget v9, v1, Landroid/graphics/Rect;->bottom:I

    .restart local v9    # "y":I
    goto/16 :goto_1

    .line 627
    .end local v9    # "y":I
    :cond_3
    iget v9, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mLineHeight:I

    if-lt v6, v9, :cond_4

    .line 629
    iget v9, v1, Landroid/graphics/Rect;->bottom:I

    iget v12, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMarginVertical:I

    sub-int/2addr v9, v12

    .restart local v9    # "y":I
    goto/16 :goto_1

    .line 632
    .end local v9    # "y":I
    :cond_4
    iget-object v9, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget v12, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v8

    invoke-static {v9, v12}, Ljava/lang/Math;->max(II)I

    move-result v9

    .restart local v9    # "y":I
    goto/16 :goto_1

    .line 638
    .end local v9    # "y":I
    :cond_5
    nop

    .line 639
    invoke-direct {v0, v10}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->calculateOverflowHeight(I)I

    move-result v9

    add-int/2addr v9, v7

    .line 640
    .local v9, "minimumOverflowHeightWithMargin":I
    iget-object v12, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    iget v13, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v13

    add-int/2addr v12, v8

    .line 643
    .local v12, "availableHeightThroughContentDown":I
    iget v13, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v14, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    sub-int/2addr v13, v14

    add-int/2addr v13, v8

    .line 647
    .local v13, "availableHeightThroughContentUp":I
    iget-object v14, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 648
    invoke-virtual {v14}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v14

    iget-object v15, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v15}, Landroid/util/Size;->getHeight()I

    move-result v15

    iget-object v11, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    .line 649
    invoke-virtual {v11}, Landroid/util/Size;->getHeight()I

    move-result v11

    sub-int/2addr v15, v11

    sub-int/2addr v14, v15

    .line 652
    .local v14, "toolbarAreaHeight":I
    if-lt v5, v9, :cond_7

    .line 661
    if-lt v5, v12, :cond_6

    .line 664
    sub-int v11, v5, v7

    invoke-direct {v0, v11}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->updateOverflowHeight(I)V

    .line 665
    iget v11, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v14

    .line 666
    .local v11, "y":I
    iput-boolean v10, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOpenOverflowUpwards:Z

    goto :goto_0

    .line 671
    .end local v11    # "y":I
    :cond_6
    sub-int v11, v12, v7

    invoke-direct {v0, v11}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->updateOverflowHeight(I)V

    .line 672
    iget v11, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v8

    .line 673
    .restart local v11    # "y":I
    const/4 v15, 0x0

    iput-boolean v15, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOpenOverflowUpwards:Z

    goto :goto_0

    .line 676
    .end local v11    # "y":I
    :cond_7
    if-lt v5, v8, :cond_8

    if-lt v12, v9, :cond_8

    .line 681
    sub-int v11, v12, v7

    invoke-direct {v0, v11}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->updateOverflowHeight(I)V

    .line 682
    iget v11, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v8

    .line 683
    .restart local v11    # "y":I
    const/4 v15, 0x0

    iput-boolean v15, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOpenOverflowUpwards:Z

    goto :goto_0

    .line 684
    .end local v11    # "y":I
    :cond_8
    if-lt v6, v9, :cond_a

    .line 693
    if-lt v6, v13, :cond_9

    .line 696
    iget v11, v1, Landroid/graphics/Rect;->bottom:I

    .line 697
    .restart local v11    # "y":I
    sub-int v15, v6, v7

    invoke-direct {v0, v15}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->updateOverflowHeight(I)V

    .line 698
    const/4 v15, 0x0

    iput-boolean v15, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOpenOverflowUpwards:Z

    goto :goto_0

    .line 703
    .end local v11    # "y":I
    :cond_9
    sub-int v11, v13, v7

    invoke-direct {v0, v11}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->updateOverflowHeight(I)V

    .line 704
    iget v11, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v8

    sub-int/2addr v11, v14

    .line 706
    .restart local v11    # "y":I
    iput-boolean v10, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOpenOverflowUpwards:Z

    goto :goto_0

    .line 709
    .end local v11    # "y":I
    :cond_a
    if-lt v6, v8, :cond_b

    iget-object v11, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    .line 710
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    if-lt v11, v9, :cond_b

    .line 714
    sub-int v11, v13, v7

    invoke-direct {v0, v11}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->updateOverflowHeight(I)V

    .line 720
    iget v11, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v8

    sub-int/2addr v11, v14

    .line 723
    .restart local v11    # "y":I
    iput-boolean v10, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOpenOverflowUpwards:Z

    goto :goto_0

    .line 727
    .end local v11    # "y":I
    :cond_b
    iget-object v11, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    sub-int/2addr v11, v7

    invoke-direct {v0, v11}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->updateOverflowHeight(I)V

    .line 728
    iget-object v11, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    .line 729
    .restart local v11    # "y":I
    const/4 v15, 0x0

    iput-boolean v15, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOpenOverflowUpwards:Z

    .line 733
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->hasOverflow()Z

    move-result v15

    if-eqz v15, :cond_e

    .line 734
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->isInRTLMode()Z

    move-result v15

    if-eqz v15, :cond_c

    .line 735
    iget-object v15, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v15}, Landroid/util/Size;->getWidth()I

    move-result v15

    iget-object v10, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v10}, Landroid/util/Size;->getWidth()I

    move-result v10

    sub-int/2addr v15, v10

    sub-int/2addr v3, v15

    .line 737
    :cond_c
    iget-boolean v10, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOpenOverflowUpwards:Z

    if-nez v10, :cond_d

    .line 738
    iget-object v10, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    move-result v10

    iget-object v15, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v15}, Landroid/util/Size;->getHeight()I

    move-result v15

    sub-int/2addr v10, v15

    sub-int/2addr v4, v10

    move v9, v11

    goto :goto_1

    .line 737
    :cond_d
    move v9, v11

    goto :goto_1

    .line 733
    :cond_e
    move v9, v11

    .line 751
    .end local v11    # "y":I
    .end local v12    # "availableHeightThroughContentDown":I
    .end local v13    # "availableHeightThroughContentUp":I
    .end local v14    # "toolbarAreaHeight":I
    .local v9, "y":I
    :goto_1
    iget-object v10, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mParent:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v10

    iget-object v11, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mTmpCoords:[I

    invoke-virtual {v10, v11}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 752
    iget-object v10, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mTmpCoords:[I

    const/4 v11, 0x0

    aget v12, v10, v11

    .line 753
    .local v12, "rootViewLeftOnScreen":I
    const/4 v13, 0x1

    aget v10, v10, v13

    .line 754
    .local v10, "rootViewTopOnScreen":I
    iget-object v14, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mParent:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v14

    iget-object v15, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mTmpCoords:[I

    invoke-virtual {v14, v15}, Landroid/view/View;->getLocationInWindow([I)V

    .line 755
    iget-object v14, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mTmpCoords:[I

    aget v15, v14, v11

    .line 756
    .local v15, "rootViewLeftOnWindow":I
    aget v11, v14, v13

    .line 757
    .local v11, "rootViewTopOnWindow":I
    sub-int v13, v12, v15

    .line 758
    .local v13, "windowLeftOnScreen":I
    sub-int v14, v10, v11

    .line 764
    .local v14, "windowTopOnScreen":I
    iget-object v1, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    move/from16 v16, v5

    .end local v5    # "availableHeightAboveContent":I
    .local v16, "availableHeightAboveContent":I
    iget-object v5, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    .line 765
    move/from16 v17, v6

    const/4 v6, 0x0

    .end local v6    # "availableHeightBelowContent":I
    .local v17, "availableHeightBelowContent":I
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    sub-int/2addr v5, v13

    sub-int v6, v2, v13

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget-object v6, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    .line 767
    move/from16 v18, v2

    const/4 v2, 0x0

    .end local v2    # "x":I
    .local v18, "x":I
    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v6

    sub-int/2addr v6, v14

    sub-int v2, v9, v14

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 764
    invoke-virtual {v1, v5, v2}, Landroid/graphics/Point;->set(II)V

    .line 770
    iget-object v1, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Point;->offset(II)V

    .line 773
    iget-boolean v1, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMoved:Z

    if-nez v1, :cond_f

    .line 774
    iget-object v1, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMovedPos:Landroid/graphics/Point;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Point;->set(II)V

    .line 775
    iget-object v1, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOriginalPos:Landroid/graphics/Point;

    iget-object v2, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v5, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v5}, Landroid/graphics/Point;->set(II)V

    .line 779
    :cond_f
    return-void
.end method

.method private blacklist refreshViewPort()V
    .locals 5

    .line 1294
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mParent:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1296
    new-instance v0, Lcom/samsung/android/app/SemMultiWindowManager;

    invoke-direct {v0}, Lcom/samsung/android/app/SemMultiWindowManager;-><init>()V

    .line 1297
    .local v0, "multiWindowManager":Lcom/samsung/android/app/SemMultiWindowManager;
    invoke-virtual {v0}, Lcom/samsung/android/app/SemMultiWindowManager;->getMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1298
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mParent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v1

    .line 1299
    .local v1, "location":[I
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    const/4 v3, 0x1

    aget v4, v1, v3

    if-ge v2, v4, :cond_0

    .line 1300
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    aget v3, v1, v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 1304
    .end local v1    # "location":[I
    :cond_0
    return-void
.end method

.method private blacklist runDismissAnimation()V
    .locals 1

    .line 792
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mDismissAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 793
    return-void
.end method

.method private blacklist runHideAnimation()V
    .locals 1

    .line 799
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mHideAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 800
    return-void
.end method

.method private blacklist runShowAnimation()V
    .locals 1

    .line 785
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mShowAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 786
    return-void
.end method

.method private blacklist setButtonTagAndClickListener(Landroid/view/View;Landroid/view/MenuItem;)V
    .locals 1
    .param p1, "menuItemButton"    # Landroid/view/View;
    .param p2, "menuItem"    # Landroid/view/MenuItem;

    .line 1637
    invoke-static {p2}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;->of(Landroid/view/MenuItem;)Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1639
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 1641
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMenuItemButtonOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1642
    return-void
.end method

.method private blacklist setContentAreaAsTouchableSurface()V
    .locals 8

    .line 1330
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1333
    iget-boolean v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mIsOverflowOpen:Z

    if-eqz v0, :cond_0

    .line 1334
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1335
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    .line 1336
    .local v0, "width":I
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    .local v1, "height":I
    goto :goto_0

    .line 1338
    .end local v0    # "width":I
    .end local v1    # "height":I
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    .line 1339
    .restart local v0    # "width":I
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    .line 1342
    .restart local v1    # "height":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mToolbarVisibleRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 1344
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mTouchableRegion:Landroid/graphics/Region;

    iget-object v4, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    .line 1345
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getX()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    .line 1346
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getY()F

    move-result v5

    float-to-int v5, v5

    iget-object v6, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    .line 1347
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getX()F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v6, v0

    iget-object v7, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    .line 1348
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getY()F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v7, v1

    .line 1344
    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/graphics/Region;->set(IIII)Z

    .line 1351
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v2}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 1352
    .local v2, "touchableRect":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mToolbarHiddenArea:[I

    iget-object v5, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mToolbarVisibleRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v6, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    aput v5, v4, v3

    .line 1353
    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mToolbarHiddenArea:[I

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mToolbarVisibleRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget v6, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    aput v5, v3, v4

    .line 1355
    return-void
.end method

.method private blacklist setCutoutMarginValue(Landroid/view/DisplayCutout;)V
    .locals 8
    .param p1, "displayCutout"    # Landroid/view/DisplayCutout;

    .line 2278
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    move-result-object v0

    .line 2279
    .local v0, "cutoutRectList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2280
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 2281
    .local v1, "windowRect":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mParentRoot:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowDisplayFrame(Landroid/graphics/Rect;)V

    .line 2282
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 2287
    .local v3, "rect":Landroid/graphics/Rect;
    iget v4, v3, Landroid/graphics/Rect;->right:I

    iget v5, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    .line 2288
    .local v4, "cutoutWidth":I
    iget v5, v3, Landroid/graphics/Rect;->left:I

    if-nez v5, :cond_0

    .line 2289
    sput v4, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mCutoutLeftMargin:I

    .line 2290
    iget v5, v1, Landroid/graphics/Rect;->right:I

    sput v5, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mCutoutRightMargin:I

    goto :goto_1

    .line 2291
    :cond_0
    iget v5, v3, Landroid/graphics/Rect;->right:I

    iget v6, v1, Landroid/graphics/Rect;->right:I

    const/4 v7, 0x0

    if-ne v5, v6, :cond_1

    .line 2292
    sput v7, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mCutoutLeftMargin:I

    .line 2293
    iget v5, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v4

    sput v5, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mCutoutRightMargin:I

    goto :goto_1

    .line 2295
    :cond_1
    sput v7, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mCutoutRightMargin:I

    sput v7, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mCutoutLeftMargin:I

    .line 2297
    .end local v3    # "rect":Landroid/graphics/Rect;
    .end local v4    # "cutoutWidth":I
    :goto_1
    goto :goto_0

    .line 2299
    .end local v1    # "windowRect":Landroid/graphics/Rect;
    :cond_2
    return-void
.end method

.method private static blacklist setHeight(Landroid/view/View;I)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "height"    # I

    .line 1839
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1840
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p0, v1, p1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->setSize(Landroid/view/View;II)V

    .line 1841
    return-void
.end method

.method private blacklist setPanelsStatesAtRestingPosition()V
    .locals 8

    .line 1039
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1040
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->awakenScrollBars()Z

    .line 1042
    iget-boolean v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mIsOverflowOpen:Z

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_8

    .line 1044
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    .line 1045
    .local v0, "containerSize":Landroid/util/Size;
    iget-object v5, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-static {v5, v0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->setSize(Landroid/view/View;Landroid/util/Size;)V

    .line 1046
    iget-object v5, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 1047
    iget-object v5, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1048
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->setAlpha(F)V

    .line 1049
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->setVisibility(I)V

    .line 1051
    sget-boolean v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->sIsSemType:Z

    if-eqz v1, :cond_0

    .line 1052
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mDividerHorizontal:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1053
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mArrowSem:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1055
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1058
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContext:Landroid/content/Context;

    const v3, 0x104054a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1062
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1064
    .local v1, "diff":I
    if-gez v1, :cond_2

    .line 1065
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 1066
    .local v2, "absDiff":I
    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v3

    sub-int/2addr v3, v2

    iget-object v5, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    sub-int/2addr v3, v5

    iget v5, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMarginHorizontal:I

    sub-int/2addr v3, v5

    .line 1068
    .local v3, "x":I
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->isInRTLMode()Z

    move-result v5

    iget-boolean v6, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mIsClosedOpposites:Z

    if-eq v5, v6, :cond_1

    .line 1069
    iget-object v5, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMarginHorizontal:I

    sub-int v3, v5, v6

    .line 1072
    .end local v2    # "absDiff":I
    :cond_1
    goto :goto_1

    .line 1073
    .end local v3    # "x":I
    :cond_2
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMarginHorizontal:I

    sub-int v3, v2, v3

    .line 1075
    .restart local v3    # "x":I
    :goto_1
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    int-to-float v5, v3

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setX(F)V

    .line 1077
    sget-boolean v2, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->sIsSemType:Z

    if-eqz v2, :cond_3

    .line 1078
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mDividerHorizontal:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1079
    .local v2, "params":Landroid/view/ViewGroup$LayoutParams;
    iget-object v5, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1080
    iget-object v5, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mDividerHorizontal:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1085
    .end local v2    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->isInRTLMode()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1087
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setX(F)V

    .line 1088
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    .line 1089
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    .line 1088
    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setX(F)V

    .line 1090
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->setX(F)V

    .line 1092
    sget-boolean v2, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->sIsSemType:Z

    if-eqz v2, :cond_5

    .line 1093
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mDividerHorizontal:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setX(F)V

    goto :goto_2

    .line 1101
    :cond_4
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getX()F

    move-result v5

    neg-float v5, v5

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setX(F)V

    .line 1102
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setX(F)V

    .line 1103
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->setX(F)V

    .line 1105
    sget-boolean v2, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->sIsSemType:Z

    if-eqz v2, :cond_5

    .line 1106
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mDividerHorizontal:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setX(F)V

    .line 1112
    :cond_5
    :goto_2
    iget-boolean v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOpenOverflowUpwards:Z

    if-eqz v2, :cond_6

    .line 1115
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget v5, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPopupTopMargin:I

    int-to-float v5, v5

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setY(F)V

    .line 1117
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    .line 1118
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    .line 1117
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setY(F)V

    .line 1119
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    .line 1120
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    .line 1119
    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setY(F)V

    .line 1121
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->setY(F)V

    .line 1123
    sget-boolean v2, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->sIsSemType:Z

    if-eqz v2, :cond_7

    .line 1124
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mDividerHorizontal:Landroid/widget/ImageView;

    .line 1125
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 1124
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setY(F)V

    goto :goto_3

    .line 1132
    :cond_6
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget v5, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPopupTopMargin:I

    iget-object v6, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    .line 1133
    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    add-int/2addr v5, v6

    int-to-float v5, v5

    .line 1132
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setY(F)V

    .line 1135
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setY(F)V

    .line 1136
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setY(F)V

    .line 1137
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    iget-object v4, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->setY(F)V

    .line 1139
    sget-boolean v2, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->sIsSemType:Z

    if-eqz v2, :cond_7

    .line 1140
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mDividerHorizontal:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setY(F)V

    .line 1144
    .end local v0    # "containerSize":Landroid/util/Size;
    .end local v1    # "diff":I
    .end local v3    # "x":I
    :cond_7
    :goto_3
    goto/16 :goto_7

    .line 1146
    :cond_8
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    .line 1147
    .restart local v0    # "containerSize":Landroid/util/Size;
    iget-object v5, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-static {v5, v0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->setSize(Landroid/view/View;Landroid/util/Size;)V

    .line 1148
    iget-object v5, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 1149
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1150
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->setAlpha(F)V

    .line 1151
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->setVisibility(I)V

    .line 1152
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1153
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContext:Landroid/content/Context;

    const v5, 0x104054b

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1156
    sget-boolean v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->sIsSemType:Z

    if-eqz v1, :cond_9

    .line 1157
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mDividerHorizontal:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1161
    :cond_9
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->hasOverflow()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1163
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1165
    .restart local v1    # "diff":I
    if-gez v1, :cond_a

    .line 1166
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMarginHorizontal:I

    sub-int/2addr v2, v3

    .local v2, "x":I
    goto :goto_4

    .line 1169
    .end local v2    # "x":I
    :cond_a
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v2

    sub-int/2addr v2, v1

    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMarginHorizontal:I

    sub-int/2addr v2, v3

    .line 1171
    .restart local v2    # "x":I
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->isInRTLMode()Z

    move-result v3

    iget-boolean v5, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mIsClosedOpposites:Z

    if-eq v3, v5, :cond_b

    .line 1172
    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v3

    iget-object v5, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    sub-int/2addr v3, v5

    iget v5, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMarginHorizontal:I

    sub-int v2, v3, v5

    .line 1176
    :cond_b
    :goto_4
    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    int-to-float v5, v2

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setX(F)V

    .line 1180
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->isInRTLMode()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1182
    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setX(F)V

    .line 1183
    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setX(F)V

    .line 1184
    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->setX(F)V

    goto :goto_5

    .line 1190
    :cond_c
    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setX(F)V

    .line 1191
    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    .line 1192
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    .line 1191
    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setX(F)V

    .line 1193
    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    .line 1194
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    .line 1193
    invoke-virtual {v3, v5}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->setX(F)V

    .line 1216
    :goto_5
    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget v5, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPopupTopMargin:I

    iget-object v6, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    .line 1217
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    .line 1216
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setY(F)V

    .line 1218
    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setY(F)V

    .line 1219
    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setY(F)V

    .line 1221
    iget-boolean v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOpenOverflowUpwards:Z

    if-eqz v3, :cond_d

    .line 1222
    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    .line 1223
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 1222
    invoke-virtual {v3, v4}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->setY(F)V

    goto :goto_6

    .line 1225
    :cond_d
    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    iget-object v4, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->setY(F)V

    .line 1228
    .end local v1    # "diff":I
    .end local v2    # "x":I
    :goto_6
    goto :goto_7

    .line 1230
    :cond_e
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMarginHorizontal:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setX(F)V

    .line 1233
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPopupTopMargin:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setY(F)V

    .line 1235
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setX(F)V

    .line 1236
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setY(F)V

    .line 1239
    .end local v0    # "containerSize":Landroid/util/Size;
    :goto_7
    return-void
.end method

.method private static blacklist setSize(Landroid/view/View;II)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 1820
    invoke-virtual {p0, p1}, Landroid/view/View;->setMinimumWidth(I)V

    .line 1821
    invoke-virtual {p0, p2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 1822
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1823
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    move-object v0, v1

    .line 1824
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1825
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1826
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1827
    return-void
.end method

.method private static blacklist setSize(Landroid/view/View;Landroid/util/Size;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "size"    # Landroid/util/Size;

    .line 1830
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->setSize(Landroid/view/View;II)V

    .line 1831
    return-void
.end method

.method private blacklist setTouchableSurfaceInsetsComputer()V
    .locals 2

    .line 1363
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 1364
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 1365
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1366
    .local v0, "viewTreeObserver":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 1367
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 1368
    return-void
.end method

.method private static blacklist setWidth(Landroid/view/View;I)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "width"    # I

    .line 1834
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1835
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p0, p1, v1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->setSize(Landroid/view/View;II)V

    .line 1836
    return-void
.end method

.method private blacklist setZeroTouchableSurface()V
    .locals 1

    .line 1323
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    .line 1324
    return-void
.end method

.method private blacklist shiftPopup()V
    .locals 5

    .line 2190
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 2191
    .local v0, "startPopupX":I
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMarginHorizontal:I

    sub-int/2addr v1, v2

    .line 2193
    .local v1, "targetPopupX":I
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v3, 0x1

    aput v1, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 2194
    .local v2, "popupShiftAnimator":Landroid/animation/ValueAnimator;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_0

    .line 2195
    new-instance v3, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$16;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$16;-><init>(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2210
    :cond_0
    const-wide/16 v3, 0x64

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2211
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 2212
    return-void
.end method

.method private blacklist show(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "contentRectOnScreen"    # Landroid/graphics/Rect;

    .line 480
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    invoke-virtual {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    return-void

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mParentRoot:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 487
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 491
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mHidden:Z

    .line 492
    iput-boolean v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mDismissed:Z

    .line 493
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->cancelDismissAndHideAnimations()V

    .line 494
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->cancelOverflowAnimations()V

    .line 496
    invoke-direct {p0, p1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->refreshCoordinatesAndOverflowDirection(Landroid/graphics/Rect;)V

    .line 497
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->preparePopupContent()V

    .line 503
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->recalCoordsOnWindowX()V

    .line 506
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mParent:Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 508
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->setTouchableSurfaceInsetsComputer()V

    .line 509
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->runShowAnimation()V

    .line 510
    return-void
.end method

.method private blacklist updateCoordinates(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "contentRectOnScreen"    # Landroid/graphics/Rect;

    .line 565
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    invoke-virtual {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 571
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->cancelOverflowAnimations()V

    .line 572
    invoke-direct {p0, p1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->refreshCoordinatesAndOverflowDirection(Landroid/graphics/Rect;)V

    .line 573
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->preparePopupContent()V

    .line 579
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->recalCoordsOnWindowX()V

    .line 582
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 584
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v4

    .line 582
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 585
    return-void

    .line 568
    :cond_1
    :goto_0
    return-void
.end method

.method private static blacklist updateMenuItemButton(Landroid/view/View;Landroid/view/MenuItem;IZ)V
    .locals 5
    .param p0, "menuItemButton"    # Landroid/view/View;
    .param p1, "menuItem"    # Landroid/view/MenuItem;
    .param p2, "iconTextSpacing"    # I
    .param p3, "showIcon"    # Z

    .line 2355
    const v0, 0x102031b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2357
    .local v0, "buttonText":Landroid/widget/TextView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 2358
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 2359
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 2361
    :cond_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2362
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2364
    :goto_0
    const v1, 0x1020319

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 2366
    .local v1, "buttonIcon":Landroid/widget/ImageView;
    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_2

    if-nez p3, :cond_1

    goto :goto_1

    .line 2372
    :cond_1
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2373
    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2374
    if-eqz v0, :cond_3

    .line 2375
    invoke-virtual {v0, p2, v3, v3, v3}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    goto :goto_2

    .line 2367
    :cond_2
    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2368
    if-eqz v0, :cond_3

    .line 2369
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 2378
    :cond_3
    :goto_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    .line 2379
    .local v2, "contentDescription":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2380
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 2382
    :cond_4
    invoke-virtual {p0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2384
    :goto_3
    return-void
.end method

.method private blacklist updateMenuItems(Ljava/util/List;Landroid/view/MenuItem$OnMenuItemClickListener;)V
    .locals 4
    .param p2, "menuItemClickListener"    # Landroid/view/MenuItem$OnMenuItemClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;",
            "Landroid/view/MenuItem$OnMenuItemClickListener;",
            ")V"
        }
    .end annotation

    .line 434
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMenuItems:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 435
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MenuItem;

    .line 436
    .local v1, "menuItem":Landroid/view/MenuItem;
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMenuItems:Ljava/util/Map;

    invoke-static {v1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;->of(Landroid/view/MenuItem;)Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    .end local v1    # "menuItem":Landroid/view/MenuItem;
    goto :goto_0

    .line 438
    :cond_0
    iput-object p2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 439
    return-void
.end method

.method private blacklist updateOverflowHeight(I)V
    .locals 6
    .param p1, "suggestedHeight"    # I

    .line 1242
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->hasOverflow()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1243
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    .line 1244
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    sub-int v0, p1, v0

    iget v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mLineHeight:I

    div-int/2addr v0, v1

    .line 1247
    .local v0, "maxItemSize":I
    invoke-direct {p0, v0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->calculateOverflowHeight(I)I

    move-result v1

    .line 1248
    .local v1, "newHeight":I
    if-le v1, p1, :cond_0

    .line 1249
    move v1, p1

    .line 1252
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    if-eq v2, v1, :cond_1

    .line 1253
    new-instance v2, Landroid/util/Size;

    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-direct {v2, v3, v1}, Landroid/util/Size;-><init>(II)V

    iput-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    .line 1255
    :cond_1
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;

    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-static {v2, v3}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->setSize(Landroid/view/View;Landroid/util/Size;)V

    .line 1256
    iget-boolean v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mIsOverflowOpen:Z

    if-eqz v2, :cond_2

    .line 1257
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-static {v2, v3}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->setSize(Landroid/view/View;Landroid/util/Size;)V

    .line 1258
    iget-boolean v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOpenOverflowUpwards:Z

    if-eqz v2, :cond_3

    .line 1259
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    sub-int/2addr v2, v1

    .line 1260
    .local v2, "deltaHeight":I
    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getY()F

    move-result v4

    int-to-float v5, v2

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setY(F)V

    .line 1261
    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getY()F

    move-result v4

    int-to-float v5, v2

    sub-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setY(F)V

    .line 1262
    .end local v2    # "deltaHeight":I
    goto :goto_0

    .line 1264
    :cond_2
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-static {v2, v3}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->setSize(Landroid/view/View;Landroid/util/Size;)V

    .line 1266
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->updatePopupSize()V

    .line 1268
    .end local v0    # "maxItemSize":I
    .end local v1    # "newHeight":I
    :cond_4
    return-void
.end method

.method private blacklist updatePopupSize()V
    .locals 5

    .line 1271
    const/4 v0, 0x0

    .line 1272
    .local v0, "width":I
    const/4 v1, 0x0

    .line 1273
    .local v1, "height":I
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    if-eqz v2, :cond_0

    .line 1274
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1275
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1277
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    if-eqz v2, :cond_1

    .line 1278
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1279
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1281
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    if-eqz v2, :cond_1

    .line 1282
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 1283
    .local v2, "adbDiff":I
    add-int/2addr v0, v2

    .line 1284
    mul-int/lit8 v3, v1, 0x2

    iget-object v4, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    sub-int v1, v3, v4

    .line 1288
    .end local v2    # "adbDiff":I
    :cond_1
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMarginHorizontal:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1289
    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMarginVertical:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1290
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->maybeComputeTransitionDurationScale()V

    .line 1291
    return-void
.end method


# virtual methods
.method public blacklist dismiss()V
    .locals 1

    .line 514
    iget-boolean v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mDismissed:Z

    if-eqz v0, :cond_0

    .line 515
    return-void

    .line 518
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mHidden:Z

    .line 519
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mDismissed:Z

    .line 520
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mHideAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 522
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->runDismissAnimation()V

    .line 523
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->setZeroTouchableSurface()V

    .line 524
    return-void
.end method

.method public blacklist getMovedPos()Landroid/graphics/Point;
    .locals 1

    .line 2118
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMovedPos:Landroid/graphics/Point;

    return-object v0
.end method

.method public blacklist hide()V
    .locals 1

    .line 528
    invoke-virtual {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 529
    return-void

    .line 532
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mHidden:Z

    .line 533
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->runHideAnimation()V

    .line 534
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->setZeroTouchableSurface()V

    .line 535
    return-void
.end method

.method public blacklist isDiscardTouch()Z
    .locals 1

    .line 2554
    sget-boolean v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->sIsDiscardTouch:Z

    return v0
.end method

.method public blacklist isDismissed()Z
    .locals 1

    .line 2124
    iget-boolean v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mDismissed:Z

    return v0
.end method

.method public blacklist isHidden()Z
    .locals 1

    .line 544
    iget-boolean v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mHidden:Z

    return v0
.end method

.method public blacklist isMovingStarted()Z
    .locals 1

    .line 555
    sget-boolean v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->sIsMovingStarted:Z

    return v0
.end method

.method public blacklist isShowing()Z
    .locals 1

    .line 539
    iget-boolean v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mDismissed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mHidden:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic blacklist lambda$createOverflowButton$1$com-android-internal-widget-floatingtoolbar-LocalFloatingToolbarPopup(Landroid/widget/ImageButton;Landroid/view/View;)V
    .locals 1
    .param p1, "overflowButton"    # Landroid/widget/ImageButton;
    .param p2, "v"    # Landroid/view/View;

    .line 1714
    sget-boolean v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->sIsDiscardTouch:Z

    if-eqz v0, :cond_0

    .line 1715
    return-void

    .line 1718
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mIsOverflowOpen:Z

    if-eqz v0, :cond_2

    .line 1720
    sget-boolean v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->sIsSemType:Z

    if-eqz v0, :cond_1

    .line 1721
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1724
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mToOverflow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1725
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mToOverflow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 1729
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->closeOverflow()V

    goto :goto_2

    .line 1732
    :cond_2
    sget-boolean v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->sIsSemType:Z

    if-eqz v0, :cond_3

    .line 1733
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mArrowSem:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 1736
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mToArrow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1737
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mToArrow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 1741
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->openOverflow()V

    .line 1743
    :goto_2
    return-void
.end method

.method synthetic blacklist lambda$createOverflowPanel$2$com-android-internal-widget-floatingtoolbar-LocalFloatingToolbarPopup(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "overflowPanel"    # Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;
    .param p2, "parent"    # Landroid/widget/AdapterView;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "position"    # I
    .param p5, "id"    # J

    .line 1765
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 1766
    invoke-virtual {p1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p4}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    .line 1767
    .local v0, "menuItem":Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    if-eqz v1, :cond_0

    .line 1768
    invoke-interface {v1, v0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    .line 1770
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$new$0$com-android-internal-widget-floatingtoolbar-LocalFloatingToolbarPopup(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    .line 151
    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 152
    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 153
    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 154
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    .line 156
    return-void
.end method

.method public blacklist layoutMainPanelItems(Ljava/util/List;I)Ljava/util/List;
    .locals 17
    .param p2, "toolbarWidth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation

    .line 1388
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1390
    move/from16 v1, p2

    .line 1392
    .local v1, "availableWidth":I
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 1394
    .local v2, "remainingMenuItems":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/view/MenuItem;>;"
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 1395
    .local v3, "overflowMenuItems":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/view/MenuItem;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const v6, 0x1020041

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/MenuItem;

    .line 1396
    .local v5, "menuItem":Landroid/view/MenuItem;
    invoke-interface {v5}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    if-eq v7, v6, :cond_0

    .line 1397
    invoke-interface {v5}, Landroid/view/MenuItem;->requiresOverflow()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1398
    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1400
    :cond_0
    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1402
    .end local v5    # "menuItem":Landroid/view/MenuItem;
    :goto_1
    goto :goto_0

    .line 1403
    :cond_1
    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 1405
    iget-object v4, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1406
    iget-object v4, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5, v5, v5}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    .line 1408
    const/4 v4, -0x1

    .line 1409
    .local v4, "lastGroupId":I
    const/4 v7, 0x1

    .line 1410
    .local v7, "isFirstItem":Z
    :goto_2
    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v8

    const/4 v9, 0x1

    if-nez v8, :cond_10

    .line 1411
    invoke-virtual {v2}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/MenuItem;

    .line 1415
    .local v8, "menuItem":Landroid/view/MenuItem;
    invoke-interface {v8}, Landroid/view/MenuItem;->getItemId()I

    move-result v10

    const v11, 0x1020318

    if-ne v10, v11, :cond_2

    .line 1416
    invoke-virtual {v2}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    .line 1417
    goto :goto_2

    .line 1423
    :cond_2
    if-nez v7, :cond_3

    invoke-interface {v8}, Landroid/view/MenuItem;->requiresOverflow()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1424
    move/from16 v9, p2

    goto/16 :goto_b

    .line 1427
    :cond_3
    if-eqz v7, :cond_4

    invoke-interface {v8}, Landroid/view/MenuItem;->getItemId()I

    move-result v10

    if-ne v10, v6, :cond_4

    move v10, v9

    goto :goto_3

    :cond_4
    move v10, v5

    .line 1428
    .local v10, "showIcon":Z
    :goto_3
    iget-object v11, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mContext:Landroid/content/Context;

    iget v12, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mIconTextSpacing:I

    invoke-static {v11, v8, v12, v10}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->createMenuItemButton(Landroid/content/Context;Landroid/view/MenuItem;IZ)Landroid/view/View;

    move-result-object v11

    .line 1430
    .local v11, "menuItemButton":Landroid/view/View;
    if-nez v10, :cond_5

    instance-of v12, v11, Landroid/widget/LinearLayout;

    if-eqz v12, :cond_5

    .line 1431
    move-object v12, v11

    check-cast v12, Landroid/widget/LinearLayout;

    const/16 v13, 0x11

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1435
    :cond_5
    const-wide/high16 v12, 0x3ff8000000000000L    # 1.5

    if-eqz v7, :cond_8

    .line 1438
    sget-boolean v14, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->sIsSemType:Z

    if-eqz v14, :cond_7

    .line 1439
    if-eqz v10, :cond_6

    .line 1440
    iget v14, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMenuFirstImageStartPadding:I

    .local v14, "itemMarginStart":I
    goto :goto_4

    .line 1442
    .end local v14    # "itemMarginStart":I
    :cond_6
    iget v14, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMenuFirstLastSidePadding:I

    .restart local v14    # "itemMarginStart":I
    goto :goto_4

    .line 1445
    .end local v14    # "itemMarginStart":I
    :cond_7
    invoke-virtual {v11}, Landroid/view/View;->getPaddingStart()I

    move-result v14

    int-to-double v14, v14

    mul-double/2addr v14, v12

    double-to-int v14, v14

    .line 1448
    .restart local v14    # "itemMarginStart":I
    :goto_4
    nop

    .line 1451
    invoke-virtual {v11}, Landroid/view/View;->getPaddingTop()I

    move-result v15

    .line 1452
    invoke-virtual {v11}, Landroid/view/View;->getPaddingEnd()I

    move-result v6

    .line 1453
    invoke-virtual {v11}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    .line 1448
    invoke-virtual {v11, v14, v15, v6, v5}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 1457
    .end local v14    # "itemMarginStart":I
    :cond_8
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-ne v5, v9, :cond_9

    move v5, v9

    goto :goto_5

    :cond_9
    const/4 v5, 0x0

    .line 1458
    .local v5, "isLastItem":Z
    :goto_5
    if-eqz v5, :cond_b

    .line 1459
    nop

    .line 1460
    invoke-virtual {v11}, Landroid/view/View;->getPaddingStart()I

    move-result v6

    .line 1461
    invoke-virtual {v11}, Landroid/view/View;->getPaddingTop()I

    move-result v14

    .line 1464
    sget-boolean v15, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->sIsSemType:Z

    if-eqz v15, :cond_a

    iget v12, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMenuFirstLastSidePadding:I

    move/from16 v16, v10

    goto :goto_6

    .line 1465
    :cond_a
    invoke-virtual {v11}, Landroid/view/View;->getPaddingEnd()I

    move-result v15

    move/from16 v16, v10

    .end local v10    # "showIcon":Z
    .local v16, "showIcon":Z
    int-to-double v9, v15

    mul-double/2addr v9, v12

    double-to-int v12, v9

    .line 1467
    :goto_6
    invoke-virtual {v11}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    .line 1459
    invoke-virtual {v11, v6, v14, v12, v9}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_7

    .line 1458
    .end local v16    # "showIcon":Z
    .restart local v10    # "showIcon":Z
    :cond_b
    move/from16 v16, v10

    .line 1470
    .end local v10    # "showIcon":Z
    .restart local v16    # "showIcon":Z
    :goto_7
    const/4 v6, 0x0

    invoke-virtual {v11, v6, v6}, Landroid/view/View;->measure(II)V

    .line 1471
    nop

    .line 1472
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 1471
    move/from16 v9, p2

    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1475
    .local v6, "menuItemButtonWidth":I
    sget-boolean v10, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->sIsSemType:Z

    if-eqz v10, :cond_c

    iget-object v10, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    invoke-virtual {v10}, Landroid/util/Size;->getWidth()I

    move-result v10

    goto :goto_8

    :cond_c
    const/4 v10, 0x0

    .line 1479
    .local v10, "extraPadding":I
    :goto_8
    iget-object v12, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    .line 1480
    invoke-virtual {v12}, Landroid/util/Size;->getWidth()I

    move-result v12

    sub-int v12, v1, v12

    if-gt v6, v12, :cond_d

    const/4 v12, 0x1

    goto :goto_9

    :cond_d
    const/4 v12, 0x0

    .line 1481
    .local v12, "canFitWithOverflow":Z
    :goto_9
    if-eqz v5, :cond_e

    if-gt v6, v1, :cond_e

    const/4 v13, 0x1

    goto :goto_a

    :cond_e
    const/4 v13, 0x0

    .line 1483
    .local v13, "canFitNoOverflow":Z
    :goto_a
    if-nez v12, :cond_f

    if-eqz v13, :cond_11

    .line 1484
    :cond_f
    invoke-direct {v0, v11, v8}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->setButtonTagAndClickListener(Landroid/view/View;Landroid/view/MenuItem;)V

    .line 1486
    invoke-interface {v8}, Landroid/view/MenuItem;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    .line 1487
    iget-object v14, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v14, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1488
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    .line 1489
    .local v14, "params":Landroid/view/ViewGroup$LayoutParams;
    iput v6, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1490
    invoke-virtual {v11, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1491
    sub-int/2addr v1, v6

    .line 1492
    invoke-virtual {v2}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    .line 1496
    .end local v14    # "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-interface {v8}, Landroid/view/MenuItem;->getGroupId()I

    move-result v4

    .line 1497
    const/4 v7, 0x0

    .line 1498
    .end local v5    # "isLastItem":Z
    .end local v6    # "menuItemButtonWidth":I
    .end local v8    # "menuItem":Landroid/view/MenuItem;
    .end local v10    # "extraPadding":I
    .end local v11    # "menuItemButton":Landroid/view/View;
    .end local v12    # "canFitWithOverflow":Z
    .end local v13    # "canFitNoOverflow":Z
    .end local v16    # "showIcon":Z
    const/4 v5, 0x0

    const v6, 0x1020041

    goto/16 :goto_2

    .line 1410
    :cond_10
    move/from16 v9, p2

    .line 1500
    :cond_11
    :goto_b
    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_13

    .line 1502
    sget-boolean v5, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->sIsSemType:Z

    if-eqz v5, :cond_12

    .line 1503
    iget-object v5, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    const/4 v8, 0x1

    sub-int/2addr v6, v8

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1504
    .local v5, "previousButton":Landroid/view/View;
    if-eqz v5, :cond_12

    .line 1505
    invoke-virtual {v5}, Landroid/view/View;->getPaddingEnd()I

    move-result v6

    .line 1506
    .local v6, "prevPaddingEnd":I
    invoke-virtual {v5}, Landroid/view/View;->getPaddingStart()I

    move-result v8

    .line 1507
    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v10

    mul-int/lit8 v11, v6, 0x2

    .line 1508
    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v12

    .line 1506
    invoke-virtual {v5, v8, v10, v11, v12}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 1509
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 1510
    .local v8, "prevParams":Landroid/view/ViewGroup$LayoutParams;
    iget v10, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v10, v6

    iput v10, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1511
    invoke-virtual {v5, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1513
    iget-object v10, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    iget-object v11, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mDividerVertical:Landroid/widget/ImageView;

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1519
    .end local v5    # "previousButton":Landroid/view/View;
    .end local v6    # "prevPaddingEnd":I
    .end local v8    # "prevParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_12
    iget-object v5, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    iget-object v6, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v6

    const/4 v8, 0x0

    invoke-virtual {v5, v8, v8, v6, v8}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    .line 1522
    :cond_13
    iget-object v5, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-static {v5}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->measure(Landroid/view/View;)Landroid/util/Size;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    .line 1523
    return-object v2
.end method

.method public blacklist onDetachFromWindow()V
    .locals 1

    .line 1997
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mHideAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1998
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mDismissAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1999
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2000
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2002
    :cond_0
    return-void
.end method

.method public blacklist setIsMovingStarted(Z)V
    .locals 0
    .param p1, "isMovingStarted"    # Z

    .line 550
    sput-boolean p1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->sIsMovingStarted:Z

    .line 551
    return-void
.end method

.method public blacklist setOutsideTouchable(ZLandroid/widget/PopupWindow$OnDismissListener;)Z
    .locals 3
    .param p1, "outsideTouchable"    # Z
    .param p2, "onDismiss"    # Landroid/widget/PopupWindow$OnDismissListener;

    .line 396
    const/4 v0, 0x0

    .line 397
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isOutsideTouchable()Z

    move-result v1

    xor-int/2addr v1, p1

    if-eqz v1, :cond_0

    .line 398
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 399
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 400
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->update()V

    .line 401
    const/4 v0, 0x1

    .line 403
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 404
    return v0
.end method

.method public blacklist setSuggestedWidth(I)V
    .locals 7
    .param p1, "suggestedWidth"    # I

    .line 456
    iget v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mSuggestedWidth:I

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 457
    .local v0, "difference":I
    int-to-double v1, v0

    iget v3, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mSuggestedWidth:I

    int-to-double v3, v3

    const-wide v5, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v3, v5

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mWidthChanged:Z

    .line 458
    iput p1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mSuggestedWidth:I

    .line 459
    return-void
.end method

.method public blacklist setWidthChanged(Z)V
    .locals 0
    .param p1, "widthChanged"    # Z

    .line 450
    iput-boolean p1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mWidthChanged:Z

    .line 451
    return-void
.end method

.method public blacklist show(Ljava/util/List;Landroid/view/MenuItem$OnMenuItemClickListener;Landroid/graphics/Rect;)V
    .locals 1
    .param p2, "menuItemClickListener"    # Landroid/view/MenuItem$OnMenuItemClickListener;
    .param p3, "contentRect"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;",
            "Landroid/view/MenuItem$OnMenuItemClickListener;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    .line 464
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    invoke-direct {p0, p1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->isLayoutRequired(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mWidthChanged:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 468
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->updateMenuItems(Ljava/util/List;Landroid/view/MenuItem$OnMenuItemClickListener;)V

    goto :goto_1

    .line 465
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->dismiss()V

    .line 466
    iget v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mSuggestedWidth:I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->layoutMenuItems(Ljava/util/List;Landroid/view/MenuItem$OnMenuItemClickListener;I)V

    .line 470
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 471
    invoke-direct {p0, p3}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->show(Landroid/graphics/Rect;)V

    goto :goto_2

    .line 472
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPreviousContentRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 473
    invoke-direct {p0, p3}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->updateCoordinates(Landroid/graphics/Rect;)V

    .line 475
    :cond_3
    :goto_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mWidthChanged:Z

    .line 476
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->mPreviousContentRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 477
    return-void
.end method
