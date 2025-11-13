.class public Lcom/android/internal/policy/PhoneWindow;
.super Landroid/view/Window;
.source "PhoneWindow.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;,
        Lcom/android/internal/policy/PhoneWindow$RotationWatcher;,
        Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;,
        Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;,
        Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;,
        Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;,
        Lcom/android/internal/policy/PhoneWindow$WindowManagerHolder;
    }
.end annotation


# static fields
.field private static final blacklist ACTION_BAR_TAG:Ljava/lang/String; = "android:ActionBar"

.field private static final blacklist CUSTOM_TITLE_COMPATIBLE_FEATURES:I = 0x34c1

.field private static final blacklist DEBUG:Z = false

.field private static final blacklist DECOR_CAPTION_VIEW_TAG:Ljava/lang/String; = "android:DecorCaptionView"

.field private static final blacklist DEFAULT_BACKGROUND_FADE_DURATION_MS:I = 0x12c

.field static final blacklist FLAG_RESOURCE_SET_ICON:I = 0x1

.field static final blacklist FLAG_RESOURCE_SET_ICON_FALLBACK:I = 0x4

.field static final blacklist FLAG_RESOURCE_SET_LOGO:I = 0x2

.field private static final blacklist FOCUSED_ID_TAG:Ljava/lang/String; = "android:focusedViewId"

.field private static final blacklist PANELS_TAG:Ljava/lang/String; = "android:Panels"

.field private static final blacklist TAG:Ljava/lang/String; = "PhoneWindow"

.field private static final blacklist USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

.field private static final blacklist VIEWS_TAG:Ljava/lang/String; = "android:views"

.field private static final blacklist sDefaultContentInsetsApplier:Landroid/view/Window$OnContentApplyWindowInsetsListener;

.field static final blacklist sRotationWatcher:Lcom/android/internal/policy/PhoneWindow$RotationWatcher;


# instance fields
.field private blacklist mActionMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;

.field private blacklist mActivityConfigCallback:Landroid/view/ViewRootImpl$ActivityConfigCallback;

.field blacklist mActivityCurrentConfig:Landroid/content/res/Configuration;

.field private blacklist mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

.field private blacklist mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

.field private blacklist mAlwaysReadCloseOnTouchAttr:Z

.field private blacklist mAudioManager:Landroid/media/AudioManager;

.field private blacklist mBackgroundBlurRadius:I

.field blacklist mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private blacklist mBackgroundFadeDurationMillis:J

.field blacklist mBackgroundFallbackDrawable:Landroid/graphics/drawable/Drawable;

.field private blacklist mCircularProgressBar:Landroid/widget/ProgressBar;

.field private blacklist mClipToOutline:Z

.field private blacklist mClosingActionMenu:Z

.field blacklist mContentParent:Landroid/view/ViewGroup;

.field private blacklist mContentParentExplicitlySet:Z

.field private blacklist mContentScene:Landroid/transition/Scene;

.field blacklist mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

.field final blacklist mContextMenuCallback:Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;

.field blacklist mContextMenuHelper:Lcom/android/internal/view/menu/MenuHelper;

.field private blacklist mDecor:Lcom/android/internal/policy/DecorView;

.field private blacklist mDecorCaptionShade:I

.field blacklist mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

.field blacklist mDecorFitsSystemWindows:Z

.field private blacklist mDefaultNavigationBarColor:I

.field private blacklist mDeviceDefaultNavigationBarColor:I

