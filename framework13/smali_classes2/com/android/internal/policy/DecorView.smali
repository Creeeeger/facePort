.class public Lcom/android/internal/policy/DecorView;
.super Landroid/widget/FrameLayout;
.source "DecorView.java"

# interfaces
.implements Lcom/android/internal/view/RootViewSurfaceTaker;
.implements Landroid/view/WindowCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;,
        Lcom/android/internal/policy/DecorView$ColorViewAttributes;,
        Lcom/android/internal/policy/DecorView$ColorViewState;
    }
.end annotation


# static fields
.field public static final blacklist CAPTION_TYPE_HAS_CAPTION_VIEW:I = 0x1

.field public static final blacklist CAPTION_TYPE_HAS_COMPAT_WINDOW:I = 0x2

.field public static final blacklist CAPTION_TYPE_IS_COMPAT_WINDOW:I = 0x3

.field public static final blacklist CAPTION_TYPE_NONE:I = 0x0

.field public static final blacklist DEBUG_CAPTION:Z

.field private static final blacklist DEBUG_DEX:Z = false

.field private static final blacklist DEBUG_KNOX:Z = false

.field private static final blacklist DEBUG_KNOX_TAG:Ljava/lang/String; = "DecorView_KNOX"

.field private static final blacklist DEBUG_MEASURE:Z = false

.field public static final blacklist DECOR_SHADOW_FOCUSED_HEIGHT_IN_DIP:I = 0x20

.field public static final blacklist DECOR_SHADOW_UNFOCUSED_HEIGHT_IN_DIP:I = 0x20

.field private static final blacklist LEGACY_DECOR_SHADOW_HEIGHT_IN_DIP:I = 0xc

.field private static final blacklist MULTI_SPLIT_POPUP_ELEVATION_IN_DIP:I = 0xc

.field public static final blacklist NAVIGATION_BAR_COLOR_VIEW_ATTRIBUTES:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

.field private static final blacklist PIP_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

.field private static final blacklist POP_OVER_ANIM_DELAY_TIME:I = 0x64

.field private static final blacklist POP_OVER_BACKGROUND_ANIM_DURATION:I = 0xc8

.field private static final blacklist POP_OVER_CONTENTS_ANIM_DURATION:I = 0x64

.field private static final blacklist POP_OVER_ELEVATION_IN_DIP:I = 0x20

.field public static final blacklist RESIZE_OVERLAP_AREA_IN_DP:I = 0x4

.field private static final blacklist SCRIM_LIGHT:I = -0x19000001

.field private static final blacklist SEM_ROUNDED_CORNER_BOTTOM:I = 0xc

.field private static final blacklist SEM_ROUNDED_CORNER_LEFT:I = 0x5

.field private static final blacklist SEM_ROUNDED_CORNER_RIGHT:I = 0xa

.field private static final blacklist SEM_ROUNDED_CORNER_TOP:I = 0x3

.field public static final blacklist STATUS_BAR_COLOR_VIEW_ATTRIBUTES:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

.field private static final blacklist SWEEP_OPEN_MENU:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "DecorView"

.field private static final blacklist WINDOW_RESIZE_ELEVATION_ANIM_DELAY:I = 0x190

.field private static final blacklist WINDOW_RESIZE_ELEVATION_ANIM_DURATION:I = 0xc8

.field private static blacklist sKnoxBadgeRightCutout:I


# instance fields
.field private final blacklist FREEFORM_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

.field private final blacklist POP_OVER_BACKGROUND_ALPHA:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/internal/policy/DecorView;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist POP_OVER_CONTENT_ALPHA:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/internal/policy/DecorView;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist POP_OVER_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

.field private blacklist mAllowUpdateElevation:Z

.field private blacklist mApplyFloatingHorizontalInsets:Z

.field private blacklist mApplyFloatingVerticalInsets:Z

.field private blacklist mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

.field private blacklist mBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

.field private final blacklist mBackgroundBlurOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private blacklist mBackgroundBlurRadius:I

.field private final blacklist mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

.field private blacklist mBackgroundInsets:Landroid/graphics/Insets;

.field private final blacklist mBackgroundPadding:Landroid/graphics/Rect;

.field private final blacklist mBarEnterExitDuration:I

.field private blacklist mCalledDisplayCutoutBackgroundColor:Z

.field private blacklist mCalledOnAttachedToWindow:Z

.field private blacklist mCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private blacklist mCaptionType:I

.field private blacklist mChanging:Z

.field private blacklist mCheckEdgeFirst:Z

.field private blacklist mCompatWindow:Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;

.field blacklist mContentRoot:Landroid/view/ViewGroup;

.field private final blacklist mControlInsetsChangedListener:Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;

.field private blacklist mCrossWindowBlurEnabled:Z

.field private blacklist mCrossWindowBlurEnabledListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDCResources:Lcom/samsung/android/util/DecorCaptionResources;

.field private blacklist mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

.field blacklist mDefaultOpacity:I

.field private blacklist mDensityDpi:I

.field private blacklist mDensityForKnoxBadge:I

.field private blacklist mDensityRatio:F

.field private blacklist mDisplayCutoutBackgroundColor:I

.field private blacklist mDisplayCutoutBackgroundView:Landroid/view/View;

.field private blacklist mDownY:I

.field private blacklist mDrawLegacyNavigationBarBackground:Z

.field private blacklist mDrawLegacyNavigationBarBackgroundHandled:Z

.field private final blacklist mDrawingBounds:Landroid/graphics/Rect;

.field private blacklist mEdgeFlag:I

.field private blacklist mElevationAdjustedForStack:Z

.field private blacklist mFadeAnim:Landroid/animation/ObjectAnimator;

.field private final blacklist mFeatureId:I

.field private blacklist mFloatingActionMode:Landroid/view/ActionMode;

.field private blacklist mFloatingActionModeOriginatingView:Landroid/view/View;

.field private final blacklist mFloatingInsets:Landroid/graphics/Rect;

.field private blacklist mFloatingToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

.field private blacklist mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private blacklist mForceHideRoundedCorner:Z

.field private blacklist mForceRoundedCorner:Z

.field final blacklist mForceWindowDrawsBarBackgrounds:Z

.field private blacklist mFrameDrawHelper:Lcom/samsung/android/multiwindow/FrameDrawHelper;

.field private final blacklist mFrameOffsets:Landroid/graphics/Rect;

.field private final blacklist mFramePadding:Landroid/graphics/Rect;

.field private blacklist mGestureHintEnabled:Z

.field private blacklist mGestureNavBarEnabled:Z

.field private blacklist mHasCaption:Z

.field private blacklist mHasDisplayCutout:Z

.field private blacklist mHasWindowFocus:Z

.field private blacklist mHasWindowFocusInTask:Z

.field private final blacklist mHideInterpolator:Landroid/view/animation/Interpolator;

.field private final blacklist mHorizontalResizeShadowPaint:Landroid/graphics/Paint;

.field private blacklist mImmersiveHelper:Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;

.field private blacklist mIsActivatedBlinkEffect:Z

.field private blacklist mIsDexEnabled:Z

.field private blacklist mIsFixedOrientation:Z

.field private blacklist mIsFlexPanelMode:Z

.field private blacklist mIsFullViewShown:Z

.field private blacklist mIsImmersiveMode:Z

.field private blacklist mIsImmersiveModeForKnox:Z

.field private blacklist mIsInPictureInPictureMode:Z

.field private blacklist mIsInSplitImmersiveMode:Z

.field private blacklist mIsKeyboardShown:Z

.field private blacklist mIsKnoxActivity:Z

.field private blacklist mIsMovingTask:Z

.field private blacklist mIsPenSelectionMode:Z

.field private blacklist mIsPopOver:Z

.field private blacklist mIsPopOverForMultiPaneLayout:Z

.field private blacklist mIsShowNavigationBar:Z

.field private blacklist mIsStatusBarHidden:Z

.field private blacklist mIsWindowResizable:Z

.field private blacklist mKeepScreenOn:Z

.field private blacklist mKnoxBadge:Landroid/graphics/drawable/Drawable;

.field private blacklist mKnoxBadgeDisplayRunnable:Ljava/lang/Runnable;

.field private blacklist mKnoxBadgeInsets:Landroid/graphics/Insets;

.field private blacklist mKnoxBadgeStartX:I

.field private blacklist mKnoxBadgeStartY:I

.field private blacklist mKnoxBadgeView:Landroid/view/View;

.field private blacklist mKnoxBadgeViewGroupOverlay:Landroid/view/ViewGroupOverlay;

.field private blacklist mKnoxLayoutBottom:I

.field private blacklist mKnoxLayoutLeft:I

.field private blacklist mKnoxLayoutRight:I

.field private blacklist mLastBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

.field private blacklist mLastBackgroundDrawableCb:Landroid/graphics/drawable/Drawable$Callback;

.field private blacklist mLastBackgroundInsets:Landroid/graphics/Insets;

.field private blacklist mLastBackgroundResource:I

.field private greylist mLastBottomInset:I

.field private blacklist mLastDisplayDeviceType:I

.field private blacklist mLastDrawLegacyNavigationBarBackground:Z

.field private blacklist mLastEmbeddingState:I

.field private blacklist mLastFreeformStashType:I

.field private blacklist mLastHasBottomStableInset:Z

.field private blacklist mLastHasLeftStableInset:Z

.field private blacklist mLastHasRightStableInset:Z

.field private blacklist mLastHasTopStableInset:Z

.field private blacklist mLastLayoutBounds:Landroid/graphics/Rect;

.field private greylist mLastLeftInset:I

.field private blacklist mLastOrientation:I

.field private blacklist mLastOriginalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private blacklist mLastOutlineProvider:Landroid/view/ViewOutlineProvider;

.field private greylist mLastRightInset:I

.field private blacklist mLastShouldAlwaysConsumeSystemBars:Z

.field private blacklist mLastTopInset:I

.field private blacklist mLastWindowFlags:I

.field private blacklist mLastWindowingMode:I

.field private final blacklist mLegacyNavigationBarBackgroundPaint:Landroid/graphics/Paint;

.field blacklist mLogTag:Ljava/lang/String;

.field private blacklist mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

.field private blacklist mMenuBackground:Landroid/graphics/drawable/Drawable;

.field private blacklist mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

.field private blacklist mMultiSplitHelpMode:I

.field private blacklist mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

.field private blacklist mMultiWindowMenuInFullScreenObserver:Landroid/database/ContentObserver;

.field private final blacklist mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

.field private blacklist mNeedToInitDexInfo:Z

.field private final blacklist mOnStateChangeListener:Lcom/samsung/android/multiwindow/BlinkEffectPopup$OnStateChangeListener;

.field private blacklist mOriginalBackgroundBlurRadius:I

.field private blacklist mOriginalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private final blacklist mOverrideRoundedCornerBounds:Landroid/graphics/Rect;

.field private blacklist mPackageManagerForKnoxBadge:Landroid/content/pm/PackageManager;

.field private blacklist mParentWindow:Landroid/view/Window;

.field private blacklist mPendingInsetsController:Landroid/view/PendingInsetsController;

.field private blacklist mPendingWindowBackground:Landroid/graphics/drawable/Drawable;

.field private blacklist mPopOverBackgroundAlpha:F

.field private blacklist mPopOverBackgroundColor:I

.field private final blacklist mPopOverClipOutPath:Landroid/graphics/Path;

.field private blacklist mPopOverContentAlpha:F

.field private final blacklist mPopOverPaint:Landroid/graphics/Paint;

.field private blacklist mPopOverRadius:I

.field private blacklist mPreventElevationUpdate:Z

.field private blacklist mPreventPopOverElevation:Z

.field blacklist mPrimaryActionMode:Landroid/view/ActionMode;

.field private blacklist mPrimaryActionModePopup:Landroid/widget/PopupWindow;

.field private blacklist mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

.field private blacklist mResizeMode:I

.field private final blacklist mResizeShadowSize:I

.field private blacklist mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private blacklist mRestartNotiHelpToken:Landroid/os/IBinder;

.field private blacklist mReverseKnoxBadge:Landroid/graphics/drawable/Drawable;

.field private blacklist mRootScrollY:I

.field private blacklist mRoundedCornerMode:I

.field private blacklist mRoundedCornerRadius:I

.field private blacklist mRoundedCornerRadiusForLetterBox:I

.field private blacklist mRoundedCornerRadiusForMultiWindow:I

.field private blacklist mSavedSystemBarsBehavior:I

.field private final blacklist mSemiTransparentBarColor:I

.field private blacklist mSetImmersiveModeBySystemUiVisibility:Z

.field private final blacklist mShowInterpolator:Landroid/view/animation/Interpolator;

.field private blacklist mShowPopOver:Z

.field private blacklist mShowPrimaryActionModePopup:Ljava/lang/Runnable;

.field private final blacklist mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

.field private blacklist mStatusGuard:Landroid/view/View;

.field private blacklist mStayFocus:Z

.field private blacklist mTempRect:Landroid/graphics/Rect;

.field private final blacklist mTmpColorViewBounds:Landroid/graphics/Rect;

.field private final blacklist mTmpDisplayMetrics:Landroid/util/DisplayMetrics;

.field private blacklist mTmpRegion:Landroid/graphics/Region;

.field private blacklist mUserCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private blacklist mUserId:I

.field private final blacklist mVerticalResizeShadowPaint:Landroid/graphics/Paint;

.field private blacklist mVisibility:I

.field private blacklist mWatchingForMenu:Z

.field private greylist mWindow:Lcom/android/internal/policy/PhoneWindow;

.field private blacklist mWindowResizeCallbacksAdded:Z

.field private blacklist mWindowingMode:I

.field private blacklist mWm:Landroid/view/WindowManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDensityRatio(Lcom/android/internal/policy/DecorView;)F
    .locals 0

    iget p0, p0, Lcom/android/internal/policy/DecorView;->mDensityRatio:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFadeAnim(Lcom/android/internal/policy/DecorView;)Landroid/animation/ObjectAnimator;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/policy/DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFloatingActionMode(Lcom/android/internal/policy/DecorView;)Landroid/view/ActionMode;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFloatingToolbar(Lcom/android/internal/policy/DecorView;)Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmKnoxBadge(Lcom/android/internal/policy/DecorView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadge:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmKnoxBadgeInsets(Lcom/android/internal/policy/DecorView;)Landroid/graphics/Insets;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadgeInsets:Landroid/graphics/Insets;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmKnoxBadgeStartX(Lcom/android/internal/policy/DecorView;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadgeStartX:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmKnoxBadgeStartY(Lcom/android/internal/policy/DecorView;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadgeStartY:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmKnoxBadgeView(Lcom/android/internal/policy/DecorView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadgeView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmKnoxLayoutBottom(Lcom/android/internal/policy/DecorView;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/policy/DecorView;->mKnoxLayoutBottom:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmKnoxLayoutLeft(Lcom/android/internal/policy/DecorView;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/policy/DecorView;->mKnoxLayoutLeft:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmKnoxLayoutRight(Lcom/android/internal/policy/DecorView;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/policy/DecorView;->mKnoxLayoutRight:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMultiSplitHandler(Lcom/android/internal/policy/DecorView;)Lcom/samsung/android/multiwindow/MultiSplitHandler;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPrimaryActionModePopup(Lcom/android/internal/policy/DecorView;)Landroid/widget/PopupWindow;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPrimaryActionModeView(Lcom/android/internal/policy/DecorView;)Lcom/android/internal/widget/ActionBarContextView;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmReverseKnoxBadge(Lcom/android/internal/policy/DecorView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/policy/DecorView;->mReverseKnoxBadge:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmShowPrimaryActionModePopup(Lcom/android/internal/policy/DecorView;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/policy/DecorView;->mShowPrimaryActionModePopup:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWindow(Lcom/android/internal/policy/DecorView;)Lcom/android/internal/policy/PhoneWindow;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWm(Lcom/android/internal/policy/DecorView;)Landroid/view/WindowManager;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/policy/DecorView;->mWm:Landroid/view/WindowManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFadeAnim(Lcom/android/internal/policy/DecorView;Landroid/animation/ObjectAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFloatingActionMode(Lcom/android/internal/policy/DecorView;Landroid/view/ActionMode;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsActivatedBlinkEffect(Lcom/android/internal/policy/DecorView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/policy/DecorView;->mIsActivatedBlinkEffect:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmKnoxBadgeInsets(Lcom/android/internal/policy/DecorView;Landroid/graphics/Insets;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadgeInsets:Landroid/graphics/Insets;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmKnoxBadgeStartX(Lcom/android/internal/policy/DecorView;I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadgeStartX:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmKnoxBadgeStartY(Lcom/android/internal/policy/DecorView;I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadgeStartY:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$maddKnoxBadge(Lcom/android/internal/policy/DecorView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->addKnoxBadge()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcleanupFloatingActionModeViews(Lcom/android/internal/policy/DecorView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->cleanupFloatingActionModeViews()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mendOnGoingFadeAnimation(Lcom/android/internal/policy/DecorView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->endOnGoingFadeAnimation()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetBackgroundAlpha(Lcom/android/internal/policy/DecorView;)F
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->getBackgroundAlpha()F

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetContentAlpha(Lcom/android/internal/policy/DecorView;)F
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->getContentAlpha()F

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhideKnoxBadge(Lcom/android/internal/policy/DecorView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->hideKnoxBadge()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrequestInvalidateRenderNode(Lcom/android/internal/policy/DecorView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->requestInvalidateRenderNode(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetBackgroundAlpha(Lcom/android/internal/policy/DecorView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->setBackgroundAlpha(F)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetContentAlpha(Lcom/android/internal/policy/DecorView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->setContentAlpha(F)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mshouldHideProfileBadge(Lcom/android/internal/policy/DecorView;ZZI)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/DecorView;->shouldHideProfileBadge(ZZI)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsKnoxBadgeRightCutout()I
    .locals 1

    sget v0, Lcom/android/internal/policy/DecorView;->sKnoxBadgeRightCutout:I

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsKnoxBadgeRightCutout(I)V
    .locals 0

    sput p0, Lcom/android/internal/policy/DecorView;->sKnoxBadgeRightCutout:I

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 19

    .line 294
    new-instance v9, Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    const/high16 v1, 0x4000000

    const/16 v2, 0x30

    const/4 v3, 0x3

    const/4 v4, 0x5

    const-string v5, "android:status:background"

    const v6, 0x102002f

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;-><init>(IIIILjava/lang/String;IILcom/android/internal/policy/DecorView$ColorViewAttributes-IA;)V

    sput-object v9, Lcom/android/internal/policy/DecorView;->STATUS_BAR_COLOR_VIEW_ATTRIBUTES:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    .line 300
    new-instance v0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    const/high16 v11, 0x8000000

    const/16 v12, 0x50

    const/4 v13, 0x5

    const/4 v14, 0x3

    const-string v15, "android:navigation:background"

    const v16, 0x1020030

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;-><init>(IIIILjava/lang/String;IILcom/android/internal/policy/DecorView$ColorViewAttributes-IA;)V

    sput-object v0, Lcom/android/internal/policy/DecorView;->NAVIGATION_BAR_COLOR_VIEW_ATTRIBUTES:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    .line 308
    new-instance v0, Lcom/android/internal/policy/DecorView$1;

    invoke-direct {v0}, Lcom/android/internal/policy/DecorView$1;-><init>()V

    sput-object v0, Lcom/android/internal/policy/DecorView;->PIP_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

    .line 450
    const-string v0, "decorview.debug.caption"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    sput-boolean v1, Lcom/android/internal/policy/DecorView;->DEBUG_CAPTION:Z

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;ILcom/android/internal/policy/PhoneWindow;Landroid/view/WindowManager$LayoutParams;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "featureId"    # I
    .param p3, "window"    # Lcom/android/internal/policy/PhoneWindow;
    .param p4, "params"    # Landroid/view/WindowManager$LayoutParams;

    .line 712
    const-string v0, "android"

    const-string/jumbo v1, "string"

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 277
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/policy/DecorView;->mDensityForKnoxBadge:I

    .line 282
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadge:Landroid/graphics/drawable/Drawable;

    .line 283
    iput-object v3, p0, Lcom/android/internal/policy/DecorView;->mReverseKnoxBadge:Landroid/graphics/drawable/Drawable;

    .line 284
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Lcom/android/internal/policy/DecorView;->mDensityRatio:F

    .line 285
    iput-object v3, p0, Lcom/android/internal/policy/DecorView;->mPackageManagerForKnoxBadge:Landroid/content/pm/PackageManager;

    .line 287
    iput-object v3, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadgeView:Landroid/view/View;

    .line 288
    iput-object v3, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadgeViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    .line 289
    iput-object v3, p0, Lcom/android/internal/policy/DecorView;->mWm:Landroid/view/WindowManager;

    .line 290
    iput-object v3, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadgeInsets:Landroid/graphics/Insets;

    .line 291
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mIsImmersiveModeForKnox:Z

    .line 319
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mAllowUpdateElevation:Z

    .line 321
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mElevationAdjustedForStack:Z

    .line 329
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/internal/policy/DecorView;->mDefaultOpacity:I

    .line 334
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/android/internal/policy/DecorView;->mDrawingBounds:Landroid/graphics/Rect;

    .line 336
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/android/internal/policy/DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 338
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    .line 340
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/android/internal/policy/DecorView;->mFrameOffsets:Landroid/graphics/Rect;

    .line 342
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mHasCaption:Z

    .line 363
    new-instance v6, Lcom/android/internal/policy/DecorView$ColorViewState;

    sget-object v7, Lcom/android/internal/policy/DecorView;->STATUS_BAR_COLOR_VIEW_ATTRIBUTES:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    invoke-direct {v6, v7}, Lcom/android/internal/policy/DecorView$ColorViewState;-><init>(Lcom/android/internal/policy/DecorView$ColorViewAttributes;)V

    iput-object v6, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    .line 365
    new-instance v6, Lcom/android/internal/policy/DecorView$ColorViewState;

    sget-object v7, Lcom/android/internal/policy/DecorView;->NAVIGATION_BAR_COLOR_VIEW_ATTRIBUTES:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    invoke-direct {v6, v7}, Lcom/android/internal/policy/DecorView$ColorViewState;-><init>(Lcom/android/internal/policy/DecorView$ColorViewAttributes;)V

    iput-object v6, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    .line 374
    new-instance v6, Lcom/android/internal/widget/BackgroundFallback;

    invoke-direct {v6}, Lcom/android/internal/widget/BackgroundFallback;-><init>()V

    iput-object v6, p0, Lcom/android/internal/policy/DecorView;->mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

    .line 376
    iput v2, p0, Lcom/android/internal/policy/DecorView;->mLastTopInset:I

    .line 377
    iput v2, p0, Lcom/android/internal/policy/DecorView;->mLastBottomInset:I

    .line 379
    iput v2, p0, Lcom/android/internal/policy/DecorView;->mLastRightInset:I

    .line 381
    iput v2, p0, Lcom/android/internal/policy/DecorView;->mLastLeftInset:I

    .line 383
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mLastHasTopStableInset:Z

    .line 384
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mLastHasBottomStableInset:Z

    .line 385
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mLastHasRightStableInset:Z

    .line 386
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mLastHasLeftStableInset:Z

    .line 387
    iput v2, p0, Lcom/android/internal/policy/DecorView;->mLastWindowFlags:I

    .line 388
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mLastShouldAlwaysConsumeSystemBars:Z

    .line 390
    iput v2, p0, Lcom/android/internal/policy/DecorView;->mRootScrollY:I

    .line 404
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mWindowResizeCallbacksAdded:Z

    .line 405
    iput-object v3, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundDrawableCb:Landroid/graphics/drawable/Drawable$Callback;

    .line 406
    iput-object v3, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    .line 423
    const-string v6, "DecorView"

    iput-object v6, p0, Lcom/android/internal/policy/DecorView;->mLogTag:Ljava/lang/String;

    .line 424
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    .line 425
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mApplyFloatingVerticalInsets:Z

    .line 426
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mApplyFloatingHorizontalInsets:Z

    .line 428
    iput v5, p0, Lcom/android/internal/policy/DecorView;->mResizeMode:I

    .line 430
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    iput-object v7, p0, Lcom/android/internal/policy/DecorView;->mVerticalResizeShadowPaint:Landroid/graphics/Paint;

    .line 431
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    iput-object v7, p0, Lcom/android/internal/policy/DecorView;->mHorizontalResizeShadowPaint:Landroid/graphics/Paint;

    .line 432
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    iput-object v7, p0, Lcom/android/internal/policy/DecorView;->mLegacyNavigationBarBackgroundPaint:Landroid/graphics/Paint;

    .line 433
    sget-object v8, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v8, p0, Lcom/android/internal/policy/DecorView;->mBackgroundInsets:Landroid/graphics/Insets;

    .line 434
    sget-object v8, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v8, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundInsets:Landroid/graphics/Insets;

    .line 438
    new-instance v8, Landroid/view/PendingInsetsController;

    invoke-direct {v8}, Landroid/view/PendingInsetsController;-><init>()V

    iput-object v8, p0, Lcom/android/internal/policy/DecorView;->mPendingInsetsController:Landroid/view/PendingInsetsController;

    .line 440
    iput v2, p0, Lcom/android/internal/policy/DecorView;->mOriginalBackgroundBlurRadius:I

    .line 441
    iput v2, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurRadius:I

    .line 443
    new-instance v8, Lcom/android/internal/policy/DecorView$$ExternalSyntheticLambda0;

    invoke-direct {v8, p0}, Lcom/android/internal/policy/DecorView$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/policy/DecorView;)V

    iput-object v8, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 489
    iput v2, p0, Lcom/android/internal/policy/DecorView;->mCaptionType:I

    .line 493
    new-instance v8, Landroid/util/DisplayMetrics;

    invoke-direct {v8}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v8, p0, Lcom/android/internal/policy/DecorView;->mTmpDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 496
    iput v2, p0, Lcom/android/internal/policy/DecorView;->mWindowingMode:I

    .line 497
    iput v2, p0, Lcom/android/internal/policy/DecorView;->mLastWindowingMode:I

    .line 498
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, p0, Lcom/android/internal/policy/DecorView;->mLastLayoutBounds:Landroid/graphics/Rect;

    .line 499
    iput v5, p0, Lcom/android/internal/policy/DecorView;->mLastFreeformStashType:I

    .line 501
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mKeepScreenOn:Z

    .line 502
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mHasWindowFocus:Z

    .line 504
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mPreventElevationUpdate:Z

    .line 506
    iput v2, p0, Lcom/android/internal/policy/DecorView;->mLastEmbeddingState:I

    .line 510
    new-instance v8, Lcom/android/internal/policy/DecorView$2;

    invoke-direct {v8, p0}, Lcom/android/internal/policy/DecorView$2;-><init>(Lcom/android/internal/policy/DecorView;)V

    iput-object v8, p0, Lcom/android/internal/policy/DecorView;->FREEFORM_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

    .line 540
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mCalledOnAttachedToWindow:Z

    .line 541
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mIsDexEnabled:Z

    .line 542
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/internal/policy/DecorView;->mNeedToInitDexInfo:Z

    .line 543
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mIsFixedOrientation:Z

    .line 544
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mIsWindowResizable:Z

    .line 549
    iput-object v3, p0, Lcom/android/internal/policy/DecorView;->mParentWindow:Landroid/view/Window;

    .line 554
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mIsImmersiveMode:Z

    .line 555
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mSetImmersiveModeBySystemUiVisibility:Z

    .line 558
    new-instance v9, Lcom/android/internal/policy/DecorView$$ExternalSyntheticLambda1;

    invoke-direct {v9, p0}, Lcom/android/internal/policy/DecorView$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/policy/DecorView;)V

    iput-object v9, p0, Lcom/android/internal/policy/DecorView;->mControlInsetsChangedListener:Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;

    .line 574
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mIsMovingTask:Z

    .line 578
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mCheckEdgeFirst:Z

    .line 579
    iput v2, p0, Lcom/android/internal/policy/DecorView;->mEdgeFlag:I

    .line 596
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mHasDisplayCutout:Z

    .line 598
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mForceRoundedCorner:Z

    .line 599
    iput v2, p0, Lcom/android/internal/policy/DecorView;->mRoundedCornerMode:I

    .line 600
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, p0, Lcom/android/internal/policy/DecorView;->mOverrideRoundedCornerBounds:Landroid/graphics/Rect;

    .line 601
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, p0, Lcom/android/internal/policy/DecorView;->mTmpColorViewBounds:Landroid/graphics/Rect;

    .line 607
    new-instance v10, Landroid/graphics/Region;

    invoke-direct {v10}, Landroid/graphics/Region;-><init>()V

    iput-object v10, p0, Lcom/android/internal/policy/DecorView;->mTmpRegion:Landroid/graphics/Region;

    .line 616
    iput-object v3, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    .line 618
    iput v2, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHelpMode:I

    .line 619
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mIsActivatedBlinkEffect:Z

    .line 620
    const/16 v10, 0x8

    iput v10, p0, Lcom/android/internal/policy/DecorView;->mVisibility:I

    .line 622
    iput-object v3, p0, Lcom/android/internal/policy/DecorView;->mMultiWindowMenuInFullScreenObserver:Landroid/database/ContentObserver;

    .line 624
    new-instance v10, Lcom/android/internal/policy/DecorView$3;

    invoke-direct {v10, p0}, Lcom/android/internal/policy/DecorView$3;-><init>(Lcom/android/internal/policy/DecorView;)V

    iput-object v10, p0, Lcom/android/internal/policy/DecorView;->mOnStateChangeListener:Lcom/samsung/android/multiwindow/BlinkEffectPopup$OnStateChangeListener;

    .line 631
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mIsStatusBarHidden:Z

    .line 641
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mIsPopOver:Z

    .line 642
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mIsPopOverForMultiPaneLayout:Z

    .line 643
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mPreventPopOverElevation:Z

    .line 646
    new-instance v10, Lcom/android/internal/policy/DecorView$4;

    invoke-direct {v10, p0}, Lcom/android/internal/policy/DecorView$4;-><init>(Lcom/android/internal/policy/DecorView;)V

    iput-object v10, p0, Lcom/android/internal/policy/DecorView;->POP_OVER_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

    .line 658
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    iput-object v10, p0, Lcom/android/internal/policy/DecorView;->mPopOverPaint:Landroid/graphics/Paint;

    .line 659
    new-instance v10, Landroid/graphics/Path;

    invoke-direct {v10}, Landroid/graphics/Path;-><init>()V

    iput-object v10, p0, Lcom/android/internal/policy/DecorView;->mPopOverClipOutPath:Landroid/graphics/Path;

    .line 661
    iput-boolean v8, p0, Lcom/android/internal/policy/DecorView;->mShowPopOver:Z

    .line 663
    iput v5, p0, Lcom/android/internal/policy/DecorView;->mPopOverBackgroundColor:I

    .line 664
    iput v4, p0, Lcom/android/internal/policy/DecorView;->mPopOverBackgroundAlpha:F

    .line 665
    iput v4, p0, Lcom/android/internal/policy/DecorView;->mPopOverContentAlpha:F

    .line 667
    new-instance v4, Lcom/android/internal/policy/DecorView$5;

    const-string v10, "backgroundAlpha"

    invoke-direct {v4, p0, v10}, Lcom/android/internal/policy/DecorView$5;-><init>(Lcom/android/internal/policy/DecorView;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/internal/policy/DecorView;->POP_OVER_BACKGROUND_ALPHA:Landroid/util/FloatProperty;

    .line 680
    new-instance v4, Lcom/android/internal/policy/DecorView$6;

    const-string v10, "contentAlpha"

    invoke-direct {v4, p0, v10}, Lcom/android/internal/policy/DecorView$6;-><init>(Lcom/android/internal/policy/DecorView;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/internal/policy/DecorView;->POP_OVER_CONTENT_ALPHA:Landroid/util/FloatProperty;

    .line 695
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mIsPenSelectionMode:Z

    .line 699
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mIsFlexPanelMode:Z

    .line 707
    iput v2, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundResource:I

    .line 5826
    iput v2, p0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundColor:I

    .line 5827
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mCalledDisplayCutoutBackgroundColor:Z

    .line 6259
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mForceHideRoundedCorner:Z

    .line 713
    iput p2, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    .line 715
    const v4, 0x10c000e

    invoke-static {p1, v4}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/DecorView;->mShowInterpolator:Landroid/view/animation/Interpolator;

    .line 717
    const v4, 0x10c000f

    invoke-static {p1, v4}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/DecorView;->mHideInterpolator:Landroid/view/animation/Interpolator;

    .line 720
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v10, 0x10e0150

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/DecorView;->mBarEnterExitDuration:I

    .line 722
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v10, 0x1110160

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 724
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v10, 0x18

    if-lt v4, v10, :cond_0

    move v4, v8

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    iput-boolean v4, p0, Lcom/android/internal/policy/DecorView;->mForceWindowDrawsBarBackgrounds:Z

    .line 725
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v10, 0x10608fa

    invoke-virtual {v4, v10, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/DecorView;->mSemiTransparentBarColor:I

    .line 728
    invoke-virtual {p0, p3}, Lcom/android/internal/policy/DecorView;->setWindow(Lcom/android/internal/policy/PhoneWindow;)V

    .line 730
    invoke-virtual {p0, p4}, Lcom/android/internal/policy/DecorView;->updateLogTag(Landroid/view/WindowManager$LayoutParams;)V

    .line 732
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v10, 0x10502ee

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/DecorView;->mResizeShadowSize:I

    .line 734
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->initResizingPaints()V

    .line 736
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 744
    .local v4, "res":Landroid/content/res/Resources;
    iget-object v10, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 746
    invoke-virtual {v10}, Lcom/android/internal/policy/PhoneWindow;->getDeviceDefaultNavigationBarColor()I

    move-result v10

    .line 744
    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 751
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v7, v7, Lcom/android/internal/policy/PhoneWindow;->mActivityCurrentConfig:Landroid/content/res/Configuration;

    if-eqz v7, :cond_1

    .line 752
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v7, v7, Lcom/android/internal/policy/PhoneWindow;->mActivityCurrentConfig:Landroid/content/res/Configuration;

    iget-object v7, v7, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .local v7, "winConfig":Landroid/app/WindowConfiguration;
    goto :goto_1

    .line 754
    .end local v7    # "winConfig":Landroid/app/WindowConfiguration;
    :cond_1
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget-object v7, v7, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 756
    .restart local v7    # "winConfig":Landroid/app/WindowConfiguration;
    :goto_1
    invoke-virtual {v7}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v10

    iput v10, p0, Lcom/android/internal/policy/DecorView;->mWindowingMode:I

    .line 759
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v10

    .line 760
    .local v10, "controller":Landroid/view/WindowInsetsController;
    invoke-interface {v10, v9}, Landroid/view/WindowInsetsController;->addOnControllableInsetsChangedListener(Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;)V

    .line 764
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    if-ne v9, v8, :cond_2

    move v9, v8

    goto :goto_2

    :cond_2
    move v9, v2

    :goto_2
    iput-boolean v9, p0, Lcom/android/internal/policy/DecorView;->mIsDexEnabled:Z

    if-eqz v9, :cond_3

    .line 765
    invoke-virtual {p3, v2}, Lcom/android/internal/policy/PhoneWindow;->setOverlayWithDecorCaptionEnabled(Z)V

    .line 767
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->initializeDexInfo()V

    .line 770
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget-object v9, v9, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v9}, Landroid/app/WindowConfiguration;->isPopOver()Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/internal/policy/DecorView;->mIsPopOver:Z

    .line 771
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    iput v9, p0, Lcom/android/internal/policy/DecorView;->mLastDisplayDeviceType:I

    .line 773
    invoke-virtual {v7}, Landroid/app/WindowConfiguration;->isPopOverWithoutOutlineEffect()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 775
    iput-boolean v8, p0, Lcom/android/internal/policy/DecorView;->mIsPopOverForMultiPaneLayout:Z

    .line 778
    :cond_4
    iget-boolean v9, p0, Lcom/android/internal/policy/DecorView;->mIsPopOver:Z

    if-eqz v9, :cond_8

    iget-boolean v9, p0, Lcom/android/internal/policy/DecorView;->mIsPopOverForMultiPaneLayout:Z

    if-nez v9, :cond_8

    .line 779
    iget-object v9, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v9}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v9

    instance-of v9, v9, Lcom/android/internal/app/ChooserActivity;

    if-eqz v9, :cond_5

    .line 780
    const v5, 0x1060351

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/DecorView;->mPopOverBackgroundColor:I

    goto :goto_4

    .line 781
    :cond_5
    iget v9, p0, Lcom/android/internal/policy/DecorView;->mPopOverBackgroundColor:I

    if-ne v9, v5, :cond_7

    .line 782
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/util/SemViewUtils;->isLightTheme(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 783
    const v5, 0x10602ba

    goto :goto_3

    .line 784
    :cond_6
    const v5, 0x10602bb

    :goto_3
    nop

    .line 782
    invoke-virtual {v4, v5, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/DecorView;->mPopOverBackgroundColor:I

    .line 786
    :cond_7
    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mPopOverBackgroundColor="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v9, p0, Lcom/android/internal/policy/DecorView;->mPopOverBackgroundColor:I

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    const v5, 0x10503ac

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/DecorView;->mPopOverRadius:I

    .line 793
    .end local v7    # "winConfig":Landroid/app/WindowConfiguration;
    .end local v10    # "controller":Landroid/view/WindowInsetsController;
    :cond_8
    const v5, 0x11101b5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/policy/DecorView;->mIsShowNavigationBar:Z

    .line 796
    :try_start_0
    const-string v5, "config_mainBuiltInDisplayCutout"

    invoke-virtual {v4, v5, v1, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 797
    .local v5, "resId":I
    if-lez v5, :cond_9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    :cond_9
    move-object v6, v3

    .line 798
    .local v6, "spec":Ljava/lang/String;
    :goto_5
    if-eqz v6, :cond_a

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    move v7, v8

    goto :goto_6

    :cond_a
    move v7, v2

    :goto_6
    iput-boolean v7, p0, Lcom/android/internal/policy/DecorView;->mHasDisplayCutout:Z

    .line 799
    if-nez v7, :cond_d

    .line 800
    const-string v7, "config_subBuiltInDisplayCutout"

    invoke-virtual {v4, v7, v1, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 802
    .local v0, "subResId":I
    nop

    .line 803
    if-lez v0, :cond_b

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 802
    :cond_b
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    move v2, v8

    :cond_c
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mHasDisplayCutout:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 807
    .end local v0    # "subResId":I
    .end local v5    # "resId":I
    .end local v6    # "spec":Ljava/lang/String;
    :cond_d
    goto :goto_7

    .line 805
    :catch_0
    move-exception v0

    .line 806
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not update hasDisplayCutout. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_7
    const v0, 0x1050477

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/DecorView;->mRoundedCornerRadius:I

    .line 810
    const v0, 0x1050308

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/DecorView;->mRoundedCornerRadiusForLetterBox:I

    .line 812
    const v0, 0x1050309

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/DecorView;->mRoundedCornerRadiusForMultiWindow:I

    .line 815
    return-void
.end method

.method static synthetic blacklist access$000(Lcom/android/internal/policy/DecorView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/DecorView;

    .line 252
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic blacklist access$100(Lcom/android/internal/policy/DecorView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/DecorView;

    .line 252
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic blacklist access$200(Lcom/android/internal/policy/DecorView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/DecorView;

    .line 252
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private blacklist addKnoxBadge()V
    .locals 2

    .line 6030
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadgeViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    if-nez v0, :cond_0

    .line 6031
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->setKnoxBadge()V

    .line 6033
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadgeViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadgeView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 6034
    return-void
.end method

.method public static blacklist calculateBarColor(IIIIIIZ)I
    .locals 8
    .param p0, "flags"    # I
    .param p1, "translucentFlag"    # I
    .param p2, "semiTransparentBarColor"    # I
    .param p3, "barColor"    # I
    .param p4, "appearance"    # I
    .param p5, "lightAppearanceFlag"    # I
    .param p6, "scrimTransparent"    # Z

    .line 2202
    const/high16 v7, -0x1000000

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, Lcom/android/internal/policy/DecorView;->calculateBarColor(IIIIIIZI)I

    move-result v0

    return v0
.end method

.method public static blacklist calculateBarColor(IIIIIIZI)I
    .locals 2
    .param p0, "flags"    # I
    .param p1, "translucentFlag"    # I
    .param p2, "semiTransparentBarColor"    # I
    .param p3, "barColor"    # I
    .param p4, "appearance"    # I
    .param p5, "lightAppearanceFlag"    # I
    .param p6, "scrimTransparent"    # Z
    .param p7, "deviceDefaultColor"    # I

    .line 2210
    and-int v0, p0, p1

    if-eqz v0, :cond_0

    .line 2211
    return p2

    .line 2212
    :cond_0
    const/high16 v0, -0x80000000

    and-int/2addr v0, p0

    if-nez v0, :cond_1

    .line 2215
    return p7

    .line 2219
    :cond_1
    if-eqz p6, :cond_4

    invoke-static {p3}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-nez v0, :cond_4

    .line 2220
    and-int v0, p4, p5

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 2221
    .local v0, "light":Z
    :goto_0
    if-eqz v0, :cond_3

    const v1, -0x19000001

    goto :goto_1

    :cond_3
    move v1, p2

    :goto_1
    return v1

    .line 2223
    .end local v0    # "light":Z
    :cond_4
    return p3
.end method

.method private blacklist calculateNavigationBarColor(I)I
    .locals 9
    .param p1, "appearance"    # I

    .line 2187
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v3, p0, Lcom/android/internal/policy/DecorView;->mSemiTransparentBarColor:I

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v4, v0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mEnsureNavigationBarContrastWhenTransparent:Z

    if-eqz v0, :cond_0

    .line 2191
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x111018b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v7, v0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 2194
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getDeviceDefaultNavigationBarColor()I

    move-result v8

    .line 2187
    const/high16 v2, 0x8000000

    const/16 v6, 0x10

    move v5, p1

    invoke-static/range {v1 .. v8}, Lcom/android/internal/policy/DecorView;->calculateBarColor(IIIIIIZI)I

    move-result v0

    return v0
.end method

.method private blacklist calculateStatusBarColor(I)I
    .locals 8
    .param p1, "appearance"    # I

    .line 2180
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v3, p0, Lcom/android/internal/policy/DecorView;->mSemiTransparentBarColor:I

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v4, v0, Lcom/android/internal/policy/PhoneWindow;->mStatusBarColor:I

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-boolean v7, v0, Lcom/android/internal/policy/PhoneWindow;->mEnsureStatusBarContrastWhenTransparent:Z

    const/high16 v2, 0x4000000

    const/16 v6, 0x8

    move v5, p1

    invoke-static/range {v1 .. v7}, Lcom/android/internal/policy/DecorView;->calculateBarColor(IIIIIIZ)I

    move-result v0

    return v0
.end method

.method private blacklist checkEdgeFlags(IILandroid/view/MotionEvent;)I
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "event"    # Landroid/view/MotionEvent;

    .line 5075
    const/4 v0, 0x0

    if-ltz p1, :cond_9

    if-ltz p2, :cond_9

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWidth()I

    move-result v1

    if-gt p1, v1, :cond_9

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getHeight()I

    move-result v1

    if-le p2, v1, :cond_0

    goto/16 :goto_4

    .line 5079
    :cond_0
    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getDecorCaptionResources()Lcom/samsung/android/util/DecorCaptionResources;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/util/DecorCaptionResources;->getDensity()F

    move-result v2

    mul-float/2addr v2, v1

    float-to-int v1, v2

    .line 5080
    .local v1, "resizeArea":I
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/internal/widget/DecorCaptionView;->getCaptionHeight()I

    move-result v0

    .line 5081
    .local v0, "captionHeight":I
    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mIsDexEnabled:Z

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getMultiSplitActions()Lcom/samsung/android/multiwindow/MultiSplitActions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isHeaderTypeBar()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 5082
    :cond_2
    add-int v2, v0, v1

    goto :goto_1

    :cond_3
    :goto_0
    move v2, v1

    .line 5083
    .local v2, "topResizeArea":I
    :goto_1
    sget-boolean v3, Lcom/android/internal/policy/DecorView;->DEBUG_CAPTION:Z

    if-eqz v3, :cond_4

    .line 5084
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkEdgeFlags: x="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " y="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " range={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5085
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWidth()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getHeight()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "} captionHeight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5084
    const-string v4, "DecorView"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5087
    :cond_4
    const/4 v3, 0x0

    .line 5088
    .local v3, "flags":I
    if-gt p2, v2, :cond_5

    .line 5089
    or-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 5090
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getHeight()I

    move-result v4

    sub-int/2addr v4, v1

    if-lt p2, v4, :cond_6

    .line 5091
    or-int/lit8 v3, v3, 0x2

    .line 5093
    :cond_6
    :goto_2
    if-gt p1, v1, :cond_7

    .line 5094
    or-int/lit8 v3, v3, 0x4

    goto :goto_3

    .line 5095
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWidth()I

    move-result v4

    sub-int/2addr v4, v1

    if-lt p1, v4, :cond_8

    .line 5096
    or-int/lit8 v3, v3, 0x8

    .line 5098
    :cond_8
    :goto_3
    return v3

    .line 5076
    .end local v0    # "captionHeight":I
    .end local v1    # "resizeArea":I
    .end local v2    # "topResizeArea":I
    .end local v3    # "flags":I
    :cond_9
    :goto_4
    return v0
.end method

.method private blacklist checkImmersiveModeBySystemUiVisibility(I)Z
    .locals 4
    .param p1, "systemUiVis"    # I

    .line 4855
    sget-boolean v0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->DEBUG:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 4856
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkImmersiveModeBySystemUiVisibility: SYSTEM_UI_FLAG_IMMERSIVE="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    and-int/lit16 v3, p1, 0x800

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " SYSTEM_UI_FLAG_IMMERSIVE_STICKY="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    and-int/lit16 v3, p1, 0x1000

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " SYSTEM_UI_FLAG_HIDE_NAVIGATION="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    move v3, v2

    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " callers="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v3, 0x7

    .line 4860
    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4856
    invoke-static {v0}, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->log(Ljava/lang/String;)V

    .line 4862
    :cond_3
    and-int/lit16 v0, p1, 0x1800

    if-eqz v0, :cond_4

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_4

    .line 4864
    return v1

    .line 4866
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->hasDecorCaptionWindow()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4867
    sget-boolean v0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->DEBUG:Z

    if-eqz v0, :cond_7

    .line 4868
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkImmersiveModeBySystemUiVisibility: hasDecorCaptionWindow=true SYSTEM_UI_FLAG_FULLSCREEN="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    and-int/lit8 v3, p1, 0x4

    if-eqz v3, :cond_5

    move v3, v1

    goto :goto_3

    :cond_5
    move v3, v2

    :goto_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " FLAG_FULLSCREEN="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 4871
    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 4872
    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_6

    move v3, v1

    goto :goto_4

    :cond_6
    move v3, v2

    :goto_4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4868
    invoke-static {v0}, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->log(Ljava/lang/String;)V

    .line 4876
    :cond_7
    and-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 4877
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_8

    goto :goto_5

    :cond_8
    move v1, v2

    goto :goto_6

    :cond_9
    :goto_5
    nop

    .line 4876
    :goto_6
    return v1

    .line 4879
    :cond_a
    return v2
.end method

.method private blacklist checkReadyToResizeFreeform(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 5021
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsDexEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isFullscreenMode()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->hasDecorCaptionWindow()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isDecorCaptionWindow()Z

    move-result v0

    if-nez v0, :cond_9

    .line 5022
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    const/high16 v2, 0x10000000

    and-int/2addr v0, v2

    if-nez v0, :cond_9

    .line 5023
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    goto/16 :goto_3

    .line 5028
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 5029
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 5030
    .local v3, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const-string v5, " mEdgeFlag="

    const-string v6, " y="

    const-string v7, " x="

    const-string v8, " event="

    const-string v9, "checkReadyToResizeFreeform: "

    const-string v10, "DecorView"

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_2

    .line 5041
    :pswitch_0
    iget-boolean v4, p0, Lcom/android/internal/policy/DecorView;->mCheckEdgeFirst:Z

    if-nez v4, :cond_8

    .line 5042
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/policy/DecorView;->mCheckEdgeFirst:Z

    .line 5043
    sget-boolean v11, Lcom/android/internal/policy/DecorView;->DEBUG_CAPTION:Z

    if-eqz v11, :cond_2

    .line 5044
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 5045
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    invoke-static {v9}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 5046
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/policy/DecorView;->mEdgeFlag:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5044
    invoke-static {v10, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5048
    :cond_2
    iget v5, p0, Lcom/android/internal/policy/DecorView;->mEdgeFlag:I

    if-eqz v5, :cond_8

    .line 5049
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v5}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 5050
    .local v5, "context":Landroid/content/Context;
    instance-of v6, v5, Landroid/app/Activity;

    if-eqz v6, :cond_7

    .line 5051
    invoke-virtual {v5}, Landroid/content/Context;->getActivityToken()Landroid/os/IBinder;

    move-result-object v6

    .line 5052
    .local v6, "token":Landroid/os/IBinder;
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v7

    if-eq v7, v2, :cond_4

    .line 5053
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    const/4 v7, 0x2

    if-ne v2, v7, :cond_3

    goto :goto_0

    :cond_3
    move v4, v1

    goto :goto_1

    :cond_4
    :goto_0
    nop

    :goto_1
    move v2, v4

    .line 5054
    .local v2, "isPointerType":Z
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    if-nez v4, :cond_5

    .line 5055
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/DecorView;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 5057
    :cond_5
    if-eqz v11, :cond_6

    .line 5058
    const-string v4, "checkReadyToResizeFreeform: calling startResizingFreeformTask"

    invoke-static {v10, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5060
    :cond_6
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 5061
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    float-to-int v8, v8

    .line 5060
    invoke-virtual {v4, v6, v7, v8, v2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->startResizingFreeformTask(Landroid/os/IBinder;IIZ)V

    .line 5063
    .end local v2    # "isPointerType":Z
    .end local v5    # "context":Landroid/content/Context;
    .end local v6    # "token":Landroid/os/IBinder;
    :cond_7
    goto :goto_2

    .line 5067
    :pswitch_1
    iput-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mCheckEdgeFirst:Z

    .line 5068
    iput v1, p0, Lcom/android/internal/policy/DecorView;->mEdgeFlag:I

    goto :goto_2

    .line 5032
    :pswitch_2
    iput-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mCheckEdgeFirst:Z

    .line 5033
    invoke-direct {p0, v0, v3, p1}, Lcom/android/internal/policy/DecorView;->checkEdgeFlags(IILandroid/view/MotionEvent;)I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/DecorView;->mEdgeFlag:I

    .line 5034
    sget-boolean v2, Lcom/android/internal/policy/DecorView;->DEBUG_CAPTION:Z

    if-eqz v2, :cond_8

    .line 5035
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 5036
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-static {v4}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 5037
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/internal/policy/DecorView;->mEdgeFlag:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5035
    invoke-static {v10, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5071
    :cond_8
    :goto_2
    return v1

    .line 5024
    .end local v0    # "x":I
    .end local v3    # "y":I
    :cond_9
    :goto_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist cleanupFloatingActionModeViews()V
    .locals 3

    .line 1672
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1673
    invoke-virtual {v0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->dismiss()V

    .line 1674
    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    .line 1676
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1677
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v2, :cond_1

    .line 1678
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 1679
    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1680
    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 1682
    :cond_1
    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    .line 1684
    :cond_2
    return-void
.end method

.method private blacklist cleanupPrimaryActionMode()V
    .locals 1

    .line 1662
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 1663
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1664
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    .line 1666
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_1

    .line 1667
    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->killMode()V

    .line 1669
    :cond_1
    return-void
.end method

.method private blacklist createActionMode(ILandroid/view/ActionMode$Callback2;Landroid/view/View;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "type"    # I
    .param p2, "callback"    # Landroid/view/ActionMode$Callback2;
    .param p3, "originatingView"    # Landroid/view/View;

    .line 2989
    sparse-switch p1, :sswitch_data_0

    .line 2992
    invoke-direct {p0, p2}, Lcom/android/internal/policy/DecorView;->createStandaloneActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0

    .line 2996
    :sswitch_0
    invoke-direct {p0, p3, p2}, Lcom/android/internal/policy/DecorView;->createFloatingActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback2;)Landroid/view/ActionMode;

    move-result-object v0

    .line 2997
    .local v0, "mode":Landroid/view/ActionMode;
    invoke-virtual {v0, p1}, Landroid/view/ActionMode;->setType(I)V

    .line 2998
    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x63 -> :sswitch_0
    .end sparse-switch
.end method

.method private blacklist createDecorCaptionView(Landroid/view/LayoutInflater;)Lcom/android/internal/widget/DecorCaptionView;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .line 3665
    const/4 v0, 0x0

    .line 3666
    .local v0, "decorCaptionView":Lcom/android/internal/widget/DecorCaptionView;
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    if-nez v0, :cond_1

    .line 3667
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/DecorView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3668
    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v3, :cond_0

    .line 3670
    move-object v0, v2

    check-cast v0, Lcom/android/internal/widget/DecorCaptionView;

    .line 3672
    invoke-virtual {v0}, Lcom/android/internal/widget/DecorCaptionView;->restoreOutlineProvider()V

    .line 3674
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/DecorView;->removeViewAt(I)V

    .line 3666
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3679
    .end local v1    # "i":I
    :cond_1
    if-eqz v0, :cond_2

    .line 3680
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->removeView(Landroid/view/View;)V

    .line 3682
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->hasDecorCaptionWindow()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3683
    const/4 v0, 0x0

    .line 3684
    iget-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mCalledOnAttachedToWindow:Z

    if-eqz v1, :cond_5

    .line 3685
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->createDecorCaptionWindowIfNeeded()V

    goto :goto_1

    .line 3687
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->hasDecorCaptionView()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3688
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->inflateDecorCaptionView(Landroid/view/LayoutInflater;)Lcom/android/internal/widget/DecorCaptionView;

    move-result-object v0

    .line 3689
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->getNeedsShowingCaption()Z

    move-result v1

    .line 3690
    .local v1, "showCaption":Z
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/DecorCaptionView;->setPhoneWindow(Lcom/android/internal/policy/PhoneWindow;Z)V

    .line 3691
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/DecorView;->enableCaption(Z)V

    .line 3692
    .end local v1    # "showCaption":Z
    goto :goto_1

    .line 3693
    :cond_4
    const/4 v0, 0x0

    .line 3694
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/DecorView;->enableCaption(Z)V

    .line 3717
    :cond_5
    :goto_1
    return-object v0
.end method

.method private blacklist createDecorCaptionWindowIfNeeded()V
    .locals 4

    .line 4767
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsDexEnabled:Z

    if-eqz v0, :cond_3

    .line 4768
    sget-boolean v0, Lcom/android/internal/policy/DecorView;->DEBUG_CAPTION:Z

    const-string v1, "DecorView"

    if-eqz v0, :cond_0

    .line 4769
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DexCompat] createDecorCaptionWindowIfNeeded: hasDecorCaptionWindow="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4770
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->hasDecorCaptionWindow()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " isFloating="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 4771
    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->isFloating()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " isFullScreen="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4772
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isFullscreenMode()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Callers="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x6

    .line 4773
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4769
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4776
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->isFloating()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->hasDecorCaptionWindow()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4777
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mCompatWindow:Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4778
    const-string v0, "createDecorCaptionWindowIfNeeded: DecorCaptionWindow is already been created."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4779
    return-void

    .line 4782
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->removeDecorCaptionWindow()V

    .line 4783
    new-instance v0, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-direct {v0, v2}, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;-><init>(Landroid/view/Window;)V

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mCompatWindow:Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;

    .line 4784
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->addWindow()V

    .line 4787
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateDecorCaptionWindowVisibility()V

    .line 4789
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getLastRequestedOrientation()I

    move-result v0

    .line 4790
    .local v0, "lastRequestedOrientation":I
    const/4 v2, -0x2

    if-eq v0, v2, :cond_2

    .line 4794
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->dispatchRequestedOrientation(I)V

    .line 4797
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Created DecorCaptionWindow, window="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", this="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4800
    .end local v0    # "lastRequestedOrientation":I
    :cond_3
    return-void
.end method

.method private blacklist createFloatingActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback2;)Landroid/view/ActionMode;
    .locals 3
    .param p1, "originatingView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback2;

    .line 3147
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 3148
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 3150
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->cleanupFloatingActionModeViews()V

    .line 3151
    new-instance v0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;-><init>(Landroid/view/Window;)V

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    .line 3152
    new-instance v0, Lcom/android/internal/view/FloatingActionMode;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    invoke-direct {v0, v1, p2, p1, v2}, Lcom/android/internal/view/FloatingActionMode;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback2;Landroid/view/View;Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;)V

    .line 3154
    .local v0, "mode":Lcom/android/internal/view/FloatingActionMode;
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    .line 3155
    new-instance v1, Lcom/android/internal/policy/DecorView$12;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/policy/DecorView$12;-><init>(Lcom/android/internal/policy/DecorView;Lcom/android/internal/view/FloatingActionMode;)V

    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 3163
    return-object v0
.end method

.method private blacklist createStandaloneActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 9
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .line 3013
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->endOnGoingFadeAnimation()V

    .line 3014
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->cleanupPrimaryActionMode()V

    .line 3021
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3022
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->isFloating()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3024
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 3025
    .local v0, "outValue":Landroid/util/TypedValue;
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 3026
    .local v4, "baseTheme":Landroid/content/res/Resources$Theme;
    const v5, 0x1010431

    invoke-virtual {v4, v5, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 3029
    iget v5, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_1

    .line 3030
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    .line 3031
    .local v5, "actionBarTheme":Landroid/content/res/Resources$Theme;
    invoke-virtual {v5, v4}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 3032
    iget v6, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v6, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 3034
    new-instance v6, Landroid/view/ContextThemeWrapper;

    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 3035
    .local v6, "actionBarContext":Landroid/content/Context;
    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 3036
    .end local v5    # "actionBarTheme":Landroid/content/res/Resources$Theme;
    goto :goto_0

    .line 3037
    .end local v6    # "actionBarContext":Landroid/content/Context;
    :cond_1
    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    .line 3040
    .restart local v6    # "actionBarContext":Landroid/content/Context;
    :goto_0
    new-instance v5, Lcom/android/internal/widget/ActionBarContextView;

    invoke-direct {v5, v6}, Lcom/android/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    .line 3041
    new-instance v5, Landroid/widget/PopupWindow;

    const v7, 0x1120008

    invoke-direct {v5, v6, v2, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v5, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    .line 3043
    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 3045
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v5, v7}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 3046
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    const/4 v7, -0x1

    invoke-virtual {v5, v7}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 3048
    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v7, 0x10102eb

    invoke-virtual {v5, v7, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 3050
    iget v5, v0, Landroid/util/TypedValue;->data:I

    .line 3051
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 3050
    invoke-static {v5, v7}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v5

    .line 3052
    .local v5, "height":I
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v7, v5}, Lcom/android/internal/widget/ActionBarContextView;->setContentHeight(I)V

    .line 3053
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    const/4 v8, -0x2

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 3054
    new-instance v7, Lcom/android/internal/policy/DecorView$10;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/DecorView$10;-><init>(Lcom/android/internal/policy/DecorView;)V

    iput-object v7, p0, Lcom/android/internal/policy/DecorView;->mShowPrimaryActionModePopup:Ljava/lang/Runnable;

    .line 3083
    .end local v0    # "outValue":Landroid/util/TypedValue;
    .end local v4    # "baseTheme":Landroid/content/res/Resources$Theme;
    .end local v5    # "height":I
    .end local v6    # "actionBarContext":Landroid/content/Context;
    goto :goto_1

    .line 3084
    :cond_2
    const v0, 0x10201c7

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 3085
    .local v0, "stub":Landroid/view/ViewStub;
    if-eqz v0, :cond_3

    .line 3086
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/ActionBarContextView;

    iput-object v4, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    .line 3087
    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    .line 3091
    .end local v0    # "stub":Landroid/view/ViewStub;
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_5

    .line 3092
    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->killMode()V

    .line 3093
    new-instance v0, Lcom/android/internal/view/StandaloneActionMode;

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    .line 3094
    invoke-virtual {v2}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    if-nez v5, :cond_4

    move v1, v3

    :cond_4
    invoke-direct {v0, v2, v4, p1, v1}, Lcom/android/internal/view/StandaloneActionMode;-><init>(Landroid/content/Context;Lcom/android/internal/widget/ActionBarContextView;Landroid/view/ActionMode$Callback;Z)V

    .line 3096
    .local v0, "mode":Landroid/view/ActionMode;
    return-object v0

    .line 3098
    .end local v0    # "mode":Landroid/view/ActionMode;
    :cond_5
    return-object v2
.end method

.method private blacklist dipToPx(F)F
    .locals 2
    .param p1, "dip"    # F

    .line 4232
    nop

    .line 4233
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 4232
    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method private blacklist drawLegacyNavigationBarBackground(Landroid/graphics/RecordingCanvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/RecordingCanvas;

    .line 3989
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mLastDrawLegacyNavigationBarBackground:Z

    iget-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mDrawLegacyNavigationBarBackground:Z

    if-eq v0, v1, :cond_0

    .line 3991
    iput-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mLastDrawLegacyNavigationBarBackground:Z

    .line 3992
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->updateForceLightNavigationBar()V

    .line 3995
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mDrawLegacyNavigationBarBackground:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mDrawLegacyNavigationBarBackgroundHandled:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3998
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v0, v0, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    .line 3999
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_2

    .line 4000
    return-void

    .line 4002
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v3, v1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v5, v1

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    int-to-float v6, v1

    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mLegacyNavigationBarBackgroundPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/RecordingCanvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 4004
    return-void

    .line 3996
    .end local v0    # "v":Landroid/view/View;
    :cond_3
    :goto_0
    return-void
.end method

.method private blacklist drawResizingShadowIfNeeded(Landroid/graphics/RecordingCanvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/RecordingCanvas;

    .line 3972
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mResizeMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 3973
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->isTranslucent()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 3974
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->isShowingWallpaper()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3977
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/RecordingCanvas;->save()I

    .line 3978
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFrameOffsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/RecordingCanvas;->translate(FF)V

    .line 3979
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWidth()I

    move-result v0

    int-to-float v5, v0

    iget v0, p0, Lcom/android/internal/policy/DecorView;->mResizeShadowSize:I

    int-to-float v6, v0

    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mHorizontalResizeShadowPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/RecordingCanvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 3980
    invoke-virtual {p1}, Landroid/graphics/RecordingCanvas;->restore()V

    .line 3981
    invoke-virtual {p1}, Landroid/graphics/RecordingCanvas;->save()I

    .line 3982
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mFrameOffsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RecordingCanvas;->translate(FF)V

    .line 3983
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mResizeShadowSize:I

    int-to-float v5, v0

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mVerticalResizeShadowPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/RecordingCanvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 3984
    invoke-virtual {p1}, Landroid/graphics/RecordingCanvas;->restore()V

    .line 3985
    return-void

    .line 3975
    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist drawableChanged()V
    .locals 10

    .line 2564
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mChanging:Z

    if-eqz v0, :cond_0

    .line 2565
    return-void

    .line 2569
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2570
    .local v0, "framePadding":Landroid/graphics/Rect;
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 2572
    .local v1, "backgroundPadding":Landroid/graphics/Rect;
    :goto_1
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/policy/DecorView;->setPadding(IIII)V

    .line 2576
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->requestLayout()V

    .line 2577
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->invalidate()V

    .line 2579
    const/4 v2, -0x1

    .line 2580
    .local v2, "opacity":I
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 2581
    .local v3, "winConfig":Landroid/app/WindowConfiguration;
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-boolean v4, v4, Lcom/android/internal/policy/PhoneWindow;->mRenderShadowsInCompositor:Z

    if-eqz v4, :cond_3

    .line 2583
    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    .line 2586
    .local v4, "renderShadowsInCompositor":Z
    :goto_2
    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->hasWindowShadow()Z

    move-result v5

    if-eqz v5, :cond_4

    if-nez v4, :cond_4

    .line 2588
    const/4 v2, -0x3

    goto :goto_5

    .line 2590
    :cond_4
    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->isPopOver()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2591
    const/4 v2, -0x3

    goto :goto_5

    .line 2599
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 2600
    .local v5, "bg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 2601
    .local v6, "fg":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_c

    .line 2602
    if-nez v6, :cond_6

    .line 2603
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    goto :goto_5

    .line 2604
    :cond_6
    iget v7, v0, Landroid/graphics/Rect;->left:I

    if-gtz v7, :cond_b

    iget v7, v0, Landroid/graphics/Rect;->top:I

    if-gtz v7, :cond_b

    iget v7, v0, Landroid/graphics/Rect;->right:I

    if-gtz v7, :cond_b

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    if-gtz v7, :cond_b

    .line 2608
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v7

    .line 2609
    .local v7, "fop":I
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v8

    .line 2612
    .local v8, "bop":I
    const/4 v9, -0x1

    if-eq v7, v9, :cond_a

    if-ne v8, v9, :cond_7

    goto :goto_3

    .line 2614
    :cond_7
    if-nez v7, :cond_8

    .line 2615
    move v2, v8

    goto :goto_4

    .line 2616
    :cond_8
    if-nez v8, :cond_9

    .line 2617
    move v2, v7

    goto :goto_4

    .line 2619
    :cond_9
    invoke-static {v7, v8}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v2

    goto :goto_4

    .line 2613
    :cond_a
    :goto_3
    const/4 v2, -0x1

    .line 2621
    .end local v7    # "fop":I
    .end local v8    # "bop":I
    :goto_4
    goto :goto_5

    .line 2627
    :cond_b
    const/4 v2, -0x3

    .line 2637
    .end local v5    # "bg":Landroid/graphics/drawable/Drawable;
    .end local v6    # "fg":Landroid/graphics/drawable/Drawable;
    :cond_c
    :goto_5
    iput v2, p0, Lcom/android/internal/policy/DecorView;->mDefaultOpacity:I

    .line 2638
    iget v5, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v5, :cond_d

    .line 2639
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v5, v2}, Lcom/android/internal/policy/PhoneWindow;->setDefaultWindowFormat(I)V

    .line 2641
    :cond_d
    return-void
.end method

.method private blacklist endOnGoingFadeAnimation()V
    .locals 1

    .line 3102
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 3103
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 3105
    :cond_0
    return-void
.end method

.method private static blacklist enforceNonTranslucentBackground(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "windowTranslucent"    # Z

    .line 3827
    if-nez p1, :cond_0

    instance-of v0, p0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_0

    .line 3828
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    .line 3829
    .local v0, "colorDrawable":Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v1

    .line 3830
    .local v1, "color":I
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    const/16 v3, 0xff

    if-eq v2, v3, :cond_0

    .line 3831
    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 3832
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/ColorDrawable;

    .line 3833
    .local v2, "copy":Landroid/graphics/drawable/ColorDrawable;
    nop

    .line 3834
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    .line 3833
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 3835
    return-object v2

    .line 3838
    .end local v0    # "colorDrawable":Landroid/graphics/drawable/ColorDrawable;
    .end local v1    # "color":I
    .end local v2    # "copy":Landroid/graphics/drawable/ColorDrawable;
    :cond_0
    return-object p0
.end method

.method private blacklist getBackgroundAlpha()F
    .locals 1

    .line 5960
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mPopOverBackgroundAlpha:F

    return v0
.end method

.method private final blacklist getConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .line 4358
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mActivityCurrentConfig:Landroid/content/res/Configuration;

    if-eqz v0, :cond_0

    .line 4359
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mActivityCurrentConfig:Landroid/content/res/Configuration;

    return-object v0

    .line 4361
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getContentAlpha()F
    .locals 1

    .line 5972
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mPopOverContentAlpha:F

    return v0
.end method

.method private blacklist getCurrentColor(Lcom/android/internal/policy/DecorView$ColorViewState;)I
    .locals 1
    .param p1, "state"    # Lcom/android/internal/policy/DecorView$ColorViewState;

    .line 2251
    iget-boolean v0, p1, Lcom/android/internal/policy/DecorView$ColorViewState;->visible:Z

    if-eqz v0, :cond_0

    .line 2252
    iget v0, p1, Lcom/android/internal/policy/DecorView$ColorViewState;->color:I

    return v0

    .line 2254
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist getCurrentDensityDpi(Ljava/lang/String;)I
    .locals 6
    .param p1, "msg"    # Ljava/lang/String;

    .line 4328
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mActivityCurrentConfig:Landroid/content/res/Configuration;

    const-string v1, " msg="

    const-string v2, "DecorView"

    if-eqz v0, :cond_1

    .line 4329
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    .line 4330
    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_0

    .line 4331
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mTmpDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v3}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 4332
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mTmpDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 4333
    .local v3, "densityDpi":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCurrentDensityDpi: from real metrics. densityDpi="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4334
    return v3

    .line 4336
    .end local v0    # "display":Landroid/view/Display;
    .end local v3    # "densityDpi":I
    :cond_0
    goto :goto_0

    .line 4337
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 4338
    .local v0, "appContext":Landroid/content/Context;
    if-eqz v0, :cond_2

    .line 4339
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->densityDpi:I

    .line 4340
    .restart local v3    # "densityDpi":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCurrentDensityDpi: from app context. densityDpi="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4341
    return v3

    .line 4344
    .end local v0    # "appContext":Landroid/content/Context;
    .end local v3    # "densityDpi":I
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 4345
    .local v0, "densityDpi":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurrentDensityDpi: from context. densityDpi="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4346
    return v0
.end method

.method private blacklist getKnoxBadgeStateForImmersive()Z
    .locals 1

    .line 6091
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsImmersiveModeForKnox:Z

    return v0
.end method

.method public static blacklist getNavBarSize(III)I
    .locals 1
    .param p0, "bottomInset"    # I
    .param p1, "rightInset"    # I
    .param p2, "leftInset"    # I

    .line 1854
    invoke-static {p0, p1}, Lcom/android/internal/policy/DecorView;->isNavBarToRightEdge(II)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, p1

    goto :goto_0

    .line 1855
    :cond_0
    invoke-static {p0, p2}, Lcom/android/internal/policy/DecorView;->isNavBarToLeftEdge(II)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, p2

    goto :goto_0

    :cond_1
    move v0, p0

    .line 1854
    :goto_0
    return v0
.end method

.method public static blacklist getNavBarSizeForBadge(III)I
    .locals 1
    .param p0, "leftInset"    # I
    .param p1, "rightInset"    # I
    .param p2, "bottomInset"    # I

    .line 1859
    sget v0, Lcom/android/internal/policy/DecorView;->sKnoxBadgeRightCutout:I

    sub-int v0, p1, v0

    invoke-static {p2, v0}, Lcom/android/internal/policy/DecorView;->isNavBarToRightEdge(II)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, p1

    goto :goto_0

    .line 1860
    :cond_0
    invoke-static {p2, p0}, Lcom/android/internal/policy/DecorView;->isNavBarToLeftEdge(II)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, p0

    goto :goto_0

    :cond_1
    move v0, p2

    .line 1859
    :goto_0
    return v0
.end method

.method public static blacklist getNavigationBarRect(IILandroid/graphics/Rect;Landroid/graphics/Rect;F)V
    .locals 6
    .param p0, "canvasWidth"    # I
    .param p1, "canvasHeight"    # I
    .param p2, "systemBarInsets"    # Landroid/graphics/Rect;
    .param p3, "outRect"    # Landroid/graphics/Rect;
    .param p4, "scale"    # F

    .line 1865
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    mul-float/2addr v0, p4

    float-to-int v0, v0

    .line 1866
    .local v0, "bottomInset":I
    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    mul-float/2addr v1, p4

    float-to-int v1, v1

    .line 1867
    .local v1, "leftInset":I
    iget v2, p2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    mul-float/2addr v2, p4

    float-to-int v2, v2

    .line 1868
    .local v2, "rightInset":I
    invoke-static {v0, v2, v1}, Lcom/android/internal/policy/DecorView;->getNavBarSize(III)I

    move-result v3

    .line 1869
    .local v3, "size":I
    invoke-static {v0, v2}, Lcom/android/internal/policy/DecorView;->isNavBarToRightEdge(II)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 1870
    sub-int v4, p0, v3

    invoke-virtual {p3, v4, v5, p0, p1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 1871
    :cond_0
    invoke-static {v0, v1}, Lcom/android/internal/policy/DecorView;->isNavBarToLeftEdge(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1872
    invoke-virtual {p3, v5, v5, v3, p1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 1874
    :cond_1
    sub-int v4, p1, v3

    invoke-virtual {p3, v5, v4, p0, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 1876
    :goto_0
    return-void
.end method

.method private blacklist getNeedsShowingCaption()Z
    .locals 2

    .line 4631
    const/4 v0, 0x0

    .line 4633
    .local v0, "showCaption":Z
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->hasWindowDecorCaption()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isFullSize()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4634
    const/4 v0, 0x1

    .line 4639
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mIsDexEnabled:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isFreeformMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4640
    const/4 v0, 0x1

    .line 4643
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isImmersiveFullscreenOnDex()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mImmersiveHelper:Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->isTransient()Z

    move-result v1

    if-nez v1, :cond_3

    .line 4644
    :cond_2
    const/4 v0, 0x0

    .line 4648
    :cond_3
    return v0
.end method

.method public static blacklist getResizingBackgroundDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "backgroundDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "fallbackDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "windowTranslucent"    # Z

    .line 3811
    if-eqz p0, :cond_0

    .line 3812
    invoke-static {p0, p2}, Lcom/android/internal/policy/DecorView;->enforceNonTranslucentBackground(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 3815
    :cond_0
    if-eqz p1, :cond_1

    .line 3816
    invoke-static {p1, p2}, Lcom/android/internal/policy/DecorView;->enforceNonTranslucentBackground(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 3818
    :cond_1
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x1000000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method private blacklist getStagePosition()I
    .locals 1

    .line 4378
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getStagePosition()I

    move-result v0

    return v0
.end method

.method private static blacklist getTitleSuffix(Landroid/view/WindowManager$LayoutParams;)Ljava/lang/String;
    .locals 3
    .param p0, "params"    # Landroid/view/WindowManager$LayoutParams;

    .line 4247
    const-string v0, ""

    if-nez p0, :cond_0

    .line 4248
    return-object v0

    .line 4250
    :cond_0
    invoke-virtual {p0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\."

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 4251
    .local v1, "split":[Ljava/lang/String;
    array-length v2, v1

    if-lez v2, :cond_1

    .line 4252
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v1, v0

    return-object v0

    .line 4254
    :cond_1
    return-object v0
.end method

.method private blacklist hasWindowDecorCaption()Z
    .locals 1

    .line 4621
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->isPopOver()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4622
    const/4 v0, 0x0

    return v0

    .line 4624
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mActivityCurrentConfig:Landroid/content/res/Configuration;

    if-eqz v0, :cond_1

    .line 4625
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mActivityCurrentConfig:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->hasWindowDecorCaption()Z

    move-result v0

    return v0

    .line 4627
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->hasWindowDecorCaption()Z

    move-result v0

    return v0
.end method

.method private blacklist hideKnoxBadge()V
    .locals 2

    .line 6024
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadgeViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    if-eqz v0, :cond_0

    .line 6025
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadgeView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 6027
    :cond_0
    return-void
.end method

.method private blacklist hidePopOver()V
    .locals 8

    .line 5987
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->POP_OVER_BACKGROUND_ALPHA:Landroid/util/FloatProperty;

    const/4 v1, 0x1

    new-array v2, v1, [F

    const v3, 0x3e4ccccd    # 0.2f

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 5988
    .local v0, "animBackground":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 5989
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 5990
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->POP_OVER_CONTENT_ALPHA:Landroid/util/FloatProperty;

    new-array v6, v1, [F

    const/4 v7, 0x0

    aput v7, v6, v4

    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 5991
    .local v5, "animContent":Landroid/animation/ObjectAnimator;
    invoke-virtual {v5, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 5992
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 5993
    .local v2, "animSet":Landroid/animation/AnimatorSet;
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v5, v3, v4

    aput-object v0, v3, v1

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 5994
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 5995
    return-void
.end method

.method private blacklist indexOfChildToRoot(Landroid/view/View;)I
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .line 2230
    const/4 v0, -0x1

    if-nez p1, :cond_0

    .line 2231
    return v0

    .line 2233
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 2234
    .local v1, "p":Landroid/view/ViewParent;
    if-ne v1, p0, :cond_1

    .line 2235
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/DecorView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    return v0

    .line 2237
    :cond_1
    :goto_0
    if-eqz v1, :cond_3

    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_3

    .line 2238
    move-object v2, v1

    check-cast v2, Landroid/view/View;

    .line 2239
    .local v2, "v":Landroid/view/View;
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 2240
    if-ne v1, p0, :cond_2

    .line 2241
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/DecorView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    return v0

    .line 2243
    .end local v2    # "v":Landroid/view/View;
    :cond_2
    goto :goto_0

    .line 2245
    :cond_3
    return v0
.end method

.method private blacklist inflateDecorCaptionView(Landroid/view/LayoutInflater;)Lcom/android/internal/widget/DecorCaptionView;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .line 3738
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3739
    .local v0, "appContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3741
    .local v1, "isNightMode":Z
    :goto_0
    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v1, :cond_1

    .line 3742
    const v4, 0x1030128

    goto :goto_1

    :cond_1
    const v4, 0x103012b

    :goto_1
    invoke-direct {v2, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 3743
    .local v2, "context":Landroid/content/Context;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "app context info: config="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", dm="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3744
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3743
    const-string v5, "DecorView"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3745
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "decor context info: config="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3746
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3745
    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3751
    .end local v0    # "appContext":Landroid/content/Context;
    .end local v1    # "isNightMode":Z
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 3752
    nop

    .line 3754
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsDexEnabled:Z

    if-eqz v0, :cond_2

    const v0, 0x109007c

    goto :goto_2

    .line 3756
    :cond_2
    const v0, 0x109007b

    :goto_2
    const/4 v1, 0x0

    .line 3752
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/DecorCaptionView;

    .line 3757
    .local v0, "view":Lcom/android/internal/widget/DecorCaptionView;
    invoke-direct {p0, v0}, Lcom/android/internal/policy/DecorView;->setDecorCaptionShade(Lcom/android/internal/widget/DecorCaptionView;)V

    .line 3758
    return-object v0
.end method

.method private blacklist initResizingPaints()V
    .locals 18

    .line 3958
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1060296

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 3960
    .local v1, "startColor":I
    iget-object v2, v0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x1060295

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    .line 3962
    .local v2, "endColor":I
    add-int v3, v1, v2

    const/4 v4, 0x2

    div-int/2addr v3, v4

    .line 3963
    .local v3, "middleColor":I
    iget-object v5, v0, Lcom/android/internal/policy/DecorView;->mHorizontalResizeShadowPaint:Landroid/graphics/Paint;

    new-instance v14, Landroid/graphics/LinearGradient;

    iget v6, v0, Lcom/android/internal/policy/DecorView;->mResizeShadowSize:I

    int-to-float v10, v6

    const/4 v15, 0x3

    new-array v11, v15, [I

    const/16 v16, 0x0

    aput v1, v11, v16

    const/16 v17, 0x1

    aput v3, v11, v17

    aput v2, v11, v4

    new-array v12, v15, [F

    fill-array-data v12, :array_0

    sget-object v13, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v6, v14

    invoke-direct/range {v6 .. v13}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v5, v14}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 3966
    iget-object v5, v0, Lcom/android/internal/policy/DecorView;->mVerticalResizeShadowPaint:Landroid/graphics/Paint;

    new-instance v14, Landroid/graphics/LinearGradient;

    iget v6, v0, Lcom/android/internal/policy/DecorView;->mResizeShadowSize:I

    int-to-float v9, v6

    new-array v11, v15, [I

    aput v1, v11, v16

    aput v3, v11, v17

    aput v2, v11, v4

    new-array v12, v15, [F

    fill-array-data v12, :array_1

    sget-object v13, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v10, 0x0

    move-object v6, v14

    invoke-direct/range {v6 .. v13}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v5, v14}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 3969
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private blacklist initializeDexInfo()V
    .locals 4

    .line 4717
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsDexEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mNeedToInitDexInfo:Z

    if-eqz v0, :cond_0

    .line 4718
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mNeedToInitDexInfo:Z

    .line 4720
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 4721
    .local v0, "context":Landroid/content/Context;
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 4723
    :try_start_0
    new-instance v1, Lcom/samsung/android/desktopmode/DexTaskInfo;

    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v2

    .line 4724
    invoke-interface {v2}, Landroid/app/IActivityTaskManager;->getMultiTaskingBinder()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Context;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->getDexTaskInfoFlags(Landroid/os/IBinder;)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/samsung/android/desktopmode/DexTaskInfo;-><init>(I)V

    .line 4725
    .local v1, "info":Lcom/samsung/android/desktopmode/DexTaskInfo;
    invoke-virtual {v1}, Lcom/samsung/android/desktopmode/DexTaskInfo;->isResizableToFullscreen()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mIsWindowResizable:Z

    .line 4726
    invoke-virtual {v1}, Lcom/samsung/android/desktopmode/DexTaskInfo;->isFixedOrientation()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mIsFixedOrientation:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4729
    .end local v1    # "info":Lcom/samsung/android/desktopmode/DexTaskInfo;
    goto :goto_0

    .line 4727
    :catch_0
    move-exception v1

    .line 4728
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "DecorView"

    const-string v3, "RemoteException from initializeDexInfo."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4732
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private blacklist initializeElevation()V
    .locals 3

    .line 4031
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mAllowUpdateElevation:Z

    .line 4033
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 4034
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->hasDecorCaptionWindow()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mIsDexEnabled:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isFullscreenMode()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, v1, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    .line 4036
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateElevation()V

    .line 4037
    return-void
.end method

.method private blacklist isActivity()Z
    .locals 1

    .line 4350
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getWindowControllerCallback()Landroid/view/Window$WindowControllerCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isActivityHomeOrRecent()Z
    .locals 1

    .line 5590
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 5595
    const/4 v0, 0x0

    return v0

    .line 5593
    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist isChildIntersectsWith(Landroid/view/View;)Z
    .locals 7
    .param p1, "colorView"    # Landroid/view/View;

    .line 5388
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mTmpColorViewBounds:Landroid/graphics/Rect;

    .line 5389
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 5388
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 5390
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 5391
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 5392
    .local v1, "child":Landroid/view/View;
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    if-eq v2, v1, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v2, v2, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    if-ne v2, v1, :cond_0

    .line 5393
    goto :goto_1

    .line 5395
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mTmpColorViewBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5396
    const/4 v2, 0x1

    return v2

    .line 5390
    .end local v1    # "child":Landroid/view/View;
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5399
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist isDeviceLocked()Z
    .locals 5

    .line 5600
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 5601
    .local v0, "keyguardManager":Landroid/app/KeyguardManager;
    const-string v1, "DecorView"

    if-nez v0, :cond_0

    .line 5602
    const-string v2, "keyguard service is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5603
    const/4 v1, 0x0

    return v1

    .line 5605
    :cond_0
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isDeviceLocked()Z

    move-result v2

    .line 5606
    .local v2, "deviceLocked":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isDeviceLocked = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5608
    return v2
.end method

.method private blacklist isDimBehind()Z
    .locals 3

    .line 4065
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 4066
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private blacklist isFillingScreen(Landroid/content/res/Configuration;)Z
    .locals 5
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 3511
    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 3513
    .local v0, "isFullscreen":Z
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWindowSystemUiVisibility()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getSystemUiVisibility()I

    move-result v4

    or-int/2addr v3, v4

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method private blacklist isImmersiveFullscreenOnDex()Z
    .locals 1

    .line 4883
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsDexEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isFullscreenMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsImmersiveMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isMultiSplitHandlerValid()Z
    .locals 1

    .line 992
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist isNavBarToLeftEdge(II)Z
    .locals 1
    .param p0, "bottomInset"    # I
    .param p1, "leftInset"    # I

    .line 1850
    if-nez p0, :cond_0

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist isNavBarToRightEdge(II)Z
    .locals 1
    .param p0, "bottomInset"    # I
    .param p1, "rightInset"    # I

    .line 1846
    if-nez p0, :cond_0

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isOutOfBounds(II)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 1133
    const/4 v0, -0x5

    if-lt p1, v0, :cond_1

    if-lt p2, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    if-gt p1, v0, :cond_1

    .line 1134
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    if-le p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1133
    :goto_1
    return v0
.end method

.method private blacklist isOutOfInnerBounds(II)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 1129
    if-ltz p1, :cond_1

    if-ltz p2, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWidth()I

    move-result v0

    if-gt p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getHeight()I

    move-result v0

    if-le p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private blacklist isPopOverState()Z
    .locals 1

    .line 4072
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsPopOver:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mPreventPopOverElevation:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsDexEnabled:Z

    if-nez v0, :cond_0

    .line 4073
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isFreeformMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4074
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isActivity()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isFullSize()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4072
    :goto_0
    return v0
.end method

.method private blacklist isResizing()Z
    .locals 1

    .line 4022
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isResolverActivityWithoutShadow()Z
    .locals 6

    .line 4079
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/android/internal/app/ResolverActivity;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4080
    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActivityTaskManager;->getTasks(I)Ljava/util/List;

    move-result-object v0

    .line 4081
    .local v0, "taskInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 4082
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 4083
    .local v3, "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "numActivities="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Landroid/app/ActivityManager$RunningTaskInfo;->numActivities:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " baseActivity="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " topActivity="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DecorView"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4084
    iget v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->numActivities:I

    if-ne v4, v2, :cond_0

    .line 4085
    return v1

    .line 4088
    .end local v3    # "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_0
    iget-boolean v3, p0, Lcom/android/internal/policy/DecorView;->mIsPopOver:Z

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isFullscreenMode()Z

    move-result v3

    if-nez v3, :cond_1

    .line 4089
    return v2

    .line 4092
    .end local v0    # "taskInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_1
    return v1
.end method

.method private blacklist isStatusBarHiddenByFlags()Z
    .locals 3

    .line 5627
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isFullscreenMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 5628
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getSystemUiVisibility()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWindowSystemUiVisibility()I

    move-result v2

    or-int/2addr v0, v2

    .line 5629
    .local v0, "systemUiVis":I
    and-int/lit8 v2, v0, 0x4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 5630
    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 5629
    :cond_1
    return v1

    .line 5632
    .end local v0    # "systemUiVis":I
    :cond_2
    return v1
.end method

.method private blacklist loadBackgroundDrawablesIfNeeded()V
    .locals 3

    .line 3643
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    .line 3644
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFallbackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 3645
    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->isTranslucent()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 3646
    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->isShowingWallpaper()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 3644
    :goto_1
    invoke-static {v0, v1, v2}, Lcom/android/internal/policy/DecorView;->getResizingBackgroundDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 3647
    if-nez v0, :cond_2

    .line 3650
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to find background drawable for PhoneWindow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3653
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    .line 3654
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1080293

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 3657
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 3658
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundDrawableCb:Landroid/graphics/drawable/Drawable$Callback;

    .line 3659
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 3661
    :cond_4
    return-void
.end method

.method private blacklist onImmersiveModeChanged(Z)V
    .locals 4
    .param p1, "isImmersiveMode"    # Z

    .line 4887
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsImmersiveMode:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, p1, :cond_4

    .line 4888
    iput-boolean p1, p0, Lcom/android/internal/policy/DecorView;->mIsImmersiveMode:Z

    .line 4889
    sget-boolean v0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 4890
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onImmersiveModeChanged: changed to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/internal/policy/DecorView;->mIsImmersiveMode:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->log(Ljava/lang/String;)V

    .line 4892
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsDexEnabled:Z

    if-eqz v0, :cond_1

    .line 4893
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->prepareImmersiveHelper()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4894
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mImmersiveHelper:Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;

    iget-boolean v3, p0, Lcom/android/internal/policy/DecorView;->mIsImmersiveMode:Z

    invoke-virtual {v0, v3}, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->dispatchCaptionVisibilityChanged(Z)V

    goto :goto_1

    .line 4896
    :cond_1
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mCaptionType:I

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v0, :cond_3

    .line 4897
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->hasWindowDecorCaption()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isFullSize()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 4898
    .local v0, "showCaption":Z
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {v3, v0}, Lcom/android/internal/widget/DecorCaptionView;->onConfigurationChanged(Z)V

    .line 4899
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->enableCaption(Z)V

    .line 4901
    .end local v0    # "showCaption":Z
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isMultiSplitHandlerValid()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4902
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isHandlerAutoHide()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->setHandlerAutoHide(Z)V

    .line 4906
    :cond_4
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsDexEnabled:Z

    if-nez v0, :cond_7

    .line 4907
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsImmersiveMode:Z

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isStatusBarHiddenByFlags()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    move v1, v2

    :cond_6
    move v0, v1

    .line 4908
    .local v0, "isStatusBarHidden":Z
    iget-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mIsStatusBarHidden:Z

    if-eq v1, v0, :cond_7

    .line 4909
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsStatusBarHidden:Z

    .line 4910
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImmersiveModeChanged: isStatusBarHidden="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mIsStatusBarHidden:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DecorView"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4911
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    if-eqz v1, :cond_7

    .line 4912
    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->onStatusBarVisibilityChanged()V

    .line 4917
    .end local v0    # "isStatusBarHidden":Z
    :cond_7
    return-void
.end method

.method private blacklist prepareImmersiveHelper()Z
    .locals 2

    .line 4953
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mImmersiveHelper:Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    if-eqz v0, :cond_0

    .line 4954
    new-instance v0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;-><init>(Lcom/android/internal/policy/DecorView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mImmersiveHelper:Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;

    .line 4956
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mImmersiveHelper:Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist refreshGestureNavBarSettings()V
    .locals 4

    .line 5403
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "navigation_bar_gesture_while_hidden"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mGestureNavBarEnabled:Z

    .line 5405
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "navigation_bar_gesture_hint"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v2, v1

    :cond_1
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mGestureHintEnabled:Z

    .line 5407
    return-void
.end method

.method private blacklist releaseThreadedRenderer()V
    .locals 3

    .line 4008
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundDrawableCb:Landroid/graphics/drawable/Drawable$Callback;

    if-eqz v2, :cond_0

    .line 4009
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 4010
    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundDrawableCb:Landroid/graphics/drawable/Drawable$Callback;

    .line 4013
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    if-eqz v0, :cond_1

    .line 4014
    invoke-virtual {v0}, Lcom/android/internal/policy/BackdropFrameRenderer;->releaseRenderer()V

    .line 4015
    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    .line 4017
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateElevation()V

    .line 4019
    :cond_1
    return-void
.end method

.method private blacklist removeDecorCaptionIfNeeded(Landroid/content/res/Configuration;)Z
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 3462
    const/4 v0, 0x0

    .line 3465
    .local v0, "captionRemoved":Z
    iget v1, p0, Lcom/android/internal/policy/DecorView;->mDensityDpi:I

    .line 3466
    .local v1, "oldDensityDpi":I
    const-string v2, "remove_caption"

    invoke-direct {p0, v2}, Lcom/android/internal/policy/DecorView;->getCurrentDensityDpi(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/DecorView;->mDensityDpi:I

    .line 3467
    if-ne v2, v1, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mIsPopOver:Z

    if-eqz v2, :cond_1

    .line 3468
    :cond_0
    const/4 v0, 0x1

    .line 3473
    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mIsDexEnabled:Z

    .line 3474
    .local v2, "oldDesktopModeEnabled":Z
    iget v3, p1, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    iput-boolean v4, p0, Lcom/android/internal/policy/DecorView;->mIsDexEnabled:Z

    .line 3481
    if-eq v4, v2, :cond_4

    .line 3482
    if-eqz v4, :cond_3

    .line 3483
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->initializeDexInfo()V

    goto :goto_1

    .line 3485
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->removeDecorCaptionWindow()V

    .line 3487
    :goto_1
    const/4 v0, 0x1

    .line 3491
    .end local v2    # "oldDesktopModeEnabled":Z
    :cond_4
    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v2, :cond_5

    .line 3492
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->removeDecorCaptionView()V

    .line 3495
    :cond_5
    return v0
.end method

.method private blacklist removeDecorCaptionView()V
    .locals 4

    .line 3722
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v0, :cond_0

    .line 3723
    invoke-virtual {v0}, Lcom/android/internal/widget/DecorCaptionView;->restoreOutlineProvider()V

    .line 3725
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DecorCaptionView;->removeAllViews()V

    .line 3726
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DecorCaptionView;->clearDisappearingChildren()V

    .line 3727
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 3728
    .local v0, "contentIndex":I
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/DecorView;->removeView(Landroid/view/View;)V

    .line 3729
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    .line 3730
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    new-instance v2, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/internal/policy/DecorView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 3732
    .end local v0    # "contentIndex":I
    :cond_0
    return-void
.end method

.method private blacklist removeDecorCaptionWindow()V
    .locals 1

    .line 4803
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsDexEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mCompatWindow:Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;

    if-eqz v0, :cond_0

    .line 4804
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->removeWindow()V

    .line 4805
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mCompatWindow:Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;

    .line 4807
    :cond_0
    return-void
.end method

.method private blacklist removeKnoxBadge()V
    .locals 1

    .line 6014
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadgeViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    if-eqz v0, :cond_0

    .line 6015
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->hideKnoxBadge()V

    .line 6016
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadgeViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    .line 6017
    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadgeView:Landroid/view/View;

    .line 6018
    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadge:Landroid/graphics/drawable/Drawable;

    .line 6019
    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mReverseKnoxBadge:Landroid/graphics/drawable/Drawable;

    .line 6021
    :cond_0
    return-void
.end method

.method private blacklist requestInvalidateRenderNode(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 4656
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->hasDecorCaptionWindow()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isResizing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4660
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 4661
    .local v0, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_1

    .line 4662
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->requestInvalidateRootRenderNode()V

    .line 4663
    sget-boolean v1, Lcom/android/internal/policy/DecorView;->DEBUG_DRAW:Z

    if-eqz v1, :cond_1

    .line 4664
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestInvalidateRootRenderNode: msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DecorView"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4667
    :cond_1
    return-void

    .line 4657
    .end local v0    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :cond_2
    :goto_0
    return-void
.end method

.method private blacklist setBackgroundAlpha(F)V
    .locals 2
    .param p1, "alpha"    # F

    .line 5952
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mPopOverBackgroundAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 5953
    iput p1, p0, Lcom/android/internal/policy/DecorView;->mPopOverBackgroundAlpha:F

    .line 5954
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changed bg alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DecorView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5955
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->invalidate()V

    .line 5957
    :cond_0
    return-void
.end method

.method private blacklist setBadgeResource()V
    .locals 3

    .line 6037
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPackageManagerForKnoxBadge:Landroid/content/pm/PackageManager;

    new-instance v1, Landroid/os/UserHandle;

    iget v2, p0, Lcom/android/internal/policy/DecorView;->mUserId:I

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getUserBadgeForDensity(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadge:Landroid/graphics/drawable/Drawable;

    .line 6038
    new-instance v0, Landroid/os/UserHandle;

    iget v1, p0, Lcom/android/internal/policy/DecorView;->mUserId:I

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, v1}, Lcom/samsung/android/knox/SemPersonaManager;->getCustomReverseBadgeForCustomContainer(Landroid/os/UserHandle;ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mReverseKnoxBadge:Landroid/graphics/drawable/Drawable;

    .line 6039
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadge:Landroid/graphics/drawable/Drawable;

    :cond_0
    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mReverseKnoxBadge:Landroid/graphics/drawable/Drawable;

    .line 6040
    return-void
.end method

.method private static blacklist setColor(Landroid/view/View;IIZZ)V
    .locals 11
    .param p0, "v"    # Landroid/view/View;
    .param p1, "color"    # I
    .param p2, "dividerColor"    # I
    .param p3, "verticalBar"    # Z
    .param p4, "seascape"    # Z

    .line 2380
    if-eqz p2, :cond_5

    .line 2381
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 2382
    .local v0, "dir":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Boolean;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-ne v3, p3, :cond_1

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eq v3, p4, :cond_0

    goto :goto_0

    .line 2395
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/LayerDrawable;

    .line 2396
    .local v3, "d":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/InsetDrawable;

    .line 2397
    .local v1, "inset":Landroid/graphics/drawable/InsetDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 2398
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v2, p2}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    goto :goto_4

    .line 2383
    .end local v1    # "inset":Landroid/graphics/drawable/InsetDrawable;
    .end local v3    # "d":Landroid/graphics/drawable/LayerDrawable;
    :cond_1
    :goto_0
    const/high16 v3, 0x3f800000    # 1.0f

    .line 2385
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 2384
    invoke-static {v1, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    .line 2383
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 2387
    .local v3, "size":I
    new-instance v10, Landroid/graphics/drawable/InsetDrawable;

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 2388
    if-eqz p3, :cond_2

    if-nez p4, :cond_2

    move v6, v3

    goto :goto_1

    :cond_2
    move v6, v2

    .line 2389
    :goto_1
    if-nez p3, :cond_3

    move v7, v3

    goto :goto_2

    :cond_3
    move v7, v2

    .line 2390
    :goto_2
    if-eqz p3, :cond_4

    if-eqz p4, :cond_4

    move v8, v3

    goto :goto_3

    :cond_4
    move v8, v2

    :goto_3
    const/4 v9, 0x0

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 2391
    .local v4, "d":Landroid/graphics/drawable/InsetDrawable;
    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/graphics/drawable/Drawable;

    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v7, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v7, v6, v2

    aput-object v4, v6, v1

    invoke-direct {v5, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2393
    new-instance v1, Landroid/util/Pair;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2394
    .end local v3    # "size":I
    .end local v4    # "d":Landroid/graphics/drawable/InsetDrawable;
    nop

    .line 2400
    .end local v0    # "dir":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Boolean;>;"
    :goto_4
    goto :goto_5

    .line 2401
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2402
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2404
    :goto_5
    return-void
.end method

.method private blacklist setContentAlpha(F)V
    .locals 2
    .param p1, "alpha"    # F

    .line 5964
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mPopOverContentAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 5965
    iput p1, p0, Lcom/android/internal/policy/DecorView;->mPopOverContentAlpha:F

    .line 5966
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changed content alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DecorView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5967
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->invalidate()V

    .line 5969
    :cond_0
    return-void
.end method

.method private blacklist setDarkDecorCaptionShade(Lcom/android/internal/widget/DecorCaptionView;)V
    .locals 2
    .param p1, "view"    # Lcom/android/internal/widget/DecorCaptionView;

    .line 3799
    const v0, 0x10203ec

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x1080297

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 3801
    const v0, 0x1020263

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x1080295

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 3803
    return-void
.end method

.method private blacklist setDecorCaptionShade(Lcom/android/internal/widget/DecorCaptionView;)V
    .locals 0
    .param p1, "view"    # Lcom/android/internal/widget/DecorCaptionView;

    .line 3763
    invoke-virtual {p1}, Lcom/android/internal/widget/DecorCaptionView;->setDecorCaptionShade()V

    .line 3764
    return-void
.end method

.method private blacklist setHandledActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .line 3004
    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    move-result v0

    if-nez v0, :cond_0

    .line 3005
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->setHandledPrimaryActionMode(Landroid/view/ActionMode;)V

    goto :goto_0

    .line 3006
    :cond_0
    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 3007
    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    move-result v0

    const/16 v1, 0x63

    if-ne v0, v1, :cond_2

    .line 3008
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->setHandledFloatingActionMode(Landroid/view/ActionMode;)V

    .line 3010
    :cond_2
    :goto_0
    return-void
.end method

.method private blacklist setHandledFloatingActionMode(Landroid/view/ActionMode;)V
    .locals 4
    .param p1, "mode"    # Landroid/view/ActionMode;

    .line 3167
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    .line 3170
    const/4 v0, 0x0

    .line 3171
    .local v0, "isSemTypeFloating":Z
    const/4 v1, 0x0

    .line 3173
    .local v1, "isDeviceDefaultThemeTextView":Z
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 3174
    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->isThemeDeviceDefault()Z

    move-result v1

    .line 3177
    :cond_0
    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    move-result v2

    const/16 v3, 0x63

    if-eq v2, v3, :cond_2

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    move v0, v2

    .line 3179
    new-instance v2, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-direct {v2, v3, v0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;-><init>(Landroid/view/Window;Z)V

    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    .line 3180
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    check-cast v3, Lcom/android/internal/view/FloatingActionMode;

    invoke-virtual {v3, v2}, Lcom/android/internal/view/FloatingActionMode;->setFloatingToolbar(Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;)V

    .line 3183
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    invoke-virtual {v2}, Landroid/view/ActionMode;->invalidate()V

    .line 3184
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 3185
    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 3186
    return-void
.end method

.method private blacklist setHandledPrimaryActionMode(Landroid/view/ActionMode;)V
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;

    .line 3108
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->endOnGoingFadeAnimation()V

    .line 3109
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    .line 3110
    invoke-virtual {p1}, Landroid/view/ActionMode;->invalidate()V

    .line 3111
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContextView;->initForMode(Landroid/view/ActionMode;)V

    .line 3112
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 3113
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mShowPrimaryActionModePopup:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3115
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->shouldAnimatePrimaryActionModeView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3116
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    .line 3117
    new-instance v1, Lcom/android/internal/policy/DecorView$11;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/DecorView$11;-><init>(Lcom/android/internal/policy/DecorView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3129
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 3131
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContextView;->setAlpha(F)V

    .line 3132
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContextView;->setVisibility(I)V

    .line 3135
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 3137
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private blacklist setKnoxBadge()V
    .locals 2

    .line 6043
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadgeViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    .line 6044
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPackageManagerForKnoxBadge:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_0

    .line 6045
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mPackageManagerForKnoxBadge:Landroid/content/pm/PackageManager;

    .line 6047
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->setBadgeResource()V

    .line 6048
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadgeView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 6049
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadgeView:Landroid/view/View;

    .line 6051
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadgeView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6052
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mWm:Landroid/view/WindowManager;

    .line 6053
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, p0, Lcom/android/internal/policy/DecorView;->mDensityForKnoxBadge:I

    .line 6054
    return-void
.end method

.method private blacklist setKnoxBadgePosition()V
    .locals 1

    .line 6095
    new-instance v0, Lcom/android/internal/policy/DecorView$14;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/DecorView$14;-><init>(Lcom/android/internal/policy/DecorView;)V

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadgeDisplayRunnable:Ljava/lang/Runnable;

    .line 6199
    return-void
.end method

.method private blacklist setKnoxBadgeStateForImmersive(Z)V
    .locals 0
    .param p1, "isImmersiveMode"    # Z

    .line 6086
    iput-boolean p1, p0, Lcom/android/internal/policy/DecorView;->mIsImmersiveModeForKnox:Z

    .line 6088
    return-void
.end method

.method private blacklist setLightDecorCaptionShade(Lcom/android/internal/widget/DecorCaptionView;)V
    .locals 2
    .param p1, "view"    # Lcom/android/internal/widget/DecorCaptionView;

    .line 3792
    const v0, 0x10203ec

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x1080298

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 3794
    const v0, 0x1020263

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x1080296

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 3796
    return-void
.end method

.method private blacklist shouldHideProfileBadge(ZZI)Z
    .locals 2
    .param p1, "isGestureHintOff"    # Z
    .param p2, "taskbarEnabled"    # Z
    .param p3, "displayType"    # I

    .line 6057
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadgeView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 6059
    return v1

    .line 6061
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isPopOverState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6063
    return v1

    .line 6065
    :cond_1
    if-eqz p1, :cond_3

    .line 6066
    if-eqz p3, :cond_2

    .line 6068
    return v1

    .line 6069
    :cond_2
    if-nez p2, :cond_3

    if-nez p3, :cond_3

    .line 6071
    return v1

    .line 6074
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isFullscreenMode()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->getKnoxBadgeStateForImmersive()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6076
    return v1

    .line 6078
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isSplitMode()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    if-eqz v0, :cond_5

    .line 6080
    return v1

    .line 6082
    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist showContextMenuForChildInternal(Landroid/view/View;FF)Z
    .locals 6
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 1557
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuHelper;

    if-eqz v0, :cond_0

    .line 1558
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuHelper;

    invoke-interface {v0}, Lcom/android/internal/view/menu/MenuHelper;->dismiss()V

    .line 1559
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuHelper;

    .line 1563
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mContextMenuCallback:Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;

    .line 1564
    .local v0, "callback":Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    if-nez v1, :cond_1

    .line 1565
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    new-instance v2, Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/view/menu/ContextMenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    .line 1566
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {v1, v0}, Lcom/android/internal/view/menu/ContextMenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    goto :goto_0

    .line 1568
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/ContextMenuBuilder;->clearAll()V

    .line 1572
    :goto_0
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v3

    .line 1573
    .local v1, "isPopup":Z
    :goto_1
    if-eqz v1, :cond_3

    .line 1574
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v4, v4, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5, p1, p2, p3}, Lcom/android/internal/view/menu/ContextMenuBuilder;->showPopup(Landroid/content/Context;Landroid/view/View;FF)Lcom/android/internal/view/menu/MenuPopupHelper;

    move-result-object v4

    .local v4, "helper":Lcom/android/internal/view/menu/MenuHelper;
    goto :goto_2

    .line 1576
    .end local v4    # "helper":Lcom/android/internal/view/menu/MenuHelper;
    :cond_3
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v4, v4, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lcom/android/internal/view/menu/ContextMenuBuilder;->showDialog(Landroid/view/View;Landroid/os/IBinder;)Lcom/android/internal/view/menu/MenuDialogHelper;

    move-result-object v4

    .line 1579
    .restart local v4    # "helper":Lcom/android/internal/view/menu/MenuHelper;
    :goto_2
    if-eqz v4, :cond_5

    .line 1583
    if-nez v1, :cond_4

    move v5, v2

    goto :goto_3

    :cond_4
    move v5, v3

    :goto_3
    invoke-virtual {v0, v5}, Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;->setShowDialogForSubmenu(Z)V

    .line 1584
    invoke-interface {v4, v0}, Lcom/android/internal/view/menu/MenuHelper;->setPresenterCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 1587
    :cond_5
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iput-object v4, v5, Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuHelper;

    .line 1588
    if-eqz v4, :cond_6

    goto :goto_4

    :cond_6
    move v2, v3

    :goto_4
    return v2
.end method

.method private blacklist showPopOver()V
    .locals 7

    .line 5976
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->POP_OVER_BACKGROUND_ALPHA:Landroid/util/FloatProperty;

    const/4 v1, 0x1

    new-array v2, v1, [F

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v2, v3

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 5977
    .local v0, "animBackground":Landroid/animation/ObjectAnimator;
    const-wide/16 v5, 0xc8

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 5978
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->POP_OVER_CONTENT_ALPHA:Landroid/util/FloatProperty;

    new-array v5, v1, [F

    aput v4, v5, v3

    invoke-static {p0, v2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 5979
    .local v2, "animContent":Landroid/animation/ObjectAnimator;
    const-wide/16 v4, 0x64

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 5980
    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 5981
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 5982
    .local v4, "animSet":Landroid/animation/AnimatorSet;
    const/4 v5, 0x2

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v0, v5, v3

    aput-object v2, v5, v1

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 5983
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 5984
    return-void
.end method

.method private blacklist startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 4
    .param p1, "originatingView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;
    .param p3, "type"    # I

    .line 1615
    new-instance v0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;

    invoke-direct {v0, p0, p2}, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;-><init>(Lcom/android/internal/policy/DecorView;Landroid/view/ActionMode$Callback;)V

    .line 1616
    .local v0, "wrappedCallback":Landroid/view/ActionMode$Callback2;
    const/4 v1, 0x0

    .line 1617
    .local v1, "mode":Landroid/view/ActionMode;
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1619
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v2

    invoke-interface {v2, v0, p3}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 1630
    goto :goto_0

    .line 1620
    :catch_0
    move-exception v2

    .line 1622
    .local v2, "ame":Ljava/lang/AbstractMethodError;
    if-nez p3, :cond_0

    .line 1624
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v3

    .line 1628
    goto :goto_0

    .line 1626
    :catch_1
    move-exception v3

    .line 1632
    .end local v2    # "ame":Ljava/lang/AbstractMethodError;
    :cond_0
    :goto_0
    if-eqz v1, :cond_4

    .line 1633
    invoke-virtual {v1}, Landroid/view/ActionMode;->getType()I

    move-result v2

    if-nez v2, :cond_1

    .line 1634
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->cleanupPrimaryActionMode()V

    .line 1635
    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    goto :goto_1

    .line 1636
    :cond_1
    invoke-virtual {v1}, Landroid/view/ActionMode;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    .line 1637
    invoke-virtual {v1}, Landroid/view/ActionMode;->getType()I

    move-result v2

    const/16 v3, 0x63

    if-ne v2, v3, :cond_6

    .line 1638
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_3

    .line 1639
    invoke-virtual {v2}, Landroid/view/ActionMode;->finish()V

    .line 1641
    :cond_3
    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    goto :goto_1

    .line 1644
    :cond_4
    invoke-direct {p0, p3, v0, p1}, Lcom/android/internal/policy/DecorView;->createActionMode(ILandroid/view/ActionMode$Callback2;Landroid/view/View;)Landroid/view/ActionMode;

    move-result-object v1

    .line 1645
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ActionMode$Callback2;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1646
    invoke-direct {p0, v1}, Lcom/android/internal/policy/DecorView;->setHandledActionMode(Landroid/view/ActionMode;)V

    goto :goto_1

    .line 1648
    :cond_5
    const/4 v1, 0x0

    .line 1651
    :cond_6
    :goto_1
    if-eqz v1, :cond_7

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1653
    :try_start_2
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/Window$Callback;->onActionModeStarted(Landroid/view/ActionMode;)V
    :try_end_2
    .catch Ljava/lang/AbstractMethodError; {:try_start_2 .. :try_end_2} :catch_2

    .line 1656
    goto :goto_2

    .line 1654
    :catch_2
    move-exception v2

    .line 1658
    :cond_7
    :goto_2
    return-object v1
.end method

.method private blacklist updateBackgroundBlurCorners()V
    .locals 4

    .line 2115
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    if-nez v0, :cond_0

    return-void

    .line 2117
    :cond_0
    const/4 v0, 0x0

    .line 2120
    .local v0, "cornerRadius":F
    iget v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurRadius:I

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mOriginalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 2121
    new-instance v1, Landroid/graphics/Outline;

    invoke-direct {v1}, Landroid/graphics/Outline;-><init>()V

    .line 2122
    .local v1, "outline":Landroid/graphics/Outline;
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mOriginalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    .line 2123
    iget v2, v1, Landroid/graphics/Outline;->mMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Outline;->getRadius()F

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .line 2125
    .end local v1    # "outline":Landroid/graphics/Outline;
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    invoke-virtual {v1, v0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->setCornerRadius(F)V

    .line 2126
    return-void
.end method

.method private blacklist updateBackgroundBlurRadius()V
    .locals 2

    .line 2129
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2131
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mCrossWindowBlurEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->isTranslucent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2132
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mOriginalBackgroundBlurRadius:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurRadius:I

    .line 2133
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    if-nez v1, :cond_2

    if-lez v0, :cond_2

    .line 2134
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->createBackgroundBlurDrawable()Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    .line 2135
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateBackgroundDrawable()V

    .line 2138
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    if-eqz v0, :cond_3

    .line 2139
    iget v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurRadius:I

    invoke-virtual {v0, v1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->setBlurRadius(I)V

    .line 2141
    :cond_3
    return-void
.end method

.method private blacklist updateBackgroundDrawable()V
    .locals 9

    .line 2074
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundInsets:Landroid/graphics/Insets;

    if-nez v0, :cond_0

    .line 2075
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundInsets:Landroid/graphics/Insets;

    .line 2078
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundInsets:Landroid/graphics/Insets;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundInsets:Landroid/graphics/Insets;

    invoke-virtual {v0, v1}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mLastOriginalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mOriginalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-ne v0, v1, :cond_1

    .line 2081
    return-void

    .line 2084
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mOriginalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 2085
    .local v0, "destDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    if-eqz v1, :cond_2

    .line 2086
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mOriginalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    move-object v0, v1

    .line 2090
    :cond_2
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundInsets:Landroid/graphics/Insets;

    sget-object v2, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {v1, v2}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2091
    new-instance v8, Lcom/android/internal/policy/DecorView$7;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundInsets:Landroid/graphics/Insets;

    iget v4, v1, Landroid/graphics/Insets;->left:I

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundInsets:Landroid/graphics/Insets;

    iget v5, v1, Landroid/graphics/Insets;->top:I

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundInsets:Landroid/graphics/Insets;

    iget v6, v1, Landroid/graphics/Insets;->right:I

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundInsets:Landroid/graphics/Insets;

    iget v7, v1, Landroid/graphics/Insets;->bottom:I

    move-object v1, v8

    move-object v2, p0

    move-object v3, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/policy/DecorView$7;-><init>(Lcom/android/internal/policy/DecorView;Landroid/graphics/drawable/Drawable;IIII)V

    move-object v0, v8

    .line 2107
    :cond_3
    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2109
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundInsets:Landroid/graphics/Insets;

    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundInsets:Landroid/graphics/Insets;

    .line 2110
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    .line 2111
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mOriginalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mLastOriginalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 2112
    return-void
.end method

.method private blacklist updateCaptionType(Landroid/content/res/Configuration;)V
    .locals 12
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 4529
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 4530
    return-void

    .line 4533
    :cond_0
    sget-boolean v0, Lcom/android/internal/policy/DecorView;->DEBUG_CAPTION:Z

    const-string v2, " config="

    const-string v3, "DecorView"

    if-eqz v0, :cond_1

    .line 4534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateCaptionType: isDexEnabled="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v4, p0, Lcom/android/internal/policy/DecorView;->mIsDexEnabled:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " callers="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v4, 0x6

    .line 4535
    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4534
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4538
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->isPopOver()Z

    move-result v0

    .line 4539
    .local v0, "isPopOver":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[INFO] isPopOver="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p1, :cond_2

    move v6, v5

    goto :goto_0

    :cond_2
    move v6, v4

    :goto_0
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4541
    if-nez v0, :cond_c

    .line 4542
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 4543
    .local v2, "attrs":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isActivity()Z

    move-result v6

    .line 4544
    .local v6, "isActivity":Z
    iget-boolean v7, p0, Lcom/android/internal/policy/DecorView;->mIsDexEnabled:Z

    const-string v8, " this="

    const/4 v9, 0x2

    if-eqz v7, :cond_9

    sget-boolean v7, Landroid/view/ViewRootImpl;->CAPTION_ON_SHELL:Z

    if-nez v7, :cond_9

    .line 4545
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[INFO] WindowingMode="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWindowingMode()I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4548
    iget v7, v2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit16 v7, v7, 0x100

    if-eqz v7, :cond_3

    .line 4550
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/DecorView;->setCaptionType(I)V

    .line 4551
    return-void

    .line 4555
    :cond_3
    if-eqz p1, :cond_9

    .line 4556
    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v1, v5, :cond_5

    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v1, v9, :cond_4

    goto :goto_1

    :cond_4
    move v1, v4

    goto :goto_2

    :cond_5
    :goto_1
    move v1, v5

    .line 4557
    .local v1, "isApplication":Z
    :goto_2
    iget v7, p1, Landroid/content/res/Configuration;->dexCompatEnabled:I

    if-ne v7, v9, :cond_6

    move v7, v5

    goto :goto_3

    :cond_6
    move v7, v4

    .line 4558
    .local v7, "isDexCompatEnabled":Z
    :goto_3
    if-nez v1, :cond_7

    if-eqz v7, :cond_7

    iget-object v10, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v10, v10, Lcom/android/internal/policy/PhoneWindow;->mActivityCurrentConfig:Landroid/content/res/Configuration;

    if-eqz v10, :cond_7

    .line 4565
    const/4 v1, 0x1

    .line 4566
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " Invalid window type("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") set. this="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4569
    :cond_7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateCaptionType: isApplication="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " isDexCompatEnabled="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " isDecorCaptionWindow=false hasContainer="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 4571
    invoke-virtual {v11}, Lcom/android/internal/policy/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v11

    if-nez v11, :cond_8

    move v11, v5

    goto :goto_4

    :cond_8
    move v11, v4

    :goto_4
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 4569
    invoke-static {v3, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4572
    if-eqz v1, :cond_9

    if-eqz v6, :cond_9

    if-eqz v7, :cond_9

    iget-object v10, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v10}, Lcom/android/internal/policy/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v10

    if-nez v10, :cond_9

    .line 4574
    invoke-virtual {p0, v9}, Lcom/android/internal/policy/DecorView;->setCaptionType(I)V

    .line 4575
    return-void

    .line 4581
    .end local v1    # "isApplication":Z
    .end local v7    # "isDexCompatEnabled":Z
    :cond_9
    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v1, v5, :cond_b

    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v1, v9, :cond_b

    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v7, 0x4

    if-ne v1, v7, :cond_a

    goto :goto_5

    :cond_a
    move v1, v4

    goto :goto_6

    :cond_b
    :goto_5
    move v1, v5

    .line 4583
    .restart local v1    # "isApplication":Z
    :goto_6
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->hasWindowDecorCaption()Z

    move-result v7

    .line 4584
    .local v7, "hasWindowDecorCaption":Z
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateCaptionType: isFloating="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v10}, Lcom/android/internal/policy/PhoneWindow;->isFloating()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " isApplication="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " hasWindowDecorCaption="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4587
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow;->isFloating()Z

    move-result v3

    if-nez v3, :cond_c

    if-eqz v1, :cond_c

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->hasWindowDecorCaption()Z

    move-result v3

    if-eqz v3, :cond_c

    sget-boolean v3, Landroid/view/ViewRootImpl;->CAPTION_ON_SHELL:Z

    if-nez v3, :cond_c

    if-eqz v6, :cond_c

    .line 4589
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/DecorView;->setCaptionType(I)V

    .line 4590
    return-void

    .line 4595
    .end local v1    # "isApplication":Z
    .end local v2    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v6    # "isActivity":Z
    .end local v7    # "hasWindowDecorCaption":Z
    :cond_c
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/DecorView;->setCaptionType(I)V

    .line 4596
    return-void
.end method

.method private blacklist updateColorViewInt(Lcom/android/internal/policy/DecorView$ColorViewState;IIIZZIZZLandroid/view/WindowInsetsController;)V
    .locals 20
    .param p1, "state"    # Lcom/android/internal/policy/DecorView$ColorViewState;
    .param p2, "color"    # I
    .param p3, "dividerColor"    # I
    .param p4, "size"    # I
    .param p5, "verticalBar"    # Z
    .param p6, "seascape"    # Z
    .param p7, "sideMargin"    # I
    .param p8, "animate"    # Z
    .param p9, "force"    # Z
    .param p10, "controller"    # Landroid/view/WindowInsetsController;

    .line 2273
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p9

    iget-object v8, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->attributes:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    iget-object v9, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->attributes:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    iget v9, v9, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->insetsType:I

    .line 2274
    move-object/from16 v10, p10

    invoke-interface {v10, v9}, Landroid/view/WindowInsetsController;->isRequestedVisible(I)Z

    move-result v9

    iget-object v11, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 2275
    invoke-virtual {v11}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v11

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2273
    invoke-virtual {v8, v9, v11, v7}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->isPresent(ZIZ)Z

    move-result v8

    iput-boolean v8, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->present:Z

    .line 2276
    iget-object v8, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->attributes:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    iget-boolean v9, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->present:Z

    iget-object v11, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 2277
    invoke-virtual {v11}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v11

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2276
    invoke-virtual {v8, v9, v2, v11, v7}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->isVisible(ZIIZ)Z

    move-result v8

    .line 2278
    .local v8, "show":Z
    const/4 v9, 0x1

    if-eqz v8, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->isResizing()Z

    move-result v12

    if-nez v12, :cond_0

    iget-boolean v12, v0, Lcom/android/internal/policy/DecorView;->mHasCaption:Z

    if-nez v12, :cond_0

    if-lez p4, :cond_0

    move v12, v9

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    .line 2281
    .local v12, "showView":Z
    :goto_0
    iget-object v13, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->attributes:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    iget v13, v13, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->insetsType:I

    if-ne v13, v9, :cond_3

    .line 2282
    iget-object v13, v0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    iget v13, v13, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    if-ne v13, v9, :cond_1

    move v13, v9

    goto :goto_1

    :cond_1
    const/4 v13, 0x0

    .line 2284
    .local v13, "dexEnabled":Z
    :goto_1
    iget-object v14, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v14}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v14

    .line 2285
    .local v14, "attrs":Landroid/view/WindowManager$LayoutParams;
    if-eqz v13, :cond_3

    if-eqz v14, :cond_3

    iget v15, v14, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v9, 0x7db

    if-eq v15, v9, :cond_2

    iget v9, v14, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v15, 0x7e5

    if-ne v9, v15, :cond_3

    .line 2288
    :cond_2
    const/4 v12, 0x0

    .line 2293
    .end local v13    # "dexEnabled":Z
    .end local v14    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_3
    const/4 v9, 0x0

    .line 2294
    .local v9, "visibilityChanged":Z
    iget-object v13, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    .line 2296
    .local v13, "view":Landroid/view/View;
    const/4 v14, -0x1

    if-eqz v4, :cond_4

    move v15, v14

    goto :goto_2

    :cond_4
    move/from16 v15, p4

    .line 2297
    .local v15, "resolvedHeight":I
    :goto_2
    if-eqz v4, :cond_5

    move/from16 v14, p4

    .line 2298
    .local v14, "resolvedWidth":I
    :cond_5
    if-eqz v4, :cond_7

    .line 2299
    iget-object v11, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->attributes:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    if-eqz v5, :cond_6

    iget v11, v11, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->seascapeGravity:I

    goto :goto_3

    :cond_6
    iget v11, v11, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->horizontalGravity:I

    goto :goto_3

    .line 2300
    :cond_7
    iget-object v11, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->attributes:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    iget v11, v11, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->verticalGravity:I

    :goto_3
    nop

    .line 2302
    .local v11, "resolvedGravity":I
    if-nez v13, :cond_a

    .line 2303
    if-eqz v12, :cond_9

    .line 2304
    new-instance v7, Landroid/view/View;

    move/from16 v17, v9

    .end local v9    # "visibilityChanged":Z
    .local v17, "visibilityChanged":Z
    iget-object v9, v0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-direct {v7, v9}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object v13, v7

    iput-object v7, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    .line 2305
    invoke-static {v13, v2, v3, v4, v5}, Lcom/android/internal/policy/DecorView;->setColor(Landroid/view/View;IIZZ)V

    .line 2306
    iget-object v7, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->attributes:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    iget-object v7, v7, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->transitionName:Ljava/lang/String;

    invoke-virtual {v13, v7}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    .line 2307
    iget-object v7, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->attributes:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    iget v7, v7, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->id:I

    invoke-virtual {v13, v7}, Landroid/view/View;->setId(I)V

    .line 2308
    const/4 v9, 0x1

    .line 2309
    .end local v17    # "visibilityChanged":Z
    .restart local v9    # "visibilityChanged":Z
    const/4 v7, 0x4

    invoke-virtual {v13, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2310
    const/4 v7, 0x0

    iput v7, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->targetVisibility:I

    .line 2312
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v14, v15, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 2314
    .local v7, "lp":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v5, :cond_8

    .line 2315
    iput v6, v7, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_4

    .line 2317
    :cond_8
    iput v6, v7, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 2319
    :goto_4
    invoke-virtual {v0, v13, v7}, Lcom/android/internal/policy/DecorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2320
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->updateColorViewTranslations()V

    .line 2321
    .end local v7    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    goto/16 :goto_a

    .line 2303
    :cond_9
    move/from16 v17, v9

    .end local v9    # "visibilityChanged":Z
    .restart local v17    # "visibilityChanged":Z
    goto/16 :goto_a

    .line 2323
    .end local v17    # "visibilityChanged":Z
    .restart local v9    # "visibilityChanged":Z
    :cond_a
    move/from16 v17, v9

    .end local v9    # "visibilityChanged":Z
    .restart local v17    # "visibilityChanged":Z
    if-eqz v12, :cond_b

    const/4 v7, 0x0

    goto :goto_5

    :cond_b
    const/4 v7, 0x4

    .line 2324
    .local v7, "vis":I
    :goto_5
    iget v9, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->targetVisibility:I

    if-eq v9, v7, :cond_c

    const/4 v9, 0x1

    goto :goto_6

    :cond_c
    const/4 v9, 0x0

    .line 2325
    .end local v17    # "visibilityChanged":Z
    .restart local v9    # "visibilityChanged":Z
    :goto_6
    iput v7, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->targetVisibility:I

    .line 2326
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    move-object/from16 v6, v16

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 2327
    .local v6, "lp":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v5, :cond_d

    const/16 v16, 0x0

    goto :goto_7

    :cond_d
    move/from16 v16, p7

    :goto_7
    move/from16 v17, v16

    .line 2328
    .local v17, "rightMargin":I
    if-eqz v5, :cond_e

    move/from16 v16, p7

    goto :goto_8

    :cond_e
    const/16 v16, 0x0

    :goto_8
    move/from16 v18, v16

    .line 2329
    .local v18, "leftMargin":I
    move/from16 v16, v7

    .end local v7    # "vis":I
    .local v16, "vis":I
    iget v7, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ne v7, v15, :cond_10

    iget v7, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-ne v7, v14, :cond_10

    iget v7, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-ne v7, v11, :cond_10

    iget v7, v6, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move/from16 v19, v9

    move/from16 v9, v17

    .end local v17    # "rightMargin":I
    .local v9, "rightMargin":I
    .local v19, "visibilityChanged":Z
    if-ne v7, v9, :cond_f

    iget v7, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v10, v18

    .end local v18    # "leftMargin":I
    .local v10, "leftMargin":I
    if-eq v7, v10, :cond_11

    goto :goto_9

    .end local v10    # "leftMargin":I
    .restart local v18    # "leftMargin":I
    :cond_f
    move/from16 v10, v18

    .end local v18    # "leftMargin":I
    .restart local v10    # "leftMargin":I
    goto :goto_9

    .end local v10    # "leftMargin":I
    .end local v19    # "visibilityChanged":Z
    .local v9, "visibilityChanged":Z
    .restart local v17    # "rightMargin":I
    .restart local v18    # "leftMargin":I
    :cond_10
    move/from16 v19, v9

    move/from16 v9, v17

    move/from16 v10, v18

    .line 2332
    .end local v17    # "rightMargin":I
    .end local v18    # "leftMargin":I
    .local v9, "rightMargin":I
    .restart local v10    # "leftMargin":I
    .restart local v19    # "visibilityChanged":Z
    :goto_9
    iput v15, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 2333
    iput v14, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 2334
    iput v11, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2335
    iput v9, v6, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 2336
    iput v10, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 2337
    invoke-virtual {v13, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2339
    :cond_11
    if-eqz v12, :cond_12

    .line 2340
    invoke-static {v13, v2, v3, v4, v5}, Lcom/android/internal/policy/DecorView;->setColor(Landroid/view/View;IIZZ)V

    .line 2343
    .end local v6    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v9    # "rightMargin":I
    .end local v10    # "leftMargin":I
    .end local v16    # "vis":I
    :cond_12
    move/from16 v9, v19

    .end local v19    # "visibilityChanged":Z
    .local v9, "visibilityChanged":Z
    :goto_a
    if-eqz v9, :cond_17

    .line 2344
    invoke-virtual {v13}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2345
    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz p8, :cond_15

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->isResizing()Z

    move-result v7

    if-nez v7, :cond_15

    .line 2346
    const/4 v7, 0x0

    if-eqz v12, :cond_14

    .line 2347
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-eqz v10, :cond_13

    .line 2348
    const/4 v10, 0x0

    invoke-virtual {v13, v10}, Landroid/view/View;->setVisibility(I)V

    .line 2349
    invoke-virtual {v13, v7}, Landroid/view/View;->setAlpha(F)V

    .line 2351
    :cond_13
    invoke-virtual {v13}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    iget-object v7, v0, Lcom/android/internal/policy/DecorView;->mShowInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    iget v7, v0, Lcom/android/internal/policy/DecorView;->mBarEnterExitDuration:I

    int-to-long v3, v7

    .line 2352
    invoke-virtual {v6, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_c

    .line 2355
    :cond_14
    iget-object v3, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    .line 2357
    .local v3, "hideView":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget-object v6, v0, Lcom/android/internal/policy/DecorView;->mHideInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v6, v0, Lcom/android/internal/policy/DecorView;->mBarEnterExitDuration:I

    int-to-long v6, v6

    .line 2358
    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v6, Lcom/android/internal/policy/DecorView$8;

    invoke-direct {v6, v0, v3}, Lcom/android/internal/policy/DecorView$8;-><init>(Lcom/android/internal/policy/DecorView;Landroid/view/View;)V

    .line 2359
    invoke-virtual {v4, v6}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 2368
    .end local v3    # "hideView":Landroid/view/View;
    goto :goto_c

    .line 2345
    :cond_15
    const/4 v10, 0x0

    .line 2370
    invoke-virtual {v13, v6}, Landroid/view/View;->setAlpha(F)V

    .line 2371
    if-eqz v12, :cond_16

    goto :goto_b

    :cond_16
    const/4 v10, 0x4

    :goto_b
    invoke-virtual {v13, v10}, Landroid/view/View;->setVisibility(I)V

    .line 2374
    :cond_17
    :goto_c
    iput-boolean v8, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->visible:Z

    .line 2375
    iput v2, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->color:I

    .line 2376
    return-void
.end method

.method private blacklist updateColorViewTranslations()V
    .locals 4

    .line 2409
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mRootScrollY:I

    .line 2410
    .local v0, "rootScrollY":I
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v1, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2411
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v1, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    if-lez v0, :cond_0

    int-to-float v3, v0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 2413
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v1, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 2414
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v1, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    if-gez v0, :cond_2

    int-to-float v2, v0

    :cond_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 2416
    :cond_3
    return-void
.end method

.method private blacklist updateDecorCaptionStatus(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 3520
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsDexEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isFullscreenMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsImmersiveMode:Z

    if-eqz v0, :cond_0

    .line 3521
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->hasWindowDecorCaption()Z

    move-result v0

    .local v0, "displayWindowDecor":Z
    goto :goto_0

    .line 3523
    .end local v0    # "displayWindowDecor":Z
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->hasWindowDecorCaption()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->isFillingScreen(Landroid/content/res/Configuration;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 3529
    .restart local v0    # "displayWindowDecor":Z
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-nez v2, :cond_5

    if-eqz v0, :cond_5

    .line 3531
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewRootImpl;

    if-nez v2, :cond_2

    .line 3532
    const-string v1, "DecorView"

    const-string v2, "It doesn\'t generate decor captions because the app has abnormally created a decor view."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3533
    return-void

    .line 3538
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 3539
    .local v2, "inflater":Landroid/view/LayoutInflater;
    invoke-direct {p0, v2}, Lcom/android/internal/policy/DecorView;->createDecorCaptionView(Landroid/view/LayoutInflater;)Lcom/android/internal/widget/DecorCaptionView;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    .line 3540
    if-eqz v3, :cond_5

    .line 3541
    invoke-virtual {v3}, Lcom/android/internal/widget/DecorCaptionView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    const/4 v4, -0x1

    if-nez v3, :cond_3

    .line 3542
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v1, v5}, Lcom/android/internal/policy/DecorView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 3546
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eq v1, p0, :cond_4

    .line 3547
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/DecorView;->indexOfChildToRoot(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/DecorView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3548
    .local v1, "realContentRoot":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/DecorView;->removeView(Landroid/view/View;)V

    .line 3549
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    new-instance v5, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v5, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v3, v1, v5}, Lcom/android/internal/widget/DecorCaptionView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3551
    .end local v1    # "realContentRoot":Landroid/view/View;
    goto :goto_1

    .line 3552
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/DecorView;->removeView(Landroid/view/View;)V

    .line 3553
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    new-instance v5, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v5, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v5}, Lcom/android/internal/widget/DecorCaptionView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3562
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    :cond_5
    :goto_1
    return-void
.end method

.method private blacklist updateDecorCaptionWindowVisibility()V
    .locals 2

    .line 4960
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsDexEnabled:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->hasDecorCaptionWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4961
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isFreeformMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mCompatWindow:Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;

    if-eqz v0, :cond_0

    .line 4962
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->updateCaptionState(I)V

    goto :goto_0

    .line 4963
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isFullscreenMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsImmersiveMode:Z

    if-eqz v0, :cond_1

    .line 4964
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/internal/policy/DecorView;->updateCaptionState(IZ)V

    .line 4965
    sget-boolean v0, Lcom/android/internal/policy/DecorView;->DEBUG_CAPTION:Z

    if-eqz v0, :cond_1

    .line 4966
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DexCompat]  hide DecorCaptionWindow, Callers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x6

    .line 4967
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4966
    const-string v1, "DecorView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4971
    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist updateDisplayCutoutBackground(Landroid/view/WindowInsets;)V
    .locals 18
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .line 5837
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/policy/DecorView;->mCalledDisplayCutoutBackgroundColor:Z

    if-nez v1, :cond_1

    sget-boolean v1, Landroid/view/View;->sIsSamsungBasicInteraction:Z

    if-nez v1, :cond_0

    sget-boolean v1, Landroid/view/View;->sIsDisplayCutoutBackground:Z

    if-eqz v1, :cond_1

    .line 5839
    :cond_0
    iget-object v1, v0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/DecorView;->getCurrentColor(Lcom/android/internal/policy/DecorView$ColorViewState;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundColor:I

    .line 5842
    :cond_1
    if-nez p1, :cond_2

    iget-object v1, v0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 5843
    iget v2, v0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundColor:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 5844
    return-void

    .line 5847
    :cond_2
    iget-object v1, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 5848
    .local v1, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    goto :goto_0

    :cond_3
    move-object/from16 v17, v1

    goto/16 :goto_8

    :cond_4
    :goto_0
    if-eqz p1, :cond_17

    .line 5850
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v2

    if-eqz v2, :cond_16

    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->hasSystemWindowInsets()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 5851
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v2

    .line 5852
    .local v2, "cutout":Landroid/view/DisplayCutout;
    invoke-virtual {v2}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v3

    .line 5853
    .local v3, "leftCutout":I
    invoke-virtual {v2}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v5

    .line 5854
    .local v5, "topCutout":I
    invoke-virtual {v2}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v6

    .line 5855
    .local v6, "rightCutout":I
    invoke-virtual {v2}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v7

    .line 5857
    .local v7, "bottomCutout":I
    sput v6, Lcom/android/internal/policy/DecorView;->sKnoxBadgeRightCutout:I

    .line 5859
    const/4 v8, 0x0

    .line 5860
    .local v8, "needBackground":Z
    const/4 v9, 0x0

    .line 5861
    .local v9, "gravity":I
    const/4 v10, 0x0

    .line 5862
    .local v10, "width":I
    const/4 v11, 0x0

    .line 5863
    .local v11, "height":I
    const/4 v12, 0x0

    .line 5864
    .local v12, "topMargin":I
    const/4 v13, 0x0

    .line 5865
    .local v13, "bottomMargin":I
    add-int v14, v3, v6

    if-nez v14, :cond_5

    move-object/from16 v17, v1

    goto/16 :goto_5

    .line 5867
    :cond_5
    if-lez v3, :cond_b

    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v14

    if-lez v14, :cond_b

    .line 5868
    const/4 v8, 0x1

    .line 5869
    const/4 v9, 0x3

    .line 5870
    move v10, v3

    .line 5871
    const/4 v11, -0x1

    .line 5872
    iget-object v14, v0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-boolean v14, v14, Lcom/android/internal/policy/DecorView$ColorViewState;->visible:Z

    if-eqz v14, :cond_6

    iget-object v14, v0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v14, v14, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    goto :goto_1

    :cond_6
    const/4 v14, 0x0

    .line 5873
    .local v14, "statusBg":Landroid/view/View;
    :goto_1
    if-eqz v14, :cond_7

    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v15

    if-nez v15, :cond_7

    .line 5874
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    iget v12, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 5876
    :cond_7
    iget-object v15, v0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-boolean v15, v15, Lcom/android/internal/policy/DecorView$ColorViewState;->visible:Z

    if-eqz v15, :cond_8

    iget-object v15, v0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v15, v15, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    goto :goto_2

    :cond_8
    const/4 v15, 0x0

    .line 5877
    .local v15, "naviBg":Landroid/view/View;
    :goto_2
    if-eqz v15, :cond_9

    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v16

    if-nez v16, :cond_9

    .line 5878
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object/from16 v17, v1

    .end local v1    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .local v17, "attrs":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, -0x1

    if-eq v4, v1, :cond_a

    .line 5879
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    move v13, v1

    .end local v13    # "bottomMargin":I
    .local v1, "bottomMargin":I
    goto :goto_3

    .line 5877
    .end local v17    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .local v1, "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v13    # "bottomMargin":I
    :cond_9
    move-object/from16 v17, v1

    .line 5881
    .end local v1    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v14    # "statusBg":Landroid/view/View;
    .end local v15    # "naviBg":Landroid/view/View;
    .restart local v17    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_a
    :goto_3
    goto :goto_5

    .line 5867
    .end local v17    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v1    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_b
    move-object/from16 v17, v1

    .line 5881
    .end local v1    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v17    # "attrs":Landroid/view/WindowManager$LayoutParams;
    if-lez v6, :cond_e

    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v1

    if-lez v1, :cond_e

    .line 5882
    const/4 v8, 0x1

    .line 5883
    const/4 v9, 0x5

    .line 5884
    move v10, v6

    .line 5885
    const/4 v11, -0x1

    .line 5886
    iget-object v1, v0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-boolean v1, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->visible:Z

    if-eqz v1, :cond_c

    iget-object v1, v0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v1, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    goto :goto_4

    :cond_c
    const/4 v1, 0x0

    .line 5887
    .local v1, "statusBg":Landroid/view/View;
    :goto_4
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_d

    .line 5888
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v12, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 5890
    .end local v1    # "statusBg":Landroid/view/View;
    :cond_d
    goto :goto_5

    :cond_e
    if-lez v5, :cond_f

    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    if-lez v1, :cond_f

    .line 5891
    const/4 v8, 0x1

    .line 5892
    const/16 v9, 0x30

    .line 5893
    const/4 v10, -0x1

    .line 5894
    move v11, v5

    goto :goto_5

    .line 5895
    :cond_f
    if-lez v7, :cond_10

    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v1

    if-lez v1, :cond_10

    .line 5896
    const/4 v8, 0x1

    .line 5897
    const/16 v9, 0x50

    .line 5898
    const/4 v10, -0x1

    .line 5899
    move v11, v7

    .line 5902
    :cond_10
    :goto_5
    if-eqz v8, :cond_14

    iget v1, v0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundColor:I

    if-eqz v1, :cond_14

    .line 5903
    iget-object v1, v0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundView:Landroid/view/View;

    if-nez v1, :cond_11

    .line 5904
    new-instance v1, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundView:Landroid/view/View;

    .line 5905
    invoke-virtual {v0, v1}, Lcom/android/internal/policy/DecorView;->addView(Landroid/view/View;)V

    goto :goto_6

    .line 5906
    :cond_11
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eq v1, v0, :cond_12

    .line 5907
    new-instance v1, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundView:Landroid/view/View;

    .line 5908
    invoke-virtual {v0, v1}, Lcom/android/internal/policy/DecorView;->addView(Landroid/view/View;)V

    .line 5911
    :cond_12
    :goto_6
    iget-object v1, v0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_13

    .line 5912
    iget-object v1, v0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundView:Landroid/view/View;

    const-string v4, "DisplayCutoutBackgroundView"

    invoke-virtual {v1, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 5913
    iget-object v1, v0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundView:Landroid/view/View;

    const/high16 v4, -0x40800000    # -1.0f

    invoke-virtual {v1, v4}, Landroid/view/View;->setElevation(F)V

    .line 5916
    :cond_13
    iget-object v1, v0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 5917
    .local v1, "param":Landroid/widget/FrameLayout$LayoutParams;
    iput v9, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 5918
    iput v10, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 5919
    iput v11, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 5920
    iput v12, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 5921
    iput v13, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 5923
    iget-object v4, v0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundView:Landroid/view/View;

    iget v14, v0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundColor:I

    invoke-virtual {v4, v14}, Landroid/view/View;->setBackgroundColor(I)V

    .line 5924
    iget-object v4, v0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->requestLayout()V

    .end local v1    # "param":Landroid/widget/FrameLayout$LayoutParams;
    goto :goto_7

    .line 5925
    :cond_14
    iget-object v1, v0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundView:Landroid/view/View;

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, v0, :cond_15

    .line 5926
    iget-object v1, v0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/DecorView;->removeView(Landroid/view/View;)V

    .line 5927
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundView:Landroid/view/View;

    goto :goto_9

    .line 5925
    :cond_15
    :goto_7
    goto :goto_9

    .line 5850
    .end local v2    # "cutout":Landroid/view/DisplayCutout;
    .end local v3    # "leftCutout":I
    .end local v5    # "topCutout":I
    .end local v6    # "rightCutout":I
    .end local v7    # "bottomCutout":I
    .end local v8    # "needBackground":Z
    .end local v9    # "gravity":I
    .end local v10    # "width":I
    .end local v11    # "height":I
    .end local v12    # "topMargin":I
    .end local v13    # "bottomMargin":I
    .end local v17    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .local v1, "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_16
    move-object/from16 v17, v1

    .end local v1    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v17    # "attrs":Landroid/view/WindowManager$LayoutParams;
    goto :goto_8

    .line 5848
    .end local v17    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v1    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_17
    move-object/from16 v17, v1

    .line 5929
    .end local v1    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v17    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :goto_8
    iget-object v1, v0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundView:Landroid/view/View;

    if-eqz v1, :cond_18

    .line 5930
    invoke-virtual {v0, v1}, Lcom/android/internal/policy/DecorView;->removeView(Landroid/view/View;)V

    .line 5931
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundView:Landroid/view/View;

    goto :goto_a

    .line 5929
    :cond_18
    :goto_9
    nop

    .line 5933
    :goto_a
    return-void
.end method

.method private blacklist updateElevation()V
    .locals 1

    .line 4097
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/DecorView;->updateElevation(Z)V

    .line 4098
    return-void
.end method

.method private blacklist updateElevation(Z)V
    .locals 10
    .param p1, "forceUpdate"    # Z

    .line 4103
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mPreventElevationUpdate:Z

    if-eqz v0, :cond_0

    .line 4104
    return-void

    .line 4108
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWindowingMode()I

    move-result v0

    .line 4109
    .local v0, "windowingMode":I
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-boolean v1, v1, Lcom/android/internal/policy/PhoneWindow;->mRenderShadowsInCompositor:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 4110
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isPopOverState()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    .line 4112
    .local v1, "renderShadowsInCompositor":Z
    :goto_0
    const/4 v4, 0x5

    if-eqz v1, :cond_4

    .line 4114
    if-eq v0, v4, :cond_2

    iget-boolean v5, p0, Lcom/android/internal/policy/DecorView;->mElevationAdjustedForStack:Z

    if-eqz v5, :cond_3

    :cond_2
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 4116
    invoke-virtual {v5}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    if-lt v5, v3, :cond_3

    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 4117
    invoke-virtual {v5}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x63

    if-gt v5, v6, :cond_3

    goto :goto_1

    .line 4121
    :cond_3
    return-void

    .line 4125
    :cond_4
    :goto_1
    const/4 v5, 0x0

    .line 4126
    .local v5, "elevation":F
    iget-boolean v6, p0, Lcom/android/internal/policy/DecorView;->mElevationAdjustedForStack:Z

    .line 4127
    .local v6, "wasAdjustedForStack":Z
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v7}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    .line 4131
    .local v7, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget-boolean v8, p0, Lcom/android/internal/policy/DecorView;->mIsPopOver:Z

    if-eqz v8, :cond_5

    iget-boolean v8, p0, Lcom/android/internal/policy/DecorView;->mIsPopOverForMultiPaneLayout:Z

    if-nez v8, :cond_6

    iget-boolean v8, p0, Lcom/android/internal/policy/DecorView;->mPreventPopOverElevation:Z

    if-nez v8, :cond_6

    .line 4132
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isResolverActivityWithoutShadow()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 4133
    :cond_6
    const/4 v5, 0x0

    .line 4134
    iput-boolean v3, p0, Lcom/android/internal/policy/DecorView;->mElevationAdjustedForStack:Z

    goto/16 :goto_4

    .line 4135
    :cond_7
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isPopOverState()Z

    move-result v8

    const/high16 v9, 0x42000000    # 32.0f

    if-eqz v8, :cond_8

    .line 4136
    invoke-direct {p0, v9}, Lcom/android/internal/policy/DecorView;->dipToPx(F)F

    move-result v5

    .line 4137
    iput-boolean v3, p0, Lcom/android/internal/policy/DecorView;->mElevationAdjustedForStack:Z

    goto/16 :goto_4

    .line 4139
    :cond_8
    iget v8, v7, Landroid/view/WindowManager$LayoutParams;->multiwindowFlags:I

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_9

    .line 4141
    const/high16 v2, 0x41400000    # 12.0f

    invoke-direct {p0, v2}, Lcom/android/internal/policy/DecorView;->dipToPx(F)F

    move-result v5

    .line 4142
    iput-boolean v3, p0, Lcom/android/internal/policy/DecorView;->mElevationAdjustedForStack:Z

    goto :goto_4

    .line 4143
    :cond_9
    if-ne v0, v4, :cond_10

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isResizing()Z

    move-result v4

    if-nez v4, :cond_10

    .line 4145
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->hasDecorCaptionWindow()Z

    move-result v4

    if-nez v4, :cond_10

    .line 4147
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->hasWindowFocus()Z

    .line 4148
    move v2, v9

    .line 4153
    .end local v5    # "elevation":F
    .local v2, "elevation":F
    iget-boolean v4, p0, Lcom/android/internal/policy/DecorView;->mAllowUpdateElevation:Z

    if-nez v4, :cond_a

    .line 4154
    const/high16 v2, 0x42000000    # 32.0f

    .line 4158
    :cond_a
    iget-boolean v4, p0, Lcom/android/internal/policy/DecorView;->mIsDexEnabled:Z

    if-eqz v4, :cond_c

    .line 4159
    iget v4, v7, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_b

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isFullscreenMode()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 4161
    const/4 v2, 0x0

    goto :goto_2

    .line 4163
    :cond_b
    const/high16 v2, 0x41400000    # 12.0f

    goto :goto_2

    .line 4166
    :cond_c
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isNativeActivity()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 4167
    const/high16 v2, 0x41400000    # 12.0f

    .line 4169
    :cond_d
    :goto_2
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isActivity()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 4170
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isFullSize()Z

    move-result v4

    if-nez v4, :cond_e

    .line 4171
    const/4 v2, 0x0

    goto :goto_3

    .line 4172
    :cond_e
    iget v4, p0, Lcom/android/internal/policy/DecorView;->mLastEmbeddingState:I

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 4173
    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->getEmbedActivityMode()I

    move-result v5

    if-eq v4, v5, :cond_f

    .line 4174
    const/4 p1, 0x1

    .line 4179
    :cond_f
    :goto_3
    invoke-direct {p0, v2}, Lcom/android/internal/policy/DecorView;->dipToPx(F)F

    move-result v5

    .line 4180
    .end local v2    # "elevation":F
    .restart local v5    # "elevation":F
    iput-boolean v3, p0, Lcom/android/internal/policy/DecorView;->mElevationAdjustedForStack:Z

    goto :goto_4

    .line 4182
    :cond_10
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mElevationAdjustedForStack:Z

    .line 4187
    :goto_4
    if-nez v6, :cond_11

    iget-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mElevationAdjustedForStack:Z

    if-eqz v2, :cond_14

    .line 4188
    :cond_11
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getElevation()F

    move-result v2

    cmpl-float v2, v2, v5

    if-nez v2, :cond_12

    if-eqz p1, :cond_14

    .line 4189
    :cond_12
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isResizing()Z

    move-result v2

    if-nez v2, :cond_13

    .line 4190
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2, v5}, Lcom/android/internal/policy/PhoneWindow;->setElevation(F)V

    goto :goto_5

    .line 4195
    :cond_13
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/DecorView;->setElevation(F)V

    .line 4198
    :cond_14
    :goto_5
    return-void
.end method

.method private blacklist updateImmersiveModeBySystemUiVisibility(I)V
    .locals 8
    .param p1, "systemUiVis"    # I

    .line 4822
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->checkImmersiveModeBySystemUiVisibility(I)Z

    move-result v0

    .line 4823
    .local v0, "isImmersiveMode":Z
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v1

    .line 4824
    .local v1, "controller":Landroid/view/WindowInsetsController;
    if-nez v1, :cond_0

    .line 4825
    const-string v2, "DecorView"

    const-string/jumbo v3, "updateImmersiveModeBySystemUiVisibility: controller is null."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4826
    return-void

    .line 4828
    :cond_0
    invoke-interface {v1}, Landroid/view/WindowInsetsController;->getSystemBarsBehavior()I

    move-result v2

    const/4 v3, 0x2

    and-int/2addr v2, v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    .line 4830
    invoke-interface {v1, v5}, Landroid/view/WindowInsetsController;->isRequestedVisible(I)Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v5

    goto :goto_0

    :cond_1
    move v2, v4

    .line 4831
    .local v2, "isCurrentImmersiveMode":Z
    :goto_0
    sget-boolean v6, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->DEBUG:Z

    if-eqz v6, :cond_2

    .line 4832
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkImmersiveModeBySystemUiVisibility: isCurrentImmersiveMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isImmersiveMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->log(Ljava/lang/String;)V

    .line 4835
    :cond_2
    if-eq v2, v0, :cond_4

    .line 4836
    if-eqz v0, :cond_3

    .line 4837
    iput-boolean v5, p0, Lcom/android/internal/policy/DecorView;->mSetImmersiveModeBySystemUiVisibility:Z

    .line 4838
    invoke-interface {v1}, Landroid/view/WindowInsetsController;->getSystemBarsBehavior()I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/DecorView;->mSavedSystemBarsBehavior:I

    .line 4839
    invoke-interface {v1, v3}, Landroid/view/WindowInsetsController;->setSystemBarsBehavior(I)V

    .line 4840
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v3

    invoke-interface {v1, v3}, Landroid/view/WindowInsetsController;->hide(I)V

    goto :goto_1

    .line 4841
    :cond_3
    iget-boolean v3, p0, Lcom/android/internal/policy/DecorView;->mSetImmersiveModeBySystemUiVisibility:Z

    if-eqz v3, :cond_4

    .line 4842
    iput-boolean v4, p0, Lcom/android/internal/policy/DecorView;->mSetImmersiveModeBySystemUiVisibility:Z

    .line 4843
    iget v3, p0, Lcom/android/internal/policy/DecorView;->mSavedSystemBarsBehavior:I

    invoke-interface {v1, v3}, Landroid/view/WindowInsetsController;->setSystemBarsBehavior(I)V

    .line 4844
    and-int/lit8 v3, p1, 0x2

    if-nez v3, :cond_4

    .line 4845
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v3

    invoke-interface {v1, v3}, Landroid/view/WindowInsetsController;->show(I)V

    .line 4850
    :cond_4
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/internal/policy/DecorView;->setKnoxBadgeStateForImmersive(Z)V

    .line 4852
    return-void
.end method

.method private blacklist updateOutlineProvider()V
    .locals 2

    .line 4316
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isActivity()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4317
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsPopOver:Z

    if-eqz v0, :cond_0

    .line 4318
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->POP_OVER_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    goto :goto_0

    .line 4319
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mWindowingMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 4320
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->FREEFORM_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    goto :goto_0

    .line 4321
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mLastOutlineProvider:Landroid/view/ViewOutlineProvider;

    if-eq v0, v1, :cond_2

    .line 4322
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/DecorView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 4325
    :cond_2
    :goto_0
    return-void
.end method

.method private blacklist updateOverlayWithAppContentForImmersive()V
    .locals 2

    .line 4993
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsDexEnabled:Z

    if-eqz v0, :cond_0

    .line 4994
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mCaptionType:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 5006
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mCompatWindow:Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->getDecorView()Lcom/android/internal/policy/DecorView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5007
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateDecorCaptionWindowVisibility()V

    .line 5008
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mCompatWindow:Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->getDecorView()Lcom/android/internal/policy/DecorView;

    move-result-object v0

    invoke-direct {v0}, Lcom/android/internal/policy/DecorView;->updateOverlayWithAppContentForImmersive()V

    goto :goto_0

    .line 4997
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isFreeformMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mIsImmersiveMode:Z

    if-eqz v1, :cond_0

    .line 4998
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DecorCaptionView;->setOverlayWithAppContent(Z)V

    .line 4999
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mImmersiveHelper:Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;

    if-eqz v0, :cond_0

    .line 5000
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->initImmersiveHoverState()V

    .line 5013
    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private blacklist updateRoundedCornerStateIfNeeded()V
    .locals 19

    .line 5203
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/PhoneWindow;->mActivityCurrentConfig:Landroid/content/res/Configuration;

    if-nez v1, :cond_0

    .line 5204
    return-void

    .line 5207
    :cond_0
    iget-object v1, v0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 5208
    .local v1, "context":Landroid/content/Context;
    if-nez v1, :cond_1

    .line 5209
    iget-object v1, v0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    .line 5211
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 5212
    .local v2, "config":Landroid/content/res/Configuration;
    const v3, -0xb1b1b2

    .line 5213
    .local v3, "cornerColorForDockedDivider":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getWindowingMode()I

    move-result v4

    .line 5214
    .local v4, "windowingMode":I
    iget-object v5, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->isPopOver()Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_28

    .line 5221
    iget-object v5, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v5

    .line 5222
    .local v5, "rotation":I
    const/4 v7, 0x0

    .line 5223
    .local v7, "show":Z
    const/4 v8, 0x5

    const/4 v10, 0x2

    const/16 v11, 0xc

    const/4 v12, 0x1

    if-ne v4, v12, :cond_1c

    .line 5224
    iget-object v13, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v13}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v13

    .line 5225
    .local v13, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v14, v13, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v15, 0x7db

    if-ne v14, v15, :cond_2

    move v14, v12

    goto :goto_0

    :cond_2
    move v14, v6

    .line 5226
    .local v14, "isInputMethod":Z
    :goto_0
    invoke-virtual {v13}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v15

    .line 5227
    .local v15, "isFullscreen":Z
    iget v9, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v9, v10, :cond_e

    iget-boolean v9, v0, Lcom/android/internal/policy/DecorView;->mHasDisplayCutout:Z

    if-eqz v9, :cond_e

    if-nez v14, :cond_3

    iget v9, v13, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    if-eq v9, v12, :cond_e

    if-eqz v15, :cond_e

    .line 5229
    :cond_3
    const/4 v9, 0x0

    .line 5230
    .local v9, "corners":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v11

    .line 5231
    .local v11, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v11, :cond_c

    .line 5232
    iget v10, v13, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v10, v10, 0x400

    const/16 v17, 0x4

    if-nez v10, :cond_5

    iget v10, v13, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    and-int/lit8 v10, v10, 0x4

    if-eqz v10, :cond_4

    goto :goto_1

    :cond_4
    move v12, v6

    :cond_5
    :goto_1
    move v10, v12

    .line 5234
    .local v10, "hasFullScreen":Z
    iget v12, v11, Landroid/view/ViewRootImpl;->mRequestedLetterboxDirection:I

    .line 5235
    .local v12, "letterboxDirection":I
    and-int/lit8 v18, v12, 0x1

    if-eqz v18, :cond_8

    .line 5236
    if-eqz v14, :cond_7

    if-eqz v15, :cond_6

    if-nez v10, :cond_7

    .line 5237
    :cond_6
    move/from16 v8, v17

    goto :goto_2

    :cond_7
    nop

    :goto_2
    or-int/2addr v9, v8

    .line 5239
    :cond_8
    and-int/lit8 v8, v12, 0x2

    if-eqz v8, :cond_b

    .line 5240
    if-eqz v14, :cond_a

    if-eqz v15, :cond_9

    if-nez v10, :cond_a

    .line 5241
    :cond_9
    const/16 v8, 0x8

    move/from16 v16, v8

    goto :goto_3

    :cond_a
    const/16 v16, 0xa

    :goto_3
    or-int v8, v9, v16

    move v9, v8

    .line 5243
    :cond_b
    invoke-virtual {v11, v12}, Landroid/view/ViewRootImpl;->updateAppliedLetterboxDirection(I)Z

    .line 5245
    .end local v10    # "hasFullScreen":Z
    .end local v12    # "letterboxDirection":I
    :cond_c
    if-eqz v9, :cond_d

    .line 5246
    iget v8, v0, Lcom/android/internal/policy/DecorView;->mRoundedCornerRadiusForLetterBox:I

    invoke-super {v0, v9, v8}, Landroid/widget/FrameLayout;->semSetRoundedCorners(II)V

    .line 5247
    const/high16 v8, -0x1000000

    invoke-super {v0, v9, v8}, Landroid/widget/FrameLayout;->semSetRoundedCornerColor(II)V

    .line 5248
    const/4 v7, 0x1

    .line 5250
    .end local v9    # "corners":I
    .end local v11    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :cond_d
    goto/16 :goto_b

    :cond_e
    iget v8, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v8, v12, :cond_d

    iget-boolean v8, v0, Lcom/android/internal/policy/DecorView;->mIsShowNavigationBar:Z

    if-eqz v8, :cond_d

    iget v8, v13, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v9, 0x7f5

    if-eq v8, v9, :cond_d

    if-nez v14, :cond_d

    .line 5252
    const/4 v8, 0x0

    .line 5253
    .local v8, "needToDrawAboveNavBar":Z
    iget-boolean v9, v0, Lcom/android/internal/policy/DecorView;->mForceHideRoundedCorner:Z

    if-eqz v9, :cond_f

    .line 5254
    const/4 v8, 0x0

    goto/16 :goto_a

    .line 5255
    :cond_f
    iget-boolean v9, v0, Lcom/android/internal/policy/DecorView;->mForceRoundedCorner:Z

    if-eqz v9, :cond_12

    .line 5257
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "task_bar"

    invoke-static {v9, v10, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v12, :cond_10

    move v9, v12

    goto :goto_4

    :cond_10
    move v9, v6

    .line 5260
    .local v9, "hasTaskBar":Z
    :goto_4
    iget-object v10, v0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-boolean v10, v10, Lcom/android/internal/policy/DecorView$ColorViewState;->visible:Z

    if-eqz v10, :cond_11

    if-nez v9, :cond_11

    iget v10, v0, Lcom/android/internal/policy/DecorView;->mRoundedCornerMode:I

    and-int/2addr v10, v11

    if-ne v10, v11, :cond_11

    goto :goto_5

    :cond_11
    move v12, v6

    :goto_5
    move v8, v12

    .line 5262
    .end local v9    # "hasTaskBar":Z
    goto :goto_a

    .line 5263
    :cond_12
    sget-boolean v9, Landroid/view/View;->sIsSamsungBasicInteraction:Z

    if-eqz v9, :cond_13

    iget-object v9, v0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-boolean v9, v9, Lcom/android/internal/policy/DecorView$ColorViewState;->visible:Z

    if-eqz v9, :cond_13

    move v9, v12

    goto :goto_6

    :cond_13
    move v9, v6

    :goto_6
    move v8, v9

    .line 5265
    if-eqz v8, :cond_17

    .line 5267
    iget-object v9, v0, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    if-eqz v9, :cond_14

    move v9, v12

    goto :goto_7

    :cond_14
    move v9, v6

    .line 5268
    .local v9, "defaultViewCount":I
    :goto_7
    iget-object v10, v0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v10, v10, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    if-eqz v10, :cond_15

    move v10, v12

    goto :goto_8

    :cond_15
    move v10, v6

    :goto_8
    add-int/2addr v9, v10

    .line 5269
    iget-object v10, v0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v10, v10, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    if-eqz v10, :cond_16

    goto :goto_9

    :cond_16
    move v12, v6

    :goto_9
    add-int/2addr v9, v12

    .line 5270
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getChildCount()I

    move-result v10

    if-ge v9, v10, :cond_17

    if-eqz v8, :cond_17

    iget-object v10, v0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v10, v10, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    if-eqz v10, :cond_17

    iget-object v10, v0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v10, v10, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    .line 5272
    invoke-direct {v0, v10}, Lcom/android/internal/policy/DecorView;->isChildIntersectsWith(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_17

    .line 5273
    const/4 v8, 0x0

    .line 5277
    .end local v9    # "defaultViewCount":I
    :cond_17
    :goto_a
    if-eqz v8, :cond_18

    iget-boolean v9, v0, Lcom/android/internal/policy/DecorView;->mGestureNavBarEnabled:Z

    if-eqz v9, :cond_18

    iget-boolean v9, v0, Lcom/android/internal/policy/DecorView;->mGestureHintEnabled:Z

    if-nez v9, :cond_18

    .line 5279
    const/4 v8, 0x0

    .line 5281
    :cond_18
    if-eqz v8, :cond_19

    if-eqz v15, :cond_19

    iget-object v9, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v9}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v9

    instance-of v9, v9, Landroid/app/Activity;

    if-eqz v9, :cond_19

    .line 5282
    const/4 v8, 0x0

    .line 5284
    :cond_19
    if-eqz v8, :cond_1a

    .line 5285
    iget v9, v0, Lcom/android/internal/policy/DecorView;->mRoundedCornerRadius:I

    invoke-super {v0, v11, v9}, Landroid/widget/FrameLayout;->semSetRoundedCorners(II)V

    .line 5286
    iget-object v9, v0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    .line 5287
    invoke-direct {v0, v9}, Lcom/android/internal/policy/DecorView;->getCurrentColor(Lcom/android/internal/policy/DecorView$ColorViewState;)I

    move-result v9

    .line 5286
    invoke-super {v0, v11, v9}, Landroid/widget/FrameLayout;->semSetRoundedCornerColor(II)V

    .line 5289
    :cond_1a
    move v7, v8

    .line 5291
    .end local v8    # "needToDrawAboveNavBar":Z
    .end local v13    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v14    # "isInputMethod":Z
    .end local v15    # "isFullscreen":Z
    :cond_1b
    :goto_b
    goto/16 :goto_d

    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->isSplitMode()Z

    move-result v9

    if-eqz v9, :cond_1b

    .line 5292
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getStagePosition()I

    move-result v9

    .line 5293
    .local v9, "stagePosition":I
    and-int/lit8 v10, v9, 0x78

    if-eqz v10, :cond_24

    .line 5297
    iget-object v10, v0, Lcom/android/internal/policy/DecorView;->mWm:Landroid/view/WindowManager;

    if-nez v10, :cond_1d

    .line 5298
    const-string/jumbo v10, "window"

    invoke-virtual {v1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowManager;

    iput-object v10, v0, Lcom/android/internal/policy/DecorView;->mWm:Landroid/view/WindowManager;

    .line 5300
    :cond_1d
    iget-object v10, v0, Lcom/android/internal/policy/DecorView;->mWm:Landroid/view/WindowManager;

    invoke-interface {v10}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    .line 5301
    .local v10, "windowBounds":Landroid/graphics/Rect;
    sget-boolean v13, Lcom/samsung/android/rune/ViewRune;->VIEW_DECOR_ROUNDED_CORNER_MW_DIVIDER_3_UP:Z

    const/16 v14, 0xf

    const v15, -0xb1b1b2

    if-eqz v13, :cond_1e

    iget-object v13, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v13}, Lcom/android/internal/policy/PhoneWindow;->isFloating()Z

    move-result v13

    if-nez v13, :cond_1e

    .line 5302
    iget v8, v0, Lcom/android/internal/policy/DecorView;->mRoundedCornerRadiusForMultiWindow:I

    invoke-super {v0, v14, v8}, Landroid/widget/FrameLayout;->semSetRoundedCorners(II)V

    .line 5304
    invoke-super {v0, v14, v15}, Landroid/widget/FrameLayout;->semSetRoundedCornerColor(II)V

    goto :goto_c

    .line 5306
    :cond_1e
    sget-boolean v13, Lcom/samsung/android/rune/ViewRune;->VIEW_DECOR_ROUNDED_CORNER_MW_DIVIDER:Z

    if-eqz v13, :cond_23

    .line 5307
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getWidth()I

    move-result v6

    if-gt v13, v6, :cond_1f

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getHeight()I

    move-result v13

    if-le v6, v13, :cond_20

    :cond_1f
    iget-object v6, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-boolean v6, v6, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    if-nez v6, :cond_23

    .line 5308
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->isFullSize()Z

    move-result v6

    if-eqz v6, :cond_23

    .line 5309
    :cond_20
    sparse-switch v9, :sswitch_data_0

    goto :goto_c

    .line 5317
    :sswitch_0
    iget v6, v0, Lcom/android/internal/policy/DecorView;->mRoundedCornerRadiusForMultiWindow:I

    const/4 v8, 0x3

    invoke-super {v0, v8, v6}, Landroid/widget/FrameLayout;->semSetRoundedCorners(II)V

    .line 5319
    invoke-super {v0, v8, v15}, Landroid/widget/FrameLayout;->semSetRoundedCornerColor(II)V

    .line 5321
    goto :goto_c

    .line 5336
    :sswitch_1
    if-ne v5, v12, :cond_21

    .line 5337
    iget v6, v0, Lcom/android/internal/policy/DecorView;->mRoundedCornerRadiusForMultiWindow:I

    invoke-super {v0, v8, v6}, Landroid/widget/FrameLayout;->semSetRoundedCorners(II)V

    .line 5339
    invoke-super {v0, v8, v15}, Landroid/widget/FrameLayout;->semSetRoundedCornerColor(II)V

    goto :goto_c

    .line 5342
    :cond_21
    iget v6, v0, Lcom/android/internal/policy/DecorView;->mRoundedCornerRadiusForMultiWindow:I

    invoke-super {v0, v14, v6}, Landroid/widget/FrameLayout;->semSetRoundedCorners(II)V

    .line 5344
    invoke-super {v0, v14, v15}, Landroid/widget/FrameLayout;->semSetRoundedCornerColor(II)V

    goto :goto_c

    .line 5311
    :sswitch_2
    iget v6, v0, Lcom/android/internal/policy/DecorView;->mRoundedCornerRadiusForMultiWindow:I

    invoke-super {v0, v11, v6}, Landroid/widget/FrameLayout;->semSetRoundedCorners(II)V

    .line 5313
    invoke-super {v0, v11, v15}, Landroid/widget/FrameLayout;->semSetRoundedCornerColor(II)V

    .line 5315
    goto :goto_c

    .line 5323
    :sswitch_3
    if-ne v5, v12, :cond_22

    .line 5324
    iget v6, v0, Lcom/android/internal/policy/DecorView;->mRoundedCornerRadiusForMultiWindow:I

    invoke-super {v0, v14, v6}, Landroid/widget/FrameLayout;->semSetRoundedCorners(II)V

    .line 5326
    invoke-super {v0, v14, v15}, Landroid/widget/FrameLayout;->semSetRoundedCornerColor(II)V

    goto :goto_c

    .line 5329
    :cond_22
    iget v6, v0, Lcom/android/internal/policy/DecorView;->mRoundedCornerRadiusForMultiWindow:I

    const/16 v8, 0xa

    invoke-super {v0, v8, v6}, Landroid/widget/FrameLayout;->semSetRoundedCorners(II)V

    .line 5331
    invoke-super {v0, v8, v15}, Landroid/widget/FrameLayout;->semSetRoundedCornerColor(II)V

    .line 5350
    :cond_23
    :goto_c
    const/4 v7, 0x1

    .line 5351
    const/4 v6, 0x0

    iput-boolean v6, v0, Lcom/android/internal/policy/DecorView;->mForceRoundedCorner:Z

    .line 5355
    .end local v9    # "stagePosition":I
    .end local v10    # "windowBounds":Landroid/graphics/Rect;
    :cond_24
    :goto_d
    if-eqz v7, :cond_27

    .line 5356
    if-eqz v5, :cond_26

    const/4 v6, 0x2

    if-ne v5, v6, :cond_25

    goto :goto_e

    .line 5360
    :cond_25
    iget-object v6, v0, Lcom/android/internal/policy/DecorView;->mOverrideRoundedCornerBounds:Landroid/graphics/Rect;

    iget v8, v0, Lcom/android/internal/policy/DecorView;->mLastLeftInset:I

    .line 5361
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getWidth()I

    move-result v9

    iget v10, v0, Lcom/android/internal/policy/DecorView;->mLastRightInset:I

    sub-int/2addr v9, v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getHeight()I

    move-result v10

    .line 5360
    const/4 v11, 0x0

    invoke-virtual {v6, v8, v11, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_f

    .line 5357
    :cond_26
    :goto_e
    iget-object v6, v0, Lcom/android/internal/policy/DecorView;->mOverrideRoundedCornerBounds:Landroid/graphics/Rect;

    iget v8, v0, Lcom/android/internal/policy/DecorView;->mLastLeftInset:I

    iget v9, v0, Lcom/android/internal/policy/DecorView;->mLastTopInset:I

    .line 5358
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getWidth()I

    move-result v10

    iget v11, v0, Lcom/android/internal/policy/DecorView;->mLastRightInset:I

    sub-int/2addr v10, v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getHeight()I

    move-result v11

    iget v12, v0, Lcom/android/internal/policy/DecorView;->mLastBottomInset:I

    sub-int/2addr v11, v12

    .line 5357
    invoke-virtual {v6, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_f

    .line 5364
    :cond_27
    const/4 v6, 0x0

    invoke-super {v0, v6}, Landroid/widget/FrameLayout;->semSetRoundedCorners(I)V

    .line 5365
    iget-object v6, v0, Lcom/android/internal/policy/DecorView;->mOverrideRoundedCornerBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    .line 5367
    :goto_f
    return-void

    .line 5216
    .end local v5    # "rotation":I
    .end local v7    # "show":Z
    :cond_28
    invoke-super {v0, v6}, Landroid/widget/FrameLayout;->semSetRoundedCorners(I)V

    .line 5217
    iget-object v5, v0, Lcom/android/internal/policy/DecorView;->mOverrideRoundedCornerBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->setEmpty()V

    .line 5218
    return-void

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_3
        0x10 -> :sswitch_2
        0x20 -> :sswitch_1
        0x40 -> :sswitch_0
    .end sparse-switch
.end method

.method private blacklist updateStatusGuard(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 17
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .line 2419
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 2421
    .local v2, "showStatusGuard":Z
    iget-object v3, v0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    const/16 v4, 0x8

    if-eqz v3, :cond_10

    .line 2422
    invoke-virtual {v3}, Lcom/android/internal/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_f

    .line 2424
    iget-object v3, v0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    .line 2425
    invoke-virtual {v3}, Lcom/android/internal/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2426
    .local v3, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v6, 0x0

    .line 2427
    .local v6, "mlpChanged":Z
    iget-object v7, v0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v7}, Lcom/android/internal/widget/ActionBarContextView;->isShown()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 2428
    iget-object v7, v0, Lcom/android/internal/policy/DecorView;->mTempRect:Landroid/graphics/Rect;

    if-nez v7, :cond_0

    .line 2429
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v0, Lcom/android/internal/policy/DecorView;->mTempRect:Landroid/graphics/Rect;

    .line 2431
    :cond_0
    iget-object v7, v0, Lcom/android/internal/policy/DecorView;->mTempRect:Landroid/graphics/Rect;

    .line 2434
    .local v7, "rect":Landroid/graphics/Rect;
    iget-object v8, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v8, v8, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    .line 2435
    invoke-virtual {v8, v1, v7}, Landroid/view/ViewGroup;->computeSystemWindowInsets(Landroid/view/WindowInsets;Landroid/graphics/Rect;)Landroid/view/WindowInsets;

    move-result-object v8

    .line 2436
    .local v8, "innerInsets":Landroid/view/WindowInsets;
    invoke-virtual {v8}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v9

    .line 2437
    .local v9, "newTopMargin":I
    invoke-virtual {v8}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v10

    .line 2438
    .local v10, "newLeftMargin":I
    invoke-virtual {v8}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v11

    .line 2443
    .local v11, "newRightMargin":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v12

    .line 2444
    .local v12, "rootInsets":Landroid/view/WindowInsets;
    invoke-virtual {v12}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v13

    .line 2445
    .local v13, "newGuardLeftMargin":I
    invoke-virtual {v12}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v14

    .line 2447
    .local v14, "newGuardRightMargin":I
    iget v15, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ne v15, v9, :cond_1

    iget v15, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-ne v15, v10, :cond_1

    iget v15, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eq v15, v11, :cond_2

    .line 2449
    :cond_1
    const/4 v6, 0x1

    .line 2450
    iput v9, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2451
    iput v10, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 2452
    iput v11, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 2455
    :cond_2
    if-lez v9, :cond_3

    iget-object v15, v0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    if-nez v15, :cond_3

    .line 2456
    new-instance v15, Landroid/view/View;

    iget-object v5, v0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-direct {v15, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v15, v0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    .line 2457
    invoke-virtual {v15, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2458
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v15, -0x1

    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v16, v2

    .end local v2    # "showStatusGuard":Z
    .local v16, "showStatusGuard":Z
    const/16 v2, 0x33

    invoke-direct {v5, v15, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    move-object v2, v5

    .line 2460
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput v13, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 2461
    iput v14, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 2462
    iget-object v4, v0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    iget-object v5, v0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v5, v5, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    invoke-virtual {v0, v5}, Lcom/android/internal/policy/DecorView;->indexOfChild(Landroid/view/View;)I

    move-result v5

    invoke-virtual {v0, v4, v5, v2}, Lcom/android/internal/policy/DecorView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    goto :goto_0

    .line 2455
    .end local v16    # "showStatusGuard":Z
    .local v2, "showStatusGuard":Z
    :cond_3
    move/from16 v16, v2

    .line 2463
    .end local v2    # "showStatusGuard":Z
    .restart local v16    # "showStatusGuard":Z
    iget-object v2, v0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    if-eqz v2, :cond_5

    .line 2464
    nop

    .line 2465
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 2466
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ne v4, v5, :cond_4

    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    if-ne v4, v13, :cond_4

    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    if-eq v4, v14, :cond_6

    .line 2468
    :cond_4
    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 2469
    iput v13, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 2470
    iput v14, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 2471
    iget-object v4, v0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 2463
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_5
    :goto_0
    nop

    .line 2477
    :cond_6
    :goto_1
    iget-object v2, v0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    const/4 v4, 0x1

    if-eqz v2, :cond_7

    move v5, v4

    goto :goto_2

    :cond_7
    const/4 v5, 0x0

    .line 2479
    .end local v16    # "showStatusGuard":Z
    .local v5, "showStatusGuard":Z
    :goto_2
    if-eqz v5, :cond_8

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_8

    .line 2481
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->updateStatusGuardColor()V

    .line 2488
    :cond_8
    iget-object v2, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeaturesPrivate()I

    move-result v2

    and-int/lit16 v2, v2, 0x400

    if-nez v2, :cond_9

    goto :goto_3

    :cond_9
    const/4 v4, 0x0

    :goto_3
    move v2, v4

    .line 2490
    .local v2, "nonOverlay":Z
    if-eqz v2, :cond_a

    if-eqz v5, :cond_a

    .line 2491
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v4

    const/4 v15, 0x0

    invoke-virtual {v1, v15, v4, v15, v15}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object v1

    .line 2493
    .end local v2    # "nonOverlay":Z
    .end local v7    # "rect":Landroid/graphics/Rect;
    .end local v8    # "innerInsets":Landroid/view/WindowInsets;
    .end local v9    # "newTopMargin":I
    .end local v10    # "newLeftMargin":I
    .end local v11    # "newRightMargin":I
    .end local v12    # "rootInsets":Landroid/view/WindowInsets;
    .end local v13    # "newGuardLeftMargin":I
    .end local v14    # "newGuardRightMargin":I
    .end local p1    # "insets":Landroid/view/WindowInsets;
    .local v1, "insets":Landroid/view/WindowInsets;
    :cond_a
    move/from16 v16, v5

    const/4 v2, 0x0

    goto :goto_5

    .line 2495
    .end local v1    # "insets":Landroid/view/WindowInsets;
    .end local v5    # "showStatusGuard":Z
    .local v2, "showStatusGuard":Z
    .restart local p1    # "insets":Landroid/view/WindowInsets;
    :cond_b
    move/from16 v16, v2

    .end local v2    # "showStatusGuard":Z
    .restart local v16    # "showStatusGuard":Z
    iget v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-nez v2, :cond_d

    iget v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-nez v2, :cond_d

    iget v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eqz v2, :cond_c

    goto :goto_4

    :cond_c
    const/4 v2, 0x0

    goto :goto_5

    .line 2496
    :cond_d
    :goto_4
    const/4 v6, 0x1

    .line 2497
    const/4 v2, 0x0

    iput v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2499
    iget-object v4, v0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    if-eqz v4, :cond_e

    .line 2500
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 2501
    .local v4, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v5, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v5, v7, :cond_e

    .line 2502
    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 2503
    iget-object v5, v0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2509
    .end local v4    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local p1    # "insets":Landroid/view/WindowInsets;
    .restart local v1    # "insets":Landroid/view/WindowInsets;
    :cond_e
    :goto_5
    if-eqz v6, :cond_11

    .line 2510
    iget-object v4, v0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v4, v3}, Lcom/android/internal/widget/ActionBarContextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    .line 2422
    .end local v1    # "insets":Landroid/view/WindowInsets;
    .end local v3    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v6    # "mlpChanged":Z
    .end local v16    # "showStatusGuard":Z
    .restart local v2    # "showStatusGuard":Z
    .restart local p1    # "insets":Landroid/view/WindowInsets;
    :cond_f
    move/from16 v16, v2

    const/4 v2, 0x0

    .end local v2    # "showStatusGuard":Z
    .restart local v16    # "showStatusGuard":Z
    goto :goto_6

    .line 2421
    .end local v16    # "showStatusGuard":Z
    .restart local v2    # "showStatusGuard":Z
    :cond_10
    move/from16 v16, v2

    const/4 v2, 0x0

    .line 2514
    .end local v2    # "showStatusGuard":Z
    .end local p1    # "insets":Landroid/view/WindowInsets;
    .restart local v1    # "insets":Landroid/view/WindowInsets;
    .restart local v16    # "showStatusGuard":Z
    :cond_11
    :goto_6
    iget-object v3, v0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    if-eqz v3, :cond_13

    .line 2515
    if-eqz v16, :cond_12

    move v4, v2

    goto :goto_7

    :cond_12
    const/16 v4, 0x8

    :goto_7
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2517
    :cond_13
    return-object v1
.end method

.method private blacklist updateStatusGuardColor()V
    .locals 4

    .line 2521
    nop

    .line 2522
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWindowSystemUiVisibility()I

    move-result v0

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2523
    .local v0, "lightStatusBar":Z
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2524
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    const v3, 0x10601a5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    goto :goto_1

    .line 2525
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    const v3, 0x10601a4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    .line 2523
    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2526
    return-void
.end method


# virtual methods
.method public blacklist addMultiSplitHandler()V
    .locals 4

    .line 5414
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    const-string v1, " decor="

    if-eqz v0, :cond_0

    .line 5415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addMultiSplitHandler: already exist. msh="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->logLifeCycle(Ljava/lang/String;)V

    .line 5417
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->drawableChanged()V

    .line 5418
    return-void

    .line 5421
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addMultiSplitHandler: on request. msh="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->logLifeCycle(Ljava/lang/String;)V

    .line 5423
    new-instance v0, Lcom/samsung/android/multiwindow/MultiSplitHandler;

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getMultiSplitActions()Lcom/samsung/android/multiwindow/MultiSplitActions;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/samsung/android/multiwindow/MultiSplitHandler;-><init>(Landroid/content/Context;Lcom/samsung/android/multiwindow/MultiSplitActions;)V

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    .line 5424
    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/policy/DecorView;->addView(Landroid/view/View;II)V

    .line 5426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addMultiSplitHandler: done. msh="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->logLifeCycle(Ljava/lang/String;)V

    .line 5427
    return-void
.end method

.method blacklist clearContentView()V
    .locals 3

    .line 3842
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v0, :cond_0

    .line 3843
    invoke-virtual {v0}, Lcom/android/internal/widget/DecorCaptionView;->removeContentView()V

    goto :goto_1

    .line 3847
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 3848
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3849
    .local v1, "v":Landroid/view/View;
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v2, v2, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v2, v2, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    if-eq v1, v2, :cond_1

    .line 3851
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->removeViewAt(I)V

    .line 3847
    .end local v1    # "v":Landroid/view/View;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3856
    .end local v0    # "i":I
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsDexEnabled:Z

    if-eqz v0, :cond_3

    .line 3857
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->removeDecorCaptionWindow()V

    .line 3860
    :cond_3
    return-void
.end method

.method public blacklist destroy()V
    .locals 1

    .line 4706
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    if-eqz v0, :cond_0

    .line 4707
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->release()V

    .line 4708
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    .line 4710
    :cond_0
    return-void
.end method

.method protected whitelist dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1532
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mPopOverContentAlpha:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 1533
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v0

    .line 1534
    .local v0, "saveCount":I
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWidth()I

    move-result v1

    .line 1535
    .local v1, "width":I
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getHeight()I

    move-result v2

    .line 1536
    .local v2, "height":I
    const/4 v4, 0x0

    const/4 v5, 0x0

    int-to-float v6, v1

    int-to-float v7, v2

    iget v3, p0, Lcom/android/internal/policy/DecorView;->mPopOverContentAlpha:F

    const/high16 v8, 0x437f0000    # 255.0f

    mul-float/2addr v3, v8

    float-to-int v8, v3

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFI)I

    .line 1537
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1538
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1539
    .end local v0    # "saveCount":I
    .end local v1    # "width":I
    .end local v2    # "height":I
    goto :goto_0

    .line 1540
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1542
    :goto_0
    return-void
.end method

.method public whitelist dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1082
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1083
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v1, :cond_0

    .line 1084
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1083
    :goto_0
    return v1
.end method

.method protected whitelist dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 4686
    sget-boolean v0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 4687
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchHoverEvent: action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mImmersiveHelper:Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;

    if-eqz v1, :cond_0

    .line 4688
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isImmersiveFullscreenOnDex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isImmersiveFullscreenOnDex()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "mImmersiveHelper=null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4687
    invoke-static {v0}, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->log(Ljava/lang/String;)V

    .line 4690
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mImmersiveHelper:Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isImmersiveFullscreenOnDex()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4691
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mImmersiveHelper:Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)V

    .line 4695
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 899
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 900
    .local v0, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    .line 901
    .local v1, "action":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    .line 903
    .local v4, "isDown":Z
    :goto_0
    if-eqz v4, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_2

    .line 906
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v5, v5, Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I

    if-lez v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v5, v5, Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I

    if-eq v5, v0, :cond_1

    .line 907
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/DecorView;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v5

    .line 908
    .local v5, "handled":Z
    if-eqz v5, :cond_1

    .line 909
    return v3

    .line 915
    .end local v5    # "handled":Z
    :cond_1
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v5, v5, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v5, v5, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    iget-boolean v5, v5, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-eqz v5, :cond_2

    .line 916
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v6, v5, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    invoke-virtual {v5, v6, v0, p1, v2}, Lcom/android/internal/policy/PhoneWindow;->performPanelShortcut(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 917
    return v3

    .line 922
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_4

    .line 923
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v2

    .line 924
    .local v2, "cb":Landroid/view/Window$Callback;
    if-eqz v2, :cond_3

    iget v5, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v5, :cond_3

    invoke-interface {v2, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v5

    goto :goto_1

    .line 925
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v5

    :goto_1
    nop

    .line 926
    .restart local v5    # "handled":Z
    if-eqz v5, :cond_4

    .line 927
    return v3

    .line 931
    .end local v2    # "cb":Landroid/view/Window$Callback;
    .end local v5    # "handled":Z
    :cond_4
    if-eqz v4, :cond_5

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v3, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-virtual {v2, v3, v5, p1}, Lcom/android/internal/policy/PhoneWindow;->onKeyDown(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_2

    .line 932
    :cond_5
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v3, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-virtual {v2, v3, v5, p1}, Lcom/android/internal/policy/PhoneWindow;->onKeyUp(IILandroid/view/KeyEvent;)Z

    move-result v2

    .line 931
    :goto_2
    return v2
.end method

.method public whitelist dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/KeyEvent;

    .line 939
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 940
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v0, v2, v3, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->performPanelShortcut(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v0

    .line 942
    .local v0, "handled":Z
    if-eqz v0, :cond_1

    .line 943
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v2, v2, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    if-eqz v2, :cond_0

    .line 944
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v2, v2, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    iput-boolean v1, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isHandled:Z

    .line 946
    :cond_0
    return v1

    .line 951
    .end local v0    # "handled":Z
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 952
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v2, :cond_2

    .line 953
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    .line 954
    .local v2, "handled":Z
    :goto_0
    if-eqz v2, :cond_3

    .line 955
    return v1

    .line 962
    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 963
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v3

    .line 964
    .local v3, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v3, :cond_4

    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v5, v5, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    if-nez v5, :cond_4

    .line 965
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v5, v3, p1}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    .line 966
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    invoke-virtual {v5, v3, v6, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->performPanelShortcut(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v2

    .line 968
    iput-boolean v4, v3, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    .line 969
    if-eqz v2, :cond_4

    .line 970
    return v1

    .line 973
    :cond_4
    return v4
.end method

.method public whitelist dispatchPointerCaptureChanged(Z)V
    .locals 1
    .param p1, "hasCapture"    # Z

    .line 4276
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchPointerCaptureChanged(Z)V

    .line 4277
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4278
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onPointerCaptureChanged(Z)V

    .line 4280
    :cond_0
    return-void
.end method

.method public blacklist dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1257
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1258
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1259
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1260
    const/4 v1, 0x1

    return v1

    .line 1263
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    return v1
.end method

.method blacklist dispatchRequestedOrientation(I)V
    .locals 1
    .param p1, "requestedOrientation"    # I

    .line 4747
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->hasDecorCaptionWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mCompatWindow:Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;

    if-eqz v0, :cond_0

    .line 4748
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->getDecorView()Lcom/android/internal/policy/DecorView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mCompatWindow:Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;

    .line 4749
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->getDecorView()Lcom/android/internal/policy/DecorView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getDecorCaptionView()Lcom/android/internal/widget/DecorCaptionView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4750
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mCompatWindow:Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->getDecorView()Lcom/android/internal/policy/DecorView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getDecorCaptionView()Lcom/android/internal/widget/DecorCaptionView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/DecorCaptionView;->dispatchRequestedOrientation(I)V

    .line 4752
    :cond_0
    return-void
.end method

.method public whitelist dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1012
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1023
    .local v0, "action":I
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->hasWindowDecorCaption()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1025
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->checkReadyToResizeFreeform(Landroid/view/MotionEvent;)Z

    .line 1029
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mImmersiveHelper:Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isImmersiveFullscreenOnDex()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1030
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mImmersiveHelper:Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;

    invoke-virtual {v1, p1}, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->dispatchTouchEvent(Landroid/view/MotionEvent;)V

    .line 1035
    :cond_0
    sget-boolean v1, Lcom/samsung/android/rune/ViewRune;->DECORCAPTION_HANDLER_AUTO_HIDE:Z

    if-eqz v1, :cond_1

    .line 1036
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/DecorView;->notifyScreenTouched(Landroid/view/MotionEvent;)V

    .line 1040
    :cond_1
    sget-boolean v1, Lcom/samsung/android/rune/ViewRune;->WIDGET_PEN_SUPPORTED:Z

    if-eqz v1, :cond_3

    .line 1041
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 1042
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1052
    :pswitch_0
    iget-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mIsPenSelectionMode:Z

    if-eqz v1, :cond_3

    .line 1053
    const/16 v1, 0xd5

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 1057
    :pswitch_1
    iget-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mIsPenSelectionMode:Z

    if-eqz v2, :cond_3

    .line 1058
    const/16 v2, 0xd4

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1059
    iput-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mIsPenSelectionMode:Z

    goto :goto_0

    .line 1044
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v2

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_2

    .line 1045
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mIsPenSelectionMode:Z

    .line 1046
    const/16 v1, 0xd3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 1048
    :cond_2
    iput-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mIsPenSelectionMode:Z

    .line 1068
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v1

    .line 1069
    .local v1, "cb":Landroid/view/Window$Callback;
    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_4

    iget v2, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v2, :cond_4

    .line 1070
    invoke-interface {v1, p1}, Landroid/view/Window$Callback;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_1

    :cond_4
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 1069
    :goto_1
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1075
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1076
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v1, :cond_0

    .line 1077
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1076
    :goto_0
    return v1
.end method

.method public whitelist dispatchWindowSystemUiVisiblityChanged(I)V
    .locals 0
    .param p1, "visibility"    # I

    .line 4930
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->updateImmersiveModeBySystemUiVisibility(I)V

    .line 4932
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchWindowSystemUiVisiblityChanged(I)V

    .line 4933
    return-void
.end method

.method public whitelist dispatchWindowVisibilityChanged(I)V
    .locals 2
    .param p1, "visibility"    # I

    .line 4938
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isImmersiveFullscreenOnDex()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->hasDecorCaptionWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4939
    invoke-virtual {p0, v1, v1}, Lcom/android/internal/policy/DecorView;->updateCaptionState(IZ)V

    .line 4943
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 4945
    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->onWindowFocusChangedForMultiSplitHandler(Z)V

    .line 4948
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchWindowVisibilityChanged(I)V

    .line 4949
    return-void
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1485
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateRoundedCornerStateIfNeeded()V

    .line 1489
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mPopOverBackgroundAlpha:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 1490
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWidth()I

    move-result v0

    .line 1491
    .local v0, "width":I
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getHeight()I

    move-result v1

    .line 1493
    .local v1, "height":I
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mPopOverClipOutPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 1494
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mPopOverClipOutPath:Landroid/graphics/Path;

    new-instance v3, Landroid/graphics/RectF;

    int-to-float v4, v0

    int-to-float v5, v1

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v4, p0, Lcom/android/internal/policy/DecorView;->mPopOverRadius:I

    int-to-float v5, v4

    int-to-float v4, v4

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v5, v4, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 1497
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mPopOverClipOutPath:Landroid/graphics/Path;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 1499
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mPopOverPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->reset()V

    .line 1500
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mPopOverPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/internal/policy/DecorView;->mPopOverBackgroundAlpha:F

    iget v4, p0, Lcom/android/internal/policy/DecorView;->mPopOverBackgroundColor:I

    .line 1502
    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x437f0000    # 255.0f

    div-float/2addr v4, v5

    iget v7, p0, Lcom/android/internal/policy/DecorView;->mPopOverBackgroundColor:I

    .line 1503
    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v5

    iget v8, p0, Lcom/android/internal/policy/DecorView;->mPopOverBackgroundColor:I

    .line 1504
    invoke-static {v8}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v5

    .line 1500
    invoke-static {v3, v4, v7, v8}, Landroid/graphics/Color;->argb(FFFF)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1505
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mPopOverPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/BlendMode;->SRC:Landroid/graphics/BlendMode;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    .line 1507
    new-instance v2, Landroid/graphics/RectF;

    int-to-float v3, v0

    int-to-float v4, v1

    invoke-direct {v2, v6, v6, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mPopOverPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1509
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mPopOverClipOutPath:Landroid/graphics/Path;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipOutPath(Landroid/graphics/Path;)Z

    .line 1513
    .end local v0    # "width":I
    .end local v1    # "height":I
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1515
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mMenuBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1516
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1520
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsDexEnabled:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isDecorCaptionWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v0, :cond_2

    .line 1521
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1522
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DecorCaptionView;->getCaptionHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1523
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1524
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1527
    :cond_2
    return-void
.end method

.method public blacklist drawFrameIfNeeded(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 5122
    sget-boolean v0, Landroid/view/ViewRootImpl;->CAPTION_ON_SHELL:Z

    if-eqz v0, :cond_0

    .line 5123
    return-void

    .line 5125
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isActivity()Z

    move-result v0

    .line 5126
    .local v0, "isActivity":Z
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isFullSize()Z

    move-result v1

    .line 5131
    .local v1, "isFullSizeWindow":Z
    if-nez v0, :cond_1

    if-eqz v1, :cond_a

    .line 5132
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-nez v2, :cond_c

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->hasDecorCaptionWindow()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    .line 5140
    :cond_2
    iget-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mIsPopOver:Z

    if-eqz v2, :cond_6

    .line 5146
    iget-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mIsPopOverForMultiPaneLayout:Z

    if-eqz v2, :cond_5

    .line 5147
    iget v2, p0, Lcom/android/internal/policy/DecorView;->mLastFreeformStashType:I

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-ne v2, v3, :cond_4

    .line 5148
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 5149
    .local v2, "winConfig":Landroid/app/WindowConfiguration;
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getDexTaskDockingState()I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/DecorView;->mLastFreeformStashType:I

    .line 5150
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getDexTaskDockingState()I

    move-result v3

    if-eq v3, v4, :cond_3

    .line 5151
    return-void

    .line 5153
    .end local v2    # "winConfig":Landroid/app/WindowConfiguration;
    :cond_3
    goto :goto_0

    .line 5154
    :cond_4
    if-eq v2, v4, :cond_5

    .line 5155
    return-void

    .line 5160
    :cond_5
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->isFloating()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 5161
    return-void

    .line 5164
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isFreeformMode()Z

    move-result v2

    .line 5165
    .local v2, "isFreeform":Z
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isResizing()Z

    move-result v3

    .line 5171
    .local v3, "isResizing":Z
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-boolean v4, v4, Lcom/android/internal/policy/PhoneWindow;->mIsStartingWindow:Z

    if-nez v4, :cond_7

    if-eqz v2, :cond_b

    :cond_7
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-boolean v4, v4, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    if-nez v4, :cond_b

    if-nez v3, :cond_b

    iget-boolean v4, p0, Lcom/android/internal/policy/DecorView;->mIsDexEnabled:Z

    if-eqz v4, :cond_8

    .line 5172
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isFullscreenMode()Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_1

    .line 5177
    .end local v2    # "isFreeform":Z
    .end local v3    # "isResizing":Z
    :cond_8
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mFrameDrawHelper:Lcom/samsung/android/multiwindow/FrameDrawHelper;

    if-nez v2, :cond_9

    .line 5178
    new-instance v2, Lcom/samsung/android/multiwindow/FrameDrawHelper;

    invoke-direct {v2, p0}, Lcom/samsung/android/multiwindow/FrameDrawHelper;-><init>(Lcom/android/internal/policy/DecorView;)V

    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mFrameDrawHelper:Lcom/samsung/android/multiwindow/FrameDrawHelper;

    .line 5180
    :cond_9
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mFrameDrawHelper:Lcom/samsung/android/multiwindow/FrameDrawHelper;

    invoke-virtual {v2, p1}, Lcom/samsung/android/multiwindow/FrameDrawHelper;->drawFrame(Landroid/graphics/Canvas;)V

    .line 5182
    :cond_a
    return-void

    .line 5173
    .restart local v2    # "isFreeform":Z
    .restart local v3    # "isResizing":Z
    :cond_b
    :goto_1
    return-void

    .line 5137
    .end local v2    # "isFreeform":Z
    .end local v3    # "isResizing":Z
    :cond_c
    :goto_2
    return-void
.end method

.method blacklist enableCaption(Z)V
    .locals 1
    .param p1, "attachedAndVisible"    # Z

    .line 3194
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mHasCaption:Z

    if-eq v0, p1, :cond_1

    .line 3195
    iput-boolean p1, p0, Lcom/android/internal/policy/DecorView;->mHasCaption:Z

    .line 3196
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3197
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->drawableChanged()V

    .line 3199
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->notifyCaptionHeightChanged()V

    .line 3201
    :cond_1
    return-void
.end method

.method blacklist finishChanging()V
    .locals 1

    .line 1691
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mChanging:Z

    .line 1692
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->drawableChanged()V

    .line 1693
    return-void
.end method

.method public whitelist gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 11
    .param p1, "region"    # Landroid/graphics/Region;

    .line 847
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/policy/DecorView;->gatherTransparentRegion(Lcom/android/internal/policy/DecorView$ColorViewState;Landroid/graphics/Region;)Z

    move-result v0

    .line 848
    .local v0, "statusOpaque":Z
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/policy/DecorView;->gatherTransparentRegion(Lcom/android/internal/policy/DecorView$ColorViewState;Landroid/graphics/Region;)Z

    move-result v1

    .line 849
    .local v1, "navOpaque":Z
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v2

    .line 852
    .local v2, "decorOpaque":Z
    iget-boolean v3, p0, Lcom/android/internal/policy/DecorView;->mIsDexEnabled:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isDecorCaptionWindow()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v3, :cond_0

    .line 853
    invoke-virtual {p1}, Landroid/graphics/Region;->setEmpty()V

    .line 854
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {v3}, Lcom/android/internal/widget/DecorCaptionView;->getCaptionHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getHeight()I

    move-result v6

    invoke-virtual {p1, v4, v3, v5, v6}, Landroid/graphics/Region;->set(IIII)Z

    .line 860
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadgeViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    if-eqz v3, :cond_1

    .line 861
    iget v6, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadgeStartX:I

    iget v7, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadgeStartY:I

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getHeight()I

    move-result v9

    sget-object v10, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 867
    :cond_1
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v4, 0x1

    :cond_3
    return v4
.end method

.method blacklist gatherTransparentRegion(Lcom/android/internal/policy/DecorView$ColorViewState;Landroid/graphics/Region;)Z
    .locals 1
    .param p1, "colorViewState"    # Lcom/android/internal/policy/DecorView$ColorViewState;
    .param p2, "region"    # Landroid/graphics/Region;

    .line 871
    iget-object v0, p1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/internal/policy/DecorView$ColorViewState;->visible:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isResizing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 875
    iget-object v0, p1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v0

    return v0

    .line 877
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAccessibilityViewId()I
    .locals 1

    .line 4284
    const v0, 0x7ffffffe

    return v0
.end method

.method public whitelist getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 2176
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mOriginalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public blacklist getBackgroundFallback()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 824
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

    invoke-virtual {v0}, Lcom/android/internal/widget/BackgroundFallback;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCaptionHeight()I
    .locals 1

    .line 4214
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isShowingCaption()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DecorCaptionView;->getCaptionHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist getCaptionInsetsHeight()I
    .locals 1

    .line 4222
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->isOverlayWithDecorCaptionEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 4223
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getCaptionHeight()I

    move-result v0

    return v0
.end method

.method public blacklist getCaptionType()I
    .locals 1

    .line 4604
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mCaptionType:I

    return v0
.end method

.method public blacklist getDecorCaptionResources()Lcom/samsung/android/util/DecorCaptionResources;
    .locals 2

    .line 5941
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDCResources:Lcom/samsung/android/util/DecorCaptionResources;

    if-nez v0, :cond_0

    .line 5942
    new-instance v0, Lcom/samsung/android/util/DecorCaptionResources;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/util/DecorCaptionResources;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mDCResources:Lcom/samsung/android/util/DecorCaptionResources;

    .line 5944
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDCResources:Lcom/samsung/android/util/DecorCaptionResources;

    return-object v0
.end method

.method public final blacklist getDecorCaptionView()Lcom/android/internal/widget/DecorCaptionView;
    .locals 1

    .line 4517
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    return-object v0
.end method

.method public final blacklist getDecorCaptionViewByType()Lcom/android/internal/widget/DecorCaptionView;
    .locals 1

    .line 4521
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->hasDecorCaptionWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4522
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mCompatWindow:Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->getDecorView()Lcom/android/internal/policy/DecorView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4523
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mCompatWindow:Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->getDecorView()Lcom/android/internal/policy/DecorView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getDecorCaptionView()Lcom/android/internal/widget/DecorCaptionView;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4522
    :goto_0
    return-object v0

    .line 4525
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    return-object v0
.end method

.method public blacklist getDexTaskDockingState()I
    .locals 1

    .line 6329
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mLastFreeformStashType:I

    return v0
.end method

.method public blacklist getFreeformOutlineProvider()Landroid/view/ViewOutlineProvider;
    .locals 1

    .line 4312
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->FREEFORM_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

    return-object v0
.end method

.method public blacklist getLastBackgroundResource()I
    .locals 1

    .line 6008
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundResource:I

    return v0
.end method

.method public blacklist getMultiSplitActions()Lcom/samsung/android/multiwindow/MultiSplitActions;
    .locals 2

    .line 4305
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    if-nez v0, :cond_0

    .line 4306
    new-instance v0, Lcom/samsung/android/multiwindow/MultiSplitActions;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-direct {v0, v1}, Lcom/samsung/android/multiwindow/MultiSplitActions;-><init>(Landroid/view/Window;)V

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    .line 4308
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    return-object v0
.end method

.method public blacklist getMultiSplitHelpMode()I
    .locals 1

    .line 5619
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHelpMode:I

    return v0
.end method

.method blacklist getNavigationBarBackgroundView()Landroid/view/View;
    .locals 1

    .line 832
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v0, v0, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    return-object v0
.end method

.method public blacklist getParentWindow()Landroid/view/Window;
    .locals 1

    .line 4814
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mParentWindow:Landroid/view/Window;

    return-object v0
.end method

.method public whitelist getResources()Landroid/content/res/Resources;
    .locals 1

    .line 3235
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getStageType()I
    .locals 1

    .line 4373
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getStageType()I

    move-result v0

    return v0
.end method

.method blacklist getStatusBarBackgroundView()Landroid/view/View;
    .locals 1

    .line 828
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v0, v0, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    return-object v0
.end method

.method public whitelist getWindowInsetsController()Landroid/view/WindowInsetsController;
    .locals 1

    .line 4289
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4290
    invoke-super {p0}, Landroid/widget/FrameLayout;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    return-object v0

    .line 4292
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPendingInsetsController:Landroid/view/PendingInsetsController;

    return-object v0
.end method

.method public blacklist getWindowingMode()I
    .locals 1

    .line 4365
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mWindowingMode:I

    if-eqz v0, :cond_0

    .line 4366
    return v0

    .line 4368
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    return v0
.end method

.method blacklist hasDecorCaptionView()Z
    .locals 3

    .line 4608
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mCaptionType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method blacklist hasDecorCaptionWindow()Z
    .locals 2

    .line 4613
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mCaptionType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist hasEdgeFlag()Z
    .locals 1

    .line 5102
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mEdgeFlag:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist hasWindowFocusInMultiSplitHandler()Z
    .locals 1

    .line 6294
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->hasWindowFocusInMultiSplitHandler()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist hasWindowFocusInTask()Z
    .locals 1

    .line 2647
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mHasWindowFocusInTask:Z

    return v0
.end method

.method public greylist hidden_semSetForceHideRoundedCorner(Z)V
    .locals 2
    .param p1, "hide"    # Z

    .line 6266
    iput-boolean p1, p0, Lcom/android/internal/policy/DecorView;->mForceHideRoundedCorner:Z

    .line 6267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hidden_semSetForceHideRoundedCorner() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DecorView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6268
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->semSetRoundedCorners(I)V

    .line 6269
    return-void
.end method

.method public blacklist isDecorCaptionWindow()Z
    .locals 2

    .line 4617
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mCaptionType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isDexEnabled()Z
    .locals 1

    .line 4735
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsDexEnabled:Z

    return v0
.end method

.method public blacklist isDialogInPopOver()Z
    .locals 1

    .line 4056
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mPreventPopOverElevation:Z

    if-nez v0, :cond_3

    .line 4057
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->isPopOver()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsDexEnabled:Z

    if-nez v0, :cond_0

    .line 4058
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isFullscreenMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4059
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isActivity()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isFullSize()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isDimBehind()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mPreventPopOverElevation:Z

    .line 4061
    :cond_3
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mPreventPopOverElevation:Z

    return v0
.end method

.method blacklist isDrawLegacyNavigationBarBackground()Z
    .locals 1

    .line 6206
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mDrawLegacyNavigationBarBackground:Z

    return v0
.end method

.method public blacklist isFreeformMode()Z
    .locals 2

    .line 4386
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isFullSize()Z
    .locals 1

    .line 4513
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isFullscreenMode()Z
    .locals 2

    .line 4382
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public blacklist isHandlerAutoHide()Z
    .locals 1

    .line 978
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mKeepScreenOn:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsImmersiveMode:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public blacklist isMovingTask()Z
    .locals 1

    .line 6298
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsMovingTask:Z

    return v0
.end method

.method public blacklist isMultiSplitHandlerRequested()Z
    .locals 9

    .line 5485
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsDexEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_18

    sget-boolean v0, Landroid/view/ViewRootImpl;->CAPTION_ON_SHELL:Z

    if-eqz v0, :cond_0

    goto/16 :goto_7

    .line 5489
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    const-string v2, "check: return. pkg="

    const/4 v3, 0x5

    if-nez v0, :cond_1

    .line 5490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " isActivity=false callers="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5491
    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5490
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->logLifeCycle(Ljava/lang/String;)V

    .line 5492
    return v1

    .line 5495
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewRootImpl;

    const-string v4, " callers="

    if-nez v0, :cond_2

    .line 5496
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 5497
    .local v0, "parent":Landroid/view/View;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " parent="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 5498
    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5497
    invoke-static {v2}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->logLifeCycle(Ljava/lang/String;)V

    .line 5499
    return v1

    .line 5502
    .end local v0    # "parent":Landroid/view/View;
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    if-nez v0, :cond_3

    .line 5503
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 5505
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v5}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getActivityToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/samsung/android/multiwindow/MultiWindowManager;->supportsMultiWindow(Landroid/os/IBinder;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 5506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check: return. Multi-window not supported pkg="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    .line 5507
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5506
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->logLifeCycle(Ljava/lang/String;)V

    .line 5508
    return v1

    .line 5511
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWindowingMode()I

    move-result v0

    .line 5512
    .local v0, "windowingMode":I
    const/4 v5, 0x1

    if-ne v0, v3, :cond_8

    .line 5515
    iget-boolean v6, p0, Lcom/android/internal/policy/DecorView;->mIsPopOver:Z

    if-eqz v6, :cond_5

    .line 5516
    return v1

    .line 5518
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getMultiSplitActions()Lcom/samsung/android/multiwindow/MultiSplitActions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isHeaderTypeBar()Z

    move-result v6

    .line 5519
    .local v6, "captionMode":Z
    if-nez v6, :cond_7

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->hasWindowDecorCaption()Z

    move-result v7

    if-nez v7, :cond_6

    goto :goto_0

    .line 5524
    .end local v6    # "captionMode":Z
    :cond_6
    goto/16 :goto_3

    .line 5520
    .restart local v6    # "captionMode":Z
    :cond_7
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " mode=freeform caption="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 5521
    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5520
    invoke-static {v2}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->logLifeCycle(Ljava/lang/String;)V

    .line 5522
    return v1

    .line 5527
    .end local v6    # "captionMode":Z
    :cond_8
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isActivityHomeOrRecent()Z

    move-result v6

    if-nez v6, :cond_17

    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v6

    instance-of v6, v6, Lcom/android/internal/app/ResolverActivity;

    if-eqz v6, :cond_9

    goto/16 :goto_6

    .line 5531
    :cond_9
    if-ne v0, v5, :cond_10

    .line 5534
    sget-boolean v6, Lcom/samsung/android/rune/ViewRune;->MULTISPLIT_FULLSCREEN:Z

    if-nez v6, :cond_a

    .line 5535
    return v1

    .line 5537
    :cond_a
    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getDisplayId()I

    move-result v6

    if-eqz v6, :cond_b

    .line 5538
    return v1

    .line 5540
    :cond_b
    iget-boolean v6, p0, Lcom/android/internal/policy/DecorView;->mIsPopOver:Z

    if-eqz v6, :cond_c

    iget-boolean v6, p0, Lcom/android/internal/policy/DecorView;->mIsPopOverForMultiPaneLayout:Z

    if-nez v6, :cond_c

    .line 5541
    return v1

    .line 5543
    :cond_c
    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "multi_window_menu_in_full_screen"

    invoke-static {v6, v7, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_d

    move v6, v5

    goto :goto_1

    :cond_d
    move v6, v1

    .line 5545
    .local v6, "labsOff":Z
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isDeviceLocked()Z

    move-result v7

    .line 5546
    .local v7, "isDeviceLocked":Z
    if-nez v6, :cond_f

    if-nez v7, :cond_f

    invoke-static {}, Lcom/samsung/android/util/SemViewUtils;->isFoldDevice()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    if-eqz v8, :cond_e

    goto :goto_2

    .line 5552
    .end local v6    # "labsOff":Z
    .end local v7    # "isDeviceLocked":Z
    :cond_e
    goto :goto_3

    .line 5548
    .restart local v6    # "labsOff":Z
    .restart local v7    # "isDeviceLocked":Z
    :cond_f
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " mode=fullscreen op="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " locked="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 5549
    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5548
    invoke-static {v2}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->logLifeCycle(Ljava/lang/String;)V

    .line 5550
    return v1

    .line 5552
    .end local v6    # "labsOff":Z
    .end local v7    # "isDeviceLocked":Z
    :cond_10
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isSplitMode()Z

    move-result v6

    if-eqz v6, :cond_16

    .line 5555
    iget-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mIsPopOver:Z

    if-eqz v2, :cond_11

    .line 5556
    return v1

    .line 5571
    :cond_11
    :goto_3
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 5572
    .local v2, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v3, v5, :cond_13

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_13

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_12

    goto :goto_4

    :cond_12
    move v3, v1

    goto :goto_5

    :cond_13
    :goto_4
    move v3, v5

    .line 5574
    .local v3, "isApplication":Z
    :goto_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "check: isFloating="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/PhoneWindow;->isFloating()Z

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " isApplication="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " this="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->logLifeCycle(Ljava/lang/String;)V

    .line 5577
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow;->isFloating()Z

    move-result v4

    if-nez v4, :cond_15

    if-eqz v3, :cond_15

    .line 5579
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v6, 0x1000000

    and-int/2addr v4, v6

    if-eqz v4, :cond_14

    .line 5581
    return v1

    .line 5584
    :cond_14
    return v5

    .line 5586
    :cond_15
    return v1

    .line 5565
    .end local v2    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v3    # "isApplication":Z
    :cond_16
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " mode="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 5566
    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5565
    invoke-static {v2}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->logLifeCycle(Ljava/lang/String;)V

    .line 5567
    return v1

    .line 5528
    :cond_17
    :goto_6
    return v1

    .line 5486
    .end local v0    # "windowingMode":I
    :cond_18
    :goto_7
    return v1
.end method

.method public blacklist isNativeActivity()Z
    .locals 1

    .line 4354
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/NativeActivity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isPreserveOrientationMode()Z
    .locals 1

    .line 4743
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsFixedOrientation:Z

    return v0
.end method

.method public blacklist isShowingCaption()Z
    .locals 1

    .line 4201
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/widget/DecorCaptionView;->isCaptionShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isShowingCaptionByType()Z
    .locals 1

    .line 4206
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->hasDecorCaptionWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4207
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mCompatWindow:Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 4209
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isShowingCaption()Z

    move-result v0

    return v0
.end method

.method public blacklist isSplitMode()Z
    .locals 1

    .line 4390
    nop

    .line 4391
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 4390
    invoke-static {v0}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(Landroid/app/WindowConfiguration;)Z

    move-result v0

    return v0
.end method

.method public blacklist isStatusBarHidden()Z
    .locals 1

    .line 5636
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsStatusBarHidden:Z

    return v0
.end method

.method public whitelist isTransitionGroup()Z
    .locals 1

    .line 1842
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isWindowResizable()Z
    .locals 1

    .line 4739
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsWindowResizable:Z

    return v0
.end method

.method synthetic blacklist lambda$new$0$com-android-internal-policy-DecorView()Z
    .locals 1

    .line 444
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateBackgroundBlurCorners()V

    .line 445
    const/4 v0, 0x1

    return v0
.end method

.method synthetic blacklist lambda$new$1$com-android-internal-policy-DecorView(Landroid/view/WindowInsetsController;I)V
    .locals 5
    .param p1, "controller"    # Landroid/view/WindowInsetsController;
    .param p2, "typeMask"    # I

    .line 560
    invoke-interface {p1}, Landroid/view/WindowInsetsController;->getSystemBarsBehavior()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 562
    .local v0, "swipe":Z
    :goto_0
    invoke-interface {p1, v2}, Landroid/view/WindowInsetsController;->isRequestedVisible(I)Z

    move-result v3

    .line 563
    .local v3, "showNav":Z
    if-eqz v0, :cond_1

    if-nez v3, :cond_1

    move v1, v2

    .line 564
    .local v1, "isImmersiveMode":Z
    :cond_1
    sget-boolean v2, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 565
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onControllableInsetsChanged: isImmersiveMode="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " swipe="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " showNav="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->log(Ljava/lang/String;)V

    .line 568
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/internal/policy/DecorView;->onImmersiveModeChanged(Z)V

    .line 569
    return-void
.end method

.method synthetic blacklist lambda$setBackgroundBlurRadius$2$com-android-internal-policy-DecorView(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "enabled"    # Ljava/lang/Boolean;

    .line 2148
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mCrossWindowBlurEnabled:Z

    .line 2149
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateBackgroundBlurRadius()V

    .line 2150
    return-void
.end method

.method public blacklist notifyCaptionHeightChanged()V
    .locals 2

    .line 3208
    sget-boolean v0, Landroid/view/ViewRootImpl;->CAPTION_ON_SHELL:Z

    if-nez v0, :cond_0

    .line 3209
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getCaptionInsetsHeight()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/WindowInsetsController;->setCaptionInsetsHeight(I)V

    .line 3211
    :cond_0
    return-void
.end method

.method public blacklist notifyKeepScreenOnChanged(Z)V
    .locals 2
    .param p1, "keepScreenOn"    # Z

    .line 982
    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->DECORCAPTION_HANDLER_AUTO_HIDE:Z

    if-eqz v0, :cond_0

    .line 983
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyKeepScreenOnChanged: keepScreenOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DecorView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    iput-boolean p1, p0, Lcom/android/internal/policy/DecorView;->mKeepScreenOn:Z

    .line 985
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isMultiSplitHandlerValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 986
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isHandlerAutoHide()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->setHandlerAutoHide(Z)V

    .line 989
    :cond_0
    return-void
.end method

.method public blacklist notifyMovingTask(Z)V
    .locals 1
    .param p1, "movingTask"    # Z

    .line 5185
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsMovingTask:Z

    if-eq v0, p1, :cond_2

    .line 5186
    iput-boolean p1, p0, Lcom/android/internal/policy/DecorView;->mIsMovingTask:Z

    .line 5188
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFrameDrawHelper:Lcom/samsung/android/multiwindow/FrameDrawHelper;

    if-eqz v0, :cond_0

    .line 5189
    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/FrameDrawHelper;->updateDecorMovingState(Z)V

    .line 5192
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsMovingTask:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "start movingTask"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "stop movingTask"

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/internal/policy/DecorView;->requestInvalidateRenderNode(Ljava/lang/String;)V

    .line 5193
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->invalidate()V

    .line 5194
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->requestLayout()V

    .line 5196
    :cond_2
    return-void
.end method

.method public blacklist notifyScreenTouched(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 996
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isHandlerAutoHide()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isMultiSplitHandlerValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 997
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->onScreenTouched(I)V

    goto :goto_0

    .line 998
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isActivity()Z

    move-result v0

    if-nez v0, :cond_1

    .line 999
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 1000
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mParentDecorView:Landroid/view/View;

    instance-of v1, v1, Lcom/android/internal/policy/DecorView;

    if-eqz v1, :cond_1

    .line 1001
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mParentDecorView:Landroid/view/View;

    check-cast v1, Lcom/android/internal/policy/DecorView;

    .line 1002
    .local v1, "parentDecor":Lcom/android/internal/policy/DecorView;
    invoke-virtual {v1}, Lcom/android/internal/policy/DecorView;->isHandlerAutoHide()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {v1}, Lcom/android/internal/policy/DecorView;->isMultiSplitHandlerValid()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1003
    iget-object v2, v1, Lcom/android/internal/policy/DecorView;->mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->onScreenTouched(I)V

    .line 1007
    .end local v0    # "viewRoot":Landroid/view/ViewRootImpl;
    .end local v1    # "parentDecor":Lcom/android/internal/policy/DecorView;
    :cond_1
    :goto_0
    return-void
.end method

.method public whitelist onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 7
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .line 1787
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1788
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 1789
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, 0x100

    if-nez v1, :cond_2

    .line 1794
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v2, -0x2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    .line 1795
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v4

    iput v4, v1, Landroid/graphics/Rect;->top:I

    .line 1796
    sget-boolean v1, Lcom/samsung/android/rune/ViewRune;->CAPTIONONSHELL:Z

    if-eqz v1, :cond_0

    .line 1797
    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v1

    .line 1798
    .local v1, "captionBarInsets":Landroid/graphics/Insets;
    iget v4, v1, Landroid/graphics/Insets;->top:I

    if-lez v4, :cond_0

    .line 1799
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->top:I

    iget v6, v1, Landroid/graphics/Insets;->top:I

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1802
    .end local v1    # "captionBarInsets":Landroid/graphics/Insets;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v4

    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    .line 1803
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    .line 1804
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v4

    .line 1803
    invoke-virtual {p1, v3, v1, v3, v4}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    .line 1806
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v1, v2, :cond_2

    .line 1807
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 1808
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 1809
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v1

    .line 1810
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v2

    .line 1809
    invoke-virtual {p1, v1, v3, v2, v3}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    .line 1813
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFrameOffsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetsAsRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1814
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    move-result-object p1

    .line 1815
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->updateStatusGuard(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    .line 1816
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1817
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->drawableChanged()V

    .line 1821
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->updateDisplayCutoutBackground(Landroid/view/WindowInsets;)V

    .line 1825
    iget-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mIsInSplitImmersiveMode:Z

    sget-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    if-eq v1, v2, :cond_5

    .line 1826
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    if-eqz v1, :cond_4

    .line 1827
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->removeMultiSplitHandler()V

    .line 1828
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isMultiSplitHandlerRequested()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1829
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->addMultiSplitHandler()V

    .line 1832
    :cond_4
    sget-boolean v1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mIsInSplitImmersiveMode:Z

    .line 1837
    :cond_5
    return-object p1
.end method

.method protected whitelist onAttachedToWindow()V
    .locals 6

    .line 2752
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2756
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsImmersiveMode:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isStatusBarHiddenByFlags()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsStatusBarHidden:Z

    .line 2759
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 2760
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7db

    if-ne v0, v3, :cond_3

    .line 2761
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    if-ne v0, v2, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsDexEnabled:Z

    .line 2765
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->hasDecorCaptionWindow()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2766
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mCalledOnAttachedToWindow:Z

    .line 2767
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->createDecorCaptionWindowIfNeeded()V

    .line 2772
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/DecorView;->mUserId:I

    .line 2773
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2774
    .local v0, "winContext":Landroid/content/Context;
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 2775
    .local v4, "attrs":Landroid/view/WindowManager$LayoutParams;
    instance-of v5, v0, Landroid/app/Activity;

    if-eqz v5, :cond_5

    invoke-virtual {v4}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2776
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mIsKnoxActivity:Z

    .line 2778
    :cond_5
    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v5, v3, :cond_6

    move v3, v2

    goto :goto_3

    :cond_6
    move v3, v1

    :goto_3
    iput-boolean v3, p0, Lcom/android/internal/policy/DecorView;->mIsKeyboardShown:Z

    .line 2779
    iget v3, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_7

    invoke-virtual {v4}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v3

    if-eqz v3, :cond_7

    move v3, v2

    goto :goto_4

    :cond_7
    move v3, v1

    :goto_4
    iput-boolean v3, p0, Lcom/android/internal/policy/DecorView;->mIsFullViewShown:Z

    .line 2782
    :try_start_0
    iget-boolean v5, p0, Lcom/android/internal/policy/DecorView;->mIsKeyboardShown:Z

    if-nez v5, :cond_8

    if-nez v3, :cond_8

    iget-boolean v3, p0, Lcom/android/internal/policy/DecorView;->mIsKnoxActivity:Z

    if-eqz v3, :cond_b

    :cond_8
    iget v3, p0, Lcom/android/internal/policy/DecorView;->mUserId:I

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    iget v1, p0, Lcom/android/internal/policy/DecorView;->mUserId:I

    invoke-static {v1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2783
    :cond_a
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->setKnoxBadge()V

    .line 2784
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->setKnoxBadgePosition()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2788
    :cond_b
    goto :goto_5

    .line 2786
    :catch_0
    move-exception v1

    .line 2787
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "DecorView_KNOX"

    const-string v5, "failed to set knox badge"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2793
    .end local v0    # "winContext":Landroid/content/Context;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :goto_5
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isImmersiveFullscreenOnDex()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2794
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->prepareImmersiveHelper()Z

    .line 2798
    :cond_c
    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->MULTISPLIT_FULLSCREEN:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsDexEnabled:Z

    if-nez v0, :cond_d

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isActivity()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2799
    new-instance v0, Lcom/android/internal/policy/DecorView$9;

    new-instance v1, Landroid/os/Handler;

    .line 2800
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/DecorView$9;-><init>(Lcom/android/internal/policy/DecorView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mMultiWindowMenuInFullScreenObserver:Landroid/database/ContentObserver;

    .line 2818
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2819
    const-string v1, "multi_window_menu_in_full_screen"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mMultiWindowMenuInFullScreenObserver:Landroid/database/ContentObserver;

    .line 2818
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2825
    :cond_d
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->refreshGestureNavBarSettings()V

    .line 2828
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 2829
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_e

    iget v1, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v1, :cond_e

    .line 2830
    invoke-interface {v0}, Landroid/view/Window$Callback;->onAttachedToWindow()V

    .line 2833
    :cond_e
    iget v1, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_f

    .line 2841
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->openPanelsAfterRestore()V

    .line 2844
    :cond_f
    iget-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mWindowResizeCallbacksAdded:Z

    if-nez v1, :cond_10

    .line 2847
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewRootImpl;->addWindowCallbacks(Landroid/view/WindowCallbacks;)V

    .line 2848
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mWindowResizeCallbacksAdded:Z

    goto :goto_6

    .line 2849
    :cond_10
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    if-eqz v1, :cond_11

    .line 2852
    invoke-virtual {v1}, Lcom/android/internal/policy/BackdropFrameRenderer;->onConfigurationChange()V

    .line 2855
    :cond_11
    :goto_6
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateBackgroundBlurRadius()V

    .line 2857
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/PhoneWindow;->onViewRootImplSet(Landroid/view/ViewRootImpl;)V

    .line 2860
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v1, :cond_12

    .line 2861
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->removeDecorCaptionView()V

    .line 2864
    :cond_12
    return-void
.end method

.method public blacklist onCloseSystemDialogs(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .line 2947
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-ltz v0, :cond_0

    .line 2948
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->closeAllPanels()V

    .line 2950
    :cond_0
    return-void
.end method

.method protected whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 9
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 3240
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3244
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDCResources:Lcom/samsung/android/util/DecorCaptionResources;

    if-eqz v0, :cond_0

    .line 3245
    new-instance v0, Lcom/samsung/android/util/DecorCaptionResources;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/util/DecorCaptionResources;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mDCResources:Lcom/samsung/android/util/DecorCaptionResources;

    .line 3250
    :cond_0
    const/4 v0, 0x0

    .line 3252
    .local v0, "updateWindowFormat":Z
    iget v1, p0, Lcom/android/internal/policy/DecorView;->mLastDisplayDeviceType:I

    .line 3253
    .local v1, "oldDisplayDeviceType":I
    iget v2, p1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    iput v2, p0, Lcom/android/internal/policy/DecorView;->mLastDisplayDeviceType:I

    .line 3254
    if-eq v2, v1, :cond_1

    .line 3255
    const/4 v0, 0x1

    .line 3258
    :cond_1
    iget-object v2, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 3259
    .local v2, "winConfig":Landroid/app/WindowConfiguration;
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->isPopOver()Z

    move-result v3

    .line 3260
    .local v3, "isPopPover":Z
    iget-boolean v4, p0, Lcom/android/internal/policy/DecorView;->mIsPopOver:Z

    if-eq v4, v3, :cond_2

    .line 3261
    iput-boolean v3, p0, Lcom/android/internal/policy/DecorView;->mIsPopOver:Z

    .line 3262
    const/4 v0, 0x1

    .line 3266
    :cond_2
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->isPopOverWithoutOutlineEffect()Z

    move-result v4

    .line 3267
    .local v4, "isPopOverForMultiPaneLayout":Z
    iget-boolean v5, p0, Lcom/android/internal/policy/DecorView;->mIsPopOverForMultiPaneLayout:Z

    if-eq v5, v4, :cond_3

    .line 3268
    iput-boolean v4, p0, Lcom/android/internal/policy/DecorView;->mIsPopOverForMultiPaneLayout:Z

    .line 3269
    const/4 v0, 0x1

    .line 3273
    :cond_3
    if-eqz v0, :cond_4

    .line 3274
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->drawableChanged()V

    .line 3277
    :cond_4
    iget-boolean v5, p0, Lcom/android/internal/policy/DecorView;->mIsPopOver:Z

    const-string v6, "DecorView"

    if-eqz v5, :cond_8

    iget-boolean v5, p0, Lcom/android/internal/policy/DecorView;->mIsPopOverForMultiPaneLayout:Z

    if-nez v5, :cond_8

    .line 3278
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 3279
    .local v5, "res":Landroid/content/res/Resources;
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v7}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v7

    instance-of v7, v7, Lcom/android/internal/app/ChooserActivity;

    if-eqz v7, :cond_5

    .line 3280
    const v7, 0x1060351

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    iput v7, p0, Lcom/android/internal/policy/DecorView;->mPopOverBackgroundColor:I

    goto :goto_1

    .line 3281
    :cond_5
    iget v7, p0, Lcom/android/internal/policy/DecorView;->mPopOverBackgroundColor:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_7

    .line 3282
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/util/SemViewUtils;->isLightTheme(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 3283
    const v7, 0x10602ba

    goto :goto_0

    .line 3284
    :cond_6
    const v7, 0x10602bb

    :goto_0
    const/4 v8, 0x0

    .line 3282
    invoke-virtual {v5, v7, v8}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v7

    iput v7, p0, Lcom/android/internal/policy/DecorView;->mPopOverBackgroundColor:I

    .line 3286
    :cond_7
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mPopOverBackgroundColor="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/policy/DecorView;->mPopOverBackgroundColor:I

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3287
    const v7, 0x10503ac

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/android/internal/policy/DecorView;->mPopOverRadius:I

    .line 3291
    .end local v0    # "updateWindowFormat":Z
    .end local v1    # "oldDisplayDeviceType":I
    .end local v2    # "winConfig":Landroid/app/WindowConfiguration;
    .end local v3    # "isPopPover":Z
    .end local v4    # "isPopOverForMultiPaneLayout":Z
    .end local v5    # "res":Landroid/content/res/Resources;
    :cond_8
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateOutlineProvider()V

    .line 3293
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    if-nez v0, :cond_9

    .line 3294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mContentRoot is null, Callers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x7

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3295
    return-void

    .line 3299
    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 3302
    .local v0, "focusedView":Landroid/view/View;
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->removeDecorCaptionIfNeeded(Landroid/content/res/Configuration;)Z

    move-result v1

    .line 3304
    .local v1, "captionRemoved":Z
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    if-eqz v2, :cond_a

    .line 3305
    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiSplitActions;->update()V

    .line 3309
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->updateCaptionType(Landroid/content/res/Configuration;)V

    .line 3312
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isFreeformMode()Z

    move-result v2

    .line 3313
    .local v2, "isFreeform":Z
    if-nez v2, :cond_b

    if-eqz v1, :cond_c

    .line 3314
    :cond_b
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->updateDecorCaptionStatus(Landroid/content/res/Configuration;)V

    .line 3318
    :cond_c
    if-eqz v0, :cond_d

    .line 3319
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 3322
    :cond_d
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v3, :cond_f

    .line 3323
    if-eqz v1, :cond_e

    .line 3324
    invoke-direct {p0, v3}, Lcom/android/internal/policy/DecorView;->setDecorCaptionShade(Lcom/android/internal/widget/DecorCaptionView;)V

    goto :goto_2

    .line 3328
    :cond_e
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->getNeedsShowingCaption()Z

    move-result v3

    .line 3329
    .local v3, "showCaption":Z
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {v4, v3}, Lcom/android/internal/widget/DecorCaptionView;->onConfigurationChanged(Z)V

    .line 3330
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/DecorView;->enableCaption(Z)V

    .line 3334
    .end local v3    # "showCaption":Z
    :cond_f
    :goto_2
    const/4 v3, 0x0

    if-eqz v2, :cond_11

    .line 3335
    iget-boolean v4, p0, Lcom/android/internal/policy/DecorView;->mIsMovingTask:Z

    if-eqz v4, :cond_10

    .line 3336
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/DecorView;->notifyMovingTask(Z)V

    .line 3337
    const/4 v1, 0x0

    .line 3339
    :cond_10
    const/4 v1, 0x1

    .line 3340
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->drawableChanged()V

    .line 3343
    :cond_11
    if-eqz v1, :cond_14

    .line 3345
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mFrameDrawHelper:Lcom/samsung/android/multiwindow/FrameDrawHelper;

    if-eqz v4, :cond_12

    .line 3346
    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/FrameDrawHelper;->updateResources()V

    .line 3351
    :cond_12
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mImmersiveHelper:Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;

    if-eqz v4, :cond_13

    .line 3352
    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->onConfigurationChanged()V

    .line 3354
    :cond_13
    const-string v4, "config_changed"

    invoke-direct {p0, v4}, Lcom/android/internal/policy/DecorView;->requestInvalidateRenderNode(Ljava/lang/String;)V

    .line 3359
    :cond_14
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isMultiSplitHandlerRequested()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 3360
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    if-eqz v4, :cond_15

    .line 3361
    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->updateConfiguration()V

    goto :goto_3

    .line 3363
    :cond_15
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->addMultiSplitHandler()V

    goto :goto_3

    .line 3366
    :cond_16
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->removeMultiSplitHandler()V

    .line 3373
    .end local v0    # "focusedView":Landroid/view/View;
    .end local v1    # "captionRemoved":Z
    .end local v2    # "isFreeform":Z
    :goto_3
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->initializeElevation()V

    .line 3376
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 3377
    .local v0, "theme":Landroid/content/res/Resources$Theme;
    const v1, 0x1010357

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v2, v2, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMinor:Landroid/util/TypedValue;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 3378
    const v1, 0x1010356

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v2, v2, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMajor:Landroid/util/TypedValue;

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 3382
    .end local v0    # "theme":Landroid/content/res/Resources$Theme;
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->refreshGestureNavBarSettings()V

    .line 3388
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsKeyboardShown:Z

    if-nez v0, :cond_17

    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsFullViewShown:Z

    if-nez v0, :cond_17

    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsKnoxActivity:Z

    if-eqz v0, :cond_1a

    :cond_17
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_18
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 3389
    :cond_19
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget v1, p0, Lcom/android/internal/policy/DecorView;->mDensityForKnoxBadge:I

    if-eq v0, v1, :cond_1a

    .line 3390
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->setBadgeResource()V

    .line 3391
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, p0, Lcom/android/internal/policy/DecorView;->mDensityForKnoxBadge:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3396
    :cond_1a
    goto :goto_4

    .line 3394
    :catch_0
    move-exception v0

    .line 3395
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mLogTag:Ljava/lang/String;

    const-string v2, "failed to remove knox badge"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3402
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundResource:I

    const v1, 0x1080bdd

    if-ne v0, v1, :cond_1b

    .line 3403
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3404
    .local v0, "currWindowBackground":Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v1, :cond_1c

    .line 3405
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/StateListDrawable;

    .line 3406
    .local v1, "statefulWindowBackground":Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getState()[I

    move-result-object v2

    .line 3407
    .local v2, "states":[I
    if-eqz v2, :cond_1c

    array-length v4, v2

    if-lez v4, :cond_1c

    .line 3408
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    instance-of v3, v3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_1c

    .line 3409
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundResource:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 3410
    .local v3, "newBackground":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_1c

    .line 3411
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/DecorView;->setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 3415
    .end local v0    # "currWindowBackground":Landroid/graphics/drawable/Drawable;
    .end local v1    # "statefulWindowBackground":Landroid/graphics/drawable/StateListDrawable;
    .end local v2    # "states":[I
    .end local v3    # "newBackground":Landroid/graphics/drawable/Drawable;
    :cond_1b
    const v1, 0x1080bda

    if-eq v0, v1, :cond_1d

    const v1, 0x1080bdb

    if-ne v0, v1, :cond_1c

    goto :goto_6

    :cond_1c
    :goto_5
    goto :goto_8

    .line 3417
    :cond_1d
    :goto_6
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3418
    .restart local v0    # "currWindowBackground":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    .line 3419
    .local v1, "newBackground":Landroid/graphics/drawable/Drawable;
    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_1e

    .line 3420
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundResource:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_7

    .line 3421
    :cond_1e
    instance-of v2, v0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v2, :cond_1f

    .line 3422
    move-object v2, v0

    check-cast v2, Landroid/graphics/drawable/StateListDrawable;

    .line 3423
    .local v2, "statefulWindowBackground":Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/StateListDrawable;->getState()[I

    move-result-object v4

    .line 3424
    .local v4, "states":[I
    if-eqz v4, :cond_1f

    array-length v5, v4

    if-lez v5, :cond_1f

    .line 3425
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    instance-of v3, v3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_1f

    .line 3426
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v5, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundResource:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 3429
    .end local v2    # "statefulWindowBackground":Landroid/graphics/drawable/StateListDrawable;
    .end local v4    # "states":[I
    :cond_1f
    :goto_7
    if-eqz v1, :cond_20

    .line 3430
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/DecorView;->setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3439
    .end local v0    # "currWindowBackground":Landroid/graphics/drawable/Drawable;
    .end local v1    # "newBackground":Landroid/graphics/drawable/Drawable;
    :cond_20
    :goto_8
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->updateDeviceDefaultNavigationBarColor()V

    .line 3440
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mLegacyNavigationBarBackgroundPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 3441
    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getDeviceDefaultNavigationBarColor()I

    move-result v1

    .line 3440
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3442
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->updateDefaultNavigationBarColor()V

    .line 3447
    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->MULTISPLIT_FULLSCREEN:Z

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getMultiSplitActions()Lcom/samsung/android/multiwindow/MultiSplitActions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isEmbeddedMode()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 3448
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getMultiSplitActions()Lcom/samsung/android/multiwindow/MultiSplitActions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiSplitActions;->getActivityEmbeddingState()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/DecorView;->mLastEmbeddingState:I

    .line 3451
    :cond_21
    return-void
.end method

.method public blacklist onContentDrawn(IIII)Z
    .locals 1
    .param p1, "offsetX"    # I
    .param p2, "offsetY"    # I
    .param p3, "sizeX"    # I
    .param p4, "sizeY"    # I

    .line 3912
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    if-nez v0, :cond_0

    .line 3913
    const/4 v0, 0x0

    return v0

    .line 3915
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/policy/BackdropFrameRenderer;->onContentDrawn(IIII)Z

    move-result v0

    return v0
.end method

.method protected whitelist onDetachedFromWindow()V
    .locals 5

    .line 2868
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2871
    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->MULTISPLIT_FULLSCREEN:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mMultiWindowMenuInFullScreenObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 2872
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mMultiWindowMenuInFullScreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2874
    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mMultiWindowMenuInFullScreenObserver:Landroid/database/ContentObserver;

    .line 2878
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->removeMultiSplitHandler()V

    .line 2882
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsDexEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->isFloating()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2883
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->removeDecorCaptionWindow()V

    .line 2888
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 2889
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_2

    iget v2, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v2, :cond_2

    .line 2890
    invoke-interface {v0}, Landroid/view/Window$Callback;->onDetachedFromWindow()V

    .line 2893
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v2, v2, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v2, :cond_3

    .line 2894
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v2, v2, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v2}, Lcom/android/internal/widget/DecorContentParent;->dismissPopups()V

    .line 2897
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_5

    .line 2898
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mShowPrimaryActionModePopup:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/DecorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2899
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2900
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2902
    :cond_4
    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    .line 2904
    :cond_5
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    if-eqz v2, :cond_6

    .line 2905
    invoke-virtual {v2}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->dismiss()V

    .line 2906
    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    .line 2909
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->removeBackgroundBlurDrawable()V

    .line 2911
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v2

    .line 2912
    .local v2, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v2, :cond_7

    iget-object v4, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v4, :cond_7

    iget v4, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v4, :cond_7

    .line 2913
    iget-object v4, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuBuilder;->close()V

    .line 2916
    :cond_7
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->releaseThreadedRenderer()V

    .line 2918
    iget-boolean v4, p0, Lcom/android/internal/policy/DecorView;->mWindowResizeCallbacksAdded:Z

    if-eqz v4, :cond_8

    .line 2919
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/ViewRootImpl;->removeWindowCallbacks(Landroid/view/WindowCallbacks;)V

    .line 2920
    iput-boolean v3, p0, Lcom/android/internal/policy/DecorView;->mWindowResizeCallbacksAdded:Z

    .line 2923
    :cond_8
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mPendingInsetsController:Landroid/view/PendingInsetsController;

    invoke-virtual {v3}, Landroid/view/PendingInsetsController;->detach()V

    .line 2927
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadgeViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    if-eqz v3, :cond_9

    .line 2928
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadgeDisplayRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/DecorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2929
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->removeKnoxBadge()V

    .line 2936
    :cond_9
    iget v3, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundResource:I

    const v4, 0x1080bdd

    if-eq v3, v4, :cond_a

    const v4, 0x1080bda

    if-eq v3, v4, :cond_a

    const v4, 0x1080bdb

    if-ne v3, v4, :cond_b

    .line 2939
    :cond_a
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/DecorView;->setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2943
    :cond_b
    return-void
.end method

.method public blacklist onDexStarShowingDelayTimeChanged(I)V
    .locals 1
    .param p1, "time"    # I

    .line 6252
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mImmersiveHelper:Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;

    if-eqz v0, :cond_0

    .line 6253
    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->updateDexStarShowingDelayTime(I)V

    .line 6255
    :cond_0
    return-void
.end method

.method public blacklist onDexTaskDockingChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .line 6313
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mLastFreeformStashType:I

    if-eq v0, p1, :cond_2

    .line 6314
    iput p1, p0, Lcom/android/internal/policy/DecorView;->mLastFreeformStashType:I

    .line 6315
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsMovingTask:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 6318
    :cond_1
    const-string v0, "Dex docking state Changed"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/DecorView;->requestInvalidateRenderNode(Ljava/lang/String;)V

    .line 6319
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v0, :cond_2

    .line 6320
    invoke-virtual {v0}, Lcom/android/internal/widget/DecorCaptionView;->isCaptionShowing()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DecorCaptionView;->onConfigurationChanged(Z)V

    .line 6324
    :cond_2
    return-void
.end method

.method public whitelist onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "c"    # Landroid/graphics/Canvas;

    .line 882
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 884
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v4, v1, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v5, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v6, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    move-object v1, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/widget/BackgroundFallback;->draw(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/graphics/Canvas;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 888
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsDexEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mIsStartingWindow:Z

    if-eqz v0, :cond_0

    .line 889
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/DecorView;->drawFrameIfNeeded(Landroid/graphics/Canvas;)V

    .line 891
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v0, :cond_1

    .line 892
    invoke-virtual {v0}, Lcom/android/internal/widget/DecorCaptionView;->forceLayoutIfNeeded()V

    .line 895
    :cond_1
    return-void
.end method

.method public blacklist onFinishMovingTask()V
    .locals 1

    .line 3953
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->notifyMovingTask(Z)V

    .line 3955
    return-void
.end method

.method public blacklist onFlexPanelModeChanged(Z)V
    .locals 1
    .param p1, "flexPanelMode"    # Z

    .line 4492
    iput-boolean p1, p0, Lcom/android/internal/policy/DecorView;->mIsFlexPanelMode:Z

    .line 4494
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isMultiSplitHandlerRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4495
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->addMultiSplitHandler()V

    goto :goto_0

    .line 4497
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->removeMultiSplitHandler()V

    .line 4502
    :goto_0
    const-string v0, "onFlexPanelModeChanged"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/DecorView;->requestInvalidateRenderNode(Ljava/lang/String;)V

    .line 4505
    return-void
.end method

.method public blacklist onFreeformHeaderTypeChanged(I)V
    .locals 2
    .param p1, "type"    # I

    .line 6235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Freeform header type changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 6236
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const-string v1, "bar"

    goto :goto_0

    :cond_0
    const-string v1, "handler"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6235
    const-string v1, "DecorView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6237
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    if-eqz v0, :cond_1

    .line 6238
    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiSplitActions;->dispatchHeaderTypeChanged(I)V

    .line 6241
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isMultiSplitHandlerRequested()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6242
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->addMultiSplitHandler()V

    goto :goto_1

    .line 6244
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->removeMultiSplitHandler()V

    .line 6247
    :goto_1
    return-void
.end method

.method public blacklist onFreeformResizeGuideViewChanged(Z)V
    .locals 4
    .param p1, "showing"    # Z

    .line 6345
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    if-eqz v0, :cond_0

    .line 6346
    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->onFreeformResizeGuideViewChanged(Z)V

    .line 6349
    :cond_0
    if-nez p1, :cond_1

    .line 6350
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getElevation()F

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    mul-float/2addr v0, v1

    .line 6351
    .local v0, "windowElevation":F
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->setTranslationZ(F)V

    .line 6353
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    const-string/jumbo v2, "translationZ"

    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 6354
    .local v1, "animator":Landroid/animation/ObjectAnimator;
    new-instance v2, Lcom/android/internal/policy/DecorView$15;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/DecorView$15;-><init>(Lcom/android/internal/policy/DecorView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 6377
    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 6378
    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 6380
    .end local v0    # "windowElevation":F
    .end local v1    # "animator":Landroid/animation/ObjectAnimator;
    :cond_1
    return-void
.end method

.method public blacklist onFreeformStashingChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .line 6305
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    if-eqz v0, :cond_0

    .line 6306
    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->onFreeformStashingChanged(I)V

    .line 6308
    :cond_0
    return-void
.end method

.method public blacklist onFreeformTaskPinningChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .line 6219
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsDexEnabled:Z

    if-nez v0, :cond_0

    .line 6220
    return-void

    .line 6223
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFreeformTaskPinningChanged: state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DecorView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6224
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mCompatWindow:Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->getDecorView()Lcom/android/internal/policy/DecorView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mCompatWindow:Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;

    .line 6225
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->getDecorView()Lcom/android/internal/policy/DecorView;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/policy/DecorView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    if-eqz v0, :cond_1

    .line 6226
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mCompatWindow:Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->getDecorView()Lcom/android/internal/policy/DecorView;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/policy/DecorView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiSplitActions;->dispatchWindowPinStateChanged(I)V

    goto :goto_0

    .line 6227
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    if-eqz v0, :cond_2

    .line 6228
    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiSplitActions;->dispatchWindowPinStateChanged(I)V

    .line 6230
    :cond_2
    :goto_0
    return-void
.end method

.method public whitelist onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1139
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1140
    .local v0, "action":I
    iget-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mHasCaption:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isShowingCaption()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1142
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isFullSize()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1152
    if-nez v0, :cond_0

    .line 1153
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 1154
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 1155
    .local v3, "y":I
    invoke-direct {p0, v1, v3}, Lcom/android/internal/policy/DecorView;->isOutOfInnerBounds(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1156
    return v2

    .line 1161
    .end local v1    # "x":I
    .end local v3    # "y":I
    :cond_0
    iget v1, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-ltz v1, :cond_1

    .line 1162
    if-nez v0, :cond_1

    .line 1163
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 1164
    .restart local v1    # "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 1165
    .restart local v3    # "y":I
    invoke-direct {p0, v1, v3}, Lcom/android/internal/policy/DecorView;->isOutOfBounds(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1166
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v5, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/PhoneWindow;->closePanel(I)V

    .line 1167
    return v2

    .line 1173
    .end local v1    # "x":I
    .end local v3    # "y":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method protected whitelist onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 1427
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1429
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mApplyFloatingVerticalInsets:Z

    if-eqz v0, :cond_0

    .line 1430
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->offsetTopAndBottom(I)V

    .line 1432
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mApplyFloatingHorizontalInsets:Z

    if-eqz v0, :cond_1

    .line 1433
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->offsetLeftAndRight(I)V

    .line 1438
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateElevation()V

    .line 1439
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mAllowUpdateElevation:Z

    .line 1441
    if-eqz p1, :cond_3

    iget v1, p0, Lcom/android/internal/policy/DecorView;->mResizeMode:I

    if-eq v1, v0, :cond_2

    iget-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mDrawLegacyNavigationBarBackground:Z

    if-eqz v1, :cond_3

    .line 1444
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->requestInvalidateRootRenderNode()V

    .line 1448
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWindowingMode()I

    move-result v1

    .line 1449
    .local v1, "windowingMode":I
    if-nez p1, :cond_4

    iget v2, p0, Lcom/android/internal/policy/DecorView;->mLastWindowingMode:I

    if-ne v2, v1, :cond_4

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mLastLayoutBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-ne v2, p2, :cond_4

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mLastLayoutBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-ne v2, p3, :cond_4

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mLastLayoutBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-ne v2, p4, :cond_4

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mLastLayoutBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-eq v2, p5, :cond_5

    .line 1452
    :cond_4
    const-string v2, "layout_changed"

    invoke-direct {p0, v2}, Lcom/android/internal/policy/DecorView;->requestInvalidateRenderNode(Ljava/lang/String;)V

    .line 1454
    :cond_5
    iput v1, p0, Lcom/android/internal/policy/DecorView;->mLastWindowingMode:I

    .line 1455
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mLastLayoutBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1457
    iget-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mIsPopOver:Z

    if-eqz v2, :cond_8

    .line 1458
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    .line 1459
    .local v0, "showPopOver":Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mShowPopOver:Z

    if-eq v2, v0, :cond_8

    .line 1460
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mShowPopOver:Z

    .line 1461
    if-eqz v0, :cond_7

    .line 1462
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->showPopOver()V

    goto :goto_1

    .line 1464
    :cond_7
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->hidePopOver()V

    .line 1472
    .end local v0    # "showPopOver":Z
    .end local v1    # "windowingMode":I
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadgeViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    if-eqz v0, :cond_9

    .line 1473
    iput p2, p0, Lcom/android/internal/policy/DecorView;->mKnoxLayoutLeft:I

    .line 1474
    iput p4, p0, Lcom/android/internal/policy/DecorView;->mKnoxLayoutRight:I

    .line 1475
    iput p5, p0, Lcom/android/internal/policy/DecorView;->mKnoxLayoutBottom:I

    .line 1476
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadgeDisplayRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->post(Ljava/lang/Runnable;)Z

    .line 1480
    :cond_9
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .locals 16
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 1313
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1314
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 1315
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    nop

    .line 1316
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    .line 1318
    .local v3, "isPortrait":Z
    :goto_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 1319
    .local v6, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 1321
    .local v7, "heightMode":I
    const/4 v8, 0x0

    .line 1322
    .local v8, "fixedWidth":Z
    iput-boolean v4, v0, Lcom/android/internal/policy/DecorView;->mApplyFloatingHorizontalInsets:Z

    .line 1323
    const/4 v9, 0x6

    const/4 v10, 0x5

    const/high16 v11, 0x40000000    # 2.0f

    const/high16 v12, -0x80000000

    if-ne v6, v12, :cond_5

    .line 1324
    iget-object v13, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    if-eqz v3, :cond_1

    iget-object v13, v13, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMinor:Landroid/util/TypedValue;

    goto :goto_1

    :cond_1
    iget-object v13, v13, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMajor:Landroid/util/TypedValue;

    .line 1325
    .local v13, "tvw":Landroid/util/TypedValue;
    :goto_1
    if-eqz v13, :cond_5

    iget v14, v13, Landroid/util/TypedValue;->type:I

    if-eqz v14, :cond_5

    .line 1327
    iget v14, v13, Landroid/util/TypedValue;->type:I

    if-ne v14, v10, :cond_2

    .line 1328
    invoke-virtual {v13, v2}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v14

    float-to-int v14, v14

    .local v14, "w":I
    goto :goto_2

    .line 1329
    .end local v14    # "w":I
    :cond_2
    iget v14, v13, Landroid/util/TypedValue;->type:I

    if-ne v14, v9, :cond_3

    .line 1330
    iget v14, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v14, v14

    iget v15, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v15, v15

    invoke-virtual {v13, v14, v15}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v14

    float-to-int v14, v14

    .restart local v14    # "w":I
    goto :goto_2

    .line 1332
    .end local v14    # "w":I
    :cond_3
    const/4 v14, 0x0

    .line 1335
    .restart local v14    # "w":I
    :goto_2
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    .line 1336
    .local v15, "widthSize":I
    if-lez v14, :cond_4

    .line 1337
    nop

    .line 1338
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 1337
    invoke-static {v9, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 1339
    .end local p1    # "widthMeasureSpec":I
    .local v9, "widthMeasureSpec":I
    const/4 v8, 0x1

    goto :goto_3

    .line 1341
    .end local v9    # "widthMeasureSpec":I
    .restart local p1    # "widthMeasureSpec":I
    :cond_4
    iget-object v9, v0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    sub-int v9, v15, v9

    iget-object v11, v0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v11

    invoke-static {v9, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 1344
    .end local p1    # "widthMeasureSpec":I
    .restart local v9    # "widthMeasureSpec":I
    iput-boolean v5, v0, Lcom/android/internal/policy/DecorView;->mApplyFloatingHorizontalInsets:Z

    goto :goto_3

    .line 1349
    .end local v9    # "widthMeasureSpec":I
    .end local v13    # "tvw":Landroid/util/TypedValue;
    .end local v14    # "w":I
    .end local v15    # "widthSize":I
    .restart local p1    # "widthMeasureSpec":I
    :cond_5
    move/from16 v9, p1

    .end local p1    # "widthMeasureSpec":I
    .restart local v9    # "widthMeasureSpec":I
    :goto_3
    iput-boolean v4, v0, Lcom/android/internal/policy/DecorView;->mApplyFloatingVerticalInsets:Z

    .line 1350
    if-ne v7, v12, :cond_a

    .line 1351
    if-eqz v3, :cond_6

    iget-object v4, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v4, v4, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMajor:Landroid/util/TypedValue;

    goto :goto_4

    .line 1352
    :cond_6
    iget-object v4, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v4, v4, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMinor:Landroid/util/TypedValue;

    :goto_4
    nop

    .line 1353
    .local v4, "tvh":Landroid/util/TypedValue;
    if-eqz v4, :cond_a

    iget v11, v4, Landroid/util/TypedValue;->type:I

    if-eqz v11, :cond_a

    .line 1355
    iget v11, v4, Landroid/util/TypedValue;->type:I

    if-ne v11, v10, :cond_7

    .line 1356
    invoke-virtual {v4, v2}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v11

    float-to-int v11, v11

    .local v11, "h":I
    goto :goto_5

    .line 1357
    .end local v11    # "h":I
    :cond_7
    iget v11, v4, Landroid/util/TypedValue;->type:I

    const/4 v13, 0x6

    if-ne v11, v13, :cond_8

    .line 1358
    iget v11, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v11, v11

    iget v13, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v13, v13

    invoke-virtual {v4, v11, v13}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v11

    float-to-int v11, v11

    .restart local v11    # "h":I
    goto :goto_5

    .line 1360
    .end local v11    # "h":I
    :cond_8
    const/4 v11, 0x0

    .line 1363
    .restart local v11    # "h":I
    :goto_5
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    .line 1364
    .local v13, "heightSize":I
    if-lez v11, :cond_9

    .line 1365
    nop

    .line 1366
    invoke-static {v11, v13}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 1365
    const/high16 v15, 0x40000000    # 2.0f

    invoke-static {v14, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .end local p2    # "heightMeasureSpec":I
    .local v14, "heightMeasureSpec":I
    goto :goto_6

    .line 1367
    .end local v14    # "heightMeasureSpec":I
    .restart local p2    # "heightMeasureSpec":I
    :cond_9
    iget-object v14, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v14}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v14

    iget v14, v14, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v14, v14, 0x100

    if-nez v14, :cond_a

    .line 1368
    iget-object v14, v0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    sub-int v14, v13, v14

    iget-object v15, v0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v14, v15

    invoke-static {v14, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 1370
    .end local p2    # "heightMeasureSpec":I
    .restart local v14    # "heightMeasureSpec":I
    iput-boolean v5, v0, Lcom/android/internal/policy/DecorView;->mApplyFloatingVerticalInsets:Z

    goto :goto_6

    .line 1375
    .end local v4    # "tvh":Landroid/util/TypedValue;
    .end local v11    # "h":I
    .end local v13    # "heightSize":I
    .end local v14    # "heightMeasureSpec":I
    .restart local p2    # "heightMeasureSpec":I
    :cond_a
    move/from16 v14, p2

    .end local p2    # "heightMeasureSpec":I
    .restart local v14    # "heightMeasureSpec":I
    :goto_6
    invoke-super {v0, v9, v14}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 1377
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getMeasuredWidth()I

    move-result v4

    .line 1378
    .local v4, "width":I
    const/4 v11, 0x0

    .line 1380
    .local v11, "measure":Z
    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v4, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 1382
    if-nez v8, :cond_f

    if-ne v6, v12, :cond_f

    .line 1384
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    iget v12, v12, Landroid/content/res/Configuration;->orientation:I

    .line 1385
    .local v12, "currOrientation":I
    iget v13, v0, Lcom/android/internal/policy/DecorView;->mLastOrientation:I

    if-eq v13, v12, :cond_b

    .line 1386
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v13

    .line 1387
    .local v13, "theme":Landroid/content/res/Resources$Theme;
    const v15, 0x1010357

    iget-object v10, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v10, v10, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMinor:Landroid/util/TypedValue;

    invoke-virtual {v13, v15, v10, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1388
    const v10, 0x1010356

    iget-object v15, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v15, v15, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMajor:Landroid/util/TypedValue;

    invoke-virtual {v13, v10, v15, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1389
    iput v12, v0, Lcom/android/internal/policy/DecorView;->mLastOrientation:I

    .line 1393
    .end local v12    # "currOrientation":I
    .end local v13    # "theme":Landroid/content/res/Resources$Theme;
    :cond_b
    iget-object v10, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    if-eqz v3, :cond_c

    iget-object v10, v10, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMinor:Landroid/util/TypedValue;

    goto :goto_7

    :cond_c
    iget-object v10, v10, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMajor:Landroid/util/TypedValue;

    .line 1394
    .local v10, "tv":Landroid/util/TypedValue;
    :goto_7
    nop

    .line 1395
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    iget v12, v12, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v12, v12

    .line 1394
    invoke-static {v5, v12, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    .line 1396
    .local v5, "availableWidth":F
    iget v12, v10, Landroid/util/TypedValue;->type:I

    if-eqz v12, :cond_f

    .line 1398
    iget v12, v10, Landroid/util/TypedValue;->type:I

    const/4 v13, 0x5

    if-ne v12, v13, :cond_d

    .line 1399
    invoke-virtual {v10, v2}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v12

    float-to-int v12, v12

    .local v12, "min":I
    goto :goto_8

    .line 1400
    .end local v12    # "min":I
    :cond_d
    iget v12, v10, Landroid/util/TypedValue;->type:I

    const/4 v13, 0x6

    if-ne v12, v13, :cond_e

    .line 1401
    invoke-virtual {v10, v5, v5}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v12

    float-to-int v12, v12

    .restart local v12    # "min":I
    goto :goto_8

    .line 1403
    .end local v12    # "min":I
    :cond_e
    const/4 v12, 0x0

    .line 1408
    .restart local v12    # "min":I
    :goto_8
    if-ge v4, v12, :cond_f

    .line 1409
    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 1410
    const/4 v11, 0x1

    .line 1417
    .end local v5    # "availableWidth":F
    .end local v10    # "tv":Landroid/util/TypedValue;
    .end local v12    # "min":I
    :cond_f
    if-eqz v11, :cond_10

    .line 1418
    invoke-super {v0, v9, v14}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 1421
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->notifyCaptionHeightChanged()V

    .line 1423
    return-void
.end method

.method public blacklist onMovedToDisplay(ILandroid/content/res/Configuration;)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "config"    # Landroid/content/res/Configuration;

    .line 3501
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMovedToDisplay(ILandroid/content/res/Configuration;)V

    .line 3503
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->updateDisplay(I)V

    .line 3504
    return-void
.end method

.method public blacklist onPostDraw(Landroid/graphics/RecordingCanvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/RecordingCanvas;

    .line 3932
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->drawResizingShadowIfNeeded(Landroid/graphics/RecordingCanvas;)V

    .line 3933
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->drawLegacyNavigationBarBackground(Landroid/graphics/RecordingCanvas;)V

    .line 3939
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/DecorView;->drawFrameIfNeeded(Landroid/graphics/Canvas;)V

    .line 3941
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isImmersiveFullscreenOnDex()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v0, :cond_0

    .line 3942
    invoke-virtual {v0}, Lcom/android/internal/widget/DecorCaptionView;->getLastMeasuredWithCaptionHeight()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mHasCaption:Z

    if-eq v0, v1, :cond_0

    .line 3943
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DecorCaptionView;->requestLayout()V

    .line 3944
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DecorCaptionView;->invalidate()V

    .line 3948
    :cond_0
    return-void
.end method

.method public blacklist onRequestDraw(Z)V
    .locals 1
    .param p1, "reportNextDraw"    # Z

    .line 3920
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    if-eqz v0, :cond_0

    .line 3921
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/BackdropFrameRenderer;->onRequestDraw(Z)V

    goto :goto_0

    .line 3922
    :cond_0
    if-eqz p1, :cond_1

    .line 3924
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3925
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->reportDrawFinish()V

    .line 3928
    :cond_1
    :goto_0
    return-void
.end method

.method blacklist onResourcesLoaded(Landroid/view/LayoutInflater;I)V
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "layoutResource"    # I

    .line 3566
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mLastOutlineProvider:Landroid/view/ViewOutlineProvider;

    .line 3567
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateOutlineProvider()V

    .line 3569
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mActivityCurrentConfig:Landroid/content/res/Configuration;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/DecorView;->updateCaptionType(Landroid/content/res/Configuration;)V

    .line 3571
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isFreeformMode()Z

    move-result v0

    const-string v1, "resources_loaded"

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->hasWindowDecorCaption()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3572
    invoke-direct {p0, v1}, Lcom/android/internal/policy/DecorView;->requestInvalidateRenderNode(Ljava/lang/String;)V

    .line 3576
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    if-eqz v0, :cond_1

    .line 3577
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->loadBackgroundDrawablesIfNeeded()V

    .line 3578
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mUserCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    .line 3580
    invoke-direct {p0, v0}, Lcom/android/internal/policy/DecorView;->getCurrentColor(Lcom/android/internal/policy/DecorView$ColorViewState;)I

    move-result v7

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    .line 3581
    invoke-direct {p0, v0}, Lcom/android/internal/policy/DecorView;->getCurrentColor(Lcom/android/internal/policy/DecorView$ColorViewState;)I

    move-result v8

    .line 3578
    move-object v3, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/policy/BackdropFrameRenderer;->onResourcesLoaded(Lcom/android/internal/policy/DecorView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    .line 3584
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->createDecorCaptionView(Landroid/view/LayoutInflater;)Lcom/android/internal/widget/DecorCaptionView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    .line 3585
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 3586
    .local v0, "root":Landroid/view/View;
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    const/4 v3, -0x1

    if-eqz v2, :cond_4

    .line 3588
    iget-boolean v4, p0, Lcom/android/internal/policy/DecorView;->mHasWindowFocus:Z

    .line 3591
    .local v4, "hasWindowFocus":Z
    iget-boolean v5, p0, Lcom/android/internal/policy/DecorView;->mHasWindowFocusInTask:Z

    or-int/2addr v4, v5

    .line 3595
    invoke-virtual {v2, v4}, Lcom/android/internal/widget/DecorCaptionView;->updateWindowFocus(Z)V

    .line 3598
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    if-eqz v2, :cond_2

    .line 3599
    invoke-virtual {v2, v4}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->onWindowFocusChanged(Z)V

    .line 3603
    .end local v4    # "hasWindowFocus":Z
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {v2}, Lcom/android/internal/widget/DecorCaptionView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_3

    .line 3604
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v4}, Lcom/android/internal/policy/DecorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3607
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    new-instance v4, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v4}, Lcom/android/internal/widget/DecorCaptionView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 3612
    :cond_4
    const/4 v2, 0x0

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v2, v4}, Lcom/android/internal/policy/DecorView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 3614
    :goto_0
    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    .line 3615
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->initializeElevation()V

    .line 3619
    new-instance v2, Lcom/android/internal/policy/DecorView$13;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/DecorView$13;-><init>(Lcom/android/internal/policy/DecorView;)V

    iput-object v2, v0, Landroid/view/View;->mOnAddRemoveListener:Landroid/view/View$OnAddRemoveListener;

    .line 3631
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 3632
    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v2, v3, :cond_5

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    :cond_5
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow;->isFloating()Z

    move-result v3

    if-nez v3, :cond_7

    .line 3633
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 3634
    .local v3, "appContext":Landroid/content/Context;
    if-eqz v3, :cond_6

    .line 3635
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    iput v4, p0, Lcom/android/internal/policy/DecorView;->mLastOrientation:I

    .line 3637
    :cond_6
    invoke-direct {p0, v1}, Lcom/android/internal/policy/DecorView;->getCurrentDensityDpi(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/DecorView;->mDensityDpi:I

    .line 3640
    .end local v2    # "type":I
    .end local v3    # "appContext":Landroid/content/Context;
    :cond_7
    return-void
.end method

.method public blacklist onRootViewScrollYChanged(I)V
    .locals 1
    .param p1, "rootScrollY"    # I

    .line 2975
    iput p1, p0, Lcom/android/internal/policy/DecorView;->mRootScrollY:I

    .line 2976
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v0, :cond_0

    .line 2977
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/DecorCaptionView;->onRootViewScrollYChanged(I)V

    .line 2979
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateColorViewTranslations()V

    .line 2980
    return-void
.end method

.method public blacklist onSystemBarAppearanceChanged(I)V
    .locals 2
    .param p1, "appearance"    # I

    .line 1779
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 1780
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    if-eqz v0, :cond_0

    .line 1781
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/PhoneWindow;->dispatchOnSystemBarAppearanceChanged(I)V

    .line 1783
    :cond_0
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1125
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/DecorView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist onViewRemoved(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 4396
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onViewRemoved(Landroid/view/View;)V

    .line 4399
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_0

    .line 4400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DecorView.onViewRemoved: msh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " decor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->logLifeCycle(Ljava/lang/String;)V

    .line 4401
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->removeMultiSplitHandler()V

    .line 4404
    :cond_0
    return-void
.end method

.method blacklist onWindowAttributesChanged()V
    .locals 3

    .line 4670
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->hasWindowDecorCaption()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4672
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isFullscreenMode()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isFullSize()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4673
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mImmersiveHelper:Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->isTransient()Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsImmersiveMode:Z

    xor-int/2addr v0, v2

    or-int/2addr v0, v1

    .local v0, "showCaption":Z
    goto :goto_0

    .line 4675
    .end local v0    # "showCaption":Z
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isFullSize()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsDexEnabled:Z

    if-eqz v0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    move v0, v1

    .line 4677
    .restart local v0    # "showCaption":Z
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/DecorCaptionView;->onConfigurationChanged(Z)V

    .line 4678
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->enableCaption(Z)V

    .line 4680
    .end local v0    # "showCaption":Z
    :cond_4
    return-void
.end method

.method public blacklist onWindowDragResizeEnd()V
    .locals 2

    .line 3904
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->releaseThreadedRenderer()V

    .line 3905
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 3906
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/DecorView;->mResizeMode:I

    .line 3907
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->requestInvalidateRootRenderNode()V

    .line 3908
    return-void
.end method

.method public blacklist onWindowDragResizeStart(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 15
    .param p1, "initialBounds"    # Landroid/graphics/Rect;
    .param p2, "fullscreen"    # Z
    .param p3, "systemInsets"    # Landroid/graphics/Rect;
    .param p4, "stableInsets"    # Landroid/graphics/Rect;
    .param p5, "resizeMode"    # I

    .line 3873
    move-object v11, p0

    iget-object v0, v11, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3875
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->releaseThreadedRenderer()V

    .line 3876
    return-void

    .line 3878
    :cond_0
    iget-object v0, v11, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    if-eqz v0, :cond_1

    .line 3879
    return-void

    .line 3881
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getThreadedRenderer()Landroid/view/ThreadedRenderer;

    move-result-object v12

    .line 3882
    .local v12, "renderer":Landroid/view/ThreadedRenderer;
    if-eqz v12, :cond_2

    .line 3883
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->loadBackgroundDrawablesIfNeeded()V

    .line 3884
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v13

    .line 3885
    .local v13, "rootInsets":Landroid/view/WindowInsets;
    new-instance v14, Lcom/android/internal/policy/BackdropFrameRenderer;

    iget-object v4, v11, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, v11, Lcom/android/internal/policy/DecorView;->mCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v6, v11, Lcom/android/internal/policy/DecorView;->mUserCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, v11, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    .line 3887
    invoke-direct {p0, v0}, Lcom/android/internal/policy/DecorView;->getCurrentColor(Lcom/android/internal/policy/DecorView$ColorViewState;)I

    move-result v7

    iget-object v0, v11, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    .line 3888
    invoke-direct {p0, v0}, Lcom/android/internal/policy/DecorView;->getCurrentColor(Lcom/android/internal/policy/DecorView$ColorViewState;)I

    move-result v8

    .line 3889
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v0

    invoke-virtual {v13, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v10

    move-object v0, v14

    move-object v1, p0

    move-object v2, v12

    move-object/from16 v3, p1

    move/from16 v9, p2

    invoke-direct/range {v0 .. v10}, Lcom/android/internal/policy/BackdropFrameRenderer;-><init>(Lcom/android/internal/policy/DecorView;Landroid/view/ThreadedRenderer;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIZLandroid/graphics/Insets;)V

    iput-object v14, v11, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    .line 3894
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateElevation()V

    .line 3896
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 3898
    .end local v13    # "rootInsets":Landroid/view/WindowInsets;
    :cond_2
    move/from16 v0, p5

    iput v0, v11, Lcom/android/internal/policy/DecorView;->mResizeMode:I

    .line 3899
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->requestInvalidateRootRenderNode()V

    .line 3900
    return-void
.end method

.method public whitelist onWindowFocusChanged(Z)V
    .locals 4
    .param p1, "hasWindowFocus"    # Z

    .line 2676
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 2680
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I

    if-eqz v0, :cond_0

    .line 2682
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->closePanel(I)V

    .line 2685
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 2686
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_5

    iget v2, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v2, :cond_5

    .line 2688
    sget-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_MULTISTAR_STAY_FOCUS_ACTIVITY_DYNAMIC_ENABLED:Z

    if-eqz v2, :cond_4

    instance-of v2, v0, Landroid/app/Activity;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 2690
    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_4

    .line 2691
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isActivityHomeOrRecent()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2692
    iget-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mStayFocus:Z

    if-nez v2, :cond_2

    if-eqz p1, :cond_2

    .line 2693
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/Window$Callback;->onWindowFocusChanged(Z)V

    .line 2694
    iput-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mStayFocus:Z

    goto :goto_0

    .line 2696
    :cond_2
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v2

    .line 2697
    .local v2, "thread":Landroid/app/ActivityThread;
    iget-boolean v3, p0, Lcom/android/internal/policy/DecorView;->mStayFocus:Z

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 2698
    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 2697
    invoke-virtual {v2, v3}, Landroid/app/ActivityThread;->mayStayActivityFocus(Landroid/os/IBinder;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2699
    invoke-interface {v0, v1}, Landroid/view/Window$Callback;->onWindowFocusChanged(Z)V

    .line 2700
    iput-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mStayFocus:Z

    .line 2702
    .end local v2    # "thread":Landroid/app/ActivityThread;
    :cond_3
    goto :goto_0

    .line 2704
    :cond_4
    iput-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mStayFocus:Z

    .line 2706
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowFocusChanged(Z)V

    .line 2710
    :cond_5
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_6

    .line 2711
    invoke-virtual {v1, p1}, Landroid/view/ActionMode;->onWindowFocusChanged(Z)V

    .line 2713
    :cond_6
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_7

    .line 2714
    invoke-virtual {v1, p1}, Landroid/view/ActionMode;->onWindowFocusChanged(Z)V

    .line 2717
    :cond_7
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateElevation()V

    .line 2720
    iput-boolean p1, p0, Lcom/android/internal/policy/DecorView;->mHasWindowFocus:Z

    .line 2722
    iget v1, p0, Lcom/android/internal/policy/DecorView;->mCaptionType:I

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 2735
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mCompatWindow:Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->getDecorView()Lcom/android/internal/policy/DecorView;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 2736
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mCompatWindow:Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->getDecorView()Lcom/android/internal/policy/DecorView;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mHasWindowFocus:Z

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/DecorView;->onWindowFocusChanged(Z)V

    .line 2738
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mRestartNotiHelpToken:Landroid/os/IBinder;

    if-eqz v1, :cond_9

    .line 2739
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mCompatWindow:Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;

    invoke-virtual {v2, v1}, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->showRestartNotificationTipPopup(Landroid/os/IBinder;)V

    .line 2740
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mRestartNotiHelpToken:Landroid/os/IBinder;

    goto :goto_1

    .line 2725
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v1, :cond_8

    .line 2726
    invoke-virtual {v1, p1}, Lcom/android/internal/widget/DecorCaptionView;->updateWindowFocus(Z)V

    .line 2729
    :cond_8
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    if-eqz v1, :cond_9

    .line 2730
    invoke-virtual {v1, p1}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->onWindowFocusChanged(Z)V

    .line 2746
    :cond_9
    :goto_1
    const-string v1, "focus_changed"

    invoke-direct {p0, v1}, Lcom/android/internal/policy/DecorView;->requestInvalidateRenderNode(Ljava/lang/String;)V

    .line 2748
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public blacklist onWindowFocusInTaskChanged(Z)V
    .locals 2
    .param p1, "hasWindowFocusInTask"    # Z

    .line 2651
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mHasWindowFocusInTask:Z

    if-eq v0, p1, :cond_1

    .line 2652
    iput-boolean p1, p0, Lcom/android/internal/policy/DecorView;->mHasWindowFocusInTask:Z

    .line 2654
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->hasWindowFocus()Z

    move-result v0

    .line 2657
    .local v0, "hasWindowFocus":Z
    iget-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mHasWindowFocusInTask:Z

    or-int/2addr v0, v1

    .line 2661
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v1, :cond_0

    .line 2662
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/DecorCaptionView;->dispatchWindowFocusChanged(Z)V

    .line 2663
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/DecorCaptionView;->updateWindowFocus(Z)V

    .line 2666
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    if-eqz v1, :cond_1

    .line 2667
    invoke-virtual {v1, v0}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->onWindowFocusChanged(Z)V

    .line 2671
    .end local v0    # "hasWindowFocus":Z
    :cond_1
    return-void
.end method

.method public blacklist onWindowSizeIsChanging(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "newBounds"    # Landroid/graphics/Rect;
    .param p2, "fullscreen"    # Z
    .param p3, "systemInsets"    # Landroid/graphics/Rect;
    .param p4, "stableInsets"    # Landroid/graphics/Rect;

    .line 3865
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    if-eqz v0, :cond_0

    .line 3866
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/BackdropFrameRenderer;->setTargetRect(Landroid/graphics/Rect;ZLandroid/graphics/Rect;)V

    .line 3868
    :cond_0
    return-void
.end method

.method public whitelist onWindowSystemUiVisibilityChanged(I)V
    .locals 3
    .param p1, "visible"    # I

    .line 1753
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 1754
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/DecorView;->updateDecorCaptionStatus(Landroid/content/res/Configuration;)V

    .line 1756
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1757
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateStatusGuardColor()V

    .line 1763
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadgeViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    if-eqz v0, :cond_1

    .line 1764
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getSystemUiVisibility()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWindowSystemUiVisibility()I

    move-result v1

    or-int/2addr v0, v1

    .line 1765
    .local v0, "sysuiVis":I
    and-int/lit16 v1, v0, 0x1800

    if-eqz v1, :cond_1

    and-int/lit8 v1, v0, 0x6

    if-eqz v1, :cond_1

    .line 1767
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->hideKnoxBadge()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1772
    .end local v0    # "sysuiVis":I
    :cond_1
    goto :goto_0

    .line 1770
    :catch_0
    move-exception v0

    .line 1771
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DecorView_KNOX"

    const-string v2, "failed to remove knox badge"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public blacklist onWindowingModeChanged(IZ)V
    .locals 6
    .param p1, "windowingMode"    # I
    .param p2, "split"    # Z

    .line 4426
    iput p1, p0, Lcom/android/internal/policy/DecorView;->mWindowingMode:I

    .line 4430
    const/4 v0, 0x0

    .line 4432
    .local v0, "updateWindowFormat":Z
    iget v1, p0, Lcom/android/internal/policy/DecorView;->mLastDisplayDeviceType:I

    .line 4433
    .local v1, "oldDisplayDeviceType":I
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    iput v2, p0, Lcom/android/internal/policy/DecorView;->mLastDisplayDeviceType:I

    .line 4434
    if-eq v2, v1, :cond_0

    .line 4435
    const/4 v0, 0x1

    .line 4438
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 4439
    .local v2, "winConfig":Landroid/app/WindowConfiguration;
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->isPopOver()Z

    move-result v3

    .line 4440
    .local v3, "isPopPover":Z
    iget-boolean v4, p0, Lcom/android/internal/policy/DecorView;->mIsPopOver:Z

    if-eq v4, v3, :cond_1

    .line 4441
    iput-boolean v3, p0, Lcom/android/internal/policy/DecorView;->mIsPopOver:Z

    .line 4442
    const/4 v0, 0x1

    .line 4446
    :cond_1
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->isPopOverWithoutOutlineEffect()Z

    move-result v4

    .line 4447
    .local v4, "isPopOverWithoutElevation":Z
    iget-boolean v5, p0, Lcom/android/internal/policy/DecorView;->mIsPopOverForMultiPaneLayout:Z

    if-eq v5, v4, :cond_2

    .line 4448
    iput-boolean v4, p0, Lcom/android/internal/policy/DecorView;->mIsPopOverForMultiPaneLayout:Z

    .line 4449
    const/4 v0, 0x1

    .line 4453
    :cond_2
    if-eqz v0, :cond_3

    .line 4454
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->drawableChanged()V

    .line 4459
    .end local v0    # "updateWindowFormat":Z
    .end local v1    # "oldDisplayDeviceType":I
    .end local v2    # "winConfig":Landroid/app/WindowConfiguration;
    .end local v3    # "isPopPover":Z
    .end local v4    # "isPopOverWithoutElevation":Z
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateOverlayWithAppContentForImmersive()V

    .line 4463
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isMultiSplitHandlerRequested()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4464
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    if-eqz v0, :cond_4

    .line 4465
    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->onWindowingModeChanged(I)V

    goto :goto_0

    .line 4467
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->addMultiSplitHandler()V

    goto :goto_0

    .line 4470
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->removeMultiSplitHandler()V

    .line 4475
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->hasDecorCaptionView()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4476
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->getNeedsShowingCaption()Z

    move-result v0

    .line 4477
    .local v0, "showCaption":Z
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isShowingCaption()Z

    move-result v1

    if-eq v1, v0, :cond_6

    .line 4478
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/DecorCaptionView;->onConfigurationChanged(Z)V

    .line 4479
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->enableCaption(Z)V

    .line 4485
    .end local v0    # "showCaption":Z
    :cond_6
    const-string/jumbo v0, "window_mode_changed"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/DecorView;->requestInvalidateRenderNode(Ljava/lang/String;)V

    .line 4488
    return-void
.end method

.method public blacklist preventElevationUpdate()V
    .locals 1

    .line 4041
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mPreventElevationUpdate:Z

    .line 4042
    return-void
.end method

.method public blacklist preventPopOverElevation()V
    .locals 1

    .line 4047
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mPreventPopOverElevation:Z

    .line 4048
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->setElevation(F)V

    .line 4049
    return-void
.end method

.method public blacklist providePendingInsetsController()Landroid/view/PendingInsetsController;
    .locals 1

    .line 2984
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPendingInsetsController:Landroid/view/PendingInsetsController;

    return-object v0
.end method

.method public blacklist registerMultiSplitHandler(Lcom/samsung/android/multiwindow/MultiSplitHandler;)V
    .locals 3
    .param p1, "multiSplitHandler"    # Lcom/samsung/android/multiwindow/MultiSplitHandler;

    .line 5450
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    const-string v1, " decor="

    if-eqz v0, :cond_0

    .line 5451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerMultiSplitHandler: already exist. old msh="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " new msh="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->logLifeCycle(Ljava/lang/String;)V

    .line 5453
    return-void

    .line 5456
    :cond_0
    if-nez p1, :cond_1

    .line 5457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerMultiSplitHandler: no exist. decor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->logLifeCycle(Ljava/lang/String;)V

    .line 5458
    return-void

    .line 5461
    :cond_1
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    .line 5463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerMultiSplitHandler: done. msh="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->logLifeCycle(Ljava/lang/String;)V

    .line 5464
    return-void
.end method

.method public blacklist releaseActivityFocusIfNeeded()V
    .locals 3

    .line 6335
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 6336
    .local v0, "cb":Landroid/view/Window$Callback;
    iget-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mStayFocus:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v1, :cond_0

    .line 6337
    invoke-interface {v0, v2}, Landroid/view/Window$Callback;->onWindowFocusChanged(Z)V

    .line 6339
    :cond_0
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mStayFocus:Z

    .line 6340
    return-void
.end method

.method blacklist removeBackgroundBlurDrawable()V
    .locals 3

    .line 2164
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mCrossWindowBlurEnabledListener:Ljava/util/function/Consumer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2165
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Landroid/view/WindowManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mCrossWindowBlurEnabledListener:Ljava/util/function/Consumer;

    .line 2166
    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeCrossWindowBlurEnabledListener(Ljava/util/function/Consumer;)V

    .line 2167
    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mCrossWindowBlurEnabledListener:Ljava/util/function/Consumer;

    .line 2169
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 2170
    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    .line 2171
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateBackgroundDrawable()V

    .line 2172
    return-void
.end method

.method public blacklist removeMultiSplitHandler()V
    .locals 3

    .line 5430
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    if-nez v0, :cond_0

    .line 5431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeMultiSplitHandler: no exist. decor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->logLifeCycle(Ljava/lang/String;)V

    .line 5432
    return-void

    .line 5435
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeMultiSplitHandler: on request. msh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " decor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->logLifeCycle(Ljava/lang/String;)V

    .line 5437
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->removeOverlayHandlerWindow()V

    .line 5438
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5439
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->removeView(Landroid/view/View;)V

    .line 5441
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    .line 5443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeMultiSplitHandler: done. msh="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->logLifeCycle(Ljava/lang/String;)V

    .line 5446
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->drawableChanged()V

    .line 5447
    return-void
.end method

.method public blacklist reportRestartNotificationHelpResult(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 6287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2) post run, window = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", token = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DecorView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6288
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->reportDexHelpShown(Landroid/os/IBinder;I)V

    .line 6289
    return-void
.end method

.method public blacklist requestKeyboardShortcuts(Ljava/util/List;I)V
    .locals 3
    .param p2, "deviceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;I)V"
        }
    .end annotation

    .line 4267
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/view/KeyboardShortcutGroup;>;"
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v0

    .line 4268
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4269
    .local v1, "menu":Landroid/view/Menu;
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4270
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v2

    invoke-interface {v2, p1, v1, p2}, Landroid/view/Window$Callback;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    .line 4272
    :cond_1
    return-void
.end method

.method blacklist requestToggleFreeformWindowingMode()V
    .locals 1

    .line 4755
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->hasDecorCaptionWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mCompatWindow:Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;

    if-eqz v0, :cond_0

    .line 4756
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->getDecorView()Lcom/android/internal/policy/DecorView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mCompatWindow:Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;

    .line 4757
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->getDecorView()Lcom/android/internal/policy/DecorView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getDecorCaptionView()Lcom/android/internal/widget/DecorCaptionView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4758
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mCompatWindow:Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->getDecorView()Lcom/android/internal/policy/DecorView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getDecorCaptionView()Lcom/android/internal/widget/DecorCaptionView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/DecorCaptionView;->toggleWindow()V

    .line 4760
    :cond_0
    return-void
.end method

.method public blacklist resetDecorViewStateIfNeeded()V
    .locals 2

    .line 4699
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mCaptionType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v0, :cond_0

    .line 4700
    const-string v1, "reset"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DecorCaptionView;->clearMaximizeRequested(Ljava/lang/String;)V

    .line 4701
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DecorCaptionView;->updateButtonVisibility()V

    .line 4703
    :cond_0
    return-void
.end method

.method public blacklist resetMultiSplitHelpMode()V
    .locals 1

    .line 5623
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHelpMode:I

    .line 5624
    return-void
.end method

.method public blacklist resolveLayoutDirection()Z
    .locals 3

    .line 837
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getLayoutDirection()I

    move-result v0

    .line 838
    .local v0, "oldLayoutDirection":I
    invoke-super {p0}, Landroid/widget/FrameLayout;->resolveLayoutDirection()Z

    move-result v1

    .line 839
    .local v1, "rt":Z
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getMultiSplitActions()Lcom/samsung/android/multiwindow/MultiSplitActions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiSplitActions;->isEmbeddedMode()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getLayoutDirection()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 840
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/internal/policy/DecorView;->updateElevation(Z)V

    .line 842
    :cond_0
    return v1
.end method

.method public blacklist semGetWindowContext()Landroid/content/Context;
    .locals 1

    .line 6212
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public whitelist semSetRoundedCorners(I)V
    .locals 1
    .param p1, "corners"    # I

    .line 5371
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mForceRoundedCorner:Z

    .line 5372
    iput p1, p0, Lcom/android/internal/policy/DecorView;->mRoundedCornerMode:I

    .line 5373
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->semSetRoundedCorners(I)V

    .line 5374
    return-void
.end method

.method public whitelist sendAccessibilityEvent(I)V
    .locals 2
    .param p1, "eventType"    # I

    .line 1237
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1238
    return-void

    .line 1244
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-eqz v0, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 1248
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1249
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_0

    .line 1251
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    .line 1253
    :goto_0
    return-void
.end method

.method blacklist setBackgroundBlurRadius(I)V
    .locals 2
    .param p1, "blurRadius"    # I

    .line 2144
    iput p1, p0, Lcom/android/internal/policy/DecorView;->mOriginalBackgroundBlurRadius:I

    .line 2145
    if-lez p1, :cond_1

    .line 2146
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mCrossWindowBlurEnabledListener:Ljava/util/function/Consumer;

    if-nez v0, :cond_0

    .line 2147
    new-instance v0, Lcom/android/internal/policy/DecorView$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/DecorView$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/policy/DecorView;)V

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mCrossWindowBlurEnabledListener:Ljava/util/function/Consumer;

    .line 2151
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mCrossWindowBlurEnabledListener:Ljava/util/function/Consumer;

    .line 2152
    invoke-interface {v0, v1}, Landroid/view/WindowManager;->addCrossWindowBlurEnabledListener(Ljava/util/function/Consumer;)V

    .line 2153
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0

    .line 2155
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateBackgroundBlurRadius()V

    goto :goto_0

    .line 2157
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mCrossWindowBlurEnabledListener:Ljava/util/function/Consumer;

    if-eqz v0, :cond_2

    .line 2158
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateBackgroundBlurRadius()V

    .line 2159
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->removeBackgroundBlurDrawable()V

    .line 2161
    :cond_2
    :goto_0
    return-void
.end method

.method public whitelist setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .line 1736
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/DecorView;->setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1737
    return-void
.end method

.method blacklist setBackgroundFallback(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "fallbackDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 818
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/BackgroundFallback;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 819
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

    invoke-virtual {v0}, Lcom/android/internal/widget/BackgroundFallback;->hasFallback()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->setWillNotDraw(Z)V

    .line 820
    return-void
.end method

.method public blacklist setCaptionType(I)V
    .locals 2
    .param p1, "captionType"    # I

    .line 4599
    iput p1, p0, Lcom/android/internal/policy/DecorView;->mCaptionType:I

    .line 4600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCaptionType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/policy/DecorView;->mCaptionType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DecorView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4601
    return-void
.end method

.method public blacklist setDexNonResizeableAppRestartHelpMode(Landroid/os/IBinder;I)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "mode"    # I

    .line 6277
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    const-string v1, "DecorView"

    if-eqz v0, :cond_0

    .line 6278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDexNonResizeableAppRestartHelpMode : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", at : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x5

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6280
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1) setDexNonResizeableAppRestartHelpMode, mWindow = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", token = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6281
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 6282
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mRestartNotiHelpToken:Landroid/os/IBinder;

    .line 6284
    :cond_1
    return-void
.end method

.method public blacklist setDisplayCutoutBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 5831
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mCalledDisplayCutoutBackgroundColor:Z

    .line 5832
    iput p1, p0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundColor:I

    .line 5833
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->requestApplyInsets()V

    .line 5834
    return-void
.end method

.method protected blacklist setFrame(IIII)Z
    .locals 8
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .line 1268
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->setFrame(IIII)Z

    move-result v0

    .line 1269
    .local v0, "changed":Z
    if-eqz v0, :cond_1

    .line 1270
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mDrawingBounds:Landroid/graphics/Rect;

    .line 1271
    .local v1, "drawingBounds":Landroid/graphics/Rect;
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/DecorView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1273
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1274
    .local v2, "fg":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 1275
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mFrameOffsets:Landroid/graphics/Rect;

    .line 1276
    .local v3, "frameOffsets":Landroid/graphics/Rect;
    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->left:I

    .line 1277
    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v5, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->top:I

    .line 1278
    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->right:I

    .line 1279
    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    .line 1280
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1281
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    .line 1282
    .local v4, "framePadding":Landroid/graphics/Rect;
    iget v5, v1, Landroid/graphics/Rect;->left:I

    iget v6, v4, Landroid/graphics/Rect;->left:I

    iget v7, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->left:I

    .line 1283
    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    iget v7, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->top:I

    .line 1284
    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget v6, v4, Landroid/graphics/Rect;->right:I

    iget v7, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    sub-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->right:I

    .line 1285
    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    sub-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->bottom:I

    .line 1289
    .end local v3    # "frameOffsets":Landroid/graphics/Rect;
    .end local v4    # "framePadding":Landroid/graphics/Rect;
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1290
    .local v3, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_1

    .line 1291
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1308
    .end local v1    # "drawingBounds":Landroid/graphics/Rect;
    .end local v2    # "fg":Landroid/graphics/drawable/Drawable;
    .end local v3    # "bg":Landroid/graphics/drawable/Drawable;
    :cond_1
    return v0
.end method

.method public blacklist setLastBackgroundResource(I)V
    .locals 0
    .param p1, "redId"    # I

    .line 6002
    iput p1, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundResource:I

    .line 6003
    return-void
.end method

.method public blacklist setMultiSplitHelpMode(I)V
    .locals 2
    .param p1, "helpMode"    # I

    .line 5612
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    .line 5613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMultiSplitHelpMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DecorView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5615
    :cond_0
    iput p1, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHelpMode:I

    .line 5616
    return-void
.end method

.method public whitelist setOutlineProvider(Landroid/view/ViewOutlineProvider;)V
    .locals 0
    .param p1, "provider"    # Landroid/view/ViewOutlineProvider;

    .line 2557
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 2560
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mLastOutlineProvider:Landroid/view/ViewOutlineProvider;

    .line 2561
    return-void
.end method

.method public blacklist setOverrideRoundedCornerBounds(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "outRoundedCornerBounds"    # Landroid/graphics/Rect;

    .line 5378
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mOverrideRoundedCornerBounds:Landroid/graphics/Rect;

    .line 5380
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5381
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mOverrideRoundedCornerBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5382
    const/4 v0, 0x1

    return v0

    .line 5384
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setParentWindow(Landroid/view/Window;)V
    .locals 0
    .param p1, "window"    # Landroid/view/Window;

    .line 4810
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mParentWindow:Landroid/view/Window;

    .line 4811
    return-void
.end method

.method public blacklist setSurfaceFormat(I)V
    .locals 1
    .param p1, "format"    # I

    .line 2965
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/PhoneWindow;->setFormat(I)V

    .line 2966
    return-void
.end method

.method public blacklist setSurfaceKeepScreenOn(Z)V
    .locals 2
    .param p1, "keepOn"    # Z

    .line 2969
    const/16 v0, 0x80

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/PhoneWindow;->addFlags(I)V

    goto :goto_0

    .line 2970
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/PhoneWindow;->clearFlags(I)V

    .line 2971
    :goto_0
    return-void
.end method

.method public blacklist setSurfaceType(I)V
    .locals 1
    .param p1, "type"    # I

    .line 2961
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/PhoneWindow;->setType(I)V

    .line 2962
    return-void
.end method

.method public whitelist setSystemUiVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .line 4920
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    .line 4923
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getSystemUiVisibility()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWindowSystemUiVisibility()I

    move-result v1

    or-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/DecorView;->updateImmersiveModeBySystemUiVisibility(I)V

    .line 4925
    return-void
.end method

.method blacklist setUserCaptionBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 4240
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mUserCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 4241
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    if-eqz v0, :cond_0

    .line 4242
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/BackdropFrameRenderer;->setUserCaptionBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4244
    :cond_0
    return-void
.end method

.method public whitelist setVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .line 4408
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4411
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isMultiSplitHandlerRequested()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4412
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/internal/policy/DecorView;->mVisibility:I

    if-eq v1, p1, :cond_0

    .line 4413
    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->setVisibility(I)V

    goto :goto_0

    .line 4415
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->addMultiSplitHandler()V

    goto :goto_0

    .line 4418
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->removeMultiSplitHandler()V

    .line 4421
    :goto_0
    iput p1, p0, Lcom/android/internal/policy/DecorView;->mVisibility:I

    .line 4423
    return-void
.end method

.method blacklist setWindow(Lcom/android/internal/policy/PhoneWindow;)V
    .locals 3
    .param p1, "phoneWindow"    # Lcom/android/internal/policy/PhoneWindow;

    .line 3214
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 3215
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3216
    .local v0, "context":Landroid/content/Context;
    instance-of v1, v0, Lcom/android/internal/policy/DecorContext;

    if-eqz v1, :cond_0

    .line 3217
    move-object v1, v0

    check-cast v1, Lcom/android/internal/policy/DecorContext;

    .line 3218
    .local v1, "decorContext":Lcom/android/internal/policy/DecorContext;
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/DecorContext;->setPhoneWindow(Lcom/android/internal/policy/PhoneWindow;)V

    .line 3220
    .end local v1    # "decorContext":Lcom/android/internal/policy/DecorContext;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mPendingWindowBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 3221
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mPendingWindowBackground:Landroid/graphics/drawable/Drawable;

    .line 3222
    .local v1, "background":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mPendingWindowBackground:Landroid/graphics/drawable/Drawable;

    .line 3223
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/DecorView;->setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3226
    .end local v1    # "background":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    if-eqz v1, :cond_2

    .line 3227
    new-instance v1, Lcom/samsung/android/multiwindow/MultiSplitActions;

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-direct {v1, v2}, Lcom/samsung/android/multiwindow/MultiSplitActions;-><init>(Landroid/view/Window;)V

    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mMSActions:Lcom/samsung/android/multiwindow/MultiSplitActions;

    .line 3229
    :cond_2
    return-void
.end method

.method public blacklist setWindowBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 1697
    instance-of v0, p1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_0

    .line 1698
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/DecorView;->mPopOverBackgroundColor:I

    goto :goto_1

    .line 1699
    :cond_0
    instance-of v0, p1, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->getColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1700
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->getColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/DecorView;->mPopOverBackgroundColor:I

    goto :goto_1

    .line 1702
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/util/SemViewUtils;->isLightTheme(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1703
    const v1, 0x10602ba

    goto :goto_0

    .line 1704
    :cond_2
    const v1, 0x10602bb

    :goto_0
    const/4 v2, 0x0

    .line 1702
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/DecorView;->mPopOverBackgroundColor:I

    .line 1706
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setWindowBackground: isPopOver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mIsPopOver:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/policy/DecorView;->mPopOverBackgroundColor:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " d="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DecorView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1708
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    if-nez v0, :cond_3

    .line 1709
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mPendingWindowBackground:Landroid/graphics/drawable/Drawable;

    .line 1710
    return-void

    .line 1712
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mOriginalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_a

    .line 1713
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mOriginalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 1714
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateBackgroundDrawable()V

    .line 1715
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_6

    .line 1716
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 1717
    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->isTranslucent()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->isShowingWallpaper()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    move v0, v1

    .line 1716
    :cond_5
    invoke-static {p1, v0}, Lcom/android/internal/policy/DecorView;->enforceNonTranslucentBackground(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 1719
    :cond_6
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v2, v2, Lcom/android/internal/policy/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v3, v3, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFallbackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 1721
    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow;->isTranslucent()Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow;->isShowingWallpaper()Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_7
    move v0, v1

    .line 1719
    :cond_8
    invoke-static {v2, v3, v0}, Lcom/android/internal/policy/DecorView;->getResizingBackgroundDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 1723
    :goto_2
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 1724
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_3

    .line 1726
    :cond_9
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1728
    :goto_3
    sget-boolean v0, Landroid/view/View;->sBrokenWindowBackground:Z

    if-nez v0, :cond_a

    .line 1729
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->drawableChanged()V

    .line 1732
    :cond_a
    return-void
.end method

.method public blacklist setWindowFrame(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 1740
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 1741
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/DecorView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 1742
    if-eqz p1, :cond_0

    .line 1743
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_0

    .line 1745
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1747
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->drawableChanged()V

    .line 1749
    :cond_1
    return-void
.end method

.method blacklist shouldAnimatePrimaryActionModeView()Z
    .locals 1

    .line 3142
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isLaidOut()Z

    move-result v0

    return v0
.end method

.method public whitelist showContextMenuForChild(Landroid/view/View;)Z
    .locals 1
    .param p1, "originalView"    # Landroid/view/View;

    .line 1546
    const/high16 v0, 0x7fc00000    # Float.NaN

    invoke-direct {p0, p1, v0, v0}, Lcom/android/internal/policy/DecorView;->showContextMenuForChildInternal(Landroid/view/View;FF)Z

    move-result v0

    return v0
.end method

.method public whitelist showContextMenuForChild(Landroid/view/View;FF)Z
    .locals 1
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 1551
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/DecorView;->showContextMenuForChildInternal(Landroid/view/View;FF)Z

    move-result v0

    return v0
.end method

.method public whitelist startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .line 1605
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/DecorView;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public whitelist startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;
    .param p2, "type"    # I

    .line 1610
    invoke-direct {p0, p0, p1, p2}, Lcom/android/internal/policy/DecorView;->startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public whitelist startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;

    .line 1594
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/policy/DecorView;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public whitelist startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;
    .param p3, "type"    # I

    .line 1600
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/DecorView;->startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method blacklist startChanging()V
    .locals 1

    .line 1687
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mChanging:Z

    .line 1688
    return-void
.end method

.method public blacklist superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1120
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public blacklist superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 1089
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 1090
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 1092
    .local v0, "action":I
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_1

    .line 1093
    if-ne v0, v1, :cond_0

    .line 1094
    invoke-virtual {v2}, Landroid/view/ActionMode;->finish()V

    .line 1096
    :cond_0
    return v1

    .line 1100
    .end local v0    # "action":I
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1101
    return v1

    .line 1104
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->dispatchUnhandledKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public blacklist superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 1108
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public blacklist superDispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1112
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public blacklist superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1116
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 4298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DecorView@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 4299
    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/policy/DecorView;->getTitleSuffix(Landroid/view/WindowManager$LayoutParams;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4298
    return-object v0
.end method

.method public blacklist unregisterMultiSplitHandler(Lcom/samsung/android/multiwindow/MultiSplitHandler;)V
    .locals 3
    .param p1, "multiSplitHandler"    # Lcom/samsung/android/multiwindow/MultiSplitHandler;

    .line 5467
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    const-string v1, " decor="

    if-eq v0, p1, :cond_0

    .line 5468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterMultiSplitHandler: An unreleased handler exists. old msh="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " new msh="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->logLifeCycle(Ljava/lang/String;)V

    .line 5472
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    if-nez v0, :cond_1

    .line 5473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unregisterMultiSplitHandler: no exist. decor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->logLifeCycle(Ljava/lang/String;)V

    .line 5474
    return-void

    .line 5477
    :cond_1
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    .line 5479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterMultiSplitHandler: done. msh="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mMultiSplitHandler:Lcom/samsung/android/multiwindow/MultiSplitHandler;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiSplitHandler;->logLifeCycle(Ljava/lang/String;)V

    .line 5480
    return-void
.end method

.method public blacklist updateCaptionState(IZ)V
    .locals 1
    .param p1, "captionState"    # I
    .param p2, "overlay"    # Z

    .line 4977
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mCaptionType:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 4985
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mCompatWindow:Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;

    if-eqz v0, :cond_1

    .line 4986
    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/DecorCaptionCompatWindow;->updateCaptionState(I)V

    goto :goto_1

    .line 4979
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v0, :cond_1

    .line 4980
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/DecorCaptionView;->updateCaptionState(IZ)V

    .line 4981
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->enableCaption(Z)V

    .line 4990
    :cond_1
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method blacklist updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;
    .locals 29
    .param p1, "insets"    # Landroid/view/WindowInsets;
    .param p2, "animate"    # Z

    .line 1879
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    iget-object v0, v11, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v13

    .line 1880
    .local v13, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v0, v13, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getWindowSystemUiVisibility()I

    move-result v1

    or-int v14, v0, v1

    .line 1882
    .local v14, "sysUiVisibility":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v15

    .line 1885
    .local v15, "controller":Landroid/view/WindowInsetsController;
    iget-object v0, v11, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 1886
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v10, 0x1

    const/16 v1, 0x7db

    if-ne v0, v1, :cond_0

    move v0, v10

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move/from16 v16, v0

    .line 1887
    .local v16, "isImeWindow":Z
    iget-object v0, v11, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    const/high16 v17, -0x80000000

    if-eqz v0, :cond_2

    if-eqz v16, :cond_1

    goto :goto_1

    :cond_1
    move-object/from16 v18, v13

    goto/16 :goto_17

    .line 1888
    :cond_2
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->isLaidOut()Z

    move-result v0

    xor-int/2addr v0, v10

    .line 1889
    .local v0, "disallowAnimate":Z
    iget v1, v11, Lcom/android/internal/policy/DecorView;->mLastWindowFlags:I

    iget v2, v13, Landroid/view/WindowManager$LayoutParams;->flags:I

    xor-int/2addr v1, v2

    and-int v1, v1, v17

    if-eqz v1, :cond_3

    move v1, v10

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    or-int/2addr v0, v1

    .line 1891
    iget v1, v13, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v1, v11, Lcom/android/internal/policy/DecorView;->mLastWindowFlags:I

    .line 1893
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v8

    .line 1894
    .local v8, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v8, :cond_4

    .line 1895
    iget-object v1, v8, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v1, v1, Landroid/view/InsetsFlags;->appearance:I

    goto :goto_3

    .line 1896
    :cond_4
    invoke-interface {v15}, Landroid/view/WindowInsetsController;->getSystemBarsAppearance()I

    move-result v1

    :goto_3
    move v7, v1

    .line 1898
    .local v7, "appearance":I
    if-eqz v12, :cond_e

    .line 1899
    iget v1, v13, Landroid/view/WindowManager$LayoutParams;->type:I

    iget v2, v13, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1900
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v3

    .line 1899
    invoke-static {v1, v2, v3}, Landroid/view/InsetsState;->clearsCompatInsets(III)Z

    move-result v1

    .line 1901
    .local v1, "clearsCompatInsets":Z
    nop

    .line 1902
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v2

    .line 1901
    invoke-virtual {v12, v2}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object v2

    .line 1903
    .local v2, "stableBarInsets":Landroid/graphics/Insets;
    if-eqz v1, :cond_5

    .line 1904
    sget-object v3, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    goto :goto_4

    .line 1905
    :cond_5
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v3

    .line 1906
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v4

    or-int/2addr v3, v4

    .line 1905
    invoke-virtual {v12, v3}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/graphics/Insets;->min(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v3

    :goto_4
    nop

    .line 1907
    .local v3, "systemInsets":Landroid/graphics/Insets;
    iget v4, v3, Landroid/graphics/Insets;->top:I

    iput v4, v11, Lcom/android/internal/policy/DecorView;->mLastTopInset:I

    .line 1908
    iget v4, v3, Landroid/graphics/Insets;->bottom:I

    iput v4, v11, Lcom/android/internal/policy/DecorView;->mLastBottomInset:I

    .line 1909
    iget v4, v3, Landroid/graphics/Insets;->right:I

    iput v4, v11, Lcom/android/internal/policy/DecorView;->mLastRightInset:I

    .line 1910
    iget v4, v3, Landroid/graphics/Insets;->left:I

    iput v4, v11, Lcom/android/internal/policy/DecorView;->mLastLeftInset:I

    .line 1912
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v4

    .line 1913
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v5

    or-int/2addr v4, v5

    .line 1912
    invoke-virtual {v12, v4}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v4

    iput-object v4, v11, Lcom/android/internal/policy/DecorView;->mKnoxBadgeInsets:Landroid/graphics/Insets;

    .line 1918
    iget v4, v2, Landroid/graphics/Insets;->top:I

    if-eqz v4, :cond_6

    move v4, v10

    goto :goto_5

    :cond_6
    const/4 v4, 0x0

    .line 1919
    .local v4, "hasTopStableInset":Z
    :goto_5
    iget-boolean v5, v11, Lcom/android/internal/policy/DecorView;->mLastHasTopStableInset:Z

    if-eq v4, v5, :cond_7

    move v5, v10

    goto :goto_6

    :cond_7
    const/4 v5, 0x0

    :goto_6
    or-int/2addr v0, v5

    .line 1920
    iput-boolean v4, v11, Lcom/android/internal/policy/DecorView;->mLastHasTopStableInset:Z

    .line 1922
    iget v5, v2, Landroid/graphics/Insets;->bottom:I

    if-eqz v5, :cond_8

    move v5, v10

    goto :goto_7

    :cond_8
    const/4 v5, 0x0

    .line 1923
    .local v5, "hasBottomStableInset":Z
    :goto_7
    iget-boolean v6, v11, Lcom/android/internal/policy/DecorView;->mLastHasBottomStableInset:Z

    if-eq v5, v6, :cond_9

    move v6, v10

    goto :goto_8

    :cond_9
    const/4 v6, 0x0

    :goto_8
    or-int/2addr v0, v6

    .line 1924
    iput-boolean v5, v11, Lcom/android/internal/policy/DecorView;->mLastHasBottomStableInset:Z

    .line 1926
    iget v6, v2, Landroid/graphics/Insets;->right:I

    if-eqz v6, :cond_a

    move v6, v10

    goto :goto_9

    :cond_a
    const/4 v6, 0x0

    .line 1927
    .local v6, "hasRightStableInset":Z
    :goto_9
    iget-boolean v9, v11, Lcom/android/internal/policy/DecorView;->mLastHasRightStableInset:Z

    if-eq v6, v9, :cond_b

    move v9, v10

    goto :goto_a

    :cond_b
    const/4 v9, 0x0

    :goto_a
    or-int/2addr v0, v9

    .line 1928
    iput-boolean v6, v11, Lcom/android/internal/policy/DecorView;->mLastHasRightStableInset:Z

    .line 1930
    iget v9, v2, Landroid/graphics/Insets;->left:I

    if-eqz v9, :cond_c

    move v9, v10

    goto :goto_b

    :cond_c
    const/4 v9, 0x0

    .line 1931
    .local v9, "hasLeftStableInset":Z
    :goto_b
    iget-boolean v10, v11, Lcom/android/internal/policy/DecorView;->mLastHasLeftStableInset:Z

    if-eq v9, v10, :cond_d

    const/4 v10, 0x1

    goto :goto_c

    :cond_d
    const/4 v10, 0x0

    :goto_c
    or-int/2addr v0, v10

    .line 1932
    iput-boolean v9, v11, Lcom/android/internal/policy/DecorView;->mLastHasLeftStableInset:Z

    .line 1934
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->shouldAlwaysConsumeSystemBars()Z

    move-result v10

    iput-boolean v10, v11, Lcom/android/internal/policy/DecorView;->mLastShouldAlwaysConsumeSystemBars:Z

    .line 1935
    .end local v1    # "clearsCompatInsets":Z
    .end local v2    # "stableBarInsets":Landroid/graphics/Insets;
    .end local v3    # "systemInsets":Landroid/graphics/Insets;
    .end local v4    # "hasTopStableInset":Z
    .end local v5    # "hasBottomStableInset":Z
    .end local v6    # "hasRightStableInset":Z
    .end local v9    # "hasLeftStableInset":Z
    move/from16 v20, v0

    goto :goto_d

    .line 1937
    :cond_e
    const/4 v1, 0x0

    invoke-direct {v11, v1}, Lcom/android/internal/policy/DecorView;->updateDisplayCutoutBackground(Landroid/view/WindowInsets;)V

    move/from16 v20, v0

    .line 1941
    .end local v0    # "disallowAnimate":Z
    .local v20, "disallowAnimate":Z
    :goto_d
    iget v0, v11, Lcom/android/internal/policy/DecorView;->mLastBottomInset:I

    iget v1, v11, Lcom/android/internal/policy/DecorView;->mLastRightInset:I

    invoke-static {v0, v1}, Lcom/android/internal/policy/DecorView;->isNavBarToRightEdge(II)Z

    move-result v21

    .line 1942
    .local v21, "navBarToRightEdge":Z
    iget v0, v11, Lcom/android/internal/policy/DecorView;->mLastBottomInset:I

    iget v1, v11, Lcom/android/internal/policy/DecorView;->mLastLeftInset:I

    invoke-static {v0, v1}, Lcom/android/internal/policy/DecorView;->isNavBarToLeftEdge(II)Z

    move-result v22

    .line 1943
    .local v22, "navBarToLeftEdge":Z
    iget v0, v11, Lcom/android/internal/policy/DecorView;->mLastBottomInset:I

    iget v1, v11, Lcom/android/internal/policy/DecorView;->mLastRightInset:I

    iget v2, v11, Lcom/android/internal/policy/DecorView;->mLastLeftInset:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/policy/DecorView;->getNavBarSize(III)I

    move-result v10

    .line 1944
    .local v10, "navBarSize":I
    iget-object v1, v11, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    invoke-direct {v11, v7}, Lcom/android/internal/policy/DecorView;->calculateNavigationBarColor(I)I

    move-result v2

    iget-object v0, v11, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v3, v0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarDividerColor:I

    if-nez v21, :cond_10

    if-eqz v22, :cond_f

    goto :goto_e

    :cond_f
    const/4 v5, 0x0

    goto :goto_f

    :cond_10
    :goto_e
    const/4 v5, 0x1

    :goto_f
    const/4 v9, 0x0

    if-eqz p2, :cond_11

    if-nez v20, :cond_11

    const/16 v23, 0x1

    goto :goto_10

    :cond_11
    const/16 v23, 0x0

    :goto_10
    iget-boolean v6, v11, Lcom/android/internal/policy/DecorView;->mForceWindowDrawsBarBackgrounds:Z

    move-object/from16 v0, p0

    move v4, v10

    move/from16 v24, v6

    move/from16 v6, v22

    move v12, v7

    .end local v7    # "appearance":I
    .local v12, "appearance":I
    move v7, v9

    move-object/from16 v25, v8

    .end local v8    # "viewRoot":Landroid/view/ViewRootImpl;
    .local v25, "viewRoot":Landroid/view/ViewRootImpl;
    move/from16 v8, v23

    move/from16 v9, v24

    move-object/from16 v18, v13

    move v13, v10

    .end local v10    # "navBarSize":I
    .local v13, "navBarSize":I
    .local v18, "attrs":Landroid/view/WindowManager$LayoutParams;
    move-object v10, v15

    invoke-direct/range {v0 .. v10}, Lcom/android/internal/policy/DecorView;->updateColorViewInt(Lcom/android/internal/policy/DecorView$ColorViewState;IIIZZIZZLandroid/view/WindowInsetsController;)V

    .line 1949
    iget-boolean v10, v11, Lcom/android/internal/policy/DecorView;->mDrawLegacyNavigationBarBackground:Z

    .line 1950
    .local v10, "oldDrawLegacy":Z
    iget-object v0, v11, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-boolean v0, v0, Lcom/android/internal/policy/DecorView$ColorViewState;->visible:Z

    if-eqz v0, :cond_12

    iget-object v0, v11, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 1951
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int v0, v0, v17

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_11

    :cond_12
    const/4 v0, 0x0

    :goto_11
    iput-boolean v0, v11, Lcom/android/internal/policy/DecorView;->mDrawLegacyNavigationBarBackground:Z

    .line 1953
    iget-object v0, v11, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v9, v0, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    .line 1955
    .local v9, "navigationView":Landroid/view/View;
    iget-boolean v0, v11, Lcom/android/internal/policy/DecorView;->mDrawLegacyNavigationBarBackground:Z

    if-ne v10, v0, :cond_14

    if-eqz v9, :cond_15

    .line 1958
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x1

    goto :goto_12

    :cond_13
    const/4 v0, 0x0

    :goto_12
    iget-object v1, v11, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-boolean v1, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->visible:Z

    if-ne v0, v1, :cond_14

    iget-boolean v0, v11, Lcom/android/internal/policy/DecorView;->mDrawLegacyNavigationBarBackground:Z

    if-eqz v0, :cond_15

    .line 1959
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v0

    if-eq v0, v13, :cond_15

    .line 1961
    :cond_14
    iget-object v0, v11, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-boolean v1, v11, Lcom/android/internal/policy/DecorView;->mDrawLegacyNavigationBarBackground:Z

    .line 1962
    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->onDrawLegacyNavigationBarBackgroundChanged(Z)Z

    move-result v0

    iput-boolean v0, v11, Lcom/android/internal/policy/DecorView;->mDrawLegacyNavigationBarBackgroundHandled:Z

    .line 1964
    if-eqz v25, :cond_15

    .line 1965
    invoke-virtual/range {v25 .. v25}, Landroid/view/ViewRootImpl;->requestInvalidateRootRenderNode()V

    .line 1969
    :cond_15
    if-eqz v21, :cond_16

    iget-object v0, v11, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-boolean v0, v0, Lcom/android/internal/policy/DecorView$ColorViewState;->present:Z

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_13

    :cond_16
    const/4 v0, 0x0

    :goto_13
    move/from16 v23, v0

    .line 1971
    .local v23, "statusBarNeedsRightInset":Z
    if-eqz v22, :cond_17

    iget-object v0, v11, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-boolean v0, v0, Lcom/android/internal/policy/DecorView$ColorViewState;->present:Z

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    goto :goto_14

    :cond_17
    const/4 v0, 0x0

    :goto_14
    move/from16 v24, v0

    .line 1973
    .local v24, "statusBarNeedsLeftInset":Z
    if-eqz v23, :cond_18

    iget v0, v11, Lcom/android/internal/policy/DecorView;->mLastRightInset:I

    move v7, v0

    goto :goto_15

    .line 1974
    :cond_18
    if-eqz v24, :cond_19

    iget v0, v11, Lcom/android/internal/policy/DecorView;->mLastLeftInset:I

    move v7, v0

    goto :goto_15

    :cond_19
    const/4 v7, 0x0

    :goto_15
    nop

    .line 1975
    .local v7, "statusBarSideInset":I
    invoke-direct {v11, v12}, Lcom/android/internal/policy/DecorView;->calculateStatusBarColor(I)I

    move-result v26

    .line 1976
    .local v26, "statusBarColor":I
    iget-object v1, v11, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    const/4 v3, 0x0

    iget v4, v11, Lcom/android/internal/policy/DecorView;->mLastTopInset:I

    const/4 v5, 0x0

    if-eqz p2, :cond_1a

    if-nez v20, :cond_1a

    const/4 v8, 0x1

    goto :goto_16

    :cond_1a
    const/4 v8, 0x0

    :goto_16
    iget-boolean v6, v11, Lcom/android/internal/policy/DecorView;->mForceWindowDrawsBarBackgrounds:Z

    move-object/from16 v0, p0

    move/from16 v2, v26

    move/from16 v27, v6

    move/from16 v6, v24

    move-object/from16 v28, v9

    .end local v9    # "navigationView":Landroid/view/View;
    .local v28, "navigationView":Landroid/view/View;
    move/from16 v9, v27

    move/from16 v27, v10

    .end local v10    # "oldDrawLegacy":Z
    .local v27, "oldDrawLegacy":Z
    move-object v10, v15

    invoke-direct/range {v0 .. v10}, Lcom/android/internal/policy/DecorView;->updateColorViewInt(Lcom/android/internal/policy/DecorView$ColorViewState;IIIZZIZZLandroid/view/WindowInsetsController;)V

    .line 1981
    iget-boolean v0, v11, Lcom/android/internal/policy/DecorView;->mHasCaption:Z

    if-eqz v0, :cond_1b

    iget-object v0, v11, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/android/internal/widget/DecorCaptionView;->getCaption()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 1985
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->updateDecorCaptionShade()V

    .line 1999
    .end local v7    # "statusBarSideInset":I
    .end local v12    # "appearance":I
    .end local v13    # "navBarSize":I
    .end local v20    # "disallowAnimate":Z
    .end local v21    # "navBarToRightEdge":Z
    .end local v22    # "navBarToLeftEdge":Z
    .end local v23    # "statusBarNeedsRightInset":Z
    .end local v24    # "statusBarNeedsLeftInset":Z
    .end local v25    # "viewRoot":Landroid/view/ViewRootImpl;
    .end local v26    # "statusBarColor":I
    .end local v27    # "oldDrawLegacy":Z
    .end local v28    # "navigationView":Landroid/view/View;
    :cond_1b
    :goto_17
    and-int/lit8 v0, v14, 0x2

    if-nez v0, :cond_1e

    if-eqz v15, :cond_1c

    .line 2000
    const/4 v0, 0x1

    invoke-interface {v15, v0}, Landroid/view/WindowInsetsController;->isRequestedVisible(I)Z

    move-result v1

    if-nez v1, :cond_1d

    goto :goto_18

    .line 1999
    :cond_1c
    const/4 v0, 0x1

    .line 2000
    :cond_1d
    const/4 v10, 0x0

    goto :goto_19

    .line 1999
    :cond_1e
    const/4 v0, 0x1

    .line 2000
    :goto_18
    move v10, v0

    :goto_19
    move v1, v10

    .line 2001
    .local v1, "hideNavigation":Z
    iget-object v2, v11, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-boolean v2, v2, Lcom/android/internal/policy/PhoneWindow;->mDecorFitsSystemWindows:Z

    .line 2002
    .local v2, "decorFitsSystemWindows":Z
    iget-boolean v3, v11, Lcom/android/internal/policy/DecorView;->mForceWindowDrawsBarBackgrounds:Z

    if-eqz v3, :cond_1f

    move-object/from16 v3, v18

    .end local v18    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .local v3, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int v4, v4, v17

    if-nez v4, :cond_20

    and-int/lit16 v4, v14, 0x200

    if-nez v4, :cond_20

    if-eqz v2, :cond_20

    if-eqz v1, :cond_21

    goto :goto_1a

    .end local v3    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v18    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_1f
    move-object/from16 v3, v18

    .end local v18    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v3    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_20
    :goto_1a
    iget-boolean v4, v11, Lcom/android/internal/policy/DecorView;->mLastShouldAlwaysConsumeSystemBars:Z

    if-eqz v4, :cond_22

    if-eqz v1, :cond_22

    :cond_21
    move v10, v0

    goto :goto_1b

    :cond_22
    const/4 v10, 0x0

    :goto_1b
    move v4, v10

    .line 2009
    .local v4, "forceConsumingNavBar":Z
    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int v5, v5, v17

    if-eqz v5, :cond_23

    and-int/lit16 v5, v14, 0x200

    if-nez v5, :cond_23

    if-eqz v2, :cond_23

    if-eqz v1, :cond_24

    :cond_23
    if-eqz v4, :cond_25

    :cond_24
    move v10, v0

    goto :goto_1c

    :cond_25
    const/4 v10, 0x0

    :goto_1c
    move v5, v10

    .line 2020
    .local v5, "consumingNavBar":Z
    and-int/lit8 v6, v14, 0x4

    if-nez v6, :cond_28

    iget v6, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v6, v6, 0x400

    if-nez v6, :cond_28

    if-eqz v15, :cond_26

    .line 2022
    const/4 v6, 0x0

    invoke-interface {v15, v6}, Landroid/view/WindowInsetsController;->isRequestedVisible(I)Z

    move-result v7

    if-nez v7, :cond_27

    goto :goto_1d

    .line 2020
    :cond_26
    const/4 v6, 0x0

    .line 2022
    :cond_27
    move v10, v6

    goto :goto_1e

    .line 2020
    :cond_28
    const/4 v6, 0x0

    .line 2022
    :goto_1d
    move v10, v0

    :goto_1e
    move v7, v10

    .line 2023
    .local v7, "fullscreen":Z
    and-int/lit16 v8, v14, 0x400

    if-nez v8, :cond_29

    if-eqz v2, :cond_29

    iget v8, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v8, v8, 0x100

    if-nez v8, :cond_29

    iget v8, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v9, 0x10000

    and-int/2addr v8, v9

    if-nez v8, :cond_29

    iget-boolean v8, v11, Lcom/android/internal/policy/DecorView;->mForceWindowDrawsBarBackgrounds:Z

    if-eqz v8, :cond_29

    iget v8, v11, Lcom/android/internal/policy/DecorView;->mLastTopInset:I

    if-nez v8, :cond_2a

    :cond_29
    iget-boolean v8, v11, Lcom/android/internal/policy/DecorView;->mLastShouldAlwaysConsumeSystemBars:Z

    if-eqz v8, :cond_2b

    if-eqz v7, :cond_2b

    :cond_2a
    move v10, v0

    goto :goto_1f

    :cond_2b
    move v10, v6

    :goto_1f
    move v0, v10

    .line 2031
    .local v0, "consumingStatusBar":Z
    if-eqz v0, :cond_2c

    iget v9, v11, Lcom/android/internal/policy/DecorView;->mLastTopInset:I

    goto :goto_20

    :cond_2c
    move v9, v6

    :goto_20
    move v8, v9

    .line 2032
    .local v8, "consumedTop":I
    if-eqz v5, :cond_2d

    iget v9, v11, Lcom/android/internal/policy/DecorView;->mLastRightInset:I

    goto :goto_21

    :cond_2d
    move v9, v6

    .line 2033
    .local v9, "consumedRight":I
    :goto_21
    if-eqz v5, :cond_2e

    iget v10, v11, Lcom/android/internal/policy/DecorView;->mLastBottomInset:I

    goto :goto_22

    :cond_2e
    move v10, v6

    .line 2034
    .local v10, "consumedBottom":I
    :goto_22
    if-eqz v5, :cond_2f

    iget v12, v11, Lcom/android/internal/policy/DecorView;->mLastLeftInset:I

    goto :goto_23

    :cond_2f
    move v12, v6

    .line 2036
    .local v12, "consumedLeft":I
    :goto_23
    iget-object v13, v11, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    if-eqz v13, :cond_34

    .line 2037
    invoke-virtual {v13}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    instance-of v13, v13, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v13, :cond_33

    .line 2038
    iget-object v13, v11, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2039
    .local v13, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v6, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ne v6, v8, :cond_31

    iget v6, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-ne v6, v9, :cond_31

    iget v6, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-ne v6, v10, :cond_31

    iget v6, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-eq v6, v12, :cond_30

    goto :goto_24

    :cond_30
    move-object/from16 v6, p1

    goto :goto_25

    .line 2041
    :cond_31
    :goto_24
    iput v8, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2042
    iput v9, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 2043
    iput v10, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 2044
    iput v12, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 2045
    iget-object v6, v11, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v6, v13}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2047
    move-object/from16 v6, p1

    if-nez v6, :cond_32

    .line 2050
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->requestApplyInsets()V

    .line 2053
    :cond_32
    :goto_25
    if-eqz v6, :cond_35

    .line 2054
    invoke-virtual {v6, v12, v8, v9, v10}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object v6

    .end local p1    # "insets":Landroid/view/WindowInsets;
    .local v6, "insets":Landroid/view/WindowInsets;
    goto :goto_26

    .line 2037
    .end local v6    # "insets":Landroid/view/WindowInsets;
    .end local v13    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local p1    # "insets":Landroid/view/WindowInsets;
    :cond_33
    move-object/from16 v6, p1

    goto :goto_26

    .line 2036
    :cond_34
    move-object/from16 v6, p1

    .line 2058
    .end local p1    # "insets":Landroid/view/WindowInsets;
    .restart local v6    # "insets":Landroid/view/WindowInsets;
    :cond_35
    :goto_26
    if-eqz v4, :cond_36

    if-nez v1, :cond_36

    iget-boolean v13, v11, Lcom/android/internal/policy/DecorView;->mDrawLegacyNavigationBarBackgroundHandled:Z

    if-nez v13, :cond_36

    .line 2059
    iget v13, v11, Lcom/android/internal/policy/DecorView;->mLastLeftInset:I

    move/from16 v17, v0

    .end local v0    # "consumingStatusBar":Z
    .local v17, "consumingStatusBar":Z
    iget v0, v11, Lcom/android/internal/policy/DecorView;->mLastRightInset:I

    move/from16 v18, v1

    .end local v1    # "hideNavigation":Z
    .local v18, "hideNavigation":Z
    iget v1, v11, Lcom/android/internal/policy/DecorView;->mLastBottomInset:I

    move/from16 v19, v2

    const/4 v2, 0x0

    .end local v2    # "decorFitsSystemWindows":Z
    .local v19, "decorFitsSystemWindows":Z
    invoke-static {v13, v2, v0, v1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    iput-object v0, v11, Lcom/android/internal/policy/DecorView;->mBackgroundInsets:Landroid/graphics/Insets;

    goto :goto_27

    .line 2058
    .end local v17    # "consumingStatusBar":Z
    .end local v18    # "hideNavigation":Z
    .end local v19    # "decorFitsSystemWindows":Z
    .restart local v0    # "consumingStatusBar":Z
    .restart local v1    # "hideNavigation":Z
    .restart local v2    # "decorFitsSystemWindows":Z
    :cond_36
    move/from16 v17, v0

    move/from16 v18, v1

    move/from16 v19, v2

    .line 2061
    .end local v0    # "consumingStatusBar":Z
    .end local v1    # "hideNavigation":Z
    .end local v2    # "decorFitsSystemWindows":Z
    .restart local v17    # "consumingStatusBar":Z
    .restart local v18    # "hideNavigation":Z
    .restart local v19    # "decorFitsSystemWindows":Z
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v0, v11, Lcom/android/internal/policy/DecorView;->mBackgroundInsets:Landroid/graphics/Insets;

    .line 2063
    :goto_27
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->updateBackgroundDrawable()V

    .line 2065
    return-object v6
.end method

.method blacklist updateDecorCaptionShade()V
    .locals 1

    .line 3786
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v0, :cond_0

    .line 3787
    invoke-direct {p0, v0}, Lcom/android/internal/policy/DecorView;->setDecorCaptionShade(Lcom/android/internal/widget/DecorCaptionView;)V

    .line 3789
    :cond_0
    return-void
.end method

.method blacklist updateLogTag(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .line 4259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DecorView["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/policy/DecorView;->getTitleSuffix(Landroid/view/WindowManager$LayoutParams;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mLogTag:Ljava/lang/String;

    .line 4260
    return-void
.end method

.method public blacklist updatePictureInPictureOutlineProvider(Z)V
    .locals 2
    .param p1, "isInPictureInPictureMode"    # Z

    .line 2534
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsInPictureInPictureMode:Z

    if-ne v0, p1, :cond_0

    .line 2535
    return-void

    .line 2538
    :cond_0
    if-eqz p1, :cond_2

    .line 2539
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 2540
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getWindowControllerCallback()Landroid/view/Window$WindowControllerCallback;

    move-result-object v0

    .line 2541
    .local v0, "callback":Landroid/view/Window$WindowControllerCallback;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/view/Window$WindowControllerCallback;->isTaskRoot()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2544
    sget-object v1, Lcom/android/internal/policy/DecorView;->PIP_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 2546
    .end local v0    # "callback":Landroid/view/Window$WindowControllerCallback;
    :cond_1
    goto :goto_0

    .line 2548
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mLastOutlineProvider:Landroid/view/ViewOutlineProvider;

    if-eq v0, v1, :cond_3

    .line 2549
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/DecorView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 2552
    :cond_3
    :goto_0
    iput-boolean p1, p0, Lcom/android/internal/policy/DecorView;->mIsInPictureInPictureMode:Z

    .line 2553
    return-void
.end method

.method public blacklist willYouTakeTheInputQueue()Landroid/view/InputQueue$Callback;
    .locals 1

    .line 2957
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mTakeInputQueueCallback:Landroid/view/InputQueue$Callback;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public blacklist willYouTakeTheSurface()Landroid/view/SurfaceHolder$Callback2;
    .locals 1

    .line 2953
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mTakeSurfaceCallback:Landroid/view/SurfaceHolder$Callback2;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
