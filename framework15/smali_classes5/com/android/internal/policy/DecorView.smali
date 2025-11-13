.class public Lcom/android/internal/policy/DecorView;
.super Landroid/widget/FrameLayout;
.source "DecorView.java"

# interfaces
.implements Lcom/android/internal/view/RootViewSurfaceTaker;
.implements Landroid/view/WindowCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/DecorView$ColorViewState;,
        Lcom/android/internal/policy/DecorView$ColorViewAttributes;,
        Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG_KNOX:Z = false

.field private static final blacklist DEBUG_KNOX_TAG:Ljava/lang/String; = "DecorView_KNOX"

.field private static final blacklist DEBUG_MEASURE:Z = false

.field public static final blacklist DECOR_SHADOW_FOCUSED_HEIGHT_IN_DIP:I = 0x14

.field public static final blacklist DECOR_SHADOW_UNFOCUSED_HEIGHT_IN_DIP:I = 0x5

.field private static final blacklist FRAME_COLOR_POPOVER_DARK:I = 0x66999999

.field private static final blacklist FRAME_COLOR_POPOVER_LIGHT:I = -0x333334

.field public static final blacklist NAVIGATION_BAR_COLOR_VIEW_ATTRIBUTES:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

.field private static final blacklist PIP_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

.field private static final blacklist POP_OVER_ANIM_DELAY_TIME:I = 0x64

.field private static final blacklist POP_OVER_BACKGROUND_ANIM_DURATION:I = 0xc8

.field private static final blacklist POP_OVER_CONTENTS_ANIM_DURATION:I = 0x64

.field private static final blacklist POP_OVER_CORNER_RADIUS:F = 26.0f

.field private static final blacklist POP_OVER_ELEVATION_IN_DIP:I = 0x20

.field private static final blacklist SCRIM_ALPHA:I = -0x34000000

.field private static final blacklist SCRIM_LIGHT:I = -0x19000001

.field private static final blacklist SEM_ROUNDED_CORNER_BOTTOM:I = 0xc

.field private static final blacklist SEM_ROUNDED_CORNER_LEFT:I = 0x5

.field private static final blacklist SEM_ROUNDED_CORNER_RIGHT:I = 0xa

.field private static final blacklist SEM_ROUNDED_CORNER_TOP:I = 0x3

.field public static final blacklist STATUS_BAR_COLOR_VIEW_ATTRIBUTES:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

.field private static final blacklist STROKE_WIDTH_POPOVER_PX:F = 2.0f

.field private static final blacklist SWEEP_OPEN_MENU:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "DecorView"

.field private static blacklist sKnoxBadgeRightCutout:I


# instance fields
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

.field private blacklist mBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

.field private final blacklist mBackgroundBlurOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private blacklist mBackgroundBlurRadius:I

.field private final blacklist mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

.field private blacklist mBackgroundInsets:Landroid/graphics/Insets;

.field private final blacklist mBackgroundPadding:Landroid/graphics/Rect;

.field private final blacklist mBarEnterExitDuration:I

.field private blacklist mCalledDisplayCutoutBackgroundColor:Z

.field private blacklist mCaptionBarBackgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

.field private blacklist mChanging:Z

.field blacklist mContentRoot:Landroid/view/ViewGroup;

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

.field blacklist mDefaultOpacity:I

.field private blacklist mDensityForKnoxBadge:I

.field private blacklist mDensityRatio:F

.field private blacklist mDeviceRoundedCornerBottomRadius:I

.field private blacklist mDeviceRoundedCornerTopRadius:I

.field private blacklist mDisplayCutoutBackgroundColor:I

.field private blacklist mDisplayCutoutBackgroundView:Landroid/view/View;

.field private blacklist mDisplayRotationForRoundedCorner:I

.field private blacklist mDownY:I

.field private blacklist mDrawLegacyNavigationBarBackground:Z

.field private blacklist mDrawLegacyNavigationBarBackgroundHandled:Z

.field private final blacklist mDrawingBounds:Landroid/graphics/Rect;

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

.field private blacklist mFreeformOutlineColor:I

.field private blacklist mGestureHintEnabled:Z

.field private blacklist mGestureNavBarEnabled:Z

.field private blacklist mHasDisplayCutout:Z

.field private blacklist mHasWindowFocusInTask:Z

.field private final blacklist mHideInterpolator:Landroid/view/animation/Interpolator;

.field private blacklist mIsDexEnabled:Z

.field private blacklist mIsFullViewShown:Z

.field private blacklist mIsInPictureInPictureMode:Z

.field private blacklist mIsKeyboardShown:Z

.field private blacklist mIsKnoxActivity:Z

.field private blacklist mIsPopOver:Z

.field private blacklist mIsPopOverWithoutOutlineEffect:Z

.field private blacklist mIsShowNavigationBar:Z

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

.field private blacklist mLastBackgroundInsets:Landroid/graphics/Insets;

.field private blacklist mLastBackgroundResource:I

.field private greylist mLastBottomInset:I

.field private blacklist mLastCaptionBarBackgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

.field private blacklist mLastCaptionHeight:I

.field private blacklist mLastCaptionType:I

.field private blacklist mLastDisplayDeviceType:I

.field private blacklist mLastDockingState:I

.field private blacklist mLastDrawLegacyNavigationBarBackground:Z

.field private blacklist mLastForceConsumingOpaqueCaptionBar:Z

.field private blacklist mLastForceConsumingTypes:I

.field private blacklist mLastHasBottomStableInset:Z

.field private blacklist mLastHasLeftStableInset:Z

.field private blacklist mLastHasRightStableInset:Z

.field private blacklist mLastHasTopStableInset:Z

.field private greylist mLastLeftInset:I

.field private blacklist mLastOriginalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private blacklist mLastOutlineProvider:Landroid/view/ViewOutlineProvider;

.field private greylist mLastRightInset:I

.field private blacklist mLastSmallestScreenWidthDp:I

.field private blacklist mLastSuppressScrimTypes:I

.field private blacklist mLastTopInset:I

.field private blacklist mLastWindowFlags:I

.field private final blacklist mLegacyNavigationBarBackgroundPaint:Landroid/graphics/Paint;

.field blacklist mLogTag:Ljava/lang/String;

.field private blacklist mMenuBackground:Landroid/graphics/drawable/Drawable;

.field private blacklist mMultiWindowRoundedCornerRadius:I

.field private final blacklist mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

.field private blacklist mOriginalBackgroundBlurRadius:I

.field private blacklist mOriginalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private final blacklist mOverrideRoundedCornerBounds:Landroid/graphics/Rect;

.field private blacklist mPackageManagerForKnoxBadge:Landroid/content/pm/PackageManager;

.field private blacklist mPendingInsetsController:Landroid/view/PendingInsetsController;

.field private blacklist mPendingWindowBackground:Landroid/graphics/drawable/Drawable;

.field private blacklist mPinnedHeaderAnimator:Landroid/animation/ValueAnimator;

.field private blacklist mPopOverBackgroundAlpha:F

.field private blacklist mPopOverBackgroundColor:I

.field private final blacklist mPopOverClipOutPath:Landroid/graphics/Path;

.field private blacklist mPopOverContentAlpha:F

.field private final blacklist mPopOverFramePaint:Landroid/graphics/Paint;

.field private final blacklist mPopOverPaint:Landroid/graphics/Paint;

.field private blacklist mPreventPopOverElevation:Z

.field blacklist mPrimaryActionMode:Landroid/view/ActionMode;

.field private blacklist mPrimaryActionModePopup:Landroid/widget/PopupWindow;

.field private blacklist mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

.field private blacklist mReverseKnoxBadge:Landroid/graphics/drawable/Drawable;

.field private blacklist mRootScrollY:I

.field private blacklist mRotationForRoundedCorner:I

.field private blacklist mRoundedCornerMode:I

.field private blacklist mRoundedCornerRadius:I

.field private blacklist mRoundedCornerRadiusForLetterBox:I

.field private final blacklist mSemiTransparentBarColor:I

.field private final blacklist mShowInterpolator:Landroid/view/animation/Interpolator;

.field private blacklist mShowPopOver:Z

.field private blacklist mShowPrimaryActionModePopup:Ljava/lang/Runnable;

.field private final blacklist mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

.field private blacklist mStatusGuard:Landroid/view/View;

.field private blacklist mStayFocus:Z

.field private blacklist mTempRect:Landroid/graphics/Rect;

.field private final blacklist mTmpColorViewBounds:Landroid/graphics/Rect;

.field private final blacklist mTmpRect:Landroid/graphics/Rect;

.field private blacklist mUserId:I

.field private blacklist mWatchingForMenu:Z

.field private final blacklist mWearGestureInterceptionDetector:Lcom/android/internal/policy/WearGestureInterceptionDetector;

.field private greylist mWindow:Lcom/android/internal/policy/PhoneWindow;

.field private blacklist mWindowResizeCallbacksAdded:Z

.field private blacklist mWindowingMode:I

