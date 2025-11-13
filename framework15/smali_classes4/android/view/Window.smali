.class public abstract Landroid/view/Window;
.super Ljava/lang/Object;
.source "Window.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/Window$Callback;,
        Landroid/view/Window$OnFrameMetricsAvailableListener;,
        Landroid/view/Window$OnWindowDismissedCallback;,
        Landroid/view/Window$OnWindowSwipeDismissedCallback;,
        Landroid/view/Window$WindowControllerCallback;,
        Landroid/view/Window$DecorCallback;,
        Landroid/view/Window$OnRestrictedCaptionAreaChangedListener;,
        Landroid/view/Window$OnContentApplyWindowInsetsListener;
    }
.end annotation


# static fields
.field public static final whitelist DECOR_CAPTION_SHADE_AUTO:I = 0x0

.field public static final whitelist DECOR_CAPTION_SHADE_DARK:I = 0x2

.field public static final whitelist DECOR_CAPTION_SHADE_LIGHT:I = 0x1

.field protected static final whitelist DEFAULT_FEATURES:I = 0x41
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FEATURE_ACTION_BAR:I = 0x8

.field public static final whitelist FEATURE_ACTION_BAR_OVERLAY:I = 0x9

.field public static final whitelist FEATURE_ACTION_MODE_OVERLAY:I = 0xa

.field public static final whitelist FEATURE_ACTIVITY_TRANSITIONS:I = 0xd

.field public static final whitelist FEATURE_CONTENT_TRANSITIONS:I = 0xc

.field public static final whitelist FEATURE_CONTEXT_MENU:I = 0x6

.field public static final whitelist FEATURE_CUSTOM_TITLE:I = 0x7

.field public static final whitelist FEATURE_INDETERMINATE_PROGRESS:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FEATURE_LEFT_ICON:I = 0x3

.field public static final greylist-max-r FEATURE_MAX:I = 0xd

.field public static final whitelist FEATURE_NO_TITLE:I = 0x1

.field public static final whitelist FEATURE_OPTIONS_PANEL:I = 0x0

.field public static final whitelist FEATURE_PROGRESS:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FEATURE_RIGHT_ICON:I = 0x4

.field public static final whitelist FEATURE_SWIPE_TO_DISMISS:I = 0xb
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ID_ANDROID_CONTENT:I = 0x1020002

.field public static final whitelist NAVIGATION_BAR_BACKGROUND_TRANSITION_NAME:Ljava/lang/String; = "android:navigation:background"

.field public static final whitelist PROGRESS_END:I = 0x2710
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROGRESS_INDETERMINATE_OFF:I = -0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROGRESS_INDETERMINATE_ON:I = -0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROGRESS_SECONDARY_END:I = 0x7530
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROGRESS_SECONDARY_START:I = 0x4e20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROGRESS_START:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROGRESS_VISIBILITY_OFF:I = -0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROGRESS_VISIBILITY_ON:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist STATUS_BAR_BACKGROUND_TRANSITION_NAME:Ljava/lang/String; = "android:status:background"

.field protected static blacklist sToolkitSetFrameRateReadOnlyFlagValue:Z


# instance fields
.field private greylist-max-o mActiveChild:Landroid/view/Window;

.field private greylist mAppName:Ljava/lang/String;

.field private greylist mAppToken:Landroid/os/IBinder;

.field private greylist mCallback:Landroid/view/Window$Callback;

.field private greylist-max-o mCloseOnSwipeEnabled:Z

.field private greylist-max-o mCloseOnTouchOutside:Z

.field private greylist-max-o mContainer:Landroid/view/Window;

.field private final greylist mContext:Landroid/content/Context;

.field private blacklist mDecorCallback:Landroid/view/Window$DecorCallback;

.field private greylist-max-o mDefaultWindowFormat:I

.field private greylist mDestroyed:Z

.field private greylist mFeatures:I

.field private greylist-max-o mForcedWindowFlags:I

.field private greylist mHardwareAccelerated:Z

.field private greylist-max-o mHasChildren:Z

.field private greylist-max-o mHasSoftInputMode:Z

.field private greylist-max-o mHaveDimAmount:Z

.field private greylist-max-o mHaveWindowFormat:Z

.field private greylist-max-o mIsActive:Z

.field private blacklist mIsPreserved:Z

.field private greylist mLocalFeatures:I

.field private greylist-max-o mOnRestrictedCaptionAreaChangedListener:Landroid/view/Window$OnRestrictedCaptionAreaChangedListener;