.field private blacklist mDrawables:[Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

.field private blacklist mElevation:F

.field blacklist mEnsureNavigationBarContrastWhenTransparent:Z

.field blacklist mEnsureStatusBarContrastWhenTransparent:Z

.field private blacklist mEnterTransition:Landroid/transition/Transition;

.field private blacklist mExitTransition:Landroid/transition/Transition;

.field blacklist mFixedHeightMajor:Landroid/util/TypedValue;

.field blacklist mFixedHeightMinor:Landroid/util/TypedValue;

.field blacklist mFixedWidthMajor:Landroid/util/TypedValue;

.field blacklist mFixedWidthMinor:Landroid/util/TypedValue;

.field private blacklist mForceDecorInstall:Z

.field private blacklist mForcedNavigationBarColor:Z

.field private blacklist mForcedStatusBarColor:Z

.field private blacklist mFrameResource:I

.field private blacklist mHorizontalProgressBar:Landroid/widget/ProgressBar;

.field blacklist mIconRes:I

.field private blacklist mInvalidatePanelMenuFeatures:I

.field private blacklist mInvalidatePanelMenuPosted:Z

.field private final blacklist mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

.field blacklist mIsFloating:Z

.field blacklist mIsStartingWindow:Z

.field private blacklist mIsTranslucent:Z

.field private blacklist mKeyguardManager:Landroid/app/KeyguardManager;

.field private blacklist mLastRequestedOrientation:I

.field private blacklist mLayoutInflater:Landroid/view/LayoutInflater;

.field private blacklist mLeftIconView:Landroid/widget/ImageView;

.field private blacklist mLoadElevation:Z

.field blacklist mLogoRes:I

.field private blacklist mMediaController:Landroid/media/session/MediaController;

.field private blacklist mMediaSessionManager:Landroid/media/session/MediaSessionManager;

.field final blacklist mMinWidthMajor:Landroid/util/TypedValue;

.field final blacklist mMinWidthMinor:Landroid/util/TypedValue;

.field blacklist mNavigationBarColor:I

.field blacklist mNavigationBarDividerColor:I

.field blacklist mPanelChordingKey:I

.field private blacklist mPanelMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;

.field private blacklist mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

.field blacklist mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

.field private final blacklist mProxyOnBackInvokedDispatcher:Landroid/window/ProxyOnBackInvokedDispatcher;

.field private blacklist mReenterTransition:Landroid/transition/Transition;

.field public final blacklist mRenderShadowsInCompositor:Z

.field blacklist mResourcesSetFlags:I

.field private blacklist mReturnTransition:Landroid/transition/Transition;

.field private blacklist mRightIconView:Landroid/widget/ImageView;

.field private blacklist mSettingsNavigationBarColor:I

.field private blacklist mSharedElementEnterTransition:Landroid/transition/Transition;

.field private blacklist mSharedElementExitTransition:Landroid/transition/Transition;

.field private blacklist mSharedElementReenterTransition:Landroid/transition/Transition;

.field private blacklist mSharedElementReturnTransition:Landroid/transition/Transition;

.field private blacklist mSharedElementsUseOverlay:Ljava/lang/Boolean;

.field blacklist mStatusBarColor:I

.field private blacklist mSupportsPictureInPicture:Z

.field blacklist mTakeInputQueueCallback:Landroid/view/InputQueue$Callback;

.field blacklist mTakeSurfaceCallback:Landroid/view/SurfaceHolder$Callback2;

.field private blacklist mTextColor:I

.field private blacklist mTheme:I

.field private blacklist mThemeApplied:Z

.field private greylist mTitle:Ljava/lang/CharSequence;

.field private blacklist mTitleColor:I

.field private blacklist mTitleView:Landroid/widget/TextView;

.field private blacklist mTransitionManager:Landroid/transition/TransitionManager;

.field private blacklist mUiOptions:I

.field private blacklist mUseDecorContext:Z

.field private blacklist mVolumeControlStreamType:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmInvalidatePanelMenuFeatures(Lcom/android/internal/policy/PhoneWindow;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmInvalidatePanelMenuFeatures(Lcom/android/internal/policy/PhoneWindow;I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmInvalidatePanelMenuPosted(Lcom/android/internal/policy/PhoneWindow;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcallOnPanelClosed(Lcom/android/internal/policy/PhoneWindow;ILcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/Menu;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/PhoneWindow;->callOnPanelClosed(ILcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/Menu;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdismissContextMenu(Lcom/android/internal/policy/PhoneWindow;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->dismissContextMenu()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 174
    new-instance v0, Lcom/android/internal/policy/PhoneWindow$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/policy/PhoneWindow$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/internal/policy/PhoneWindow;->sDefaultContentInsetsApplier:Landroid/view/Window$OnContentApplyWindowInsetsListener;

    .line 199
    new-instance v0, Landroid/transition/TransitionSet;

    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    sput-object v0, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    .line 407
    new-instance v0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;

    invoke-direct {v0}, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;-><init>()V

    sput-object v0, Lcom/android/internal/policy/PhoneWindow;->sRotationWatcher:Lcom/android/internal/policy/PhoneWindow$RotationWatcher;

    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 420
    invoke-direct {p0, p1}, Landroid/view/Window;-><init>(Landroid/content/Context;)V

    .line 205
    new-instance v0, Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;-><init>(Lcom/android/internal/policy/PhoneWindow;)V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenuCallback:Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;

    .line 207
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMajor:Landroid/util/TypedValue;

    .line 208
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMinor:Landroid/util/TypedValue;

    .line 219
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mForceDecorInstall:Z

    .line 226
    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParentExplicitlySet:Z

    .line 291
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 292
    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFallbackDrawable:Landroid/graphics/drawable/Drawable;

    .line 294
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundBlurRadius:I

    .line 296
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/PhoneWindow;->mLoadElevation:Z

    .line 302
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mFrameResource:I

    .line 304
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mTextColor:I

    .line 305
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mStatusBarColor:I

    .line 306
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    .line 307
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarDividerColor:I

    .line 308
    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mForcedStatusBarColor:Z

    .line 309
    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mForcedNavigationBarColor:Z

    .line 341
    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    .line 344
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleColor:I

    .line 346
    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAlwaysReadCloseOnTouchAttr:Z

    .line 352
    const/high16 v3, -0x80000000

    iput v3, p0, Lcom/android/internal/policy/PhoneWindow;->mVolumeControlStreamType:I

    .line 359
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mUiOptions:I

    .line 363
    new-instance v3, Lcom/android/internal/policy/PhoneWindow$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/PhoneWindow$1;-><init>(Lcom/android/internal/policy/PhoneWindow;)V

    iput-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    .line 375
    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mEnterTransition:Landroid/transition/Transition;

    .line 376
    sget-object v3, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    iput-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mReturnTransition:Landroid/transition/Transition;

    .line 377
    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mExitTransition:Landroid/transition/Transition;

    .line 378
    iput-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mReenterTransition:Landroid/transition/Transition;

    .line 379
    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementEnterTransition:Landroid/transition/Transition;

    .line 380
    iput-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReturnTransition:Landroid/transition/Transition;

    .line 381
    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementExitTransition:Landroid/transition/Transition;

    .line 382
    iput-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReenterTransition:Landroid/transition/Transition;

    .line 385
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFadeDurationMillis:J

    .line 389
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/internal/policy/PhoneWindow;->mTheme:I

    .line 391
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorCaptionShade:I

    .line 393
    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mUseDecorContext:Z

    .line 398
    iput-boolean v2, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorFitsSystemWindows:Z

    .line 411
    const/4 v3, -0x2

    iput v3, p0, Lcom/android/internal/policy/PhoneWindow;->mLastRequestedOrientation:I

    .line 415
    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mActivityCurrentConfig:Landroid/content/res/Configuration;

    .line 421
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 422
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "render_shadows_in_compositor"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    move v0, v2

    :cond_0
    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mRenderShadowsInCompositor:Z

    .line 424
    new-instance v0, Landroid/window/ProxyOnBackInvokedDispatcher;

    .line 425
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isOnBackInvokedCallbackEnabled()Z

    move-result v1

    invoke-direct {v0, v1}, Landroid/window/ProxyOnBackInvokedDispatcher;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mProxyOnBackInvokedDispatcher:Landroid/window/ProxyOnBackInvokedDispatcher;

    .line 429
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->updateDeviceDefaultNavigationBarColor()V

    .line 430
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDeviceDefaultNavigationBarColor:I

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDefaultNavigationBarColor:I

    .line 431
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSettingsNavigationBarColor:I

    .line 434
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/view/Window;Landroid/view/ViewRootImpl$ActivityConfigCallback;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preservedWindow"    # Landroid/view/Window;
    .param p3, "activityConfigCallback"    # Landroid/view/ViewRootImpl$ActivityConfigCallback;

    .line 441
    invoke-direct {p0, p1}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    .line 444
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mUseDecorContext:Z

    .line 445
    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 446
    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/DecorView;

    iput-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    .line 447
    invoke-virtual {p2}, Landroid/view/Window;->getElevation()F

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/PhoneWindow;->mElevation:F

    .line 448
    iput-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow;->mLoadElevation:Z

    .line 449
    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mForceDecorInstall:Z

    .line 453
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iput-object v3, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 454
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mProxyOnBackInvokedDispatcher:Landroid/window/ProxyOnBackInvokedDispatcher;

    .line 455
    invoke-virtual {p2}, Landroid/view/Window;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v3

    .line 454
    invoke-virtual {v2, v3}, Landroid/window/ProxyOnBackInvokedDispatcher;->setActualDispatcher(Landroid/window/OnBackInvokedDispatcher;)V

    .line 459
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "force_resizable_activities"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    .line 461
    .local v2, "forceResizable":Z
    :goto_0
    if-nez v2, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.software.picture_in_picture"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :cond_3
    :goto_1
    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSupportsPictureInPicture:Z

    .line 463
    iput-object p3, p0, Lcom/android/internal/policy/PhoneWindow;->mActivityConfigCallback:Landroid/view/ViewRootImpl$ActivityConfigCallback;

    .line 464
    return-void
.end method

.method private blacklist applyDecorFitsSystemWindows()V
    .locals 2

    .line 4168
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getViewRootImplOrNull()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 4169
    .local v0, "impl":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_1

    .line 4170
    iget-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorFitsSystemWindows:Z

    if-eqz v1, :cond_0

    .line 4171
    sget-object v1, Lcom/android/internal/policy/PhoneWindow;->sDefaultContentInsetsApplier:Landroid/view/Window$OnContentApplyWindowInsetsListener;

    goto :goto_0

    .line 4172
    :cond_0
    const/4 v1, 0x0

    .line 4170
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->setOnContentApplyWindowInsetsListener(Landroid/view/Window$OnContentApplyWindowInsetsListener;)V

    .line 4174
    :cond_1
    return-void
.end method

.method private blacklist callOnPanelClosed(ILcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/Menu;)V
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "panel"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .param p3, "menu"    # Landroid/view/Menu;

    .line 3285
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 3286
    .local v0, "cb":Landroid/view/Window$Callback;
    if-nez v0, :cond_0

    .line 3287
    return-void

    .line 3290
    :cond_0
    if-nez p3, :cond_2

    .line 3292
    if-nez p2, :cond_1

    .line 3293
    if-ltz p1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    array-length v2, v1

    if-ge p1, v2, :cond_1

    .line 3294
    aget-object p2, v1, p1

    .line 3298
    :cond_1
    if-eqz p2, :cond_2

    .line 3300
    iget-object p3, p2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 3305
    :cond_2
    if-eqz p2, :cond_3

    iget-boolean v1, p2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-nez v1, :cond_3

    .line 3306
    return-void

    .line 3308
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_4

    .line 3309
    invoke-interface {v0, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 3311
    :cond_4
    return-void
.end method

.method private static blacklist clearMenuViews(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)V
    .locals 1
    .param p0, "st"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 873
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    .line 876
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    .line 878
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->clearMenuPresenters()V

    .line 879
    return-void
.end method

.method private declared-synchronized blacklist closeContextMenu()V
    .locals 1

    monitor-enter p0

    .line 1268
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    if-eqz v0, :cond_0

    .line 1269
    invoke-virtual {v0}, Lcom/android/internal/view/menu/ContextMenuBuilder;->close()V

    .line 1270
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->dismissContextMenu()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1272
    .end local p0    # "this":Lcom/android/internal/policy/PhoneWindow;
    :cond_0
    monitor-exit p0

    return-void

    .line 1267
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized blacklist dismissContextMenu()V
    .locals 2

    monitor-enter p0

    .line 1279
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    .line 1281
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuHelper;

    if-eqz v1, :cond_0

    .line 1282
    invoke-interface {v1}, Lcom/android/internal/view/menu/MenuHelper;->dismiss()V

    .line 1283
    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1285
    .end local p0    # "this":Lcom/android/internal/policy/PhoneWindow;
    :cond_0
    monitor-exit p0

    return-void

    .line 1278
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private blacklist getCircularProgressBar(Z)Landroid/widget/ProgressBar;
    .locals 2
    .param p1, "shouldInstallDecor"    # Z

    .line 3236
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 3237
    return-object v0

    .line 3239
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 3240
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    .line 3242
    :cond_1
    const v0, 0x10204bf

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    .line 3243
    if-eqz v0, :cond_2

    .line 3244
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3246
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private blacklist getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    .locals 4
    .param p1, "featureId"    # I
    .param p2, "required"    # Z

    .line 3068
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getFeatures()I

    move-result v0

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 3069
    if-nez p2, :cond_0

    .line 3070
    const/4 v0, 0x0

    return-object v0

    .line 3072
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The feature has not been requested"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3076
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDrawables:[Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    move-object v1, v0

    .local v1, "ar":[Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    if-eqz v0, :cond_2

    array-length v0, v1

    if-gt v0, p1, :cond_4

    .line 3077
    :cond_2
    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    .line 3078
    .local v0, "nar":[Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    if-eqz v1, :cond_3

    .line 3079
    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3081
    :cond_3
    move-object v1, v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDrawables:[Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    .line 3084
    .end local v0    # "nar":[Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    :cond_4
    aget-object v0, v1, p1

    .line 3085
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    if-nez v0, :cond_5

    .line 3086
    new-instance v2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    invoke-direct {v2, p1}, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;-><init>(I)V

    move-object v0, v2

    aput-object v2, v1, p1

    .line 3088
    :cond_5
    return-object v0
.end method

.method private blacklist getHorizontalProgressBar(Z)Landroid/widget/ProgressBar;
    .locals 2
    .param p1, "shouldInstallDecor"    # Z

    .line 3250
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 3251
    return-object v0

    .line 3253
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 3254
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    .line 3256
    :cond_1
    const v0, 0x10204c0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    .line 3257
    if-eqz v0, :cond_2

    .line 3258
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3260
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private blacklist getKeyguardManager()Landroid/app/KeyguardManager;
    .locals 2

    .line 2069
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    .line 2070
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 2073
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method private blacklist getLeftIconView()Landroid/widget/ImageView;
    .locals 1

    .line 3218
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mLeftIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 3219
    return-object v0

    .line 3221
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 3222
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    .line 3224
    :cond_1
    const v0, 0x10203ac

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mLeftIconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method private blacklist getMediaSessionManager()Landroid/media/session/MediaSessionManager;
    .locals 2

    .line 2084
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    if-nez v0, :cond_0

    .line 2085
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "media_session"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSessionManager;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 2088
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    return-object v0
.end method

.method private blacklist getOptionsPanelGravity()I
    .locals 3

    .line 1502
    :try_start_0
    sget-object v0, Lcom/android/internal/policy/PhoneWindow$WindowManagerHolder;->sWindowManager:Landroid/view/IWindowManager;

    .line 1503
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    .line 1502
    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->getPreferredOptionsPanelGravity(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1504
    :catch_0
    move-exception v0

    .line 1505
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "PhoneWindow"

    const-string v2, "Couldn\'t getOptionsPanelGravity; using default"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1506
    const/16 v1, 0x51

    return v1
.end method

.method private blacklist getPanelState(IZLcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .locals 4
    .param p1, "featureId"    # I
    .param p2, "required"    # Z
    .param p3, "convertPanelState"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 3115
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getFeatures()I

    move-result v0

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 3116
    if-nez p2, :cond_0

    .line 3117
    const/4 v0, 0x0

    return-object v0

    .line 3119
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The feature has not been requested"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3123
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-object v1, v0

    .local v1, "ar":[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v0, :cond_2

    array-length v0, v1

    if-gt v0, p1, :cond_4

    .line 3124
    :cond_2
    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 3125
    .local v0, "nar":[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v1, :cond_3

    .line 3126
    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3128
    :cond_3
    move-object v1, v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 3131
    .end local v0    # "nar":[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_4
    aget-object v0, v1, p1

    .line 3132
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-nez v0, :cond_6

    .line 3133
    if-eqz p3, :cond_5

    .line 3134
    move-object v2, p3

    goto :goto_0

    .line 3135
    :cond_5
    new-instance v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    invoke-direct {v2, p1}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;-><init>(I)V

    :goto_0
    move-object v0, v2

    aput-object v2, v1, p1

    .line 3137
    :cond_6
    return-object v0
.end method

.method private blacklist getRightIconView()Landroid/widget/ImageView;
    .locals 1

    .line 3264
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mRightIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 3265
    return-object v0

    .line 3267
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 3268
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    .line 3270
    :cond_1
    const v0, 0x10204f7

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mRightIconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method private blacklist getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;
    .locals 4
    .param p1, "currentValue"    # Landroid/transition/Transition;
    .param p2, "defaultValue"    # Landroid/transition/Transition;
    .param p3, "id"    # I

    .line 3041
    if-eq p1, p2, :cond_0

    .line 3042
    return-object p1

    .line 3044
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 3045
    .local v0, "transitionId":I
    move-object v2, p2

    .line 3046
    .local v2, "transition":Landroid/transition/Transition;
    if-eq v0, v1, :cond_1

    const/high16 v1, 0x10f0000

    if-eq v0, v1, :cond_1

    .line 3047
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    move-result-object v1

    .line 3048
    .local v1, "inflater":Landroid/transition/TransitionInflater;
    invoke-virtual {v1, v0}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    move-result-object v2

    .line 3049
    instance-of v3, v2, Landroid/transition/TransitionSet;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Landroid/transition/TransitionSet;

    .line 3050
    invoke-virtual {v3}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 3051
    const/4 v2, 0x0

    .line 3054
    .end local v1    # "inflater":Landroid/transition/TransitionInflater;
    :cond_1
    return-object v2
.end method

.method private blacklist getViewRootImpl()Landroid/view/ViewRootImpl;
    .locals 3

    .line 1935
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getViewRootImplOrNull()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 1936
    .local v0, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 1937
    return-object v0

    .line 1939
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "view not added"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist getViewRootImplOrNull()Landroid/view/ViewRootImpl;
    .locals 1

    .line 1943
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-nez v0, :cond_0

    .line 1944
    const/4 v0, 0x0

    return-object v0

    .line 1946
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    return-object v0
.end method

.method private blacklist hideProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V
    .locals 4
    .param p1, "horizontalProgressBar"    # Landroid/widget/ProgressBar;
    .param p2, "spinnyProgressBar"    # Landroid/widget/ProgressBar;

    .line 1857
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    move-result v0

    .line 1858
    .local v0, "features":I
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 1859
    .local v1, "anim":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1860
    and-int/lit8 v2, v0, 0x20

    const/4 v3, 0x4

    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    .line 1862
    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 1863
    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1864
    invoke-virtual {p2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1866
    :cond_0
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 1867
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 1868
    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1869
    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1871
    :cond_1
    return-void
.end method

.method private blacklist installDecor()V
    .locals 9

    .line 2905
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mForceDecorInstall:Z

    .line 2906
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 2907
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->generateDecor(I)Lcom/android/internal/policy/DecorView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    .line 2908
    const/high16 v3, 0x40000

    invoke-virtual {v1, v3}, Lcom/android/internal/policy/DecorView;->setDescendantFocusability(I)V

    .line 2909
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/DecorView;->setIsRootNamespace(Z)V

    .line 2910
    iget-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    if-eqz v1, :cond_1

    .line 2911
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Lcom/android/internal/policy/DecorView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2914
    :cond_0
    invoke-virtual {v1, p0}, Lcom/android/internal/policy/DecorView;->setWindow(Lcom/android/internal/policy/PhoneWindow;)V

    .line 2916
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v1, :cond_16

    .line 2917
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->generateLayout(Lcom/android/internal/policy/DecorView;)Landroid/view/ViewGroup;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    .line 2920
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1}, Lcom/android/internal/policy/DecorView;->makeFrameworkOptionalFitsSystemWindows()V

    .line 2922
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    const v3, 0x10202ad

    invoke-virtual {v1, v3}, Lcom/android/internal/policy/DecorView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/DecorContentParent;

    .line 2925
    .local v1, "decorContentParent":Lcom/android/internal/widget/DecorContentParent;
    const/16 v3, 0xd

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz v1, :cond_c

    .line 2926
    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    .line 2927
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v6

    invoke-interface {v1, v6}, Lcom/android/internal/widget/DecorContentParent;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 2928
    iget-object v6, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v6}, Lcom/android/internal/widget/DecorContentParent;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    if-nez v6, :cond_2

    .line 2929
    iget-object v6, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {v6, v7}, Lcom/android/internal/widget/DecorContentParent;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 2932
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    move-result v6

    .line 2933
    .local v6, "localFeatures":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v3, :cond_4

    .line 2934
    shl-int v8, v2, v7

    and-int/2addr v8, v6

    if-eqz v8, :cond_3

    .line 2935
    iget-object v8, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v8, v7}, Lcom/android/internal/widget/DecorContentParent;->initFeature(I)V

    .line 2933
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2939
    .end local v7    # "i":I
    :cond_4
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    iget v8, p0, Lcom/android/internal/policy/PhoneWindow;->mUiOptions:I

    invoke-interface {v7, v8}, Lcom/android/internal/widget/DecorContentParent;->setUiOptions(I)V

    .line 2941
    iget v7, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    and-int/2addr v7, v2

    if-nez v7, :cond_6

    iget v7, p0, Lcom/android/internal/policy/PhoneWindow;->mIconRes:I

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    .line 2942
    invoke-interface {v7}, Lcom/android/internal/widget/DecorContentParent;->hasIcon()Z

    move-result v7

    if-nez v7, :cond_5

    goto :goto_2

    .line 2944
    :cond_5
    iget v7, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    and-int/2addr v7, v2

    if-nez v7, :cond_7

    iget v7, p0, Lcom/android/internal/policy/PhoneWindow;->mIconRes:I

    if-nez v7, :cond_7

    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    .line 2945
    invoke-interface {v7}, Lcom/android/internal/widget/DecorContentParent;->hasIcon()Z

    move-result v7

    if-nez v7, :cond_7

    .line 2946
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    .line 2947
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 2946
    invoke-interface {v7, v8}, Lcom/android/internal/widget/DecorContentParent;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 2948
    iget v7, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    or-int/lit8 v7, v7, 0x4

    iput v7, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    goto :goto_3

    .line 2943
    :cond_6
    :goto_2
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    iget v8, p0, Lcom/android/internal/policy/PhoneWindow;->mIconRes:I

    invoke-interface {v7, v8}, Lcom/android/internal/widget/DecorContentParent;->setIcon(I)V

    .line 2950
    :cond_7
    :goto_3
    iget v7, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    and-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_8

    iget v7, p0, Lcom/android/internal/policy/PhoneWindow;->mLogoRes:I

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    .line 2951
    invoke-interface {v7}, Lcom/android/internal/widget/DecorContentParent;->hasLogo()Z

    move-result v7

    if-nez v7, :cond_9

    .line 2952
    :cond_8
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    iget v8, p0, Lcom/android/internal/policy/PhoneWindow;->mLogoRes:I

    invoke-interface {v7, v8}, Lcom/android/internal/widget/DecorContentParent;->setLogo(I)V

    .line 2960
    :cond_9
    invoke-virtual {p0, v0, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v7

    .line 2961
    .local v7, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v8

    if-nez v8, :cond_b

    if-eqz v7, :cond_a

    iget-object v8, v7, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v8, :cond_b

    :cond_a
    iget-boolean v8, p0, Lcom/android/internal/policy/PhoneWindow;->mIsStartingWindow:Z

    if-nez v8, :cond_b

    .line 2962
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/PhoneWindow;->invalidatePanelMenu(I)V

    .line 2964
    .end local v6    # "localFeatures":I
    .end local v7    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_b
    goto :goto_5

    .line 2965
    :cond_c
    const v6, 0x1020016

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    .line 2966
    if-eqz v6, :cond_f

    .line 2967
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    move-result v6

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_e

    .line 2968
    const v6, 0x1020642

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 2969
    .local v6, "titleContainer":Landroid/view/View;
    if-eqz v6, :cond_d

    .line 2970
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 2972
    :cond_d
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2974
    :goto_4
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 2975
    .end local v6    # "titleContainer":Landroid/view/View;
    goto :goto_5

    .line 2976
    :cond_e
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/internal/policy/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2981
    :cond_f
    :goto_5
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v4}, Lcom/android/internal/policy/DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_10

    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFallbackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_10

    .line 2982
    iget-object v6, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v6, v4}, Lcom/android/internal/policy/DecorView;->setBackgroundFallback(Landroid/graphics/drawable/Drawable;)V

    .line 2987
    :cond_10
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 2988
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mTransitionManager:Landroid/transition/TransitionManager;

    if-nez v3, :cond_12

    .line 2989
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v3

    const/16 v4, 0x1a

    invoke-virtual {v3, v4, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 2992
    .local v0, "transitionRes":I
    if-eqz v0, :cond_11

    .line 2993
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    move-result-object v3

    .line 2994
    .local v3, "inflater":Landroid/transition/TransitionInflater;
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0, v4}, Landroid/transition/TransitionInflater;->inflateTransitionManager(ILandroid/view/ViewGroup;)Landroid/transition/TransitionManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mTransitionManager:Landroid/transition/TransitionManager;

    .line 2996
    .end local v3    # "inflater":Landroid/transition/TransitionInflater;
    goto :goto_6

    .line 2997
    :cond_11
    new-instance v3, Landroid/transition/TransitionManager;

    invoke-direct {v3}, Landroid/transition/TransitionManager;-><init>()V

    iput-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mTransitionManager:Landroid/transition/TransitionManager;

    .line 3001
    .end local v0    # "transitionRes":I
    :cond_12
    :goto_6
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mEnterTransition:Landroid/transition/Transition;

    const/16 v3, 0x1b

    invoke-direct {p0, v0, v5, v3}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mEnterTransition:Landroid/transition/Transition;

    .line 3003
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mReturnTransition:Landroid/transition/Transition;

    sget-object v3, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    const/16 v4, 0x27

    invoke-direct {p0, v0, v3, v4}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mReturnTransition:Landroid/transition/Transition;

    .line 3005
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mExitTransition:Landroid/transition/Transition;

    const/16 v4, 0x1c

    invoke-direct {p0, v0, v5, v4}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mExitTransition:Landroid/transition/Transition;

    .line 3007
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mReenterTransition:Landroid/transition/Transition;

    const/16 v4, 0x28

    invoke-direct {p0, v0, v3, v4}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mReenterTransition:Landroid/transition/Transition;

    .line 3009
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementEnterTransition:Landroid/transition/Transition;

    const/16 v4, 0x1d

    invoke-direct {p0, v0, v5, v4}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementEnterTransition:Landroid/transition/Transition;

    .line 3011
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReturnTransition:Landroid/transition/Transition;

    const/16 v4, 0x29

    invoke-direct {p0, v0, v3, v4}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReturnTransition:Landroid/transition/Transition;

    .line 3014
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementExitTransition:Landroid/transition/Transition;

    const/16 v4, 0x1e

    invoke-direct {p0, v0, v5, v4}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementExitTransition:Landroid/transition/Transition;

    .line 3016
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReenterTransition:Landroid/transition/Transition;

    const/16 v4, 0x2a

    invoke-direct {p0, v0, v3, v4}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReenterTransition:Landroid/transition/Transition;

    .line 3019
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    if-nez v0, :cond_13

    .line 3020
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v3, 0x20

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    .line 3023
    :cond_13
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    if-nez v0, :cond_14

    .line 3024
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v3, 0x1f

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    .line 3027
    :cond_14
    iget-wide v3, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFadeDurationMillis:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-gez v0, :cond_15

    .line 3028
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v3, 0x24

    const/16 v4, 0x12c

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    int-to-long v3, v0

    iput-wide v3, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFadeDurationMillis:J

    .line 3032
    :cond_15
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementsUseOverlay:Ljava/lang/Boolean;

    if-nez v0, :cond_16

    .line 3033
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v3, 0x2b

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementsUseOverlay:Ljava/lang/Boolean;

    .line 3038
    .end local v1    # "decorContentParent":Lcom/android/internal/widget/DecorContentParent;
    :cond_16
    return-void
.end method

.method private blacklist isNotInstantAppAndKeyguardRestricted()Z
    .locals 1

    .line 2205
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->isInstantApp()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2206
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2205
    :goto_0
    return v0
.end method

.method private blacklist isTvUserSetupComplete()Z
    .locals 5

    .line 3318
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "user_setup_complete"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 3320
    .local v0, "isTvSetupComplete":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "tv_user_setup_complete"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    move v2, v1

    :cond_1
    and-int/2addr v0, v2

    .line 3322
    return v0
.end method

.method static synthetic blacklist lambda$static$0(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/util/Pair;
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .line 176
    invoke-virtual {p0}, Landroid/view/View;->getWindowSystemUiVisibility()I

    move-result v0

    and-int/lit16 v0, v0, 0x600

    if-eqz v0, :cond_0

    .line 177
    new-instance v0, Landroid/util/Pair;

    sget-object v1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-direct {v0, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 179
    :cond_0
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Insets;

    move-result-object v0

    .line 180
    .local v0, "insetsToApply":Landroid/graphics/Insets;
    new-instance v1, Landroid/util/Pair;

    .line 181
    invoke-virtual {p1, v0}, Landroid/view/WindowInsets;->inset(Landroid/graphics/Insets;)Landroid/view/WindowInsets;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 180
    return-object v1
.end method

.method private blacklist launchDefaultSearch(Landroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 3332
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3333
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->isTvUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3335
    const/4 v0, 0x0

    return v0

    .line 3338
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 3339
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 3342
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    .line 3343
    .local v1, "deviceId":I
    const/4 v2, 0x0

    .line 3344
    .local v2, "searchEvent":Landroid/view/SearchEvent;
    if-eqz v1, :cond_2

    .line 3345
    new-instance v3, Landroid/view/SearchEvent;

    invoke-static {v1}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/SearchEvent;-><init>(Landroid/view/InputDevice;)V

    move-object v2, v3

    .line 3348
    :cond_2
    :try_start_0
    invoke-interface {v0, v2}, Landroid/view/Window$Callback;->onSearchRequested(Landroid/view/SearchEvent;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 3353
    .local v3, "result":Z
    goto :goto_1

    .line 3349
    .end local v3    # "result":Z
    :catch_0
    move-exception v3

    .line 3350
    .local v3, "e":Ljava/lang/AbstractMethodError;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WindowCallback "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " does not implement method onSearchRequested(SearchEvent); fa"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PhoneWindow"

    invoke-static {v5, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3352
    invoke-interface {v0}, Landroid/view/Window$Callback;->onSearchRequested()Z

    move-result v4

    move v3, v4

    .local v4, "result":Z
    goto :goto_1

    .line 3340
    .end local v1    # "deviceId":I
    .end local v2    # "searchEvent":Landroid/view/SearchEvent;
    .end local v3    # "e":Ljava/lang/AbstractMethodError;
    .end local v4    # "result":Z
    :cond_3
    :goto_0
    const/4 v3, 0x0

    .line 3355
    .local v3, "result":Z
    :goto_1
    if-nez v3, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 3358
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3359
    .local v1, "args":Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    const-string v4, "android.intent.extra.ASSIST_INPUT_DEVICE_ID"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3360
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    const-string v2, "android.intent.extra.TIME"

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3361
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "search"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SearchManager;

    .line 3362
    invoke-virtual {v2, v1}, Landroid/app/SearchManager;->launchAssist(Landroid/os/Bundle;)V

    .line 3363
    const/4 v2, 0x1

    return v2

    .line 3365
    .end local v1    # "args":Landroid/os/Bundle;
    :cond_4
    return v3
.end method

.method private blacklist loadImageURI(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .line 3059
    nop

    .line 3060
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 3059
    invoke-static {v1, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3061
    :catch_0
    move-exception v1

    .line 3062
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PhoneWindow"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3064
    .end local v1    # "e":Ljava/lang/Exception;
    return-object v0
.end method

.method private blacklist needLightNavigationBar(I)Z
    .locals 5
    .param p1, "color"    # I

    .line 4257
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mThemeApplied:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 4258
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "navigationbar_use_theme_default"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 4260
    .local v0, "useThemeDefault":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 4261
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110223

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 4263
    .local v1, "needLight":Z
    if-nez v1, :cond_1

    .line 4266
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 4267
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v3

    and-int/lit8 v3, v3, -0x11

    .line 4266
    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 4270
    :cond_1
    return v1

    .line 4277
    .end local v0    # "useThemeDefault":Z
    .end local v1    # "needLight":Z
    :cond_2
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 4278
    .local v0, "pixelHSV":[F
    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 4282
    aget v3, v0, v2

    const v4, 0x3e99999a    # 0.3f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    const/4 v3, 0x2

    aget v3, v0, v3

    const v4, 0x3f6147ae    # 0.88f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_3

    move v1, v2

    :cond_3
    return v1
.end method

.method private blacklist openPanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V
    .locals 19
    .param p1, "st"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 896
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-nez v2, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_7

    .line 902
    :cond_0
    iget v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_3

    .line 903
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 904
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    .line 905
    .local v5, "config":Landroid/content/res/Configuration;
    iget v6, v5, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v6, v6, 0xf

    const/4 v7, 0x4

    if-ne v6, v7, :cond_1

    move v6, v4

    goto :goto_0

    :cond_1
    move v6, v3

    .line 907
    .local v6, "isXLarge":Z
    :goto_0
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v8, 0xb

    if-lt v7, v8, :cond_2

    move v7, v4

    goto :goto_1

    :cond_2
    move v7, v3

    .line 910
    .local v7, "isHoneycombApp":Z
    :goto_1
    if-eqz v6, :cond_3

    if-eqz v7, :cond_3

    .line 911
    return-void

    .line 915
    .end local v2    # "context":Landroid/content/Context;
    .end local v5    # "config":Landroid/content/res/Configuration;
    .end local v6    # "isXLarge":Z
    .end local v7    # "isHoneycombApp":Z
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v2

    .line 916
    .local v2, "cb":Landroid/view/Window$Callback;
    if-eqz v2, :cond_4

    iget v5, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    iget-object v6, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v2, v5, v6}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 918
    invoke-virtual {v0, v1, v4}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    .line 919
    return-void

    .line 922
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    .line 923
    .local v5, "wm":Landroid/view/WindowManager;
    if-nez v5, :cond_5

    .line 924
    return-void

    .line 928
    :cond_5
    invoke-virtual/range {p0 .. p2}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 929
    return-void

    .line 932
    :cond_6
    const/4 v6, -0x2

    .line 933
    .local v6, "width":I
    iget-object v7, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    const/4 v8, -0x1

    if-eqz v7, :cond_9

    iget-boolean v7, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    if-eqz v7, :cond_7

    goto :goto_2

    .line 979
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInListMode()Z

    move-result v7

    if-nez v7, :cond_8

    .line 980
    const/4 v6, -0x1

    goto/16 :goto_4

    .line 981
    :cond_8
    iget-object v7, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-eqz v7, :cond_12

    .line 984
    iget-object v7, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 985
    .local v7, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v7, :cond_12

    iget v9, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v9, v8, :cond_12

    .line 986
    const/4 v6, -0x1

    goto/16 :goto_4

    .line 934
    .end local v7    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_9
    :goto_2
    iget-object v7, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    if-nez v7, :cond_b

    .line 936
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/policy/PhoneWindow;->initializePanelDecor(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    if-nez v7, :cond_c

    .line 937
    :cond_a
    return-void

    .line 938
    :cond_b
    iget-boolean v7, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    if-eqz v7, :cond_c

    iget-object v7, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v7}, Lcom/android/internal/policy/DecorView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_c

    .line 940
    iget-object v7, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v7}, Lcom/android/internal/policy/DecorView;->removeAllViews()V

    .line 944
    :cond_c
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/policy/PhoneWindow;->initializePanelContent(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Z

    move-result v7

    if-eqz v7, :cond_14

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->hasPanelItems()Z

    move-result v7

    if-nez v7, :cond_d

    goto/16 :goto_6

    .line 948
    :cond_d
    iget-object v7, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 949
    .restart local v7    # "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v7, :cond_e

    .line 950
    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    const/4 v10, -0x2

    invoke-direct {v9, v10, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object v7, v9

    .line 954
    :cond_e
    iget v9, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v9, v8, :cond_f

    .line 957
    iget v8, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->fullBackground:I

    .line 958
    .local v8, "backgroundResId":I
    const/4 v6, -0x1

    goto :goto_3

    .line 961
    .end local v8    # "backgroundResId":I
    :cond_f
    iget v8, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->background:I

    .line 963
    .restart local v8    # "backgroundResId":I
    :goto_3
    iget-object v9, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/policy/DecorView;->setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    .line 966
    iget-object v9, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    .line 967
    .local v9, "shownPanelParent":Landroid/view/ViewParent;
    if-eqz v9, :cond_10

    instance-of v10, v9, Landroid/view/ViewGroup;

    if-eqz v10, :cond_10

    .line 968
    move-object v10, v9

    check-cast v10, Landroid/view/ViewGroup;

    iget-object v11, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 970
    :cond_10
    iget-object v10, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    iget-object v11, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v10, v11, v7}, Lcom/android/internal/policy/DecorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 976
    iget-object v10, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->hasFocus()Z

    move-result v10

    if-nez v10, :cond_11

    .line 977
    iget-object v10, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->requestFocus()Z

    .line 979
    .end local v7    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v8    # "backgroundResId":I
    .end local v9    # "shownPanelParent":Landroid/view/ViewParent;
    :cond_11
    nop

    .line 990
    :cond_12
    :goto_4
    iput-boolean v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isHandled:Z

    .line 992
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    const/4 v13, -0x2

    iget v14, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->x:I

    iget v15, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->y:I

    const/16 v16, 0x3eb

    const/high16 v17, 0x820000

    iget-object v7, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    iget v7, v7, Lcom/android/internal/policy/DecorView;->mDefaultOpacity:I

    move-object v11, v3

    move v12, v6

    move/from16 v18, v7

    invoke-direct/range {v11 .. v18}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 999
    .local v3, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-boolean v7, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isCompact:Z

    if-eqz v7, :cond_13

    .line 1000
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getOptionsPanelGravity()I

    move-result v7

    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1001
    sget-object v7, Lcom/android/internal/policy/PhoneWindow;->sRotationWatcher:Lcom/android/internal/policy/PhoneWindow$RotationWatcher;

    invoke-virtual {v7, v0}, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->addWindow(Lcom/android/internal/policy/PhoneWindow;)V

    goto :goto_5

    .line 1003
    :cond_13
    iget v7, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->gravity:I

    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1006
    :goto_5
    iget v7, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->windowAnimations:I

    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1008
    iget-object v7, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    invoke-interface {v5, v7, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1009
    iput-boolean v4, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    .line 1011
    return-void

    .line 945
    .end local v3    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_14
    :goto_6
    return-void

    .line 897
    .end local v2    # "cb":Landroid/view/Window$Callback;
    .end local v5    # "wm":Landroid/view/WindowManager;
    .end local v6    # "width":I
    :cond_15
    :goto_7
    return-void
.end method

.method private blacklist reopenMenu(Z)V
    .locals 6
    .param p1, "toggleMenuMode"    # Z

    .line 1369
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1370
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    .line 1371
    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->isOverflowMenuShowPending()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1372
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1373
    .local v0, "cb":Landroid/view/Window$Callback;
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v3}, Lcom/android/internal/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v3

    const/16 v4, 0x8

    if-eqz v3, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 1393
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v1}, Lcom/android/internal/widget/DecorContentParent;->hideOverflowMenu()Z

    .line 1394
    invoke-virtual {p0, v2, v2}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 1395
    .local v1, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1396
    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v4, v2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_1

    .line 1374
    .end local v1    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_2
    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1376
    iget-boolean v3, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_3

    .line 1378
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Lcom/android/internal/policy/DecorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1379
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 1382
    :cond_3
    invoke-virtual {p0, v2, v2}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 1386
    .restart local v1    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v1, :cond_4

    iget-object v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v3, :cond_4

    iget-boolean v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    if-nez v3, :cond_4

    iget-object v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    iget-object v5, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 1387
    invoke-interface {v0, v2, v3, v5}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1388
    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v4, v2}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 1389
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v2}, Lcom/android/internal/widget/DecorContentParent;->showOverflowMenu()Z

    .line 1399
    .end local v1    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_4
    :goto_1
    return-void

    .line 1402
    .end local v0    # "cb":Landroid/view/Window$Callback;
    :cond_5
    invoke-virtual {p0, v2, v2}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v0

    .line 1404
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-nez v0, :cond_6

    .line 1405
    return-void

    .line 1409
    :cond_6
    iget-boolean v3, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    if-eqz p1, :cond_8

    if-nez v3, :cond_7

    move v3, v1

    goto :goto_2

    :cond_7
    move v3, v2

    .line 1411
    .local v3, "newExpandedMode":Z
    :cond_8
    :goto_2
    iput-boolean v1, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    .line 1412
    invoke-virtual {p0, v0, v2}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    .line 1415
    iput-boolean v3, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    .line 1417
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/PhoneWindow;->openPanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    .line 1418
    return-void
.end method

.method private blacklist restorePanelState(Landroid/util/SparseArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 2362
    .local p1, "icicles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2363
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 2364
    .local v1, "curFeatureId":I
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v2

    .line 2365
    .local v2, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-nez v2, :cond_0

    .line 2367
    goto :goto_1

    .line 2370
    :cond_0
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2371
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->invalidatePanelMenu(I)V

    .line 2362
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2378
    .end local v0    # "i":I
    .end local v1    # "curFeatureId":I
    .end local v2    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_1
    return-void
.end method

.method private blacklist savePanelState(Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 2342
    .local p1, "icicles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 2343
    .local v0, "panels":[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-nez v0, :cond_0

    .line 2344
    return-void

    .line 2347
    :cond_0
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .local v1, "curFeatureId":I
    :goto_0
    if-ltz v1, :cond_2

    .line 2348
    aget-object v2, v0, v1

    if-eqz v2, :cond_1

    .line 2349
    aget-object v2, v0, v1

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2347
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2352
    .end local v1    # "curFeatureId":I
    :cond_2
    return-void
.end method

.method public static blacklist sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;

    .line 3979
    invoke-static {}, Landroid/app/ActivityManager;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3981
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3983
    goto :goto_0

    .line 3982
    :catch_0
    move-exception v0

    .line 3985
    :cond_0
    :goto_0
    return-void
.end method

.method public static blacklist sendCloseSystemWindowsInDisplay(Ljava/lang/String;I)V
    .locals 1
    .param p0, "reason"    # Ljava/lang/String;
    .param p1, "displayId"    # I

    .line 3989
    invoke-static {}, Landroid/app/ActivityManager;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3991
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 3992
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/app/IActivityManager;->closeSystemDialogsInDisplay(Ljava/lang/String;I)V

    goto :goto_0

    .line 3994
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3997
    :goto_0
    goto :goto_1

    .line 3996
    :catch_0
    move-exception v0

    .line 3999
    :cond_1
    :goto_1
    return-void
.end method

.method private blacklist setForceLightNavigationBar(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .line 4286
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 4287
    .local v0, "attr":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 4288
    .local v1, "oldValue":I
    if-eqz p1, :cond_0

    .line 4289
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v3, 0x100000

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    goto :goto_0

    .line 4291
    :cond_0
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const v3, -0x100001

    and-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 4293
    :goto_0
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    if-eq v1, v2, :cond_1

    .line 4294
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forceLight changed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x5

    .line 4295
    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4294
    const-string v3, "PhoneWindow"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4296
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 4297
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4298
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v2}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->requestRecomputeViewAttributes()V

    .line 4301
    :cond_1
    return-void
.end method

.method private blacklist showProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V
    .locals 4
    .param p1, "horizontalProgressBar"    # Landroid/widget/ProgressBar;
    .param p2, "spinnyProgressBar"    # Landroid/widget/ProgressBar;

    .line 1844
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    move-result v0

    .line 1845
    .local v0, "features":I
    and-int/lit8 v1, v0, 0x20

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 1846
    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_0

    .line 1847
    invoke-virtual {p2, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1850
    :cond_0
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 1851
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    const/16 v3, 0x2710

    if-ge v1, v3, :cond_1

    .line 1852
    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1854
    :cond_1
    return-void
.end method

.method private blacklist transitionTo(Landroid/transition/Scene;)V
    .locals 1
    .param p1, "scene"    # Landroid/transition/Scene;

    .line 607
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentScene:Landroid/transition/Scene;

    if-nez v0, :cond_0

    .line 608
    invoke-virtual {p1}, Landroid/transition/Scene;->enter()V

    goto :goto_0

    .line 610
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mTransitionManager:Landroid/transition/TransitionManager;

    invoke-virtual {v0, p1}, Landroid/transition/TransitionManager;->transitionTo(Landroid/transition/Scene;)V

    .line 612
    :goto_0
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mContentScene:Landroid/transition/Scene;

    .line 613
    return-void
.end method

.method private blacklist updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V
    .locals 4
    .param p1, "featureId"    # I
    .param p2, "st"    # Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    .param p3, "fromResume"    # Z

    .line 3161
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 3162
    return-void

    .line 3165
    :cond_0
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    .line 3167
    .local v0, "featureMask":I
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getFeatures()I

    move-result v1

    and-int/2addr v1, v0

    if-nez v1, :cond_1

    if-nez p3, :cond_1

    .line 3168
    return-void

    .line 3171
    :cond_1
    const/4 v1, 0x0

    .line 3172
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz p2, :cond_3

    .line 3173
    iget-object v1, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->child:Landroid/graphics/drawable/Drawable;

    .line 3174
    if-nez v1, :cond_2

    .line 3175
    iget-object v1, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    .line 3176
    :cond_2
    if-nez v1, :cond_3

    .line 3177
    iget-object v1, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->def:Landroid/graphics/drawable/Drawable;

    .line 3179
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    move-result v2

    and-int/2addr v2, v0

    if-nez v2, :cond_5

    .line 3180
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 3181
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isActive()Z

    move-result v2

    if-nez v2, :cond_4

    if-eqz p3, :cond_7

    .line 3182
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Landroid/view/Window;->setChildDrawable(ILandroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 3185
    :cond_5
    if-eqz p2, :cond_7

    iget-object v2, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->cur:Landroid/graphics/drawable/Drawable;

    if-ne v2, v1, :cond_6

    iget v2, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->curAlpha:I

    iget v3, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->alpha:I

    if-eq v2, v3, :cond_7

    .line 3188
    :cond_6
    iput-object v1, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->cur:Landroid/graphics/drawable/Drawable;

    .line 3189
    iget v2, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->alpha:I

    iput v2, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->curAlpha:I

    .line 3190
    iget v2, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->alpha:I

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/internal/policy/PhoneWindow;->onDrawableChanged(ILandroid/graphics/drawable/Drawable;I)V

    .line 3192
    :cond_7
    :goto_0
    return-void
.end method

.method private blacklist updateInt(IIZ)V
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "value"    # I
    .param p3, "fromResume"    # Z

    .line 3198
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 3199
    return-void

    .line 3202
    :cond_0
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    .line 3204
    .local v0, "featureMask":I
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getFeatures()I

    move-result v1

    and-int/2addr v1, v0

    if-nez v1, :cond_1

    if-nez p3, :cond_1

    .line 3205
    return-void

    .line 3208
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    move-result v1

    and-int/2addr v1, v0

    if-nez v1, :cond_2

    .line 3209
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 3210
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/Window;->setChildInt(II)V

    goto :goto_0

    .line 3213
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/policy/PhoneWindow;->onIntChanged(II)V

    .line 3215
    :cond_3
    :goto_0
    return-void
.end method

.method private blacklist updateProgressBars(I)V
    .locals 10
    .param p1, "value"    # I

    .line 1767
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->getCircularProgressBar(Z)Landroid/widget/ProgressBar;

    move-result-object v1

    .line 1768
    .local v1, "circularProgressBar":Landroid/widget/ProgressBar;
    invoke-direct {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->getHorizontalProgressBar(Z)Landroid/widget/ProgressBar;

    move-result-object v2

    .line 1770
    .local v2, "horizontalProgressBar":Landroid/widget/ProgressBar;
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    move-result v3

    .line 1771
    .local v3, "features":I
    const-string v4, "Circular progress bar not located in current window decor"

    const/16 v5, 0x2710

    const/4 v6, 0x0

    const-string v7, "Horizontal progress bar not located in current window decor"

    const-string v8, "PhoneWindow"

    const/4 v9, -0x1

    if-ne p1, v9, :cond_5

    .line 1772
    and-int/lit8 v0, v3, 0x4

    if-eqz v0, :cond_3

    .line 1773
    if-eqz v2, :cond_2

    .line 1774
    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    .line 1775
    .local v0, "level":I
    invoke-virtual {v2}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v7

    if-nez v7, :cond_1

    if-ge v0, v5, :cond_0

    goto :goto_0

    .line 1776
    :cond_0
    const/4 v5, 0x4

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v6

    .line 1777
    .local v5, "visibility":I
    :goto_1
    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1778
    .end local v0    # "level":I
    .end local v5    # "visibility":I
    goto :goto_2

    .line 1779
    :cond_2
    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    :cond_3
    :goto_2
    and-int/lit8 v0, v3, 0x20

    if-eqz v0, :cond_12

    .line 1783
    if-eqz v1, :cond_4

    .line 1784
    invoke-virtual {v1, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_6

    .line 1786
    :cond_4
    invoke-static {v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1789
    :cond_5
    const/4 v9, -0x2

    if-ne p1, v9, :cond_9

    .line 1790
    and-int/lit8 v0, v3, 0x4

    const/16 v5, 0x8

    if-eqz v0, :cond_7

    .line 1791
    if-eqz v2, :cond_6

    .line 1792
    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_3

    .line 1794
    :cond_6
    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1797
    :cond_7
    :goto_3
    and-int/lit8 v0, v3, 0x20

    if-eqz v0, :cond_12

    .line 1798
    if-eqz v1, :cond_8

    .line 1799
    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_6

    .line 1801
    :cond_8
    invoke-static {v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1804
    :cond_9
    const/4 v4, -0x3

    if-ne p1, v4, :cond_b

    .line 1805
    if-eqz v2, :cond_a

    .line 1806
    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_6

    .line 1808
    :cond_a
    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1810
    :cond_b
    const/4 v0, -0x4

    if-ne p1, v0, :cond_d

    .line 1811
    if-eqz v2, :cond_c

    .line 1812
    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_6

    .line 1814
    :cond_c
    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1816
    :cond_d
    if-ltz p1, :cond_10

    if-gt p1, v5, :cond_10

    .line 1820
    if-eqz v2, :cond_e

    .line 1821
    add-int/lit8 v0, p1, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_4

    .line 1823
    :cond_e
    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1826
    :goto_4
    if-ge p1, v5, :cond_f

    .line 1827
    invoke-direct {p0, v2, v1}, Lcom/android/internal/policy/PhoneWindow;->showProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    goto :goto_6

    .line 1829
    :cond_f
    invoke-direct {p0, v2, v1}, Lcom/android/internal/policy/PhoneWindow;->hideProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    goto :goto_6

    .line 1831
    :cond_10
    const/16 v0, 0x4e20

    if-gt v0, p1, :cond_12

    const/16 v0, 0x7530

    if-gt p1, v0, :cond_12

    .line 1832
    if-eqz v2, :cond_11

    .line 1833
    add-int/lit16 v0, p1, -0x4e20

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    goto :goto_5

    .line 1835
    :cond_11
    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1838
    :goto_5
    invoke-direct {p0, v2, v1}, Lcom/android/internal/policy/PhoneWindow;->showProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    .line 1841
    :cond_12
    :goto_6
    return-void
.end method


# virtual methods
.method public whitelist addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 584
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 585
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    .line 587
    :cond_0
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 589
    const-string v0, "PhoneWindow"

    const-string v1, "addContentView does not support content transitions"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 592
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestApplyInsets()V

    .line 593
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 594
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 595
    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 597
    :cond_2
    return-void
.end method

.method public blacklist alwaysReadCloseOnTouchAttr()V
    .locals 1

    .line 2901
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAlwaysReadCloseOnTouchAttr:Z

    .line 2902
    return-void
.end method

.method blacklist checkCloseActionMenu(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .line 1081
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mClosingActionMenu:Z

    if-eqz v0, :cond_0

    .line 1082
    return-void

    .line 1085
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mClosingActionMenu:Z

    .line 1086
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->dismissPopups()V

    .line 1087
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1088
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1089
    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 1091
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow;->mClosingActionMenu:Z

    .line 1092
    return-void
.end method

.method public blacklist clearContentView()V
    .locals 1

    .line 601
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    .line 602
    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->clearContentView()V

    .line 604
    :cond_0
    return-void
.end method

.method public final whitelist closeAllPanels()V
    .locals 6

    .line 1246
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 1247
    .local v0, "wm":Landroid/view/ViewManager;
    if-nez v0, :cond_0

    .line 1248
    return-void

    .line 1251
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 1252
    .local v1, "panels":[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v1, :cond_1

    array-length v2, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 1253
    .local v2, "N":I
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 1254
    aget-object v4, v1, v3

    .line 1255
    .local v4, "panel":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v4, :cond_2

    .line 1256
    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    .line 1253
    .end local v4    # "panel":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1260
    .end local v3    # "i":I
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->closeContextMenu()V

    .line 1261
    return-void
.end method

.method public final whitelist closePanel(I)V
    .locals 2
    .param p1, "featureId"    # I

    .line 1015
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_0

    .line 1016
    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1017
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1018
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->hideOverflowMenu()Z

    goto :goto_0

    .line 1019
    :cond_0
    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    .line 1020
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->closeContextMenu()V

    goto :goto_0

    .line 1022
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    .line 1024
    :goto_0
    return-void
.end method

.method public final blacklist closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V
    .locals 4
    .param p1, "st"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .param p2, "doCallback"    # Z

    .line 1039
    if-eqz p2, :cond_0

    iget v0, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_0

    .line 1040
    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1041
    iget-object v0, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->checkCloseActionMenu(Landroid/view/Menu;)V

    .line 1042
    return-void

    .line 1045
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 1046
    .local v0, "wm":Landroid/view/ViewManager;
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-eqz v2, :cond_2

    .line 1047
    iget-object v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    if-eqz v2, :cond_1

    .line 1048
    iget-object v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    invoke-interface {v0, v2}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 1050
    iget-boolean v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isCompact:Z

    if-eqz v2, :cond_1

    .line 1051
    sget-object v2, Lcom/android/internal/policy/PhoneWindow;->sRotationWatcher:Lcom/android/internal/policy/PhoneWindow$RotationWatcher;

    invoke-virtual {v2, p0}, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->removeWindow(Lcom/android/internal/policy/PhoneWindow;)V

    .line 1055
    :cond_1
    if-eqz p2, :cond_2

    .line 1056
    iget v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    invoke-direct {p0, v2, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->callOnPanelClosed(ILcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/Menu;)V

    .line 1060
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    .line 1061
    iput-boolean v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isHandled:Z

    .line 1062
    iput-boolean v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    .line 1065
    iput-object v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 1067
    iget-boolean v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    if-eqz v3, :cond_3

    .line 1070
    const/4 v3, 0x1

    iput-boolean v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    .line 1071
    iput-boolean v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    .line 1074
    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    if-ne v3, p1, :cond_4

    .line 1075
    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 1076
    iput v2, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I

    .line 1078
    :cond_4
    return-void
.end method

.method public blacklist decorFitsSystemWindows()Z
    .locals 1

    .line 4164
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorFitsSystemWindows:Z

    return v0
.end method

.method public blacklist dispatchRequestedOrientation(I)V
    .locals 2
    .param p1, "requestedOrientation"    # I

    .line 4143
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mLastRequestedOrientation:I

    .line 4144
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    const/4 v1, -0x2

    if-eq p1, v1, :cond_0

    .line 4146
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->dispatchRequestedOrientation(I)V

    .line 4148
    :cond_0
    return-void
.end method

.method protected blacklist dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 3
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 3229
    invoke-super {p0, p1}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 3230
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    .line 3231
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 3233
    :cond_0
    return-void
.end method

.method blacklist doInvalidatePanelMenu(I)V
    .locals 4
    .param p1, "featureId"    # I

    .line 1122
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 1123
    .local v1, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-nez v1, :cond_0

    .line 1124
    return-void

    .line 1126
    :cond_0
    const/4 v2, 0x0

    .line 1127
    .local v2, "savedActionViewStates":Landroid/os/Bundle;
    iget-object v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v3, :cond_2

    .line 1128
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object v2, v3

    .line 1129
    iget-object v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v3, v2}, Lcom/android/internal/view/menu/MenuBuilder;->saveActionViewStates(Landroid/os/Bundle;)V

    .line 1130
    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 1131
    iput-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    .line 1134
    :cond_1
    iget-object v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1135
    iget-object v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->clear()V

    .line 1137
    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    .line 1138
    iput-boolean v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    .line 1141
    const/16 v3, 0x8

    if-eq p1, v3, :cond_3

    if-nez p1, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v3, :cond_4

    .line 1143
    invoke-virtual {p0, v0, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 1144
    if-eqz v1, :cond_4

    .line 1145
    iput-boolean v0, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    .line 1146
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    .line 1149
    :cond_4
    return-void
.end method

.method blacklist doPendingInvalidatePanelMenu()V
    .locals 2

    .line 1115
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    if-eqz v0, :cond_0

    .line 1116
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/DecorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1117
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1119
    :cond_0
    return-void
.end method

.method public blacklist dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 4178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4179
    .local v0, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "PhoneWindow:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4182
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mStatusBarColor=0x"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4183
    iget v1, p0, Lcom/android/internal/policy/PhoneWindow;->mStatusBarColor:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4184
    const-string v1, " mForcedStatusBarColor="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow;->mForcedStatusBarColor:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 4185
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mNavigationBarColor=0x"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4186
    iget v1, p0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4187
    const-string v1, " mForcedNavigationBarColor="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow;->mForcedNavigationBarColor:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 4188
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mDeviceDefaultNavigationBarColor=0x"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4189
    iget v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDeviceDefaultNavigationBarColor:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4190
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mDefaultNavigationBarColor=0x"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4191
    iget v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDefaultNavigationBarColor:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4192
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mSettingsNavigationBarColor=0x"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4193
    iget v1, p0, Lcom/android/internal/policy/PhoneWindow;->mSettingsNavigationBarColor:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4194
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mThemeApplied="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow;->mThemeApplied:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 4197
    return-void
.end method

.method public blacklist findMenuPanel(Landroid/view/Menu;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .line 1342
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 1343
    .local v0, "panels":[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v0, :cond_0

    array-length v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1344
    .local v1, "N":I
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 1345
    aget-object v3, v0, v2

    .line 1346
    .local v3, "panel":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v3, :cond_1

    iget-object v4, v3, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-ne v4, p1, :cond_1

    .line 1347
    return-object v3

    .line 1344
    .end local v3    # "panel":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1350
    .end local v2    # "i":I
    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method

.method protected blacklist generateDecor(I)Lcom/android/internal/policy/DecorView;
    .locals 4
    .param p1, "featureId"    # I

    .line 2461
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mUseDecorContext:Z

    if-eqz v0, :cond_2

    .line 2462
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2463
    .local v0, "applicationContext":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 2464
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, "context":Landroid/content/Context;
    goto :goto_0

    .line 2466
    .end local v1    # "context":Landroid/content/Context;
    :cond_0
    new-instance v1, Lcom/android/internal/policy/DecorContext;

    invoke-direct {v1, v0, p0}, Lcom/android/internal/policy/DecorContext;-><init>(Landroid/content/Context;Lcom/android/internal/policy/PhoneWindow;)V

    .line 2467
    .restart local v1    # "context":Landroid/content/Context;
    iget v2, p0, Lcom/android/internal/policy/PhoneWindow;->mTheme:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 2468
    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    .line 2471
    .end local v0    # "applicationContext":Landroid/content/Context;
    :cond_1
    :goto_0
    goto :goto_1

    .line 2472
    .end local v1    # "context":Landroid/content/Context;
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 2474
    .restart local v1    # "context":Landroid/content/Context;
    :goto_1
    new-instance v0, Lcom/android/internal/policy/DecorView;

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-direct {v0, v1, p1, p0, v2}, Lcom/android/internal/policy/DecorView;-><init>(Landroid/content/Context;ILcom/android/internal/policy/PhoneWindow;Landroid/view/WindowManager$LayoutParams;)V

    return-object v0
.end method

.method protected blacklist generateLayout(Lcom/android/internal/policy/DecorView;)Landroid/view/ViewGroup;
    .locals 19
    .param p1, "decor"    # Lcom/android/internal/policy/DecorView;

    .line 2480
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v3

    .line 2492
    .local v3, "a":Landroid/content/res/TypedArray;
    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    .line 2493
    nop

    .line 2494
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    move-result v0

    not-int v0, v0

    const v6, 0x10100

    and-int v7, v0, v6

    .line 2495
    .local v7, "flagsToUpdate":I
    iget-boolean v0, v1, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    if-eqz v0, :cond_0

    .line 2496
    const/4 v0, -0x2

    invoke-virtual {v1, v0, v0}, Lcom/android/internal/policy/PhoneWindow;->setLayout(II)V

    .line 2497
    invoke-virtual {v1, v5, v7}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    goto :goto_0

    .line 2499
    :cond_0
    invoke-virtual {v1, v6, v7}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    .line 2500
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsSides(I)V

    .line 2501
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 2504
    :goto_0
    const/4 v6, 0x3

    invoke-virtual {v3, v6, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    const/16 v8, 0x8

    const/4 v9, 0x1

    if-eqz v0, :cond_1

    .line 2505
    invoke-virtual {v1, v9}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    goto :goto_1

    .line 2506
    :cond_1
    const/16 v0, 0xf

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2508
    invoke-virtual {v1, v8}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    .line 2511
    :cond_2
    :goto_1
    const/16 v0, 0x11

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    const/16 v10, 0x9

    if-eqz v0, :cond_3

    .line 2512
    invoke-virtual {v1, v10}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    .line 2515
    :cond_3
    const/16 v0, 0x10

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 2516
    const/16 v11, 0xa

    invoke-virtual {v1, v11}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    .line 2519
    :cond_4
    invoke-virtual {v3, v10, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 2520
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    move-result v10

    not-int v10, v10

    const/16 v11, 0x400

    and-int/2addr v10, v11

    invoke-virtual {v1, v11, v10}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    .line 2523
    :cond_5
    const/16 v10, 0x17

    invoke-virtual {v3, v10, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 2525
    nop

    .line 2526
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    move-result v10

    not-int v10, v10

    const/high16 v11, 0x4000000

    and-int/2addr v10, v11

    .line 2525
    invoke-virtual {v1, v11, v10}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    .line 2529
    :cond_6
    const/16 v10, 0x18

    invoke-virtual {v3, v10, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 2531
    nop

    .line 2532
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    move-result v10

    not-int v10, v10

    const/high16 v11, 0x8000000

    and-int/2addr v10, v11

    .line 2531
    invoke-virtual {v1, v11, v10}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    .line 2535
    :cond_7
    const/16 v10, 0xe

    invoke-virtual {v3, v10, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    const/high16 v11, 0x100000

    if-eqz v10, :cond_8

    .line 2536
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    move-result v10

    not-int v10, v10

    and-int/2addr v10, v11

    invoke-virtual {v1, v11, v10}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    .line 2539
    :cond_8
    const/16 v10, 0x12

    .line 2540
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v13, 0xb

    if-lt v12, v13, :cond_9

    move v12, v9

    goto :goto_2

    :cond_9
    move v12, v5

    .line 2539
    :goto_2
    invoke-virtual {v3, v10, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 2542
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    move-result v10

    not-int v10, v10

    const/high16 v12, 0x800000

    and-int/2addr v10, v12

    invoke-virtual {v1, v12, v10}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    .line 2545
    :cond_a
    const/16 v10, 0x13

    iget-object v12, v1, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMajor:Landroid/util/TypedValue;

    invoke-virtual {v3, v10, v12}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 2546
    const/16 v10, 0x14

    iget-object v12, v1, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMinor:Landroid/util/TypedValue;

    invoke-virtual {v3, v10, v12}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 2549
    const/16 v10, 0x41

    invoke-virtual {v3, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 2550
    iget-object v12, v1, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMajor:Landroid/util/TypedValue;

    if-nez v12, :cond_b

    new-instance v12, Landroid/util/TypedValue;

    invoke-direct {v12}, Landroid/util/TypedValue;-><init>()V

    iput-object v12, v1, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMajor:Landroid/util/TypedValue;

    .line 2551
    :cond_b
    iget-object v12, v1, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMajor:Landroid/util/TypedValue;

    invoke-virtual {v3, v10, v12}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 2554
    :cond_c
    const/16 v10, 0x42

    invoke-virtual {v3, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 2555
    iget-object v12, v1, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMinor:Landroid/util/TypedValue;

    if-nez v12, :cond_d

    new-instance v12, Landroid/util/TypedValue;

    invoke-direct {v12}, Landroid/util/TypedValue;-><init>()V

    iput-object v12, v1, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMinor:Landroid/util/TypedValue;

    .line 2556
    :cond_d
    iget-object v12, v1, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMinor:Landroid/util/TypedValue;

    invoke-virtual {v3, v10, v12}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 2559
    :cond_e
    const/16 v10, 0x3f

    invoke-virtual {v3, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 2560
    iget-object v12, v1, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMajor:Landroid/util/TypedValue;

    if-nez v12, :cond_f

    new-instance v12, Landroid/util/TypedValue;

    invoke-direct {v12}, Landroid/util/TypedValue;-><init>()V

    iput-object v12, v1, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMajor:Landroid/util/TypedValue;

    .line 2561
    :cond_f
    iget-object v12, v1, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMajor:Landroid/util/TypedValue;

    invoke-virtual {v3, v10, v12}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 2564
    :cond_10
    const/16 v10, 0x40

    invoke-virtual {v3, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v12

    if-eqz v12, :cond_12

    .line 2565
    iget-object v12, v1, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMinor:Landroid/util/TypedValue;

    if-nez v12, :cond_11

    new-instance v12, Landroid/util/TypedValue;

    invoke-direct {v12}, Landroid/util/TypedValue;-><init>()V

    iput-object v12, v1, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMinor:Landroid/util/TypedValue;

    .line 2566
    :cond_11
    iget-object v12, v1, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMinor:Landroid/util/TypedValue;

    invoke-virtual {v3, v10, v12}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 2569
    :cond_12
    const/16 v12, 0x19

    invoke-virtual {v3, v12, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    if-eqz v12, :cond_13

    .line 2570
    const/16 v12, 0xc

    invoke-virtual {v1, v12}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    .line 2572
    :cond_13
    const/16 v12, 0x2c

    invoke-virtual {v3, v12, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    if-eqz v12, :cond_14

    .line 2573
    const/16 v12, 0xd

    invoke-virtual {v1, v12}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    .line 2576
    :cond_14
    const/4 v12, 0x5

    invoke-virtual {v3, v12, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    iput-boolean v12, v1, Lcom/android/internal/policy/PhoneWindow;->mIsTranslucent:Z

    .line 2578
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v12

    .line 2579
    .local v12, "context":Landroid/content/Context;
    invoke-virtual {v12}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 2580
    .local v14, "targetSdk":I
    const/16 v15, 0x15

    if-ge v14, v15, :cond_15

    move v15, v9

    goto :goto_3

    :cond_15
    move v15, v5

    .line 2581
    .local v15, "targetPreL":Z
    :goto_3
    const/16 v0, 0x1d

    if-ge v14, v0, :cond_16

    move v0, v9

    goto :goto_4

    :cond_16
    move v0, v5

    :goto_4
    move/from16 v17, v0

    .line 2583
    .local v17, "targetPreQ":Z
    iget-boolean v0, v1, Lcom/android/internal/policy/PhoneWindow;->mForcedStatusBarColor:Z

    if-nez v0, :cond_17

    .line 2584
    const/16 v0, 0x22

    const/high16 v8, -0x1000000

    invoke-virtual {v3, v0, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, v1, Lcom/android/internal/policy/PhoneWindow;->mStatusBarColor:I

    .line 2586
    :cond_17
    iget-boolean v0, v1, Lcom/android/internal/policy/PhoneWindow;->mForcedNavigationBarColor:Z

    if-nez v0, :cond_18

    .line 2587
    const/16 v0, 0x23

    const/high16 v8, -0x1000000

    invoke-virtual {v3, v0, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, v1, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    .line 2588
    const/16 v0, 0x31

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, v1, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarDividerColor:I

    .line 2591
    :cond_18
    if-nez v17, :cond_19

    .line 2592
    const/16 v0, 0x33

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/internal/policy/PhoneWindow;->mEnsureStatusBarContrastWhenTransparent:Z

    .line 2594
    const/16 v0, 0x34

    invoke-virtual {v3, v0, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/internal/policy/PhoneWindow;->mEnsureNavigationBarContrastWhenTransparent:Z

    .line 2598
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    .line 2602
    .local v8, "params":Landroid/view/WindowManager$LayoutParams;
    const/16 v0, 0x23

    iget v4, v1, Lcom/android/internal/policy/PhoneWindow;->mDeviceDefaultNavigationBarColor:I

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 2604
    .local v0, "appColor":I
    iget v4, v1, Lcom/android/internal/policy/PhoneWindow;->mDeviceDefaultNavigationBarColor:I

    if-ne v4, v0, :cond_1a

    move v4, v9

    goto :goto_5

    :cond_1a
    move v4, v5

    .line 2605
    .local v4, "appUseDeviceDefault":Z
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getDefaultNavigationBarColor()I

    move-result v13

    iput v13, v1, Lcom/android/internal/policy/PhoneWindow;->mDefaultNavigationBarColor:I

    .line 2607
    iget-boolean v6, v1, Lcom/android/internal/policy/PhoneWindow;->mForcedNavigationBarColor:Z

    if-nez v6, :cond_1c

    .line 2608
    if-eqz v4, :cond_1b

    move v6, v13

    goto :goto_6

    :cond_1b
    move v6, v0

    :goto_6
    iput v6, v1, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    .line 2611
    :cond_1c
    iget v6, v1, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    if-ne v6, v13, :cond_1d

    .line 2613
    invoke-direct {v1, v6}, Lcom/android/internal/policy/PhoneWindow;->needLightNavigationBar(I)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 2614
    iget v6, v8, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/2addr v6, v11

    iput v6, v8, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 2621
    .end local v0    # "appColor":I
    .end local v4    # "appUseDeviceDefault":Z
    :cond_1d
    iget-boolean v0, v1, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    if-nez v0, :cond_21

    .line 2622
    if-nez v15, :cond_1e

    const/16 v0, 0x21

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2625
    const/high16 v0, -0x80000000

    const/high16 v4, -0x80000000

    .line 2626
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    move-result v6

    not-int v6, v6

    and-int/2addr v4, v6

    .line 2625
    invoke-virtual {v1, v0, v4}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    .line 2628
    :cond_1e
    iget-object v0, v1, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    iget-boolean v0, v0, Lcom/android/internal/policy/DecorView;->mForceWindowDrawsBarBackgrounds:Z

    if-eqz v0, :cond_1f

    .line 2629
    iget v0, v8, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v4, 0x20000

    or-int/2addr v0, v4

    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2632
    :cond_1f
    iget-object v0, v1, Lcom/android/internal/policy/PhoneWindow;->mActivityCurrentConfig:Landroid/content/res/Configuration;

    if-eqz v0, :cond_20

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 2633
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/4 v4, 0x5

    if-ne v0, v4, :cond_20

    goto :goto_7

    .line 2637
    :cond_20
    iget v0, v8, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/2addr v0, v10

    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2640
    :cond_21
    :goto_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/policy/DecorView;->getSystemUiVisibility()I

    move-result v4

    .line 2641
    .local v4, "sysUiVis":I
    const/16 v6, 0x2000

    .line 2642
    .local v6, "statusLightFlag":I
    const/16 v0, 0x2d

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2643
    const/16 v0, 0x2000

    goto :goto_8

    :cond_22
    move v0, v5

    :goto_8
    move v10, v0

    .line 2644
    .local v10, "statusFlag":I
    const/16 v11, 0x10

    .line 2645
    .local v11, "navLightFlag":I
    const/16 v0, 0x30

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 2646
    const/16 v0, 0x10

    goto :goto_9

    :cond_23
    move v0, v5

    :goto_9
    move v13, v0

    .line 2647
    .local v13, "navFlag":I
    and-int/lit16 v0, v4, -0x2011

    or-int v16, v10, v13

    or-int v0, v0, v16

    invoke-virtual {v2, v0}, Lcom/android/internal/policy/DecorView;->setSystemUiVisibility(I)V

    .line 2656
    :try_start_0
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->getSamsungThemeOverlays()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_25

    .line 2658
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 2659
    .local v0, "isDeviceDefault":Landroid/util/TypedValue;
    invoke-virtual {v12}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move/from16 v18, v4

    .end local v4    # "sysUiVis":I
    .local v18, "sysUiVis":I
    const v4, 0x11200b9

    :try_start_1
    invoke-virtual {v9, v4, v0, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 2665
    iget v4, v0, Landroid/util/TypedValue;->data:I

    if-eqz v4, :cond_26

    const/16 v4, 0x2d

    .line 2666
    const/4 v9, 0x1

    invoke-virtual {v3, v4, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 2667
    iget v4, v1, Lcom/android/internal/policy/PhoneWindow;->mStatusBarColor:I

    if-eqz v4, :cond_26

    .line 2668
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v9, 0x1110224

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 2670
    nop

    .line 2671
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/policy/DecorView;->getSystemUiVisibility()I

    move-result v4

    or-int/lit16 v4, v4, 0x2000

    .line 2670
    invoke-virtual {v2, v4}, Lcom/android/internal/policy/DecorView;->setSystemUiVisibility(I)V

    goto :goto_a

    .line 2674
    :cond_24
    nop

    .line 2675
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/policy/DecorView;->getSystemUiVisibility()I

    move-result v4

    and-int/lit16 v4, v4, -0x2001

    .line 2674
    invoke-virtual {v2, v4}, Lcom/android/internal/policy/DecorView;->setSystemUiVisibility(I)V

    .line 2678
    :goto_a
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v9, 0x106097c

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, v1, Lcom/android/internal/policy/PhoneWindow;->mStatusBarColor:I

    goto :goto_b

    .line 2656
    .end local v0    # "isDeviceDefault":Landroid/util/TypedValue;
    .end local v18    # "sysUiVis":I
    .restart local v4    # "sysUiVis":I
    :cond_25
    move/from16 v18, v4

    .line 2685
    .end local v4    # "sysUiVis":I
    .restart local v18    # "sysUiVis":I
    :cond_26
    :goto_b
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->getSamsungThemeOverlays()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_27

    .line 2686
    invoke-static {v12}, Landroid/content/om/WallpaperThemeUtils;->hasWallpaperThemeOverlays(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2687
    :cond_27
    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/android/internal/policy/PhoneWindow;->mThemeApplied:Z

    .line 2688
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getDefaultNavigationBarColor()I

    move-result v0

    .line 2689
    .local v0, "themeColor":I
    iget v4, v1, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    iget v9, v1, Lcom/android/internal/policy/PhoneWindow;->mDefaultNavigationBarColor:I

    if-ne v4, v9, :cond_28

    iget-boolean v4, v1, Lcom/android/internal/policy/PhoneWindow;->mForcedNavigationBarColor:Z

    if-nez v4, :cond_28

    .line 2691
    iput v0, v1, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    .line 2692
    nop

    .line 2693
    invoke-direct {v1, v0}, Lcom/android/internal/policy/PhoneWindow;->needLightNavigationBar(I)Z

    move-result v4

    if-nez v4, :cond_28

    .line 2694
    iget v4, v8, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const v9, -0x100001

    and-int/2addr v4, v9

    iput v4, v8, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 2697
    :cond_28
    iput v0, v1, Lcom/android/internal/policy/PhoneWindow;->mDefaultNavigationBarColor:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2703
    .end local v0    # "themeColor":I
    :cond_29
    goto :goto_d

    .line 2701
    :catch_0
    move-exception v0

    goto :goto_c

    .end local v18    # "sysUiVis":I
    .restart local v4    # "sysUiVis":I
    :catch_1
    move-exception v0

    move/from16 v18, v4

    .line 2702
    .end local v4    # "sysUiVis":I
    .local v0, "e":Ljava/lang/Exception;
    .restart local v18    # "sysUiVis":I
    :goto_c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2706
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_d
    const/16 v0, 0x32

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 2707
    const/4 v4, -0x1

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 2708
    .local v4, "mode":I
    if-ltz v4, :cond_2a

    const/4 v9, 0x3

    if-gt v4, v9, :cond_2a

    .line 2713
    iput v4, v8, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    goto :goto_e

    .line 2710
    :cond_2a
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown windowLayoutInDisplayCutoutMode: "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2711
    const/16 v9, 0x32

    invoke-virtual {v3, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2716
    .end local v4    # "mode":I
    :cond_2b
    :goto_e
    iget-boolean v0, v1, Lcom/android/internal/policy/PhoneWindow;->mAlwaysReadCloseOnTouchAttr:Z

    if-nez v0, :cond_2c

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0xb

    if-lt v0, v4, :cond_2d

    .line 2718
    :cond_2c
    const/16 v0, 0x15

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 2721
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/android/internal/policy/PhoneWindow;->setCloseOnTouchOutsideIfNotSet(Z)V

    .line 2725
    :cond_2d
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->hasSoftInputMode()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 2726
    const/16 v0, 0xd

    iget v4, v8, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 2731
    :cond_2e
    iget-boolean v0, v1, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    const/16 v4, 0xb

    invoke-virtual {v3, v4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    const/4 v4, 0x2

    if-eqz v0, :cond_30

    .line 2734
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    move-result v0

    and-int/2addr v0, v4

    if-nez v0, :cond_2f

    .line 2735
    iget v0, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v0, v4

    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2737
    :cond_2f
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->haveDimAmount()Z

    move-result v0

    if-nez v0, :cond_30

    .line 2738
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {v3, v5, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 2743
    :cond_30
    const/16 v0, 0x36

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 2744
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    move-result v0

    const/4 v9, 0x4

    and-int/2addr v0, v9

    if-nez v0, :cond_31

    .line 2745
    iget v0, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v0, v9

    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2748
    :cond_31
    const/16 v0, 0x35

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/view/WindowManager$LayoutParams;->setBlurBehindRadius(I)V

    .line 2752
    :cond_32
    const/16 v0, 0x37

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/PhoneWindow;->setBackgroundBlurRadius(I)V

    .line 2756
    iget v0, v8, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-nez v0, :cond_33

    .line 2757
    const/16 v9, 0x8

    invoke-virtual {v3, v9, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2763
    :cond_33
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_39

    .line 2764
    iget-object v0, v1, Lcom/android/internal/policy/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_35

    .line 2766
    iget v0, v1, Lcom/android/internal/policy/PhoneWindow;->mFrameResource:I

    if-nez v0, :cond_34

    .line 2767
    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, v1, Lcom/android/internal/policy/PhoneWindow;->mFrameResource:I

    .line 2770
    :cond_34
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 2771
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/policy/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 2773
    iget-object v0, v1, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    invoke-virtual {v0, v9}, Lcom/android/internal/policy/DecorView;->setLastBackgroundResource(I)V

    .line 2777
    :cond_35
    const/16 v0, 0x2e

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 2778
    const/16 v0, 0x2e

    .line 2779
    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFallbackDrawable:Landroid/graphics/drawable/Drawable;

    .line 2781
    :cond_36
    iget-boolean v0, v1, Lcom/android/internal/policy/PhoneWindow;->mLoadElevation:Z

    if-eqz v0, :cond_38

    .line 2783
    iget-object v0, v1, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->isDialogInPopOver()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 2784
    const/4 v0, 0x0

    iput v0, v1, Lcom/android/internal/policy/PhoneWindow;->mElevation:F

    goto :goto_f

    .line 2786
    :cond_37
    const/16 v0, 0x25

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, v1, Lcom/android/internal/policy/PhoneWindow;->mElevation:F

    .line 2789
    :cond_38
    :goto_f
    const/16 v0, 0x26

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/internal/policy/PhoneWindow;->mClipToOutline:Z

    .line 2790
    const/4 v0, 0x7

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, v1, Lcom/android/internal/policy/PhoneWindow;->mTextColor:I

    .line 2796
    :cond_39
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    move-result v0

    .line 2798
    .local v0, "features":I
    and-int/lit8 v4, v0, 0x18

    if-eqz v4, :cond_3b

    .line 2799
    iget-boolean v4, v1, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    if-eqz v4, :cond_3a

    .line 2800
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 2801
    .local v4, "res":Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    const v5, 0x112004c

    const/4 v2, 0x1

    invoke-virtual {v9, v5, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 2803
    iget v2, v4, Landroid/util/TypedValue;->resourceId:I

    .line 2804
    .end local v4    # "res":Landroid/util/TypedValue;
    .local v2, "layoutResource":I
    goto :goto_10

    .line 2805
    .end local v2    # "layoutResource":I
    :cond_3a
    const v2, 0x1090125

    .line 2808
    .restart local v2    # "layoutResource":I
    :goto_10
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Lcom/android/internal/policy/PhoneWindow;->removeFeature(I)V

    goto/16 :goto_12

    .line 2810
    .end local v2    # "layoutResource":I
    :cond_3b
    and-int/lit8 v2, v0, 0x24

    if-eqz v2, :cond_3c

    and-int/lit16 v2, v0, 0x100

    if-nez v2, :cond_3c

    .line 2814
    const v2, 0x1090121

    .restart local v2    # "layoutResource":I
    goto :goto_12

    .line 2816
    .end local v2    # "layoutResource":I
    :cond_3c
    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_3e

    .line 2819
    iget-boolean v2, v1, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    if-eqz v2, :cond_3d

    .line 2820
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 2821
    .local v2, "res":Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x1120049

    const/4 v9, 0x1

    invoke-virtual {v4, v5, v2, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 2823
    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    .line 2824
    .local v2, "layoutResource":I
    goto :goto_11

    .line 2825
    .end local v2    # "layoutResource":I
    :cond_3d
    const v2, 0x1090120

    .line 2828
    .restart local v2    # "layoutResource":I
    :goto_11
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Lcom/android/internal/policy/PhoneWindow;->removeFeature(I)V

    goto :goto_12

    .line 2829
    .end local v2    # "layoutResource":I
    :cond_3e
    and-int/lit8 v2, v0, 0x2

    if-nez v2, :cond_41

    .line 2832
    iget-boolean v2, v1, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    if-eqz v2, :cond_3f

    .line 2833
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 2834
    .local v2, "res":Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x112004b

    const/4 v9, 0x1

    invoke-virtual {v4, v5, v2, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 2836
    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    .line 2837
    .local v2, "layoutResource":I
    goto :goto_12

    .end local v2    # "layoutResource":I
    :cond_3f
    and-int/lit16 v2, v0, 0x100

    if-eqz v2, :cond_40

    .line 2838
    const/16 v2, 0x3e

    const v4, 0x109011f

    invoke-virtual {v3, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .restart local v2    # "layoutResource":I
    goto :goto_12

    .line 2842
    .end local v2    # "layoutResource":I
    :cond_40
    const v2, 0x1090124

    .restart local v2    # "layoutResource":I
    goto :goto_12

    .line 2845
    .end local v2    # "layoutResource":I
    :cond_41
    and-int/lit16 v2, v0, 0x400

    if-eqz v2, :cond_42

    .line 2846
    const v2, 0x1090123

    .restart local v2    # "layoutResource":I
    goto :goto_12

    .line 2849
    .end local v2    # "layoutResource":I
    :cond_42
    const v2, 0x1090122

    .line 2853
    .restart local v2    # "layoutResource":I
    :goto_12
    iget-object v4, v1, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v4}, Lcom/android/internal/policy/DecorView;->startChanging()V

    .line 2854
    iget-object v4, v1, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    iget-object v5, v1, Lcom/android/internal/policy/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v4, v5, v2}, Lcom/android/internal/policy/DecorView;->onResourcesLoaded(Landroid/view/LayoutInflater;I)V

    .line 2856
    const v4, 0x1020002

    invoke-virtual {v1, v4}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 2857
    .local v4, "contentParent":Landroid/view/ViewGroup;
    if-eqz v4, :cond_48

    .line 2861
    and-int/lit8 v5, v0, 0x20

    if-eqz v5, :cond_43

    .line 2862
    const/4 v5, 0x0

    invoke-direct {v1, v5}, Lcom/android/internal/policy/PhoneWindow;->getCircularProgressBar(Z)Landroid/widget/ProgressBar;

    move-result-object v5

    .line 2863
    .local v5, "progress":Landroid/widget/ProgressBar;
    if-eqz v5, :cond_43

    .line 2864
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 2870
    .end local v5    # "progress":Landroid/widget/ProgressBar;
    :cond_43
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v5

    if-nez v5, :cond_47

    .line 2871
    iget-object v5, v1, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    iget-object v9, v1, Lcom/android/internal/policy/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v9}, Lcom/android/internal/policy/DecorView;->setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2874
    iget v5, v1, Lcom/android/internal/policy/PhoneWindow;->mFrameResource:I

    if-eqz v5, :cond_44

    .line 2875
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v9, v1, Lcom/android/internal/policy/PhoneWindow;->mFrameResource:I

    invoke-virtual {v5, v9}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .local v5, "frame":Landroid/graphics/drawable/Drawable;
    goto :goto_13

    .line 2877
    .end local v5    # "frame":Landroid/graphics/drawable/Drawable;
    :cond_44
    const/4 v5, 0x0

    .line 2879
    .restart local v5    # "frame":Landroid/graphics/drawable/Drawable;
    :goto_13
    iget-object v9, v1, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v9, v5}, Lcom/android/internal/policy/DecorView;->setWindowFrame(Landroid/graphics/drawable/Drawable;)V

    .line 2881
    iget-object v9, v1, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    move/from16 v16, v0

    .end local v0    # "features":I
    .local v16, "features":I
    iget v0, v1, Lcom/android/internal/policy/PhoneWindow;->mElevation:F

    invoke-virtual {v9, v0}, Lcom/android/internal/policy/DecorView;->setElevation(F)V

    .line 2882
    iget-object v0, v1, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    iget-boolean v9, v1, Lcom/android/internal/policy/PhoneWindow;->mClipToOutline:Z

    invoke-virtual {v0, v9}, Lcom/android/internal/policy/DecorView;->setClipToOutline(Z)V

    .line 2884
    iget-object v0, v1, Lcom/android/internal/policy/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_45

    .line 2885
    invoke-virtual {v1, v0}, Lcom/android/internal/policy/PhoneWindow;->setTitle(Ljava/lang/CharSequence;)V

    .line 2888
    :cond_45
    iget v0, v1, Lcom/android/internal/policy/PhoneWindow;->mTitleColor:I

    if-nez v0, :cond_46

    .line 2889
    iget v0, v1, Lcom/android/internal/policy/PhoneWindow;->mTextColor:I

    iput v0, v1, Lcom/android/internal/policy/PhoneWindow;->mTitleColor:I

    .line 2891
    :cond_46
    iget v0, v1, Lcom/android/internal/policy/PhoneWindow;->mTitleColor:I

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/PhoneWindow;->setTitleColor(I)V

    goto :goto_14

    .line 2870
    .end local v5    # "frame":Landroid/graphics/drawable/Drawable;
    .end local v16    # "features":I
    .restart local v0    # "features":I
    :cond_47
    move/from16 v16, v0

    .line 2894
    .end local v0    # "features":I
    .restart local v16    # "features":I
    :goto_14
    iget-object v0, v1, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->finishChanging()V

    .line 2896
    return-object v4

    .line 2858
    .end local v16    # "features":I
    .restart local v0    # "features":I
    :cond_48
    move/from16 v16, v0

    .end local v0    # "features":I
    .restart local v16    # "features":I
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v5, "Window couldn\'t find content container view"

    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getAllowEnterTransitionOverlap()Z
    .locals 1

    .line 3479
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public whitelist getAllowReturnTransitionOverlap()Z
    .locals 1

    .line 3489
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0
.end method

.method blacklist getAudioManager()Landroid/media/AudioManager;
    .locals 2

    .line 2077
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 2078
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAudioManager:Landroid/media/AudioManager;

    .line 2080
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method public whitelist getContentScene()Landroid/transition/Scene;
    .locals 1

    .line 522
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentScene:Landroid/transition/Scene;

    return-object v0
.end method

.method public whitelist getCurrentFocus()Landroid/view/View;
    .locals 1

    .line 617
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->findFocus()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method blacklist getDecorCaptionShade()I
    .locals 1

    .line 4111
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorCaptionShade:I

    return v0
.end method

.method public final whitelist getDecorView()Landroid/view/View;
    .locals 1

    .line 2215
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mForceDecorInstall:Z

    if-eqz v0, :cond_1

    .line 2216
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    .line 2218
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    return-object v0
.end method

.method blacklist getDefaultNavigationBarColor()I
    .locals 3

    .line 4356
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mThemeApplied:Z

    if-eqz v0, :cond_1

    .line 4357
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "navigationbar_use_theme_default"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    move v0, v2

    .line 4359
    .local v0, "useThemeDefault":Z
    if-eqz v0, :cond_1

    .line 4360
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106094e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    return v1

    .line 4365
    .end local v0    # "useThemeDefault":Z
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isNightMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4366
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDeviceDefaultNavigationBarColor:I

    return v0

    .line 4368
    :cond_2
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSettingsNavigationBarColor:I

    return v0
.end method

.method public blacklist getDeviceDefaultNavigationBarColor()I
    .locals 1

    .line 4329
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDeviceDefaultNavigationBarColor:I

    return v0
.end method

.method public blacklist getElevation()F
    .locals 1

    .line 1583
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mElevation:F

    return v0
.end method

.method public whitelist getEnterTransition()Landroid/transition/Transition;
    .locals 1

    .line 3430
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mEnterTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method public whitelist getExitTransition()Landroid/transition/Transition;
    .locals 1

    .line 3441
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mExitTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method public whitelist getInsetsController()Landroid/view/WindowInsetsController;
    .locals 1

    .line 4124
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getLastRequestedOrientation()I
    .locals 1

    .line 4152
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mLastRequestedOrientation:I

    return v0
.end method

.method public whitelist getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .line 653
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method blacklist getLocalFeaturesPrivate()I
    .locals 1

    .line 3963
    invoke-super {p0}, Landroid/view/Window;->getLocalFeatures()I

    move-result v0

    return v0
.end method

.method public whitelist getMediaController()Landroid/media/session/MediaController;
    .locals 1

    .line 3385
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    return-object v0
.end method

.method public blacklist getNavigationBarBackgroundView()Landroid/view/View;
    .locals 1

    .line 4240
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getNavigationBarBackgroundView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public whitelist getNavigationBarColor()I
    .locals 1

    .line 4022
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    return v0
.end method

.method public whitelist getNavigationBarDividerColor()I
    .locals 1

    .line 4053
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarDividerColor:I

    return v0
.end method

.method public whitelist getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;
    .locals 1

    .line 4251
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mProxyOnBackInvokedDispatcher:Landroid/window/ProxyOnBackInvokedDispatcher;

    return-object v0
.end method

.method blacklist getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "required"    # Z

    .line 3100
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZLcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getReenterTransition()Landroid/transition/Transition;
    .locals 2

    .line 3446
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mReenterTransition:Landroid/transition/Transition;

    sget-object v1, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getExitTransition()Landroid/transition/Transition;

    move-result-object v0

    goto :goto_0

    .line 3447
    :cond_0
    nop

    .line 3446
    :goto_0
    return-object v0
.end method

.method public whitelist getReturnTransition()Landroid/transition/Transition;
    .locals 2

    .line 3435
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mReturnTransition:Landroid/transition/Transition;

    sget-object v1, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getEnterTransition()Landroid/transition/Transition;

    move-result-object v0

    goto :goto_0

    .line 3436
    :cond_0
    nop

    .line 3435
    :goto_0
    return-object v0
.end method

.method public whitelist getRootSurfaceControl()Landroid/view/AttachedSurfaceControl;
    .locals 1

    .line 4245
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getViewRootImplOrNull()Landroid/view/ViewRootImpl;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSharedElementEnterTransition()Landroid/transition/Transition;
    .locals 1

    .line 3452
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementEnterTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method public whitelist getSharedElementExitTransition()Landroid/transition/Transition;
    .locals 1

    .line 3463
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementExitTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method public whitelist getSharedElementReenterTransition()Landroid/transition/Transition;
    .locals 2

    .line 3468
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReenterTransition:Landroid/transition/Transition;

    sget-object v1, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    if-ne v0, v1, :cond_0

    .line 3469
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getSharedElementExitTransition()Landroid/transition/Transition;

    move-result-object v0

    goto :goto_0

    :cond_0
    nop

    .line 3468
    :goto_0
    return-object v0
.end method

.method public whitelist getSharedElementReturnTransition()Landroid/transition/Transition;
    .locals 2

    .line 3457
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReturnTransition:Landroid/transition/Transition;

    sget-object v1, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    if-ne v0, v1, :cond_0

    .line 3458
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getSharedElementEnterTransition()Landroid/transition/Transition;

    move-result-object v0

    goto :goto_0

    :cond_0
    nop

    .line 3457
    :goto_0
    return-object v0
.end method

.method public whitelist getSharedElementsUseOverlay()Z
    .locals 1

    .line 3513
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementsUseOverlay:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public blacklist getStatusBarBackgroundView()Landroid/view/View;
    .locals 1

    .line 4234
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getStatusBarBackgroundView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public whitelist getStatusBarColor()I
    .locals 1

    .line 4004
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mStatusBarColor:I

    return v0
.end method

.method public whitelist getSystemGestureExclusionRects()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 4135
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getRootSystemGestureExclusionRects()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTransitionBackgroundFadeDuration()J
    .locals 4

    .line 3494
    iget-wide v0, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFadeDurationMillis:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const-wide/16 v0, 0x12c

    goto :goto_0

    .line 3495
    :cond_0
    nop

    .line 3494
    :goto_0
    return-wide v0
.end method

.method public whitelist getTransitionManager()Landroid/transition/TransitionManager;
    .locals 1

    .line 512
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mTransitionManager:Landroid/transition/TransitionManager;

    return-object v0
.end method

.method public whitelist getVolumeControlStream()I
    .locals 1

    .line 3375
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mVolumeControlStreamType:I

    return v0
.end method

.method public blacklist handleDexStarShowingDelayTimeChanged(I)V
    .locals 1
    .param p1, "time"    # I

    .line 4418
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    .line 4419
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->onDexStarShowingDelayTimeChanged(I)V

    .line 4421
    :cond_0
    return-void
.end method

.method public blacklist handleFreeformHeaderTypeChanged(I)V
    .locals 1
    .param p1, "type"    # I

    .line 4410
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    .line 4411
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->onFreeformHeaderTypeChanged(I)V

    .line 4413
    :cond_0
    return-void
.end method

.method protected blacklist initializePanelContent(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Z
    .locals 4
    .param p1, "st"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 1534
    iget-object v0, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1535
    iget-object v0, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    iput-object v0, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 1536
    return v1

    .line 1539
    :cond_0
    iget-object v0, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 1540
    return v2

    .line 1543
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;

    if-nez v0, :cond_2

    .line 1544
    new-instance v0, Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;-><init>(Lcom/android/internal/policy/PhoneWindow;Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback-IA;)V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;

    .line 1547
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInListMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1548
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;

    invoke-virtual {p1, v0, v3}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->getListMenuView(Landroid/content/Context;Lcom/android/internal/view/menu/MenuPresenter$Callback;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v0

    goto :goto_0

    .line 1549
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;

    invoke-virtual {p1, v0, v3}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->getIconMenuView(Landroid/content/Context;Lcom/android/internal/view/menu/MenuPresenter$Callback;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v0

    :goto_0
    nop

    .line 1551
    .local v0, "menuView":Lcom/android/internal/view/menu/MenuView;
    move-object v3, v0

    check-cast v3, Landroid/view/View;

    iput-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 1553
    iget-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    if-eqz v3, :cond_5

    .line 1555
    invoke-interface {v0}, Lcom/android/internal/view/menu/MenuView;->getWindowAnimations()I

    move-result v2

    .line 1556
    .local v2, "defaultAnimations":I
    if-eqz v2, :cond_4

    .line 1557
    iput v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->windowAnimations:I

    .line 1559
    :cond_4
    return v1

    .line 1561
    .end local v2    # "defaultAnimations":I
    :cond_5
    return v2
.end method

.method protected blacklist initializePanelDecor(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Z
    .locals 5
    .param p1, "st"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 1480
    iget v0, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->generateDecor(I)Lcom/android/internal/policy/DecorView;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    .line 1481
    const/16 v0, 0x51

    iput v0, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->gravity:I

    .line 1482
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->setStyle(Landroid/content/Context;)V

    .line 1483
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->Window:[I

    iget v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listPresenterTheme:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1485
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v1, 0x25

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 1486
    .local v1, "elevation":F
    cmpl-float v2, v1, v2

    if-eqz v2, :cond_0

    .line 1487
    iget-object v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v2, v1}, Lcom/android/internal/policy/DecorView;->setElevation(F)V

    .line 1489
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1491
    const/4 v2, 0x1

    return v2
.end method

.method protected blacklist initializePanelMenu(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Z
    .locals 7
    .param p1, "st"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 1430
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1433
    .local v0, "context":Landroid/content/Context;
    iget v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    const/16 v3, 0x8

    if-ne v1, v3, :cond_4

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v1, :cond_4

    .line 1435
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 1436
    .local v1, "outValue":Landroid/util/TypedValue;
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 1437
    .local v3, "baseTheme":Landroid/content/res/Resources$Theme;
    const v4, 0x1010431

    invoke-virtual {v3, v4, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1439
    const/4 v4, 0x0

    .line 1440
    .local v4, "widgetTheme":Landroid/content/res/Resources$Theme;
    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    const v6, 0x1010397

    if-eqz v5, :cond_1

    .line 1441
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 1442
    invoke-virtual {v4, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1443
    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v5, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1444
    invoke-virtual {v4, v6, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto :goto_0

    .line 1447
    :cond_1
    invoke-virtual {v3, v6, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1451
    :goto_0
    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_3

    .line 1452
    if-nez v4, :cond_2

    .line 1453
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 1454
    invoke-virtual {v4, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1456
    :cond_2
    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v5, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1459
    :cond_3
    if-eqz v4, :cond_4

    .line 1460
    new-instance v5, Landroid/view/ContextThemeWrapper;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object v0, v5

    .line 1461
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1465
    .end local v1    # "outValue":Landroid/util/TypedValue;
    .end local v3    # "baseTheme":Landroid/content/res/Resources$Theme;
    .end local v4    # "widgetTheme":Landroid/content/res/Resources$Theme;
    :cond_4
    new-instance v1, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {v1, v0}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 1466
    .local v1, "menu":Lcom/android/internal/view/menu/MenuBuilder;
    invoke-virtual {v1, p0}, Lcom/android/internal/view/menu/MenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 1467
    invoke-virtual {p1, v1}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->setMenu(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 1469
    return v2
.end method

.method public whitelist injectInputEvent(Landroid/view/InputEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 1931
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->dispatchInputEvent(Landroid/view/InputEvent;)V

    .line 1932
    return-void
.end method

.method public whitelist invalidatePanelMenu(I)V
    .locals 3
    .param p1, "featureId"    # I

    .line 1106
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    const/4 v1, 0x1

    shl-int v2, v1, p1

    or-int/2addr v0, v2

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    .line 1108
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    .line 1109
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/DecorView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 1110
    iput-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    .line 1112
    :cond_0
    return-void
.end method

.method public whitelist isFloating()Z
    .locals 1

    .line 631
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    return v0
.end method

.method public whitelist isNavigationBarContrastEnforced()Z
    .locals 1

    .line 4079
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mEnsureNavigationBarContrastWhenTransparent:Z

    return v0
.end method

.method blacklist isNightMode()Z
    .locals 2

    .line 4318
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isShortcutKey(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 3154
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 3155
    .local v1, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/view/menu/MenuBuilder;->isShortcutKey(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method blacklist isShowingWallpaper()Z
    .locals 2

    .line 642
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isStatusBarContrastEnforced()Z
    .locals 1

    .line 4066
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mEnsureStatusBarContrastWhenTransparent:Z

    return v0
.end method

.method public blacklist isTranslucent()Z
    .locals 1

    .line 635
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mIsTranslucent:Z

    return v0
.end method

.method protected whitelist onActive()V
    .locals 0

    .line 2211
    return-void
.end method

.method public whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 810
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-nez v0, :cond_5

    .line 811
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 812
    .local v1, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v1, :cond_5

    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_5

    .line 813
    iget-boolean v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-eqz v2, :cond_4

    .line 815
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 816
    .local v2, "state":Landroid/os/Bundle;
    iget-object v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    if-eqz v3, :cond_0

    .line 817
    iget-object v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    invoke-virtual {v3, v2}, Lcom/android/internal/view/menu/IconMenuPresenter;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 819
    :cond_0
    iget-object v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    if-eqz v3, :cond_1

    .line 820
    iget-object v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v3, v2}, Lcom/android/internal/view/menu/ListMenuPresenter;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 825
    :cond_1
    invoke-static {v1}, Lcom/android/internal/policy/PhoneWindow;->clearMenuViews(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)V

    .line 828
    invoke-direct {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->reopenMenu(Z)V

    .line 831
    iget-object v0, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    if-eqz v0, :cond_2

    .line 832
    iget-object v0, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    invoke-virtual {v0, v2}, Lcom/android/internal/view/menu/IconMenuPresenter;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 834
    :cond_2
    iget-object v0, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    if-eqz v0, :cond_3

    .line 835
    iget-object v0, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v0, v2}, Lcom/android/internal/view/menu/ListMenuPresenter;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 838
    .end local v2    # "state":Landroid/os/Bundle;
    :cond_3
    goto :goto_0

    .line 841
    :cond_4
    invoke-static {v1}, Lcom/android/internal/policy/PhoneWindow;->clearMenuViews(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)V

    .line 845
    .end local v1    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_5
    :goto_0
    return-void
.end method

.method protected blacklist onDrawableChanged(ILandroid/graphics/drawable/Drawable;I)V
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "alpha"    # I

    .line 1712
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1713
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getLeftIconView()Landroid/widget/ImageView;

    move-result-object v0

    .local v0, "view":Landroid/widget/ImageView;
    goto :goto_0

    .line 1714
    .end local v0    # "view":Landroid/widget/ImageView;
    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 1715
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getRightIconView()Landroid/widget/ImageView;

    move-result-object v0

    .line 1720
    .restart local v0    # "view":Landroid/widget/ImageView;
    :goto_0
    if-eqz p2, :cond_1

    .line 1721
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1722
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1723
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 1725
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1727
    :goto_1
    return-void

    .line 1717
    .end local v0    # "view":Landroid/widget/ImageView;
    :cond_2
    return-void
.end method

.method protected blacklist onIntChanged(II)V
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "value"    # I

    .line 1737
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1739
    :cond_0
    const/4 v0, 0x7

    if-ne p1, v0, :cond_2

    .line 1740
    const v0, 0x1020642

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 1741
    .local v0, "titleContainer":Landroid/widget/FrameLayout;
    if-eqz v0, :cond_2

    .line 1742
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_1

    .line 1738
    .end local v0    # "titleContainer":Landroid/widget/FrameLayout;
    :cond_1
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/internal/policy/PhoneWindow;->updateProgressBars(I)V

    .line 1745
    :cond_2
    :goto_1
    return-void
.end method

.method protected blacklist onKeyDown(IILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "featureId"    # I
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 2007
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2011
    .local v0, "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch p2, :sswitch_data_0

    goto :goto_3

    .line 2049
    :sswitch_0
    if-gez p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, p1

    :goto_1
    invoke-virtual {p0, v1, p3}, Lcom/android/internal/policy/PhoneWindow;->onKeyDownPanel(ILandroid/view/KeyEvent;)Z

    .line 2050
    return v2

    .line 2039
    :sswitch_1
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v3, :cond_2

    .line 2040
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getMediaSessionManager()Landroid/media/session/MediaSessionManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    .line 2041
    invoke-virtual {v4}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v4

    .line 2040
    invoke-virtual {v3, p3, v4}, Landroid/media/session/MediaSessionManager;->dispatchMediaKeyEventToSessionAsSystemService(Landroid/view/KeyEvent;Landroid/media/session/MediaSession$Token;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2042
    return v2

    .line 2045
    :cond_2
    return v1

    .line 2017
    :sswitch_2
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v1, :cond_3

    .line 2018
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getMediaSessionManager()Landroid/media/session/MediaSessionManager;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    .line 2019
    invoke-virtual {v3}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v3

    .line 2018
    invoke-virtual {v1, p3, v3}, Landroid/media/session/MediaSessionManager;->dispatchVolumeKeyEventToSessionAsSystemService(Landroid/view/KeyEvent;Landroid/media/session/MediaSession$Token;)V

    goto :goto_2

    .line 2021
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getMediaSessionManager()Landroid/media/session/MediaSessionManager;

    move-result-object v1

    iget v3, p0, Lcom/android/internal/policy/PhoneWindow;->mVolumeControlStreamType:I

    invoke-virtual {v1, p3, v3}, Landroid/media/session/MediaSessionManager;->dispatchVolumeKeyEventAsSystemService(Landroid/view/KeyEvent;I)V

    .line 2024
    :goto_2
    return v2

    .line 2054
    :sswitch_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-lez v3, :cond_4

    goto :goto_3

    .line 2055
    :cond_4
    if-gez p1, :cond_5

    goto :goto_3

    .line 2057
    :cond_5
    if-eqz v0, :cond_6

    .line 2058
    invoke-virtual {v0, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 2060
    :cond_6
    return v2

    .line 2065
    :goto_3
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_3
        0x18 -> :sswitch_2
        0x19 -> :sswitch_2
        0x4f -> :sswitch_1
        0x52 -> :sswitch_0
        0x55 -> :sswitch_1
        0x56 -> :sswitch_1
        0x57 -> :sswitch_1
        0x58 -> :sswitch_1
        0x59 -> :sswitch_1
        0x5a -> :sswitch_1
        0x5b -> :sswitch_1
        0x7e -> :sswitch_1
        0x7f -> :sswitch_1
        0x82 -> :sswitch_1
        0xa4 -> :sswitch_2
    .end sparse-switch
.end method

.method public final blacklist onKeyDownPanel(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "featureId"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 1158
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 1160
    .local v0, "keyCode":I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1162
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I

    .line 1164
    invoke-virtual {p0, p1, v2}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 1165
    .local v1, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v1, :cond_0

    iget-boolean v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-nez v3, :cond_0

    .line 1166
    invoke-virtual {p0, v1, p2}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v2

    return v2

    .line 1170
    .end local v1    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_0
    return v2
.end method

.method protected blacklist onKeyUp(IILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "featureId"    # I
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 2099
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2100
    .local v0, "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    :goto_0
    if-eqz v0, :cond_1

    .line 2101
    invoke-virtual {v0, p3}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 2106
    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch p2, :sswitch_data_0

    goto/16 :goto_3

    .line 2194
    :sswitch_0
    iget-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow;->mSupportsPictureInPicture:Z

    if-eqz v1, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2195
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowControllerCallback()Landroid/view/Window$WindowControllerCallback;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/Window$WindowControllerCallback;->enterPictureInPictureModeIfPossible()V

    .line 2197
    :cond_2
    return v2

    .line 2125
    :sswitch_1
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getMediaSessionManager()Landroid/media/session/MediaSessionManager;

    move-result-object v1

    const/high16 v3, -0x80000000

    invoke-virtual {v1, p3, v3}, Landroid/media/session/MediaSessionManager;->dispatchVolumeKeyEventAsSystemService(Landroid/view/KeyEvent;I)V

    .line 2127
    return v2

    .line 2180
    :sswitch_2
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->isNotInstantAppAndKeyguardRestricted()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2181
    goto/16 :goto_3

    .line 2183
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v3, 0xf

    const/4 v4, 0x6

    if-ne v3, v4, :cond_4

    .line 2185
    goto/16 :goto_3

    .line 2187
    :cond_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_5

    .line 2188
    invoke-direct {p0, p3}, Lcom/android/internal/policy/PhoneWindow;->launchDefaultSearch(Landroid/view/KeyEvent;)Z

    .line 2190
    :cond_5
    return v2

    .line 2152
    :sswitch_3
    if-gez p1, :cond_6

    goto :goto_1

    :cond_6
    move v1, p1

    :goto_1
    invoke-virtual {p0, v1, p3}, Lcom/android/internal/policy/PhoneWindow;->onKeyUpPanel(ILandroid/view/KeyEvent;)V

    .line 2154
    return v2

    .line 2142
    :sswitch_4
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v3, :cond_7

    .line 2143
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getMediaSessionManager()Landroid/media/session/MediaSessionManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    .line 2144
    invoke-virtual {v4}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v4

    .line 2143
    invoke-virtual {v3, p3, v4}, Landroid/media/session/MediaSessionManager;->dispatchMediaKeyEventToSessionAsSystemService(Landroid/view/KeyEvent;Landroid/media/session/MediaSession$Token;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2145
    return v2

    .line 2148
    :cond_7
    return v1

    .line 2111
    :sswitch_5
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v1, :cond_8

    .line 2112
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getMediaSessionManager()Landroid/media/session/MediaSessionManager;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    .line 2113
    invoke-virtual {v3}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v3

    .line 2112
    invoke-virtual {v1, p3, v3}, Landroid/media/session/MediaSessionManager;->dispatchVolumeKeyEventToSessionAsSystemService(Landroid/view/KeyEvent;Landroid/media/session/MediaSession$Token;)V

    goto :goto_2

    .line 2115
    :cond_8
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getMediaSessionManager()Landroid/media/session/MediaSessionManager;

    move-result-object v1

    iget v3, p0, Lcom/android/internal/policy/PhoneWindow;->mVolumeControlStreamType:I

    invoke-virtual {v1, p3, v3}, Landroid/media/session/MediaSessionManager;->dispatchVolumeKeyEventAsSystemService(Landroid/view/KeyEvent;I)V

    .line 2118
    :goto_2
    return v2

    .line 2158
    :sswitch_6
    if-gez p1, :cond_9

    goto :goto_3

    .line 2159
    :cond_9
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_b

    .line 2160
    if-nez p1, :cond_a

    .line 2161
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 2162
    .local v1, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v1, :cond_a

    iget-boolean v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    if-eqz v3, :cond_a

    .line 2165
    invoke-direct {p0, v2}, Lcom/android/internal/policy/PhoneWindow;->reopenMenu(Z)V

    .line 2166
    return v2

    .line 2169
    .end local v1    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/PhoneWindow;->closePanel(I)V

    .line 2170
    return v2

    .line 2201
    :cond_b
    :goto_3
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_6
        0x18 -> :sswitch_5
        0x19 -> :sswitch_5
        0x4f -> :sswitch_4
        0x52 -> :sswitch_3
        0x54 -> :sswitch_2
        0x55 -> :sswitch_4
        0x56 -> :sswitch_4
        0x57 -> :sswitch_4
        0x58 -> :sswitch_4
        0x59 -> :sswitch_4
        0x5a -> :sswitch_4
        0x5b -> :sswitch_4
        0x7e -> :sswitch_4
        0x7f -> :sswitch_4
        0x82 -> :sswitch_4
        0xa4 -> :sswitch_1
        0xab -> :sswitch_0
    .end sparse-switch
.end method

.method public final blacklist onKeyUpPanel(ILandroid/view/KeyEvent;)V
    .locals 5
    .param p1, "featureId"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 1180
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I

    if-eqz v0, :cond_a

    .line 1181
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I

    .line 1183
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 1185
    .local v1, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    if-nez v2, :cond_9

    :cond_0
    if-nez v1, :cond_1

    goto/16 :goto_2

    .line 1190
    :cond_1
    const/4 v2, 0x0

    .line 1191
    .local v2, "playSoundEffect":Z
    if-nez p1, :cond_3

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v3, :cond_3

    .line 1192
    invoke-interface {v3}, Lcom/android/internal/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1193
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1194
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v3}, Lcom/android/internal/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1195
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {p0, v1, p2}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1196
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v3}, Lcom/android/internal/widget/DecorContentParent;->showOverflowMenu()Z

    move-result v2

    goto :goto_1

    .line 1199
    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v3}, Lcom/android/internal/widget/DecorContentParent;->hideOverflowMenu()Z

    move-result v2

    goto :goto_1

    .line 1202
    :cond_3
    iget-boolean v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-nez v3, :cond_6

    iget-boolean v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isHandled:Z

    if-eqz v3, :cond_4

    goto :goto_0

    .line 1211
    :cond_4
    iget-boolean v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    if-eqz v3, :cond_7

    .line 1212
    const/4 v3, 0x1

    .line 1213
    .local v3, "show":Z
    iget-boolean v4, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    if-eqz v4, :cond_5

    .line 1216
    iput-boolean v0, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    .line 1217
    invoke-virtual {p0, v1, p2}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v3

    .line 1220
    :cond_5
    if-eqz v3, :cond_7

    .line 1222
    const v4, 0xc351

    invoke-static {v4, v0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1225
    invoke-direct {p0, v1, p2}, Lcom/android/internal/policy/PhoneWindow;->openPanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    .line 1227
    const/4 v2, 0x1

    goto :goto_1

    .line 1206
    .end local v3    # "show":Z
    :cond_6
    :goto_0
    iget-boolean v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    .line 1209
    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    .line 1232
    :cond_7
    :goto_1
    if-eqz v2, :cond_a

    .line 1233
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    .line 1235
    .local v3, "audioManager":Landroid/media/AudioManager;
    if-eqz v3, :cond_8

    .line 1236
    invoke-virtual {v3, v0}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_3

    .line 1238
    :cond_8
    const-string v0, "PhoneWindow"

    const-string v4, "Couldn\'t get audio manager"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1187
    .end local v2    # "playSoundEffect":Z
    .end local v3    # "audioManager":Landroid/media/AudioManager;
    :cond_9
    :goto_2
    return-void

    .line 1242
    .end local v1    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_a
    :goto_3
    return-void
.end method

.method public blacklist onMenuItemSelected(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .line 1354
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1355
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1356
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->getRootMenu()Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->findMenuPanel(Landroid/view/Menu;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 1357
    .local v1, "panel":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v1, :cond_0

    .line 1358
    iget v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    invoke-interface {v0, v2, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v2

    return v2

    .line 1361
    .end local v1    # "panel":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist onMenuModeChange(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .line 1365
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->reopenMenu(Z)V

    .line 1366
    return-void
.end method

.method public blacklist onMultiWindowModeChanged()V
    .locals 2

    .line 849
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    .line 850
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/DecorView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 852
    :cond_0
    return-void
.end method

.method blacklist onOptionsPanelRotationChanged()V
    .locals 4

    .line 1511
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v0

    .line 1512
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-nez v0, :cond_0

    return-void

    .line 1514
    :cond_0
    iget-object v1, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    if-eqz v1, :cond_1

    .line 1515
    iget-object v1, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1}, Lcom/android/internal/policy/DecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1516
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    :goto_0
    if-eqz v1, :cond_2

    .line 1517
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getOptionsPanelGravity()I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1518
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    .line 1519
    .local v2, "wm":Landroid/view/ViewManager;
    if-eqz v2, :cond_2

    .line 1520
    iget-object v3, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    invoke-interface {v2, v3, v1}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1523
    .end local v2    # "wm":Landroid/view/ViewManager;
    :cond_2
    return-void
.end method

.method public blacklist onPictureInPictureModeChanged(Z)V
    .locals 1
    .param p1, "isInPictureInPictureMode"    # Z

    .line 856
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    .line 857
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->updatePictureInPictureOutlineProvider(Z)V

    .line 859
    :cond_0
    return-void
.end method

.method blacklist onViewRootImplSet(Landroid/view/ViewRootImpl;)V
    .locals 2
    .param p1, "viewRoot"    # Landroid/view/ViewRootImpl;

    .line 2228
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mActivityConfigCallback:Landroid/view/ViewRootImpl$ActivityConfigCallback;

    invoke-virtual {p1, v0}, Landroid/view/ViewRootImpl;->setActivityConfigCallback(Landroid/view/ViewRootImpl$ActivityConfigCallback;)V

    .line 2229
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mProxyOnBackInvokedDispatcher:Landroid/window/ProxyOnBackInvokedDispatcher;

    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getOnBackInvokedDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/window/ProxyOnBackInvokedDispatcher;->setActualDispatcher(Landroid/window/OnBackInvokedDispatcher;)V

    .line 2230
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->applyDecorFitsSystemWindows()V

    .line 2231
    return-void
.end method

.method public final whitelist openPanel(ILandroid/view/KeyEvent;)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 883
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_0

    .line 884
    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 885
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-nez v0, :cond_0

    .line 886
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->showOverflowMenu()Z

    goto :goto_0

    .line 888
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/internal/policy/PhoneWindow;->openPanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    .line 890
    :goto_0
    return-void
.end method

.method blacklist openPanelsAfterRestore()V
    .locals 4

    .line 2386
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 2388
    .local v0, "panels":[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-nez v0, :cond_0

    .line 2389
    return-void

    .line 2393
    :cond_0
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 2394
    aget-object v2, v0, v1

    .line 2398
    .local v2, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v2, :cond_1

    .line 2399
    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->applyFrozenState()V

    .line 2400
    iget-boolean v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-nez v3, :cond_1

    iget-boolean v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->wasLastOpen:Z

    if-eqz v3, :cond_1

    .line 2401
    iget-boolean v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->wasLastExpanded:Z

    iput-boolean v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    .line 2402
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/PhoneWindow;->openPanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    .line 2393
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2406
    .end local v1    # "i":I
    .end local v2    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_2
    return-void
.end method

.method public final whitelist peekDecorView()Landroid/view/View;
    .locals 1

    .line 2223
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    return-object v0
.end method

.method public whitelist performContextMenuIdentifierAction(II)Z
    .locals 1
    .param p1, "id"    # I
    .param p2, "flags"    # I

    .line 1567
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/view/menu/ContextMenuBuilder;->performIdentifierAction(II)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist performPanelIdentifierAction(III)Z
    .locals 5
    .param p1, "featureId"    # I
    .param p2, "id"    # I
    .param p3, "flags"    # I

    .line 1323
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 1324
    .local v1, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    new-instance v2, Landroid/view/KeyEvent;

    const/4 v3, 0x0

    const/16 v4, 0x52

    invoke-direct {v2, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1325
    return v3

    .line 1327
    :cond_0
    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v2, :cond_1

    .line 1328
    return v3

    .line 1331
    :cond_1
    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2, p2, p3}, Lcom/android/internal/view/menu/MenuBuilder;->performIdentifierAction(II)Z

    move-result v2

    .line 1334
    .local v2, "res":Z
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-nez v3, :cond_2

    .line 1335
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    .line 1338
    :cond_2
    return v2
.end method

.method public whitelist performPanelShortcut(IILandroid/view/KeyEvent;I)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;
    .param p4, "flags"    # I

    .line 1289
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/android/internal/policy/PhoneWindow;->performPanelShortcut(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v0

    return v0
.end method

.method blacklist performPanelShortcut(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
    .locals 3
    .param p1, "st"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;
    .param p4, "flags"    # I

    .line 1294
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    if-nez v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_0

    .line 1298
    :cond_0
    const/4 v0, 0x0

    .line 1302
    .local v0, "handled":Z
    iget-boolean v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    if-nez v1, :cond_1

    invoke-virtual {p0, p1, p3}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_2

    .line 1304
    iget-object v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1, p2, p3, p4}, Lcom/android/internal/view/menu/MenuBuilder;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v0

    .line 1307
    :cond_2
    if-eqz v0, :cond_3

    .line 1309
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isHandled:Z

    .line 1312
    and-int/lit8 v2, p4, 0x1

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-nez v2, :cond_3

    .line 1313
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    .line 1317
    :cond_3
    return v0

    .line 1295
    .end local v0    # "handled":Z
    :cond_4
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final blacklist preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "st"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 703
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 704
    return v1

    .line 708
    :cond_0
    iget-boolean v0, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 709
    return v2

    .line 712
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    if-eqz v0, :cond_2

    if-eq v0, p1, :cond_2

    .line 714
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    .line 717
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 719
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_3

    .line 720
    iget v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    invoke-interface {v0, v3}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    .line 723
    :cond_3
    iget v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    if-eqz v3, :cond_5

    iget v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_4

    goto :goto_0

    :cond_4
    move v3, v1

    goto :goto_1

    :cond_5
    :goto_0
    move v3, v2

    .line 726
    .local v3, "isActionBarMenu":Z
    :goto_1
    if-eqz v3, :cond_6

    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v4, :cond_6

    .line 729
    invoke-interface {v4}, Lcom/android/internal/widget/DecorContentParent;->setMenuPrepared()V

    .line 732
    :cond_6
    iget-object v4, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-nez v4, :cond_15

    .line 734
    iget-object v4, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v5, 0x0

    if-eqz v4, :cond_7

    iget-boolean v4, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    if-eqz v4, :cond_d

    .line 735
    :cond_7
    iget-object v4, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v4, :cond_9

    .line 736
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/PhoneWindow;->initializePanelMenu(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v4, :cond_9

    .line 737
    :cond_8
    return v1

    .line 741
    :cond_9
    if-eqz v3, :cond_b

    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v4, :cond_b

    .line 742
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;

    if-nez v4, :cond_a

    .line 743
    new-instance v4, Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;

    invoke-direct {v4, p0, v5}, Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;-><init>(Lcom/android/internal/policy/PhoneWindow;Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback-IA;)V

    iput-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;

    .line 745
    :cond_a
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    iget-object v6, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;

    invoke-interface {v4, v6, v7}, Lcom/android/internal/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 752
    :cond_b
    iget-object v4, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 753
    if-eqz v0, :cond_13

    iget v4, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    iget-object v6, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v4, v6}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v4

    if-nez v4, :cond_c

    goto :goto_4

    .line 765
    :cond_c
    iput-boolean v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    .line 772
    :cond_d
    iget-object v4, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 776
    iget-object v4, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    if-eqz v4, :cond_e

    .line 777
    iget-object v4, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v6, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    invoke-virtual {v4, v6}, Lcom/android/internal/view/menu/MenuBuilder;->restoreActionViewStates(Landroid/os/Bundle;)V

    .line 778
    iput-object v5, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    .line 781
    :cond_e
    iget v4, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    iget-object v6, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    iget-object v7, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v4, v6, v7}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 782
    if-eqz v3, :cond_f

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v2, :cond_f

    .line 785
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;

    invoke-interface {v2, v5, v4}, Lcom/android/internal/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 787
    :cond_f
    iget-object v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 788
    return v1

    .line 793
    :cond_10
    if-eqz p2, :cond_11

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v4

    goto :goto_2

    :cond_11
    const/4 v4, -0x1

    .line 792
    :goto_2
    invoke-static {v4}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v4

    .line 794
    .local v4, "kmap":Landroid/view/KeyCharacterMap;
    invoke-virtual {v4}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v5

    if-eq v5, v2, :cond_12

    move v5, v2

    goto :goto_3

    :cond_12
    move v5, v1

    :goto_3
    iput-boolean v5, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->qwertyMode:Z

    .line 795
    iget-object v5, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-boolean v6, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->qwertyMode:Z

    invoke-virtual {v5, v6}, Lcom/android/internal/view/menu/MenuBuilder;->setQwertyMode(Z)V

    .line 796
    iget-object v5, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v5}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    goto :goto_5

    .line 755
    .end local v4    # "kmap":Landroid/view/KeyCharacterMap;
    :cond_13
    :goto_4
    invoke-virtual {p1, v5}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->setMenu(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 757
    if-eqz v3, :cond_14

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v2, :cond_14

    .line 759
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;

    invoke-interface {v2, v5, v4}, Lcom/android/internal/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 762
    :cond_14
    return v1

    .line 800
    :cond_15
    :goto_5
    iput-boolean v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    .line 801
    iput-boolean v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isHandled:Z

    .line 802
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 804
    return v2
.end method

.method public whitelist registerScrollCaptureCallback(Landroid/view/ScrollCaptureCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/view/ScrollCaptureCallback;

    .line 4218
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->addScrollCaptureCallback(Landroid/view/ScrollCaptureCallback;)V

    .line 4219
    return-void
.end method

.method public blacklist reportActivityRelaunched()V
    .locals 1

    .line 863
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 864
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->reportActivityRelaunched()V

    .line 866
    :cond_0
    return-void
.end method

.method public whitelist requestFeature(I)Z
    .locals 5
    .param p1, "featureId"    # I

    .line 473
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParentExplicitlySet:Z

    if-nez v0, :cond_6

    .line 476
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getFeatures()I

    move-result v0

    .line 477
    .local v0, "features":I
    const/4 v1, 0x1

    shl-int v2, v1, p1

    or-int/2addr v2, v0

    .line 478
    .local v2, "newFeatures":I
    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_1

    and-int/lit16 v3, v2, -0x34c2

    if-nez v3, :cond_0

    goto :goto_0

    .line 482
    :cond_0
    new-instance v1, Landroid/util/AndroidRuntimeException;

    const-string v3, "You cannot combine custom titles with other title features"

    invoke-direct {v1, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 485
    :cond_1
    :goto_0
    and-int/lit8 v3, v0, 0x2

    const/16 v4, 0x8

    if-eqz v3, :cond_2

    if-ne p1, v4, :cond_2

    .line 486
    const/4 v1, 0x0

    return v1

    .line 488
    :cond_2
    and-int/lit16 v3, v0, 0x100

    if-eqz v3, :cond_3

    if-ne p1, v1, :cond_3

    .line 490
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/PhoneWindow;->removeFeature(I)V

    .line 493
    :cond_3
    const/4 v1, 0x5

    if-ne p1, v1, :cond_5

    .line 494
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v3, "android.hardware.type.watch"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    .line 495
    :cond_4
    new-instance v1, Landroid/util/AndroidRuntimeException;

    const-string v3, "You cannot use indeterminate progress on a watch."

    invoke-direct {v1, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 497
    :cond_5
    :goto_1
    invoke-super {p0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result v1

    return v1

    .line 474
    .end local v0    # "features":I
    .end local v2    # "newFeatures":I
    :cond_6
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "requestFeature() must be called before adding content"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist requestScrollCapture(Landroid/view/IScrollCaptureResponseListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/IScrollCaptureResponseListener;

    .line 4208
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->dispatchScrollCaptureRequest(Landroid/view/IScrollCaptureResponseListener;)V

    .line 4209
    return-void
.end method

.method public blacklist requestToggleFreeformWindowingMode()V
    .locals 1

    .line 4427
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    .line 4428
    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->requestToggleFreeformWindowingMode()V

    .line 4430
    :cond_0
    return-void
.end method

.method public whitelist restoreHierarchyState(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 2283
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 2284
    return-void

    .line 2287
    :cond_0
    nop

    .line 2288
    const-string v0, "android:views"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    .line 2289
    .local v0, "savedStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v0, :cond_1

    .line 2290
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 2294
    :cond_1
    const-string v1, "android:focusedViewId"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2295
    .local v1, "focusedViewId":I
    const-string v3, "PhoneWindow"

    if-eq v1, v2, :cond_3

    .line 2296
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2297
    .local v2, "needsFocus":Landroid/view/View;
    if-eqz v2, :cond_2

    .line 2298
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 2300
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Previously focused view reported id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " during save, but can\'t be found during restore."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2307
    .end local v2    # "needsFocus":Landroid/view/View;
    :cond_3
    :goto_0
    const-string v2, "android:Panels"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v2

    .line 2308
    .local v2, "panelStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v2, :cond_4

    .line 2309
    invoke-direct {p0, v2}, Lcom/android/internal/policy/PhoneWindow;->restorePanelState(Landroid/util/SparseArray;)V

    .line 2312
    :cond_4
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v4, :cond_6

    .line 2313
    nop

    .line 2314
    const-string v4, "android:ActionBar"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v4

    .line 2315
    .local v4, "actionBarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v4, :cond_5

    .line 2316
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->doPendingInvalidatePanelMenu()V

    .line 2317
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v3, v4}, Lcom/android/internal/widget/DecorContentParent;->restoreToolbarHierarchyState(Landroid/util/SparseArray;)V

    goto :goto_1

    .line 2319
    :cond_5
    const-string v5, "Missing saved instance states for action bar views! State will not be restored."

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2324
    .end local v4    # "actionBarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    :cond_6
    :goto_1
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v3, :cond_7

    .line 2325
    invoke-virtual {v3}, Lcom/android/internal/policy/DecorView;->getDecorCaptionView()Lcom/android/internal/widget/DecorCaptionView;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 2326
    nop

    .line 2327
    const-string v3, "android:DecorCaptionView"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v3

    .line 2328
    .local v3, "decorCaptionViewStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v3, :cond_7

    .line 2329
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v4}, Lcom/android/internal/policy/DecorView;->getDecorCaptionView()Lcom/android/internal/widget/DecorCaptionView;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/internal/widget/DecorCaptionView;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 2332
    .end local v3    # "decorCaptionViewStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    :cond_7
    return-void
.end method

.method public whitelist saveHierarchyState()Landroid/os/Bundle;
    .locals 6

    .line 2242
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2243
    .local v0, "outState":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    .line 2244
    return-object v0

    .line 2247
    :cond_0
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 2248
    .local v1, "states":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 2249
    const-string v2, "android:views"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 2252
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 2253
    .local v2, "focusedView":Landroid/view/View;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 2254
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const-string v4, "android:focusedViewId"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2258
    :cond_1
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 2259
    .local v3, "panelStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-direct {p0, v3}, Lcom/android/internal/policy/PhoneWindow;->savePanelState(Landroid/util/SparseArray;)V

    .line 2260
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 2261
    const-string v4, "android:Panels"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 2264
    :cond_2
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v4, :cond_3

    .line 2265
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 2266
    .local v4, "actionBarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v5, v4}, Lcom/android/internal/widget/DecorContentParent;->saveToolbarHierarchyState(Landroid/util/SparseArray;)V

    .line 2267
    const-string v5, "android:ActionBar"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 2270
    .end local v4    # "actionBarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    :cond_3
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v4, :cond_4

    .line 2271
    invoke-virtual {v4}, Lcom/android/internal/policy/DecorView;->getDecorCaptionView()Lcom/android/internal/widget/DecorCaptionView;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 2272
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 2273
    .local v4, "decorCaptionViewStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v5}, Lcom/android/internal/policy/DecorView;->getDecorCaptionView()Lcom/android/internal/widget/DecorCaptionView;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/internal/widget/DecorCaptionView;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 2274
    const-string v5, "android:DecorCaptionView"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 2277
    .end local v4    # "decorCaptionViewStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    :cond_4
    return-object v0
.end method

.method blacklist sendCloseSystemWindows()V
    .locals 2

    .line 3971
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 3972
    return-void
.end method

.method blacklist sendCloseSystemWindows(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .line 3975
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 3976
    return-void
.end method

.method public blacklist setActivityCurrentConfig(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 4375
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mActivityCurrentConfig:Landroid/content/res/Configuration;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4376
    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    goto :goto_0

    .line 4377
    :cond_0
    move v0, v1

    :goto_0
    nop

    .line 4378
    .local v0, "oldWindowingMode":I
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mActivityCurrentConfig:Landroid/content/res/Configuration;

    .line 4379
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v2, :cond_3

    iget-object v2, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 4380
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v2

    if-eq v0, v2, :cond_3

    .line 4381
    iget-object v2, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 4382
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1

    iget-object v2, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 4383
    invoke-static {v2}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(Landroid/app/WindowConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    nop

    .line 4385
    .local v1, "split":Z
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    iget-object v3, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Lcom/android/internal/policy/DecorView;->onWindowingModeChanged(IZ)V

    .line 4386
    iget-boolean v2, p0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    if-nez v2, :cond_3

    .line 4387
    iget-object v2, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    .line 4388
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v3, v3, -0x41

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    goto :goto_2

    .line 4389
    :cond_2
    if-ne v0, v3, :cond_3

    .line 4390
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v3, v3, 0x40

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 4395
    .end local v0    # "oldWindowingMode":I
    .end local v1    # "split":Z
    :cond_3
    :goto_2
    return-void
.end method

.method public whitelist setAllowEnterTransitionOverlap(Z)V
    .locals 1
    .param p1, "allow"    # Z

    .line 3474
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    .line 3475
    return-void
.end method

.method public whitelist setAllowReturnTransitionOverlap(Z)V
    .locals 1
    .param p1, "allowExitTransitionOverlap"    # Z

    .line 3484
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    .line 3485
    return-void
.end method

.method public whitelist setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .line 4116
    invoke-super {p0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 4117
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    .line 4118
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->updateLogTag(Landroid/view/WindowManager$LayoutParams;)V

    .line 4120
    :cond_0
    return-void
.end method

.method public final whitelist setBackgroundBlurRadius(I)V
    .locals 3
    .param p1, "blurRadius"    # I

    .line 1612
    invoke-super {p0, p1}, Landroid/view/Window;->setBackgroundBlurRadius(I)V

    .line 1613
    sget-boolean v0, Landroid/view/CrossWindowBlurListeners;->CROSS_WINDOW_BLUR_SUPPORTED:Z

    if-eqz v0, :cond_0

    .line 1614
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundBlurRadius:I

    const/4 v1, 0x0

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 1615
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundBlurRadius:I

    .line 1616
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/DecorView;->setBackgroundBlurRadius(I)V

    .line 1619
    :cond_0
    return-void
.end method

.method public final whitelist setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 1596
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_2

    .line 1597
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 1598
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_2

    .line 1599
    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->startChanging()V

    .line 1600
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1601
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFallbackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1602
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1603
    :cond_0
    nop

    .line 1602
    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/internal/policy/DecorView;->setBackgroundFallback(Landroid/graphics/drawable/Drawable;)V

    .line 1605
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->finishChanging()V

    .line 1608
    :cond_2
    return-void
.end method

.method public final whitelist setChildDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 3142
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 3143
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    iput-object p2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->child:Landroid/graphics/drawable/Drawable;

    .line 3144
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V

    .line 3145
    return-void
.end method

.method public final whitelist setChildInt(II)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "value"    # I

    .line 3149
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/PhoneWindow;->updateInt(IIZ)V

    .line 3150
    return-void
.end method

.method public final whitelist setClipToOutline(Z)V
    .locals 1
    .param p1, "clipToOutline"    # Z

    .line 1588
    iput-boolean p1, p0, Lcom/android/internal/policy/PhoneWindow;->mClipToOutline:Z

    .line 1589
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    .line 1590
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->setClipToOutline(Z)V

    .line 1592
    :cond_0
    return-void
.end method

.method public final whitelist setContainer(Landroid/view/Window;)V
    .locals 0
    .param p1, "container"    # Landroid/view/Window;

    .line 468
    invoke-super {p0, p1}, Landroid/view/Window;->setContainer(Landroid/view/Window;)V

    .line 469
    return-void
.end method

.method public whitelist setContentView(I)V
    .locals 2
    .param p1, "layoutResID"    # I

    .line 530
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    const/16 v1, 0xc

    if-nez v0, :cond_0

    .line 531
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    goto :goto_0

    .line 532
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 533
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 536
    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 537
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    .line 538
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 537
    invoke-static {v0, p1, v1}, Landroid/transition/Scene;->getSceneForLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroid/transition/Scene;

    move-result-object v0

    .line 539
    .local v0, "newScene":Landroid/transition/Scene;
    invoke-direct {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->transitionTo(Landroid/transition/Scene;)V

    .line 540
    .end local v0    # "newScene":Landroid/transition/Scene;
    goto :goto_1

    .line 541
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 543
    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestApplyInsets()V

    .line 544
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 545
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 546
    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 548
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParentExplicitlySet:Z

    .line 549
    return-void
.end method

.method public whitelist setContentView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 553
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 554
    return-void
.end method

.method public whitelist setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 561
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    const/16 v1, 0xc

    if-nez v0, :cond_0

    .line 562
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    goto :goto_0

    .line 563
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 564
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 567
    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 568
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 569
    new-instance v0, Landroid/transition/Scene;

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-direct {v0, v1, p1}, Landroid/transition/Scene;-><init>(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 570
    .local v0, "newScene":Landroid/transition/Scene;
    invoke-direct {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->transitionTo(Landroid/transition/Scene;)V

    .line 571
    .end local v0    # "newScene":Landroid/transition/Scene;
    goto :goto_1

    .line 572
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 574
    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestApplyInsets()V

    .line 575
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 576
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 577
    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 579
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParentExplicitlySet:Z

    .line 580
    return-void
.end method

.method public whitelist setDecorCaptionShade(I)V
    .locals 1
    .param p1, "decorCaptionShade"    # I

    .line 4104
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorCaptionShade:I

    .line 4105
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    .line 4106
    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->updateDecorCaptionShade()V

    .line 4108
    :cond_0
    return-void
.end method

.method public whitelist setDecorFitsSystemWindows(Z)V
    .locals 0
    .param p1, "decorFitsSystemWindows"    # Z

    .line 4158
    iput-boolean p1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorFitsSystemWindows:Z

    .line 4159
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->applyDecorFitsSystemWindows()V

    .line 4160
    return-void
.end method

.method public blacklist setDefaultIcon(I)V
    .locals 2
    .param p1, "resId"    # I

    .line 1885
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1886
    return-void

    .line 1888
    :cond_0
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mIconRes:I

    .line 1889
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->hasIcon()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 1891
    :cond_1
    if-eqz p1, :cond_2

    .line 1892
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorContentParent;->setIcon(I)V

    .line 1893
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    goto :goto_0

    .line 1895
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    .line 1896
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1895
    invoke-interface {v0, v1}, Lcom/android/internal/widget/DecorContentParent;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1897
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    .line 1900
    :cond_3
    :goto_0
    return-void
.end method

.method public blacklist setDefaultLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 1913
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1914
    return-void

    .line 1916
    :cond_0
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mLogoRes:I

    .line 1917
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->hasLogo()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1918
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorContentParent;->setLogo(I)V

    .line 1920
    :cond_1
    return-void
.end method

.method protected whitelist setDefaultWindowFormat(I)V
    .locals 0
    .param p1, "format"    # I

    .line 3967
    invoke-super {p0, p1}, Landroid/view/Window;->setDefaultWindowFormat(I)V

    .line 3968
    return-void
.end method

.method public blacklist setDexNonResizeableAppRestartHelpMode(Landroid/os/IBinder;I)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "mode"    # I

    .line 4436
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    .line 4437
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/DecorView;->setDexNonResizeableAppRestartHelpMode(Landroid/os/IBinder;I)V

    .line 4439
    :cond_0
    return-void
.end method

.method public final whitelist setElevation(F)V
    .locals 4
    .param p1, "elevation"    # F

    .line 1572
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mElevation:F

    .line 1573
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1574
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v1, :cond_0

    .line 1575
    invoke-virtual {v1, p1}, Lcom/android/internal/policy/DecorView;->setElevation(F)V

    .line 1576
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/WindowManager$LayoutParams;->setSurfaceInsets(Landroid/view/View;ZZ)V

    .line 1578
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1579
    return-void
.end method

.method public whitelist setEnterTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "enterTransition"    # Landroid/transition/Transition;

    .line 3390
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mEnterTransition:Landroid/transition/Transition;

    .line 3391
    return-void
.end method

.method public whitelist setExitTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "exitTransition"    # Landroid/transition/Transition;

    .line 3400
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mExitTransition:Landroid/transition/Transition;

    .line 3401
    return-void
.end method

.method protected final blacklist setFeatureDefaultDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 1672
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 1673
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    iget-object v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->def:Landroid/graphics/drawable/Drawable;

    if-eq v1, p2, :cond_0

    .line 1674
    iput-object p2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->def:Landroid/graphics/drawable/Drawable;

    .line 1675
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V

    .line 1677
    :cond_0
    return-void
.end method

.method public final whitelist setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 1653
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 1654
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->resid:I

    .line 1655
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    .line 1656
    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    if-eq v2, p2, :cond_0

    .line 1657
    iput-object p2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    .line 1658
    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V

    .line 1660
    :cond_0
    return-void
.end method

.method public whitelist setFeatureDrawableAlpha(II)V
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "alpha"    # I

    .line 1664
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 1665
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    iget v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->alpha:I

    if-eq v1, p2, :cond_0

    .line 1666
    iput p2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->alpha:I

    .line 1667
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V

    .line 1669
    :cond_0
    return-void
.end method

.method public final whitelist setFeatureDrawableResource(II)V
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "resId"    # I

    .line 1623
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 1624
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    move-result-object v1

    .line 1625
    .local v1, "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    iget v2, v1, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->resid:I

    if-eq v2, p2, :cond_0

    .line 1626
    iput p2, v1, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->resid:I

    .line 1627
    iput-object v0, v1, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    .line 1628
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    .line 1629
    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/policy/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V

    .line 1631
    .end local v1    # "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    :cond_0
    goto :goto_0

    .line 1632
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 1634
    :goto_0
    return-void
.end method

.method public final whitelist setFeatureDrawableUri(ILandroid/net/Uri;)V
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "uri"    # Landroid/net/Uri;

    .line 1638
    if-eqz p2, :cond_2

    .line 1639
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 1640
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    iget-object v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1641
    :cond_0
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->resid:I

    .line 1642
    iput-object p2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    .line 1643
    invoke-direct {p0, p2}, Lcom/android/internal/policy/PhoneWindow;->loadImageURI(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    .line 1644
    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V

    .line 1646
    .end local v0    # "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    :cond_1
    goto :goto_0

    .line 1647
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 1649
    :goto_0
    return-void
.end method

.method public final whitelist setFeatureInt(II)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "value"    # I

    .line 1683
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/PhoneWindow;->updateInt(IIZ)V

    .line 1684
    return-void
.end method

.method public whitelist setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 1875
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mIconRes:I

    .line 1876
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    .line 1877
    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    .line 1878
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_0

    .line 1879
    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorContentParent;->setIcon(I)V

    .line 1881
    :cond_0
    return-void
.end method

.method public blacklist setIsStartingWindow(Z)V
    .locals 0
    .param p1, "isStartingWindow"    # Z

    .line 4083
    iput-boolean p1, p0, Lcom/android/internal/policy/PhoneWindow;->mIsStartingWindow:Z

    .line 4084
    return-void
.end method

.method public whitelist setLocalFocus(ZZ)V
    .locals 1
    .param p1, "hasFocus"    # Z
    .param p2, "inTouchMode"    # Z

    .line 1924
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 1925
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->windowFocusChanged(Z)V

    .line 1926
    invoke-virtual {v0, p2}, Landroid/view/ViewRootImpl;->touchModeChanged(Z)V

    .line 1927
    return-void
.end method

.method public whitelist setLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 1904
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mLogoRes:I

    .line 1905
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    .line 1906
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_0

    .line 1907
    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorContentParent;->setLogo(I)V

    .line 1909
    :cond_0
    return-void
.end method

.method public whitelist setMediaController(Landroid/media/session/MediaController;)V
    .locals 0
    .param p1, "controller"    # Landroid/media/session/MediaController;

    .line 3380
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    .line 3381
    return-void
.end method

.method public blacklist setMultiWindowHelpMode(I)V
    .locals 2
    .param p1, "helpMode"    # I

    .line 4400
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-nez v0, :cond_0

    .line 4401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMultiWindowHelpMode: decorView=null callers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhoneWindow"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4402
    return-void

    .line 4404
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->setMultiSplitHelpMode(I)V

    .line 4405
    return-void
.end method

.method public whitelist setNavigationBarColor(I)V
    .locals 3
    .param p1, "color"    # I

    .line 4027
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    .line 4028
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mForcedNavigationBarColor:Z

    .line 4029
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    .line 4030
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 4033
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->updateForceLightNavigationBar()V

    .line 4037
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowControllerCallback()Landroid/view/Window$WindowControllerCallback;

    move-result-object v0

    .line 4038
    .local v0, "callback":Landroid/view/Window$WindowControllerCallback;
    if-eqz v0, :cond_1

    .line 4039
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowControllerCallback()Landroid/view/Window$WindowControllerCallback;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/Window$WindowControllerCallback;->updateNavigationBarColor(I)V

    .line 4041
    :cond_1
    return-void
.end method

.method public whitelist setNavigationBarContrastEnforced(Z)V
    .locals 3
    .param p1, "enforceContrast"    # Z

    .line 4071
    iput-boolean p1, p0, Lcom/android/internal/policy/PhoneWindow;->mEnsureNavigationBarContrastWhenTransparent:Z

    .line 4072
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    .line 4073
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 4075
    :cond_0
    return-void
.end method

.method public whitelist setNavigationBarDividerColor(I)V
    .locals 3
    .param p1, "navigationBarDividerColor"    # I

    .line 4045
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarDividerColor:I

    .line 4046
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    .line 4047
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 4049
    :cond_0
    return-void
.end method

.method public whitelist setReenterTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 3405
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mReenterTransition:Landroid/transition/Transition;

    .line 3406
    return-void
.end method

.method public whitelist setResizingCaptionDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 4099
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->setUserCaptionBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4100
    return-void
.end method

.method public whitelist setReturnTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 3395
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mReturnTransition:Landroid/transition/Transition;

    .line 3396
    return-void
.end method

.method public blacklist setSettingsNavigationBarColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 4325
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mSettingsNavigationBarColor:I

    .line 4326
    return-void
.end method

.method public whitelist setSharedElementEnterTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "sharedElementEnterTransition"    # Landroid/transition/Transition;

    .line 3410
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementEnterTransition:Landroid/transition/Transition;

    .line 3411
    return-void
.end method

.method public whitelist setSharedElementExitTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "sharedElementExitTransition"    # Landroid/transition/Transition;

    .line 3420
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementExitTransition:Landroid/transition/Transition;

    .line 3421
    return-void
.end method

.method public whitelist setSharedElementReenterTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 3425
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReenterTransition:Landroid/transition/Transition;

    .line 3426
    return-void
.end method

.method public whitelist setSharedElementReturnTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 3415
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReturnTransition:Landroid/transition/Transition;

    .line 3416
    return-void
.end method

.method public whitelist setSharedElementsUseOverlay(Z)V
    .locals 1
    .param p1, "sharedElementsUseOverlay"    # Z

    .line 3508
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementsUseOverlay:Ljava/lang/Boolean;

    .line 3509
    return-void
.end method

.method public whitelist setStatusBarColor(I)V
    .locals 3
    .param p1, "color"    # I

    .line 4009
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mStatusBarColor:I

    .line 4010
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mForcedStatusBarColor:Z

    .line 4011
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    .line 4012
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 4014
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowControllerCallback()Landroid/view/Window$WindowControllerCallback;

    move-result-object v0

    .line 4015
    .local v0, "callback":Landroid/view/Window$WindowControllerCallback;
    if-eqz v0, :cond_1

    .line 4016
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowControllerCallback()Landroid/view/Window$WindowControllerCallback;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/Window$WindowControllerCallback;->updateStatusBarColor(I)V

    .line 4018
    :cond_1
    return-void
.end method

.method public whitelist setStatusBarContrastEnforced(Z)V
    .locals 3
    .param p1, "ensureContrast"    # Z

    .line 4058
    iput-boolean p1, p0, Lcom/android/internal/policy/PhoneWindow;->mEnsureStatusBarContrastWhenTransparent:Z

    .line 4059
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    .line 4060
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 4062
    :cond_0
    return-void
.end method

.method public whitelist setSystemGestureExclusionRects(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 4129
    .local p1, "rects":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->setRootSystemGestureExclusionRects(Ljava/util/List;)V

    .line 4130
    return-void
.end method

.method public blacklist setTheme(I)V
    .locals 2
    .param p1, "resid"    # I

    .line 4088
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mTheme:I

    .line 4089
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    .line 4090
    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 4091
    .local v0, "context":Landroid/content/Context;
    instance-of v1, v0, Lcom/android/internal/policy/DecorContext;

    if-eqz v1, :cond_0

    .line 4092
    invoke-virtual {v0, p1}, Landroid/content/Context;->setTheme(I)V

    .line 4095
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    return-void
.end method

.method public whitelist setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 658
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->setTitle(Ljava/lang/CharSequence;Z)V

    .line 659
    return-void
.end method

.method public blacklist setTitle(Ljava/lang/CharSequence;Z)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "updateAccessibilityTitle"    # Z

    .line 662
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 663
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 664
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_1

    .line 665
    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorContentParent;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 667
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    .line 668
    if-eqz p2, :cond_3

    .line 669
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 670
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iget-object v1, v0, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 671
    invoke-static {p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    .line 672
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v1, :cond_2

    .line 674
    invoke-virtual {v1}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .line 675
    .local v1, "vr":Landroid/view/ViewRootImpl;
    if-eqz v1, :cond_2

    .line 676
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->onWindowTitleChanged()V

    .line 679
    .end local v1    # "vr":Landroid/view/ViewRootImpl;
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 682
    .end local v0    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_3
    return-void
.end method

.method public whitelist setTitleColor(I)V
    .locals 1
    .param p1, "textColor"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 687
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 688
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 690
    :cond_0
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleColor:I

    .line 691
    return-void
.end method

.method public whitelist setTransitionBackgroundFadeDuration(J)V
    .locals 2
    .param p1, "fadeDurationMillis"    # J

    .line 3500
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 3503
    iput-wide p1, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFadeDurationMillis:J

    .line 3504
    return-void

    .line 3501
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "negative durations are not allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setTransitionManager(Landroid/transition/TransitionManager;)V
    .locals 0
    .param p1, "tm"    # Landroid/transition/TransitionManager;

    .line 517
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mTransitionManager:Landroid/transition/TransitionManager;

    .line 518
    return-void
.end method

.method public whitelist setUiOptions(I)V
    .locals 0
    .param p1, "uiOptions"    # I

    .line 502
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mUiOptions:I

    .line 503
    return-void
.end method

.method public whitelist setUiOptions(II)V
    .locals 2
    .param p1, "uiOptions"    # I
    .param p2, "mask"    # I

    .line 507
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mUiOptions:I

    not-int v1, p2

    and-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mUiOptions:I

    .line 508
    return-void
.end method

.method public whitelist setVolumeControlStream(I)V
    .locals 0
    .param p1, "streamType"    # I

    .line 3370
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mVolumeControlStreamType:I

    .line 3371
    return-void
.end method

.method public whitelist superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1981
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 1961
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 1966
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist superDispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1971
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1976
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist takeInputQueue(Landroid/view/InputQueue$Callback;)V
    .locals 0
    .param p1, "callback"    # Landroid/view/InputQueue$Callback;

    .line 626
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mTakeInputQueueCallback:Landroid/view/InputQueue$Callback;

    .line 627
    return-void
.end method

.method public whitelist takeKeyEvents(Z)V
    .locals 1
    .param p1, "get"    # Z

    .line 1956
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DecorView;->setFocusable(Z)V

    .line 1957
    return-void
.end method

.method public whitelist takeSurface(Landroid/view/SurfaceHolder$Callback2;)V
    .locals 0
    .param p1, "callback"    # Landroid/view/SurfaceHolder$Callback2;

    .line 622
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mTakeSurfaceCallback:Landroid/view/SurfaceHolder$Callback2;

    .line 623
    return-void
.end method

.method public final whitelist togglePanel(ILandroid/view/KeyEvent;)V
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 1096
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 1097
    .local v1, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    iget-boolean v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-eqz v2, :cond_0

    .line 1098
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    goto :goto_0

    .line 1100
    :cond_0
    invoke-direct {p0, v1, p2}, Lcom/android/internal/policy/PhoneWindow;->openPanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    .line 1102
    :goto_0
    return-void
.end method

.method public whitelist unregisterScrollCaptureCallback(Landroid/view/ScrollCaptureCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/view/ScrollCaptureCallback;

    .line 4228
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->removeScrollCaptureCallback(Landroid/view/ScrollCaptureCallback;)V

    .line 4229
    return-void
.end method

.method public blacklist updateDefaultNavigationBarColor()V
    .locals 5

    .line 4339
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getDefaultNavigationBarColor()I

    move-result v0

    .line 4340
    .local v0, "defaultColor":I
    iget-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow;->mForcedNavigationBarColor:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    iget v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDefaultNavigationBarColor:I

    if-ne v1, v3, :cond_0

    if-eq v1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 4343
    .local v1, "needUpdate":Z
    :goto_0
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDefaultNavigationBarColor:I

    .line 4344
    if-eqz v1, :cond_1

    .line 4345
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    .line 4346
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v3, :cond_1

    .line 4347
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 4351
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->updateForceLightNavigationBar()V

    .line 4353
    return-void
.end method

.method blacklist updateDeviceDefaultNavigationBarColor()V
    .locals 3

    .line 4333
    nop

    .line 4334
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060244

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDeviceDefaultNavigationBarColor:I

    .line 4336
    return-void
.end method

.method protected final blacklist updateDrawable(IZ)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "fromActive"    # Z

    .line 1696
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 1697
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    if-eqz v0, :cond_0

    .line 1698
    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/policy/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V

    .line 1700
    :cond_0
    return-void
.end method

.method blacklist updateForceLightNavigationBar()V
    .locals 2

    .line 4305
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->isDrawLegacyNavigationBarBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4306
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isNightMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .local v0, "enable":Z
    goto :goto_0

    .line 4307
    .end local v0    # "enable":Z
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    iget v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDeviceDefaultNavigationBarColor:I

    if-ne v0, v1, :cond_1

    .line 4308
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isNightMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .restart local v0    # "enable":Z
    goto :goto_0

    .line 4309
    .end local v0    # "enable":Z
    :cond_1
    iget v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDefaultNavigationBarColor:I

    if-ne v0, v1, :cond_2

    .line 4310
    invoke-direct {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->needLightNavigationBar(I)Z

    move-result v0

    .restart local v0    # "enable":Z
    goto :goto_0

    .line 4312
    .end local v0    # "enable":Z
    :cond_2
    const/4 v0, 0x0

    .line 4314
    .restart local v0    # "enable":Z
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->setForceLightNavigationBar(Z)V

    .line 4315
    return-void
.end method