.field private blacklist mWm:Landroid/view/WindowManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$LoPiQOG4_jtsVdpw9AAOANy_6Wg(Lcom/android/internal/policy/DecorView;Landroid/view/ViewGroup$MarginLayoutParams;IIILandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/policy/DecorView;->lambda$updateColorViews$1(Landroid/view/ViewGroup$MarginLayoutParams;IIILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$RRK-4V57ho8T5cuxQT40T3bSQwU(Lcom/android/internal/policy/DecorView;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->lambda$setBackgroundBlurRadius$2(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Z8KGxEYs87tmUmx9r045xREWzEU(Lcom/android/internal/policy/DecorView;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->lambda$new$0()Z

    move-result p0

    return p0
.end method

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

.method static bridge synthetic blacklist -$$Nest$fgetmIsDexEnabled(Lcom/android/internal/policy/DecorView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/policy/DecorView;->mIsDexEnabled:Z

    return p0
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

.method static bridge synthetic blacklist -$$Nest$fputmDensityRatio(Lcom/android/internal/policy/DecorView;F)V
    .locals 0

    iput p1, p0, Lcom/android/internal/policy/DecorView;->mDensityRatio:F

    return-void
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

.method static bridge synthetic blacklist -$$Nest$mdpToPixel(Lcom/android/internal/policy/DecorView;F)F
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->dpToPixel(F)F

    move-result p0

    return p0
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

    new-instance v9, Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v7

    const/4 v8, 0x0

    const/high16 v1, 0x4000000

    const/16 v2, 0x30

    const/4 v3, 0x3

    const/4 v4, 0x5

    const-string v5, "android:status:background"

    const v6, 0x102002f

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;-><init>(IIIILjava/lang/String;IILcom/android/internal/policy/DecorView$ColorViewAttributes-IA;)V

    sput-object v9, Lcom/android/internal/policy/DecorView;->STATUS_BAR_COLOR_VIEW_ATTRIBUTES:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    new-instance v0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v17

    const/16 v18, 0x0

    const/high16 v11, 0x8000000

    const/16 v12, 0x50

    const/4 v13, 0x5

    const/4 v14, 0x3

    const-string v15, "android:navigation:background"

    const v16, 0x1020030

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;-><init>(IIIILjava/lang/String;IILcom/android/internal/policy/DecorView$ColorViewAttributes-IA;)V

    sput-object v0, Lcom/android/internal/policy/DecorView;->NAVIGATION_BAR_COLOR_VIEW_ATTRIBUTES:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    new-instance v0, Lcom/android/internal/policy/DecorView$1;

    invoke-direct {v0}, Lcom/android/internal/policy/DecorView$1;-><init>()V

    sput-object v0, Lcom/android/internal/policy/DecorView;->PIP_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;ILcom/android/internal/policy/PhoneWindow;Landroid/view/WindowManager$LayoutParams;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    const-string v0, "android"

    const-string/jumbo v4, "string"

    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x0

    iput v5, v1, Lcom/android/internal/policy/DecorView;->mDensityForKnoxBadge:I

    const/4 v6, 0x0

    iput-object v6, v1, Lcom/android/internal/policy/DecorView;->mKnoxBadge:Landroid/graphics/drawable/Drawable;

    iput-object v6, v1, Lcom/android/internal/policy/DecorView;->mReverseKnoxBadge:Landroid/graphics/drawable/Drawable;

    const/high16 v7, 0x3f800000    # 1.0f

    iput v7, v1, Lcom/android/internal/policy/DecorView;->mDensityRatio:F

    iput-object v6, v1, Lcom/android/internal/policy/DecorView;->mPackageManagerForKnoxBadge:Landroid/content/pm/PackageManager;

    iput-object v6, v1, Lcom/android/internal/policy/DecorView;->mKnoxBadgeView:Landroid/view/View;

    iput-object v6, v1, Lcom/android/internal/policy/DecorView;->mKnoxBadgeViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    iput-object v6, v1, Lcom/android/internal/policy/DecorView;->mWm:Landroid/view/WindowManager;

    iput-object v6, v1, Lcom/android/internal/policy/DecorView;->mKnoxBadgeInsets:Landroid/graphics/Insets;

    iput v5, v1, Lcom/android/internal/policy/DecorView;->mLastDockingState:I

    iput-boolean v5, v1, Lcom/android/internal/policy/DecorView;->mAllowUpdateElevation:Z

    iput-boolean v5, v1, Lcom/android/internal/policy/DecorView;->mElevationAdjustedForStack:Z

    const/4 v8, -0x1

    iput v8, v1, Lcom/android/internal/policy/DecorView;->mDefaultOpacity:I

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, v1, Lcom/android/internal/policy/DecorView;->mDrawingBounds:Landroid/graphics/Rect;

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, v1, Lcom/android/internal/policy/DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, v1, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, v1, Lcom/android/internal/policy/DecorView;->mFrameOffsets:Landroid/graphics/Rect;

    new-instance v9, Lcom/android/internal/policy/DecorView$ColorViewState;

    sget-object v10, Lcom/android/internal/policy/DecorView;->STATUS_BAR_COLOR_VIEW_ATTRIBUTES:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    invoke-direct {v9, v10}, Lcom/android/internal/policy/DecorView$ColorViewState;-><init>(Lcom/android/internal/policy/DecorView$ColorViewAttributes;)V

    iput-object v9, v1, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    new-instance v9, Lcom/android/internal/policy/DecorView$ColorViewState;

    sget-object v10, Lcom/android/internal/policy/DecorView;->NAVIGATION_BAR_COLOR_VIEW_ATTRIBUTES:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    invoke-direct {v9, v10}, Lcom/android/internal/policy/DecorView$ColorViewState;-><init>(Lcom/android/internal/policy/DecorView$ColorViewAttributes;)V

    iput-object v9, v1, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    new-instance v9, Lcom/android/internal/widget/BackgroundFallback;

    invoke-direct {v9}, Lcom/android/internal/widget/BackgroundFallback;-><init>()V

    iput-object v9, v1, Lcom/android/internal/policy/DecorView;->mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

    iput v5, v1, Lcom/android/internal/policy/DecorView;->mLastTopInset:I

    iput v5, v1, Lcom/android/internal/policy/DecorView;->mLastBottomInset:I

    iput v5, v1, Lcom/android/internal/policy/DecorView;->mLastRightInset:I

    iput v5, v1, Lcom/android/internal/policy/DecorView;->mLastLeftInset:I

    iput-boolean v5, v1, Lcom/android/internal/policy/DecorView;->mLastHasTopStableInset:Z

    iput-boolean v5, v1, Lcom/android/internal/policy/DecorView;->mLastHasBottomStableInset:Z

    iput-boolean v5, v1, Lcom/android/internal/policy/DecorView;->mLastHasRightStableInset:Z

    iput-boolean v5, v1, Lcom/android/internal/policy/DecorView;->mLastHasLeftStableInset:Z

    iput v5, v1, Lcom/android/internal/policy/DecorView;->mLastWindowFlags:I

    iput v5, v1, Lcom/android/internal/policy/DecorView;->mLastForceConsumingTypes:I

    iput-boolean v5, v1, Lcom/android/internal/policy/DecorView;->mLastForceConsumingOpaqueCaptionBar:Z

    iput v5, v1, Lcom/android/internal/policy/DecorView;->mLastSuppressScrimTypes:I

    iput v5, v1, Lcom/android/internal/policy/DecorView;->mRootScrollY:I

    iput-boolean v5, v1, Lcom/android/internal/policy/DecorView;->mWindowResizeCallbacksAdded:Z

    const-string v9, "DecorView"

    iput-object v9, v1, Lcom/android/internal/policy/DecorView;->mLogTag:Ljava/lang/String;

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, v1, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    iput-boolean v5, v1, Lcom/android/internal/policy/DecorView;->mApplyFloatingVerticalInsets:Z

    iput-boolean v5, v1, Lcom/android/internal/policy/DecorView;->mApplyFloatingHorizontalInsets:Z

    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    iput-object v10, v1, Lcom/android/internal/policy/DecorView;->mLegacyNavigationBarBackgroundPaint:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v10, v1, Lcom/android/internal/policy/DecorView;->mBackgroundInsets:Landroid/graphics/Insets;

    sget-object v10, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v10, v1, Lcom/android/internal/policy/DecorView;->mLastBackgroundInsets:Landroid/graphics/Insets;

    new-instance v10, Landroid/view/PendingInsetsController;

    invoke-direct {v10}, Landroid/view/PendingInsetsController;-><init>()V

    iput-object v10, v1, Lcom/android/internal/policy/DecorView;->mPendingInsetsController:Landroid/view/PendingInsetsController;

    iput v5, v1, Lcom/android/internal/policy/DecorView;->mOriginalBackgroundBlurRadius:I

    iput v5, v1, Lcom/android/internal/policy/DecorView;->mBackgroundBlurRadius:I

    new-instance v10, Lcom/android/internal/policy/DecorView$$ExternalSyntheticLambda1;

    invoke-direct {v10, v1}, Lcom/android/internal/policy/DecorView$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/policy/DecorView;)V

    iput-object v10, v1, Lcom/android/internal/policy/DecorView;->mBackgroundBlurOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    iput v5, v1, Lcom/android/internal/policy/DecorView;->mWindowingMode:I

    iput-boolean v5, v1, Lcom/android/internal/policy/DecorView;->mIsDexEnabled:Z

    new-instance v10, Lcom/android/internal/policy/DecorView$2;

    invoke-direct {v10, v1}, Lcom/android/internal/policy/DecorView$2;-><init>(Lcom/android/internal/policy/DecorView;)V

    iput-object v10, v1, Lcom/android/internal/policy/DecorView;->POP_OVER_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

    new-instance v10, Lcom/android/internal/policy/DecorView$3;

    const-string v11, "backgroundAlpha"

    invoke-direct {v10, v1, v11}, Lcom/android/internal/policy/DecorView$3;-><init>(Lcom/android/internal/policy/DecorView;Ljava/lang/String;)V

    iput-object v10, v1, Lcom/android/internal/policy/DecorView;->POP_OVER_BACKGROUND_ALPHA:Landroid/util/FloatProperty;

    new-instance v10, Lcom/android/internal/policy/DecorView$4;

    const-string v11, "contentAlpha"

    invoke-direct {v10, v1, v11}, Lcom/android/internal/policy/DecorView$4;-><init>(Lcom/android/internal/policy/DecorView;Ljava/lang/String;)V

    iput-object v10, v1, Lcom/android/internal/policy/DecorView;->POP_OVER_CONTENT_ALPHA:Landroid/util/FloatProperty;

    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    iput-object v10, v1, Lcom/android/internal/policy/DecorView;->mPopOverPaint:Landroid/graphics/Paint;

    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    iput-object v10, v1, Lcom/android/internal/policy/DecorView;->mPopOverFramePaint:Landroid/graphics/Paint;

    new-instance v10, Landroid/graphics/Path;

    invoke-direct {v10}, Landroid/graphics/Path;-><init>()V

    iput-object v10, v1, Lcom/android/internal/policy/DecorView;->mPopOverClipOutPath:Landroid/graphics/Path;

    iput-boolean v5, v1, Lcom/android/internal/policy/DecorView;->mIsPopOverWithoutOutlineEffect:Z

    iput-boolean v5, v1, Lcom/android/internal/policy/DecorView;->mPreventPopOverElevation:Z

    const/4 v10, 0x1

    iput-boolean v10, v1, Lcom/android/internal/policy/DecorView;->mShowPopOver:Z

    iput v8, v1, Lcom/android/internal/policy/DecorView;->mPopOverBackgroundColor:I

    iput v7, v1, Lcom/android/internal/policy/DecorView;->mPopOverBackgroundAlpha:F

    iput v7, v1, Lcom/android/internal/policy/DecorView;->mPopOverContentAlpha:F

    iput-boolean v5, v1, Lcom/android/internal/policy/DecorView;->mHasDisplayCutout:Z

    iput-boolean v5, v1, Lcom/android/internal/policy/DecorView;->mForceRoundedCorner:Z

    iput v5, v1, Lcom/android/internal/policy/DecorView;->mRoundedCornerMode:I

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v1, Lcom/android/internal/policy/DecorView;->mOverrideRoundedCornerBounds:Landroid/graphics/Rect;

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v1, Lcom/android/internal/policy/DecorView;->mTmpColorViewBounds:Landroid/graphics/Rect;

    iput v8, v1, Lcom/android/internal/policy/DecorView;->mDeviceRoundedCornerTopRadius:I

    iput v8, v1, Lcom/android/internal/policy/DecorView;->mDeviceRoundedCornerBottomRadius:I

    iput v5, v1, Lcom/android/internal/policy/DecorView;->mLastBackgroundResource:I

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v1, Lcom/android/internal/policy/DecorView;->mTmpRect:Landroid/graphics/Rect;

    iput v8, v1, Lcom/android/internal/policy/DecorView;->mLastCaptionType:I

    iput v5, v1, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundColor:I

    iput-boolean v5, v1, Lcom/android/internal/policy/DecorView;->mCalledDisplayCutoutBackgroundColor:Z

    iput-boolean v5, v1, Lcom/android/internal/policy/DecorView;->mForceHideRoundedCorner:Z

    move/from16 v7, p2

    iput v7, v1, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    const v11, 0x10c000e

    invoke-static {v2, v11}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v11

    iput-object v11, v1, Lcom/android/internal/policy/DecorView;->mShowInterpolator:Landroid/view/animation/Interpolator;

    const v11, 0x10c000f

    invoke-static {v2, v11}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v11

    iput-object v11, v1, Lcom/android/internal/policy/DecorView;->mHideInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x10e01aa

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    iput v11, v1, Lcom/android/internal/policy/DecorView;->mBarEnterExitDuration:I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x11101a6

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    if-eqz v11, :cond_0

    iget v11, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v12, 0x7db

    if-eq v11, v12, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v12, 0x18

    if-lt v11, v12, :cond_0

    move v11, v10

    goto :goto_0

    :cond_0
    move v11, v5

    :goto_0
    iput-boolean v11, v1, Lcom/android/internal/policy/DecorView;->mForceWindowDrawsBarBackgrounds:Z

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x1060447

    invoke-virtual {v11, v12, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v11

    iput v11, v1, Lcom/android/internal/policy/DecorView;->mSemiTransparentBarColor:I

    move-object/from16 v11, p3

    invoke-virtual {v1, v11}, Lcom/android/internal/policy/DecorView;->setWindow(Lcom/android/internal/policy/PhoneWindow;)V

    invoke-virtual {v1, v3}, Lcom/android/internal/policy/DecorView;->updateLogTag(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v12, v1, Lcom/android/internal/policy/DecorView;->mLegacyNavigationBarBackgroundPaint:Landroid/graphics/Paint;

    iget-object v13, v1, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v13}, Lcom/android/internal/policy/PhoneWindow;->getDeviceDefaultNavigationBarColor()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setColor(I)V

    nop

    invoke-static/range {p1 .. p1}, Lcom/android/internal/policy/WearGestureInterceptionDetector;->isEnabled(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_1

    new-instance v12, Lcom/android/internal/policy/WearGestureInterceptionDetector;

    invoke-direct {v12, v2, v1}, Lcom/android/internal/policy/WearGestureInterceptionDetector;-><init>(Landroid/content/Context;Lcom/android/internal/policy/DecorView;)V

    goto :goto_1

    :cond_1
    move-object v12, v6

    :goto_1
    iput-object v12, v1, Lcom/android/internal/policy/DecorView;->mWearGestureInterceptionDetector:Lcom/android/internal/policy/WearGestureInterceptionDetector;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    iget-object v13, v1, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v13, v13, Lcom/android/internal/policy/PhoneWindow;->mActivityCurrentConfig:Landroid/content/res/Configuration;

    if-eqz v13, :cond_2

    iget-object v13, v1, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v13, v13, Lcom/android/internal/policy/PhoneWindow;->mActivityCurrentConfig:Landroid/content/res/Configuration;

    iget-object v13, v13, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    goto :goto_2

    :cond_2
    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    iget-object v13, v13, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    :goto_2
    invoke-virtual {v13}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v14

    iput v14, v1, Lcom/android/internal/policy/DecorView;->mWindowingMode:I

    const v14, 0x1110226

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    iput-boolean v14, v1, Lcom/android/internal/policy/DecorView;->mIsShowNavigationBar:Z

    :try_start_0
    const-string v14, "config_mainBuiltInDisplayCutout"

    invoke-virtual {v12, v14, v4, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    if-lez v14, :cond_3

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    goto :goto_3

    :cond_3
    move-object v15, v6

    :goto_3
    if-eqz v15, :cond_4

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_4

    move v5, v10

    :cond_4
    iput-boolean v5, v1, Lcom/android/internal/policy/DecorView;->mHasDisplayCutout:Z

    iget-boolean v5, v1, Lcom/android/internal/policy/DecorView;->mHasDisplayCutout:Z

    if-nez v5, :cond_7

    const-string v5, "config_subBuiltInDisplayCutout"

    invoke-virtual {v12, v5, v4, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    nop

    if-lez v0, :cond_5

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_5
    move-object v4, v6

    :goto_4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    move v5, v10

    goto :goto_5

    :cond_6
    const/4 v5, 0x0

    :goto_5
    iput-boolean v5, v1, Lcom/android/internal/policy/DecorView;->mHasDisplayCutout:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    goto :goto_6

    :catch_0
    move-exception v0

    iget-object v4, v1, Lcom/android/internal/policy/DecorView;->mLogTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Can not update hasDisplayCutout. "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    const v0, 0x1050504

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Lcom/android/internal/policy/DecorView;->mRoundedCornerRadius:I

    const v0, 0x105039c

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Lcom/android/internal/policy/DecorView;->mRoundedCornerRadiusForLetterBox:I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getDisplayNoVerify()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {v0}, Landroid/view/Display;->getUniqueId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Landroid/view/RoundedCorners;->getRoundedCornerTopRadius(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lcom/android/internal/policy/DecorView;->mDeviceRoundedCornerTopRadius:I

    invoke-static {v12, v4}, Landroid/view/RoundedCorners;->getRoundedCornerBottomRadius(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lcom/android/internal/policy/DecorView;->mDeviceRoundedCornerBottomRadius:I

    goto :goto_7

    :cond_8
    iget v4, v1, Lcom/android/internal/policy/DecorView;->mRoundedCornerRadiusForLetterBox:I

    iput v4, v1, Lcom/android/internal/policy/DecorView;->mDeviceRoundedCornerTopRadius:I

    iget v4, v1, Lcom/android/internal/policy/DecorView;->mRoundedCornerRadiusForLetterBox:I

    iput v4, v1, Lcom/android/internal/policy/DecorView;->mDeviceRoundedCornerBottomRadius:I

    :goto_7
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->getRoundedCornerRadius(Landroid/content/Context;)I

    move-result v0

    iput v0, v1, Lcom/android/internal/policy/DecorView;->mMultiWindowRoundedCornerRadius:I

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_DEX:Z

    if-eqz v0, :cond_9

    iget-object v0, v1, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->isDesktopModeEnabled()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/internal/policy/DecorView;->mIsDexEnabled:Z

    :cond_9
    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->isPopOver()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/internal/policy/DecorView;->mIsPopOver:Z

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    iput v0, v1, Lcom/android/internal/policy/DecorView;->mLastDisplayDeviceType:I

    invoke-virtual {v13}, Landroid/app/WindowConfiguration;->isPopOverWithoutOutlineEffect()Z

    move-result v0

    if-eqz v0, :cond_a

    iput-boolean v10, v1, Lcom/android/internal/policy/DecorView;->mIsPopOverWithoutOutlineEffect:Z

    :cond_a
    iget-boolean v0, v1, Lcom/android/internal/policy/DecorView;->mIsPopOver:Z

    if-eqz v0, :cond_e

    iget-boolean v0, v1, Lcom/android/internal/policy/DecorView;->mIsPopOverWithoutOutlineEffect:Z

    if-nez v0, :cond_e

    iget-object v0, v1, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/android/internal/app/ChooserActivity;

    if-eqz v0, :cond_b

    const v0, 0x10603d0

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, v1, Lcom/android/internal/policy/DecorView;->mPopOverBackgroundColor:I

    goto :goto_9

    :cond_b
    iget v0, v1, Lcom/android/internal/policy/DecorView;->mPopOverBackgroundColor:I

    if-ne v0, v8, :cond_d

    iget-object v0, v1, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/util/SemViewUtils;->isLightTheme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    const v0, 0x1060344

    goto :goto_8

    :cond_c
    const v0, 0x1060345

    :goto_8
    nop

    invoke-virtual {v12, v0, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, v1, Lcom/android/internal/policy/DecorView;->mPopOverBackgroundColor:I

    :cond_d
    :goto_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mPopOverBackgroundColor="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, v1, Lcom/android/internal/policy/DecorView;->mPopOverBackgroundColor:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_FREEFORM_CAPTION_TYPE:Z

    if-eqz v0, :cond_f

    iget-boolean v0, v1, Lcom/android/internal/policy/DecorView;->mIsDexEnabled:Z

    if-nez v0, :cond_f

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getCaptionType()I

    move-result v0

    iput v0, v1, Lcom/android/internal/policy/DecorView;->mLastCaptionType:I

    :cond_f
    return-void
.end method

.method static synthetic blacklist access$000(Lcom/android/internal/policy/DecorView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic blacklist access$100(Lcom/android/internal/policy/DecorView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic blacklist access$200(Lcom/android/internal/policy/DecorView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic blacklist access$300(Lcom/android/internal/policy/DecorView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private blacklist addKnoxBadge()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadgeViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->setKnoxBadge()V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadgeViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadgeView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    return-void
.end method

.method public static blacklist calculateBarColor(IIIIIIZZ)I
    .locals 9

    const/high16 v8, -0x1000000

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-static/range {v0 .. v8}, Lcom/android/internal/policy/DecorView;->calculateBarColor(IIIIIIZZI)I

    move-result v0

    return v0
.end method

.method public static blacklist calculateBarColor(IIIIIIZZI)I
    .locals 3

    and-int v0, p0, p1

    if-eqz v0, :cond_0

    return p2

    :cond_0
    const/high16 v0, -0x80000000

    and-int/2addr v0, p0

    if-nez v0, :cond_1

    return p8

    :cond_1
    const/4 v0, 0x0

    if-eqz p6, :cond_6

    invoke-static {p3}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-nez v1, :cond_4

    and-int v2, p4, p5

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    if-eqz v0, :cond_3

    const v2, -0x19000001

    goto :goto_0

    :cond_3
    move v2, p2

    :goto_0
    return v2

    :cond_4
    if-eqz p7, :cond_5

    const v0, 0xffffff

    and-int/2addr v0, p3

    const/high16 v2, -0x34000000    # -3.3554432E7f

    or-int/2addr v0, v2

    return v0

    :cond_5
    goto :goto_1

    :cond_6
    if-eqz p7, :cond_7

    return v0

    :cond_7
    :goto_1
    nop

    return p3
.end method

.method private blacklist calculateNavigationBarColor(I)I
    .locals 10

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

    iget v0, p0, Lcom/android/internal/policy/DecorView;->mLastSuppressScrimTypes:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v2

    and-int/2addr v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v7, v0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-boolean v8, v0, Lcom/android/internal/policy/PhoneWindow;->mEdgeToEdgeEnforced:Z

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getDeviceDefaultNavigationBarColor()I

    move-result v9

    const/high16 v2, 0x8000000

    const/16 v6, 0x10

    move v5, p1

    invoke-static/range {v1 .. v9}, Lcom/android/internal/policy/DecorView;->calculateBarColor(IIIIIIZZI)I

    move-result v0

    return v0
.end method

.method private blacklist calculateStatusBarColor(I)I
    .locals 9

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v3, p0, Lcom/android/internal/policy/DecorView;->mSemiTransparentBarColor:I

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v4, v0, Lcom/android/internal/policy/PhoneWindow;->mStatusBarColor:I

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mEnsureStatusBarContrastWhenTransparent:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/DecorView;->mLastSuppressScrimTypes:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v2

    and-int/2addr v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v7, v0

    const/high16 v2, 0x4000000

    const/16 v6, 0x8

    const/4 v8, 0x0

    move v5, p1

    invoke-static/range {v1 .. v8}, Lcom/android/internal/policy/DecorView;->calculateBarColor(IIIIIIZZ)I

    move-result v0

    return v0
.end method

.method private blacklist canDrawFrame()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isFreeformMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isFullSize()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method private blacklist cleanupFloatingActionModeViews()V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    invoke-virtual {v0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->dismiss()V

    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    :cond_1
    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    :cond_2
    return-void
.end method

.method private blacklist cleanupPrimaryActionMode()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->killMode()V

    :cond_1
    return-void
.end method

.method private blacklist computeCaptionHeight()I
    .locals 2

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_CUSTOMIZABLE_WINDOW_HEADERS:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/WindowInsetsController;->getSystemBarsAppearance()I

    move-result v1

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mLastCaptionHeight:I

    return v0
.end method

.method private blacklist createActionMode(ILandroid/view/ActionMode$Callback2;Landroid/view/View;)Landroid/view/ActionMode;
    .locals 1

    sparse-switch p1, :sswitch_data_0

    invoke-direct {p0, p2}, Lcom/android/internal/policy/DecorView;->createStandaloneActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0

    :sswitch_0
    invoke-direct {p0, p3, p2}, Lcom/android/internal/policy/DecorView;->createFloatingActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback2;)Landroid/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ActionMode;->setType(I)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x63 -> :sswitch_0
    .end sparse-switch
.end method

.method private blacklist createFloatingActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback2;)Landroid/view/ActionMode;
    .locals 3

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->cleanupFloatingActionModeViews()V

    new-instance v0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;-><init>(Landroid/view/Window;)V

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    new-instance v0, Lcom/android/internal/view/FloatingActionMode;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    invoke-direct {v0, v1, p2, p1, v2}, Lcom/android/internal/view/FloatingActionMode;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback2;Landroid/view/View;Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;)V

    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    new-instance v1, Lcom/android/internal/policy/DecorView$10;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/policy/DecorView$10;-><init>(Lcom/android/internal/policy/DecorView;Lcom/android/internal/view/FloatingActionMode;)V

    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    return-object v0
.end method

.method private blacklist createStandaloneActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 9

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->endOnGoingFadeAnimation()V

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->cleanupPrimaryActionMode()V

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->isFloating()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x1010431

    invoke-virtual {v4, v5, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v5, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iget v6, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v6, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    new-instance v6, Landroid/view/ContextThemeWrapper;

    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    :goto_0
    new-instance v5, Lcom/android/internal/widget/ActionBarContextView;

    invoke-direct {v5, v6}, Lcom/android/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    new-instance v5, Landroid/widget/PopupWindow;

    const v7, 0x1120008

    invoke-direct {v5, v6, v2, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v5, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v5, v7}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    const/4 v7, -0x1

    invoke-virtual {v5, v7}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v7, 0x10102eb

    invoke-virtual {v5, v7, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v5, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v5

    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v7, v5}, Lcom/android/internal/widget/ActionBarContextView;->setContentHeight(I)V

    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    const/4 v8, -0x2

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setHeight(I)V

    new-instance v7, Lcom/android/internal/policy/DecorView$8;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/DecorView$8;-><init>(Lcom/android/internal/policy/DecorView;)V

    iput-object v7, p0, Lcom/android/internal/policy/DecorView;->mShowPrimaryActionModePopup:Ljava/lang/Runnable;

    goto :goto_1

    :cond_2
    const v0, 0x10201cd

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/ActionBarContextView;

    iput-object v4, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->killMode()V

    new-instance v0, Lcom/android/internal/view/StandaloneActionMode;

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v2}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    if-nez v5, :cond_4

    move v1, v3

    :cond_4
    invoke-direct {v0, v2, v4, p1, v1}, Lcom/android/internal/view/StandaloneActionMode;-><init>(Landroid/content/Context;Lcom/android/internal/widget/ActionBarContextView;Landroid/view/ActionMode$Callback;Z)V

    return-object v0

    :cond_5
    return-object v2
.end method

.method private blacklist dipToPx(F)F
    .locals 2

    nop

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method private blacklist dpToPixel(F)F
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    mul-float/2addr v0, p1

    return v0
.end method

.method private blacklist drawLegacyNavigationBarBackground(Landroid/graphics/RecordingCanvas;)V
    .locals 8

    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mLastDrawLegacyNavigationBarBackground:Z

    iget-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mDrawLegacyNavigationBarBackground:Z

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mDrawLegacyNavigationBarBackground:Z

    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mLastDrawLegacyNavigationBarBackground:Z

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->updateForceLightNavigationBar()V

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mDrawLegacyNavigationBarBackground:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mDrawLegacyNavigationBarBackgroundHandled:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v0, v0, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    if-nez v0, :cond_2

    return-void

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

    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method private blacklist drawableChanged()V
    .locals 10

    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mChanging:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    goto :goto_1

    :cond_2
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

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

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->requestLayout()V

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->invalidate()V

    const/4 v2, -0x1

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-boolean v4, v4, Lcom/android/internal/policy/PhoneWindow;->mRenderShadowsInCompositor:Z

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->hasWindowShadow()Z

    move-result v5

    if-eqz v5, :cond_3

    if-nez v4, :cond_3

    const/4 v2, -0x3

    goto :goto_4

    :cond_3
    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->isPopOver()Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v2, -0x3

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v5, :cond_b

    if-nez v6, :cond_5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    goto :goto_4

    :cond_5
    iget v7, v0, Landroid/graphics/Rect;->left:I

    if-gtz v7, :cond_a

    iget v7, v0, Landroid/graphics/Rect;->top:I

    if-gtz v7, :cond_a

    iget v7, v0, Landroid/graphics/Rect;->right:I

    if-gtz v7, :cond_a

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    if-gtz v7, :cond_a

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v7

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v8

    const/4 v9, -0x1

    if-eq v7, v9, :cond_9

    if-ne v8, v9, :cond_6

    goto :goto_2

    :cond_6
    if-nez v7, :cond_7

    move v2, v8

    goto :goto_3

    :cond_7
    if-nez v8, :cond_8

    move v2, v7

    goto :goto_3

    :cond_8
    invoke-static {v7, v8}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v2

    goto :goto_3

    :cond_9
    :goto_2
    const/4 v2, -0x1

    :goto_3
    goto :goto_4

    :cond_a
    const/4 v2, -0x3

    :cond_b
    :goto_4
    iput v2, p0, Lcom/android/internal/policy/DecorView;->mDefaultOpacity:I

    iget v5, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v5, :cond_c

    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v5, v2}, Lcom/android/internal/policy/PhoneWindow;->setDefaultWindowFormat(I)V

    :cond_c
    return-void
.end method

.method private blacklist endOnGoingFadeAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    :cond_0
    return-void
.end method

.method private blacklist getBackgroundAlpha()F
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/DecorView;->mPopOverBackgroundAlpha:F

    return v0
.end method

.method private blacklist getCaptionType()I
    .locals 3

    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsDexEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "freeform_caption_type"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    :goto_0
    return v0
.end method

.method private final blacklist getConfiguration()Landroid/content/res/Configuration;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mActivityCurrentConfig:Landroid/content/res/Configuration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mActivityCurrentConfig:Landroid/content/res/Configuration;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getContentAlpha()F
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/DecorView;->mPopOverContentAlpha:F

    return v0
.end method

.method private blacklist getCurrentBounds(Landroid/content/Context;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWm:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mWm:Landroid/view/WindowManager;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWm:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getCurrentColor(Lcom/android/internal/policy/DecorView$ColorViewState;)I
    .locals 1

    iget-boolean v0, p1, Lcom/android/internal/policy/DecorView$ColorViewState;->visible:Z

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/internal/policy/DecorView$ColorViewState;->color:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist getDensity(Landroid/view/View;)F
    .locals 10

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, v0, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/content/res/Configuration;->isDesktopModeEnabled()Z

    move-result v3

    const-string v4, "DecorView"

    if-eqz v3, :cond_1

    const/high16 v2, 0x43200000    # 160.0f

    nop

    const-string v3, "desktopmode"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v5

    const/16 v6, 0x65

    if-ne v5, v6, :cond_0

    const/high16 v2, 0x438c0000    # 280.0f

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateDisplayMetrics: isDexEnabled=true, densityDpi="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/high16 v3, 0x43200000    # 160.0f

    div-float v3, v2, v3

    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v5

    const/high16 v6, 0x3f800000    # 1.0f

    nop

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateDisplayMetrics: packageName="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", dsf="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v8, v6, v8

    if-eqz v8, :cond_2

    mul-float v8, v3, v6

    const v9, 0x461c4000    # 10000.0f

    mul-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float v4, v4

    div-float/2addr v4, v9

    move v3, v4

    :cond_2
    goto :goto_0

    :catch_0
    move-exception v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateDisplayMetrics: error while getting dsf. e="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v3
.end method

.method private blacklist getFlipCoverScreenRoundedCorner(Landroid/view/WindowManager$LayoutParams;II)I
    .locals 3

    const/4 v0, 0x0

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x100000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    if-nez p2, :cond_2

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    const/4 v1, 0x2

    if-ne p3, v1, :cond_2

    or-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_0
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x3

    :cond_1
    and-int/lit8 v1, p2, 0x8

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0xc

    :cond_2
    :goto_0
    return v0
.end method

.method public static blacklist getNavBarSize(III)I
    .locals 1

    invoke-static {p0, p1}, Lcom/android/internal/policy/DecorView;->isNavBarToRightEdge(II)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    invoke-static {p0, p2}, Lcom/android/internal/policy/DecorView;->isNavBarToLeftEdge(II)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, p2

    goto :goto_0

    :cond_1
    move v0, p0

    :goto_0
    return v0
.end method

.method public static blacklist getNavBarSizeForBadge(III)I
    .locals 1

    sget v0, Lcom/android/internal/policy/DecorView;->sKnoxBadgeRightCutout:I

    sub-int v0, p1, v0

    invoke-static {p2, v0}, Lcom/android/internal/policy/DecorView;->isNavBarToRightEdge(II)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    invoke-static {p2, p0}, Lcom/android/internal/policy/DecorView;->isNavBarToLeftEdge(II)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, p0

    goto :goto_0

    :cond_1
    move v0, p2

    :goto_0
    return v0
.end method

.method public static blacklist getNavigationBarRect(IILandroid/graphics/Rect;Landroid/graphics/Rect;F)V
    .locals 6

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    mul-float/2addr v0, p4

    float-to-int v0, v0

    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    mul-float/2addr v1, p4

    float-to-int v1, v1

    iget v2, p2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    mul-float/2addr v2, p4

    float-to-int v2, v2

    invoke-static {v0, v2, v1}, Lcom/android/internal/policy/DecorView;->getNavBarSize(III)I

    move-result v3

    invoke-static {v0, v2}, Lcom/android/internal/policy/DecorView;->isNavBarToRightEdge(II)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    sub-int v4, p0, v3

    invoke-virtual {p3, v4, v5, p0, p1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Lcom/android/internal/policy/DecorView;->isNavBarToLeftEdge(II)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p3, v5, v5, v3, p1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_1
    sub-int v4, p1, v3

    invoke-virtual {p3, v5, v4, p0, p1}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-void
.end method

.method private blacklist getRoundedCornersInLandscapeMode(II)I
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x5

    :cond_1
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0xa

    :cond_2
    return v0

    :cond_3
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist getStagePosition()I
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getStagePosition()I

    move-result v0

    return v0
.end method

.method private static blacklist getTitleSuffix(Landroid/view/WindowManager$LayoutParams;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\."

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-lez v2, :cond_1

    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v1, v0

    return-object v0

    :cond_1
    return-object v0
.end method

.method private blacklist hideKnoxBadge()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadgeViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadgeViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadgeView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private blacklist hidePopOver()V
    .locals 8

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->POP_OVER_BACKGROUND_ALPHA:Landroid/util/FloatProperty;

    const/4 v1, 0x1

    new-array v2, v1, [F

    const/4 v3, 0x0

    const v4, 0x3e4ccccd    # 0.2f

    aput v4, v2, v3

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x64

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->POP_OVER_CONTENT_ALPHA:Landroid/util/FloatProperty;

    new-array v6, v1, [F

    const/4 v7, 0x0

    aput v7, v6, v3

    invoke-static {p0, v2, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v2, v5, v3

    aput-object v0, v5, v1

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private blacklist indexOfChildToRoot(Landroid/view/View;)I
    .locals 3

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/DecorView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    return v0

    :cond_1
    :goto_0
    if-eqz v1, :cond_3

    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_3

    move-object v2, v1

    check-cast v2, Landroid/view/View;

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/DecorView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    return v0

    :cond_2
    goto :goto_0

    :cond_3
    return v0
.end method

.method private blacklist initializeElevation()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mAllowUpdateElevation:Z

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateElevation()V

    return-void
.end method

.method private blacklist isActivity()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

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

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

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

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mTmpColorViewBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    if-eq v2, v1, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v2, v2, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    if-ne v2, v1, :cond_0

    goto :goto_1

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

    const/4 v2, 0x1

    return v2

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist isDimBehind()Z
    .locals 3

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

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

.method private blacklist isImmersiveMode()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getSystemUiVisibility()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWindowSystemUiVisibility()I

    move-result v1

    or-int/2addr v0, v1

    and-int/lit16 v1, v0, 0x1800

    if-eqz v1, :cond_0

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static blacklist isNavBarToLeftEdge(II)Z
    .locals 1

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

    const/4 v0, -0x5

    if-lt p1, v0, :cond_1

    if-lt p2, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    if-gt p1, v0, :cond_1

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

    :goto_1
    return v0
.end method

.method private blacklist isOutOfInnerBounds(II)Z
    .locals 1

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

    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsPopOver:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mPreventPopOverElevation:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isFullSize()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic blacklist lambda$new$0()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateBackgroundBlurCorners()V

    const/4 v0, 0x1

    return v0
.end method

.method private synthetic blacklist lambda$setBackgroundBlurRadius$2(Ljava/lang/Boolean;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mCrossWindowBlurEnabled:Z

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateBackgroundBlurRadius()V

    return-void
.end method

.method private synthetic blacklist lambda$updateColorViews$1(Landroid/view/ViewGroup$MarginLayoutParams;IIILandroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput p4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private blacklist refreshGestureNavBarSettings()V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "navigation_bar_gesture_while_hidden"

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

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "navigation_bar_gesture_hint"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v2, v1

    :cond_1
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mGestureHintEnabled:Z

    return-void
.end method

.method private blacklist removeKnoxBadge()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadgeViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->hideKnoxBadge()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadgeViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadgeView:Landroid/view/View;

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadge:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mReverseKnoxBadge:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method

.method private blacklist requestInvalidateRenderNode(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->requestInvalidateRootRenderNode()V

    sget-boolean v1, Lcom/android/internal/policy/DecorView;->DEBUG_DRAW:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestInvalidateRootRenderNode: msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DecorView"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private blacklist setBackgroundAlpha(F)V
    .locals 2

    iget v0, p0, Lcom/android/internal/policy/DecorView;->mPopOverBackgroundAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/android/internal/policy/DecorView;->mPopOverBackgroundAlpha:F

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

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->invalidate()V

    :cond_0
    return-void
.end method

.method private blacklist setBadgeResource()V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPackageManagerForKnoxBadge:Landroid/content/pm/PackageManager;

    new-instance v1, Landroid/os/UserHandle;

    iget v2, p0, Lcom/android/internal/policy/DecorView;->mUserId:I

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getUserBadgeForDensity(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadge:Landroid/graphics/drawable/Drawable;

    new-instance v0, Landroid/os/UserHandle;

    iget v1, p0, Lcom/android/internal/policy/DecorView;->mUserId:I

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, v1}, Lcom/samsung/android/knox/SemPersonaManager;->getCustomReverseBadgeForCustomContainer(Landroid/os/UserHandle;ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mReverseKnoxBadge:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mReverseKnoxBadge:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadge:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mReverseKnoxBadge:Landroid/graphics/drawable/Drawable;

    :goto_0
    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mReverseKnoxBadge:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private static blacklist setColor(Landroid/view/View;IIZZ)V
    .locals 11

    if-eqz p2, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

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

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v2, p2}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    goto :goto_4

    :cond_1
    :goto_0
    nop

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v1, v4, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    new-instance v10, Landroid/graphics/drawable/InsetDrawable;

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    if-eqz p3, :cond_2

    if-nez p4, :cond_2

    move v6, v3

    goto :goto_1

    :cond_2
    move v6, v2

    :goto_1
    if-nez p3, :cond_3

    move v7, v3

    goto :goto_2

    :cond_3
    move v7, v2

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

    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/graphics/drawable/Drawable;

    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v7, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v7, v6, v2

    aput-object v4, v6, v1

    invoke-direct {v5, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/util/Pair;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    nop

    :goto_4
    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_5
    return-void
.end method

.method private blacklist setContentAlpha(F)V
    .locals 2

    iget v0, p0, Lcom/android/internal/policy/DecorView;->mPopOverContentAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/android/internal/policy/DecorView;->mPopOverContentAlpha:F

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

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->invalidate()V

    :cond_0
    return-void
.end method

.method private blacklist setHandledActionMode(Landroid/view/ActionMode;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->setHandledPrimaryActionMode(Landroid/view/ActionMode;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    move-result v0

    const/16 v1, 0x63

    if-ne v0, v1, :cond_2

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->setHandledFloatingActionMode(Landroid/view/ActionMode;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private blacklist setHandledFloatingActionMode(Landroid/view/ActionMode;)V
    .locals 4

    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->isThemeDeviceDefault()Z

    move-result v1

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

    new-instance v2, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-direct {v2, v3, v0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;-><init>(Landroid/view/Window;Z)V

    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    check-cast v2, Lcom/android/internal/view/FloatingActionMode;

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    invoke-virtual {v2, v3}, Lcom/android/internal/view/FloatingActionMode;->setFloatingToolbar(Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;)V

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    invoke-virtual {v2}, Landroid/view/ActionMode;->invalidate()V

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private blacklist setHandledPrimaryActionMode(Landroid/view/ActionMode;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->endOnGoingFadeAnimation()V

    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContextView;->initForMode(Landroid/view/ActionMode;)V

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mShowPrimaryActionModePopup:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->shouldAnimatePrimaryActionModeView()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/internal/policy/DecorView$9;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/DecorView$9;-><init>(Lcom/android/internal/policy/DecorView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContextView;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private blacklist setKnoxBadge()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadgeViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPackageManagerForKnoxBadge:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mPackageManagerForKnoxBadge:Landroid/content/pm/PackageManager;

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->setBadgeResource()V

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadgeView:Landroid/view/View;

    if-nez v0, :cond_1

    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadgeView:Landroid/view/View;

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadgeView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mWm:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, p0, Lcom/android/internal/policy/DecorView;->mDensityForKnoxBadge:I

    return-void
.end method

.method private blacklist setKnoxBadgePosition()V
    .locals 1

    new-instance v0, Lcom/android/internal/policy/DecorView$11;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/DecorView$11;-><init>(Lcom/android/internal/policy/DecorView;)V

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadgeDisplayRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private blacklist shouldConsumeCaptionBar()Z
    .locals 3

    iget v0, p0, Lcom/android/internal/policy/DecorView;->mLastTopInset:I

    const/4 v1, 0x0

    if-lez v0, :cond_4

    iget v0, p0, Lcom/android/internal/policy/DecorView;->mLastTopInset:I

    iget v2, p0, Lcom/android/internal/policy/DecorView;->mLastCaptionHeight:I

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_DEX:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsDexEnabled:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->isTranslucent()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isFullscreenMode()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isSplitMode()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isImmersiveMode()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    return v0

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v1
.end method

.method private blacklist shouldDrawRoundedCornerInPortraitMode(Z)Z
    .locals 5

    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mGestureNavBarEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mGestureHintEnabled:Z

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mForceHideRoundedCorner:Z

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mForceRoundedCorner:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "task_bar"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-boolean v3, v3, Lcom/android/internal/policy/DecorView$ColorViewState;->visible:Z

    if-eqz v3, :cond_4

    if-nez v0, :cond_4

    iget v3, p0, Lcom/android/internal/policy/DecorView;->mRoundedCornerMode:I

    const/16 v4, 0xc

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_4

    move v1, v2

    :cond_4
    return v1

    :cond_5
    sget-boolean v0, Landroid/view/View;->sIsSamsungBasicInteraction:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-boolean v0, v0, Lcom/android/internal/policy/DecorView$ColorViewState;->visible:Z

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v0, v0, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v0, v0, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    if-eqz v0, :cond_9

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_7

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v3, v3, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/android/internal/policy/DecorView;->isChildIntersectsWith(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_8

    :cond_7
    move v1, v2

    :cond_8
    return v1

    :cond_9
    return v2

    :cond_a
    :goto_1
    return v1
.end method

.method private blacklist shouldHideProfileBadge(ZZI)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadgeView:Landroid/view/View;

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isPopOverState()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    if-eqz p1, :cond_3

    if-eqz p3, :cond_2

    return v1

    :cond_2
    if-nez p2, :cond_3

    if-nez p3, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isFullscreenMode()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isImmersiveMode()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isSplitMode()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    if-eqz v0, :cond_5

    return v1

    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist showContextMenuForChildInternal(Landroid/view/View;FF)Z
    .locals 6

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuHelper;

    invoke-interface {v0}, Lcom/android/internal/view/menu/MenuHelper;->dismiss()V

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuHelper;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mContextMenuCallback:Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    new-instance v2, Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/view/menu/ContextMenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {v1, v0}, Lcom/android/internal/view/menu/ContextMenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/ContextMenuBuilder;->clearAll()V

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

    :goto_1
    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v4, v4, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5, p1, p2, p3}, Lcom/android/internal/view/menu/ContextMenuBuilder;->showPopup(Landroid/content/Context;Landroid/view/View;FF)Lcom/android/internal/view/menu/MenuPopupHelper;

    move-result-object v4

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v4, v4, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lcom/android/internal/view/menu/ContextMenuBuilder;->showDialog(Landroid/view/View;Landroid/os/IBinder;)Lcom/android/internal/view/menu/MenuDialogHelper;

    move-result-object v4

    :goto_2
    if-eqz v4, :cond_5

    if-nez v1, :cond_4

    move v5, v2

    goto :goto_3

    :cond_4
    move v5, v3

    :goto_3
    invoke-virtual {v0, v5}, Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;->setShowDialogForSubmenu(Z)V

    invoke-interface {v4, v0}, Lcom/android/internal/view/menu/MenuHelper;->setPresenterCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    :cond_5
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iput-object v4, v5, Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuHelper;

    if-eqz v4, :cond_6

    goto :goto_4

    :cond_6
    move v2, v3

    :goto_4
    return v2
.end method

.method private blacklist showPopOver()V
    .locals 7

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->POP_OVER_BACKGROUND_ALPHA:Landroid/util/FloatProperty;

    const/4 v1, 0x1

    new-array v2, v1, [F

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v2, v3

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v5, 0xc8

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->POP_OVER_CONTENT_ALPHA:Landroid/util/FloatProperty;

    new-array v5, v1, [F

    aput v4, v5, v3

    invoke-static {p0, v2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v0, v5, v3

    aput-object v2, v5, v1

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private blacklist startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 4

    new-instance v0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;

    invoke-direct {v0, p0, p2}, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;-><init>(Lcom/android/internal/policy/DecorView;Landroid/view/ActionMode$Callback;)V

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v2

    invoke-interface {v2, v0, p3}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    if-nez p3, :cond_0

    :try_start_1
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v3

    goto :goto_0

    :catch_1
    move-exception v3

    :cond_0
    :goto_0
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/view/ActionMode;->getType()I

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->cleanupPrimaryActionMode()V

    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroid/view/ActionMode;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    invoke-virtual {v1}, Landroid/view/ActionMode;->getType()I

    move-result v2

    const/16 v3, 0x63

    if-ne v2, v3, :cond_6

    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    invoke-virtual {v2}, Landroid/view/ActionMode;->finish()V

    :cond_3
    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    goto :goto_1

    :cond_4
    invoke-direct {p0, p3, v0, p1}, Lcom/android/internal/policy/DecorView;->createActionMode(ILandroid/view/ActionMode$Callback2;Landroid/view/View;)Landroid/view/ActionMode;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ActionMode$Callback2;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0, v1}, Lcom/android/internal/policy/DecorView;->setHandledActionMode(Landroid/view/ActionMode;)V

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

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

    :try_start_2
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/Window$Callback;->onActionModeStarted(Landroid/view/ActionMode;)V
    :try_end_2
    .catch Ljava/lang/AbstractMethodError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v2

    :cond_7
    :goto_2
    return-object v1
.end method

.method private blacklist updateBackgroundBlurCorners()V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurRadius:I

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mOriginalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    new-instance v1, Landroid/graphics/Outline;

    invoke-direct {v1}, Landroid/graphics/Outline;-><init>()V

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mOriginalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

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

    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    invoke-virtual {v1, v0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->setCornerRadius(F)V

    return-void
.end method

.method private blacklist updateBackgroundBlurRadius()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mCrossWindowBlurEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->isTranslucent()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/policy/DecorView;->mOriginalBackgroundBlurRadius:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurRadius:I

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurRadius:I

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->createBackgroundBlurDrawable()Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateBackgroundDrawable()V

    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    iget v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurRadius:I

    invoke-virtual {v0, v1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->setBlurRadius(I)V

    :cond_3
    return-void
.end method

.method private blacklist updateBackgroundDrawable()V
    .locals 12

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundInsets:Landroid/graphics/Insets;

    if-nez v0, :cond_0

    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundInsets:Landroid/graphics/Insets;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundInsets:Landroid/graphics/Insets;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundInsets:Landroid/graphics/Insets;

    invoke-virtual {v0, v1}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_INSETS:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mCaptionBarBackgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mLastCaptionBarBackgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mLastOriginalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mOriginalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-ne v0, v1, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mOriginalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v1, :cond_3

    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    new-array v5, v4, [Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    aput-object v6, v5, v3

    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mOriginalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v6, v5, v2

    invoke-direct {v1, v5}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    move-object v0, v1

    :cond_3
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundInsets:Landroid/graphics/Insets;

    sget-object v5, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {v1, v5}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Lcom/android/internal/policy/DecorView$6;

    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mBackgroundInsets:Landroid/graphics/Insets;

    iget v8, v5, Landroid/graphics/Insets;->left:I

    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mBackgroundInsets:Landroid/graphics/Insets;

    iget v9, v5, Landroid/graphics/Insets;->top:I

    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mBackgroundInsets:Landroid/graphics/Insets;

    iget v10, v5, Landroid/graphics/Insets;->right:I

    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mBackgroundInsets:Landroid/graphics/Insets;

    iget v11, v5, Landroid/graphics/Insets;->bottom:I

    move-object v5, v1

    move-object v6, p0

    move-object v7, v0

    invoke-direct/range {v5 .. v11}, Lcom/android/internal/policy/DecorView$6;-><init>(Lcom/android/internal/policy/DecorView;Landroid/graphics/drawable/Drawable;IIII)V

    move-object v0, v1

    :cond_4
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_INSETS:Z

    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mCaptionBarBackgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_5

    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mCaptionBarBackgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    aput-object v5, v4, v3

    aput-object v0, v4, v2

    invoke-direct {v1, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    move-object v0, v1

    :cond_5
    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundInsets:Landroid/graphics/Insets;

    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundInsets:Landroid/graphics/Insets;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mOriginalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mLastOriginalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_INSETS:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mCaptionBarBackgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mLastCaptionBarBackgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    :cond_6
    return-void
.end method

.method private blacklist updateColorViewInt(Lcom/android/internal/policy/DecorView$ColorViewState;IIIZZIZZI)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p9

    iget-object v8, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->attributes:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    iget v8, v8, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->insetsType:I

    iget-object v9, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->attributes:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    and-int v10, p10, v8

    if-nez v10, :cond_1

    iget v10, v0, Lcom/android/internal/policy/DecorView;->mLastForceConsumingTypes:I

    and-int/2addr v10, v8

    if-eqz v10, :cond_0

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v10, 0x1

    :goto_1
    iget-object v13, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v13}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v13

    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {v9, v10, v13, v7}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->isPresent(ZIZ)Z

    move-result v9

    iput-boolean v9, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->present:Z

    iget-object v9, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->attributes:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    iget-boolean v10, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->present:Z

    iget-object v13, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v13}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v13

    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {v9, v10, v2, v13, v7}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->isVisible(ZIIZ)Z

    move-result v9

    if-eqz v9, :cond_2

    if-lez p4, :cond_2

    const/4 v10, 0x1

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    :goto_2
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v13

    if-ne v8, v13, :cond_4

    iget-object v13, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v13}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v13

    iget-object v14, v0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Configuration;->isDexMode()Z

    move-result v14

    if-eqz v14, :cond_4

    if-eqz v13, :cond_4

    iget v14, v13, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v15, 0x7db

    if-eq v14, v15, :cond_3

    iget v14, v13, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v15, 0x7e5

    if-ne v14, v15, :cond_4

    :cond_3
    const/4 v10, 0x0

    :cond_4
    const/4 v13, 0x0

    iget-object v14, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    const/4 v15, -0x1

    if-eqz v4, :cond_5

    move/from16 v16, v15

    goto :goto_3

    :cond_5
    move/from16 v16, p4

    :goto_3
    move/from16 v17, v16

    if-eqz v4, :cond_6

    move/from16 v15, p4

    :cond_6
    if-eqz v4, :cond_8

    iget-object v11, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->attributes:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    if-eqz v5, :cond_7

    iget v11, v11, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->seascapeGravity:I

    goto :goto_4

    :cond_7
    iget v11, v11, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->horizontalGravity:I

    goto :goto_4

    :cond_8
    iget-object v11, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->attributes:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    iget v11, v11, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->verticalGravity:I

    :goto_4
    nop

    if-nez v14, :cond_b

    if-eqz v10, :cond_a

    new-instance v12, Landroid/view/View;

    iget-object v7, v0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-direct {v12, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object v14, v12

    iput-object v12, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    invoke-static {v14, v2, v3, v4, v5}, Lcom/android/internal/policy/DecorView;->setColor(Landroid/view/View;IIZZ)V

    iget-object v7, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->attributes:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    iget-object v7, v7, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->transitionName:Ljava/lang/String;

    invoke-virtual {v14, v7}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->attributes:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    iget v7, v7, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->id:I

    invoke-virtual {v14, v7}, Landroid/view/View;->setId(I)V

    const/4 v13, 0x1

    const/4 v7, 0x4

    invoke-virtual {v14, v7}, Landroid/view/View;->setVisibility(I)V

    const/4 v12, 0x0

    iput v12, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->targetVisibility:I

    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    move/from16 v7, v17

    invoke-direct {v12, v15, v7, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    if-eqz v5, :cond_9

    iput v6, v12, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_5

    :cond_9
    iput v6, v12, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :goto_5
    invoke-virtual {v0, v14, v12}, Lcom/android/internal/policy/DecorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->updateColorViewTranslations()V

    move/from16 v16, v8

    goto/16 :goto_b

    :cond_a
    move/from16 v7, v17

    move/from16 v16, v8

    goto/16 :goto_b

    :cond_b
    move/from16 v7, v17

    if-eqz v10, :cond_c

    const/4 v12, 0x0

    goto :goto_6

    :cond_c
    const/4 v12, 0x4

    :goto_6
    iget v6, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->targetVisibility:I

    if-eq v6, v12, :cond_d

    const/16 v16, 0x1

    goto :goto_7

    :cond_d
    const/16 v16, 0x0

    :goto_7
    move/from16 v13, v16

    iput v12, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->targetVisibility:I

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v5, :cond_e

    const/16 v16, 0x0

    goto :goto_8

    :cond_e
    move/from16 v16, p7

    :goto_8
    move/from16 v17, v16

    if-eqz v5, :cond_f

    move/from16 v16, p7

    goto :goto_9

    :cond_f
    const/16 v16, 0x0

    :goto_9
    move/from16 v18, v16

    move/from16 v16, v8

    iget v8, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ne v8, v7, :cond_11

    iget v8, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-ne v8, v15, :cond_11

    iget v8, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-ne v8, v11, :cond_11

    iget v8, v6, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move/from16 v19, v12

    move/from16 v12, v17

    if-ne v8, v12, :cond_10

    iget v8, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v17, v13

    move/from16 v13, v18

    if-eq v8, v13, :cond_12

    goto :goto_a

    :cond_10
    move/from16 v17, v13

    move/from16 v13, v18

    goto :goto_a

    :cond_11
    move/from16 v19, v12

    move/from16 v12, v17

    move/from16 v17, v13

    move/from16 v13, v18

    :goto_a
    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v15, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v11, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v12, v6, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v13, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v14, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_12
    if-eqz v10, :cond_13

    invoke-static {v14, v2, v3, v4, v5}, Lcom/android/internal/policy/DecorView;->setColor(Landroid/view/View;IIZZ)V

    :cond_13
    move/from16 v13, v17

    :goto_b
    if-eqz v13, :cond_18

    invoke-virtual {v14}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz p8, :cond_16

    const/4 v8, 0x0

    if-eqz v10, :cond_15

    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-eqz v12, :cond_14

    const/4 v12, 0x0

    invoke-virtual {v14, v12}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v14, v8}, Landroid/view/View;->setAlpha(F)V

    :cond_14
    invoke-virtual {v14}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    iget-object v8, v0, Lcom/android/internal/policy/DecorView;->mShowInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v8}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    iget v8, v0, Lcom/android/internal/policy/DecorView;->mBarEnterExitDuration:I

    int-to-long v3, v8

    invoke-virtual {v6, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_d

    :cond_15
    iget-object v3, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget-object v6, v0, Lcom/android/internal/policy/DecorView;->mHideInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v6, v0, Lcom/android/internal/policy/DecorView;->mBarEnterExitDuration:I

    int-to-long v5, v6

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Lcom/android/internal/policy/DecorView$7;

    invoke-direct {v5, v0, v3, v1}, Lcom/android/internal/policy/DecorView$7;-><init>(Lcom/android/internal/policy/DecorView;Landroid/view/View;Lcom/android/internal/policy/DecorView$ColorViewState;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_d

    :cond_16
    const/4 v12, 0x0

    invoke-virtual {v14, v6}, Landroid/view/View;->setAlpha(F)V

    if-eqz v10, :cond_17

    goto :goto_c

    :cond_17
    const/4 v12, 0x4

    :goto_c
    invoke-virtual {v14, v12}, Landroid/view/View;->setVisibility(I)V

    :cond_18
    :goto_d
    iput-boolean v9, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->visible:Z

    iput v2, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->color:I

    return-void
.end method

.method private blacklist updateColorViewTranslations()V
    .locals 4

    iget v0, p0, Lcom/android/internal/policy/DecorView;->mRootScrollY:I

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v1, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v1, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    if-lez v0, :cond_0

    int-to-float v3, v0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v1, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v1, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    if-gez v0, :cond_2

    int-to-float v2, v0

    :cond_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    :cond_3
    return-void
.end method

.method private blacklist updateDisplayCutoutBackground(Landroid/view/WindowInsets;)V
    .locals 18

    move-object/from16 v0, p0

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_CHANGE_DISPLAY_CUTOUT_MODE:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7db

    if-ne v1, v3, :cond_0

    iget-object v1, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    if-ne v1, v2, :cond_0

    const-string v1, "DecorView"

    const-string v2, "IME does not need CutoutBackgroundView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v1, v0, Lcom/android/internal/policy/DecorView;->mCalledDisplayCutoutBackgroundColor:Z

    if-nez v1, :cond_2

    sget-boolean v1, Landroid/view/View;->sIsSamsungBasicInteraction:Z

    if-nez v1, :cond_1

    sget-boolean v1, Landroid/view/View;->sIsDisplayCutoutBackground:Z

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, v0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/DecorView;->getCurrentColor(Lcom/android/internal/policy/DecorView$ColorViewState;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundColor:I

    :cond_2
    if-nez p1, :cond_3

    iget-object v1, v0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundView:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundView:Landroid/view/View;

    iget v2, v0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundColor:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    return-void

    :cond_3
    iget-object v1, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    if-eq v3, v2, :cond_5

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    goto :goto_0

    :cond_4
    move-object/from16 v17, v1

    goto/16 :goto_8

    :cond_5
    :goto_0
    if-eqz p1, :cond_18

    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v2

    if-eqz v2, :cond_17

    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->hasSystemWindowInsets()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v6

    invoke-virtual {v2}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v7

    sput v6, Lcom/android/internal/policy/DecorView;->sKnoxBadgeRightCutout:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    add-int v14, v3, v6

    if-nez v14, :cond_6

    move-object/from16 v17, v1

    goto/16 :goto_5

    :cond_6
    if-lez v3, :cond_c

    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v14

    if-lez v14, :cond_c

    const/4 v8, 0x1

    const/4 v9, 0x3

    move v10, v3

    const/4 v11, -0x1

    iget-object v14, v0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-boolean v14, v14, Lcom/android/internal/policy/DecorView$ColorViewState;->visible:Z

    if-eqz v14, :cond_7

    iget-object v14, v0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v14, v14, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    goto :goto_1

    :cond_7
    const/4 v14, 0x0

    :goto_1
    if-eqz v14, :cond_8

    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v15

    if-nez v15, :cond_8

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    iget v12, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_8
    iget-object v15, v0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-boolean v15, v15, Lcom/android/internal/policy/DecorView$ColorViewState;->visible:Z

    if-eqz v15, :cond_9

    iget-object v15, v0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v15, v15, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    goto :goto_2

    :cond_9
    const/4 v15, 0x0

    :goto_2
    if-eqz v15, :cond_a

    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v16

    if-nez v16, :cond_a

    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object/from16 v17, v1

    const/4 v1, -0x1

    if-eq v4, v1, :cond_b

    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    move v13, v1

    goto :goto_3

    :cond_a
    move-object/from16 v17, v1

    :cond_b
    :goto_3
    goto :goto_5

    :cond_c
    move-object/from16 v17, v1

    if-lez v6, :cond_f

    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v1

    if-lez v1, :cond_f

    const/4 v8, 0x1

    const/4 v9, 0x5

    move v10, v6

    const/4 v11, -0x1

    iget-object v1, v0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-boolean v1, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->visible:Z

    if-eqz v1, :cond_d

    iget-object v1, v0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v1, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    goto :goto_4

    :cond_d
    const/4 v1, 0x0

    :goto_4
    if-eqz v1, :cond_e

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_e

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v12, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_e
    goto :goto_5

    :cond_f
    if-lez v5, :cond_10

    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    if-lez v1, :cond_10

    const/4 v8, 0x1

    const/16 v9, 0x30

    const/4 v10, -0x1

    move v11, v5

    goto :goto_5

    :cond_10
    if-lez v7, :cond_11

    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v1

    if-lez v1, :cond_11

    const/4 v8, 0x1

    const/16 v9, 0x50

    const/4 v10, -0x1

    move v11, v7

    :cond_11
    :goto_5
    if-eqz v8, :cond_15

    iget v1, v0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundColor:I

    if-eqz v1, :cond_15

    iget-object v1, v0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundView:Landroid/view/View;

    if-nez v1, :cond_12

    new-instance v1, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundView:Landroid/view/View;

    iget-object v1, v0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/DecorView;->addView(Landroid/view/View;)V

    goto :goto_6

    :cond_12
    iget-object v1, v0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eq v1, v0, :cond_13

    new-instance v1, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundView:Landroid/view/View;

    iget-object v1, v0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/DecorView;->addView(Landroid/view/View;)V

    :cond_13
    :goto_6
    iget-object v1, v0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_14

    iget-object v1, v0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundView:Landroid/view/View;

    const-string v4, "DisplayCutoutBackgroundView"

    invoke-virtual {v1, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundView:Landroid/view/View;

    const/high16 v4, -0x40800000    # -1.0f

    invoke-virtual {v1, v4}, Landroid/view/View;->setElevation(F)V

    :cond_14
    iget-object v1, v0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iput v9, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v10, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v11, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v12, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v13, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v4, v0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundView:Landroid/view/View;

    iget v14, v0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundColor:I

    invoke-virtual {v4, v14}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v4, v0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->requestLayout()V

    goto :goto_7

    :cond_15
    iget-object v1, v0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundView:Landroid/view/View;

    if-eqz v1, :cond_16

    iget-object v1, v0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, v0, :cond_16

    iget-object v1, v0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/DecorView;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundView:Landroid/view/View;

    goto :goto_9

    :cond_16
    :goto_7
    goto :goto_9

    :cond_17
    move-object/from16 v17, v1

    goto :goto_8

    :cond_18
    move-object/from16 v17, v1

    :goto_8
    iget-object v1, v0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundView:Landroid/view/View;

    if-eqz v1, :cond_19

    iget-object v1, v0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/DecorView;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundView:Landroid/view/View;

    goto :goto_a

    :cond_19
    :goto_9
    nop

    :goto_a
    return-void
.end method

.method private blacklist updateElevation()V
    .locals 7

    nop

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-boolean v1, v1, Lcom/android/internal/policy/PhoneWindow;->mRenderShadowsInCompositor:Z

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isPopOverState()Z

    move-result v2

    if-eqz v1, :cond_0

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/android/internal/policy/DecorView;->mElevationAdjustedForStack:Z

    iget-boolean v5, p0, Lcom/android/internal/policy/DecorView;->mIsPopOver:Z

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/android/internal/policy/DecorView;->mIsPopOverWithoutOutlineEffect:Z

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/android/internal/policy/DecorView;->mPreventPopOverElevation:Z

    if-eqz v5, :cond_2

    :cond_1
    const/4 v3, 0x0

    iput-boolean v6, p0, Lcom/android/internal/policy/DecorView;->mElevationAdjustedForStack:Z

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isPopOverState()Z

    move-result v5

    if-eqz v5, :cond_3

    const/high16 v5, 0x42000000    # 32.0f

    invoke-direct {p0, v5}, Lcom/android/internal/policy/DecorView;->dipToPx(F)F

    move-result v3

    iput-boolean v6, p0, Lcom/android/internal/policy/DecorView;->mElevationAdjustedForStack:Z

    goto :goto_1

    :cond_3
    const/4 v5, 0x5

    if-ne v0, v5, :cond_6

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->hasWindowFocus()Z

    move-result v5

    if-eqz v5, :cond_4

    const/high16 v5, 0x41a00000    # 20.0f

    goto :goto_0

    :cond_4
    const/high16 v5, 0x40a00000    # 5.0f

    :goto_0
    move v3, v5

    iget-boolean v5, p0, Lcom/android/internal/policy/DecorView;->mAllowUpdateElevation:Z

    if-nez v5, :cond_5

    const/high16 v3, 0x41a00000    # 20.0f

    :cond_5
    invoke-direct {p0, v3}, Lcom/android/internal/policy/DecorView;->dipToPx(F)F

    move-result v3

    iput-boolean v6, p0, Lcom/android/internal/policy/DecorView;->mElevationAdjustedForStack:Z

    goto :goto_1

    :cond_6
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/internal/policy/DecorView;->mElevationAdjustedForStack:Z

    :goto_1
    if-nez v4, :cond_7

    iget-boolean v5, p0, Lcom/android/internal/policy/DecorView;->mElevationAdjustedForStack:Z

    if-eqz v5, :cond_8

    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getElevation()F

    move-result v5

    cmpl-float v5, v5, v3

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v5, v3}, Lcom/android/internal/policy/PhoneWindow;->setElevation(F)V

    :cond_8
    return-void
.end method

.method private blacklist updateOutlineProvider()V
    .locals 6

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isActivity()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsPopOver:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsPopOverWithoutOutlineEffect:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isDialogInPopOver()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->POP_OVER_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isSplitMode()Z

    move-result v0

    const/4 v1, 0x0

    const-string/jumbo v2, "updateOutlineProvider"

    const/4 v3, 0x5

    if-nez v0, :cond_4

    iget v0, p0, Lcom/android/internal/policy/DecorView;->mWindowingMode:I

    if-ne v0, v3, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsPopOver:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->POP_OVER_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

    if-ne v0, v3, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/DecorView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    invoke-direct {p0, v2}, Lcom/android/internal/policy/DecorView;->requestInvalidateRenderNode(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mLastOutlineProvider:Landroid/view/ViewOutlineProvider;

    if-eq v0, v1, :cond_9

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mLastOutlineProvider:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, 0x0

    iget-boolean v4, p0, Lcom/android/internal/policy/DecorView;->mIsPopOver:Z

    if-nez v4, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->POP_OVER_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

    if-ne v4, v5, :cond_5

    const/4 v0, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/DecorView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    :cond_5
    iget v1, p0, Lcom/android/internal/policy/DecorView;->mWindowingMode:I

    if-eq v1, v3, :cond_6

    if-eqz v0, :cond_7

    :cond_6
    invoke-direct {p0, v2}, Lcom/android/internal/policy/DecorView;->requestInvalidateRenderNode(Ljava/lang/String;)V

    :cond_7
    goto :goto_1

    :cond_8
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsPopOver:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->POP_OVER_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    :cond_9
    :goto_1
    return-void
.end method

.method private blacklist updateRoundedCornerForMultiSplit(Landroid/content/Context;)V
    .locals 5

    const/16 v0, 0xf

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v2, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->isEmbedded()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v3, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getEmbedActivityMode()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :cond_0
    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    const/16 v0, 0xa

    :cond_1
    :goto_0
    iget v1, p0, Lcom/android/internal/policy/DecorView;->mMultiWindowRoundedCornerRadius:I

    invoke-super {p0, v0, v1}, Landroid/widget/FrameLayout;->semSetRoundedCorners(II)V

    nop

    invoke-static {p1}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->getRoundedCornerColor(Landroid/content/Context;)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/FrameLayout;->semSetRoundedCornerColor(II)V

    return-void
.end method

.method private blacklist updateRoundedCornerForSplit(Landroid/content/Context;)V
    .locals 8

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v1, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v1

    invoke-static {p1}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->getRoundedCornerColor(Landroid/content/Context;)I

    move-result v2

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->getStagePosition()I

    move-result v3

    const/16 v4, 0xf

    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    if-eqz v5, :cond_2

    iget-object v5, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->isEmbedded()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->getEmbedActivityMode()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    const/4 v4, 0x5

    goto :goto_0

    :cond_0
    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    const/16 v4, 0xa

    :cond_1
    :goto_0
    goto :goto_3

    :cond_2
    const/16 v5, 0x10

    if-ne v3, v5, :cond_3

    const/16 v4, 0xc

    goto :goto_3

    :cond_3
    const/16 v5, 0x40

    if-ne v3, v5, :cond_4

    const/4 v4, 0x3

    goto :goto_3

    :cond_4
    const/16 v5, 0x8

    const/16 v6, 0xf

    const/4 v7, 0x1

    if-ne v3, v5, :cond_6

    if-ne v1, v7, :cond_5

    goto :goto_1

    :cond_5
    const/16 v6, 0xa

    :goto_1
    move v4, v6

    goto :goto_3

    :cond_6
    const/16 v5, 0x20

    if-ne v3, v5, :cond_8

    if-ne v1, v7, :cond_7

    const/4 v6, 0x5

    goto :goto_2

    :cond_7
    nop

    :goto_2
    move v4, v6

    :goto_3
    iget v5, p0, Lcom/android/internal/policy/DecorView;->mMultiWindowRoundedCornerRadius:I

    invoke-super {p0, v4, v5}, Landroid/widget/FrameLayout;->semSetRoundedCorners(II)V

    invoke-super {p0, v4, v2}, Landroid/widget/FrameLayout;->semSetRoundedCornerColor(II)V

    return-void

    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateRoundedCornerForSplit: Invalid position 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DecorView"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist updateRoundedCornerStateIfNeeded()V
    .locals 11

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mActivityCurrentConfig:Landroid/content/res/Configuration;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v1

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v3, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/DecorView;->mRotationForRoundedCorner:I

    iget-object v3, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/DecorView;->mDisplayRotationForRoundedCorner:I

    const/4 v3, 0x0

    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MODE:Z

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    iget-object v4, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->isFlexPanelEnabled()Z

    move-result v4

    if-nez v4, :cond_e

    :cond_1
    iget-object v4, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->isPopOver()Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isFullscreenMode()Z

    move-result v4

    if-eqz v4, :cond_7

    iget v4, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v5, :cond_7

    iget-boolean v4, p0, Lcom/android/internal/policy/DecorView;->mHasDisplayCutout:Z

    if-eqz v4, :cond_7

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v4

    if-eqz v4, :cond_3

    iget v7, v4, Landroid/view/ViewRootImpl;->mRequestedLetterboxDirection:I

    goto :goto_0

    :cond_3
    move v7, v6

    :goto_0
    iget v8, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-direct {p0, v8, v7}, Lcom/android/internal/policy/DecorView;->getRoundedCornersInLandscapeMode(II)I

    move-result v8

    if-eqz v8, :cond_6

    and-int/lit8 v9, v7, 0x1

    if-eqz v9, :cond_4

    iget v9, p0, Lcom/android/internal/policy/DecorView;->mDeviceRoundedCornerTopRadius:I

    goto :goto_1

    :cond_4
    and-int/lit8 v9, v7, 0x2

    if-eqz v9, :cond_5

    iget v9, p0, Lcom/android/internal/policy/DecorView;->mDeviceRoundedCornerBottomRadius:I

    goto :goto_1

    :cond_5
    iget v9, p0, Lcom/android/internal/policy/DecorView;->mRoundedCornerRadiusForLetterBox:I

    :goto_1
    invoke-super {p0, v8, v9}, Landroid/widget/FrameLayout;->semSetRoundedCorners(II)V

    const/high16 v10, -0x1000000

    invoke-super {p0, v8, v10}, Landroid/widget/FrameLayout;->semSetRoundedCornerColor(II)V

    const/4 v3, 0x1

    :cond_6
    goto/16 :goto_3

    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isFullscreenMode()Z

    move-result v4

    if-eqz v4, :cond_8

    iget v4, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x1

    if-ne v4, v7, :cond_8

    iget-boolean v4, p0, Lcom/android/internal/policy/DecorView;->mIsShowNavigationBar:Z

    if-eqz v4, :cond_8

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7f5

    if-eq v4, v7, :cond_8

    invoke-direct {p0, v1}, Lcom/android/internal/policy/DecorView;->shouldDrawRoundedCornerInPortraitMode(Z)Z

    move-result v3

    if-eqz v3, :cond_e

    iget v4, p0, Lcom/android/internal/policy/DecorView;->mRoundedCornerRadius:I

    const/16 v7, 0xc

    invoke-super {p0, v7, v4}, Landroid/widget/FrameLayout;->semSetRoundedCorners(II)V

    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    invoke-direct {p0, v4}, Lcom/android/internal/policy/DecorView;->getCurrentColor(Lcom/android/internal/policy/DecorView$ColorViewState;)I

    move-result v4

    invoke-super {p0, v7, v4}, Landroid/widget/FrameLayout;->semSetRoundedCornerColor(II)V

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isSplitMode()Z

    move-result v4

    if-eqz v4, :cond_d

    if-eqz v1, :cond_d

    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/android/internal/policy/DecorView;->getCurrentBounds(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v4

    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_ROUNDED_CORNER:Z

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v7}, Lcom/android/internal/policy/PhoneWindow;->isFloating()Z

    move-result v7

    if-nez v7, :cond_9

    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v7}, Lcom/android/internal/policy/DecorView;->updateRoundedCornerForMultiSplit(Landroid/content/Context;)V

    goto :goto_2

    :cond_9
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-boolean v7, v7, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    if-eqz v7, :cond_a

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWidth()I

    move-result v8

    if-gt v7, v8, :cond_b

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getHeight()I

    move-result v8

    if-gt v7, v8, :cond_b

    :cond_a
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v7}, Lcom/android/internal/policy/DecorView;->updateRoundedCornerForSplit(Landroid/content/Context;)V

    :cond_b
    :goto_2
    const/4 v3, 0x1

    iput-boolean v6, p0, Lcom/android/internal/policy/DecorView;->mForceRoundedCorner:Z

    :cond_c
    goto :goto_3

    :cond_d
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isFreeformMode()Z

    move-result v4

    if-eqz v4, :cond_c

    if-eqz v1, :cond_c

    iget v4, p0, Lcom/android/internal/policy/DecorView;->mMultiWindowRoundedCornerRadius:I

    const/16 v7, 0xf

    invoke-super {p0, v7, v4}, Landroid/widget/FrameLayout;->semSetRoundedCorners(II)V

    iget v4, p0, Lcom/android/internal/policy/DecorView;->mFreeformOutlineColor:I

    invoke-super {p0, v7, v4}, Landroid/widget/FrameLayout;->semSetRoundedCornerColor(II)V

    const/4 v3, 0x1

    :cond_e
    :goto_3
    if-eqz v3, :cond_11

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isSplitMode()Z

    move-result v4

    iget v7, p0, Lcom/android/internal/policy/DecorView;->mRotationForRoundedCorner:I

    if-eqz v7, :cond_f

    iget v7, p0, Lcom/android/internal/policy/DecorView;->mRotationForRoundedCorner:I

    if-ne v7, v5, :cond_10

    :cond_f
    if-nez v4, :cond_10

    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mOverrideRoundedCornerBounds:Landroid/graphics/Rect;

    iget v6, p0, Lcom/android/internal/policy/DecorView;->mLastLeftInset:I

    iget v7, p0, Lcom/android/internal/policy/DecorView;->mLastTopInset:I

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWidth()I

    move-result v8

    iget v9, p0, Lcom/android/internal/policy/DecorView;->mLastRightInset:I

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getHeight()I

    move-result v9

    iget v10, p0, Lcom/android/internal/policy/DecorView;->mLastBottomInset:I

    sub-int/2addr v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_4

    :cond_10
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mOverrideRoundedCornerBounds:Landroid/graphics/Rect;

    iget v7, p0, Lcom/android/internal/policy/DecorView;->mLastLeftInset:I

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWidth()I

    move-result v8

    iget v9, p0, Lcom/android/internal/policy/DecorView;->mLastRightInset:I

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getHeight()I

    move-result v9

    invoke-virtual {v5, v7, v6, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    :goto_4
    goto :goto_5

    :cond_11
    invoke-super {p0, v6}, Landroid/widget/FrameLayout;->semSetRoundedCorners(I)V

    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mOverrideRoundedCornerBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    :goto_5
    return-void
.end method

.method private blacklist updateStatusGuard(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    iget-object v3, v0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    const/16 v4, 0x8

    if-eqz v3, :cond_f

    iget-object v3, v0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v3}, Lcom/android/internal/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_e

    iget-object v3, v0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v3}, Lcom/android/internal/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v6, 0x0

    iget-object v7, v0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v7}, Lcom/android/internal/widget/ActionBarContextView;->isShown()Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, v0, Lcom/android/internal/policy/DecorView;->mTempRect:Landroid/graphics/Rect;

    if-nez v7, :cond_0

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v0, Lcom/android/internal/policy/DecorView;->mTempRect:Landroid/graphics/Rect;

    :cond_0
    iget-object v7, v0, Lcom/android/internal/policy/DecorView;->mTempRect:Landroid/graphics/Rect;

    iget-object v8, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v8, v8, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v8, v1, v7}, Landroid/view/ViewGroup;->computeSystemWindowInsets(Landroid/view/WindowInsets;Landroid/graphics/Rect;)Landroid/view/WindowInsets;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v9

    invoke-virtual {v8}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v10

    invoke-virtual {v8}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v13

    invoke-virtual {v12}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v14

    iget v15, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ne v15, v9, :cond_1

    iget v15, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-ne v15, v10, :cond_1

    iget v15, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eq v15, v11, :cond_2

    :cond_1
    const/4 v6, 0x1

    iput v9, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v10, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v11, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :cond_2
    if-lez v9, :cond_3

    iget-object v15, v0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    if-nez v15, :cond_3

    new-instance v15, Landroid/view/View;

    iget-object v5, v0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-direct {v15, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v15, v0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    iget-object v5, v0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    iget v15, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/16 v4, 0x33

    move/from16 v16, v2

    const/4 v2, -0x1

    invoke-direct {v5, v2, v15, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    move-object v2, v5

    iput v13, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v14, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object v4, v0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    iget-object v5, v0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v5, v5, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    invoke-virtual {v0, v5}, Lcom/android/internal/policy/DecorView;->indexOfChild(Landroid/view/View;)I

    move-result v5

    invoke-virtual {v0, v4, v5, v2}, Lcom/android/internal/policy/DecorView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_3
    move/from16 v16, v2

    iget-object v2, v0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ne v4, v5, :cond_4

    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    if-ne v4, v13, :cond_4

    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    if-eq v4, v14, :cond_6

    :cond_4
    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v13, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v14, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object v4, v0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_5
    :goto_0
    nop

    :cond_6
    :goto_1
    iget-object v2, v0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    const/4 v4, 0x1

    if-eqz v2, :cond_7

    move v2, v4

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_8

    iget-object v5, v0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->updateStatusGuardColor()V

    :cond_8
    iget-object v5, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v5}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeaturesPrivate()I

    move-result v5

    and-int/lit16 v5, v5, 0x400

    if-nez v5, :cond_9

    goto :goto_3

    :cond_9
    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_a

    if-eqz v2, :cond_a

    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v5

    const/4 v15, 0x0

    invoke-virtual {v1, v15, v5, v15, v15}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object v1

    :cond_a
    move/from16 v16, v2

    const/4 v2, 0x0

    goto :goto_5

    :cond_b
    move/from16 v16, v2

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

    :cond_d
    :goto_4
    const/4 v6, 0x1

    const/4 v2, 0x0

    iput v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :goto_5
    if-eqz v6, :cond_10

    iget-object v4, v0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v4, v3}, Lcom/android/internal/widget/ActionBarContextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    :cond_e
    move/from16 v16, v2

    const/4 v2, 0x0

    goto :goto_6

    :cond_f
    move/from16 v16, v2

    const/4 v2, 0x0

    :cond_10
    :goto_6
    iget-object v3, v0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    if-eqz v3, :cond_12

    iget-object v3, v0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    if-eqz v16, :cond_11

    move v4, v2

    goto :goto_7

    :cond_11
    const/16 v4, 0x8

    :goto_7
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_12
    return-object v1
.end method

.method private blacklist updateStatusGuardColor()V
    .locals 4

    nop

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWindowSystemUiVisibility()I

    move-result v0

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    const v3, 0x1060227

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    const v3, 0x1060226

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method blacklist clearContentView()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v2, v2, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v2, v2, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->removeViewAt(I)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected whitelist dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9

    iget v0, p0, Lcom/android/internal/policy/DecorView;->mPopOverContentAlpha:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getHeight()I

    move-result v2

    int-to-float v6, v1

    int-to-float v7, v2

    iget v3, p0, Lcom/android/internal/policy/DecorView;->mPopOverContentAlpha:F

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v3, v4

    float-to-int v8, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFI)I

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public whitelist dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v1, :cond_0

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_0
    return v1
.end method

.method public whitelist dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    if-eqz v4, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v5, v5, Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I

    if-lez v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v5, v5, Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I

    if-eq v5, v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/DecorView;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v3

    :cond_1
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v5, v5, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v5, v5, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    iget-boolean v5, v5, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    invoke-virtual {v5, v6, v0, p1, v2}, Lcom/android/internal/policy/PhoneWindow;->performPanelShortcut(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v2

    if-eqz v2, :cond_2

    return v3

    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v2

    if-eqz v2, :cond_3

    iget v5, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v5, :cond_3

    invoke-interface {v2, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v5

    goto :goto_1

    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v5

    :goto_1
    nop

    if-eqz v5, :cond_4

    return v3

    :cond_4
    if-eqz v4, :cond_5

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v3, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-virtual {v2, v3, v5, p1}, Lcom/android/internal/policy/PhoneWindow;->onKeyDown(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v3, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-virtual {v2, v3, v5, p1}, Lcom/android/internal/policy/PhoneWindow;->onKeyUp(IILandroid/view/KeyEvent;)Z

    move-result v2

    :goto_2
    return v2
.end method

.method public whitelist dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 7

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v2, v2, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v0, v2, v3, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->performPanelShortcut(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v2, v2, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v2, v2, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    iput-boolean v1, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isHandled:Z

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v2, :cond_2

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    :goto_0
    if-eqz v2, :cond_3

    return v1

    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v5, v5, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v5, v3, p1}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    invoke-virtual {v5, v3, v6, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->performPanelShortcut(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v2

    iput-boolean v4, v3, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    if-eqz v2, :cond_4

    return v1

    :cond_4
    return v4
.end method

.method public whitelist dispatchPointerCaptureChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchPointerCaptureChanged(Z)V

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onPointerCaptureChanged(Z)V

    :cond_0
    return-void
.end method

.method public blacklist dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    return v1
.end method

.method public whitelist dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v1, :cond_0

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_0
    return v1
.end method

.method public whitelist dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v1, :cond_0

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_0
    return v1
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .locals 9

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateRoundedCornerStateIfNeeded()V

    iget v0, p0, Lcom/android/internal/policy/DecorView;->mPopOverBackgroundAlpha:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mPopOverClipOutPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mPopOverClipOutPath:Landroid/graphics/Path;

    const/high16 v3, 0x41d00000    # 26.0f

    invoke-direct {p0, v3}, Lcom/android/internal/policy/DecorView;->dpToPixel(F)F

    move-result v3

    int-to-float v4, v0

    int-to-float v5, v1

    const/4 v6, 0x0

    invoke-static {v3, v6, v6, v4, v5}, Lcom/samsung/android/util/SemViewUtils;->getSmoothCornerRectPath(FFFFF)Landroid/graphics/Path;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mPopOverClipOutPath:Landroid/graphics/Path;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mPopOverPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->reset()V

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mPopOverPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/internal/policy/DecorView;->mPopOverBackgroundAlpha:F

    iget v4, p0, Lcom/android/internal/policy/DecorView;->mPopOverBackgroundColor:I

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x437f0000    # 255.0f

    div-float/2addr v4, v5

    iget v7, p0, Lcom/android/internal/policy/DecorView;->mPopOverBackgroundColor:I

    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v5

    iget v8, p0, Lcom/android/internal/policy/DecorView;->mPopOverBackgroundColor:I

    invoke-static {v8}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v5

    invoke-static {v3, v4, v7, v8}, Landroid/graphics/Color;->argb(FFFF)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mPopOverPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/BlendMode;->SRC:Landroid/graphics/BlendMode;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    new-instance v2, Landroid/graphics/RectF;

    int-to-float v3, v0

    int-to-float v4, v1

    invoke-direct {v2, v6, v6, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mPopOverPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mPopOverClipOutPath:Landroid/graphics/Path;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipOutPath(Landroid/graphics/Path;)Z

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mMenuBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mMenuBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public blacklist drawFrameIfNeeded(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->canDrawFrame()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFrameDrawHelper:Lcom/samsung/android/multiwindow/FrameDrawHelper;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/multiwindow/FrameDrawHelper;

    invoke-direct {v0, p0}, Lcom/samsung/android/multiwindow/FrameDrawHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mFrameDrawHelper:Lcom/samsung/android/multiwindow/FrameDrawHelper;

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFrameDrawHelper:Lcom/samsung/android/multiwindow/FrameDrawHelper;

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isActivity()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/FrameDrawHelper;->updateResources(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFrameDrawHelper:Lcom/samsung/android/multiwindow/FrameDrawHelper;

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->computeCaptionHeight()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/multiwindow/FrameDrawHelper;->drawFrame(Landroid/graphics/Canvas;I)V

    return-void
.end method

.method blacklist finishChanging()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mChanging:Z

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->drawableChanged()V

    return-void
.end method

.method public whitelist gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 5

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isFreeformMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/policy/DecorView;->mLastCaptionType:I

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Region;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->canDrawFrame()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWidth()I

    move-result v2

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->computeCaptionHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mTmpRect:Landroid/graphics/Rect;

    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    :cond_0
    return v0
.end method

.method public blacklist getAccessibilityViewId()I
    .locals 1

    const v0, 0x7ffffffe

    return v0
.end method

.method public whitelist getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mOriginalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public blacklist getBackgroundFallback()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

    invoke-virtual {v0}, Lcom/android/internal/widget/BackgroundFallback;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDexTaskDockingState()I
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/DecorView;->mLastDockingState:I

    return v0
.end method

.method public blacklist getLastBackgroundResource()I
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundResource:I

    return v0
.end method

.method blacklist getNavigationBarBackgroundView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v0, v0, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    return-object v0
.end method

.method public whitelist getResources()Landroid/content/res/Resources;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method blacklist getStatusBarBackgroundView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v0, v0, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    return-object v0
.end method

.method public whitelist getWindowInsetsController()Landroid/view/WindowInsetsController;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/widget/FrameLayout;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPendingInsetsController:Landroid/view/PendingInsetsController;

    return-object v0
.end method

.method public blacklist getWindowingMode()I
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/DecorView;->mWindowingMode:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/DecorView;->mWindowingMode:I

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    return v0
.end method

.method public blacklist hasWindowFocusInTask()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mHasWindowFocusInTask:Z

    return v0
.end method

.method public greylist hidden_semSetForceHideRoundedCorner(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/internal/policy/DecorView;->mForceHideRoundedCorner:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "hidden_semSetForceHideRoundedCorner() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DecorView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->semSetRoundedCorners(I)V

    return-void
.end method

.method public blacklist isDialogInPopOver()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mPreventPopOverElevation:Z

    if-nez v0, :cond_3

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

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isFullscreenMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isSplitMode()Z

    move-result v0

    if-eqz v0, :cond_2

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

    :cond_3
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mPreventPopOverElevation:Z

    return v0
.end method

.method blacklist isDrawLegacyNavigationBarBackground()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mDrawLegacyNavigationBarBackground:Z

    return v0
.end method

.method public blacklist isFreeformMode()Z
    .locals 2

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

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

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

.method public blacklist isNonFullscreenWindowInFreeform()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isFreeformMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isFullSize()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x63

    if-gt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public blacklist isSplitMode()Z
    .locals 1

    nop

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-static {v0}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(Landroid/app/WindowConfiguration;)Z

    move-result v0

    return v0
.end method

.method public whitelist isTransitionGroup()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 5

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, 0x100

    if-nez v1, :cond_1

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v2, -0x2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v4

    iput v4, v1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v4

    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v4

    invoke-virtual {p1, v3, v1, v3, v4}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v2

    invoke-virtual {p1, v1, v3, v2, v3}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFrameOffsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetsAsRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->updateStatusGuard(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->drawableChanged()V

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->updateDisplayCutoutBackground(Landroid/view/WindowInsets;)V

    return-object p1
.end method

.method protected whitelist onAttachedToWindow()V
    .locals 6

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/DecorView;->mUserId:I

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    instance-of v2, v0, Landroid/app/Activity;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v2

    if-eqz v2, :cond_0

    iput-boolean v3, p0, Lcom/android/internal/policy/DecorView;->mIsKnoxActivity:Z

    :cond_0
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7db

    const/4 v5, 0x0

    if-ne v2, v4, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v5

    :goto_0
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mIsKeyboardShown:Z

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v2

    if-eqz v2, :cond_2

    move v5, v3

    :cond_2
    iput-boolean v5, p0, Lcom/android/internal/policy/DecorView;->mIsFullViewShown:Z

    :try_start_0
    iget-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mIsKeyboardShown:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mIsFullViewShown:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mIsKnoxActivity:Z

    if-eqz v2, :cond_5

    :cond_3
    iget v2, p0, Lcom/android/internal/policy/DecorView;->mUserId:I

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-nez v2, :cond_4

    iget v2, p0, Lcom/android/internal/policy/DecorView;->mUserId:I

    invoke-static {v2}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->setKnoxBadge()V

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->setKnoxBadgePosition()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    goto :goto_1

    :catch_0
    move-exception v2

    const-string v4, "DecorView_KNOX"

    const-string/jumbo v5, "failed to set knox badge"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_6

    iget v1, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v1, :cond_6

    invoke-interface {v0}, Landroid/view/Window$Callback;->onAttachedToWindow()V

    :cond_6
    iget v1, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->openPanelsAfterRestore()V

    :cond_7
    iget-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mWindowResizeCallbacksAdded:Z

    if-nez v1, :cond_8

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewRootImpl;->addWindowCallbacks(Landroid/view/WindowCallbacks;)V

    iput-boolean v3, p0, Lcom/android/internal/policy/DecorView;->mWindowResizeCallbacksAdded:Z

    :cond_8
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateBackgroundBlurRadius()V

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/PhoneWindow;->onViewRootImplSet(Landroid/view/ViewRootImpl;)V

    return-void
.end method

.method public blacklist onCloseSystemDialogs(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->closeAllPanels()V

    :cond_0
    return-void
.end method

.method protected whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/policy/DecorView;->mLastDisplayDeviceType:I

    iget v2, p1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    iput v2, p0, Lcom/android/internal/policy/DecorView;->mLastDisplayDeviceType:I

    iget v2, p0, Lcom/android/internal/policy/DecorView;->mLastDisplayDeviceType:I

    if-eq v2, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v2, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->isPopOver()Z

    move-result v3

    iget-boolean v4, p0, Lcom/android/internal/policy/DecorView;->mIsPopOver:Z

    if-eq v4, v3, :cond_1

    iput-boolean v3, p0, Lcom/android/internal/policy/DecorView;->mIsPopOver:Z

    const/4 v0, 0x1

    iget-boolean v4, p0, Lcom/android/internal/policy/DecorView;->mIsPopOver:Z

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->removePopOverElevation()V

    :cond_1
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->isPopOverWithoutOutlineEffect()Z

    move-result v4

    iget-boolean v5, p0, Lcom/android/internal/policy/DecorView;->mIsPopOverWithoutOutlineEffect:Z

    if-eq v5, v4, :cond_2

    iput-boolean v4, p0, Lcom/android/internal/policy/DecorView;->mIsPopOverWithoutOutlineEffect:Z

    const/4 v0, 0x1

    :cond_2
    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->drawableChanged()V

    :cond_3
    iget-boolean v5, p0, Lcom/android/internal/policy/DecorView;->mIsPopOver:Z

    if-eqz v5, :cond_7

    iget-boolean v5, p0, Lcom/android/internal/policy/DecorView;->mIsPopOverWithoutOutlineEffect:Z

    if-nez v5, :cond_7

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v6

    instance-of v6, v6, Lcom/android/internal/app/ChooserActivity;

    if-eqz v6, :cond_4

    const v6, 0x10603d0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/android/internal/policy/DecorView;->mPopOverBackgroundColor:I

    goto :goto_1

    :cond_4
    iget v6, p0, Lcom/android/internal/policy/DecorView;->mPopOverBackgroundColor:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_6

    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/util/SemViewUtils;->isLightTheme(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_5

    const v6, 0x1060344

    goto :goto_0

    :cond_5
    const v6, 0x1060345

    :goto_0
    nop

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v6

    iput v6, p0, Lcom/android/internal/policy/DecorView;->mPopOverBackgroundColor:I

    :cond_6
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mPopOverBackgroundColor="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/policy/DecorView;->mPopOverBackgroundColor:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "DecorView"

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewRootImpl;->requestInvalidateRootRenderNode()V

    :cond_7
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateOutlineProvider()V

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isFreeformMode()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_a

    nop

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v3, 0x20

    if-ne v0, v3, :cond_8

    move v0, v2

    goto :goto_2

    :cond_8
    move v0, v1

    :goto_2
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v0, :cond_9

    const v4, 0x106032f

    goto :goto_3

    :cond_9
    const v4, 0x1060330

    :goto_3
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/DecorView;->mFreeformOutlineColor:I

    :cond_a
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_DEX:Z

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Landroid/content/res/Configuration;->isDesktopModeEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsDexEnabled:Z

    :cond_b
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateOutlineProvider()V

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->initializeElevation()V

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v3, v3, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMinor:Landroid/util/TypedValue;

    const v4, 0x1010357

    invoke-virtual {v0, v4, v3, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v3, v3, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMajor:Landroid/util/TypedValue;

    const v4, 0x1010356

    invoke-virtual {v0, v4, v3, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v2, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v2, p0, Lcom/android/internal/policy/DecorView;->mLastSmallestScreenWidthDp:I

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getOnBackInvokedDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/window/WindowOnBackInvokedDispatcher;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_c
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->refreshGestureNavBarSettings()V

    :try_start_0
    iget-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mIsKeyboardShown:Z

    if-nez v2, :cond_d

    iget-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mIsFullViewShown:Z

    if-nez v2, :cond_d

    iget-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mIsKnoxActivity:Z

    if-eqz v2, :cond_f

    :cond_d
    iget v2, p0, Lcom/android/internal/policy/DecorView;->mUserId:I

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-nez v2, :cond_e

    iget v2, p0, Lcom/android/internal/policy/DecorView;->mUserId:I

    invoke-static {v2}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v2

    if-eqz v2, :cond_f

    :cond_e
    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget v3, p0, Lcom/android/internal/policy/DecorView;->mDensityForKnoxBadge:I

    if-eq v2, v3, :cond_f

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->setBadgeResource()V

    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput v2, p0, Lcom/android/internal/policy/DecorView;->mDensityForKnoxBadge:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_f
    goto :goto_4

    :catch_0
    move-exception v2

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mLogTag:Ljava/lang/String;

    const-string/jumbo v4, "failed to remove knox badge"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->updateDeviceDefaultNavigationBarColor()V

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mLegacyNavigationBarBackgroundPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow;->getDeviceDefaultNavigationBarColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->updateDefaultNavigationBarColor()V

    iget v2, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundResource:I

    const v3, 0x1080cdb

    if-ne v2, v3, :cond_10

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v3, v2, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v3, :cond_11

    move-object v3, v2

    check-cast v3, Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/StateListDrawable;->getState()[I

    move-result-object v4

    if-eqz v4, :cond_11

    array-length v5, v4

    if-lez v5, :cond_11

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_11

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v5, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundResource:I

    invoke-virtual {v1, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/DecorView;->setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    :cond_10
    iget v2, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundResource:I

    const v3, 0x1080cd8

    if-eq v2, v3, :cond_12

    iget v2, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundResource:I

    const v3, 0x1080cd9

    if-ne v2, v3, :cond_11

    goto :goto_6

    :cond_11
    :goto_5
    goto :goto_8

    :cond_12
    :goto_6
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    instance-of v4, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_13

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v4, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundResource:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_7

    :cond_13
    instance-of v4, v2, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v4, :cond_14

    move-object v4, v2

    check-cast v4, Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/StateListDrawable;->getState()[I

    move-result-object v5

    if-eqz v5, :cond_14

    array-length v6, v5

    if-lez v6, :cond_14

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_14

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v6, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundResource:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :cond_14
    :goto_7
    if-eqz v3, :cond_15

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/DecorView;->setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_15
    :goto_8
    return-void
.end method

.method public blacklist onContentDrawn(IIII)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected whitelist onDetachedFromWindow()V
    .locals 5

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v1, :cond_0

    invoke-interface {v0}, Landroid/view/Window$Callback;->onDetachedFromWindow()V

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v1}, Lcom/android/internal/widget/DecorContentParent;->dismissPopups()V

    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mShowPrimaryActionModePopup:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/DecorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_2
    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    invoke-virtual {v1}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->dismiss()V

    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->removeBackgroundBlurDrawable()V

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v4, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v4, :cond_5

    iget-object v4, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuBuilder;->close()V

    :cond_5
    iget-boolean v4, p0, Lcom/android/internal/policy/DecorView;->mWindowResizeCallbacksAdded:Z

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/ViewRootImpl;->removeWindowCallbacks(Landroid/view/WindowCallbacks;)V

    iput-boolean v3, p0, Lcom/android/internal/policy/DecorView;->mWindowResizeCallbacksAdded:Z

    :cond_6
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mPendingInsetsController:Landroid/view/PendingInsetsController;

    invoke-virtual {v3}, Landroid/view/PendingInsetsController;->detach()V

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadgeViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadgeDisplayRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/DecorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->removeKnoxBadge()V

    :cond_7
    iget v3, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundResource:I

    const v4, 0x1080cdb

    if-eq v3, v4, :cond_8

    iget v3, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundResource:I

    const v4, 0x1080cd8

    if-eq v3, v4, :cond_8

    iget v3, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundResource:I

    const v4, 0x1080cd9

    if-ne v3, v4, :cond_9

    :cond_8
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/DecorView;->setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_9
    return-void
.end method

.method public blacklist onDexTaskDockingChanged(I)V
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/DecorView;->mLastDockingState:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/internal/policy/DecorView;->mLastDockingState:I

    const-string v0, "Dex docking state Changed"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/DecorView;->requestInvalidateRenderNode(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public whitelist onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

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

    return-void
.end method

.method public whitelist onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    const/4 v2, 0x1

    if-ltz v1, :cond_0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {p0, v1, v3}, Lcom/android/internal/policy/DecorView;->isOutOfBounds(II)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v5, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/PhoneWindow;->closePanel(I)V

    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getOnBackInvokedDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/window/WindowOnBackInvokedDispatcher;->onMotionEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getOnBackInvokedDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v3

    invoke-virtual {v3}, Landroid/window/WindowOnBackInvokedDispatcher;->isBackGestureInProgress()Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_1
    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWearGestureInterceptionDetector:Lcom/android/internal/policy/WearGestureInterceptionDetector;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWearGestureInterceptionDetector:Lcom/android/internal/policy/WearGestureInterceptionDetector;

    invoke-virtual {v3}, Lcom/android/internal/policy/WearGestureInterceptionDetector;->isIntercepting()Z

    move-result v3

    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mWearGestureInterceptionDetector:Lcom/android/internal/policy/WearGestureInterceptionDetector;

    invoke-virtual {v4, p1}, Lcom/android/internal/policy/WearGestureInterceptionDetector;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eq v3, v4, :cond_2

    invoke-virtual {v1, v4}, Landroid/view/ViewRootImpl;->updateDecorViewGestureInterception(Z)V

    :cond_2
    if-eqz v4, :cond_3

    return v2

    :cond_3
    const/4 v2, 0x0

    return v2
.end method

.method protected whitelist onLayout(ZIIII)V
    .locals 2

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mApplyFloatingVerticalInsets:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->offsetTopAndBottom(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mApplyFloatingHorizontalInsets:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->offsetLeftAndRight(I)V

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateElevation()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mAllowUpdateElevation:Z

    if-eqz p1, :cond_2

    iget-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mDrawLegacyNavigationBarBackground:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->requestInvalidateRootRenderNode()V

    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mIsPopOver:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mShowPopOver:Z

    if-eq v1, v0, :cond_5

    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mShowPopOver:Z

    iget-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mShowPopOver:Z

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->showPopOver()V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->hidePopOver()V

    :cond_5
    :goto_1
    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->requestInvalidateRootRenderNode()V

    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadgeViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    if-eqz v0, :cond_7

    iput p2, p0, Lcom/android/internal/policy/DecorView;->mKnoxLayoutLeft:I

    iput p4, p0, Lcom/android/internal/policy/DecorView;->mKnoxLayoutRight:I

    iput p5, p0, Lcom/android/internal/policy/DecorView;->mKnoxLayoutBottom:I

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadgeDisplayRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->post(Ljava/lang/Runnable;)Z

    :cond_7
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .locals 17

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    nop

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

    :goto_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    const/4 v8, 0x0

    iput-boolean v4, v0, Lcom/android/internal/policy/DecorView;->mApplyFloatingHorizontalInsets:Z

    const/4 v9, 0x6

    const/4 v10, 0x5

    const/high16 v11, 0x40000000    # 2.0f

    const/high16 v12, -0x80000000

    if-ne v6, v12, :cond_5

    iget-object v13, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    if-eqz v3, :cond_1

    iget-object v13, v13, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMinor:Landroid/util/TypedValue;

    goto :goto_1

    :cond_1
    iget-object v13, v13, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMajor:Landroid/util/TypedValue;

    :goto_1
    if-eqz v13, :cond_5

    iget v14, v13, Landroid/util/TypedValue;->type:I

    if-eqz v14, :cond_5

    iget v14, v13, Landroid/util/TypedValue;->type:I

    if-ne v14, v10, :cond_2

    invoke-virtual {v13, v2}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v14

    float-to-int v14, v14

    goto :goto_2

    :cond_2
    iget v14, v13, Landroid/util/TypedValue;->type:I

    if-ne v14, v9, :cond_3

    iget v14, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v14, v14

    iget v15, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v15, v15

    invoke-virtual {v13, v14, v15}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v14

    float-to-int v14, v14

    goto :goto_2

    :cond_3
    const/4 v14, 0x0

    :goto_2
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    if-lez v14, :cond_4

    nop

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v9, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    const/4 v8, 0x1

    goto :goto_3

    :cond_4
    iget-object v9, v0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    sub-int v9, v15, v9

    iget-object v11, v0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v11

    invoke-static {v9, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    iput-boolean v5, v0, Lcom/android/internal/policy/DecorView;->mApplyFloatingHorizontalInsets:Z

    goto :goto_3

    :cond_5
    move/from16 v9, p1

    :goto_3
    iput-boolean v4, v0, Lcom/android/internal/policy/DecorView;->mApplyFloatingVerticalInsets:Z

    if-ne v7, v12, :cond_a

    if-eqz v3, :cond_6

    iget-object v4, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v4, v4, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMajor:Landroid/util/TypedValue;

    goto :goto_4

    :cond_6
    iget-object v4, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v4, v4, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMinor:Landroid/util/TypedValue;

    :goto_4
    nop

    if-eqz v4, :cond_a

    iget v11, v4, Landroid/util/TypedValue;->type:I

    if-eqz v11, :cond_a

    iget v11, v4, Landroid/util/TypedValue;->type:I

    if-ne v11, v10, :cond_7

    invoke-virtual {v4, v2}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v11

    float-to-int v11, v11

    goto :goto_5

    :cond_7
    iget v11, v4, Landroid/util/TypedValue;->type:I

    const/4 v13, 0x6

    if-ne v11, v13, :cond_8

    iget v11, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v11, v11

    iget v13, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v13, v13

    invoke-virtual {v4, v11, v13}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v11

    float-to-int v11, v11

    goto :goto_5

    :cond_8
    const/4 v11, 0x0

    :goto_5
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    if-lez v11, :cond_9

    nop

    invoke-static {v11, v13}, Ljava/lang/Math;->min(II)I

    move-result v14

    const/high16 v15, 0x40000000    # 2.0f

    invoke-static {v14, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    goto :goto_6

    :cond_9
    iget-object v14, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v14}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v14

    iget v14, v14, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v14, v14, 0x100

    if-nez v14, :cond_a

    iget-object v14, v0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    sub-int v14, v13, v14

    iget-object v15, v0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v14, v15

    invoke-static {v14, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    iput-boolean v5, v0, Lcom/android/internal/policy/DecorView;->mApplyFloatingVerticalInsets:Z

    goto :goto_6

    :cond_a
    move/from16 v14, p2

    :goto_6
    invoke-super {v0, v9, v14}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getMeasuredWidth()I

    move-result v4

    const/4 v11, 0x0

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v4, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    if-nez v8, :cond_11

    if-ne v6, v12, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    iget v12, v12, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v13, v0, Lcom/android/internal/policy/DecorView;->mLastSmallestScreenWidthDp:I

    if-eq v13, v12, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v13

    iget-object v15, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v15, v15, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMinor:Landroid/util/TypedValue;

    const v10, 0x1010357

    invoke-virtual {v13, v10, v15, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget-object v10, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v10, v10, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMajor:Landroid/util/TypedValue;

    const v15, 0x1010356

    invoke-virtual {v13, v15, v10, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iput v12, v0, Lcom/android/internal/policy/DecorView;->mLastSmallestScreenWidthDp:I

    :cond_b
    iget-object v10, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    if-eqz v3, :cond_c

    iget-object v10, v10, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMinor:Landroid/util/TypedValue;

    goto :goto_7

    :cond_c
    iget-object v10, v10, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMajor:Landroid/util/TypedValue;

    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v12

    invoke-static {}, Lcom/android/window/flags/Flags;->insetsDecoupledConfiguration()Z

    move-result v13

    if-eqz v13, :cond_e

    if-eqz v12, :cond_e

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    iget-object v13, v13, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v13}, Landroid/app/WindowConfiguration;->getStage()I

    move-result v13

    if-eqz v13, :cond_d

    invoke-virtual {v12}, Landroid/view/WindowInsets;->getFrame()Landroid/util/Size;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v13

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v15

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v16

    or-int v15, v15, v16

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v16

    or-int v15, v15, v16

    invoke-virtual {v13, v15}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v13

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v15

    move/from16 v16, v3

    iget v3, v13, Landroid/graphics/Insets;->left:I

    sub-int/2addr v15, v3

    iget v3, v13, Landroid/graphics/Insets;->right:I

    sub-int/2addr v15, v3

    int-to-float v3, v15

    goto :goto_9

    :cond_d
    move/from16 v16, v3

    goto :goto_8

    :cond_e
    move/from16 v16, v3

    :goto_8
    nop

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v3, v3

    invoke-static {v5, v3, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    :goto_9
    iget v5, v10, Landroid/util/TypedValue;->type:I

    if-eqz v5, :cond_12

    iget v5, v10, Landroid/util/TypedValue;->type:I

    const/4 v13, 0x5

    if-ne v5, v13, :cond_f

    invoke-virtual {v10, v2}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    goto :goto_a

    :cond_f
    iget v5, v10, Landroid/util/TypedValue;->type:I

    const/4 v13, 0x6

    if-ne v5, v13, :cond_10

    invoke-virtual {v10, v3, v3}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v5

    float-to-int v5, v5

    goto :goto_a

    :cond_10
    const/4 v5, 0x0

    :goto_a
    if-ge v4, v5, :cond_12

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v5, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    const/4 v11, 0x1

    goto :goto_b

    :cond_11
    move/from16 v16, v3

    :cond_12
    :goto_b
    if-eqz v11, :cond_13

    invoke-super {v0, v9, v14}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :cond_13
    return-void
.end method

.method public blacklist onMovedToDisplay(ILandroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMovedToDisplay(ILandroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->updateDisplay(I)V

    return-void
.end method

.method public blacklist onPostDraw(Landroid/graphics/RecordingCanvas;)V
    .locals 7

    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->drawLegacyNavigationBarBackground(Landroid/graphics/RecordingCanvas;)V

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isActivity()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isFullSize()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsPopOver:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->isFloating()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPopOverFramePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPopOverFramePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPopOverFramePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPopOverFramePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v2, 0x20

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mPopOverFramePaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_3

    const v2, 0x66999999

    goto :goto_1

    :cond_3
    const v2, -0x333334

    :goto_1
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mPopOverFramePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getHeight()I

    move-result v2

    const/high16 v3, 0x41d00000    # 26.0f

    invoke-direct {p0, v3}, Lcom/android/internal/policy/DecorView;->dpToPixel(F)F

    move-result v3

    int-to-float v4, v1

    int-to-float v5, v2

    const/4 v6, 0x0

    invoke-static {v3, v6, v6, v4, v5}, Lcom/samsung/android/util/SemViewUtils;->getSmoothCornerRectPath(FFFFF)Landroid/graphics/Path;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mPopOverFramePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/RecordingCanvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/DecorView;->drawFrameIfNeeded(Landroid/graphics/Canvas;)V

    :goto_2
    return-void
.end method

.method public blacklist onRequestDraw(Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->reportDrawFinish()V

    :cond_1
    return-void
.end method

.method blacklist onResourcesLoaded(Landroid/view/LayoutInflater;I)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mLastOutlineProvider:Landroid/view/ViewOutlineProvider;

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateOutlineProvider()V

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/internal/policy/DecorView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->initializeElevation()V

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v1, p0, Lcom/android/internal/policy/DecorView;->mLastSmallestScreenWidthDp:I

    return-void
.end method

.method public blacklist onRootViewScrollYChanged(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/policy/DecorView;->mRootScrollY:I

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateColorViewTranslations()V

    return-void
.end method

.method public blacklist onSystemBarAppearanceChanged(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/PhoneWindow;->dispatchOnSystemBarAppearanceChanged(I)V

    :cond_0
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/DecorView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public blacklist onWindowDragResizeEnd()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->requestInvalidateRootRenderNode()V

    return-void
.end method

.method public blacklist onWindowDragResizeStart(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->requestInvalidateRootRenderNode()V

    return-void
.end method

.method public whitelist onWindowFocusChanged(Z)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->closePanel(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_5

    iget v2, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v2, :cond_5

    sget-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_MULTISTAR_STAY_FOCUS_ACTIVITY_DYNAMIC_ENABLED:Z

    if-eqz v2, :cond_4

    instance-of v2, v0, Landroid/app/Activity;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_4

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isActivityHomeOrRecent()Z

    move-result v2

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mStayFocus:Z

    if-nez v2, :cond_2

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/Window$Callback;->onWindowFocusChanged(Z)V

    iput-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mStayFocus:Z

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/policy/DecorView;->mStayFocus:Z

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Landroid/app/ActivityThread;->mayStayActivityFocus(Landroid/os/IBinder;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {v0, v1}, Landroid/view/Window$Callback;->onWindowFocusChanged(Z)V

    iput-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mStayFocus:Z

    :cond_3
    goto :goto_0

    :cond_4
    iput-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mStayFocus:Z

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowFocusChanged(Z)V

    :cond_5
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1, p1}, Landroid/view/ActionMode;->onWindowFocusChanged(Z)V

    :cond_6
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1, p1}, Landroid/view/ActionMode;->onWindowFocusChanged(Z)V

    :cond_7
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateElevation()V

    return-void
.end method

.method public blacklist onWindowFocusInTaskChanged(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mHasWindowFocusInTask:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/internal/policy/DecorView;->mHasWindowFocusInTask:Z

    :cond_0
    return-void
.end method

.method public blacklist onWindowSizeIsChanging(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public whitelist onWindowSystemUiVisibilityChanged(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateStatusGuardColor()V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mKnoxBadgeViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getSystemUiVisibility()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWindowSystemUiVisibility()I

    move-result v1

    or-int/2addr v0, v1

    and-int/lit16 v1, v0, 0x1800

    if-eqz v1, :cond_1

    and-int/lit8 v1, v0, 0x6

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->hideKnoxBadge()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DecorView_KNOX"

    const-string/jumbo v2, "failed to remove knox badge"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public blacklist onWindowingModeChanged(IZ)V
    .locals 6

    iput p1, p0, Lcom/android/internal/policy/DecorView;->mWindowingMode:I

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/policy/DecorView;->mLastDisplayDeviceType:I

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    iput v2, p0, Lcom/android/internal/policy/DecorView;->mLastDisplayDeviceType:I

    iget v2, p0, Lcom/android/internal/policy/DecorView;->mLastDisplayDeviceType:I

    if-eq v2, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    nop

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->isPopOver()Z

    move-result v3

    iget-boolean v4, p0, Lcom/android/internal/policy/DecorView;->mIsPopOver:Z

    if-eq v4, v3, :cond_1

    iput-boolean v3, p0, Lcom/android/internal/policy/DecorView;->mIsPopOver:Z

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->isPopOverWithoutOutlineEffect()Z

    move-result v4

    iget-boolean v5, p0, Lcom/android/internal/policy/DecorView;->mIsPopOverWithoutOutlineEffect:Z

    if-eq v5, v4, :cond_2

    iput-boolean v4, p0, Lcom/android/internal/policy/DecorView;->mIsPopOverWithoutOutlineEffect:Z

    const/4 v0, 0x1

    :cond_2
    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->drawableChanged()V

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateOutlineProvider()V

    :cond_3
    const-string/jumbo v0, "window_mode_changed"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/DecorView;->requestInvalidateRenderNode(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist preventPopOverElevation()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mPreventPopOverElevation:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->setElevation(F)V

    return-void
.end method

.method public blacklist providePendingInsetsController()Landroid/view/PendingInsetsController;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPendingInsetsController:Landroid/view/PendingInsetsController;

    return-object v0
.end method

.method public blacklist releaseActivityFocusIfNeeded()V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

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

    invoke-interface {v0, v2}, Landroid/view/Window$Callback;->onWindowFocusChanged(Z)V

    :cond_0
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mStayFocus:Z

    return-void
.end method

.method blacklist removeBackgroundBlurDrawable()V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mCrossWindowBlurEnabledListener:Ljava/util/function/Consumer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Landroid/view/WindowManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mCrossWindowBlurEnabledListener:Ljava/util/function/Consumer;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeCrossWindowBlurEnabledListener(Ljava/util/function/Consumer;)V

    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mCrossWindowBlurEnabledListener:Ljava/util/function/Consumer;

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurDrawable:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateBackgroundDrawable()V

    return-void
.end method

.method public blacklist removePopOverElevation()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->setElevation(F)V

    return-void
.end method

.method public blacklist requestKeyboardShortcuts(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v2

    invoke-interface {v2, p1, v1, p2}, Landroid/view/Window$Callback;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    :cond_1
    return-void
.end method

.method public whitelist semSetRoundedCorners(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mForceRoundedCorner:Z

    iput p1, p0, Lcom/android/internal/policy/DecorView;->mRoundedCornerMode:I

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->semSetRoundedCorners(I)V

    return-void
.end method

.method public whitelist sendAccessibilityEvent(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    :goto_0
    return-void
.end method

.method blacklist setBackgroundBlurRadius(I)V
    .locals 2

    iput p1, p0, Lcom/android/internal/policy/DecorView;->mOriginalBackgroundBlurRadius:I

    if-lez p1, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mCrossWindowBlurEnabledListener:Ljava/util/function/Consumer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/policy/DecorView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/DecorView$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/policy/DecorView;)V

    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mCrossWindowBlurEnabledListener:Ljava/util/function/Consumer;

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mCrossWindowBlurEnabledListener:Ljava/util/function/Consumer;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->addCrossWindowBlurEnabledListener(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundBlurOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateBackgroundBlurRadius()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mCrossWindowBlurEnabledListener:Ljava/util/function/Consumer;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateBackgroundBlurRadius()V

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->removeBackgroundBlurDrawable()V

    :cond_2
    :goto_0
    return-void
.end method

.method public whitelist setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/DecorView;->setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method blacklist setBackgroundFallback(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/BackgroundFallback;->setDrawable(Landroid/graphics/drawable/Drawable;)V

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

    return-void
.end method

.method public blacklist setDisplayCutoutBackgroundColor(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mCalledDisplayCutoutBackgroundColor:Z

    iput p1, p0, Lcom/android/internal/policy/DecorView;->mDisplayCutoutBackgroundColor:I

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->requestApplyInsets()V

    return-void
.end method

.method protected blacklist setFrame(IIII)Z
    .locals 8

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->setFrame(IIII)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mDrawingBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/DecorView;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mFrameOffsets:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v5, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->right:I

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->left:I

    iget v6, v4, Landroid/graphics/Rect;->left:I

    iget v7, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    iget v7, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget v6, v4, Landroid/graphics/Rect;->right:I

    iget v7, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    sub-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    sub-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->bottom:I

    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_1
    return v0
.end method

.method public blacklist setLastBackgroundResource(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundResource:I

    return-void
.end method

.method public whitelist setOutlineProvider(Landroid/view/ViewOutlineProvider;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mLastOutlineProvider:Landroid/view/ViewOutlineProvider;

    return-void
.end method

.method public blacklist setOverrideRoundedCornerBounds(Landroid/graphics/Rect;)Z
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mOverrideRoundedCornerBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/DecorView;->mRotationForRoundedCorner:I

    iget v1, p0, Lcom/android/internal/policy/DecorView;->mDisplayRotationForRoundedCorner:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mOverrideRoundedCornerBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setSurfaceFormat(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/PhoneWindow;->setFormat(I)V

    return-void
.end method

.method public blacklist setSurfaceKeepScreenOn(Z)V
    .locals 2

    const/16 v0, 0x80

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/PhoneWindow;->addFlags(I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/PhoneWindow;->clearFlags(I)V

    :goto_0
    return-void
.end method

.method public blacklist setSurfaceType(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/PhoneWindow;->setType(I)V

    return-void
.end method

.method blacklist setWindow(Lcom/android/internal/policy/PhoneWindow;)V
    .locals 3

    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Lcom/android/internal/policy/DecorContext;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/internal/policy/DecorContext;

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/DecorContext;->setPhoneWindow(Lcom/android/internal/policy/PhoneWindow;)V

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mPendingWindowBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mPendingWindowBackground:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mPendingWindowBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/DecorView;->setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public blacklist setWindowBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 7

    instance-of v0, p1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/DecorView;->mPopOverBackgroundColor:I

    goto :goto_1

    :cond_0
    instance-of v0, p1, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->getColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->getColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/DecorView;->mPopOverBackgroundColor:I

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/util/SemViewUtils;->isLightTheme(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x1060344

    goto :goto_0

    :cond_2
    const v2, 0x1060345

    :goto_0
    nop

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/DecorView;->mPopOverBackgroundColor:I

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setWindowBackground: isPopOver="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mIsPopOver:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " color="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/policy/DecorView;->mPopOverBackgroundColor:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " d="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DecorView"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    if-nez v0, :cond_3

    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mPendingWindowBackground:Landroid/graphics/drawable/Drawable;

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mOriginalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_a

    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mOriginalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateBackgroundDrawable()V

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mEdgeToEdgeEnforced:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColorSpecified:Z

    if-nez v0, :cond_6

    instance-of v0, p1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_6

    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Color;->luminance()F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v2, v2, v3

    const/4 v3, 0x0

    if-lez v2, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v4

    const/16 v5, 0x200

    if-eqz v2, :cond_5

    move v6, v5

    goto :goto_3

    :cond_5
    move v6, v3

    :goto_3
    invoke-interface {v4, v6, v5}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iput v0, v4, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    invoke-virtual {p0, v1, v3}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    :cond_6
    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFallbackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFallbackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_4

    :cond_9
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    :goto_4
    sget-boolean v0, Landroid/view/View;->sBrokenWindowBackground:Z

    if-nez v0, :cond_a

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->drawableChanged()V

    :cond_a
    return-void
.end method

.method public blacklist setWindowFrame(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/DecorView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    :goto_0
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->drawableChanged()V

    :cond_1
    return-void
.end method

.method blacklist shouldAnimatePrimaryActionModeView()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isLaidOut()Z

    move-result v0

    return v0
.end method

.method public blacklist shouldConsumeCaptionInsets(Landroid/view/WindowInsets;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/WindowInsets;->isForceConsumingOpaqueCaptionBar()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsDexEnabled:Z

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-boolean v2, v2, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    if-eqz v2, :cond_3

    :cond_1
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x4

    if-ne v2, v4, :cond_3

    :cond_2
    move v1, v3

    :cond_3
    return v1
.end method

.method public whitelist showContextMenuForChild(Landroid/view/View;)Z
    .locals 1

    const/high16 v0, 0x7fc00000    # Float.NaN

    invoke-direct {p0, p1, v0, v0}, Lcom/android/internal/policy/DecorView;->showContextMenuForChildInternal(Landroid/view/View;FF)Z

    move-result v0

    return v0
.end method

.method public whitelist showContextMenuForChild(Landroid/view/View;FF)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/DecorView;->showContextMenuForChildInternal(Landroid/view/View;FF)Z

    move-result v0

    return v0
.end method

.method public whitelist startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/DecorView;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public whitelist startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1

    invoke-direct {p0, p0, p1, p2}, Lcom/android/internal/policy/DecorView;->startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public whitelist startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/policy/DecorView;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public whitelist startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/DecorView;->startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method blacklist startChanging()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mChanging:Z

    return-void
.end method

.method public blacklist superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public blacklist superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_1

    if-ne v0, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    :cond_0
    return v2

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

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
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public blacklist superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public blacklist superDispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public blacklist superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/widget/FrameLayout;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

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

    return-object v0
.end method

.method public blacklist updateCaptionHeightIfNeeded(Landroid/view/WindowInsets;)V
    .locals 2

    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->top:I

    if-eqz v0, :cond_0

    iput v0, p0, Lcom/android/internal/policy/DecorView;->mLastCaptionHeight:I

    const-string/jumbo v1, "updateCaptionHeightIfNeeded"

    invoke-direct {p0, v1}, Lcom/android/internal/policy/DecorView;->requestInvalidateRenderNode(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method blacklist updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;
    .locals 34

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    iget-object v0, v11, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v13

    iget v0, v13, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getWindowSystemUiVisibility()I

    move-result v1

    or-int v14, v0, v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Landroid/view/WindowInsetsController;->getRequestedVisibleTypes()I

    move-result v17

    if-eqz v15, :cond_0

    iget-object v0, v15, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v0, v0, Landroid/view/InsetsFlags;->appearance:I

    goto :goto_0

    :cond_0
    invoke-interface/range {v16 .. v16}, Landroid/view/WindowInsetsController;->getSystemBarsAppearance()I

    move-result v0

    :goto_0
    move v10, v0

    iget-object v0, v11, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7db

    const/16 v18, 0x1

    if-ne v0, v1, :cond_1

    move/from16 v0, v18

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    move/from16 v19, v0

    iget-object v0, v11, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    const/high16 v20, -0x80000000

    if-eqz v0, :cond_3

    if-eqz v19, :cond_2

    goto :goto_2

    :cond_2
    move v12, v10

    goto/16 :goto_19

    :cond_3
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->isLaidOut()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget v1, v11, Lcom/android/internal/policy/DecorView;->mLastWindowFlags:I

    iget v2, v13, Landroid/view/WindowManager$LayoutParams;->flags:I

    xor-int/2addr v1, v2

    and-int v1, v1, v20

    if-eqz v1, :cond_4

    move/from16 v1, v18

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    or-int/2addr v0, v1

    iget v1, v13, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v1, v11, Lcom/android/internal/policy/DecorView;->mLastWindowFlags:I

    if-eqz v12, :cond_e

    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getForceConsumingTypes()I

    move-result v1

    iput v1, v11, Lcom/android/internal/policy/DecorView;->mLastForceConsumingTypes:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->isForceConsumingOpaqueCaptionBar()Z

    move-result v1

    iput-boolean v1, v11, Lcom/android/internal/policy/DecorView;->mLastForceConsumingOpaqueCaptionBar:Z

    iget v1, v13, Landroid/view/WindowManager$LayoutParams;->type:I

    iget v2, v13, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result v3

    iget v4, v11, Lcom/android/internal/policy/DecorView;->mLastForceConsumingTypes:I

    invoke-static {v1, v2, v3, v4}, Landroid/view/InsetsState;->clearsCompatInsets(IIII)Z

    move-result v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v2

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v3

    or-int/2addr v2, v3

    nop

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v3

    invoke-virtual {v12, v3}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object v3

    if-eqz v1, :cond_5

    sget-object v4, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    goto :goto_4

    :cond_5
    invoke-virtual {v12, v2}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/graphics/Insets;->min(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v4

    :goto_4
    nop

    iget v5, v4, Landroid/graphics/Insets;->top:I

    iput v5, v11, Lcom/android/internal/policy/DecorView;->mLastTopInset:I

    iget v5, v4, Landroid/graphics/Insets;->bottom:I

    iput v5, v11, Lcom/android/internal/policy/DecorView;->mLastBottomInset:I

    iget v5, v4, Landroid/graphics/Insets;->right:I

    iput v5, v11, Lcom/android/internal/policy/DecorView;->mLastRightInset:I

    iget v5, v4, Landroid/graphics/Insets;->left:I

    iput v5, v11, Lcom/android/internal/policy/DecorView;->mLastLeftInset:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v5

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v6

    or-int/2addr v5, v6

    invoke-virtual {v12, v5}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v5

    iput-object v5, v11, Lcom/android/internal/policy/DecorView;->mKnoxBadgeInsets:Landroid/graphics/Insets;

    iget v5, v3, Landroid/graphics/Insets;->top:I

    if-eqz v5, :cond_6

    move/from16 v5, v18

    goto :goto_5

    :cond_6
    const/4 v5, 0x0

    :goto_5
    iget-boolean v6, v11, Lcom/android/internal/policy/DecorView;->mLastHasTopStableInset:Z

    if-eq v5, v6, :cond_7

    move/from16 v6, v18

    goto :goto_6

    :cond_7
    const/4 v6, 0x0

    :goto_6
    or-int/2addr v0, v6

    iput-boolean v5, v11, Lcom/android/internal/policy/DecorView;->mLastHasTopStableInset:Z

    iget v6, v3, Landroid/graphics/Insets;->bottom:I

    if-eqz v6, :cond_8

    move/from16 v6, v18

    goto :goto_7

    :cond_8
    const/4 v6, 0x0

    :goto_7
    iget-boolean v7, v11, Lcom/android/internal/policy/DecorView;->mLastHasBottomStableInset:Z

    if-eq v6, v7, :cond_9

    move/from16 v7, v18

    goto :goto_8

    :cond_9
    const/4 v7, 0x0

    :goto_8
    or-int/2addr v0, v7

    iput-boolean v6, v11, Lcom/android/internal/policy/DecorView;->mLastHasBottomStableInset:Z

    iget v7, v3, Landroid/graphics/Insets;->right:I

    if-eqz v7, :cond_a

    move/from16 v7, v18

    goto :goto_9

    :cond_a
    const/4 v7, 0x0

    :goto_9
    iget-boolean v9, v11, Lcom/android/internal/policy/DecorView;->mLastHasRightStableInset:Z

    if-eq v7, v9, :cond_b

    move/from16 v9, v18

    goto :goto_a

    :cond_b
    const/4 v9, 0x0

    :goto_a
    or-int/2addr v0, v9

    iput-boolean v7, v11, Lcom/android/internal/policy/DecorView;->mLastHasRightStableInset:Z

    iget v9, v3, Landroid/graphics/Insets;->left:I

    if-eqz v9, :cond_c

    move/from16 v9, v18

    goto :goto_b

    :cond_c
    const/4 v9, 0x0

    :goto_b
    iget-boolean v8, v11, Lcom/android/internal/policy/DecorView;->mLastHasLeftStableInset:Z

    if-eq v9, v8, :cond_d

    move/from16 v8, v18

    goto :goto_c

    :cond_d
    const/4 v8, 0x0

    :goto_c
    or-int/2addr v0, v8

    iput-boolean v9, v11, Lcom/android/internal/policy/DecorView;->mLastHasLeftStableInset:Z

    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSuppressScrimTypes()I

    move-result v8

    iput v8, v11, Lcom/android/internal/policy/DecorView;->mLastSuppressScrimTypes:I

    move/from16 v22, v0

    const/4 v8, 0x0

    goto :goto_d

    :cond_e
    const/4 v8, 0x0

    invoke-direct {v11, v8}, Lcom/android/internal/policy/DecorView;->updateDisplayCutoutBackground(Landroid/view/WindowInsets;)V

    move/from16 v22, v0

    :goto_d
    iget v0, v11, Lcom/android/internal/policy/DecorView;->mLastBottomInset:I

    iget v1, v11, Lcom/android/internal/policy/DecorView;->mLastRightInset:I

    invoke-static {v0, v1}, Lcom/android/internal/policy/DecorView;->isNavBarToRightEdge(II)Z

    move-result v23

    iget v0, v11, Lcom/android/internal/policy/DecorView;->mLastBottomInset:I

    iget v1, v11, Lcom/android/internal/policy/DecorView;->mLastLeftInset:I

    invoke-static {v0, v1}, Lcom/android/internal/policy/DecorView;->isNavBarToLeftEdge(II)Z

    move-result v24

    iget v0, v11, Lcom/android/internal/policy/DecorView;->mLastBottomInset:I

    iget v1, v11, Lcom/android/internal/policy/DecorView;->mLastRightInset:I

    iget v2, v11, Lcom/android/internal/policy/DecorView;->mLastLeftInset:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/policy/DecorView;->getNavBarSize(III)I

    move-result v9

    iget-object v1, v11, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    invoke-direct {v11, v10}, Lcom/android/internal/policy/DecorView;->calculateNavigationBarColor(I)I

    move-result v2

    iget-object v0, v11, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v3, v0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarDividerColor:I

    if-nez v23, :cond_10

    if-eqz v24, :cond_f

    goto :goto_e

    :cond_f
    const/4 v5, 0x0

    goto :goto_f

    :cond_10
    :goto_e
    move/from16 v5, v18

    :goto_f
    if-eqz p2, :cond_11

    if-nez v22, :cond_11

    move/from16 v25, v18

    goto :goto_10

    :cond_11
    const/16 v25, 0x0

    :goto_10
    iget-boolean v7, v11, Lcom/android/internal/policy/DecorView;->mForceWindowDrawsBarBackgrounds:Z

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move v4, v9

    move/from16 v6, v24

    move/from16 v27, v7

    move/from16 v7, v26

    move/from16 v8, v25

    move/from16 v29, v9

    move/from16 v9, v27

    move v12, v10

    move/from16 v10, v17

    invoke-direct/range {v0 .. v10}, Lcom/android/internal/policy/DecorView;->updateColorViewInt(Lcom/android/internal/policy/DecorView$ColorViewState;IIIZZIZZI)V

    iget-boolean v10, v11, Lcom/android/internal/policy/DecorView;->mDrawLegacyNavigationBarBackground:Z

    iget v0, v11, Lcom/android/internal/policy/DecorView;->mLastForceConsumingTypes:I

    or-int v0, v17, v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_12

    iget-object v0, v11, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int v0, v0, v20

    if-nez v0, :cond_12

    move/from16 v9, v18

    goto :goto_11

    :cond_12
    const/4 v9, 0x0

    :goto_11
    iput-boolean v9, v11, Lcom/android/internal/policy/DecorView;->mDrawLegacyNavigationBarBackground:Z

    iget-object v0, v11, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v9, v0, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    iget-boolean v0, v11, Lcom/android/internal/policy/DecorView;->mDrawLegacyNavigationBarBackground:Z

    if-ne v10, v0, :cond_17

    if-eqz v9, :cond_16

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_13

    move/from16 v0, v18

    goto :goto_12

    :cond_13
    const/4 v0, 0x0

    :goto_12
    iget-object v1, v11, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-boolean v1, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->visible:Z

    if-ne v0, v1, :cond_15

    iget-boolean v0, v11, Lcom/android/internal/policy/DecorView;->mDrawLegacyNavigationBarBackground:Z

    if-eqz v0, :cond_14

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v0

    move/from16 v8, v29

    if-eq v0, v8, :cond_18

    goto :goto_13

    :cond_14
    move/from16 v8, v29

    goto :goto_14

    :cond_15
    move/from16 v8, v29

    goto :goto_13

    :cond_16
    move/from16 v8, v29

    goto :goto_14

    :cond_17
    move/from16 v8, v29

    :goto_13
    iget-object v0, v11, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-boolean v1, v11, Lcom/android/internal/policy/DecorView;->mDrawLegacyNavigationBarBackground:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->onDrawLegacyNavigationBarBackgroundChanged(Z)Z

    move-result v0

    iput-boolean v0, v11, Lcom/android/internal/policy/DecorView;->mDrawLegacyNavigationBarBackgroundHandled:Z

    if-eqz v15, :cond_18

    invoke-virtual {v15}, Landroid/view/ViewRootImpl;->requestInvalidateRootRenderNode()V

    :cond_18
    :goto_14
    if-eqz v23, :cond_19

    iget-object v0, v11, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-boolean v0, v0, Lcom/android/internal/policy/DecorView$ColorViewState;->present:Z

    if-eqz v0, :cond_19

    move/from16 v0, v18

    goto :goto_15

    :cond_19
    const/4 v0, 0x0

    :goto_15
    move/from16 v21, v0

    if-eqz v24, :cond_1a

    iget-object v0, v11, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-boolean v0, v0, Lcom/android/internal/policy/DecorView$ColorViewState;->present:Z

    if-eqz v0, :cond_1a

    move/from16 v0, v18

    goto :goto_16

    :cond_1a
    const/4 v0, 0x0

    :goto_16
    move/from16 v25, v0

    if-eqz v21, :cond_1b

    iget v0, v11, Lcom/android/internal/policy/DecorView;->mLastRightInset:I

    move v7, v0

    goto :goto_17

    :cond_1b
    if-eqz v25, :cond_1c

    iget v0, v11, Lcom/android/internal/policy/DecorView;->mLastLeftInset:I

    move v7, v0

    goto :goto_17

    :cond_1c
    const/4 v7, 0x0

    :goto_17
    nop

    invoke-direct {v11, v12}, Lcom/android/internal/policy/DecorView;->calculateStatusBarColor(I)I

    move-result v26

    iget-object v1, v11, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget v4, v11, Lcom/android/internal/policy/DecorView;->mLastTopInset:I

    if-eqz p2, :cond_1d

    if-nez v22, :cond_1d

    move/from16 v27, v18

    goto :goto_18

    :cond_1d
    const/16 v27, 0x0

    :goto_18
    iget-boolean v6, v11, Lcom/android/internal/policy/DecorView;->mForceWindowDrawsBarBackgrounds:Z

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, v26

    move/from16 v29, v6

    move/from16 v6, v25

    move/from16 v30, v8

    move/from16 v8, v27

    move-object/from16 v27, v9

    move/from16 v9, v29

    move/from16 v29, v10

    move/from16 v10, v17

    invoke-direct/range {v0 .. v10}, Lcom/android/internal/policy/DecorView;->updateColorViewInt(Lcom/android/internal/policy/DecorView$ColorViewState;IIIZZIZZI)V

    :goto_19
    and-int/lit8 v0, v14, 0x2

    if-nez v0, :cond_1f

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v0

    and-int v0, v17, v0

    if-nez v0, :cond_1e

    goto :goto_1a

    :cond_1e
    const/4 v9, 0x0

    goto :goto_1b

    :cond_1f
    :goto_1a
    move/from16 v9, v18

    :goto_1b
    move v6, v9

    iget-object v0, v11, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-boolean v7, v0, Lcom/android/internal/policy/PhoneWindow;->mDecorFitsSystemWindows:Z

    iget-boolean v0, v11, Lcom/android/internal/policy/DecorView;->mForceWindowDrawsBarBackgrounds:Z

    if-nez v0, :cond_20

    iget-boolean v0, v11, Lcom/android/internal/policy/DecorView;->mDrawLegacyNavigationBarBackgroundHandled:Z

    if-eqz v0, :cond_21

    :cond_20
    iget v0, v13, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int v0, v0, v20

    if-nez v0, :cond_21

    and-int/lit16 v0, v14, 0x200

    if-nez v0, :cond_21

    if-eqz v7, :cond_21

    if-eqz v6, :cond_22

    :cond_21
    iget v0, v11, Lcom/android/internal/policy/DecorView;->mLastForceConsumingTypes:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_23

    if-eqz v6, :cond_23

    :cond_22
    move/from16 v9, v18

    goto :goto_1c

    :cond_23
    const/4 v9, 0x0

    :goto_1c
    move v8, v9

    iget v0, v13, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int v0, v0, v20

    if-eqz v0, :cond_24

    and-int/lit16 v0, v14, 0x200

    if-nez v0, :cond_24

    if-eqz v7, :cond_24

    if-eqz v6, :cond_25

    :cond_24
    if-eqz v8, :cond_26

    :cond_25
    move/from16 v9, v18

    goto :goto_1d

    :cond_26
    const/4 v9, 0x0

    :goto_1d
    and-int/lit8 v0, v14, 0x4

    if-nez v0, :cond_28

    iget v0, v13, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_27

    goto :goto_1e

    :cond_27
    const/4 v0, 0x0

    goto :goto_1f

    :cond_28
    :goto_1e
    move/from16 v0, v18

    :goto_1f
    move v10, v0

    if-nez v10, :cond_2a

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v0

    and-int v0, v17, v0

    if-nez v0, :cond_29

    goto :goto_20

    :cond_29
    const/4 v0, 0x0

    goto :goto_21

    :cond_2a
    :goto_20
    move/from16 v0, v18

    :goto_21
    move/from16 v20, v0

    and-int/lit16 v0, v14, 0x400

    if-nez v0, :cond_2b

    if-eqz v7, :cond_2b

    iget v0, v13, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_2b

    iget v0, v13, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-nez v0, :cond_2b

    iget-boolean v0, v11, Lcom/android/internal/policy/DecorView;->mForceWindowDrawsBarBackgrounds:Z

    if-eqz v0, :cond_2b

    iget v0, v11, Lcom/android/internal/policy/DecorView;->mLastTopInset:I

    if-nez v0, :cond_2c

    :cond_2b
    iget v0, v11, Lcom/android/internal/policy/DecorView;->mLastForceConsumingTypes:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_2d

    if-eqz v20, :cond_2d

    :cond_2c
    move/from16 v0, v18

    goto :goto_22

    :cond_2d
    const/4 v0, 0x0

    :goto_22
    move/from16 v21, v0

    if-nez v10, :cond_2f

    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v0

    and-int v0, v17, v0

    if-nez v0, :cond_2e

    goto :goto_23

    :cond_2e
    const/4 v0, 0x0

    goto :goto_24

    :cond_2f
    :goto_23
    move/from16 v0, v18

    :goto_24
    move/from16 v22, v0

    iget v0, v11, Lcom/android/internal/policy/DecorView;->mLastForceConsumingTypes:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_30

    if-eqz v22, :cond_30

    move/from16 v0, v18

    goto :goto_25

    :cond_30
    const/4 v0, 0x0

    :goto_25
    move/from16 v23, v0

    invoke-static {}, Landroid/view/flags/Flags;->customizableWindowHeaders()Z

    move-result v0

    if-eqz v0, :cond_31

    and-int/lit16 v0, v12, 0x80

    if-nez v0, :cond_31

    move/from16 v0, v18

    goto :goto_26

    :cond_31
    const/4 v0, 0x0

    :goto_26
    move/from16 v24, v0

    iget-boolean v0, v11, Lcom/android/internal/policy/DecorView;->mLastForceConsumingOpaqueCaptionBar:Z

    if-eqz v0, :cond_32

    if-eqz v24, :cond_32

    move/from16 v0, v18

    goto :goto_27

    :cond_32
    const/4 v0, 0x0

    :goto_27
    move/from16 v25, v0

    if-nez v21, :cond_34

    if-nez v23, :cond_34

    if-eqz v25, :cond_33

    goto :goto_28

    :cond_33
    const/4 v0, 0x0

    goto :goto_29

    :cond_34
    :goto_28
    iget v0, v11, Lcom/android/internal/policy/DecorView;->mLastTopInset:I

    :goto_29
    if-eqz v9, :cond_35

    iget v1, v11, Lcom/android/internal/policy/DecorView;->mLastRightInset:I

    goto :goto_2a

    :cond_35
    const/4 v1, 0x0

    :goto_2a
    move v5, v1

    if-eqz v9, :cond_36

    iget v1, v11, Lcom/android/internal/policy/DecorView;->mLastBottomInset:I

    goto :goto_2b

    :cond_36
    const/4 v1, 0x0

    :goto_2b
    move v4, v1

    if-eqz v9, :cond_37

    iget v1, v11, Lcom/android/internal/policy/DecorView;->mLastLeftInset:I

    goto :goto_2c

    :cond_37
    const/4 v1, 0x0

    :goto_2c
    move v3, v1

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_INSETS:Z

    if-eqz v1, :cond_41

    const/4 v1, 0x0

    if-nez v21, :cond_3a

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->shouldConsumeCaptionBar()Z

    move-result v2

    if-eqz v2, :cond_3a

    iget v0, v11, Lcom/android/internal/policy/DecorView;->mLastTopInset:I

    nop

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->isOpaque()Z

    move-result v2

    if-nez v2, :cond_38

    iget-object v2, v11, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v2, v2, Lcom/android/internal/policy/PhoneWindow;->mStatusBarColor:I

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    move/from16 v26, v0

    const/16 v0, 0xff

    if-eq v2, v0, :cond_39

    move/from16 v0, v18

    goto :goto_2d

    :cond_38
    move/from16 v26, v0

    :cond_39
    const/4 v0, 0x0

    :goto_2d
    move v1, v0

    move/from16 v0, v26

    :cond_3a
    if-eqz v1, :cond_40

    and-int/lit8 v2, v12, 0x8

    if-eqz v2, :cond_3b

    goto :goto_2e

    :cond_3b
    const/16 v18, 0x0

    :goto_2e
    move/from16 v2, v18

    if-eqz v2, :cond_3c

    const/16 v18, -0x1

    goto :goto_2f

    :cond_3c
    const/high16 v18, -0x1000000

    :goto_2f
    move/from16 v26, v18

    move/from16 v18, v1

    iget-object v1, v11, Lcom/android/internal/policy/DecorView;->mCaptionBarBackgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_3e

    iget-object v1, v11, Lcom/android/internal/policy/DecorView;->mCaptionBarBackgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v1

    move/from16 v27, v2

    move/from16 v2, v26

    if-ne v1, v2, :cond_3f

    iget-object v1, v11, Lcom/android/internal/policy/DecorView;->mCaptionBarBackgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ColorDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-eq v1, v0, :cond_3d

    goto :goto_30

    :cond_3d
    move/from16 v26, v0

    goto :goto_31

    :cond_3e
    move/from16 v27, v2

    move/from16 v2, v26

    :cond_3f
    :goto_30
    move v1, v0

    move/from16 v26, v0

    new-instance v0, Lcom/android/internal/policy/DecorView$5;

    invoke-direct {v0, v11, v2, v1}, Lcom/android/internal/policy/DecorView$5;-><init>(Lcom/android/internal/policy/DecorView;II)V

    iput-object v0, v11, Lcom/android/internal/policy/DecorView;->mCaptionBarBackgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    :goto_31
    goto :goto_32

    :cond_40
    move/from16 v26, v0

    move/from16 v18, v1

    const/4 v0, 0x0

    iput-object v0, v11, Lcom/android/internal/policy/DecorView;->mCaptionBarBackgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    :goto_32
    move/from16 v2, v26

    goto :goto_33

    :cond_41
    move v2, v0

    :goto_33
    iget-object v0, v11, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_4d

    iget-object v0, v11, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_4c

    iget-object v0, v11, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ne v0, v2, :cond_43

    iget v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-ne v0, v5, :cond_43

    iget v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-ne v0, v4, :cond_43

    iget v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-eq v0, v3, :cond_42

    goto :goto_34

    :cond_42
    move-object v0, v1

    move v1, v4

    move/from16 v27, v7

    move/from16 v30, v9

    move/from16 v18, v10

    move v4, v12

    move v9, v2

    move v2, v3

    move v12, v5

    move-object/from16 v3, p1

    goto/16 :goto_39

    :cond_43
    :goto_34
    const/4 v0, -0x1

    sget-boolean v18, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_FREEFORM_CAPTION_TYPE:Z

    if-eqz v18, :cond_44

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->isFreeformMode()Z

    move-result v18

    if-eqz v18, :cond_44

    move/from16 v18, v0

    iget-boolean v0, v11, Lcom/android/internal/policy/DecorView;->mIsDexEnabled:Z

    if-nez v0, :cond_45

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->getCaptionType()I

    move-result v0

    goto :goto_35

    :cond_44
    move/from16 v18, v0

    :cond_45
    move/from16 v0, v18

    :goto_35
    sget-boolean v18, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_FREEFORM_CAPTION_TYPE:Z

    if-eqz v18, :cond_48

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->isFreeformMode()Z

    move-result v18

    if-eqz v18, :cond_48

    move/from16 v18, v2

    iget-boolean v2, v11, Lcom/android/internal/policy/DecorView;->mIsDexEnabled:Z

    if-nez v2, :cond_47

    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v26, v3

    iget v3, v11, Lcom/android/internal/policy/DecorView;->mLastTopInset:I

    if-eq v2, v3, :cond_46

    iget v2, v11, Lcom/android/internal/policy/DecorView;->mLastCaptionType:I

    if-eq v2, v0, :cond_46

    iput v0, v11, Lcom/android/internal/policy/DecorView;->mLastCaptionType:I

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, v11, Lcom/android/internal/policy/DecorView;->mLastTopInset:I

    filled-new-array {v3, v2}, [I

    move-result-object v2

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, v11, Lcom/android/internal/policy/DecorView;->mPinnedHeaderAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, v11, Lcom/android/internal/policy/DecorView;->mPinnedHeaderAnimator:Landroid/animation/ValueAnimator;

    move/from16 v27, v7

    new-instance v7, Lcom/android/internal/policy/DecorView$$ExternalSyntheticLambda2;

    move/from16 v28, v0

    move-object v0, v7

    move-object/from16 v29, v1

    move-object/from16 v1, p0

    move/from16 v30, v9

    move/from16 v9, v18

    move/from16 v18, v10

    move-object v10, v2

    move-object/from16 v2, v29

    move/from16 v31, v26

    move/from16 v26, v3

    move v3, v5

    move/from16 v32, v4

    move/from16 v33, v12

    move v12, v5

    move/from16 v5, v31

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/DecorView$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/policy/DecorView;Landroid/view/ViewGroup$MarginLayoutParams;III)V

    invoke-virtual {v10, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, v11, Lcom/android/internal/policy/DecorView;->mPinnedHeaderAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/samsung/android/util/InterpolatorUtils;->ONE_EASING:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, v11, Lcom/android/internal/policy/DecorView;->mPinnedHeaderAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, v11, Lcom/android/internal/policy/DecorView;->mPinnedHeaderAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    move-object/from16 v0, v29

    move/from16 v2, v31

    move/from16 v1, v32

    goto/16 :goto_38

    :cond_46
    move/from16 v28, v0

    move-object/from16 v29, v1

    move/from16 v32, v4

    move/from16 v27, v7

    move/from16 v30, v9

    move/from16 v33, v12

    move/from16 v9, v18

    move/from16 v31, v26

    move v12, v5

    move/from16 v18, v10

    goto :goto_36

    :cond_47
    move/from16 v28, v0

    move-object/from16 v29, v1

    move/from16 v31, v3

    move/from16 v32, v4

    move/from16 v27, v7

    move/from16 v30, v9

    move/from16 v33, v12

    move/from16 v9, v18

    move v12, v5

    move/from16 v18, v10

    goto :goto_36

    :cond_48
    move/from16 v28, v0

    move-object/from16 v29, v1

    move/from16 v31, v3

    move/from16 v32, v4

    move/from16 v27, v7

    move/from16 v30, v9

    move/from16 v18, v10

    move/from16 v33, v12

    move v9, v2

    move v12, v5

    :goto_36
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_FREEFORM_CAPTION_TYPE:Z

    if-eqz v0, :cond_49

    iget-object v0, v11, Lcom/android/internal/policy/DecorView;->mPinnedHeaderAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_49

    iget-object v0, v11, Lcom/android/internal/policy/DecorView;->mPinnedHeaderAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_49

    move-object/from16 v0, v29

    goto :goto_37

    :cond_49
    move-object/from16 v0, v29

    iput v9, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :goto_37
    iput v12, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v1, v32

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v2, v31

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v3, v11, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_38
    move-object/from16 v3, p1

    move/from16 v4, v33

    if-nez v3, :cond_4a

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->requestApplyInsets()V

    :cond_4a
    :goto_39
    if-eqz v3, :cond_4e

    if-gtz v2, :cond_4b

    if-gtz v9, :cond_4b

    if-gtz v12, :cond_4b

    if-lez v1, :cond_4e

    :cond_4b
    invoke-virtual {v3, v2, v9, v12, v1}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object v3

    goto :goto_3a

    :cond_4c
    move v1, v4

    move/from16 v27, v7

    move/from16 v30, v9

    move/from16 v18, v10

    move v4, v12

    move v9, v2

    move v2, v3

    move v12, v5

    move-object/from16 v3, p1

    goto :goto_3a

    :cond_4d
    move v1, v4

    move/from16 v27, v7

    move/from16 v30, v9

    move/from16 v18, v10

    move v4, v12

    move v9, v2

    move v2, v3

    move v12, v5

    move-object/from16 v3, p1

    :cond_4e
    :goto_3a
    if-eqz v8, :cond_4f

    if-nez v6, :cond_4f

    iget-boolean v0, v11, Lcom/android/internal/policy/DecorView;->mDrawLegacyNavigationBarBackgroundHandled:Z

    if-nez v0, :cond_4f

    iget v0, v11, Lcom/android/internal/policy/DecorView;->mLastLeftInset:I

    iget v5, v11, Lcom/android/internal/policy/DecorView;->mLastRightInset:I

    iget v7, v11, Lcom/android/internal/policy/DecorView;->mLastBottomInset:I

    const/4 v10, 0x0

    invoke-static {v0, v10, v5, v7}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    iput-object v0, v11, Lcom/android/internal/policy/DecorView;->mBackgroundInsets:Landroid/graphics/Insets;

    goto :goto_3b

    :cond_4f
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v0, v11, Lcom/android/internal/policy/DecorView;->mBackgroundInsets:Landroid/graphics/Insets;

    :goto_3b
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->updateBackgroundDrawable()V

    return-object v3
.end method

.method public blacklist updateElevationIfNeeded()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsPopOver:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateElevation()V

    :cond_0
    return-void
.end method

.method blacklist updateLogTag(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2

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

    return-void
.end method

.method public blacklist updatePictureInPictureOutlineProvider(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsInPictureInPictureMode:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getWindowControllerCallback()Landroid/view/Window$WindowControllerCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/view/Window$WindowControllerCallback;->isTaskRoot()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/internal/policy/DecorView;->PIP_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    :cond_1
    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mLastOutlineProvider:Landroid/view/ViewOutlineProvider;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mLastOutlineProvider:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/DecorView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    :cond_3
    :goto_0
    iput-boolean p1, p0, Lcom/android/internal/policy/DecorView;->mIsInPictureInPictureMode:Z

    return-void
.end method

.method public blacklist willYouTakeTheInputQueue()Landroid/view/InputQueue$Callback;
    .locals 1

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