.field private greylist-max-o mOnWindowDismissedCallback:Landroid/view/Window$OnWindowDismissedCallback;

.field private greylist-max-o mOnWindowSwipeDismissedCallback:Landroid/view/Window$OnWindowSwipeDismissedCallback;

.field private greylist-max-o mOverlayWithDecorCaptionEnabled:Z

.field private greylist-max-o mRestrictedCaptionAreaRect:Landroid/graphics/Rect;

.field private greylist-max-o mSetCloseOnTouchOutside:Z

.field private blacklist mSystemBarAppearance:I

.field private final greylist mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

.field private greylist-max-o mWindowControllerCallback:Landroid/view/Window$WindowControllerCallback;

.field private greylist-max-p mWindowManager:Landroid/view/WindowManager;

.field private greylist mWindowStyle:Landroid/content/res/TypedArray;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    invoke-static {}, Landroid/view/flags/Flags;->toolkitSetFrameRateReadOnly()Z

    move-result v0

    sput-boolean v0, Landroid/view/Window;->sToolkitSetFrameRateReadOnlyFlagValue:Z

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/Window;->mIsActive:Z

    iput-boolean v0, p0, Landroid/view/Window;->mHasChildren:Z

    iput-boolean v0, p0, Landroid/view/Window;->mCloseOnTouchOutside:Z

    iput-boolean v0, p0, Landroid/view/Window;->mSetCloseOnTouchOutside:Z

    iput v0, p0, Landroid/view/Window;->mForcedWindowFlags:I

    iput-boolean v0, p0, Landroid/view/Window;->mHaveWindowFormat:Z

    iput-boolean v0, p0, Landroid/view/Window;->mHaveDimAmount:Z

    const/4 v1, -0x1

    iput v1, p0, Landroid/view/Window;->mDefaultWindowFormat:I

    iput-boolean v0, p0, Landroid/view/Window;->mHasSoftInputMode:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/Window;->mOverlayWithDecorCaptionEnabled:Z

    iput-boolean v0, p0, Landroid/view/Window;->mCloseOnSwipeEnabled:Z

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Landroid/view/Window;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iput-object p1, p0, Landroid/view/Window;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/Window;->getDefaultFeatures(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Landroid/view/Window;->mLocalFeatures:I

    iput v0, p0, Landroid/view/Window;->mFeatures:I

    return-void
.end method

.method public static whitelist getDefaultFeatures(Landroid/content/Context;)I
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110136

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    or-int/lit8 v0, v0, 0x1

    :cond_0
    const v2, 0x1110135

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1

    or-int/lit8 v0, v0, 0x40

    :cond_1
    return v0
.end method

.method private greylist-max-o setPrivateFlags(II)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    not-int v2, p2

    and-int/2addr v1, v2

    and-int v2, p1, p2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public abstract whitelist addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public whitelist addFlags(I)V
    .locals 0

    invoke-virtual {p0, p1, p1}, Landroid/view/Window;->setFlags(II)V

    return-void
.end method

.method public final whitelist addOnFrameMetricsAvailableListener(Landroid/view/Window$OnFrameMetricsAvailableListener;Landroid/os/Handler;)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/View;->addFrameMetricsListener(Landroid/view/Window;Landroid/view/Window$OnFrameMetricsAvailableListener;Landroid/os/Handler;)V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "listener cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "can\'t observe a Window without an attached view"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist-max-r addPrivateFlags(I)V
    .locals 0

    invoke-direct {p0, p1, p1}, Landroid/view/Window;->setPrivateFlags(II)V

    return-void
.end method

.method public whitelist addSystemFlags(I)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/view/Window;->addPrivateFlags(I)V

    return-void
.end method

.method greylist-max-o adjustLayoutParamsForSubWindow(Landroid/view/WindowManager$LayoutParams;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const-string v2, ":"

    const/16 v3, 0x20

    const/16 v4, 0x3e8

    if-lt v1, v4, :cond_9

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7cf

    if-gt v1, v5, :cond_9

    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    iput-object v5, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_10

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x3e9

    if-ne v3, v5, :cond_2

    const-string v3, "Media"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x3ec

    if-ne v3, v5, :cond_3

    const-string v3, "MediaOvr"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v3, v4, :cond_4

    const-string v3, "Panel"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x3ea

    if-ne v3, v4, :cond_5

    const-string v3, "SubPanel"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x3ed

    if-ne v3, v4, :cond_6

    const-string v3, "AboveSubPanel"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_6
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x3eb

    if-ne v3, v4, :cond_7

    const-string v3, "AtchDlg"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_7
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    iget-object v3, p0, Landroid/view/Window;->mAppName:Ljava/lang/String;

    if-eqz v3, :cond_8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/Window;->mAppName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    invoke-virtual {p1, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_9
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7d0

    if-lt v1, v4, :cond_c

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0xbb7

    if-gt v1, v4, :cond_c

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_10

    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Sys"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/view/Window;->mAppName:Ljava/lang/String;

    if-eqz v3, :cond_b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/Window;->mAppName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    invoke-virtual {p1, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_c
    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-nez v1, :cond_e

    iget-object v1, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    if-nez v1, :cond_d

    iget-object v1, p0, Landroid/view/Window;->mAppToken:Landroid/os/IBinder;

    goto :goto_1

    :cond_d
    iget-object v1, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    iget-object v1, v1, Landroid/view/Window;->mAppToken:Landroid/os/IBinder;

    :goto_1
    iput-object v1, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    :cond_e
    if-eqz v0, :cond_f

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_10

    :cond_f
    iget-object v1, p0, Landroid/view/Window;->mAppName:Ljava/lang/String;

    if-eqz v1, :cond_10

    iget-object v1, p0, Landroid/view/Window;->mAppName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    :cond_10
    :goto_2
    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-nez v1, :cond_11

    iget-object v1, p0, Landroid/view/Window;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    :cond_11
    iget-boolean v1, p0, Landroid/view/Window;->mHardwareAccelerated:Z

    const/high16 v2, 0x1000000

    if-nez v1, :cond_12

    iget-object v1, p0, Landroid/view/Window;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_13

    :cond_12
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v1, v2

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_13
    return-void
.end method

.method public abstract greylist alwaysReadCloseOnTouchAttr()V
.end method

.method public abstract greylist-max-o clearContentView()V
.end method

.method public whitelist clearFlags(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/view/Window;->setFlags(II)V

    return-void
.end method

.method public abstract whitelist closeAllPanels()V
.end method

.method public abstract whitelist closePanel(I)V
.end method

.method public blacklist decorFitsSystemWindows()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final greylist-max-o destroy()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/Window;->mDestroyed:Z

    invoke-virtual {p0}, Landroid/view/Window;->onDestroy()V

    return-void
.end method

.method public final blacklist dispatchOnSystemBarAppearanceChanged(I)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/view/Window;->setSystemBarAppearance(I)V

    iget-object v0, p0, Landroid/view/Window;->mDecorCallback:Landroid/view/Window$DecorCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/Window;->mDecorCallback:Landroid/view/Window$DecorCallback;

    invoke-interface {v0, p1}, Landroid/view/Window$DecorCallback;->onSystemBarAppearanceChanged(I)V

    :cond_0
    iget-object v0, p0, Landroid/view/Window;->mWindowControllerCallback:Landroid/view/Window$WindowControllerCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/Window;->mWindowControllerCallback:Landroid/view/Window$WindowControllerCallback;

    invoke-interface {v0, p1}, Landroid/view/Window$WindowControllerCallback;->updateSystemBarsAppearance(I)V

    :cond_1
    return-void
.end method

.method public final greylist-max-o dispatchOnWindowDismissed(ZZ)V
    .locals 1

    iget-object v0, p0, Landroid/view/Window;->mOnWindowDismissedCallback:Landroid/view/Window$OnWindowDismissedCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/Window;->mOnWindowDismissedCallback:Landroid/view/Window$OnWindowDismissedCallback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$OnWindowDismissedCallback;->onWindowDismissed(ZZ)V

    :cond_0
    return-void
.end method

.method public final greylist-max-o dispatchOnWindowSwipeDismissed()V
    .locals 1

    iget-object v0, p0, Landroid/view/Window;->mOnWindowSwipeDismissedCallback:Landroid/view/Window$OnWindowSwipeDismissedCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/Window;->mOnWindowSwipeDismissedCallback:Landroid/view/Window$OnWindowSwipeDismissedCallback;

    invoke-interface {v0}, Landroid/view/Window$OnWindowSwipeDismissedCallback;->onWindowSwipeDismissed()V

    :cond_0
    return-void
.end method

.method protected greylist-max-o dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    iget-object v0, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public whitelist findViewById(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getAllowEnterTransitionOverlap()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getAllowReturnTransitionOverlap()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final whitelist getAttributes()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    iget-object v0, p0, Landroid/view/Window;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public final whitelist getCallback()Landroid/view/Window$Callback;
    .locals 1

    iget-object v0, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    return-object v0
.end method

.method public whitelist getColorMode()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getColorMode()I

    move-result v0

    return v0
.end method

.method public final whitelist getContainer()Landroid/view/Window;
    .locals 1

    iget-object v0, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    return-object v0
.end method

.method public whitelist getContentScene()Landroid/transition/Scene;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final whitelist getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/view/Window;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public abstract whitelist getCurrentFocus()Landroid/view/View;
.end method

.method public abstract whitelist getDecorView()Landroid/view/View;
.end method

.method public whitelist getDesiredHdrHeadroom()F
    .locals 1

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getDesiredHdrHeadroom()F

    move-result v0

    return v0
.end method

.method public greylist-max-o getElevation()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getEnterTransition()Landroid/transition/Transition;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getExitTransition()Landroid/transition/Transition;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final whitelist getFeatures()I
    .locals 1

    iget v0, p0, Landroid/view/Window;->mFeatures:I

    return v0
.end method

.method protected final whitelist getForcedWindowFlags()I
    .locals 1

    iget v0, p0, Landroid/view/Window;->mForcedWindowFlags:I

    return v0
.end method

.method public whitelist getFrameRateBoostOnTouchEnabled()Z
    .locals 1

    sget-boolean v0, Landroid/view/Window;->sToolkitSetFrameRateReadOnlyFlagValue:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getFrameRateBoostOnTouchEnabled()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getInsetsController()Landroid/view/WindowInsetsController;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract whitelist getLayoutInflater()Landroid/view/LayoutInflater;
.end method

.method protected final whitelist getLocalFeatures()I
    .locals 1

    iget v0, p0, Landroid/view/Window;->mLocalFeatures:I

    return v0
.end method

.method public whitelist getMediaController()Landroid/media/session/MediaController;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getNavigationBarBackgroundView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract whitelist getNavigationBarColor()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist getNavigationBarDividerColor()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getReenterTransition()Landroid/transition/Transition;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getReturnTransition()Landroid/transition/Transition;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getRootSurfaceControl()Landroid/view/AttachedSurfaceControl;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSharedElementEnterTransition()Landroid/transition/Transition;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSharedElementExitTransition()Landroid/transition/Transition;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSharedElementReenterTransition()Landroid/transition/Transition;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSharedElementReturnTransition()Landroid/transition/Transition;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSharedElementsUseOverlay()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getStatusBarBackgroundView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract whitelist getStatusBarColor()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public final blacklist getSystemBarAppearance()I
    .locals 1

    iget v0, p0, Landroid/view/Window;->mSystemBarAppearance:I

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

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTransitionBackgroundFadeDuration()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist getTransitionManager()Landroid/transition/TransitionManager;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract whitelist getVolumeControlStream()I
.end method

.method public final greylist-max-o getWindowControllerCallback()Landroid/view/Window$WindowControllerCallback;
    .locals 1

    iget-object v0, p0, Landroid/view/Window;->mWindowControllerCallback:Landroid/view/Window$WindowControllerCallback;

    return-object v0
.end method

.method public whitelist getWindowManager()Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Landroid/view/Window;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method public final whitelist getWindowStyle()Landroid/content/res/TypedArray;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/view/Window;->mWindowStyle:Landroid/content/res/TypedArray;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/Window;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/internal/R$styleable;->Window:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Landroid/view/Window;->mWindowStyle:Landroid/content/res/TypedArray;

    :cond_0
    iget-object v0, p0, Landroid/view/Window;->mWindowStyle:Landroid/content/res/TypedArray;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final whitelist hasChildren()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/Window;->mHasChildren:Z

    return v0
.end method

.method public whitelist hasFeature(I)Z
    .locals 3

    invoke-virtual {p0}, Landroid/view/Window;->getFeatures()I

    move-result v0

    const/4 v1, 0x1

    shl-int v2, v1, p1

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected final whitelist hasSoftInputMode()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/Window;->mHasSoftInputMode:Z

    return v0
.end method

.method protected greylist-max-o haveDimAmount()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/Window;->mHaveDimAmount:Z

    return v0
.end method

.method public whitelist injectInputEvent(Landroid/view/InputEvent;)V
    .locals 0

    return-void
.end method

.method public abstract whitelist invalidatePanelMenu(I)V
.end method

.method public final whitelist isActive()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/Window;->mIsActive:Z

    return v0
.end method

.method public final greylist-max-r isDestroyed()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/Window;->mDestroyed:Z

    return v0
.end method

.method public abstract whitelist isFloating()Z
.end method

.method public whitelist isFrameRatePowerSavingsBalanced()Z
    .locals 1

    sget-boolean v0, Landroid/view/Window;->sToolkitSetFrameRateReadOnlyFlagValue:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->isFrameRatePowerSavingsBalanced()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isNavigationBarContrastEnforced()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o isOutOfBounds(Landroid/content/Context;Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    neg-int v4, v2

    if-lt v0, v4, :cond_1

    neg-int v4, v2

    if-lt v1, v4, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, v2

    if-gt v0, v4, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, v2

    if-le v1, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    :goto_1
    return v4
.end method

.method public greylist-max-o isOverlayWithDecorCaptionEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/Window;->mOverlayWithDecorCaptionEnabled:Z

    return v0
.end method

.method public blacklist isPreserved()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/Window;->mIsPreserved:Z

    return v0
.end method

.method public abstract whitelist isShortcutKey(ILandroid/view/KeyEvent;)Z
.end method

.method public whitelist isStatusBarContrastEnforced()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isWideColorGamut()Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/Window;->getColorMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->isScreenWideColorGamut()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final whitelist makeActive()V
    .locals 2

    iget-object v0, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    iget-object v0, v0, Landroid/view/Window;->mActiveChild:Landroid/view/Window;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    iget-object v0, v0, Landroid/view/Window;->mActiveChild:Landroid/view/Window;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/view/Window;->mIsActive:Z

    :cond_0
    iget-object v0, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    iput-object p0, v0, Landroid/view/Window;->mActiveChild:Landroid/view/Window;

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/Window;->mIsActive:Z

    invoke-virtual {p0}, Landroid/view/Window;->onActive()V

    return-void
.end method

.method public greylist-max-o notifyRestrictedCaptionAreaCallback(IIII)V
    .locals 2

    iget-object v0, p0, Landroid/view/Window;->mOnRestrictedCaptionAreaChangedListener:Landroid/view/Window$OnRestrictedCaptionAreaChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/Window;->mRestrictedCaptionAreaRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Landroid/view/Window;->mOnRestrictedCaptionAreaChangedListener:Landroid/view/Window$OnRestrictedCaptionAreaChangedListener;

    iget-object v1, p0, Landroid/view/Window;->mRestrictedCaptionAreaRect:Landroid/graphics/Rect;

    invoke-interface {v0, v1}, Landroid/view/Window$OnRestrictedCaptionAreaChangedListener;->onRestrictedCaptionAreaChanged(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method protected abstract whitelist onActive()V
.end method

.method public abstract whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method protected blacklist onDestroy()V
    .locals 0

    return-void
.end method

.method public final blacklist onDrawLegacyNavigationBarBackgroundChanged(Z)Z
    .locals 1

    iget-object v0, p0, Landroid/view/Window;->mDecorCallback:Landroid/view/Window$DecorCallback;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/view/Window;->mDecorCallback:Landroid/view/Window$DecorCallback;

    invoke-interface {v0, p1}, Landroid/view/Window$DecorCallback;->onDrawLegacyNavigationBarBackgroundChanged(Z)Z

    move-result v0

    return v0
.end method

.method public abstract greylist-max-o onMultiWindowModeChanged()V
.end method

.method public abstract greylist-max-o onPictureInPictureModeChanged(Z)V
.end method

.method public abstract whitelist openPanel(ILandroid/view/KeyEvent;)V
.end method

.method public abstract whitelist peekDecorView()Landroid/view/View;
.end method

.method public abstract whitelist performContextMenuIdentifierAction(II)Z
.end method

.method public abstract whitelist performPanelIdentifierAction(III)Z
.end method

.method public abstract whitelist performPanelShortcut(IILandroid/view/KeyEvent;I)Z
.end method

.method public whitelist registerScrollCaptureCallback(Landroid/view/ScrollCaptureCallback;)V
    .locals 0

    return-void
.end method

.method protected greylist-max-o removeFeature(I)V
    .locals 3

    const/4 v0, 0x1

    shl-int/2addr v0, p1

    iget v1, p0, Landroid/view/Window;->mFeatures:I

    not-int v2, v0

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/Window;->mFeatures:I

    iget v1, p0, Landroid/view/Window;->mLocalFeatures:I

    iget-object v2, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    iget v2, v2, Landroid/view/Window;->mFeatures:I

    not-int v2, v2

    and-int/2addr v2, v0

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    not-int v2, v2

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/Window;->mLocalFeatures:I

    return-void
.end method

.method public final whitelist removeOnFrameMetricsAvailableListener(Landroid/view/Window$OnFrameMetricsAvailableListener;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->removeFrameMetricsListener(Landroid/view/Window$OnFrameMetricsAvailableListener;)V

    :cond_0
    return-void
.end method

.method public whitelist requestFeature(I)Z
    .locals 4

    const/4 v0, 0x1

    shl-int v1, v0, p1

    iget v2, p0, Landroid/view/Window;->mFeatures:I

    or-int/2addr v2, v1

    iput v2, p0, Landroid/view/Window;->mFeatures:I

    iget v2, p0, Landroid/view/Window;->mLocalFeatures:I

    iget-object v3, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    iget v3, v3, Landroid/view/Window;->mFeatures:I

    not-int v3, v3

    and-int/2addr v3, v1

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    or-int/2addr v2, v3

    iput v2, p0, Landroid/view/Window;->mLocalFeatures:I

    iget v2, p0, Landroid/view/Window;->mFeatures:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public blacklist requestScrollCapture(Landroid/view/IScrollCaptureResponseListener;)V
    .locals 0

    return-void
.end method

.method public final whitelist requireViewById(I)Landroid/view/View;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ID does not reference a View inside this Window"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public abstract whitelist restoreHierarchyState(Landroid/os/Bundle;)V
.end method

.method public abstract whitelist saveHierarchyState()Landroid/os/Bundle;
.end method

.method public whitelist setAllowEnterTransitionOverlap(Z)V
    .locals 0

    return-void
.end method

.method public whitelist setAllowReturnTransitionOverlap(Z)V
    .locals 0

    return-void
.end method

.method public whitelist setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    iget-object v0, p0, Landroid/view/Window;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    iget-object v0, p0, Landroid/view/Window;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public whitelist setBackgroundBlurRadius(I)V
    .locals 0

    return-void
.end method

.method public abstract whitelist setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
.end method

.method public whitelist setBackgroundDrawableResource(I)V
    .locals 1

    iget-object v0, p0, Landroid/view/Window;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public whitelist setCallback(Landroid/view/Window$Callback;)V
    .locals 0

    iput-object p1, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    return-void
.end method

.method public abstract whitelist setChildDrawable(ILandroid/graphics/drawable/Drawable;)V
.end method

.method public abstract whitelist setChildInt(II)V
.end method

.method public whitelist setClipToOutline(Z)V
    .locals 0

    return-void
.end method

.method public greylist setCloseOnTouchOutside(Z)V
    .locals 1

    iput-boolean p1, p0, Landroid/view/Window;->mCloseOnTouchOutside:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/Window;->mSetCloseOnTouchOutside:Z

    return-void
.end method

.method public greylist setCloseOnTouchOutsideIfNotSet(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/view/Window;->mSetCloseOnTouchOutside:Z

    if-nez v0, :cond_0

    iput-boolean p1, p0, Landroid/view/Window;->mCloseOnTouchOutside:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/Window;->mSetCloseOnTouchOutside:Z

    :cond_0
    return-void
.end method

.method public whitelist setColorMode(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->setColorMode(I)V

    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public whitelist setContainer(Landroid/view/Window;)V
    .locals 1

    iput-object p1, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/view/Window;->mFeatures:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/view/Window;->mFeatures:I

    iget v0, p0, Landroid/view/Window;->mLocalFeatures:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/view/Window;->mLocalFeatures:I

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/view/Window;->mHasChildren:Z

    :cond_0
    return-void
.end method

.method public abstract whitelist setContentView(I)V
.end method

.method public abstract whitelist setContentView(Landroid/view/View;)V
.end method

.method public abstract whitelist setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public final blacklist setDecorCallback(Landroid/view/Window$DecorCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/view/Window;->mDecorCallback:Landroid/view/Window$DecorCallback;

    return-void
.end method

.method public abstract whitelist setDecorCaptionShade(I)V
.end method

.method public whitelist setDecorFitsSystemWindows(Z)V
    .locals 0

    return-void
.end method

.method public greylist-max-o setDefaultIcon(I)V
    .locals 0

    return-void
.end method

.method public greylist-max-o setDefaultLogo(I)V
    .locals 0

    return-void
.end method

.method protected whitelist setDefaultWindowFormat(I)V
    .locals 1

    iput p1, p0, Landroid/view/Window;->mDefaultWindowFormat:I

    iget-boolean v0, p0, Landroid/view/Window;->mHaveWindowFormat:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public whitelist setDesiredHdrHeadroom(F)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->setDesiredHdrHeadroom(F)V

    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public whitelist setDimAmount(F)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/Window;->mHaveDimAmount:Z

    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public whitelist setElevation(F)V
    .locals 0

    return-void
.end method

.method public whitelist setEnterTransition(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public whitelist setExitTransition(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public abstract whitelist setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V
.end method

.method public abstract whitelist setFeatureDrawableAlpha(II)V
.end method

.method public abstract whitelist setFeatureDrawableResource(II)V
.end method

.method public abstract whitelist setFeatureDrawableUri(ILandroid/net/Uri;)V
.end method

.method public abstract whitelist setFeatureInt(II)V
.end method

.method public whitelist setFlags(II)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    not-int v2, p2

    and-int/2addr v1, v2

    and-int v2, p1, p2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, p0, Landroid/view/Window;->mForcedWindowFlags:I

    or-int/2addr v1, p2

    iput v1, p0, Landroid/view/Window;->mForcedWindowFlags:I

    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public whitelist setFormat(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-eqz p1, :cond_0

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/Window;->mHaveWindowFormat:Z

    goto :goto_0

    :cond_0
    iget v1, p0, Landroid/view/Window;->mDefaultWindowFormat:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/Window;->mHaveWindowFormat:Z

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public whitelist setFrameRateBoostOnTouchEnabled(Z)V
    .locals 1

    sget-boolean v0, Landroid/view/Window;->sToolkitSetFrameRateReadOnlyFlagValue:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->setFrameRateBoostOnTouchEnabled(Z)V

    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public whitelist setFrameRatePowerSavingsBalanced(Z)V
    .locals 1

    sget-boolean v0, Landroid/view/Window;->sToolkitSetFrameRateReadOnlyFlagValue:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->setFrameRatePowerSavingsBalanced(Z)V

    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public whitelist setGravity(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public final whitelist setHideOverlayWindows(Z)V
    .locals 2

    iget-object v0, p0, Landroid/view/Window;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.HIDE_NON_SYSTEM_OVERLAY_WINDOWS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/Window;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.HIDE_OVERLAY_WINDOWS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Permission denial: setHideOverlayWindows: HIDE_OVERLAY_WINDOWS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/high16 v0, 0x80000

    if-eqz p1, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-direct {p0, v1, v0}, Landroid/view/Window;->setPrivateFlags(II)V

    return-void
.end method

.method public whitelist setIcon(I)V
    .locals 0

    return-void
.end method

.method public whitelist setLayout(II)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public whitelist setLocalFocus(ZZ)V
    .locals 0

    return-void
.end method

.method public whitelist setLogo(I)V
    .locals 0

    return-void
.end method

.method public whitelist setMediaController(Landroid/media/session/MediaController;)V
    .locals 0

    return-void
.end method

.method public abstract whitelist setNavigationBarColor(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist setNavigationBarContrastEnforced(Z)V
    .locals 0

    return-void
.end method

.method public whitelist setNavigationBarDividerColor(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public final greylist-max-o setOnWindowDismissedCallback(Landroid/view/Window$OnWindowDismissedCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/view/Window;->mOnWindowDismissedCallback:Landroid/view/Window$OnWindowDismissedCallback;

    return-void
.end method

.method public final greylist-max-o setOnWindowSwipeDismissedCallback(Landroid/view/Window$OnWindowSwipeDismissedCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/view/Window;->mOnWindowSwipeDismissedCallback:Landroid/view/Window$OnWindowSwipeDismissedCallback;

    return-void
.end method

.method public greylist-max-o setOverlayWithDecorCaptionEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/view/Window;->mOverlayWithDecorCaptionEnabled:Z

    return-void
.end method

.method public whitelist setPreferMinimalPostProcessing(Z)V
    .locals 1

    iget-object v0, p0, Landroid/view/Window;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iput-boolean p1, v0, Landroid/view/WindowManager$LayoutParams;->preferMinimalPostProcessing:Z

    iget-object v0, p0, Landroid/view/Window;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public blacklist setPreserved(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/view/Window;->mIsPreserved:Z

    return-void
.end method

.method public whitelist setReenterTransition(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public abstract whitelist setResizingCaptionDrawable(Landroid/graphics/drawable/Drawable;)V
.end method

.method public final whitelist setRestrictedCaptionAreaListener(Landroid/view/Window$OnRestrictedCaptionAreaChangedListener;)V
    .locals 1

    iput-object p1, p0, Landroid/view/Window;->mOnRestrictedCaptionAreaChangedListener:Landroid/view/Window$OnRestrictedCaptionAreaChangedListener;

    if-eqz p1, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/view/Window;->mRestrictedCaptionAreaRect:Landroid/graphics/Rect;

    return-void
.end method

.method public whitelist setReturnTransition(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public whitelist setSharedElementEnterTransition(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public whitelist setSharedElementExitTransition(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public whitelist setSharedElementReenterTransition(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public whitelist setSharedElementReturnTransition(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public whitelist setSharedElementsUseOverlay(Z)V
    .locals 0

    return-void
.end method

.method public whitelist setSoftInputMode(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-eqz p1, :cond_0

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/Window;->mHasSoftInputMode:Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/Window;->mHasSoftInputMode:Z

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public abstract whitelist setStatusBarColor(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist setStatusBarContrastEnforced(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public whitelist setSustainedPerformanceMode(Z)V
    .locals 2

    const/high16 v0, 0x10000

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1, v0}, Landroid/view/Window;->setPrivateFlags(II)V

    return-void
.end method

.method public final blacklist setSystemBarAppearance(I)V
    .locals 0

    iput p1, p0, Landroid/view/Window;->mSystemBarAppearance:I

    return-void
.end method

.method public whitelist setSystemGestureExclusionRects(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "window does not support gesture exclusion rects"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setTheme(I)V
    .locals 0

    return-void
.end method

.method public abstract whitelist setTitle(Ljava/lang/CharSequence;)V
.end method

.method public abstract whitelist setTitleColor(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist setTransitionBackgroundFadeDuration(J)V
    .locals 0

    return-void
.end method

.method public whitelist setTransitionManager(Landroid/transition/TransitionManager;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist setType(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public whitelist setUiOptions(I)V
    .locals 0

    return-void
.end method

.method public whitelist setUiOptions(II)V
    .locals 0

    return-void
.end method

.method public abstract whitelist setVolumeControlStream(I)V
.end method

.method public whitelist setWindowAnimations(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public final greylist-max-o setWindowControllerCallback(Landroid/view/Window$WindowControllerCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/view/Window;->mWindowControllerCallback:Landroid/view/Window$WindowControllerCallback;

    return-void
.end method

.method public whitelist setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;Z)V

    return-void
.end method

.method public whitelist setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;Z)V
    .locals 2

    iput-object p2, p0, Landroid/view/Window;->mAppToken:Landroid/os/IBinder;

    iput-object p3, p0, Landroid/view/Window;->mAppName:Ljava/lang/String;

    iput-boolean p4, p0, Landroid/view/Window;->mHardwareAccelerated:Z

    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/view/Window;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Landroid/view/WindowManager;

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/view/WindowManagerImpl;

    invoke-virtual {v0, p0}, Landroid/view/WindowManagerImpl;->createLocalWindowManager(Landroid/view/Window;)Landroid/view/WindowManagerImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/view/Window;->mWindowManager:Landroid/view/WindowManager;

    return-void
.end method

.method public greylist-max-p shouldCloseOnTouch(Landroid/content/Context;Landroid/view/MotionEvent;)Z
    .locals 4

    nop

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/view/Window;->isOutOfBounds(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    iget-boolean v3, p0, Landroid/view/Window;->mCloseOnTouchOutside:Z

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method public blacklist shouldCloseOnTouchOutside()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/Window;->mCloseOnTouchOutside:Z

    return v0
.end method

.method public abstract whitelist superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract whitelist superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
.end method

.method public abstract whitelist superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
.end method

.method public abstract whitelist superDispatchTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract whitelist superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract whitelist takeInputQueue(Landroid/view/InputQueue$Callback;)V
.end method

.method public abstract whitelist takeKeyEvents(Z)V
.end method

.method public abstract whitelist takeSurface(Landroid/view/SurfaceHolder$Callback2;)V
.end method

.method public abstract whitelist togglePanel(ILandroid/view/KeyEvent;)V
.end method

.method public whitelist unregisterScrollCaptureCallback(Landroid/view/ScrollCaptureCallback;)V
    .locals 0

    return-void
.end method
