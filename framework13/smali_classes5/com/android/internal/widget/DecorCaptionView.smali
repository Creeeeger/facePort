.class public Lcom/android/internal/widget/DecorCaptionView;
.super Landroid/view/ViewGroup;
.source "DecorCaptionView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Lcom/samsung/android/widget/SemCaptionButton$OnAccessibilityActionClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/DecorCaptionView$SavedState;,
        Lcom/android/internal/widget/DecorCaptionView$DummyView;,
        Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;,
        Lcom/android/internal/widget/DecorCaptionView$VisibilityAnimListener;,
        Lcom/android/internal/widget/DecorCaptionView$DexDoubleTapListener;
    }
.end annotation


# static fields
.field private static final blacklist BUTTON_ALPHA_UNFOCUSED:F = 0.4f

.field private static final blacklist DEBUG:Z = false

.field private static final blacklist DECOR_CAPTION_BUTTON_TOP_PADDING:I = 0x1

.field private static final blacklist DECOR_CAPTION_HEIGHT_DEX_FREEFORM_MODE:I = 0x1f

.field private static final blacklist DECOR_CAPTION_HEIGHT_DEX_FULLSCREEN_MODE:I = 0x24

.field private static final blacklist FADE_DURATION:I = 0x96

.field private static final blacklist FREEFORM_MIN_OPACITY:F = 0.4f

.field private static final blacklist LONG_PRESS_TIME_OUT_MW_HANDLER:I = 0x12c

.field private static final blacklist LONG_PRESS_TIME_OUT_SYSTEM_DEFAULT:I = 0x1f4

.field private static final blacklist MORE_TOGGLE_ALPHA_DURATION:I = 0xc8

.field private static final blacklist MORE_TOGGLE_ALPHA_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final blacklist MORE_TOGGLE_DELAY:I = 0x87

.field private static final blacklist MORE_TOGGLE_TRANS_DURATION:I = 0x190

.field private static final blacklist MORE_TOGGLE_TRANS_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final blacklist OPACITY_INITIAL_PROGRESS:I = 0x3c

.field private static final blacklist SAFE_DEBUG:Z

.field private static final blacklist SHOW_SEEK_BAR_DURAITON:I = 0xbb8

.field private static final blacklist TAG:Ljava/lang/String; = "DecorCaptionView"

.field private static blacklist sDmm:Lcom/samsung/android/desktopmode/SemDesktopModeManager;


# instance fields
.field private final blacklist adjustButtonRect:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mBack:Landroid/view/View;

.field private final blacklist mBackRect:Landroid/graphics/Rect;

.field private blacklist mButtonContainer:Landroid/view/View;

.field private final blacklist mButtonHoverListener:Landroid/view/View$OnHoverListener;

.field private blacklist mCanMaximizeVisibilityOnDeX:Z

.field private blacklist mCaption:Landroid/view/View;

.field private blacklist mCaptionBackgroundColor:I

.field private blacklist mCheckForDragging:Z

.field private blacklist mClickTarget:Landroid/view/View;

.field private blacklist mClickTargetInset:I

.field private blacklist mClickTargetRect:Landroid/graphics/Rect;

.field private blacklist mClose:Landroid/view/View;

.field private final blacklist mCloseRect:Landroid/graphics/Rect;

.field private blacklist mContent:Landroid/view/View;

.field private blacklist mDCResources:Lcom/samsung/android/util/DecorCaptionResources;

.field private blacklist mDecor:Lcom/android/internal/policy/DecorView;

.field private blacklist mDexCompatDialog:Landroid/app/AlertDialog;

.field private final blacklist mDisableOpacityChangeRunnable:Ljava/lang/Runnable;

.field private blacklist mDivider:Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$Divider;

.field private blacklist mDragSlop:I

.field private blacklist mDragging:Z

.field private blacklist mDummyView:Lcom/android/internal/widget/DecorCaptionView$DummyView;

.field private blacklist mExtraPaddingHorizontal:I

.field private blacklist mForceLayoutRequested:Z

.field private blacklist mGestureDetector:Landroid/view/GestureDetector;

.field private blacklist mHeaderUnpin:Landroid/view/View;

.field private final blacklist mHeaderUnpinRect:Landroid/graphics/Rect;

.field private final blacklist mHideTootipRunnable:Ljava/lang/Runnable;

.field private blacklist mIconTintList:Landroid/content/res/ColorStateList;

.field private blacklist mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private blacklist mIsDecorCaptionWindow:Z

.field private blacklist mIsDexEnabled:Z

.field private blacklist mIsFixedOrientation:Z

.field private blacklist mIsHoveringForTipPopup:Z

.field private blacklist mIsImeShowingWhenTouched:Z

.field private blacklist mIsLongPressed:Z

.field private blacklist mIsMovingTaskEnabled:Z

.field private blacklist mIsNaturalSwitching:Z

.field private blacklist mIsNightMode:Z

.field private blacklist mLastMeasuredWithCaptionHeight:Z

.field private blacklist mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

.field private blacklist mMaximize:Landroid/view/View;

.field private final blacklist mMaximizeRect:Landroid/graphics/Rect;

.field private blacklist mMaximizeRequested:Z

.field private blacklist mMenuCloseDrawable:Landroid/graphics/drawable/Drawable;

.field private blacklist mMenuDrawable:Landroid/graphics/drawable/Drawable;

.field private blacklist mMinimize:Landroid/view/View;

.field private final blacklist mMinimizeRect:Landroid/graphics/Rect;

.field private blacklist mMore:Landroid/view/View;

.field private blacklist mMoreInvisibleAnim:Landroid/animation/AnimatorSet;

.field private final blacklist mMoreInvisibleAnimListener:Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;

.field private final blacklist mMoreRect:Landroid/graphics/Rect;

.field private blacklist mMoreToggleTransX:I

.field private blacklist mMoreVisibleAnim:Landroid/animation/AnimatorSet;

.field private final blacklist mMoreVisibleAnimListener:Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;

.field private blacklist mOpacity:Landroid/view/View;

.field private blacklist mOpacityChangeModeEnabled:Z

.field private blacklist mOpacityProgress:I

.field private final blacklist mOpacityRect:Landroid/graphics/Rect;

.field private blacklist mOpacitySeekBar:Landroid/widget/SeekBar;

.field private blacklist mOverflowMenuPopup:Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX;

.field private blacklist mOverlayWithAppContent:Z

.field private blacklist mOwner:Lcom/android/internal/policy/PhoneWindow;

.field private blacklist mPinOnDex:Landroid/view/View;

.field private blacklist mPinOnDexDrawable:Landroid/graphics/drawable/Drawable;

.field private final blacklist mPinRect:Landroid/graphics/Rect;

.field private blacklist mPrimaryContainer:Landroid/view/View;

.field private blacklist mReduce:Landroid/view/View;

.field private final blacklist mReduceRect:Landroid/graphics/Rect;

.field private blacklist mRippleColorList:Landroid/content/res/ColorStateList;

.field private blacklist mRippleSize:I

.field private blacklist mRootScrollY:I

.field private blacklist mRotate:Landroid/view/View;

.field private final blacklist mRotateRect:Landroid/graphics/Rect;

.field private blacklist mSavedOutlineProvider:Landroid/view/ViewOutlineProvider;

.field private blacklist mSecondaryContainer:Landroid/view/View;

.field private blacklist mSeekBarContainer:Landroid/view/View;

.field private blacklist mShow:Z

.field private blacklist mShowPrimarySet:Z

.field private blacklist mSplit:Landroid/view/View;

.field private final blacklist mSplitRect:Landroid/graphics/Rect;

.field private blacklist mTooltipAnchor:Landroid/view/View;

.field private blacklist mTouchDispatchList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTouchDownX:I

.field private blacklist mTouchDownY:I

.field private blacklist mUnpinOnDexDrawable:Landroid/graphics/drawable/Drawable;

.field private final blacklist mVisAnimListener:Lcom/android/internal/widget/DecorCaptionView$VisibilityAnimListener;

.field private blacklist mVisibilityAnim:Landroid/animation/AnimatorSet;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmButtonContainer(Lcom/android/internal/widget/DecorCaptionView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/DecorCaptionView;->mButtonContainer:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCanMaximizeVisibilityOnDeX(Lcom/android/internal/widget/DecorCaptionView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCanMaximizeVisibilityOnDeX:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmClickTarget(Lcom/android/internal/widget/DecorCaptionView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmClose(Lcom/android/internal/widget/DecorCaptionView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDecor(Lcom/android/internal/widget/DecorCaptionView;)Lcom/android/internal/policy/DecorView;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/DecorCaptionView;->mDecor:Lcom/android/internal/policy/DecorView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisableOpacityChangeRunnable(Lcom/android/internal/widget/DecorCaptionView;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/DecorCaptionView;->mDisableOpacityChangeRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDivider(Lcom/android/internal/widget/DecorCaptionView;)Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$Divider;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/DecorCaptionView;->mDivider:Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$Divider;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHeaderUnpin(Lcom/android/internal/widget/DecorCaptionView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/DecorCaptionView;->mHeaderUnpin:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsDexEnabled(Lcom/android/internal/widget/DecorCaptionView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsDexEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMaximize(Lcom/android/internal/widget/DecorCaptionView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMinimize(Lcom/android/internal/widget/DecorCaptionView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimize:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOpacity(Lcom/android/internal/widget/DecorCaptionView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOpacity:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOpacityChangeModeEnabled(Lcom/android/internal/widget/DecorCaptionView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOpacityChangeModeEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPrimaryContainer(Lcom/android/internal/widget/DecorCaptionView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/DecorCaptionView;->mPrimaryContainer:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSecondaryContainer(Lcom/android/internal/widget/DecorCaptionView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/DecorCaptionView;->mSecondaryContainer:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSeekBarContainer(Lcom/android/internal/widget/DecorCaptionView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/DecorCaptionView;->mSeekBarContainer:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSplit(Lcom/android/internal/widget/DecorCaptionView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/DecorCaptionView;->mSplit:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsMovingTaskEnabled(Lcom/android/internal/widget/DecorCaptionView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsMovingTaskEnabled:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMoreInvisibleAnim(Lcom/android/internal/widget/DecorCaptionView;Landroid/animation/AnimatorSet;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/DecorCaptionView;->mMoreInvisibleAnim:Landroid/animation/AnimatorSet;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMoreVisibleAnim(Lcom/android/internal/widget/DecorCaptionView;Landroid/animation/AnimatorSet;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/DecorCaptionView;->mMoreVisibleAnim:Landroid/animation/AnimatorSet;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmVisibilityAnim(Lcom/android/internal/widget/DecorCaptionView;Landroid/animation/AnimatorSet;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/DecorCaptionView;->mVisibilityAnim:Landroid/animation/AnimatorSet;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 155
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/widget/DecorCaptionView;->SAFE_DEBUG:Z

    .line 326
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/widget/DecorCaptionView;->sDmm:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 356
    sget-object v0, Lcom/samsung/android/util/InterpolatorUtils;->ONE_EASING:Landroid/view/animation/PathInterpolator;

    sput-object v0, Lcom/android/internal/widget/DecorCaptionView;->MORE_TOGGLE_TRANS_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 358
    sget-object v0, Lcom/samsung/android/util/InterpolatorUtils;->SINE_OUT_60:Landroid/view/animation/PathInterpolator;

    sput-object v0, Lcom/android/internal/widget/DecorCaptionView;->MORE_TOGGLE_ALPHA_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 373
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    .line 168
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mShow:Z

    .line 171
    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragging:Z

    .line 173
    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mOverlayWithAppContent:Z

    .line 201
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsMovingTaskEnabled:Z

    .line 205
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    .line 209
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mCloseRect:Landroid/graphics/Rect;

    .line 210
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeRect:Landroid/graphics/Rect;

    .line 212
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimizeRect:Landroid/graphics/Rect;

    .line 213
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mMoreRect:Landroid/graphics/Rect;

    .line 214
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mOpacityRect:Landroid/graphics/Rect;

    .line 215
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mSplitRect:Landroid/graphics/Rect;

    .line 216
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mHeaderUnpinRect:Landroid/graphics/Rect;

    .line 219
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mBackRect:Landroid/graphics/Rect;

    .line 220
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mRotateRect:Landroid/graphics/Rect;

    .line 221
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mReduceRect:Landroid/graphics/Rect;

    .line 222
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mPinRect:Landroid/graphics/Rect;

    .line 242
    iput-boolean v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mShowPrimarySet:Z

    .line 243
    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsLongPressed:Z

    .line 244
    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeRequested:Z

    .line 245
    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mLastMeasuredWithCaptionHeight:Z

    .line 252
    new-instance v3, Lcom/android/internal/widget/DecorCaptionView$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/DecorCaptionView$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/widget/DecorCaptionView;)V

    iput-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mButtonHoverListener:Landroid/view/View$OnHoverListener;

    .line 265
    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mTooltipAnchor:Landroid/view/View;

    .line 267
    new-instance v3, Lcom/android/internal/widget/DecorCaptionView$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/DecorCaptionView$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/widget/DecorCaptionView;)V

    iput-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mHideTootipRunnable:Ljava/lang/Runnable;

    .line 302
    const/16 v3, 0x3c

    iput v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mOpacityProgress:I

    .line 303
    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mOpacityChangeModeEnabled:Z

    .line 307
    new-instance v3, Lcom/android/internal/widget/DecorCaptionView$VisibilityAnimListener;

    invoke-direct {v3, p0, v0}, Lcom/android/internal/widget/DecorCaptionView$VisibilityAnimListener;-><init>(Lcom/android/internal/widget/DecorCaptionView;Lcom/android/internal/widget/DecorCaptionView$VisibilityAnimListener-IA;)V

    iput-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mVisAnimListener:Lcom/android/internal/widget/DecorCaptionView$VisibilityAnimListener;

    .line 309
    new-instance v3, Lcom/android/internal/widget/DecorCaptionView$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/DecorCaptionView$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/widget/DecorCaptionView;)V

    iput-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mDisableOpacityChangeRunnable:Ljava/lang/Runnable;

    .line 318
    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mSavedOutlineProvider:Landroid/view/ViewOutlineProvider;

    .line 329
    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsDecorCaptionWindow:Z

    .line 330
    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsFixedOrientation:Z

    .line 331
    iput-boolean v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mCanMaximizeVisibilityOnDeX:Z

    .line 332
    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mForceLayoutRequested:Z

    .line 335
    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTargetRect:Landroid/graphics/Rect;

    .line 346
    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsNaturalSwitching:Z

    .line 364
    new-instance v1, Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;-><init>(Lcom/android/internal/widget/DecorCaptionView;Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener-IA;)V

    iput-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mMoreInvisibleAnimListener:Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;

    .line 365
    new-instance v1, Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;-><init>(Lcom/android/internal/widget/DecorCaptionView;Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener-IA;)V

    iput-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mMoreVisibleAnimListener:Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;

    .line 2275
    new-instance v0, Lcom/android/internal/widget/DecorCaptionView$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/DecorCaptionView$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/widget/DecorCaptionView;)V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->adjustButtonRect:Ljava/util/function/BiConsumer;

    .line 374
    invoke-direct {p0, p1}, Lcom/android/internal/widget/DecorCaptionView;->init(Landroid/content/Context;)V

    .line 375
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 378
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    .line 168
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mShow:Z

    .line 171
    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragging:Z

    .line 173
    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mOverlayWithAppContent:Z

    .line 201
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsMovingTaskEnabled:Z

    .line 205
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    .line 209
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mCloseRect:Landroid/graphics/Rect;

    .line 210
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeRect:Landroid/graphics/Rect;

    .line 212
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimizeRect:Landroid/graphics/Rect;

    .line 213
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mMoreRect:Landroid/graphics/Rect;

    .line 214
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mOpacityRect:Landroid/graphics/Rect;

    .line 215
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mSplitRect:Landroid/graphics/Rect;

    .line 216
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mHeaderUnpinRect:Landroid/graphics/Rect;

    .line 219
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mBackRect:Landroid/graphics/Rect;

    .line 220
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mRotateRect:Landroid/graphics/Rect;

    .line 221
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mReduceRect:Landroid/graphics/Rect;

    .line 222
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mPinRect:Landroid/graphics/Rect;

    .line 242
    iput-boolean v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mShowPrimarySet:Z

    .line 243
    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsLongPressed:Z

    .line 244
    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeRequested:Z

    .line 245
    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mLastMeasuredWithCaptionHeight:Z

    .line 252
    new-instance v3, Lcom/android/internal/widget/DecorCaptionView$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/DecorCaptionView$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/widget/DecorCaptionView;)V

    iput-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mButtonHoverListener:Landroid/view/View$OnHoverListener;

    .line 265
    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mTooltipAnchor:Landroid/view/View;

    .line 267
    new-instance v3, Lcom/android/internal/widget/DecorCaptionView$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/DecorCaptionView$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/widget/DecorCaptionView;)V

    iput-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mHideTootipRunnable:Ljava/lang/Runnable;

    .line 302
    const/16 v3, 0x3c

    iput v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mOpacityProgress:I

    .line 303
    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mOpacityChangeModeEnabled:Z

    .line 307
    new-instance v3, Lcom/android/internal/widget/DecorCaptionView$VisibilityAnimListener;

    invoke-direct {v3, p0, v0}, Lcom/android/internal/widget/DecorCaptionView$VisibilityAnimListener;-><init>(Lcom/android/internal/widget/DecorCaptionView;Lcom/android/internal/widget/DecorCaptionView$VisibilityAnimListener-IA;)V

    iput-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mVisAnimListener:Lcom/android/internal/widget/DecorCaptionView$VisibilityAnimListener;

    .line 309
    new-instance v3, Lcom/android/internal/widget/DecorCaptionView$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/DecorCaptionView$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/widget/DecorCaptionView;)V

    iput-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mDisableOpacityChangeRunnable:Ljava/lang/Runnable;

    .line 318
    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mSavedOutlineProvider:Landroid/view/ViewOutlineProvider;

    .line 329
    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsDecorCaptionWindow:Z

    .line 330
    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsFixedOrientation:Z

    .line 331
    iput-boolean v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mCanMaximizeVisibilityOnDeX:Z

    .line 332
    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mForceLayoutRequested:Z

    .line 335
    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTargetRect:Landroid/graphics/Rect;

    .line 346
    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsNaturalSwitching:Z

    .line 364
    new-instance v1, Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;-><init>(Lcom/android/internal/widget/DecorCaptionView;Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener-IA;)V

    iput-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mMoreInvisibleAnimListener:Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;

    .line 365
    new-instance v1, Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;-><init>(Lcom/android/internal/widget/DecorCaptionView;Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener-IA;)V

    iput-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mMoreVisibleAnimListener:Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;

    .line 2275
    new-instance v0, Lcom/android/internal/widget/DecorCaptionView$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/DecorCaptionView$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/widget/DecorCaptionView;)V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->adjustButtonRect:Ljava/util/function/BiConsumer;

    .line 379
    invoke-direct {p0, p1}, Lcom/android/internal/widget/DecorCaptionView;->init(Landroid/content/Context;)V

    .line 380
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 383
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    .line 168
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mShow:Z

    .line 171
    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragging:Z

    .line 173
    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mOverlayWithAppContent:Z

    .line 201
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsMovingTaskEnabled:Z

    .line 205
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    .line 209
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mCloseRect:Landroid/graphics/Rect;

    .line 210
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeRect:Landroid/graphics/Rect;

    .line 212
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimizeRect:Landroid/graphics/Rect;

    .line 213
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mMoreRect:Landroid/graphics/Rect;

    .line 214
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mOpacityRect:Landroid/graphics/Rect;

    .line 215
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mSplitRect:Landroid/graphics/Rect;

    .line 216
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mHeaderUnpinRect:Landroid/graphics/Rect;

    .line 219
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mBackRect:Landroid/graphics/Rect;

    .line 220
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mRotateRect:Landroid/graphics/Rect;

    .line 221
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mReduceRect:Landroid/graphics/Rect;

    .line 222
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mPinRect:Landroid/graphics/Rect;

    .line 242
    iput-boolean v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mShowPrimarySet:Z

    .line 243
    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsLongPressed:Z

    .line 244
    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeRequested:Z

    .line 245
    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mLastMeasuredWithCaptionHeight:Z

    .line 252
    new-instance v3, Lcom/android/internal/widget/DecorCaptionView$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/DecorCaptionView$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/widget/DecorCaptionView;)V

    iput-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mButtonHoverListener:Landroid/view/View$OnHoverListener;

    .line 265
    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mTooltipAnchor:Landroid/view/View;

    .line 267
    new-instance v3, Lcom/android/internal/widget/DecorCaptionView$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/DecorCaptionView$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/widget/DecorCaptionView;)V

    iput-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mHideTootipRunnable:Ljava/lang/Runnable;

    .line 302
    const/16 v3, 0x3c

    iput v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mOpacityProgress:I

    .line 303
    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mOpacityChangeModeEnabled:Z

    .line 307
    new-instance v3, Lcom/android/internal/widget/DecorCaptionView$VisibilityAnimListener;

    invoke-direct {v3, p0, v0}, Lcom/android/internal/widget/DecorCaptionView$VisibilityAnimListener;-><init>(Lcom/android/internal/widget/DecorCaptionView;Lcom/android/internal/widget/DecorCaptionView$VisibilityAnimListener-IA;)V

    iput-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mVisAnimListener:Lcom/android/internal/widget/DecorCaptionView$VisibilityAnimListener;

    .line 309
    new-instance v3, Lcom/android/internal/widget/DecorCaptionView$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/DecorCaptionView$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/widget/DecorCaptionView;)V

    iput-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mDisableOpacityChangeRunnable:Ljava/lang/Runnable;

    .line 318
    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mSavedOutlineProvider:Landroid/view/ViewOutlineProvider;

    .line 329
    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsDecorCaptionWindow:Z

    .line 330
    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsFixedOrientation:Z

    .line 331
    iput-boolean v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mCanMaximizeVisibilityOnDeX:Z

    .line 332
    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mForceLayoutRequested:Z

    .line 335
    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTargetRect:Landroid/graphics/Rect;

    .line 346
    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsNaturalSwitching:Z

    .line 364
    new-instance v1, Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;-><init>(Lcom/android/internal/widget/DecorCaptionView;Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener-IA;)V

    iput-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mMoreInvisibleAnimListener:Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;

    .line 365
    new-instance v1, Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;-><init>(Lcom/android/internal/widget/DecorCaptionView;Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener-IA;)V

    iput-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mMoreVisibleAnimListener:Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;

    .line 2275
    new-instance v0, Lcom/android/internal/widget/DecorCaptionView$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/DecorCaptionView$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/widget/DecorCaptionView;)V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->adjustButtonRect:Ljava/util/function/BiConsumer;

    .line 384
    invoke-direct {p0, p1}, Lcom/android/internal/widget/DecorCaptionView;->init(Landroid/content/Context;)V

    .line 385
    return-void
.end method

.method private blacklist adjustButtonsMarginForCutout()Z
    .locals 13

    .line 2843
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getCutoutRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 2844
    .local v0, "cutoutRect":Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->top:I

    const/4 v2, 0x0

    if-nez v1, :cond_a

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    if-lez v1, :cond_a

    .line 2845
    invoke-virtual {p0}, Lcom/android/internal/widget/DecorCaptionView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 2848
    .local v1, "config":Landroid/content/res/Configuration;
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MD_DEX_TASK_DOCKING:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v3}, Lcom/android/internal/policy/DecorView;->getDexTaskDockingState()I

    move-result v3

    goto :goto_0

    .line 2849
    :cond_0
    iget-object v3, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-static {v3}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->getFreeformDockedState(Landroid/app/WindowConfiguration;)I

    move-result v3

    :goto_0
    nop

    .line 2850
    .local v3, "dexDockingState":I
    if-eqz v3, :cond_a

    const/4 v4, -0x1

    if-eq v3, v4, :cond_a

    .line 2852
    const/4 v4, 0x2

    new-array v5, v4, [I

    .line 2853
    .local v5, "location":[I
    iget-object v6, p0, Lcom/android/internal/widget/DecorCaptionView;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v6, v5}, Lcom/android/internal/policy/DecorView;->getLocationOnScreen([I)V

    .line 2854
    new-instance v6, Landroid/graphics/Rect;

    aget v7, v5, v2

    const/4 v8, 0x1

    aget v9, v5, v8

    aget v10, v5, v2

    iget-object v11, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    .line 2855
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v10, v11

    aget v11, v5, v8

    iget-object v12, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v11, v12

    invoke-direct {v6, v7, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2856
    .local v6, "captionRect":Landroid/graphics/Rect;
    iget-object v7, p0, Lcom/android/internal/widget/DecorCaptionView;->mBack:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 2857
    .local v7, "backWidth":I
    iget-object v9, p0, Lcom/android/internal/widget/DecorCaptionView;->mPrimaryContainer:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    iget-object v10, p0, Lcom/android/internal/widget/DecorCaptionView;->mSecondaryContainer:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v9, v10

    .line 2859
    .local v9, "containerWidth":I
    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v10

    if-nez v10, :cond_5

    .line 2861
    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->MD_DEX_TASK_DOCKING:Z

    if-eqz v10, :cond_3

    .line 2862
    if-ne v3, v8, :cond_1

    iget v10, v0, Landroid/graphics/Rect;->left:I

    iget v11, v6, Landroid/graphics/Rect;->right:I

    if-ge v10, v11, :cond_1

    iget v10, v6, Landroid/graphics/Rect;->right:I

    iget v11, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v9

    if-ge v10, v11, :cond_1

    .line 2864
    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2865
    .local v4, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v10, v6, Landroid/graphics/Rect;->right:I

    iget v11, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v11

    invoke-virtual {v4, v2, v2, v10, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginsRelative(IIII)V

    .line 2866
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2867
    .end local v4    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    goto/16 :goto_1

    :cond_1
    if-ne v3, v4, :cond_2

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v7

    if-gez v4, :cond_2

    iget v4, v0, Landroid/graphics/Rect;->right:I

    if-lez v4, :cond_2

    .line 2869
    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mBack:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2870
    .restart local v4    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v10, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v10, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginsRelative(IIII)V

    .line 2871
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mBack:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2872
    .end local v4    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    goto/16 :goto_1

    .line 2873
    :cond_2
    return v2

    .line 2876
    :cond_3
    if-ne v3, v8, :cond_4

    .line 2877
    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2878
    .restart local v4    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v10, v6, Landroid/graphics/Rect;->right:I

    iget v11, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v11

    invoke-virtual {v4, v2, v2, v10, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginsRelative(IIII)V

    .line 2879
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2880
    .end local v4    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    goto/16 :goto_1

    .line 2881
    :cond_4
    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mBack:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2882
    .restart local v4    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v10, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v10, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginsRelative(IIII)V

    .line 2883
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mBack:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2884
    .end local v4    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    goto/16 :goto_1

    .line 2888
    :cond_5
    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->MD_DEX_TASK_DOCKING:Z

    if-eqz v10, :cond_8

    .line 2889
    if-ne v3, v8, :cond_6

    iget v10, v0, Landroid/graphics/Rect;->left:I

    iget v11, v6, Landroid/graphics/Rect;->right:I

    if-ge v10, v11, :cond_6

    iget v10, v6, Landroid/graphics/Rect;->right:I

    iget v11, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v7

    if-ge v10, v11, :cond_6

    .line 2891
    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mBack:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2892
    .restart local v4    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v10, v6, Landroid/graphics/Rect;->right:I

    iget v11, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v11

    invoke-virtual {v4, v10, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginsRelative(IIII)V

    .line 2893
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mBack:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2894
    .end local v4    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    goto :goto_1

    :cond_6
    if-ne v3, v4, :cond_7

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v9

    if-gez v4, :cond_7

    iget v4, v0, Landroid/graphics/Rect;->right:I

    if-lez v4, :cond_7

    .line 2896
    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2897
    .restart local v4    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v10, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v2, v2, v10, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginsRelative(IIII)V

    .line 2898
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2899
    .end local v4    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    goto :goto_1

    .line 2900
    :cond_7
    return v2

    .line 2903
    :cond_8
    if-ne v3, v8, :cond_9

    .line 2904
    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mBack:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2905
    .restart local v4    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v10, v6, Landroid/graphics/Rect;->right:I

    iget v11, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v11

    invoke-virtual {v4, v10, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginsRelative(IIII)V

    .line 2906
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mBack:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2907
    .end local v4    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    goto :goto_1

    .line 2908
    :cond_9
    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2909
    .restart local v4    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v10, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v2, v2, v10, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginsRelative(IIII)V

    .line 2910
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2914
    .end local v4    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :goto_1
    return v8

    .line 2917
    .end local v1    # "config":Landroid/content/res/Configuration;
    .end local v3    # "dexDockingState":I
    .end local v5    # "location":[I
    .end local v6    # "captionRect":Landroid/graphics/Rect;
    .end local v7    # "backWidth":I
    .end local v9    # "containerWidth":I
    :cond_a
    return v2
.end method

.method private blacklist doMoreToggleAnimation()V
    .locals 28

    .line 2564
    move-object/from16 v6, p0

    iget-object v0, v6, Lcom/android/internal/widget/DecorCaptionView;->mMoreVisibleAnim:Landroid/animation/AnimatorSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2565
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2566
    iput-object v1, v6, Lcom/android/internal/widget/DecorCaptionView;->mMoreVisibleAnim:Landroid/animation/AnimatorSet;

    .line 2569
    :cond_0
    iget-object v0, v6, Lcom/android/internal/widget/DecorCaptionView;->mMoreInvisibleAnim:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 2570
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2571
    iput-object v1, v6, Lcom/android/internal/widget/DecorCaptionView;->mMoreInvisibleAnim:Landroid/animation/AnimatorSet;

    .line 2582
    :cond_1
    iget-boolean v0, v6, Lcom/android/internal/widget/DecorCaptionView;->mShowPrimarySet:Z

    if-eqz v0, :cond_2

    .line 2584
    const/4 v7, 0x0

    .local v7, "currSetFromTrans":I
    iget v8, v6, Lcom/android/internal/widget/DecorCaptionView;->mMoreToggleTransX:I

    .line 2585
    .local v8, "currSetToTrans":I
    const/high16 v9, 0x3f800000    # 1.0f

    .local v9, "currSetFromAlpha":F
    const/4 v10, 0x0

    .line 2587
    .local v10, "currSetToAlpha":F
    iget-object v1, v6, Lcom/android/internal/widget/DecorCaptionView;->mHeaderUnpin:Landroid/view/View;

    sget-object v2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v3, 0x0

    int-to-float v4, v8

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/DecorCaptionView;->getMoreToggleAnimator(Landroid/view/View;Landroid/util/Property;FFZ)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 2589
    .local v11, "headerUnpinTransX":Landroid/animation/ObjectAnimator;
    iget-object v1, v6, Lcom/android/internal/widget/DecorCaptionView;->mHeaderUnpin:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/DecorCaptionView;->getMoreToggleAnimator(Landroid/view/View;Landroid/util/Property;FFZ)Landroid/animation/ObjectAnimator;

    move-result-object v12

    .line 2592
    .local v12, "headerUnpinAlpha":Landroid/animation/ObjectAnimator;
    iget-object v1, v6, Lcom/android/internal/widget/DecorCaptionView;->mSplit:Landroid/view/View;

    sget-object v2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v3, 0x0

    int-to-float v4, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/DecorCaptionView;->getMoreToggleAnimator(Landroid/view/View;Landroid/util/Property;FFZ)Landroid/animation/ObjectAnimator;

    move-result-object v13

    .line 2594
    .local v13, "splitTransX":Landroid/animation/ObjectAnimator;
    iget-object v1, v6, Lcom/android/internal/widget/DecorCaptionView;->mSplit:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/DecorCaptionView;->getMoreToggleAnimator(Landroid/view/View;Landroid/util/Property;FFZ)Landroid/animation/ObjectAnimator;

    move-result-object v14

    .line 2597
    .local v14, "splitAlpha":Landroid/animation/ObjectAnimator;
    iget-object v1, v6, Lcom/android/internal/widget/DecorCaptionView;->mOpacity:Landroid/view/View;

    sget-object v2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v3, 0x0

    int-to-float v4, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/DecorCaptionView;->getMoreToggleAnimator(Landroid/view/View;Landroid/util/Property;FFZ)Landroid/animation/ObjectAnimator;

    move-result-object v15

    .line 2599
    .local v15, "opacityTransX":Landroid/animation/ObjectAnimator;
    iget-object v1, v6, Lcom/android/internal/widget/DecorCaptionView;->mOpacity:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/DecorCaptionView;->getMoreToggleAnimator(Landroid/view/View;Landroid/util/Property;FFZ)Landroid/animation/ObjectAnimator;

    move-result-object v16

    .line 2602
    .local v16, "opacityAlpha":Landroid/animation/ObjectAnimator;
    iget-object v1, v6, Lcom/android/internal/widget/DecorCaptionView;->mDivider:Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$Divider;

    sget-object v2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v3, 0x0

    int-to-float v4, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/DecorCaptionView;->getMoreToggleAnimator(Landroid/view/View;Landroid/util/Property;FFZ)Landroid/animation/ObjectAnimator;

    move-result-object v17

    .line 2604
    .local v17, "dividerTransX":Landroid/animation/ObjectAnimator;
    iget-object v1, v6, Lcom/android/internal/widget/DecorCaptionView;->mDivider:Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$Divider;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/DecorCaptionView;->getMoreToggleAnimator(Landroid/view/View;Landroid/util/Property;FFZ)Landroid/animation/ObjectAnimator;

    move-result-object v18

    .line 2608
    .local v18, "dividerAlpha":Landroid/animation/ObjectAnimator;
    iget v0, v6, Lcom/android/internal/widget/DecorCaptionView;->mMoreToggleTransX:I

    neg-int v5, v0

    .local v5, "nextSetFromTrans":I
    const/16 v19, 0x0

    .line 2609
    .local v19, "nextSetToTrans":I
    const/16 v20, 0x0

    .local v20, "nextSetFromAlpha":F
    const/high16 v21, 0x3f800000    # 1.0f

    .line 2611
    .local v21, "nextSetToAlpha":F
    iget-object v1, v6, Lcom/android/internal/widget/DecorCaptionView;->mMinimize:Landroid/view/View;

    sget-object v2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    int-to-float v3, v5

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v23, v7

    move v7, v5

    .end local v5    # "nextSetFromTrans":I
    .local v7, "nextSetFromTrans":I
    .local v23, "currSetFromTrans":I
    move/from16 v5, v22

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/DecorCaptionView;->getMoreToggleAnimator(Landroid/view/View;Landroid/util/Property;FFZ)Landroid/animation/ObjectAnimator;

    move-result-object v22

    .line 2613
    .local v22, "minimizeTransX":Landroid/animation/ObjectAnimator;
    iget-object v1, v6, Lcom/android/internal/widget/DecorCaptionView;->mMinimize:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/DecorCaptionView;->getMoreToggleAnimator(Landroid/view/View;Landroid/util/Property;FFZ)Landroid/animation/ObjectAnimator;

    move-result-object v24

    .line 2616
    .local v24, "minimizeAlpha":Landroid/animation/ObjectAnimator;
    iget-object v1, v6, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    sget-object v2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    int-to-float v3, v7

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/DecorCaptionView;->getMoreToggleAnimator(Landroid/view/View;Landroid/util/Property;FFZ)Landroid/animation/ObjectAnimator;

    move-result-object v25

    .line 2618
    .local v25, "maximizeTransX":Landroid/animation/ObjectAnimator;
    iget-object v1, v6, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/DecorCaptionView;->getMoreToggleAnimator(Landroid/view/View;Landroid/util/Property;FFZ)Landroid/animation/ObjectAnimator;

    move-result-object v26

    .line 2621
    .local v26, "maximizeAlpha":Landroid/animation/ObjectAnimator;
    iget-object v1, v6, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    sget-object v2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    int-to-float v3, v7

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/DecorCaptionView;->getMoreToggleAnimator(Landroid/view/View;Landroid/util/Property;FFZ)Landroid/animation/ObjectAnimator;

    move-result-object v27

    .line 2623
    .local v27, "closeTransX":Landroid/animation/ObjectAnimator;
    iget-object v1, v6, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/DecorCaptionView;->getMoreToggleAnimator(Landroid/view/View;Landroid/util/Property;FFZ)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2625
    .end local v7    # "nextSetFromTrans":I
    .end local v8    # "currSetToTrans":I
    .end local v9    # "currSetFromAlpha":F
    .end local v10    # "currSetToAlpha":F
    .end local v19    # "nextSetToTrans":I
    .end local v20    # "nextSetFromAlpha":F
    .end local v21    # "nextSetToAlpha":F
    .end local v23    # "currSetFromTrans":I
    .local v0, "closeAlpha":Landroid/animation/ObjectAnimator;
    goto/16 :goto_0

    .line 2627
    .end local v0    # "closeAlpha":Landroid/animation/ObjectAnimator;
    .end local v11    # "headerUnpinTransX":Landroid/animation/ObjectAnimator;
    .end local v12    # "headerUnpinAlpha":Landroid/animation/ObjectAnimator;
    .end local v13    # "splitTransX":Landroid/animation/ObjectAnimator;
    .end local v14    # "splitAlpha":Landroid/animation/ObjectAnimator;
    .end local v15    # "opacityTransX":Landroid/animation/ObjectAnimator;
    .end local v16    # "opacityAlpha":Landroid/animation/ObjectAnimator;
    .end local v17    # "dividerTransX":Landroid/animation/ObjectAnimator;
    .end local v18    # "dividerAlpha":Landroid/animation/ObjectAnimator;
    .end local v22    # "minimizeTransX":Landroid/animation/ObjectAnimator;
    .end local v24    # "minimizeAlpha":Landroid/animation/ObjectAnimator;
    .end local v25    # "maximizeTransX":Landroid/animation/ObjectAnimator;
    .end local v26    # "maximizeAlpha":Landroid/animation/ObjectAnimator;
    .end local v27    # "closeTransX":Landroid/animation/ObjectAnimator;
    :cond_2
    const/4 v7, 0x0

    .local v7, "currSetFromTrans":I
    iget v0, v6, Lcom/android/internal/widget/DecorCaptionView;->mMoreToggleTransX:I

    neg-int v8, v0

    .line 2628
    .restart local v8    # "currSetToTrans":I
    const/high16 v9, 0x3f800000    # 1.0f

    .restart local v9    # "currSetFromAlpha":F
    const/4 v10, 0x0

    .line 2630
    .restart local v10    # "currSetToAlpha":F
    iget-object v1, v6, Lcom/android/internal/widget/DecorCaptionView;->mMinimize:Landroid/view/View;

    sget-object v2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v3, 0x0

    int-to-float v4, v8

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/DecorCaptionView;->getMoreToggleAnimator(Landroid/view/View;Landroid/util/Property;FFZ)Landroid/animation/ObjectAnimator;

    move-result-object v22

    .line 2632
    .restart local v22    # "minimizeTransX":Landroid/animation/ObjectAnimator;
    iget-object v1, v6, Lcom/android/internal/widget/DecorCaptionView;->mMinimize:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/DecorCaptionView;->getMoreToggleAnimator(Landroid/view/View;Landroid/util/Property;FFZ)Landroid/animation/ObjectAnimator;

    move-result-object v24

    .line 2635
    .restart local v24    # "minimizeAlpha":Landroid/animation/ObjectAnimator;
    iget-object v1, v6, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    sget-object v2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v3, 0x0

    int-to-float v4, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/DecorCaptionView;->getMoreToggleAnimator(Landroid/view/View;Landroid/util/Property;FFZ)Landroid/animation/ObjectAnimator;

    move-result-object v25

    .line 2637
    .restart local v25    # "maximizeTransX":Landroid/animation/ObjectAnimator;
    iget-object v1, v6, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/DecorCaptionView;->getMoreToggleAnimator(Landroid/view/View;Landroid/util/Property;FFZ)Landroid/animation/ObjectAnimator;

    move-result-object v26

    .line 2640
    .restart local v26    # "maximizeAlpha":Landroid/animation/ObjectAnimator;
    iget-object v1, v6, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    sget-object v2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v3, 0x0

    int-to-float v4, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/DecorCaptionView;->getMoreToggleAnimator(Landroid/view/View;Landroid/util/Property;FFZ)Landroid/animation/ObjectAnimator;

    move-result-object v27

    .line 2642
    .restart local v27    # "closeTransX":Landroid/animation/ObjectAnimator;
    iget-object v1, v6, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/DecorCaptionView;->getMoreToggleAnimator(Landroid/view/View;Landroid/util/Property;FFZ)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 2646
    .local v11, "closeAlpha":Landroid/animation/ObjectAnimator;
    iget v12, v6, Lcom/android/internal/widget/DecorCaptionView;->mMoreToggleTransX:I

    .local v12, "nextSetFromTrans":I
    const/4 v13, 0x0

    .line 2647
    .local v13, "nextSetToTrans":I
    const/4 v14, 0x0

    .local v14, "nextSetFromAlpha":F
    const/high16 v15, 0x3f800000    # 1.0f

    .line 2649
    .local v15, "nextSetToAlpha":F
    iget-object v1, v6, Lcom/android/internal/widget/DecorCaptionView;->mHeaderUnpin:Landroid/view/View;

    sget-object v2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    int-to-float v3, v12

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/DecorCaptionView;->getMoreToggleAnimator(Landroid/view/View;Landroid/util/Property;FFZ)Landroid/animation/ObjectAnimator;

    move-result-object v16

    .line 2651
    .local v16, "headerUnpinTransX":Landroid/animation/ObjectAnimator;
    iget-object v1, v6, Lcom/android/internal/widget/DecorCaptionView;->mHeaderUnpin:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/DecorCaptionView;->getMoreToggleAnimator(Landroid/view/View;Landroid/util/Property;FFZ)Landroid/animation/ObjectAnimator;

    move-result-object v17

    .line 2654
    .local v17, "headerUnpinAlpha":Landroid/animation/ObjectAnimator;
    iget-object v1, v6, Lcom/android/internal/widget/DecorCaptionView;->mSplit:Landroid/view/View;

    sget-object v2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    int-to-float v3, v12

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/DecorCaptionView;->getMoreToggleAnimator(Landroid/view/View;Landroid/util/Property;FFZ)Landroid/animation/ObjectAnimator;

    move-result-object v18

    .line 2656
    .local v18, "splitTransX":Landroid/animation/ObjectAnimator;
    iget-object v1, v6, Lcom/android/internal/widget/DecorCaptionView;->mSplit:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/DecorCaptionView;->getMoreToggleAnimator(Landroid/view/View;Landroid/util/Property;FFZ)Landroid/animation/ObjectAnimator;

    move-result-object v19

    .line 2659
    .local v19, "splitAlpha":Landroid/animation/ObjectAnimator;
    iget-object v1, v6, Lcom/android/internal/widget/DecorCaptionView;->mOpacity:Landroid/view/View;

    sget-object v2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    int-to-float v3, v12

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/DecorCaptionView;->getMoreToggleAnimator(Landroid/view/View;Landroid/util/Property;FFZ)Landroid/animation/ObjectAnimator;

    move-result-object v20

    .line 2661
    .local v20, "opacityTransX":Landroid/animation/ObjectAnimator;
    iget-object v1, v6, Lcom/android/internal/widget/DecorCaptionView;->mOpacity:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/DecorCaptionView;->getMoreToggleAnimator(Landroid/view/View;Landroid/util/Property;FFZ)Landroid/animation/ObjectAnimator;

    move-result-object v21

    .line 2664
    .local v21, "opacityAlpha":Landroid/animation/ObjectAnimator;
    iget-object v1, v6, Lcom/android/internal/widget/DecorCaptionView;->mDivider:Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$Divider;

    sget-object v2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    int-to-float v3, v12

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/DecorCaptionView;->getMoreToggleAnimator(Landroid/view/View;Landroid/util/Property;FFZ)Landroid/animation/ObjectAnimator;

    move-result-object v23

    .line 2666
    .local v23, "dividerTransX":Landroid/animation/ObjectAnimator;
    iget-object v1, v6, Lcom/android/internal/widget/DecorCaptionView;->mDivider:Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$Divider;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/DecorCaptionView;->getMoreToggleAnimator(Landroid/view/View;Landroid/util/Property;FFZ)Landroid/animation/ObjectAnimator;

    move-result-object v0

    move-object/from16 v12, v17

    move-object/from16 v13, v18

    move-object/from16 v14, v19

    move-object/from16 v15, v20

    move-object/from16 v17, v23

    move-object/from16 v18, v0

    move-object v0, v11

    move-object/from16 v11, v16

    move-object/from16 v16, v21

    .line 2670
    .end local v7    # "currSetFromTrans":I
    .end local v8    # "currSetToTrans":I
    .end local v9    # "currSetFromAlpha":F
    .end local v10    # "currSetToAlpha":F
    .end local v19    # "splitAlpha":Landroid/animation/ObjectAnimator;
    .end local v20    # "opacityTransX":Landroid/animation/ObjectAnimator;
    .end local v21    # "opacityAlpha":Landroid/animation/ObjectAnimator;
    .end local v23    # "dividerTransX":Landroid/animation/ObjectAnimator;
    .restart local v0    # "closeAlpha":Landroid/animation/ObjectAnimator;
    .local v11, "headerUnpinTransX":Landroid/animation/ObjectAnimator;
    .local v12, "headerUnpinAlpha":Landroid/animation/ObjectAnimator;
    .local v13, "splitTransX":Landroid/animation/ObjectAnimator;
    .local v14, "splitAlpha":Landroid/animation/ObjectAnimator;
    .local v15, "opacityTransX":Landroid/animation/ObjectAnimator;
    .local v16, "opacityAlpha":Landroid/animation/ObjectAnimator;
    .local v17, "dividerTransX":Landroid/animation/ObjectAnimator;
    .local v18, "dividerAlpha":Landroid/animation/ObjectAnimator;
    :goto_0
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, v6, Lcom/android/internal/widget/DecorCaptionView;->mMoreVisibleAnim:Landroid/animation/AnimatorSet;

    .line 2671
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, v6, Lcom/android/internal/widget/DecorCaptionView;->mMoreInvisibleAnim:Landroid/animation/AnimatorSet;

    .line 2673
    iget-boolean v1, v6, Lcom/android/internal/widget/DecorCaptionView;->mShowPrimarySet:Z

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x6

    const/4 v10, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 2674
    iget-object v1, v6, Lcom/android/internal/widget/DecorCaptionView;->mMoreVisibleAnim:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    aput-object v25, v3, v2

    aput-object v26, v3, v10

    aput-object v22, v3, v8

    aput-object v24, v3, v7

    aput-object v27, v3, v5

    aput-object v0, v3, v4

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2676
    sget-boolean v1, Lcom/samsung/android/rune/ViewRune;->SUPPORT_MULTI_SPLIT_WINDOW_OPACITY:Z

    if-eqz v1, :cond_3

    .line 2677
    iget-object v1, v6, Lcom/android/internal/widget/DecorCaptionView;->mMoreInvisibleAnim:Landroid/animation/AnimatorSet;

    const/16 v3, 0x8

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v11, v3, v2

    aput-object v12, v3, v10

    aput-object v13, v3, v8

    aput-object v14, v3, v7

    aput-object v15, v3, v5

    aput-object v16, v3, v4

    aput-object v17, v3, v9

    const/4 v4, 0x7

    aput-object v18, v3, v4

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_2

    .line 2680
    :cond_3
    iget-object v1, v6, Lcom/android/internal/widget/DecorCaptionView;->mMoreInvisibleAnim:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    aput-object v11, v3, v2

    aput-object v12, v3, v10

    aput-object v13, v3, v8

    aput-object v14, v3, v7

    aput-object v17, v3, v5

    aput-object v18, v3, v4

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_2

    .line 2684
    :cond_4
    sget-boolean v1, Lcom/samsung/android/rune/ViewRune;->SUPPORT_MULTI_SPLIT_WINDOW_OPACITY:Z

    if-eqz v1, :cond_5

    .line 2685
    iget-object v1, v6, Lcom/android/internal/widget/DecorCaptionView;->mMoreVisibleAnim:Landroid/animation/AnimatorSet;

    const/16 v3, 0x8

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v11, v3, v2

    aput-object v12, v3, v10

    aput-object v13, v3, v8

    aput-object v14, v3, v7

    aput-object v15, v3, v5

    aput-object v16, v3, v4

    aput-object v17, v3, v9

    const/16 v19, 0x7

    aput-object v18, v3, v19

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_1

    .line 2688
    :cond_5
    iget-object v1, v6, Lcom/android/internal/widget/DecorCaptionView;->mMoreVisibleAnim:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    aput-object v11, v3, v2

    aput-object v12, v3, v10

    aput-object v13, v3, v8

    aput-object v14, v3, v7

    aput-object v17, v3, v5

    aput-object v18, v3, v4

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2691
    :goto_1
    iget-object v1, v6, Lcom/android/internal/widget/DecorCaptionView;->mMoreInvisibleAnim:Landroid/animation/AnimatorSet;

    new-array v3, v9, [Landroid/animation/Animator;

    aput-object v25, v3, v2

    aput-object v26, v3, v10

    aput-object v22, v3, v8

    aput-object v24, v3, v7

    aput-object v27, v3, v5

    aput-object v0, v3, v4

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2694
    :goto_2
    iget-object v1, v6, Lcom/android/internal/widget/DecorCaptionView;->mMoreVisibleAnim:Landroid/animation/AnimatorSet;

    iget-object v3, v6, Lcom/android/internal/widget/DecorCaptionView;->mMoreVisibleAnimListener:Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;

    iget-boolean v4, v6, Lcom/android/internal/widget/DecorCaptionView;->mShowPrimarySet:Z

    invoke-static {v3, v4, v10}, Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;->-$$Nest$mget(Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;ZZ)Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2695
    iget-object v1, v6, Lcom/android/internal/widget/DecorCaptionView;->mMoreInvisibleAnim:Landroid/animation/AnimatorSet;

    iget-object v3, v6, Lcom/android/internal/widget/DecorCaptionView;->mMoreInvisibleAnimListener:Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;

    iget-boolean v4, v6, Lcom/android/internal/widget/DecorCaptionView;->mShowPrimarySet:Z

    invoke-static {v3, v4, v2}, Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;->-$$Nest$mget(Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;ZZ)Lcom/android/internal/widget/DecorCaptionView$MoreToggleAnimListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2696
    iget-object v1, v6, Lcom/android/internal/widget/DecorCaptionView;->mMoreVisibleAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 2697
    iget-object v1, v6, Lcom/android/internal/widget/DecorCaptionView;->mMoreInvisibleAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 2698
    return-void
.end method

.method public static blacklist getCaptionHeightInFreeformMode(Landroid/content/Context;Landroid/content/res/Resources;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 1880
    new-instance v0, Lcom/samsung/android/util/DecorCaptionResources;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/util/DecorCaptionResources;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    .line 1881
    .local v0, "dcRes":Lcom/samsung/android/util/DecorCaptionResources;
    const v1, 0x105039d

    invoke-virtual {v0, v1}, Lcom/samsung/android/util/DecorCaptionResources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1882
    .local v1, "height":I
    invoke-virtual {v0}, Lcom/samsung/android/util/DecorCaptionResources;->getDensity()F

    move-result v2

    const/high16 v3, 0x40a00000    # 5.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sub-int/2addr v1, v2

    .line 1883
    return v1
.end method

.method public static blacklist getCaptionHeightInFullscreenMode(Landroid/content/Context;Landroid/content/res/Resources;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 1875
    new-instance v0, Lcom/samsung/android/util/DecorCaptionResources;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/util/DecorCaptionResources;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    .line 1876
    .local v0, "dcRes":Lcom/samsung/android/util/DecorCaptionResources;
    const v1, 0x105039d

    invoke-virtual {v0, v1}, Lcom/samsung/android/util/DecorCaptionResources;->getDimensionPixelSize(I)I

    move-result v1

    return v1
.end method

.method public static blacklist getDecorCaptionHeight(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 1895
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/internal/widget/DecorCaptionView;->getDecorCaptionHeightInternal(Landroid/content/Context;Landroid/content/res/Resources;Z)I

    move-result v0

    return v0
.end method

.method public static blacklist getDecorCaptionHeight(Landroid/content/Context;Z)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isBarType"    # Z

    .line 1899
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/android/internal/widget/DecorCaptionView;->getDecorCaptionHeightInternal(Landroid/content/Context;Landroid/content/res/Resources;Z)I

    move-result v0

    return v0
.end method

.method private static blacklist getDecorCaptionHeightInternal(Landroid/content/Context;Landroid/content/res/Resources;Z)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "isBarType"    # Z

    .line 1903
    if-nez p1, :cond_0

    .line 1904
    new-instance v0, Lcom/samsung/android/util/DecorCaptionResources;

    invoke-direct {v0, p0}, Lcom/samsung/android/util/DecorCaptionResources;-><init>(Landroid/content/Context;)V

    .line 1905
    .local v0, "dcRes":Lcom/samsung/android/util/DecorCaptionResources;
    invoke-static {p2}, Lcom/android/internal/widget/DecorCaptionView;->getDecorCaptionHeightRes(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/util/DecorCaptionResources;->getDimensionPixelSize(I)I

    move-result v1

    return v1

    .line 1907
    .end local v0    # "dcRes":Lcom/samsung/android/util/DecorCaptionResources;
    :cond_0
    invoke-static {p2}, Lcom/android/internal/widget/DecorCaptionView;->getDecorCaptionHeightRes(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private static blacklist getDecorCaptionHeightRes(Z)I
    .locals 1
    .param p0, "isBarType"    # Z

    .line 1888
    if-eqz p0, :cond_0

    .line 1889
    const v0, 0x105039c

    return v0

    .line 1891
    :cond_0
    const v0, 0x1050418

    return v0
.end method

.method public static blacklist getHeightByScreenZoom(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 1869
    new-instance v0, Lcom/samsung/android/util/DecorCaptionResources;

    invoke-direct {v0, p0}, Lcom/samsung/android/util/DecorCaptionResources;-><init>(Landroid/content/Context;)V

    .line 1870
    .local v0, "resources":Lcom/samsung/android/util/DecorCaptionResources;
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/internal/widget/DecorCaptionView;->getDecorCaptionHeightRes(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/util/DecorCaptionResources;->getDimensionPixelSize(I)I

    move-result v1

    return v1
.end method

.method private blacklist getIconDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "id"    # I

    .line 2070
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mDCResources:Lcom/samsung/android/util/DecorCaptionResources;

    invoke-virtual {v0, p1}, Lcom/samsung/android/util/DecorCaptionResources;->getVectorDrawable(I)Landroid/graphics/drawable/VectorDrawable;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getMoreToggleAnimator(Landroid/view/View;Landroid/util/Property;FFZ)Landroid/animation/ObjectAnimator;
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p3, "from"    # F
    .param p4, "to"    # F
    .param p5, "delay"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;FFZ)",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    .line 2549
    .local p2, "animType":Landroid/util/Property;, "Landroid/util/Property<Landroid/view/View;Ljava/lang/Float;>;"
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p3, v0, v1

    const/4 v1, 0x1

    aput p4, v0, v1

    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2550
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    sget-object v1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    if-ne p2, v1, :cond_0

    .line 2551
    sget-object v1, Lcom/android/internal/widget/DecorCaptionView;->MORE_TOGGLE_TRANS_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2552
    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_0

    .line 2554
    :cond_0
    sget-object v1, Lcom/android/internal/widget/DecorCaptionView;->MORE_TOGGLE_ALPHA_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2555
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2557
    :goto_0
    if-eqz p5, :cond_1

    .line 2558
    const-wide/16 v1, 0x87

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 2560
    :cond_1
    return-object v0
.end method

.method private blacklist getWindowingMode()I
    .locals 1

    .line 1708
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    .line 1709
    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getWindowingMode()I

    move-result v0

    return v0

    .line 1711
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/DecorCaptionView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    return v0
.end method

.method private blacklist handleNaturalSwitching()Z
    .locals 11

    .line 851
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 852
    .local v0, "windowContext":Landroid/content/Context;
    instance-of v1, v0, Landroid/app/Activity;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 853
    return v2

    .line 855
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isNaturalSwitchingEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 856
    return v2

    .line 858
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 859
    .local v1, "i":Landroid/content/Intent;
    move-object v3, v0

    check-cast v3, Landroid/app/Activity;

    .line 860
    .local v3, "activity":Landroid/app/Activity;
    invoke-virtual {v3}, Landroid/app/Activity;->getTaskId()I

    move-result v4

    .line 861
    .local v4, "taskId":I
    const-string v5, "android.intent.extra.TASK_ID"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 862
    const/4 v5, 0x5

    const-string v6, "android.intent.extra.NS_WINDOWING_MODE"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 863
    const-string v5, "android.intent.extra.NS_MW_HANDLER_TYPE"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 864
    new-instance v2, Landroid/content/ClipData$Item;

    invoke-direct {v2, v1}, Landroid/content/ClipData$Item;-><init>(Landroid/content/Intent;)V

    .line 866
    .local v2, "item":Landroid/content/ClipData$Item;
    new-instance v5, Landroid/content/ClipDescription;

    const-string v6, "application/octet-stream"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/ClipDescription;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;)V

    .line 868
    .local v5, "clipDescription":Landroid/content/ClipDescription;
    invoke-virtual {v5}, Landroid/content/ClipDescription;->setNaturalSwitching()V

    .line 869
    iget-object v6, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    new-instance v7, Landroid/content/ClipData;

    invoke-direct {v7, v5, v2}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    new-instance v8, Landroid/view/View$DragShadowBuilder;

    iget-object v9, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    invoke-direct {v8, v9}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    const/4 v9, 0x0

    const/16 v10, 0x100

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/view/View;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 872
    const/4 v6, 0x1

    return v6
.end method

.method private blacklist hideAllButton()V
    .locals 2

    .line 1761
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1762
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1763
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimize:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1764
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOpacity:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1765
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMore:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1766
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1768
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsDexEnabled:Z

    if-eqz v0, :cond_1

    .line 1769
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mBack:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1770
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mRotate:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1771
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mReduce:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1772
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mPinOnDex:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1774
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mSplit:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1775
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mHeaderUnpin:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1776
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mPrimaryContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1777
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mSecondaryContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1779
    :goto_0
    return-void
.end method

.method private blacklist hideSoftInputIfNeeded()V
    .locals 3

    .line 1002
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1003
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 1005
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_2

    .line 1006
    sget-boolean v0, Lcom/android/internal/widget/DecorCaptionView;->SAFE_DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "DecorCaptionView"

    const-string v1, "hideSoftInputIfNeeded()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/internal/widget/DecorCaptionView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1009
    :cond_2
    return-void
.end method

.method private blacklist init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 388
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragSlop:I

    .line 389
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 390
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 391
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 390
    const v2, 0x104013e

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/DecorCaptionView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 394
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsDexEnabled:Z

    .line 397
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/DecorCaptionView;->setFitsSystemWindows(Z)V

    .line 399
    return-void
.end method

.method private blacklist isImeShowingWhenTouched()Z
    .locals 2

    .line 876
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 877
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 880
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 878
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist passedSlop(II)Z
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 1019
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 1021
    iget v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mTouchDownX:I

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragSlop:I

    mul-int/lit8 v3, v3, 0x3

    if-gt v0, v3, :cond_0

    iget v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mTouchDownY:I

    sub-int v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragSlop:I

    mul-int/lit8 v3, v3, 0x3

    if-le v0, v3, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1

    .line 1023
    :cond_2
    iget v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mTouchDownX:I

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragSlop:I

    if-gt v0, v3, :cond_3

    iget v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mTouchDownY:I

    sub-int v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragSlop:I

    if-le v0, v3, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    return v1
.end method

.method private blacklist setButtonContainerHovered(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .line 1374
    if-eqz p1, :cond_0

    .line 1375
    invoke-direct {p0, p1}, Lcom/android/internal/widget/DecorCaptionView;->updateRippleBounds(Landroid/view/View;)V

    .line 1376
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mButtonContainer:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setHovered(Z)V

    goto :goto_0

    .line 1378
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/DecorCaptionView;->updateRippleBounds(Landroid/view/View;)V

    .line 1379
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mButtonContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setHovered(Z)V

    .line 1381
    :goto_0
    return-void
.end method

.method private blacklist setButtonContainerPressed(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .line 1384
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1385
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p1

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/widget/DecorCaptionView;->updateRippleBounds(Landroid/view/View;)V

    .line 1386
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mButtonContainer:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    .line 1388
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/internal/widget/DecorCaptionView;->updateRippleBounds(Landroid/view/View;)V

    .line 1389
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mButtonContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 1391
    :goto_0
    return-void
.end method

.method private blacklist setEnabledButtonTooltip(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 1398
    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsDexEnabled:Z

    if-eqz v0, :cond_2

    .line 1399
    if-eqz p1, :cond_1

    .line 1400
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mDCResources:Lcom/samsung/android/util/DecorCaptionResources;

    const v2, 0x1040cc3

    invoke-virtual {v1, v2}, Lcom/samsung/android/util/DecorCaptionResources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    .line 1401
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimize:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mDCResources:Lcom/samsung/android/util/DecorCaptionResources;

    const v2, 0x1040cc4

    invoke-virtual {v1, v2}, Lcom/samsung/android/util/DecorCaptionResources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    .line 1402
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mReduce:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mDCResources:Lcom/samsung/android/util/DecorCaptionResources;

    const v2, 0x1040cc8

    invoke-virtual {v1, v2}, Lcom/samsung/android/util/DecorCaptionResources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    .line 1403
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOpacity:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mDCResources:Lcom/samsung/android/util/DecorCaptionResources;

    const v2, 0x1040cc6

    invoke-virtual {v1, v2}, Lcom/samsung/android/util/DecorCaptionResources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    .line 1404
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isPinned()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1405
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mPinOnDex:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mDCResources:Lcom/samsung/android/util/DecorCaptionResources;

    const v2, 0x1040ccd

    invoke-virtual {v1, v2}, Lcom/samsung/android/util/DecorCaptionResources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1407
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mPinOnDex:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mDCResources:Lcom/samsung/android/util/DecorCaptionResources;

    const v2, 0x1040ccc

    invoke-virtual {v1, v2}, Lcom/samsung/android/util/DecorCaptionResources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    .line 1410
    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMore:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mDCResources:Lcom/samsung/android/util/DecorCaptionResources;

    const v2, 0x1040cc5

    invoke-virtual {v1, v2}, Lcom/samsung/android/util/DecorCaptionResources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1413
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    .line 1414
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimize:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    .line 1415
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mReduce:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    .line 1416
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOpacity:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    .line 1417
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mPinOnDex:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    .line 1419
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMore:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    .line 1423
    :cond_2
    :goto_1
    return-void
.end method

.method private blacklist setIconDrawable(Landroid/widget/ImageButton;I)V
    .locals 2
    .param p1, "button"    # Landroid/widget/ImageButton;
    .param p2, "resId"    # I

    .line 2082
    invoke-direct {p0, p2}, Lcom/android/internal/widget/DecorCaptionView;->getIconDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2083
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mIconTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 2084
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2085
    return-void
.end method

.method private blacklist setOpacityChangeModeEnabled(Z)V
    .locals 10
    .param p1, "enabled"    # Z

    .line 2441
    iput-boolean p1, p0, Lcom/android/internal/widget/DecorCaptionView;->mOpacityChangeModeEnabled:Z

    .line 2442
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->getWindowOpacity()F

    move-result v0

    const v1, 0x3ecccccd    # 0.4f

    sub-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOpacityProgress:I

    .line 2443
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mOpacitySeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 2445
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mVisibilityAnim:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 2446
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2449
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mVisibilityAnim:Landroid/animation/AnimatorSet;

    .line 2451
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2452
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mSeekBarContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 2454
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mButtonContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 2457
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mSeekBarContainer:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x1

    new-array v4, v3, [F

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz p1, :cond_2

    move v6, v5

    goto :goto_1

    :cond_2
    move v6, v0

    :goto_1
    const/4 v7, 0x0

    aput v6, v4, v7

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 2458
    .local v1, "seekBarAnim":Landroid/animation/ObjectAnimator;
    const-wide/16 v8, 0x96

    invoke-virtual {v1, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2459
    sget-object v2, Lcom/samsung/android/util/InterpolatorUtils;->SINE_IN_OUT_80:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2461
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mButtonContainer:Landroid/view/View;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v3, [F

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v0, v5

    :goto_2
    aput v0, v6, v7

    invoke-static {v2, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2462
    .local v0, "buttonsAnim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2464
    invoke-virtual {p0}, Lcom/android/internal/widget/DecorCaptionView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    .line 2465
    .local v2, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    const/16 v4, 0x20

    .line 2466
    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityManager;->semIsAccessibilityServiceEnabled(I)Z

    move-result v4

    if-nez v4, :cond_5

    const/16 v4, 0x10

    .line 2467
    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityManager;->semIsAccessibilityServiceEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    move v3, v7

    goto :goto_4

    :cond_5
    :goto_3
    nop

    .line 2469
    .local v3, "talkbackEnabled":Z
    :goto_4
    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mVisibilityAnim:Landroid/animation/AnimatorSet;

    iget-object v5, p0, Lcom/android/internal/widget/DecorCaptionView;->mVisAnimListener:Lcom/android/internal/widget/DecorCaptionView$VisibilityAnimListener;

    invoke-virtual {v5, p1, v3}, Lcom/android/internal/widget/DecorCaptionView$VisibilityAnimListener;->get(ZZ)Lcom/android/internal/widget/DecorCaptionView$VisibilityAnimListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2470
    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mVisibilityAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2472
    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mVisibilityAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 2473
    return-void
.end method

.method private blacklist showRestartAlertDialog()V
    .locals 9

    .line 2357
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mDexCompatDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_1

    .line 2358
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/android/internal/widget/DecorCaptionView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsNightMode:Z

    if-eqz v2, :cond_0

    .line 2359
    const v2, 0x103012e

    goto :goto_0

    .line 2360
    :cond_0
    const v2, 0x1030132

    :goto_0
    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 2362
    .local v0, "dialogContext":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x1090161

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2365
    .local v1, "customPanel":Landroid/view/View;
    const v2, 0x102000b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2366
    .local v2, "message":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mDCResources:Lcom/samsung/android/util/DecorCaptionResources;

    const v4, 0x1040409

    invoke-virtual {v3, v4}, Lcom/samsung/android/util/DecorCaptionResources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2368
    const v3, 0x1020474

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 2369
    .local v3, "option":Landroid/widget/CheckBox;
    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mDCResources:Lcom/samsung/android/util/DecorCaptionResources;

    const v5, 0x104040b

    invoke-virtual {v4, v5}, Lcom/samsung/android/util/DecorCaptionResources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 2371
    const v4, 0x102029a

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 2372
    .local v4, "positive":Landroid/widget/Button;
    iget-object v5, p0, Lcom/android/internal/widget/DecorCaptionView;->mDCResources:Lcom/samsung/android/util/DecorCaptionResources;

    const v6, 0x1040408

    invoke-virtual {v5, v6}, Lcom/samsung/android/util/DecorCaptionResources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2373
    new-instance v5, Lcom/android/internal/widget/DecorCaptionView$$ExternalSyntheticLambda4;

    invoke-direct {v5, p0, v3}, Lcom/android/internal/widget/DecorCaptionView$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/widget/DecorCaptionView;Landroid/widget/CheckBox;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2384
    const v5, 0x102029b

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 2385
    .local v5, "negative":Landroid/widget/Button;
    iget-object v6, p0, Lcom/android/internal/widget/DecorCaptionView;->mDCResources:Lcom/samsung/android/util/DecorCaptionResources;

    const/high16 v7, 0x1040000

    invoke-virtual {v6, v7}, Lcom/samsung/android/util/DecorCaptionResources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2386
    new-instance v6, Lcom/android/internal/widget/DecorCaptionView$$ExternalSyntheticLambda5;

    invoke-direct {v6, p0}, Lcom/android/internal/widget/DecorCaptionView$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/widget/DecorCaptionView;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2392
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v7, p0, Lcom/android/internal/widget/DecorCaptionView;->mDCResources:Lcom/samsung/android/util/DecorCaptionResources;

    const v8, 0x104040c

    .line 2393
    invoke-virtual {v7, v8}, Lcom/samsung/android/util/DecorCaptionResources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 2394
    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 2395
    .local v6, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/widget/DecorCaptionView;->mDexCompatDialog:Landroid/app/AlertDialog;

    .line 2396
    invoke-virtual {v7}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x50

    invoke-virtual {v7, v8}, Landroid/view/Window;->setGravity(I)V

    .line 2398
    .end local v0    # "dialogContext":Landroid/content/Context;
    .end local v1    # "customPanel":Landroid/view/View;
    .end local v2    # "message":Landroid/widget/TextView;
    .end local v3    # "option":Landroid/widget/CheckBox;
    .end local v4    # "positive":Landroid/widget/Button;
    .end local v5    # "negative":Landroid/widget/Button;
    .end local v6    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mDexCompatDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2399
    return-void
.end method

.method private blacklist updateButtonFocus(Z)V
    .locals 4
    .param p1, "hasWindowFocus"    # Z

    .line 1715
    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v0, 0x3ecccccd    # 0.4f

    :goto_0
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 1716
    .local v0, "dimValue":Ljava/lang/Float;
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1717
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimize:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1718
    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 1719
    .local v1, "isFreeform":Z
    :goto_1
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mOpacity:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1720
    if-eqz v1, :cond_2

    .line 1721
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mOpacity:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1723
    :cond_2
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mMore:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 1724
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1726
    :cond_3
    iget-boolean v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsDexEnabled:Z

    if-eqz v2, :cond_6

    .line 1727
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mBack:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1728
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    iget-boolean v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mCanMaximizeVisibilityOnDeX:Z

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 1729
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mReduce:Landroid/view/View;

    iget-boolean v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mCanMaximizeVisibilityOnDeX:Z

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 1730
    iget-boolean v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mCanMaximizeVisibilityOnDeX:Z

    if-eqz v2, :cond_4

    .line 1731
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mReduce:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1732
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1734
    :cond_4
    iget-boolean v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsDecorCaptionWindow:Z

    if-eqz v2, :cond_5

    .line 1735
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mRotate:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1737
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->updateWindowPinButtonEnabled()V

    .line 1738
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mOverflowMenuPopup:Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX;

    if-eqz v2, :cond_8

    if-nez p1, :cond_8

    .line 1739
    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX;->dismiss()V

    .line 1740
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mOverflowMenuPopup:Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX;

    goto :goto_2

    .line 1743
    :cond_6
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1744
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mSplit:Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isSplitModeEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 1745
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mSplit:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1746
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mSplit:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1748
    :cond_7
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mHeaderUnpin:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1750
    :cond_8
    :goto_2
    return-void
.end method

.method private blacklist updateCaptionVisibility()V
    .locals 2

    .line 1811
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mShow:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1812
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1813
    return-void
.end method

.method private blacklist updateClickTarget(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "clickTarget"    # Landroid/view/View;
    .param p2, "clickTargetRect"    # Landroid/graphics/Rect;

    .line 1366
    iput-object p1, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    .line 1367
    iput-object p2, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTargetRect:Landroid/graphics/Rect;

    .line 1368
    if-nez p1, :cond_0

    .line 1369
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsLongPressed:Z

    .line 1371
    :cond_0
    return-void
.end method

.method private blacklist updateResourcesFromDCResources()V
    .locals 15

    .line 1510
    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsDexEnabled:Z

    const v1, 0x10503a4

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    .line 1511
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MD_DEX_TASK_DOCKING:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getDexTaskDockingState()I

    move-result v0

    goto :goto_0

    .line 1512
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/DecorCaptionView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->getFreeformDockedState(Landroid/app/WindowConfiguration;)I

    move-result v0

    :goto_0
    nop

    .line 1513
    .local v0, "dexDockingState":I
    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    goto :goto_1

    :cond_1
    move v4, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v4, v3

    .line 1515
    .local v4, "isDocked":Z
    :goto_2
    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->getWindowingMode()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_3

    if-nez v4, :cond_3

    move v2, v3

    .line 1517
    .local v2, "isFreeform":Z
    :cond_3
    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mDCResources:Lcom/samsung/android/util/DecorCaptionResources;

    invoke-virtual {v3}, Lcom/samsung/android/util/DecorCaptionResources;->getDensity()F

    move-result v3

    .line 1518
    .local v3, "density":F
    const/high16 v5, 0x42100000    # 36.0f

    mul-float/2addr v5, v3

    float-to-int v5, v5

    .line 1519
    .local v5, "buttonWidth":I
    if-eqz v2, :cond_4

    const/16 v6, 0x1f

    goto :goto_3

    .line 1520
    :cond_4
    const/16 v6, 0x24

    :goto_3
    int-to-float v6, v6

    mul-float/2addr v6, v3

    float-to-int v12, v6

    .line 1521
    .local v12, "buttonHeight":I
    iget-object v6, p0, Lcom/android/internal/widget/DecorCaptionView;->mDCResources:Lcom/samsung/android/util/DecorCaptionResources;

    const v7, 0x105039a

    invoke-virtual {v6, v7}, Lcom/samsung/android/util/DecorCaptionResources;->getDimensionPixelSize(I)I

    move-result v13

    .line 1522
    .local v13, "padding":I
    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v6, v3

    float-to-int v14, v6

    .line 1523
    .local v14, "paddingTop":I
    iget-object v6, p0, Lcom/android/internal/widget/DecorCaptionView;->mDCResources:Lcom/samsung/android/util/DecorCaptionResources;

    invoke-virtual {v6, v1}, Lcom/samsung/android/util/DecorCaptionResources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mExtraPaddingHorizontal:I

    .line 1524
    new-instance v1, Landroid/graphics/Rect;

    if-eqz v2, :cond_5

    move v6, v14

    goto :goto_4

    :cond_5
    move v6, v13

    :goto_4
    invoke-direct {v1, v13, v6, v13, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1526
    .local v1, "paddings":Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    check-cast v6, Lcom/samsung/android/widget/SemCaptionButton;

    const/4 v10, 0x0

    iget v11, p0, Lcom/android/internal/widget/DecorCaptionView;->mExtraPaddingHorizontal:I

    move v7, v5

    move v8, v12

    move-object v9, v1

    invoke-virtual/range {v6 .. v11}, Lcom/samsung/android/widget/SemCaptionButton;->setProperties(IILandroid/graphics/Rect;II)V

    .line 1527
    iget-object v6, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    check-cast v6, Lcom/samsung/android/widget/SemCaptionButton;

    invoke-virtual {v6, v5, v12, v1}, Lcom/samsung/android/widget/SemCaptionButton;->setProperties(IILandroid/graphics/Rect;)V

    .line 1528
    iget-object v6, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimize:Landroid/view/View;

    check-cast v6, Lcom/samsung/android/widget/SemCaptionButton;

    invoke-virtual {v6, v5, v12, v1}, Lcom/samsung/android/widget/SemCaptionButton;->setProperties(IILandroid/graphics/Rect;)V

    .line 1529
    iget-object v6, p0, Lcom/android/internal/widget/DecorCaptionView;->mOpacity:Landroid/view/View;

    check-cast v6, Lcom/samsung/android/widget/SemCaptionButton;

    invoke-virtual {v6, v5, v12, v1}, Lcom/samsung/android/widget/SemCaptionButton;->setProperties(IILandroid/graphics/Rect;)V

    .line 1531
    iget-object v6, p0, Lcom/android/internal/widget/DecorCaptionView;->mBack:Landroid/view/View;

    check-cast v6, Lcom/samsung/android/widget/SemCaptionButton;

    iget v10, p0, Lcom/android/internal/widget/DecorCaptionView;->mExtraPaddingHorizontal:I

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Lcom/samsung/android/widget/SemCaptionButton;->setProperties(IILandroid/graphics/Rect;II)V

    .line 1532
    iget-object v6, p0, Lcom/android/internal/widget/DecorCaptionView;->mRotate:Landroid/view/View;

    check-cast v6, Lcom/samsung/android/widget/SemCaptionButton;

    invoke-virtual {v6, v5, v12, v1}, Lcom/samsung/android/widget/SemCaptionButton;->setProperties(IILandroid/graphics/Rect;)V

    .line 1533
    iget-object v6, p0, Lcom/android/internal/widget/DecorCaptionView;->mReduce:Landroid/view/View;

    check-cast v6, Lcom/samsung/android/widget/SemCaptionButton;

    invoke-virtual {v6, v5, v12, v1}, Lcom/samsung/android/widget/SemCaptionButton;->setProperties(IILandroid/graphics/Rect;)V

    .line 1534
    iget-object v6, p0, Lcom/android/internal/widget/DecorCaptionView;->mPinOnDex:Landroid/view/View;

    check-cast v6, Lcom/samsung/android/widget/SemCaptionButton;

    invoke-virtual {v6, v5, v12, v1}, Lcom/samsung/android/widget/SemCaptionButton;->setProperties(IILandroid/graphics/Rect;)V

    .line 1536
    iget-object v6, p0, Lcom/android/internal/widget/DecorCaptionView;->mMore:Landroid/view/View;

    check-cast v6, Lcom/samsung/android/widget/SemCaptionButton;

    invoke-virtual {v6, v5, v12, v1}, Lcom/samsung/android/widget/SemCaptionButton;->setProperties(IILandroid/graphics/Rect;)V

    .line 1538
    .end local v0    # "dexDockingState":I
    .end local v1    # "paddings":Landroid/graphics/Rect;
    .end local v2    # "isFreeform":Z
    .end local v3    # "density":F
    .end local v4    # "isDocked":Z
    .end local v5    # "buttonWidth":I
    .end local v12    # "buttonHeight":I
    .end local v13    # "padding":I
    .end local v14    # "paddingTop":I
    goto/16 :goto_5

    .line 1539
    :cond_6
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mDCResources:Lcom/samsung/android/util/DecorCaptionResources;

    const v3, 0x105039c

    invoke-virtual {v0, v3}, Lcom/samsung/android/util/DecorCaptionResources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1540
    .local v0, "buttonSize":I
    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mDCResources:Lcom/samsung/android/util/DecorCaptionResources;

    const v4, 0x1050399

    invoke-virtual {v3, v4}, Lcom/samsung/android/util/DecorCaptionResources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1541
    .local v3, "padding":I
    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mDCResources:Lcom/samsung/android/util/DecorCaptionResources;

    const v5, 0x105039b

    invoke-virtual {v4, v5}, Lcom/samsung/android/util/DecorCaptionResources;->getDimensionPixelSize(I)I

    move-result v4

    .line 1542
    .local v4, "paddingTop":I
    iget-object v5, p0, Lcom/android/internal/widget/DecorCaptionView;->mDCResources:Lcom/samsung/android/util/DecorCaptionResources;

    invoke-virtual {v5, v1}, Lcom/samsung/android/util/DecorCaptionResources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1543
    .local v1, "extraPaddingHorizontal":I
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v3, v4, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1545
    .local v5, "paddings":Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    check-cast v6, Lcom/samsung/android/widget/SemCaptionButton;

    invoke-virtual {v6, v0, v5}, Lcom/samsung/android/widget/SemCaptionButton;->setProperties(ILandroid/graphics/Rect;)V

    .line 1546
    iget-object v6, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    check-cast v6, Lcom/samsung/android/widget/SemCaptionButton;

    invoke-virtual {v6, v0, v5}, Lcom/samsung/android/widget/SemCaptionButton;->setProperties(ILandroid/graphics/Rect;)V

    .line 1547
    iget-object v6, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimize:Landroid/view/View;

    check-cast v6, Lcom/samsung/android/widget/SemCaptionButton;

    invoke-virtual {v6, v0, v5, v1, v2}, Lcom/samsung/android/widget/SemCaptionButton;->setProperties(ILandroid/graphics/Rect;II)V

    .line 1548
    iget-object v6, p0, Lcom/android/internal/widget/DecorCaptionView;->mOpacity:Landroid/view/View;

    check-cast v6, Lcom/samsung/android/widget/SemCaptionButton;

    invoke-virtual {v6, v0, v5}, Lcom/samsung/android/widget/SemCaptionButton;->setProperties(ILandroid/graphics/Rect;)V

    .line 1550
    iget-object v6, p0, Lcom/android/internal/widget/DecorCaptionView;->mSplit:Landroid/view/View;

    check-cast v6, Lcom/samsung/android/widget/SemCaptionButton;

    invoke-virtual {v6, v0, v5}, Lcom/samsung/android/widget/SemCaptionButton;->setProperties(ILandroid/graphics/Rect;)V

    .line 1551
    iget-object v6, p0, Lcom/android/internal/widget/DecorCaptionView;->mHeaderUnpin:Landroid/view/View;

    check-cast v6, Lcom/samsung/android/widget/SemCaptionButton;

    invoke-virtual {v6, v0, v5, v1, v2}, Lcom/samsung/android/widget/SemCaptionButton;->setProperties(ILandroid/graphics/Rect;II)V

    .line 1552
    iget-object v6, p0, Lcom/android/internal/widget/DecorCaptionView;->mMore:Landroid/view/View;

    check-cast v6, Lcom/samsung/android/widget/SemCaptionButton;

    invoke-virtual {v6, v0, v5, v2, v1}, Lcom/samsung/android/widget/SemCaptionButton;->setProperties(ILandroid/graphics/Rect;II)V

    .line 1554
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mDivider:Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$Divider;

    iget-object v6, p0, Lcom/android/internal/widget/DecorCaptionView;->mDCResources:Lcom/samsung/android/util/DecorCaptionResources;

    invoke-virtual {v6}, Lcom/samsung/android/util/DecorCaptionResources;->isNightModeEnabled()Z

    move-result v6

    iget-object v7, p0, Lcom/android/internal/widget/DecorCaptionView;->mDCResources:Lcom/samsung/android/util/DecorCaptionResources;

    const v8, 0x105041c

    .line 1555
    invoke-virtual {v7, v8}, Lcom/samsung/android/util/DecorCaptionResources;->getDimensionPixelSize(I)I

    move-result v7

    iget-object v8, p0, Lcom/android/internal/widget/DecorCaptionView;->mDCResources:Lcom/samsung/android/util/DecorCaptionResources;

    const v9, 0x105041b

    .line 1556
    invoke-virtual {v8, v9}, Lcom/samsung/android/util/DecorCaptionResources;->getDimensionPixelSize(I)I

    move-result v8

    .line 1554
    invoke-virtual {v2, v6, v7, v8}, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$Divider;->setProperties(ZII)V

    .line 1558
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mDummyView:Lcom/android/internal/widget/DecorCaptionView$DummyView;

    iget-object v6, p0, Lcom/android/internal/widget/DecorCaptionView;->mDCResources:Lcom/samsung/android/util/DecorCaptionResources;

    const v7, 0x1050418

    invoke-virtual {v6, v7}, Lcom/samsung/android/util/DecorCaptionResources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-static {v2, v6}, Lcom/android/internal/widget/DecorCaptionView$DummyView;->-$$Nest$msetProperties(Lcom/android/internal/widget/DecorCaptionView$DummyView;I)V

    .line 1565
    .end local v0    # "buttonSize":I
    .end local v1    # "extraPaddingHorizontal":I
    .end local v3    # "padding":I
    .end local v4    # "paddingTop":I
    .end local v5    # "paddings":Landroid/graphics/Rect;
    :goto_5
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mDCResources:Lcom/samsung/android/util/DecorCaptionResources;

    const v2, 0x1040cc1

    invoke-virtual {v1, v2}, Lcom/samsung/android/util/DecorCaptionResources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1566
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mDCResources:Lcom/samsung/android/util/DecorCaptionResources;

    const v2, 0x1040cc3

    invoke-virtual {v1, v2}, Lcom/samsung/android/util/DecorCaptionResources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1567
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimize:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mDCResources:Lcom/samsung/android/util/DecorCaptionResources;

    const v2, 0x1040cc4

    invoke-virtual {v1, v2}, Lcom/samsung/android/util/DecorCaptionResources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1568
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOpacity:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mDCResources:Lcom/samsung/android/util/DecorCaptionResources;

    const v2, 0x1040cc6

    invoke-virtual {v1, v2}, Lcom/samsung/android/util/DecorCaptionResources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1569
    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsDexEnabled:Z

    const v1, 0x1040cc5

    if-eqz v0, :cond_8

    .line 1570
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mBack:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mDCResources:Lcom/samsung/android/util/DecorCaptionResources;

    const v3, 0x1040cc0

    invoke-virtual {v2, v3}, Lcom/samsung/android/util/DecorCaptionResources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1571
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mRotate:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mDCResources:Lcom/samsung/android/util/DecorCaptionResources;

    const v3, 0x1040cc9

    invoke-virtual {v2, v3}, Lcom/samsung/android/util/DecorCaptionResources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1572
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mReduce:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mDCResources:Lcom/samsung/android/util/DecorCaptionResources;

    const v3, 0x1040cc8

    invoke-virtual {v2, v3}, Lcom/samsung/android/util/DecorCaptionResources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1573
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mPinOnDex:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mDCResources:Lcom/samsung/android/util/DecorCaptionResources;

    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isPinned()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1574
    const v3, 0x1040ccd

    goto :goto_6

    .line 1575
    :cond_7
    const v3, 0x1040ccc

    .line 1573
    :goto_6
    invoke-virtual {v2, v3}, Lcom/samsung/android/util/DecorCaptionResources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1577
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMore:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mDCResources:Lcom/samsung/android/util/DecorCaptionResources;

    invoke-virtual {v2, v1}, Lcom/samsung/android/util/DecorCaptionResources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 1580
    :cond_8
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mSplit:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mDCResources:Lcom/samsung/android/util/DecorCaptionResources;

    const v3, 0x1040cca

    invoke-virtual {v2, v3}, Lcom/samsung/android/util/DecorCaptionResources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1581
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mHeaderUnpin:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mDCResources:Lcom/samsung/android/util/DecorCaptionResources;

    const v3, 0x1040ccb

    invoke-virtual {v2, v3}, Lcom/samsung/android/util/DecorCaptionResources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1582
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMore:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mDCResources:Lcom/samsung/android/util/DecorCaptionResources;

    invoke-virtual {v2, v1}, Lcom/samsung/android/util/DecorCaptionResources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1584
    :goto_7
    return-void
.end method

.method private blacklist updateRippleBounds(Landroid/view/View;)V
    .locals 13
    .param p1, "view"    # Landroid/view/View;

    .line 1426
    const/4 v0, 0x0

    .line 1427
    .local v0, "left":I
    const/4 v1, 0x0

    .line 1428
    .local v1, "right":I
    const/4 v2, 0x0

    .line 1429
    .local v2, "top":I
    const/4 v3, 0x0

    .line 1430
    .local v3, "bottom":I
    if-eqz p1, :cond_10

    .line 1431
    const/4 v4, 0x0

    .line 1432
    .local v4, "offsetLeft":I
    const/4 v5, 0x0

    .line 1433
    .local v5, "offsetRight":I
    instance-of v6, p1, Lcom/samsung/android/widget/SemCaptionButton;

    if-eqz v6, :cond_b

    .line 1434
    iget-boolean v6, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsDexEnabled:Z

    if-eqz v6, :cond_6

    .line 1435
    iget-object v6, p0, Lcom/android/internal/widget/DecorCaptionView;->mBack:Landroid/view/View;

    if-ne p1, v6, :cond_2

    .line 1436
    move-object v6, p1

    check-cast v6, Lcom/samsung/android/widget/SemCaptionButton;

    invoke-virtual {v6}, Lcom/samsung/android/widget/SemCaptionButton;->getExtraPaddingStart()I

    move-result v6

    .line 1437
    .local v6, "extraPaddingStart":I
    if-lez v6, :cond_1

    .line 1438
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    if-le v7, v8, :cond_0

    .line 1439
    move v4, v6

    goto :goto_0

    .line 1441
    :cond_0
    move v5, v6

    .line 1444
    .end local v6    # "extraPaddingStart":I
    :cond_1
    :goto_0
    goto :goto_3

    :cond_2
    iget-object v6, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    if-eq p1, v6, :cond_3

    iget-object v6, p0, Lcom/android/internal/widget/DecorCaptionView;->mMore:Landroid/view/View;

    if-ne p1, v6, :cond_1

    .line 1445
    :cond_3
    move-object v6, p1

    check-cast v6, Lcom/samsung/android/widget/SemCaptionButton;

    invoke-virtual {v6}, Lcom/samsung/android/widget/SemCaptionButton;->getExtraPaddingEnd()I

    move-result v6

    .line 1446
    .local v6, "extraPaddingEnd":I
    if-lez v6, :cond_5

    .line 1447
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    if-ge v7, v8, :cond_4

    .line 1448
    move v5, v6

    goto :goto_1

    .line 1450
    :cond_4
    move v4, v6

    .line 1453
    .end local v6    # "extraPaddingEnd":I
    :cond_5
    :goto_1
    goto :goto_3

    .line 1455
    :cond_6
    iget-object v6, p0, Lcom/android/internal/widget/DecorCaptionView;->mDCResources:Lcom/samsung/android/util/DecorCaptionResources;

    const v7, 0x10503a4

    invoke-virtual {v6, v7}, Lcom/samsung/android/util/DecorCaptionResources;->getDimensionPixelSize(I)I

    move-result v6

    .line 1457
    .local v6, "innerButtonPadding":I
    iget-object v7, p0, Lcom/android/internal/widget/DecorCaptionView;->mHeaderUnpin:Landroid/view/View;

    if-eq p1, v7, :cond_9

    iget-object v7, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimize:Landroid/view/View;

    if-ne p1, v7, :cond_7

    goto :goto_2

    .line 1463
    :cond_7
    iget-object v7, p0, Lcom/android/internal/widget/DecorCaptionView;->mMore:Landroid/view/View;

    if-ne p1, v7, :cond_b

    .line 1464
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    if-ge v7, v8, :cond_8

    .line 1465
    add-int/2addr v5, v6

    goto :goto_3

    .line 1467
    :cond_8
    add-int/2addr v4, v6

    goto :goto_3

    .line 1458
    :cond_9
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    if-le v7, v8, :cond_a

    .line 1459
    add-int/2addr v4, v6

    goto :goto_3

    .line 1461
    :cond_a
    add-int/2addr v5, v6

    .line 1473
    .end local v6    # "innerButtonPadding":I
    :cond_b
    :goto_3
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int/2addr v6, v4

    sub-int/2addr v6, v5

    .line 1474
    .local v6, "width":I
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v7

    add-int/2addr v7, v4

    iget v8, p0, Lcom/android/internal/widget/DecorCaptionView;->mRippleSize:I

    sub-int/2addr v8, v6

    const/4 v9, 0x2

    div-int/2addr v8, v9

    sub-int/2addr v7, v8

    .line 1475
    .end local v0    # "left":I
    .local v7, "left":I
    new-array v0, v9, [I

    .line 1476
    .local v0, "parentLocation":[I
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 1477
    .local v8, "parent":Landroid/view/View;
    iget-object v10, p0, Lcom/android/internal/widget/DecorCaptionView;->mPrimaryContainer:Landroid/view/View;

    const/4 v11, 0x0

    if-ne v8, v10, :cond_c

    .line 1478
    invoke-virtual {v10, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1479
    aget v10, v0, v11

    add-int/2addr v7, v10

    goto :goto_4

    .line 1480
    :cond_c
    iget-object v10, p0, Lcom/android/internal/widget/DecorCaptionView;->mSecondaryContainer:Landroid/view/View;

    if-ne v8, v10, :cond_d

    .line 1481
    invoke-virtual {v10, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1482
    aget v10, v0, v11

    add-int/2addr v7, v10

    goto :goto_4

    .line 1483
    :cond_d
    iget-object v10, p0, Lcom/android/internal/widget/DecorCaptionView;->mMore:Landroid/view/View;

    if-ne p1, v10, :cond_e

    .line 1484
    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 1485
    .local v10, "moreButtonContainer":Landroid/view/View;
    invoke-virtual {v10, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1486
    aget v11, v0, v11

    add-int/2addr v7, v11

    .line 1488
    .end local v10    # "moreButtonContainer":Landroid/view/View;
    :cond_e
    :goto_4
    iget v10, p0, Lcom/android/internal/widget/DecorCaptionView;->mRippleSize:I

    add-int v1, v7, v10

    .line 1489
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v10

    iget v11, p0, Lcom/android/internal/widget/DecorCaptionView;->mRippleSize:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v12

    sub-int/2addr v11, v12

    div-int/2addr v11, v9

    sub-int/2addr v10, v11

    .line 1490
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v11

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v12

    sub-int/2addr v11, v12

    div-int/2addr v11, v9

    add-int/2addr v10, v11

    .line 1491
    .end local v2    # "top":I
    .local v10, "top":I
    if-gez v10, :cond_f

    .line 1492
    const/4 v2, 0x0

    .end local v10    # "top":I
    .restart local v2    # "top":I
    goto :goto_5

    .line 1491
    .end local v2    # "top":I
    .restart local v10    # "top":I
    :cond_f
    move v2, v10

    .line 1494
    .end local v10    # "top":I
    .restart local v2    # "top":I
    :goto_5
    iget v9, p0, Lcom/android/internal/widget/DecorCaptionView;->mRippleSize:I

    add-int v3, v2, v9

    move v0, v7

    .line 1497
    .end local v4    # "offsetLeft":I
    .end local v5    # "offsetRight":I
    .end local v6    # "width":I
    .end local v7    # "left":I
    .end local v8    # "parent":Landroid/view/View;
    .local v0, "left":I
    :cond_10
    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mButtonContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/RippleDrawable;

    .line 1498
    .local v4, "ripple":Landroid/graphics/drawable/RippleDrawable;
    if-eqz v4, :cond_11

    .line 1499
    iget-object v5, p0, Lcom/android/internal/widget/DecorCaptionView;->mRippleColorList:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 1500
    invoke-virtual {v4, v0, v2, v1, v3}, Landroid/graphics/drawable/RippleDrawable;->setBounds(IIII)V

    .line 1501
    invoke-virtual {v4, v0, v2, v1, v3}, Landroid/graphics/drawable/RippleDrawable;->setHotspotBounds(IIII)V

    .line 1503
    :cond_11
    return-void
.end method

.method private blacklist updateWindowPinButtonEnabled()V
    .locals 3

    .line 1753
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mPinOnDex:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    .line 1754
    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isWindowPinStateChangeable()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isPinned()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1753
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1755
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mPinOnDex:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1756
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mPinOnDex:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiSplitActions;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    const v1, 0x3ecccccd    # 0.4f

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1758
    :cond_3
    return-void
.end method


# virtual methods
.method public whitelist addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1069
    instance-of v0, p3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 1074
    const/4 v0, 0x2

    if-ge p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/DecorCaptionView;->getChildCount()I

    move-result v1

    if-ge v1, v0, :cond_0

    .line 1079
    const/4 v0, 0x0

    invoke-super {p0, p1, v0, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1080
    iput-object p1, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    .line 1081
    return-void

    .line 1075
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DecorCaptionView can only handle 1 client view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1070
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "params "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must subclass MarginLayoutParams"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1945
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    return v0
.end method

.method public blacklist clearMaximizeRequested(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .line 1797
    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeRequested:Z

    if-eqz v0, :cond_0

    .line 1798
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeRequested:Z

    .line 1799
    sget-boolean v0, Lcom/android/internal/widget/DecorCaptionView;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    .line 1800
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearMaximizeRequested, reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DecorCaptionView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1803
    :cond_0
    return-void
.end method

.method public blacklist clickButton(Landroid/view/View;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;

    .line 887
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->isMovingTask()Z

    move-result v0

    if-nez v0, :cond_6

    .line 888
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_4

    .line 938
    :sswitch_0
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v0, v2}, Lcom/samsung/android/multiwindow/MultiSplitActions;->setHeaderType(I)V

    .line 939
    goto/16 :goto_4

    .line 924
    :sswitch_1
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->moveToSplit()V

    .line 925
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mSplit:Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiSplitActions;->hasWindowFocus()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isSplitModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 926
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    if-eqz v0, :cond_5

    .line 927
    const-string v0, "1000"

    const-string v1, "From Popup view"

    invoke-static {v0, v1}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->getMultiSplitFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 931
    const-string v0, "1021"

    invoke-static {v0, v1}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 974
    :sswitch_2
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->rotate()V

    .line 975
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MD_DEX_SA_LOGGING:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsDexEnabled:Z

    if-eqz v0, :cond_5

    .line 976
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mContext:Landroid/content/Context;

    .line 977
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 976
    const-string v1, "2503"

    invoke-static {v1, v0}, Lcom/samsung/android/core/CoreSaLogger;->logForDexMW(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 982
    :sswitch_3
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/DecorCaptionView;->setOverlayWithAppContent(Z)V

    .line 983
    invoke-virtual {p0}, Lcom/android/internal/widget/DecorCaptionView;->toggleWindow()V

    .line 984
    goto/16 :goto_4

    .line 986
    :sswitch_4
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->toggleWindowPinState()V

    .line 987
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MD_DEX_SA_LOGGING:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsDexEnabled:Z

    if-eqz v0, :cond_5

    .line 988
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mContext:Landroid/content/Context;

    .line 989
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 988
    const-string v1, "2501"

    invoke-static {v1, v0}, Lcom/samsung/android/core/CoreSaLogger;->logForDexMW(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 912
    :sswitch_5
    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsDexEnabled:Z

    if-eqz v0, :cond_1

    .line 913
    new-instance v0, Lcom/samsung/android/multiwindow/OpacityPopupForDeX;

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mDCResources:Lcom/samsung/android/util/DecorCaptionResources;

    invoke-virtual {v3}, Lcom/samsung/android/util/DecorCaptionResources;->isNightModeEnabled()Z

    move-result v3

    invoke-direct {v0, p0, v1, v3}, Lcom/samsung/android/multiwindow/OpacityPopupForDeX;-><init>(Landroid/view/ViewGroup;Lcom/samsung/android/multiwindow/MultiSplitActions;Z)V

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/OpacityPopupForDeX;->show()Z

    .line 914
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MD_DEX_SA_LOGGING:Z

    if-eqz v0, :cond_5

    .line 915
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mContext:Landroid/content/Context;

    .line 916
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 915
    const-string v1, "2500"

    invoke-static {v1, v0}, Lcom/samsung/android/core/CoreSaLogger;->logForDexMW(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 919
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/internal/widget/DecorCaptionView;->setOpacityChangeModeEnabled(Z)V

    .line 921
    goto/16 :goto_4

    .line 941
    :sswitch_6
    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsDexEnabled:Z

    if-eqz v0, :cond_3

    .line 943
    const/4 v0, 0x6

    :try_start_0
    new-array v8, v0, [Landroid/view/View;

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimize:Landroid/view/View;

    aput-object v0, v8, v2

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    aput-object v0, v8, v1

    const/4 v0, 0x2

    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    aput-object v3, v8, v0

    const/4 v0, 0x3

    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mOpacity:Landroid/view/View;

    aput-object v3, v8, v0

    const/4 v0, 0x4

    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mPinOnDex:Landroid/view/View;

    aput-object v3, v8, v0

    const/4 v0, 0x5

    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mRotate:Landroid/view/View;

    aput-object v3, v8, v0

    .line 947
    .local v8, "buttons":[Landroid/view/View;
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 948
    .local v0, "newConfig":Landroid/content/res/Configuration;
    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mDCResources:Lcom/samsung/android/util/DecorCaptionResources;

    invoke-virtual {v3}, Lcom/samsung/android/util/DecorCaptionResources;->getDensityDpi()I

    move-result v3

    iput v3, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 949
    new-instance v4, Landroid/view/ContextThemeWrapper;

    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v3

    const v5, 0x1030128

    invoke-direct {v4, v3, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 951
    .local v4, "popupContext":Landroid/content/Context;
    new-instance v10, Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX;

    iget-object v6, p0, Lcom/android/internal/widget/DecorCaptionView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mDCResources:Lcom/samsung/android/util/DecorCaptionResources;

    .line 952
    invoke-virtual {v3}, Lcom/samsung/android/util/DecorCaptionResources;->isNightModeEnabled()Z

    move-result v7

    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mPrimaryContainer:Landroid/view/View;

    .line 953
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v5, 0x8

    if-ne v3, v5, :cond_2

    move v9, v1

    goto :goto_1

    :cond_2
    move v9, v2

    :goto_1
    move-object v3, v10

    move-object v5, p0

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX;-><init>(Landroid/content/Context;Lcom/android/internal/widget/DecorCaptionView;Lcom/samsung/android/multiwindow/MultiSplitActions;Z[Landroid/view/View;Z)V

    iput-object v10, p0, Lcom/android/internal/widget/DecorCaptionView;->mOverflowMenuPopup:Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX;

    .line 954
    invoke-virtual {v10}, Lcom/samsung/android/multiwindow/OverflowMenuPopupForDeX;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "newConfig":Landroid/content/res/Configuration;
    .end local v4    # "popupContext":Landroid/content/Context;
    .end local v8    # "buttons":[Landroid/view/View;
    goto :goto_2

    .line 955
    :catch_0
    move-exception v0

    .line 956
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clickButton: ex="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "DecorCaptionView"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2
    goto :goto_4

    .line 959
    :cond_3
    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mShowPrimarySet:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mShowPrimarySet:Z

    .line 960
    if-eqz v0, :cond_4

    .line 961
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMore:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mMenuDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 963
    :cond_4
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMore:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mMenuCloseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 965
    :goto_3
    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->doMoreToggleAnimation()V

    .line 967
    goto :goto_4

    .line 898
    :sswitch_7
    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->hideSoftInputIfNeeded()V

    .line 899
    invoke-direct {p0, v2}, Lcom/android/internal/widget/DecorCaptionView;->setEnabledButtonTooltip(Z)V

    .line 900
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->minimize()V

    .line 901
    goto :goto_4

    .line 890
    :sswitch_8
    invoke-virtual {p0}, Lcom/android/internal/widget/DecorCaptionView;->toggleWindow()V

    .line 892
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsDexEnabled:Z

    if-nez v0, :cond_5

    .line 893
    const-string v0, "2002"

    invoke-static {v0}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;)V

    goto :goto_4

    .line 903
    :sswitch_9
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->close()V

    .line 905
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsDexEnabled:Z

    if-nez v0, :cond_5

    .line 906
    const-string v0, "2003"

    const-string v1, "Window option"

    invoke-static {v0, v1}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 971
    :sswitch_a
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->back()V

    .line 972
    nop

    .line 997
    :cond_5
    :goto_4
    invoke-virtual {p1, v2}, Landroid/view/View;->playSoundEffect(I)V

    .line 999
    :cond_6
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1020219 -> :sswitch_a
        0x1020263 -> :sswitch_9
        0x10203ec -> :sswitch_8
        0x1020408 -> :sswitch_7
        0x1020419 -> :sswitch_6
        0x102046d -> :sswitch_5
        0x10204a3 -> :sswitch_4
        0x10204d2 -> :sswitch_3
        0x1020501 -> :sswitch_2
        0x10205d9 -> :sswitch_1
        0x1020685 -> :sswitch_0
    .end sparse-switch
.end method

.method public blacklist dispatchRequestedOrientation(I)V
    .locals 3
    .param p1, "requestedOrientation"    # I

    .line 2295
    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsDecorCaptionWindow:Z

    if-eqz v0, :cond_1

    .line 2296
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2309
    :pswitch_0
    iput-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsFixedOrientation:Z

    goto :goto_0

    .line 2306
    :pswitch_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsFixedOrientation:Z

    .line 2307
    nop

    .line 2313
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mRotate:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 2314
    invoke-virtual {p0}, Lcom/android/internal/widget/DecorCaptionView;->isRotateButtonVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2317
    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected whitelist dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 2928
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 2929
    return-void
.end method

.method protected whitelist dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 2923
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 2924
    return-void
.end method

.method public whitelist dispatchWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .line 1691
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mDecor:Lcom/android/internal/policy/DecorView;

    .line 1693
    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->hasWindowFocusInTask()Z

    move-result v0

    or-int/2addr v0, p1

    .line 1691
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->dispatchWindowFocusChanged(Z)V

    .line 1695
    return-void
.end method

.method public blacklist forceLayoutIfNeeded()V
    .locals 1

    .line 2011
    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mForceLayoutRequested:Z

    if-eqz v0, :cond_0

    .line 2012
    invoke-virtual {p0}, Lcom/android/internal/widget/DecorCaptionView;->requestLayout()V

    .line 2013
    invoke-virtual {p0}, Lcom/android/internal/widget/DecorCaptionView;->invalidate()V

    .line 2014
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mForceLayoutRequested:Z

    .line 2016
    :cond_0
    return-void
.end method

.method protected whitelist generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1934
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 1929
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/android/internal/widget/DecorCaptionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected whitelist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1940
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public blacklist getCaption()Landroid/view/View;
    .locals 1

    .line 1865
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    return-object v0
.end method

.method public blacklist getCaptionHeight()I
    .locals 1

    .line 1854
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist getLastMeasuredWithCaptionHeight()Z
    .locals 1

    .line 2019
    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mLastMeasuredWithCaptionHeight:Z

    return v0
.end method

.method public blacklist getMaximize()Landroid/view/View;
    .locals 1

    .line 1782
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    return-object v0
.end method

.method public blacklist getOverlayWithAppContent()Z
    .locals 1

    .line 2326
    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOverlayWithAppContent:Z

    return v0
.end method

.method public blacklist isCaptionShowing()Z
    .locals 1

    .line 1850
    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mShow:Z

    return v0
.end method

.method public blacklist isRotateButtonVisible()Z
    .locals 2

    .line 1786
    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsDecorCaptionWindow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->isPreserveOrientationMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    if-eqz v0, :cond_0

    .line 1787
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->isFloating()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->isTranslucent()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mDecor:Lcom/android/internal/policy/DecorView;

    .line 1788
    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->isFullSize()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsFixedOrientation:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsDexEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mDecor:Lcom/android/internal/policy/DecorView;

    .line 1789
    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->isFullscreenMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    .line 1791
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->dexCompatUiMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1786
    :goto_0
    return v0
.end method

.method synthetic blacklist lambda$new$0$com-android-internal-widget-DecorCaptionView(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 253
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 259
    :pswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/DecorCaptionView;->setButtonContainerHovered(Landroid/view/View;)V

    goto :goto_0

    .line 256
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/internal/widget/DecorCaptionView;->setButtonContainerHovered(Landroid/view/View;)V

    .line 257
    nop

    .line 262
    :goto_0
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method synthetic blacklist lambda$new$1$com-android-internal-widget-DecorCaptionView()V
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mTooltipAnchor:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {v0}, Landroid/view/View;->semHideTooltip()V

    .line 270
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mTooltipAnchor:Landroid/view/View;

    .line 272
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsLongPressed:Z

    .line 273
    return-void
.end method

.method synthetic blacklist lambda$new$2$com-android-internal-widget-DecorCaptionView()V
    .locals 1

    .line 310
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/DecorCaptionView;->setOpacityChangeModeEnabled(Z)V

    .line 311
    return-void
.end method

.method synthetic blacklist lambda$new$3$com-android-internal-widget-DecorCaptionView(Ljava/lang/Boolean;Ljava/lang/Integer;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/Boolean;
    .param p2, "inset"    # Ljava/lang/Integer;

    .line 2276
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2277
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimizeRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 2278
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 2279
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCloseRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 2280
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOpacityRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 2281
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMoreRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 2282
    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsDexEnabled:Z

    if-eqz v0, :cond_0

    .line 2283
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mBackRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 2284
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mReduceRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 2285
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mRotateRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 2286
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mPinRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->inset(II)V

    goto :goto_0

    .line 2288
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mSplitRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 2289
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mHeaderUnpinRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 2292
    :cond_1
    :goto_0
    return-void
.end method

.method synthetic blacklist lambda$showRestartAlertDialog$4$com-android-internal-widget-DecorCaptionView(Landroid/widget/CheckBox;Landroid/view/View;)V
    .locals 1
    .param p1, "option"    # Landroid/widget/CheckBox;
    .param p2, "v"    # Landroid/view/View;

    .line 2374
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2375
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->setRestartDialogDisabled()V

    .line 2377
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mDexCompatDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 2378
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2380
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeRequested:Z

    .line 2381
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->maximize()V

    .line 2382
    return-void
.end method

.method synthetic blacklist lambda$showRestartAlertDialog$5$com-android-internal-widget-DecorCaptionView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 2387
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mDexCompatDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 2388
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2390
    :cond_0
    return-void
.end method

.method public blacklist onAccessibilityActionClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 2027
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/DecorCaptionView;->clickButton(Landroid/view/View;)V

    .line 2028
    return-void
.end method

.method protected whitelist onAttachedToWindow()V
    .locals 3

    .line 2032
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2036
    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsDexEnabled:Z

    if-nez v0, :cond_1

    .line 2037
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isHeaderTypeBar()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 2038
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2039
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mDummyView:Lcom/android/internal/widget/DecorCaptionView$DummyView;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/DecorCaptionView$DummyView;->setVisibility(I)V

    .line 2040
    invoke-virtual {p0}, Lcom/android/internal/widget/DecorCaptionView;->updateButtonVisibility()V

    goto :goto_0

    .line 2042
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2043
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mDummyView:Lcom/android/internal/widget/DecorCaptionView$DummyView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DecorCaptionView$DummyView;->setVisibility(I)V

    .line 2049
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mButtonHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 2050
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mButtonHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 2051
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimize:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mButtonHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 2052
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOpacity:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mButtonHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 2053
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMore:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 2054
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mButtonHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 2056
    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsDexEnabled:Z

    if-eqz v0, :cond_3

    .line 2057
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mBack:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mButtonHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 2058
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mRotate:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mButtonHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 2059
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mReduce:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mButtonHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 2060
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mPinOnDex:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mButtonHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    goto :goto_1

    .line 2062
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mSplit:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mButtonHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 2063
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mHeaderUnpin:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mButtonHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 2066
    :goto_1
    return-void
.end method

.method public blacklist onConfigurationChanged(Z)V
    .locals 4
    .param p1, "show"    # Z

    .line 1031
    iput-boolean p1, p0, Lcom/android/internal/widget/DecorCaptionView;->mShow:Z

    .line 1032
    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->updateCaptionVisibility()V

    .line 1035
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getDecorCaptionResources()Lcom/samsung/android/util/DecorCaptionResources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mDCResources:Lcom/samsung/android/util/DecorCaptionResources;

    .line 1037
    invoke-virtual {v0}, Lcom/samsung/android/util/DecorCaptionResources;->isNightModeEnabled()Z

    move-result v0

    .line 1038
    .local v0, "isNightMode":Z
    iget-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsNightMode:Z

    const/4 v2, 0x0

    if-eq v1, v0, :cond_0

    .line 1039
    iput-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsNightMode:Z

    .line 1041
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mDexCompatDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1042
    iput-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mDexCompatDialog:Landroid/app/AlertDialog;

    .line 1047
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/DecorCaptionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsDexEnabled:Z

    .line 1050
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mDCResources:Lcom/samsung/android/util/DecorCaptionResources;

    const v3, 0x105039e

    invoke-virtual {v1, v3}, Lcom/samsung/android/util/DecorCaptionResources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTargetInset:I

    .line 1051
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mDCResources:Lcom/samsung/android/util/DecorCaptionResources;

    const v3, 0x105039f

    invoke-virtual {v1, v3}, Lcom/samsung/android/util/DecorCaptionResources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragSlop:I

    .line 1052
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mDCResources:Lcom/samsung/android/util/DecorCaptionResources;

    iget-boolean v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsDexEnabled:Z

    if-eqz v3, :cond_2

    .line 1053
    const v3, 0x10503a8

    goto :goto_1

    :cond_2
    const v3, 0x10503a7

    .line 1052
    :goto_1
    invoke-virtual {v1, v3}, Lcom/samsung/android/util/DecorCaptionResources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mRippleSize:I

    .line 1054
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mDCResources:Lcom/samsung/android/util/DecorCaptionResources;

    const v3, 0x10503a3

    invoke-virtual {v1, v3}, Lcom/samsung/android/util/DecorCaptionResources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mMoreToggleTransX:I

    .line 1056
    invoke-virtual {p0}, Lcom/android/internal/widget/DecorCaptionView;->setDecorCaptionShade()V

    .line 1057
    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->updateResourcesFromDCResources()V

    .line 1059
    invoke-direct {p0, v2}, Lcom/android/internal/widget/DecorCaptionView;->setButtonContainerHovered(Landroid/view/View;)V

    .line 1060
    invoke-direct {p0, v2}, Lcom/android/internal/widget/DecorCaptionView;->setButtonContainerPressed(Landroid/view/View;)V

    .line 1061
    invoke-virtual {p0}, Lcom/android/internal/widget/DecorCaptionView;->hasWindowFocus()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/DecorCaptionView;->updateWindowFocus(Z)V

    .line 1062
    const-string v1, "config_changed"

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/DecorCaptionView;->clearMaximizeRequested(Ljava/lang/String;)V

    .line 1063
    invoke-virtual {p0}, Lcom/android/internal/widget/DecorCaptionView;->updateButtonVisibility()V

    .line 1065
    .end local v0    # "isNightMode":Z
    return-void
.end method

.method public whitelist onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 1950
    const/4 v0, 0x0

    return v0
.end method

.method protected whitelist onFinishInflate()V
    .locals 1

    .line 403
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 404
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/DecorCaptionView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    .line 405
    return-void
.end method

.method public whitelist onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .line 1991
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist onHeaderTypeChanged(Z)V
    .locals 3
    .param p1, "isBarType"    # Z

    .line 2258
    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    .line 2259
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mShowPrimarySet:Z

    .line 2260
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mButtonContainer:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2261
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mDummyView:Lcom/android/internal/widget/DecorCaptionView$DummyView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DecorCaptionView$DummyView;->setVisibility(I)V

    .line 2262
    invoke-virtual {p0}, Lcom/android/internal/widget/DecorCaptionView;->updateButtonVisibility()V

    goto :goto_0

    .line 2264
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mButtonContainer:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2265
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mDummyView:Lcom/android/internal/widget/DecorCaptionView$DummyView;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/DecorCaptionView$DummyView;->setVisibility(I)V

    .line 2267
    :goto_0
    return-void
.end method

.method public whitelist onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 544
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isHeaderTypeBar()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOpacityChangeModeEnabled:Z

    if-eqz v0, :cond_0

    goto/16 :goto_6

    .line 548
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 549
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 550
    .local v2, "y":I
    const/high16 v3, 0x40800000    # 4.0f

    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mDCResources:Lcom/samsung/android/util/DecorCaptionResources;

    invoke-virtual {v4}, Lcom/samsung/android/util/DecorCaptionResources;->getDensity()F

    move-result v4

    mul-float/2addr v4, v3

    float-to-int v3, v4

    .line 551
    .local v3, "resizeArea":I
    const-string v4, "DecorCaptionView"

    if-le v2, v3, :cond_13

    if-le v0, v3, :cond_13

    invoke-virtual {p0}, Lcom/android/internal/widget/DecorCaptionView;->getWidth()I

    move-result v5

    sub-int/2addr v5, v3

    if-lt v0, v5, :cond_1

    goto/16 :goto_5

    .line 558
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v6, 0x1

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_4

    .line 560
    :pswitch_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v5

    .line 561
    .local v5, "toolType":I
    if-eq v5, v6, :cond_3

    const/4 v7, 0x2

    if-ne v5, v7, :cond_2

    goto :goto_0

    :cond_2
    move v7, v1

    goto :goto_1

    :cond_3
    :goto_0
    move v7, v6

    .line 564
    .local v7, "isFingerOrStylus":Z
    :goto_1
    iget-object v8, p0, Lcom/android/internal/widget/DecorCaptionView;->adjustButtonRect:Ljava/util/function/BiConsumer;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iget v10, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTargetInset:I

    neg-int v10, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 566
    iget-object v8, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_4

    iget-object v8, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v0, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 567
    iget-object v8, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    iget-object v9, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeRect:Landroid/graphics/Rect;

    invoke-direct {p0, v8, v9}, Lcom/android/internal/widget/DecorCaptionView;->updateClickTarget(Landroid/view/View;Landroid/graphics/Rect;)V

    goto/16 :goto_2

    .line 568
    :cond_4
    iget-object v8, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_5

    iget-object v8, p0, Lcom/android/internal/widget/DecorCaptionView;->mCloseRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v0, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 569
    iget-object v8, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    iget-object v9, p0, Lcom/android/internal/widget/DecorCaptionView;->mCloseRect:Landroid/graphics/Rect;

    invoke-direct {p0, v8, v9}, Lcom/android/internal/widget/DecorCaptionView;->updateClickTarget(Landroid/view/View;Landroid/graphics/Rect;)V

    goto/16 :goto_2

    .line 570
    :cond_5
    iget-object v8, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimize:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_6

    iget-object v8, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimizeRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v0, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 571
    iget-object v8, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimize:Landroid/view/View;

    iget-object v9, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimizeRect:Landroid/graphics/Rect;

    invoke-direct {p0, v8, v9}, Lcom/android/internal/widget/DecorCaptionView;->updateClickTarget(Landroid/view/View;Landroid/graphics/Rect;)V

    goto/16 :goto_2

    .line 572
    :cond_6
    iget-object v8, p0, Lcom/android/internal/widget/DecorCaptionView;->mOpacity:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_7

    iget-object v8, p0, Lcom/android/internal/widget/DecorCaptionView;->mOpacityRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v0, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 573
    iget-object v8, p0, Lcom/android/internal/widget/DecorCaptionView;->mOpacity:Landroid/view/View;

    iget-object v9, p0, Lcom/android/internal/widget/DecorCaptionView;->mOpacityRect:Landroid/graphics/Rect;

    invoke-direct {p0, v8, v9}, Lcom/android/internal/widget/DecorCaptionView;->updateClickTarget(Landroid/view/View;Landroid/graphics/Rect;)V

    goto/16 :goto_2

    .line 574
    :cond_7
    iget-object v8, p0, Lcom/android/internal/widget/DecorCaptionView;->mMore:Landroid/view/View;

    if-eqz v8, :cond_8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_8

    iget-object v8, p0, Lcom/android/internal/widget/DecorCaptionView;->mMoreRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v0, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 575
    iget-object v8, p0, Lcom/android/internal/widget/DecorCaptionView;->mMore:Landroid/view/View;

    iget-object v9, p0, Lcom/android/internal/widget/DecorCaptionView;->mMoreRect:Landroid/graphics/Rect;

    invoke-direct {p0, v8, v9}, Lcom/android/internal/widget/DecorCaptionView;->updateClickTarget(Landroid/view/View;Landroid/graphics/Rect;)V

    goto/16 :goto_2

    .line 577
    :cond_8
    iget-boolean v8, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsDexEnabled:Z

    if-eqz v8, :cond_c

    .line 578
    iget-object v8, p0, Lcom/android/internal/widget/DecorCaptionView;->mBackRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v0, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 579
    iget-object v8, p0, Lcom/android/internal/widget/DecorCaptionView;->mBack:Landroid/view/View;

    iget-object v9, p0, Lcom/android/internal/widget/DecorCaptionView;->mBackRect:Landroid/graphics/Rect;

    invoke-direct {p0, v8, v9}, Lcom/android/internal/widget/DecorCaptionView;->updateClickTarget(Landroid/view/View;Landroid/graphics/Rect;)V

    goto/16 :goto_2

    .line 580
    :cond_9
    iget-object v8, p0, Lcom/android/internal/widget/DecorCaptionView;->mReduceRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v0, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 581
    iget-object v8, p0, Lcom/android/internal/widget/DecorCaptionView;->mReduce:Landroid/view/View;

    iget-object v9, p0, Lcom/android/internal/widget/DecorCaptionView;->mReduceRect:Landroid/graphics/Rect;

    invoke-direct {p0, v8, v9}, Lcom/android/internal/widget/DecorCaptionView;->updateClickTarget(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_2

    .line 582
    :cond_a
    iget-boolean v8, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsDecorCaptionWindow:Z

    if-eqz v8, :cond_b

    invoke-virtual {p0}, Lcom/android/internal/widget/DecorCaptionView;->isRotateButtonVisible()Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/android/internal/widget/DecorCaptionView;->mRotateRect:Landroid/graphics/Rect;

    .line 583
    invoke-virtual {v8, v0, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 584
    iget-object v8, p0, Lcom/android/internal/widget/DecorCaptionView;->mRotate:Landroid/view/View;

    iget-object v9, p0, Lcom/android/internal/widget/DecorCaptionView;->mRotateRect:Landroid/graphics/Rect;

    invoke-direct {p0, v8, v9}, Lcom/android/internal/widget/DecorCaptionView;->updateClickTarget(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_2

    .line 585
    :cond_b
    iget-object v8, p0, Lcom/android/internal/widget/DecorCaptionView;->mPinOnDex:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_e

    iget-object v8, p0, Lcom/android/internal/widget/DecorCaptionView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v8}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isWindowPinStateChangeable()Z

    move-result v8

    if-eqz v8, :cond_e

    iget-object v8, p0, Lcom/android/internal/widget/DecorCaptionView;->mPinRect:Landroid/graphics/Rect;

    .line 586
    invoke-virtual {v8, v0, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 587
    iget-object v8, p0, Lcom/android/internal/widget/DecorCaptionView;->mPinOnDex:Landroid/view/View;

    iget-object v9, p0, Lcom/android/internal/widget/DecorCaptionView;->mPinRect:Landroid/graphics/Rect;

    invoke-direct {p0, v8, v9}, Lcom/android/internal/widget/DecorCaptionView;->updateClickTarget(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_2

    .line 589
    :cond_c
    iget-object v8, p0, Lcom/android/internal/widget/DecorCaptionView;->mSplit:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_d

    iget-object v8, p0, Lcom/android/internal/widget/DecorCaptionView;->mSplitRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v0, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 590
    iget-object v8, p0, Lcom/android/internal/widget/DecorCaptionView;->mSplit:Landroid/view/View;

    iget-object v9, p0, Lcom/android/internal/widget/DecorCaptionView;->mSplitRect:Landroid/graphics/Rect;

    invoke-direct {p0, v8, v9}, Lcom/android/internal/widget/DecorCaptionView;->updateClickTarget(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_2

    .line 591
    :cond_d
    iget-object v8, p0, Lcom/android/internal/widget/DecorCaptionView;->mHeaderUnpin:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_e

    iget-object v8, p0, Lcom/android/internal/widget/DecorCaptionView;->mHeaderUnpinRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v0, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 592
    iget-object v8, p0, Lcom/android/internal/widget/DecorCaptionView;->mHeaderUnpin:Landroid/view/View;

    iget-object v9, p0, Lcom/android/internal/widget/DecorCaptionView;->mHeaderUnpinRect:Landroid/graphics/Rect;

    invoke-direct {p0, v8, v9}, Lcom/android/internal/widget/DecorCaptionView;->updateClickTarget(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 596
    :cond_e
    :goto_2
    iget-object v8, p0, Lcom/android/internal/widget/DecorCaptionView;->adjustButtonRect:Ljava/util/function/BiConsumer;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iget v10, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTargetInset:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 598
    invoke-virtual {p0}, Lcom/android/internal/widget/DecorCaptionView;->getCaptionHeight()I

    move-result v8

    if-gt v2, v8, :cond_11

    .line 599
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onInterceptTouchEvent: clickTarget="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " toolType="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iget-object v8, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    if-nez v8, :cond_10

    .line 603
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onInterceptTouchEvent: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 604
    sget-boolean v9, Lcom/samsung/android/rune/ViewRune;->COMMON_IS_PRODUCT_DEV:Z

    if-eqz v9, :cond_f

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " x = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", y = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    :cond_f
    const-string v9, ""

    :goto_3
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mOpacityRect= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/widget/DecorCaptionView;->mOpacityRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mMaximizeRect = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mCloseRect = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/widget/DecorCaptionView;->mCloseRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mMinimizeRect = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimizeRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 603
    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    :cond_10
    iget-boolean v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsDexEnabled:Z

    if-eqz v4, :cond_11

    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    if-nez v4, :cond_11

    .line 610
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v4

    const/4 v8, 0x3

    if-ne v4, v8, :cond_11

    .line 611
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    .line 634
    .end local v0    # "x":I
    .end local v2    # "y":I
    .end local v3    # "resizeArea":I
    .end local v5    # "toolType":I
    .end local v7    # "isFingerOrStylus":Z
    :cond_11
    :goto_4
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    if-eqz v0, :cond_12

    move v1, v6

    :cond_12
    return v1

    .line 552
    .restart local v0    # "x":I
    .restart local v2    # "y":I
    .restart local v3    # "resizeArea":I
    :cond_13
    :goto_5
    sget-boolean v5, Lcom/android/internal/policy/DecorView;->DEBUG_CAPTION:Z

    if-eqz v5, :cond_14

    .line 553
    const-string v5, "onInterceptTouchEvent: in resize area."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    :cond_14
    return v1

    .line 545
    .end local v0    # "x":I
    .end local v2    # "y":I
    .end local v3    # "resizeArea":I
    :cond_15
    :goto_6
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected whitelist onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 1177
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_d

    .line 1178
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 1179
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1182
    .local v0, "captionHeight":I
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 1183
    .local v1, "location":[I
    iget-boolean v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsDexEnabled:Z

    if-eqz v2, :cond_9

    .line 1184
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mBack:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 1185
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mBack:Landroid/view/View;

    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mBackRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1188
    :cond_0
    const/4 v2, 0x0

    .line 1189
    .local v2, "offsetX":I
    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mPrimaryContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3

    .line 1190
    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mPrimaryContainer:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1191
    aget v2, v1, v3

    .line 1192
    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimize:Landroid/view/View;

    iget-object v5, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimizeRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1193
    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimizeRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 1194
    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 1195
    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    iget-object v5, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1196
    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 1198
    :cond_1
    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 1200
    :goto_0
    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mReduce:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    .line 1201
    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mReduce:Landroid/view/View;

    iget-object v5, p0, Lcom/android/internal/widget/DecorCaptionView;->mReduceRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1202
    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mReduceRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_1

    .line 1204
    :cond_2
    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mReduceRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 1206
    :goto_1
    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    iget-object v5, p0, Lcom/android/internal/widget/DecorCaptionView;->mCloseRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1207
    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mCloseRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_2

    .line 1209
    :cond_3
    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimizeRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 1210
    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 1211
    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mReduceRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 1212
    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mCloseRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 1215
    :goto_2
    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mSecondaryContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_7

    .line 1216
    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mSecondaryContainer:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1217
    aget v2, v1, v3

    .line 1218
    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mRotate:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_4

    .line 1219
    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mRotate:Landroid/view/View;

    iget-object v5, p0, Lcom/android/internal/widget/DecorCaptionView;->mRotateRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1220
    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mRotateRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_3

    .line 1222
    :cond_4
    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mRotateRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 1224
    :goto_3
    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mOpacity:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_5

    .line 1225
    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mOpacity:Landroid/view/View;

    iget-object v5, p0, Lcom/android/internal/widget/DecorCaptionView;->mOpacityRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1226
    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mOpacityRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_4

    .line 1228
    :cond_5
    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mOpacityRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 1230
    :goto_4
    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mPinOnDex:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_6

    .line 1231
    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mPinOnDex:Landroid/view/View;

    iget-object v5, p0, Lcom/android/internal/widget/DecorCaptionView;->mPinRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1232
    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mPinRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_5

    .line 1234
    :cond_6
    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mPinRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_5

    .line 1237
    :cond_7
    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mRotateRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 1238
    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mOpacityRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 1239
    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mPinRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 1242
    :goto_5
    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mMore:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_8

    .line 1243
    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mMore:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 1244
    .local v4, "moreButtonContainer":Landroid/view/View;
    invoke-virtual {v4, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1245
    aget v2, v1, v3

    .line 1246
    iget-object v5, p0, Lcom/android/internal/widget/DecorCaptionView;->mMore:Landroid/view/View;

    iget-object v6, p0, Lcom/android/internal/widget/DecorCaptionView;->mMoreRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1247
    iget-object v5, p0, Lcom/android/internal/widget/DecorCaptionView;->mMoreRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 1248
    .end local v4    # "moreButtonContainer":Landroid/view/View;
    goto :goto_6

    .line 1249
    :cond_8
    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mMoreRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    .line 1252
    .end local v2    # "offsetX":I
    :goto_6
    goto/16 :goto_9

    .line 1253
    :cond_9
    iget-boolean v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mShowPrimarySet:Z

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mPrimaryContainer:Landroid/view/View;

    goto :goto_7

    :cond_a
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mSecondaryContainer:Landroid/view/View;

    .line 1254
    :goto_7
    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1255
    aget v2, v1, v3

    .line 1256
    .restart local v2    # "offsetX":I
    iget-boolean v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mShowPrimarySet:Z

    if-eqz v4, :cond_b

    .line 1257
    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimize:Landroid/view/View;

    iget-object v5, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimizeRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1258
    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimizeRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 1259
    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    iget-object v5, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1260
    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 1261
    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    iget-object v5, p0, Lcom/android/internal/widget/DecorCaptionView;->mCloseRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1262
    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mCloseRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 1263
    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mSplitRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    .line 1264
    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mHeaderUnpinRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    .line 1265
    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mOpacityRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_8

    .line 1267
    :cond_b
    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimizeRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 1268
    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 1269
    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mCloseRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 1270
    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mSplit:Landroid/view/View;

    iget-object v5, p0, Lcom/android/internal/widget/DecorCaptionView;->mSplitRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1271
    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mSplitRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 1272
    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mHeaderUnpin:Landroid/view/View;

    iget-object v5, p0, Lcom/android/internal/widget/DecorCaptionView;->mHeaderUnpinRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1273
    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mHeaderUnpinRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 1274
    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mOpacity:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_c

    .line 1275
    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mOpacity:Landroid/view/View;

    iget-object v5, p0, Lcom/android/internal/widget/DecorCaptionView;->mOpacityRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1276
    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mOpacityRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_8

    .line 1278
    :cond_c
    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mOpacityRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    .line 1281
    :goto_8
    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mMore:Landroid/view/View;

    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mMoreRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1283
    .end local v1    # "location":[I
    .end local v2    # "offsetX":I
    :goto_9
    goto :goto_a

    .line 1284
    .end local v0    # "captionHeight":I
    :cond_d
    const/4 v0, 0x0

    .line 1285
    .restart local v0    # "captionHeight":I
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    if-nez v1, :cond_f

    .line 1286
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimizeRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 1287
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 1288
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mCloseRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 1289
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mOpacityRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 1290
    iget-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsDexEnabled:Z

    if-eqz v1, :cond_e

    .line 1291
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mBackRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 1292
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mRotateRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 1293
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mReduceRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 1294
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mPinRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_a

    .line 1296
    :cond_e
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mSplitRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 1297
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mHeaderUnpinRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 1298
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mMoreRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 1303
    :cond_f
    :goto_a
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    if-eqz v1, :cond_11

    .line 1304
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1305
    .local v1, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-boolean v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mOverlayWithAppContent:Z

    if-eqz v2, :cond_10

    .line 1306
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v6, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    .line 1307
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v7, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    .line 1308
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v6, v7

    .line 1306
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    goto :goto_b

    .line 1310
    :cond_10
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, v0

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v6, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    .line 1311
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v6, v0

    iget-object v7, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    .line 1312
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v6, v7

    .line 1310
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 1316
    .end local v1    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_11
    :goto_b
    iget-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsDexEnabled:Z

    if-eqz v1, :cond_13

    .line 1317
    iget-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsDecorCaptionWindow:Z

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mRotate:Landroid/view/View;

    goto :goto_c

    :cond_12
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mBack:Landroid/view/View;

    .local v1, "first":Landroid/view/View;
    :goto_c
    goto :goto_d

    .line 1319
    .end local v1    # "first":Landroid/view/View;
    :cond_13
    iget-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mShowPrimarySet:Z

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimize:Landroid/view/View;

    goto :goto_d

    :cond_14
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mHeaderUnpin:Landroid/view/View;

    .line 1347
    .end local v0    # "captionHeight":I
    .restart local v1    # "first":Landroid/view/View;
    :goto_d
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->notifyCaptionHeightChanged()V

    .line 1350
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    .line 1352
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    .line 1354
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 1350
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/internal/policy/PhoneWindow;->notifyRestrictedCaptionAreaCallback(IIII)V

    .line 1355
    return-void
.end method

.method public whitelist onLongPress(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 1980
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1981
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsLongPressed:Z

    .line 1982
    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mTooltipAnchor:Landroid/view/View;

    .line 1983
    invoke-virtual {v0}, Landroid/view/View;->performLongClick()Z

    .line 1984
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mHideTootipRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1985
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mHideTootipRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTooltipHideTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1987
    :cond_0
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 1086
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v6, 0x1

    const/16 v7, 0x8

    const/4 v8, 0x0

    if-eq v0, v7, :cond_8

    .line 1087
    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsDexEnabled:Z

    if-eqz v0, :cond_7

    .line 1089
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1090
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v0, v8, v8, v8, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginsRelative(IIII)V

    .line 1091
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1092
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mBack:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1093
    .end local v0    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .local v9, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v9, v8, v8, v8, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginsRelative(IIII)V

    .line 1094
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mBack:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1098
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->isFullSize()Z

    move-result v10

    .line 1099
    .local v10, "isFullSize":Z
    if-eqz v10, :cond_0

    .line 1101
    invoke-virtual {p0}, Lcom/android/internal/widget/DecorCaptionView;->updateButtonVisibility()V

    .line 1103
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    check-cast v0, Lcom/samsung/android/widget/SemCaptionButton;

    iget v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mExtraPaddingHorizontal:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemCaptionButton;->setExtraPaddingEnd(I)V

    .line 1104
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMore:Landroid/view/View;

    check-cast v0, Lcom/samsung/android/widget/SemCaptionButton;

    invoke-virtual {v0, v8}, Lcom/samsung/android/widget/SemCaptionButton;->setExtraPaddingEnd(I)V

    .line 1110
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/DecorCaptionView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1113
    const/4 v0, 0x0

    .line 1114
    .local v0, "hasOverlappedButton":Z
    if-eqz v10, :cond_4

    .line 1116
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mBack:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mPrimaryContainer:Landroid/view/View;

    .line 1117
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mSecondaryContainer:Landroid/view/View;

    .line 1118
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    if-gt v1, v2, :cond_1

    move v1, v6

    goto :goto_0

    :cond_1
    move v1, v8

    :goto_0
    move v0, v1

    if-eqz v1, :cond_3

    .line 1119
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mBack:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mPrimaryContainer:Landroid/view/View;

    .line 1120
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    if-le v1, v2, :cond_2

    .line 1121
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    check-cast v1, Lcom/samsung/android/widget/SemCaptionButton;

    invoke-virtual {v1, v8}, Lcom/samsung/android/widget/SemCaptionButton;->setExtraPaddingEnd(I)V

    .line 1122
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mSecondaryContainer:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1124
    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mPrimaryContainer:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1125
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mSecondaryContainer:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1127
    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mMore:Landroid/view/View;

    check-cast v1, Lcom/samsung/android/widget/SemCaptionButton;

    iget v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mExtraPaddingHorizontal:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/widget/SemCaptionButton;->setExtraPaddingEnd(I)V

    .line 1128
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mMore:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1146
    :cond_3
    move v7, v0

    goto :goto_2

    .line 1114
    :cond_4
    move v7, v0

    .line 1146
    .end local v0    # "hasOverlappedButton":Z
    .local v7, "hasOverlappedButton":Z
    :goto_2
    if-nez v7, :cond_5

    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->adjustButtonsMarginForCutout()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1147
    :cond_5
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/DecorCaptionView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1149
    .end local v7    # "hasOverlappedButton":Z
    .end local v9    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v10    # "isFullSize":Z
    :cond_6
    goto :goto_3

    .line 1150
    :cond_7
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/DecorCaptionView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1152
    :goto_3
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    move v7, v0

    .local v0, "captionHeight":I
    goto :goto_4

    .line 1154
    .end local v0    # "captionHeight":I
    :cond_8
    const/4 v0, 0x0

    move v7, v0

    .line 1156
    .local v7, "captionHeight":I
    :goto_4
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    if-eqz v1, :cond_b

    .line 1157
    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOverlayWithAppContent:Z

    if-eqz v0, :cond_9

    .line 1158
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/DecorCaptionView;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto :goto_5

    .line 1160
    :cond_9
    const/4 v3, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/DecorCaptionView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1163
    :goto_5
    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsDexEnabled:Z

    if-eqz v0, :cond_b

    .line 1164
    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOverlayWithAppContent:Z

    if-nez v0, :cond_a

    if-eqz v7, :cond_a

    goto :goto_6

    :cond_a
    move v6, v8

    :goto_6
    invoke-virtual {p0, v6}, Lcom/android/internal/widget/DecorCaptionView;->setLastMeasuredWithCaptionHeight(Z)V

    .line 1168
    :cond_b
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1169
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1168
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/DecorCaptionView;->setMeasuredDimension(II)V

    .line 1170
    return-void
.end method

.method public whitelist onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .line 2477
    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOpacityChangeModeEnabled:Z

    if-eqz v0, :cond_0

    .line 2478
    iput p2, p0, Lcom/android/internal/widget/DecorCaptionView;->mOpacityProgress:I

    .line 2479
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    int-to-float v1, p2

    const v2, 0x3c23d70a    # 0.01f

    mul-float/2addr v1, v2

    const v2, 0x3ecccccd    # 0.4f

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiSplitActions;->setWindowOpacity(F)V

    .line 2481
    :cond_0
    return-void
.end method

.method protected whitelist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 2946
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/internal/widget/DecorCaptionView$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2948
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2949
    return-void

    .line 2953
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/internal/widget/DecorCaptionView$SavedState;

    .line 2954
    .local v0, "myState":Lcom/android/internal/widget/DecorCaptionView$SavedState;
    invoke-virtual {v0}, Lcom/android/internal/widget/DecorCaptionView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2955
    iget-boolean v1, v0, Lcom/android/internal/widget/DecorCaptionView$SavedState;->showPrimarySet:Z

    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mShowPrimarySet:Z

    .line 2956
    return-void
.end method

.method public blacklist onRootViewScrollYChanged(I)V
    .locals 2
    .param p1, "scrollY"    # I

    .line 2000
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2001
    iput p1, p0, Lcom/android/internal/widget/DecorCaptionView;->mRootScrollY:I

    .line 2002
    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 2004
    :cond_0
    return-void
.end method

.method protected whitelist onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 2939
    new-instance v0, Lcom/android/internal/widget/DecorCaptionView$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/DecorCaptionView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2940
    .local v0, "myState":Lcom/android/internal/widget/DecorCaptionView$SavedState;
    iget-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mShowPrimarySet:Z

    iput-boolean v1, v0, Lcom/android/internal/widget/DecorCaptionView$SavedState;->showPrimarySet:Z

    .line 2941
    return-object v0
.end method

.method public whitelist onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .line 1975
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 1956
    return-void
.end method

.method public whitelist onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 1963
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 2485
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mSeekBarContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mDisableOpacityChangeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2486
    return-void
.end method

.method public whitelist onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 2490
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mSeekBarContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mDisableOpacityChangeRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2492
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    if-eqz v0, :cond_0

    .line 2493
    nop

    .line 2494
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    div-int/lit8 v0, v0, 0x3c

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 2493
    const-string v1, "2005"

    invoke-static {v1, v0}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 2497
    :cond_0
    return-void
.end method

.method public whitelist onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "v"    # Landroid/view/View;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .line 700
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 701
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isHeaderTypeBar()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 702
    return v1

    .line 706
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsDexEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 711
    return v1

    .line 715
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->hasEdgeFlag()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 720
    return v1

    .line 721
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsLongPressed:Z

    if-eqz v0, :cond_3

    .line 725
    return v1

    .line 734
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 735
    .local v0, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 736
    .local v2, "y":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-ne v3, v4, :cond_4

    move v3, v5

    goto :goto_0

    :cond_4
    move v3, v1

    .line 737
    .local v3, "fromMouse":Z
    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v4

    if-ne v4, v5, :cond_5

    move v4, v5

    goto :goto_1

    :cond_5
    move v4, v1

    .line 738
    .local v4, "primaryButton":Z
    :goto_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    .line 739
    .local v6, "actionMasked":I
    packed-switch v6, :pswitch_data_0

    goto/16 :goto_4

    .line 769
    :pswitch_0
    iget-boolean v7, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsDexEnabled:Z

    if-nez v7, :cond_8

    iget-object v7, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    if-nez v7, :cond_8

    .line 770
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v7

    .line 771
    .local v7, "timeOut":I
    const/16 v8, 0x1f4

    if-ne v7, v8, :cond_6

    .line 772
    const/16 v8, 0x12c

    goto :goto_2

    :cond_6
    move v8, v7

    :goto_2
    move v7, v8

    .line 773
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    int-to-long v10, v7

    cmp-long v8, v8, v10

    if-ltz v8, :cond_8

    .line 774
    iget-boolean v8, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsImeShowingWhenTouched:Z

    if-nez v8, :cond_7

    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->handleNaturalSwitching()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 775
    iput-boolean v5, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsNaturalSwitching:Z

    goto :goto_3

    .line 777
    :cond_7
    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsNaturalSwitching:Z

    .line 783
    .end local v7    # "timeOut":I
    :cond_8
    :goto_3
    if-nez v3, :cond_9

    invoke-direct {p0, v0, v2}, Lcom/android/internal/widget/DecorCaptionView;->passedSlop(II)Z

    move-result v7

    if-eqz v7, :cond_d

    :cond_9
    iget-boolean v7, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsNaturalSwitching:Z

    if-nez v7, :cond_d

    .line 785
    iget-boolean v7, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsDexEnabled:Z

    if-eqz v7, :cond_a

    .line 786
    iput-boolean v5, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsMovingTaskEnabled:Z

    .line 787
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getFlags()I

    move-result v7

    const/high16 v8, 0x10000000

    and-int/2addr v7, v8

    if-eqz v7, :cond_a

    if-nez v4, :cond_a

    .line 790
    goto/16 :goto_4

    .line 795
    :cond_a
    iget-boolean v7, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragging:Z

    if-nez v7, :cond_15

    iget-boolean v7, p0, Lcom/android/internal/widget/DecorCaptionView;->mCheckForDragging:Z

    if-eqz v7, :cond_15

    .line 796
    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mCheckForDragging:Z

    .line 797
    iput-boolean v5, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragging:Z

    .line 799
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v8

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/widget/DecorCaptionView;->startMovingTask(FF)Z

    move-result v7

    .line 801
    .local v7, "movingTask":Z
    iget-boolean v8, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsDexEnabled:Z

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/android/internal/widget/DecorCaptionView;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v8}, Lcom/android/internal/policy/DecorView;->isFullscreenMode()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 803
    const/4 v7, 0x0

    .line 806
    :cond_b
    if-eqz v7, :cond_c

    .line 807
    iget-object v8, p0, Lcom/android/internal/widget/DecorCaptionView;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v8, v5}, Lcom/android/internal/policy/DecorView;->notifyMovingTask(Z)V

    .line 809
    .end local v7    # "movingTask":Z
    :cond_c
    goto :goto_4

    .line 810
    :cond_d
    iget-boolean v7, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragging:Z

    if-nez v7, :cond_15

    iget-boolean v7, p0, Lcom/android/internal/widget/DecorCaptionView;->mCheckForDragging:Z

    if-eqz v7, :cond_15

    if-nez v3, :cond_e

    invoke-direct {p0, v0, v2}, Lcom/android/internal/widget/DecorCaptionView;->passedSlop(II)Z

    move-result v7

    if-eqz v7, :cond_15

    :cond_e
    iget-boolean v7, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsNaturalSwitching:Z

    if-nez v7, :cond_15

    .line 811
    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mCheckForDragging:Z

    .line 812
    iput-boolean v5, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragging:Z

    .line 813
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/widget/DecorCaptionView;->startMovingTask(FF)Z

    goto :goto_4

    .line 824
    :pswitch_1
    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsNaturalSwitching:Z

    .line 825
    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsImeShowingWhenTouched:Z

    .line 829
    iget-boolean v7, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsDexEnabled:Z

    if-eqz v7, :cond_f

    iget-object v7, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    if-nez v7, :cond_f

    if-ne v6, v5, :cond_f

    .line 830
    iget-object v7, p0, Lcom/android/internal/widget/DecorCaptionView;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v7, v1}, Lcom/android/internal/policy/DecorView;->notifyMovingTask(Z)V

    .line 833
    :cond_f
    iget-boolean v7, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragging:Z

    if-nez v7, :cond_10

    .line 834
    goto :goto_4

    .line 837
    :cond_10
    if-ne v6, v5, :cond_11

    .line 841
    invoke-virtual {p0}, Lcom/android/internal/widget/DecorCaptionView;->finishMovingTask()V

    .line 843
    :cond_11
    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragging:Z

    .line 844
    iget-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mCheckForDragging:Z

    xor-int/2addr v1, v5

    return v1

    .line 741
    :pswitch_2
    iget-boolean v7, p0, Lcom/android/internal/widget/DecorCaptionView;->mShow:Z

    if-nez v7, :cond_12

    .line 743
    return v1

    .line 748
    :cond_12
    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->isImeShowingWhenTouched()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsImeShowingWhenTouched:Z

    .line 753
    iget-boolean v7, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsDexEnabled:Z

    if-eqz v7, :cond_13

    .line 754
    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsMovingTaskEnabled:Z

    .line 760
    :cond_13
    if-eqz v3, :cond_14

    if-eqz v4, :cond_15

    .line 761
    :cond_14
    iput-boolean v5, p0, Lcom/android/internal/widget/DecorCaptionView;->mCheckForDragging:Z

    .line 762
    iput v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mTouchDownX:I

    .line 763
    iput v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mTouchDownY:I

    .line 846
    :cond_15
    :goto_4
    iget-boolean v7, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragging:Z

    if-nez v7, :cond_16

    iget-boolean v7, p0, Lcom/android/internal/widget/DecorCaptionView;->mCheckForDragging:Z

    if-eqz v7, :cond_17

    :cond_16
    move v1, v5

    :cond_17
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 641
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/widget/DecorCaptionView;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 644
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 645
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    const-string v3, "DecorCaptionView"

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 672
    :pswitch_1
    invoke-direct {p0, v4}, Lcom/android/internal/widget/DecorCaptionView;->setButtonContainerPressed(Landroid/view/View;)V

    .line 673
    invoke-direct {p0, v4, v4}, Lcom/android/internal/widget/DecorCaptionView;->updateClickTarget(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 674
    const-string v0, "onTouchEvent: ACTION_CANCEL, button-interaction failed"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 658
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsLongPressed:Z

    const-string v1, "mClickTarget="

    if-eqz v0, :cond_0

    .line 659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", long pressed, skip button-interaction."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 660
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsDexEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTargetRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    .line 661
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 664
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", event position is out of target bounds."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 666
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/DecorCaptionView;->clickButton(Landroid/view/View;)V

    .line 668
    :goto_0
    invoke-direct {p0, v4}, Lcom/android/internal/widget/DecorCaptionView;->setButtonContainerPressed(Landroid/view/View;)V

    .line 669
    invoke-direct {p0, v4, v4}, Lcom/android/internal/widget/DecorCaptionView;->updateClickTarget(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 670
    goto :goto_1

    .line 649
    :pswitch_3
    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsDexEnabled:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    .line 650
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    and-int/2addr v0, v2

    if-nez v0, :cond_2

    .line 651
    invoke-direct {p0, v4, v4}, Lcom/android/internal/widget/DecorCaptionView;->updateClickTarget(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 652
    return v1

    .line 655
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/internal/widget/DecorCaptionView;->setButtonContainerPressed(Landroid/view/View;)V

    .line 656
    nop

    .line 677
    :goto_1
    return v2

    .line 681
    :cond_3
    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mShow:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOverlayWithAppContent:Z

    if-eqz v0, :cond_4

    .line 682
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->pointInView(FFF)Z

    move-result v0

    return v0

    .line 694
    :cond_4
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public blacklist onWindowPinStateChanged(Z)V
    .locals 2
    .param p1, "pinned"    # Z

    .line 1911
    if-eqz p1, :cond_0

    .line 1912
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mPinOnDex:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mUnpinOnDexDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1913
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mDCResources:Lcom/samsung/android/util/DecorCaptionResources;

    const v1, 0x1040ccd

    invoke-virtual {v0, v1}, Lcom/samsung/android/util/DecorCaptionResources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1915
    .local v0, "description":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mPinOnDex:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1916
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mPinOnDex:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    .line 1917
    .end local v0    # "description":Ljava/lang/String;
    goto :goto_0

    .line 1918
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mPinOnDex:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mPinOnDexDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1919
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mDCResources:Lcom/samsung/android/util/DecorCaptionResources;

    const v1, 0x1040ccc

    invoke-virtual {v0, v1}, Lcom/samsung/android/util/DecorCaptionResources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1921
    .restart local v0    # "description":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mPinOnDex:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1922
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mPinOnDex:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    .line 1924
    .end local v0    # "description":Ljava/lang/String;
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->updateWindowPinButtonEnabled()V

    .line 1925
    return-void
.end method

.method public whitelist removeAllViews()V
    .locals 2

    .line 2076
    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2077
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DecorCaptionView.removeAllViews. Callers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DecorCaptionView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2078
    return-void
.end method

.method public blacklist removeContentView()V
    .locals 1

    .line 1858
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1859
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/DecorCaptionView;->removeView(Landroid/view/View;)V

    .line 1860
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    .line 1862
    :cond_0
    return-void
.end method

.method public blacklist restoreOutlineProvider()V
    .locals 2

    .line 1360
    invoke-virtual {p0}, Lcom/android/internal/widget/DecorCaptionView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->isPopOver()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1361
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mDecor:Lcom/android/internal/policy/DecorView;

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mSavedOutlineProvider:Landroid/view/ViewOutlineProvider;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/DecorView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 1363
    :cond_0
    return-void
.end method

.method public blacklist setDecorCaptionShade()V
    .locals 7

    .line 2089
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    if-nez v0, :cond_0

    .line 2090
    return-void

    .line 2098
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/DecorCaptionView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2099
    .local v0, "res":Landroid/content/res/Resources;
    iget-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsDexEnabled:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mContext:Landroid/content/Context;

    .line 2100
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "wallpapertheme_state"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    .line 2102
    iget-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsNightMode:Z

    if-eqz v1, :cond_1

    .line 2103
    const v1, 0x1060307

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mIconTintList:Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 2106
    :cond_1
    const v1, 0x1060308

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mIconTintList:Landroid/content/res/ColorStateList;

    .line 2110
    :goto_0
    const v1, 0x1060314

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 2112
    .local v1, "progressTintList":Landroid/content/res/ColorStateList;
    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mOpacitySeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4, v1}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 2113
    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mOpacitySeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4, v1}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 2114
    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mOpacitySeekBar:Landroid/widget/SeekBar;

    const v5, 0x1060312

    invoke-virtual {v0, v5, v2}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 2116
    .end local v1    # "progressTintList":Landroid/content/res/ColorStateList;
    goto :goto_2

    .line 2117
    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsNightMode:Z

    if-eqz v1, :cond_3

    .line 2118
    const v1, 0x1060303

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mIconTintList:Landroid/content/res/ColorStateList;

    goto :goto_1

    .line 2121
    :cond_3
    const v1, 0x1060304

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mIconTintList:Landroid/content/res/ColorStateList;

    .line 2125
    :goto_1
    iget-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsDexEnabled:Z

    if-nez v1, :cond_4

    .line 2126
    const v1, 0x1060313

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 2128
    .restart local v1    # "progressTintList":Landroid/content/res/ColorStateList;
    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mOpacitySeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4, v1}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 2129
    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mOpacitySeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4, v1}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 2130
    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mOpacitySeekBar:Landroid/widget/SeekBar;

    const v5, 0x1060311

    invoke-virtual {v0, v5, v2}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 2141
    .end local v1    # "progressTintList":Landroid/content/res/ColorStateList;
    :cond_4
    :goto_2
    iget-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsDexEnabled:Z

    if-eqz v1, :cond_6

    .line 2142
    invoke-virtual {p0}, Lcom/android/internal/widget/DecorCaptionView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v4, Lcom/android/internal/R$styleable;->DecorCaptionView:[I

    .line 2143
    iget-boolean v5, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsNightMode:Z

    if-eqz v5, :cond_5

    .line 2144
    const v5, 0x103049d

    goto :goto_3

    .line 2145
    :cond_5
    const v5, 0x103049e

    .line 2142
    :goto_3
    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .local v1, "a":Landroid/content/res/TypedArray;
    goto :goto_5

    .line 2147
    .end local v1    # "a":Landroid/content/res/TypedArray;
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/widget/DecorCaptionView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v4, Lcom/android/internal/R$styleable;->DecorCaptionView:[I

    .line 2148
    iget-boolean v5, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsNightMode:Z

    if-eqz v5, :cond_7

    .line 2149
    const v5, 0x103049c

    goto :goto_4

    .line 2150
    :cond_7
    const v5, 0x103049f

    .line 2147
    :goto_4
    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 2153
    .restart local v1    # "a":Landroid/content/res/TypedArray;
    :goto_5
    const/16 v2, 0xe

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaptionBackgroundColor:I

    .line 2155
    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2157
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    if-nez v2, :cond_8

    .line 2158
    const v2, 0x1020263

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    .line 2160
    :cond_8
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    check-cast v2, Landroid/widget/ImageButton;

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-direct {p0, v2, v4}, Lcom/android/internal/widget/DecorCaptionView;->setIconDrawable(Landroid/widget/ImageButton;I)V

    .line 2162
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    if-nez v2, :cond_9

    .line 2163
    const v2, 0x10203ec

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    .line 2165
    :cond_9
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    check-cast v2, Landroid/widget/ImageButton;

    const/4 v4, 0x3

    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-direct {p0, v2, v4}, Lcom/android/internal/widget/DecorCaptionView;->setIconDrawable(Landroid/widget/ImageButton;I)V

    .line 2167
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimize:Landroid/view/View;

    if-nez v2, :cond_a

    .line 2168
    const v2, 0x1020408

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimize:Landroid/view/View;

    .line 2170
    :cond_a
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimize:Landroid/view/View;

    check-cast v2, Landroid/widget/ImageButton;

    const/4 v4, 0x4

    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-direct {p0, v2, v4}, Lcom/android/internal/widget/DecorCaptionView;->setIconDrawable(Landroid/widget/ImageButton;I)V

    .line 2172
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mOpacity:Landroid/view/View;

    if-nez v2, :cond_b

    .line 2173
    const v2, 0x102046d

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mOpacity:Landroid/view/View;

    .line 2175
    :cond_b
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mOpacity:Landroid/view/View;

    check-cast v2, Landroid/widget/ImageButton;

    const/4 v4, 0x7

    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-direct {p0, v2, v4}, Lcom/android/internal/widget/DecorCaptionView;->setIconDrawable(Landroid/widget/ImageButton;I)V

    .line 2178
    iget-boolean v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsDexEnabled:Z

    const v4, 0x1020419

    const/4 v5, 0x6

    if-eqz v2, :cond_12

    .line 2179
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mBack:Landroid/view/View;

    if-nez v2, :cond_c

    .line 2180
    const v2, 0x1020219

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mBack:Landroid/view/View;

    .line 2182
    :cond_c
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mBack:Landroid/view/View;

    check-cast v2, Landroid/widget/ImageButton;

    invoke-virtual {v1, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    invoke-direct {p0, v2, v6}, Lcom/android/internal/widget/DecorCaptionView;->setIconDrawable(Landroid/widget/ImageButton;I)V

    .line 2184
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mRotate:Landroid/view/View;

    if-nez v2, :cond_d

    .line 2185
    const v2, 0x1020501

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mRotate:Landroid/view/View;

    .line 2187
    :cond_d
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mRotate:Landroid/view/View;

    check-cast v2, Landroid/widget/ImageButton;

    const/16 v6, 0xa

    invoke-virtual {v1, v6, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    invoke-direct {p0, v2, v6}, Lcom/android/internal/widget/DecorCaptionView;->setIconDrawable(Landroid/widget/ImageButton;I)V

    .line 2189
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mReduce:Landroid/view/View;

    if-nez v2, :cond_e

    .line 2190
    const v2, 0x10204d2

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mReduce:Landroid/view/View;

    .line 2192
    :cond_e
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mReduce:Landroid/view/View;

    check-cast v2, Landroid/widget/ImageButton;

    const/16 v6, 0x9

    invoke-virtual {v1, v6, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    invoke-direct {p0, v2, v6}, Lcom/android/internal/widget/DecorCaptionView;->setIconDrawable(Landroid/widget/ImageButton;I)V

    .line 2194
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mPinOnDex:Landroid/view/View;

    if-nez v2, :cond_f

    .line 2195
    const v2, 0x10204a3

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mPinOnDex:Landroid/view/View;

    .line 2197
    :cond_f
    const/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/internal/widget/DecorCaptionView;->getIconDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mPinOnDexDrawable:Landroid/graphics/drawable/Drawable;

    .line 2199
    iget-object v6, p0, Lcom/android/internal/widget/DecorCaptionView;->mIconTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v6}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 2200
    const/16 v2, 0xd

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/internal/widget/DecorCaptionView;->getIconDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mUnpinOnDexDrawable:Landroid/graphics/drawable/Drawable;

    .line 2202
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mPinOnDexDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/android/internal/widget/DecorCaptionView;->mIconTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v6}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 2204
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiSplitActions;->initWindowPinState()V

    .line 2206
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isPinned()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2207
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mPinOnDex:Landroid/view/View;

    check-cast v2, Landroid/widget/ImageButton;

    iget-object v6, p0, Lcom/android/internal/widget/DecorCaptionView;->mUnpinOnDexDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    .line 2209
    :cond_10
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mPinOnDex:Landroid/view/View;

    check-cast v2, Landroid/widget/ImageButton;

    iget-object v6, p0, Lcom/android/internal/widget/DecorCaptionView;->mPinOnDexDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2212
    :goto_6
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mMore:Landroid/view/View;

    if-nez v2, :cond_11

    .line 2213
    invoke-virtual {p0, v4}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mMore:Landroid/view/View;

    .line 2215
    :cond_11
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mMore:Landroid/view/View;

    check-cast v2, Landroid/widget/ImageButton;

    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-direct {p0, v2, v4}, Lcom/android/internal/widget/DecorCaptionView;->setIconDrawable(Landroid/widget/ImageButton;I)V

    goto/16 :goto_8

    .line 2219
    :cond_12
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mSplit:Landroid/view/View;

    if-nez v2, :cond_13

    .line 2220
    const v2, 0x10205d9

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mSplit:Landroid/view/View;

    .line 2222
    :cond_13
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isHorizontalSplitState()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 2223
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mSplit:Landroid/view/View;

    check-cast v2, Landroid/widget/ImageButton;

    const/16 v6, 0xb

    invoke-virtual {v1, v6, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    invoke-direct {p0, v2, v6}, Lcom/android/internal/widget/DecorCaptionView;->setIconDrawable(Landroid/widget/ImageButton;I)V

    goto :goto_7

    .line 2226
    :cond_14
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mSplit:Landroid/view/View;

    check-cast v2, Landroid/widget/ImageButton;

    const/16 v6, 0xc

    invoke-virtual {v1, v6, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    invoke-direct {p0, v2, v6}, Lcom/android/internal/widget/DecorCaptionView;->setIconDrawable(Landroid/widget/ImageButton;I)V

    .line 2229
    :goto_7
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mHeaderUnpin:Landroid/view/View;

    if-nez v2, :cond_15

    .line 2230
    const v2, 0x1020685

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mHeaderUnpin:Landroid/view/View;

    .line 2232
    :cond_15
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mHeaderUnpin:Landroid/view/View;

    check-cast v2, Landroid/widget/ImageButton;

    const/4 v6, 0x2

    invoke-virtual {v1, v6, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    invoke-direct {p0, v2, v6}, Lcom/android/internal/widget/DecorCaptionView;->setIconDrawable(Landroid/widget/ImageButton;I)V

    .line 2234
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mMore:Landroid/view/View;

    if-nez v2, :cond_16

    .line 2235
    invoke-virtual {p0, v4}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mMore:Landroid/view/View;

    .line 2237
    :cond_16
    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/internal/widget/DecorCaptionView;->getIconDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mMenuDrawable:Landroid/graphics/drawable/Drawable;

    .line 2239
    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mIconTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 2240
    const/4 v2, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/internal/widget/DecorCaptionView;->getIconDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mMenuCloseDrawable:Landroid/graphics/drawable/Drawable;

    .line 2242
    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mIconTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 2243
    iget-boolean v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mShowPrimarySet:Z

    if-eqz v2, :cond_17

    .line 2244
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mMore:Landroid/view/View;

    check-cast v2, Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mMenuDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_8

    .line 2246
    :cond_17
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mMore:Landroid/view/View;

    check-cast v2, Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mMenuCloseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2249
    :goto_8
    const/16 v2, 0xf

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mRippleColorList:Landroid/content/res/ColorStateList;

    .line 2250
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 2251
    return-void
.end method

.method public blacklist setLastMeasuredWithCaptionHeight(Z)V
    .locals 0
    .param p1, "height"    # Z

    .line 2023
    iput-boolean p1, p0, Lcom/android/internal/widget/DecorCaptionView;->mLastMeasuredWithCaptionHeight:Z

    .line 2024
    return-void
.end method

.method public blacklist setOverlayWithAppContent(Z)V
    .locals 1
    .param p1, "isOverlayWithAppContent"    # Z

    .line 2320
    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOverlayWithAppContent:Z

    if-eq v0, p1, :cond_0

    .line 2321
    iput-boolean p1, p0, Lcom/android/internal/widget/DecorCaptionView;->mOverlayWithAppContent:Z

    .line 2323
    :cond_0
    return-void
.end method

.method public blacklist setPhoneWindow(Lcom/android/internal/policy/PhoneWindow;Z)V
    .locals 5
    .param p1, "owner"    # Lcom/android/internal/policy/PhoneWindow;
    .param p2, "show"    # Z

    .line 408
    iput-object p1, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    .line 410
    invoke-virtual {p1}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/DecorView;

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mDecor:Lcom/android/internal/policy/DecorView;

    .line 412
    iput-boolean p2, p0, Lcom/android/internal/widget/DecorCaptionView;->mShow:Z

    .line 413
    invoke-virtual {p1}, Lcom/android/internal/policy/PhoneWindow;->isOverlayWithDecorCaptionEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOverlayWithAppContent:Z

    .line 414
    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->updateCaptionVisibility()V

    .line 417
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mSavedOutlineProvider:Landroid/view/ViewOutlineProvider;

    .line 418
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getFreeformOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/DecorView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 420
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getMultiSplitActions()Lcom/samsung/android/multiwindow/MultiSplitActions;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    .line 423
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getDecorCaptionResources()Lcom/samsung/android/util/DecorCaptionResources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mDCResources:Lcom/samsung/android/util/DecorCaptionResources;

    .line 424
    invoke-virtual {v0}, Lcom/samsung/android/util/DecorCaptionResources;->isNightModeEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsNightMode:Z

    .line 426
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mDCResources:Lcom/samsung/android/util/DecorCaptionResources;

    const v1, 0x105039f

    invoke-virtual {v0, v1}, Lcom/samsung/android/util/DecorCaptionResources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragSlop:I

    .line 427
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mDCResources:Lcom/samsung/android/util/DecorCaptionResources;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mContext:Landroid/content/Context;

    .line 428
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 427
    const v3, 0x104013e

    invoke-virtual {v0, v3, v2}, Lcom/samsung/android/util/DecorCaptionResources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/DecorCaptionView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 431
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mDCResources:Lcom/samsung/android/util/DecorCaptionResources;

    const v2, 0x105039e

    invoke-virtual {v0, v2}, Lcom/samsung/android/util/DecorCaptionResources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTargetInset:I

    .line 432
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mDCResources:Lcom/samsung/android/util/DecorCaptionResources;

    iget-boolean v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsDexEnabled:Z

    if-eqz v2, :cond_0

    .line 433
    const v2, 0x10503a8

    goto :goto_0

    :cond_0
    const v2, 0x10503a7

    .line 432
    :goto_0
    invoke-virtual {v0, v2}, Lcom/samsung/android/util/DecorCaptionResources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mRippleSize:I

    .line 434
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mDCResources:Lcom/samsung/android/util/DecorCaptionResources;

    const v2, 0x10503a3

    invoke-virtual {v0, v2}, Lcom/samsung/android/util/DecorCaptionResources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMoreToggleTransX:I

    .line 437
    const v0, 0x10202ac

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mButtonContainer:Landroid/view/View;

    .line 438
    const v0, 0x10202ae

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mPrimaryContainer:Landroid/view/View;

    .line 439
    const v0, 0x10202af

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mSecondaryContainer:Landroid/view/View;

    .line 441
    const v0, 0x10203ec

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    .line 442
    instance-of v2, v0, Lcom/samsung/android/widget/SemCaptionButton;

    if-eqz v2, :cond_1

    .line 443
    check-cast v0, Lcom/samsung/android/widget/SemCaptionButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/widget/SemCaptionButton;->setOnAccessibilityActionClickListener(Lcom/samsung/android/widget/SemCaptionButton$OnAccessibilityActionClickListener;)V

    .line 445
    :cond_1
    const v0, 0x1020263

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    .line 446
    instance-of v2, v0, Lcom/samsung/android/widget/SemCaptionButton;

    if-eqz v2, :cond_2

    .line 447
    check-cast v0, Lcom/samsung/android/widget/SemCaptionButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/widget/SemCaptionButton;->setOnAccessibilityActionClickListener(Lcom/samsung/android/widget/SemCaptionButton$OnAccessibilityActionClickListener;)V

    .line 449
    :cond_2
    const v0, 0x1020408

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimize:Landroid/view/View;

    .line 450
    instance-of v2, v0, Lcom/samsung/android/widget/SemCaptionButton;

    if-eqz v2, :cond_3

    .line 451
    check-cast v0, Lcom/samsung/android/widget/SemCaptionButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/widget/SemCaptionButton;->setOnAccessibilityActionClickListener(Lcom/samsung/android/widget/SemCaptionButton$OnAccessibilityActionClickListener;)V

    .line 453
    :cond_3
    const v0, 0x102046d

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOpacity:Landroid/view/View;

    .line 454
    instance-of v2, v0, Lcom/samsung/android/widget/SemCaptionButton;

    if-eqz v2, :cond_4

    .line 455
    check-cast v0, Lcom/samsung/android/widget/SemCaptionButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/widget/SemCaptionButton;->setOnAccessibilityActionClickListener(Lcom/samsung/android/widget/SemCaptionButton$OnAccessibilityActionClickListener;)V

    .line 458
    :cond_4
    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsDexEnabled:Z

    const v2, 0x1020419

    if-eqz v0, :cond_e

    .line 459
    const v0, 0x1020219

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mBack:Landroid/view/View;

    .line 460
    instance-of v3, v0, Lcom/samsung/android/widget/SemCaptionButton;

    if-eqz v3, :cond_5

    .line 461
    check-cast v0, Lcom/samsung/android/widget/SemCaptionButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/widget/SemCaptionButton;->setOnAccessibilityActionClickListener(Lcom/samsung/android/widget/SemCaptionButton$OnAccessibilityActionClickListener;)V

    .line 463
    :cond_5
    const v0, 0x1020501

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mRotate:Landroid/view/View;

    .line 464
    instance-of v3, v0, Lcom/samsung/android/widget/SemCaptionButton;

    if-eqz v3, :cond_6

    .line 465
    check-cast v0, Lcom/samsung/android/widget/SemCaptionButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/widget/SemCaptionButton;->setOnAccessibilityActionClickListener(Lcom/samsung/android/widget/SemCaptionButton$OnAccessibilityActionClickListener;)V

    .line 467
    :cond_6
    const v0, 0x10204d2

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mReduce:Landroid/view/View;

    .line 468
    instance-of v3, v0, Lcom/samsung/android/widget/SemCaptionButton;

    if-eqz v3, :cond_7

    .line 469
    check-cast v0, Lcom/samsung/android/widget/SemCaptionButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/widget/SemCaptionButton;->setOnAccessibilityActionClickListener(Lcom/samsung/android/widget/SemCaptionButton$OnAccessibilityActionClickListener;)V

    .line 471
    :cond_7
    const v0, 0x10204a3

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mPinOnDex:Landroid/view/View;

    .line 472
    instance-of v3, v0, Lcom/samsung/android/widget/SemCaptionButton;

    if-eqz v3, :cond_8

    .line 473
    check-cast v0, Lcom/samsung/android/widget/SemCaptionButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/widget/SemCaptionButton;->setOnAccessibilityActionClickListener(Lcom/samsung/android/widget/SemCaptionButton$OnAccessibilityActionClickListener;)V

    .line 476
    :cond_8
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMore:Landroid/view/View;

    .line 477
    instance-of v2, v0, Lcom/samsung/android/widget/SemCaptionButton;

    if-eqz v2, :cond_9

    .line 478
    check-cast v0, Lcom/samsung/android/widget/SemCaptionButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/widget/SemCaptionButton;->setOnAccessibilityActionClickListener(Lcom/samsung/android/widget/SemCaptionButton$OnAccessibilityActionClickListener;)V

    .line 482
    :cond_9
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    .line 483
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_a

    move v4, v1

    :cond_a
    iput-boolean v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsDecorCaptionWindow:Z

    .line 485
    if-eqz v4, :cond_c

    .line 486
    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mCanMaximizeVisibilityOnDeX:Z

    .line 487
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_d

    .line 489
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 490
    .local v0, "info":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_b

    .line 491
    iget v2, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/DecorCaptionView;->dispatchRequestedOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 493
    .end local v0    # "info":Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v0

    .line 494
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "DecorCaptionView"

    const-string v3, "init: can\'t know button visibility."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 496
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_b
    :goto_1
    goto :goto_2

    .line 499
    :cond_c
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->isWindowResizable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCanMaximizeVisibilityOnDeX:Z

    .line 502
    :cond_d
    :goto_2
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mGestureDetector:Landroid/view/GestureDetector;

    new-instance v2, Lcom/android/internal/widget/DecorCaptionView$DexDoubleTapListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/internal/widget/DecorCaptionView$DexDoubleTapListener;-><init>(Lcom/android/internal/widget/DecorCaptionView;Lcom/android/internal/widget/DecorCaptionView$DexDoubleTapListener-IA;)V

    invoke-virtual {v0, v2}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    goto :goto_3

    .line 504
    :cond_e
    const v0, 0x10202b1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mSeekBarContainer:Landroid/view/View;

    .line 505
    const v0, 0x10202b0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOpacitySeekBar:Landroid/widget/SeekBar;

    .line 506
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->semSetMode(I)V

    .line 507
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOpacitySeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 509
    const v0, 0x10205d9

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mSplit:Landroid/view/View;

    .line 510
    instance-of v3, v0, Lcom/samsung/android/widget/SemCaptionButton;

    if-eqz v3, :cond_f

    .line 511
    check-cast v0, Lcom/samsung/android/widget/SemCaptionButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/widget/SemCaptionButton;->setOnAccessibilityActionClickListener(Lcom/samsung/android/widget/SemCaptionButton$OnAccessibilityActionClickListener;)V

    .line 513
    :cond_f
    const v0, 0x1020685

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mHeaderUnpin:Landroid/view/View;

    .line 514
    instance-of v3, v0, Lcom/samsung/android/widget/SemCaptionButton;

    if-eqz v3, :cond_10

    .line 515
    check-cast v0, Lcom/samsung/android/widget/SemCaptionButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/widget/SemCaptionButton;->setOnAccessibilityActionClickListener(Lcom/samsung/android/widget/SemCaptionButton$OnAccessibilityActionClickListener;)V

    .line 517
    :cond_10
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMore:Landroid/view/View;

    .line 518
    instance-of v2, v0, Lcom/samsung/android/widget/SemCaptionButton;

    if-eqz v2, :cond_11

    .line 519
    check-cast v0, Lcom/samsung/android/widget/SemCaptionButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/widget/SemCaptionButton;->setOnAccessibilityActionClickListener(Lcom/samsung/android/widget/SemCaptionButton$OnAccessibilityActionClickListener;)V

    .line 522
    :cond_11
    const v0, 0x10202c5

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$Divider;

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mDivider:Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$Divider;

    .line 523
    const v0, 0x10202c9

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/DecorCaptionView$DummyView;

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mDummyView:Lcom/android/internal/widget/DecorCaptionView$DummyView;

    .line 526
    :goto_3
    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->updateResourcesFromDCResources()V

    .line 527
    invoke-virtual {p0}, Lcom/android/internal/widget/DecorCaptionView;->updateButtonVisibility()V

    .line 530
    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mShowPrimarySet:Z

    .line 539
    return-void
.end method

.method public whitelist shouldDelayChildPressedState()Z
    .locals 1

    .line 1015
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist toggleWindow()V
    .locals 2

    .line 1820
    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeRequested:Z

    if-eqz v0, :cond_0

    .line 1821
    const-string v0, "DecorCaptionView"

    const-string/jumbo v1, "toggleWindow: ignore, maximize was already requested"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1822
    return-void

    .line 1824
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsDecorCaptionWindow:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 1825
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isRestartDialogDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1826
    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeRequested:Z

    .line 1827
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->maximize()V

    goto :goto_0

    .line 1829
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->showRestartAlertDialog()V

    goto :goto_0

    .line 1832
    :cond_2
    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeRequested:Z

    .line 1833
    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsDexEnabled:Z

    if-nez v0, :cond_3

    .line 1834
    const/16 v0, 0x3c

    iput v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOpacityProgress:I

    .line 1836
    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/DecorCaptionView;->setEnabledButtonTooltip(Z)V

    .line 1837
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/DecorCaptionView;->setButtonContainerHovered(Landroid/view/View;)V

    .line 1838
    invoke-direct {p0, v0}, Lcom/android/internal/widget/DecorCaptionView;->setButtonContainerPressed(Landroid/view/View;)V

    .line 1839
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->maximize()V

    .line 1847
    :goto_0
    return-void
.end method

.method public blacklist updateButtonVisibility()V
    .locals 8

    .line 1587
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->isFullSize()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 1589
    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsDexEnabled:Z

    const/16 v2, 0x8

    if-eqz v0, :cond_b

    .line 1590
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mPrimaryContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1591
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mSecondaryContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1592
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMore:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1593
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1596
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1597
    const/4 v0, 0x3

    .line 1598
    .local v0, "primaryState":I
    const/4 v3, 0x2

    .local v3, "secondaryState":I
    goto :goto_0

    .line 1600
    .end local v0    # "primaryState":I
    .end local v3    # "secondaryState":I
    :cond_1
    const/4 v0, 0x2

    .line 1601
    .restart local v0    # "primaryState":I
    const/4 v3, 0x3

    .line 1603
    .restart local v3    # "secondaryState":I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiSplitActions;->getActivityEmbeddingState()I

    move-result v4

    .line 1604
    .local v4, "aeState":I
    if-ne v4, v0, :cond_2

    .line 1605
    iget-object v5, p0, Lcom/android/internal/widget/DecorCaptionView;->mBack:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1606
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimize:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1607
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1608
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mReduce:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1609
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mRotate:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1610
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mOpacity:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1611
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mPinOnDex:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1612
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 1614
    :cond_2
    iget-object v5, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimize:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1615
    iget-object v5, p0, Lcom/android/internal/widget/DecorCaptionView;->mBack:Landroid/view/View;

    if-eq v4, v3, :cond_3

    move v6, v1

    goto :goto_1

    :cond_3
    move v6, v2

    :goto_1
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1616
    iget-object v5, p0, Lcom/android/internal/widget/DecorCaptionView;->mOpacity:Landroid/view/View;

    sget-boolean v6, Lcom/samsung/android/rune/ViewRune;->SUPPORT_MULTI_SPLIT_WINDOW_OPACITY:Z

    if-eqz v6, :cond_4

    move v6, v1

    goto :goto_2

    :cond_4
    move v6, v2

    :goto_2
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1617
    iget-object v5, p0, Lcom/android/internal/widget/DecorCaptionView;->mPinOnDex:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1618
    iget-object v5, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1619
    iget-boolean v5, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsDecorCaptionWindow:Z

    if-eqz v5, :cond_7

    .line 1620
    iget-object v5, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v5}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->dexCompatUiMode:I

    .line 1621
    .local v5, "dexCompatUiMode":I
    const/4 v6, 0x3

    if-ne v5, v6, :cond_5

    .line 1622
    iget-object v6, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1623
    iget-object v6, p0, Lcom/android/internal/widget/DecorCaptionView;->mReduce:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 1625
    :cond_5
    iget-object v6, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1626
    iget-object v6, p0, Lcom/android/internal/widget/DecorCaptionView;->mReduce:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1628
    :goto_3
    iget-object v6, p0, Lcom/android/internal/widget/DecorCaptionView;->mRotate:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/internal/widget/DecorCaptionView;->isRotateButtonVisible()Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_4

    :cond_6
    move v1, v2

    :goto_4
    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1629
    .end local v5    # "dexCompatUiMode":I
    goto :goto_6

    .line 1630
    :cond_7
    iget-object v5, p0, Lcom/android/internal/widget/DecorCaptionView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isEmbeddedMode()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1631
    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->getWindowingMode()I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_8

    .line 1632
    iget-object v5, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1633
    iget-object v5, p0, Lcom/android/internal/widget/DecorCaptionView;->mReduce:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 1635
    :cond_8
    iget-object v5, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1636
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mReduce:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 1639
    :cond_9
    iget-object v5, p0, Lcom/android/internal/widget/DecorCaptionView;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v5}, Lcom/android/internal/policy/DecorView;->isFullscreenMode()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1640
    iget-object v5, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1641
    iget-object v5, p0, Lcom/android/internal/widget/DecorCaptionView;->mReduce:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 1643
    :cond_a
    iget-object v5, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1644
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mReduce:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1647
    :goto_5
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mRotate:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1650
    :goto_6
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/internal/widget/DecorCaptionView;->setEnabledButtonTooltip(Z)V

    .line 1651
    .end local v0    # "primaryState":I
    .end local v3    # "secondaryState":I
    .end local v4    # "aeState":I
    goto/16 :goto_8

    .line 1652
    :cond_b
    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mShowPrimarySet:Z

    if-eqz v0, :cond_c

    .line 1653
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mPrimaryContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1654
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimize:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1655
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1656
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1658
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mSecondaryContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1659
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mSplit:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1660
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOpacity:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1661
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mHeaderUnpin:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1662
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mDivider:Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$Divider;

    invoke-virtual {v0, v2}, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$Divider;->setVisibility(I)V

    goto :goto_7

    .line 1664
    :cond_c
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mPrimaryContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1665
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimize:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1666
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1667
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1669
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mSecondaryContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1670
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mSplit:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1671
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOpacity:Landroid/view/View;

    sget-boolean v3, Lcom/samsung/android/rune/ViewRune;->SUPPORT_MULTI_SPLIT_WINDOW_OPACITY:Z

    if-eqz v3, :cond_d

    move v2, v1

    :cond_d
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1672
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mHeaderUnpin:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1673
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mDivider:Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$Divider;

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$Divider;->setVisibility(I)V

    .line 1675
    :goto_7
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMore:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8

    .line 1680
    :cond_e
    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->hideAllButton()V

    .line 1682
    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsDexEnabled:Z

    if-eqz v0, :cond_f

    .line 1683
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mBack:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1687
    :cond_f
    :goto_8
    return-void
.end method

.method public blacklist updateCaptionState(IZ)V
    .locals 4
    .param p1, "captionState"    # I
    .param p2, "overlay"    # Z

    .line 2330
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 2331
    .local v2, "show":Z
    :goto_0
    iget-boolean v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mShow:Z

    if-ne v3, v2, :cond_1

    if-eqz p2, :cond_7

    .line 2332
    :cond_1
    if-eqz p2, :cond_3

    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow;->isOverlayWithDecorCaptionEnabled()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2333
    const/4 v3, 0x2

    if-ne p1, v3, :cond_2

    .line 2334
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/DecorCaptionView;->setOverlayWithAppContent(Z)V

    goto :goto_1

    .line 2336
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/DecorCaptionView;->setOverlayWithAppContent(Z)V

    .line 2339
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mParent:Landroid/view/ViewParent;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mParent:Landroid/view/ViewParent;

    invoke-interface {v3}, Landroid/view/ViewParent;->isLayoutRequested()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2340
    iput-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mForceLayoutRequested:Z

    .line 2342
    :cond_4
    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mShow:Z

    if-eq v0, v2, :cond_5

    .line 2343
    iput-boolean v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mShow:Z

    .line 2345
    :cond_5
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    if-eqz v2, :cond_6

    goto :goto_2

    :cond_6
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2346
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2348
    invoke-virtual {p0}, Lcom/android/internal/widget/DecorCaptionView;->requestLayout()V

    .line 2349
    invoke-virtual {p0}, Lcom/android/internal/widget/DecorCaptionView;->invalidate()V

    .line 2351
    :cond_7
    return-void
.end method

.method public blacklist updateWindowFocus(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .line 1700
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->hasWindowFocusInTask()Z

    move-result v0

    or-int/2addr p1, v0

    .line 1704
    invoke-direct {p0, p1}, Lcom/android/internal/widget/DecorCaptionView;->updateButtonFocus(Z)V

    .line 1705
    return-void
.end method
