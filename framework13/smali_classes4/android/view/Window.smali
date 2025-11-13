.class public abstract Landroid/view/Window;
.super Ljava/lang/Object;
.source "Window.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/Window$OnContentApplyWindowInsetsListener;,
        Landroid/view/Window$OnFrameMetricsAvailableListener;,
        Landroid/view/Window$OnRestrictedCaptionAreaChangedListener;,
        Landroid/view/Window$DecorCallback;,
        Landroid/view/Window$WindowControllerCallback;,
        Landroid/view/Window$OnWindowSwipeDismissedCallback;,
        Landroid/view/Window$OnWindowDismissedCallback;,
        Landroid/view/Window$Callback;
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


# instance fields
.field private greylist isSpeg:Z

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
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 777
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/Window;->mIsActive:Z

    .line 320
    iput-boolean v0, p0, Landroid/view/Window;->mHasChildren:Z

    .line 321
    iput-boolean v0, p0, Landroid/view/Window;->mCloseOnTouchOutside:Z

    .line 322
    iput-boolean v0, p0, Landroid/view/Window;->mSetCloseOnTouchOutside:Z

    .line 323
    iput v0, p0, Landroid/view/Window;->mForcedWindowFlags:I

    .line 330
    iput-boolean v0, p0, Landroid/view/Window;->mHaveWindowFormat:Z

    .line 331
    iput-boolean v0, p0, Landroid/view/Window;->mHaveDimAmount:Z

    .line 332
    const/4 v1, -0x1

    iput v1, p0, Landroid/view/Window;->mDefaultWindowFormat:I

    .line 334
    iput-boolean v0, p0, Landroid/view/Window;->mHasSoftInputMode:Z

    .line 339
    iput-boolean v0, p0, Landroid/view/Window;->mOverlayWithDecorCaptionEnabled:Z

    .line 340
    iput-boolean v0, p0, Landroid/view/Window;->mCloseOnSwipeEnabled:Z

    .line 351
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Landroid/view/Window;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 778
    iput-object p1, p0, Landroid/view/Window;->mContext:Landroid/content/Context;

    .line 779
    invoke-static {p1}, Landroid/view/Window;->getDefaultFeatures(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Landroid/view/Window;->mLocalFeatures:I

    iput v0, p0, Landroid/view/Window;->mFeatures:I

    .line 780
    return-void
.end method

.method public static whitelist getDefaultFeatures(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 2019
    const/4 v0, 0x0

    .line 2021
    .local v0, "features":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2022
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x1110109

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2023
    or-int/lit8 v0, v0, 0x1

    .line 2026
    :cond_0
    const v2, 0x1110108

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2027
    or-int/lit8 v0, v0, 0x40

    .line 2030
    :cond_1
    return v0
.end method

.method private greylist-max-o setPrivateFlags(II)V
    .locals 3
    .param p1, "flags"    # I
    .param p2, "mask"    # I

    .line 1316
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1317
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    not-int v2, p2

    and-int/2addr v1, v2

    and-int v2, p1, p2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1318
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1319
    return-void
.end method


# virtual methods
.method public abstract whitelist addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public whitelist addFlags(I)V
    .locals 0
    .param p1, "flags"    # I

    .line 1228
    invoke-virtual {p0, p1, p1}, Landroid/view/Window;->setFlags(II)V

    .line 1229
    return-void
.end method

.method public final whitelist addOnFrameMetricsAvailableListener(Landroid/view/Window$OnFrameMetricsAvailableListener;Landroid/os/Handler;)V
    .locals 3
    .param p1, "listener"    # Landroid/view/Window$OnFrameMetricsAvailableListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 977
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 978
    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 982
    if-eqz p1, :cond_0

    .line 986
    invoke-virtual {v0, p0, p1, p2}, Landroid/view/View;->addFrameMetricsListener(Landroid/view/Window;Landroid/view/Window$OnFrameMetricsAvailableListener;Landroid/os/Handler;)V

    .line 987
    return-void

    .line 983
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "listener cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 979
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "can\'t observe a Window without an attached view"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist-max-r addPrivateFlags(I)V
    .locals 0
    .param p1, "flags"    # I

    .line 1242
    invoke-direct {p0, p1, p1}, Landroid/view/Window;->setPrivateFlags(II)V

    .line 1243
    return-void
.end method

.method public whitelist addSystemFlags(I)V
    .locals 0
    .param p1, "flags"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1258
    invoke-virtual {p0, p1}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 1259
    return-void
.end method

.method greylist-max-o adjustLayoutParamsForSubWindow(Landroid/view/WindowManager$LayoutParams;)V
    .locals 6
    .param p1, "wp"    # Landroid/view/WindowManager$LayoutParams;

    .line 879
    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 880
    .local v0, "curTitle":Ljava/lang/CharSequence;
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const-string v2, ":"

    const/16 v3, 0x20

    const/16 v4, 0x3e8

    if-lt v1, v4, :cond_9

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7cf

    if-gt v1, v5, :cond_9

    .line 882
    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-nez v1, :cond_0

    .line 883
    invoke-virtual {p0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    .line 884
    .local v1, "decor":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 885
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    iput-object v5, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 888
    .end local v1    # "decor":Landroid/view/View;
    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_10

    .line 889
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 890
    .local v1, "title":Ljava/lang/StringBuilder;
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x3e9

    if-ne v3, v5, :cond_2

    .line 891
    const-string v3, "Media"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 892
    :cond_2
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x3ec

    if-ne v3, v5, :cond_3

    .line 893
    const-string v3, "MediaOvr"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 894
    :cond_3
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v3, v4, :cond_4

    .line 895
    const-string v3, "Panel"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 896
    :cond_4
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x3ea

    if-ne v3, v4, :cond_5

    .line 897
    const-string v3, "SubPanel"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 898
    :cond_5
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x3ed

    if-ne v3, v4, :cond_6

    .line 899
    const-string v3, "AboveSubPanel"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 900
    :cond_6
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x3eb

    if-ne v3, v4, :cond_7

    .line 901
    const-string v3, "AtchDlg"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 903
    :cond_7
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 905
    :goto_0
    iget-object v3, p0, Landroid/view/Window;->mAppName:Ljava/lang/String;

    if-eqz v3, :cond_8

    .line 906
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/Window;->mAppName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 908
    :cond_8
    invoke-virtual {p1, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 909
    .end local v1    # "title":Ljava/lang/StringBuilder;
    goto :goto_2

    .line 910
    :cond_9
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7d0

    if-lt v1, v4, :cond_c

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0xbb7

    if-gt v1, v4, :cond_c

    .line 916
    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_10

    .line 917
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 918
    .restart local v1    # "title":Ljava/lang/StringBuilder;
    const-string v3, "Sys"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 919
    iget-object v3, p0, Landroid/view/Window;->mAppName:Ljava/lang/String;

    if-eqz v3, :cond_b

    .line 920
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/Window;->mAppName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 922
    :cond_b
    invoke-virtual {p1, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 923
    .end local v1    # "title":Ljava/lang/StringBuilder;
    goto :goto_2

    .line 925
    :cond_c
    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-nez v1, :cond_e

    .line 926
    iget-object v1, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    if-nez v1, :cond_d

    iget-object v1, p0, Landroid/view/Window;->mAppToken:Landroid/os/IBinder;

    goto :goto_1

    :cond_d
    iget-object v1, v1, Landroid/view/Window;->mAppToken:Landroid/os/IBinder;

    :goto_1
    iput-object v1, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 928
    :cond_e
    if-eqz v0, :cond_f

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_10

    :cond_f
    iget-object v1, p0, Landroid/view/Window;->mAppName:Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 930
    invoke-virtual {p1, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 933
    :cond_10
    :goto_2
    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-nez v1, :cond_11

    .line 934
    iget-object v1, p0, Landroid/view/Window;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 936
    :cond_11
    iget-boolean v1, p0, Landroid/view/Window;->mHardwareAccelerated:Z

    const/high16 v2, 0x1000000

    if-nez v1, :cond_12

    iget-object v1, p0, Landroid/view/Window;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_13

    .line 938
    :cond_12
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v1, v2

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 940
    :cond_13
    return-void
.end method

.method public abstract greylist alwaysReadCloseOnTouchAttr()V
.end method

.method public abstract greylist-max-o clearContentView()V
.end method

.method public whitelist clearFlags(I)V
    .locals 1
    .param p1, "flags"    # I

    .line 1269
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/view/Window;->setFlags(II)V

    .line 1270
    return-void
.end method

.method public abstract whitelist closeAllPanels()V
.end method

.method public abstract whitelist closePanel(I)V
.end method

.method public blacklist decorFitsSystemWindows()Z
    .locals 1

    .line 1452
    const/4 v0, 0x0

    return v0
.end method

.method public final greylist-max-o destroy()V
    .locals 1

    .line 840
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/Window;->mDestroyed:Z

    .line 841
    return-void
.end method

.method public final blacklist dispatchOnSystemBarAppearanceChanged(I)V
    .locals 1
    .param p1, "appearance"    # I

    .line 1048
    iput p1, p0, Landroid/view/Window;->mSystemBarAppearance:I

    .line 1049
    iget-object v0, p0, Landroid/view/Window;->mDecorCallback:Landroid/view/Window$DecorCallback;

    if-eqz v0, :cond_0

    .line 1050
    invoke-interface {v0, p1}, Landroid/view/Window$DecorCallback;->onSystemBarAppearanceChanged(I)V

    .line 1052
    :cond_0
    return-void
.end method

.method public final greylist-max-o dispatchOnWindowDismissed(ZZ)V
    .locals 1
    .param p1, "finishTask"    # Z
    .param p2, "suppressWindowTransition"    # Z

    .line 1007
    iget-object v0, p0, Landroid/view/Window;->mOnWindowDismissedCallback:Landroid/view/Window$OnWindowDismissedCallback;

    if-eqz v0, :cond_0

    .line 1008
    invoke-interface {v0, p1, p2}, Landroid/view/Window$OnWindowDismissedCallback;->onWindowDismissed(ZZ)V

    .line 1010
    :cond_0
    return-void
.end method

.method public final greylist-max-o dispatchOnWindowSwipeDismissed()V
    .locals 1

    .line 1019
    iget-object v0, p0, Landroid/view/Window;->mOnWindowSwipeDismissedCallback:Landroid/view/Window$OnWindowSwipeDismissedCallback;

    if-eqz v0, :cond_0

    .line 1020
    invoke-interface {v0}, Landroid/view/Window$OnWindowSwipeDismissedCallback;->onWindowSwipeDismissed()V

    .line 1022
    :cond_0
    return-void
.end method

.method protected greylist-max-o dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 1325
    iget-object v0, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 1326
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1328
    :cond_0
    return-void
.end method

.method public whitelist findViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 1611
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getAllowEnterTransitionOverlap()Z
    .locals 1

    .line 2456
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getAllowReturnTransitionOverlap()Z
    .locals 1

    .line 2484
    const/4 v0, 0x1

    return v0
.end method

.method public final whitelist getAttributes()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .line 1477
    iget-object v0, p0, Landroid/view/Window;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public final whitelist getCallback()Landroid/view/Window$Callback;
    .locals 1

    .line 966
    iget-object v0, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    return-object v0
.end method

.method public whitelist getColorMode()I
    .locals 1

    .line 1402
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getColorMode()I

    move-result v0

    return v0
.end method

.method public final whitelist getContainer()Landroid/view/Window;
    .locals 1

    .line 831
    iget-object v0, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    return-object v0
.end method

.method public whitelist getContentScene()Landroid/transition/Scene;
    .locals 1

    .line 2219
    const/4 v0, 0x0

    return-object v0
.end method

.method public final whitelist getContext()Landroid/content/Context;
    .locals 1

    .line 790
    iget-object v0, p0, Landroid/view/Window;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public abstract whitelist getCurrentFocus()Landroid/view/View;
.end method

.method public abstract whitelist getDecorView()Landroid/view/View;
.end method

.method public greylist-max-o getElevation()F
    .locals 1

    .line 1770
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getEnterTransition()Landroid/transition/Transition;
    .locals 1

    .line 2293
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getExitTransition()Landroid/transition/Transition;
    .locals 1

    .line 2322
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final whitelist getFeatures()I
    .locals 1

    .line 2011
    iget v0, p0, Landroid/view/Window;->mFeatures:I

    return v0
.end method

.method protected final whitelist getForcedWindowFlags()I
    .locals 1

    .line 1485
    iget v0, p0, Landroid/view/Window;->mForcedWindowFlags:I

    return v0
.end method

.method public whitelist getInsetsController()Landroid/view/WindowInsetsController;
    .locals 1

    .line 2823
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract whitelist getLayoutInflater()Landroid/view/LayoutInflater;
.end method

.method protected final whitelist getLocalFeatures()I
    .locals 1

    .line 2052
    iget v0, p0, Landroid/view/Window;->mLocalFeatures:I

    return v0
.end method

.method public whitelist getMediaController()Landroid/media/session/MediaController;
    .locals 1

    .line 2120
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getNavigationBarBackgroundView()Landroid/view/View;
    .locals 1

    .line 1980
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract whitelist getNavigationBarColor()I
.end method

.method public whitelist getNavigationBarDividerColor()I
    .locals 1

    .line 2606
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;
    .locals 2

    .line 2842
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getReenterTransition()Landroid/transition/Transition;
    .locals 1

    .line 2336
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getReturnTransition()Landroid/transition/Transition;
    .locals 1

    .line 2308
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getRootSurfaceControl()Landroid/view/AttachedSurfaceControl;
    .locals 1

    .line 2834
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSharedElementEnterTransition()Landroid/transition/Transition;
    .locals 1

    .line 2373
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSharedElementExitTransition()Landroid/transition/Transition;
    .locals 1

    .line 2419
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSharedElementReenterTransition()Landroid/transition/Transition;
    .locals 1

    .line 2430
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSharedElementReturnTransition()Landroid/transition/Transition;
    .locals 1

    .line 2382
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSharedElementsUseOverlay()Z
    .locals 1

    .line 2523
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getStatusBarBackgroundView()Landroid/view/View;
    .locals 1

    .line 1971
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract whitelist getStatusBarColor()I
.end method

.method public final blacklist getSystemBarAppearance()I
    .locals 1

    .line 1042
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

    .line 2721
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTransitionBackgroundFadeDuration()J
    .locals 2

    .line 2497
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist getTransitionManager()Landroid/transition/TransitionManager;
    .locals 1

    .line 2196
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract whitelist getVolumeControlStream()I
.end method

.method public final greylist-max-o getWindowControllerCallback()Landroid/view/Window$WindowControllerCallback;
    .locals 1

    .line 1031
    iget-object v0, p0, Landroid/view/Window;->mWindowControllerCallback:Landroid/view/Window$WindowControllerCallback;

    return-object v0
.end method

.method public whitelist getWindowManager()Landroid/view/WindowManager;
    .locals 1

    .line 949
    iget-object v0, p0, Landroid/view/Window;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method public final whitelist getWindowStyle()Landroid/content/res/TypedArray;
    .locals 2

    .line 798
    monitor-enter p0

    .line 799
    :try_start_0
    iget-object v0, p0, Landroid/view/Window;->mWindowStyle:Landroid/content/res/TypedArray;

    if-nez v0, :cond_0

    .line 800
    iget-object v0, p0, Landroid/view/Window;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/internal/R$styleable;->Window:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Landroid/view/Window;->mWindowStyle:Landroid/content/res/TypedArray;

    .line 803
    :cond_0
    iget-object v0, p0, Landroid/view/Window;->mWindowStyle:Landroid/content/res/TypedArray;

    monitor-exit p0

    return-object v0

    .line 804
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final whitelist hasChildren()Z
    .locals 1

    .line 835
    iget-boolean v0, p0, Landroid/view/Window;->mHasChildren:Z

    return v0
.end method

.method public whitelist hasFeature(I)Z
    .locals 3
    .param p1, "feature"    # I

    .line 2040
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

    .line 1492
    iget-boolean v0, p0, Landroid/view/Window;->mHasSoftInputMode:Z

    return v0
.end method

.method protected greylist-max-o haveDimAmount()Z
    .locals 1

    .line 2076
    iget-boolean v0, p0, Landroid/view/Window;->mHaveDimAmount:Z

    return v0
.end method

.method public whitelist injectInputEvent(Landroid/view/InputEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 2183
    return-void
.end method

.method public abstract whitelist invalidatePanelMenu(I)V
.end method

.method public final whitelist isActive()Z
    .locals 1

    .line 1590
    iget-boolean v0, p0, Landroid/view/Window;->mIsActive:Z

    return v0
.end method

.method public final greylist-max-r isDestroyed()Z
    .locals 1

    .line 846
    iget-boolean v0, p0, Landroid/view/Window;->mDestroyed:Z

    return v0
.end method

.method public abstract whitelist isFloating()Z
.end method

.method public whitelist isNavigationBarContrastEnforced()Z
    .locals 1

    .line 2674
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o isOutOfBounds(Landroid/content/Context;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 1542
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 1543
    .local v0, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 1544
    .local v1, "y":I
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v2

    .line 1545
    .local v2, "slop":I
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    .line 1546
    .local v3, "decorView":Landroid/view/View;
    neg-int v4, v2

    if-lt v0, v4, :cond_1

    neg-int v4, v2

    if-lt v1, v4, :cond_1

    .line 1547
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, v2

    if-gt v0, v4, :cond_1

    .line 1548
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

    .line 1546
    :goto_1
    return v4
.end method

.method public greylist-max-o isOverlayWithDecorCaptionEnabled()Z
    .locals 1

    .line 2765
    iget-boolean v0, p0, Landroid/view/Window;->mOverlayWithDecorCaptionEnabled:Z

    return v0
.end method

.method public abstract whitelist isShortcutKey(ILandroid/view/KeyEvent;)Z
.end method

.method public whitelist isStatusBarContrastEnforced()Z
    .locals 1

    .line 2640
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isWideColorGamut()Z
    .locals 2

    .line 1413
    invoke-virtual {p0}, Landroid/view/Window;->getColorMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1414
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

    .line 1413
    :goto_0
    return v1
.end method

.method public final whitelist makeActive()V
    .locals 3

    .line 1578
    iget-object v0, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    if-eqz v0, :cond_1

    .line 1579
    iget-object v1, v0, Landroid/view/Window;->mActiveChild:Landroid/view/Window;

    if-eqz v1, :cond_0

    .line 1580
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/view/Window;->mIsActive:Z

    .line 1582
    :cond_0
    iput-object p0, v0, Landroid/view/Window;->mActiveChild:Landroid/view/Window;

    .line 1584
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/Window;->mIsActive:Z

    .line 1585
    invoke-virtual {p0}, Landroid/view/Window;->onActive()V

    .line 1586
    return-void
.end method

.method public greylist-max-o notifyRestrictedCaptionAreaCallback(IIII)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 2770
    iget-object v0, p0, Landroid/view/Window;->mOnRestrictedCaptionAreaChangedListener:Landroid/view/Window$OnRestrictedCaptionAreaChangedListener;

    if-eqz v0, :cond_0

    .line 2771
    iget-object v0, p0, Landroid/view/Window;->mRestrictedCaptionAreaRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2772
    iget-object v0, p0, Landroid/view/Window;->mOnRestrictedCaptionAreaChangedListener:Landroid/view/Window$OnRestrictedCaptionAreaChangedListener;

    iget-object v1, p0, Landroid/view/Window;->mRestrictedCaptionAreaRect:Landroid/graphics/Rect;

    invoke-interface {v0, v1}, Landroid/view/Window$OnRestrictedCaptionAreaChangedListener;->onRestrictedCaptionAreaChanged(Landroid/graphics/Rect;)V

    .line 2775
    :cond_0
    return-void
.end method

.method protected abstract whitelist onActive()V
.end method

.method public abstract whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public final blacklist onDrawLegacyNavigationBarBackgroundChanged(Z)Z
    .locals 1
    .param p1, "drawLegacyNavigationBarBackground"    # Z

    .line 1057
    iget-object v0, p0, Landroid/view/Window;->mDecorCallback:Landroid/view/Window$DecorCallback;

    if-nez v0, :cond_0

    .line 1058
    const/4 v0, 0x0

    return v0

    .line 1060
    :cond_0
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
    .param p1, "callback"    # Landroid/view/ScrollCaptureCallback;

    .line 2740
    return-void
.end method

.method protected greylist-max-o removeFeature(I)V
    .locals 3
    .param p1, "featureId"    # I

    .line 1572
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    .line 1573
    .local v0, "flag":I
    iget v1, p0, Landroid/view/Window;->mFeatures:I

    not-int v2, v0

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/Window;->mFeatures:I

    .line 1574
    iget v1, p0, Landroid/view/Window;->mLocalFeatures:I

    iget-object v2, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    if-eqz v2, :cond_0

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

    .line 1575
    return-void
.end method

.method public final whitelist removeOnFrameMetricsAvailableListener(Landroid/view/Window$OnFrameMetricsAvailableListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/Window$OnFrameMetricsAvailableListener;

    .line 993
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 994
    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 995
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->removeFrameMetricsListener(Landroid/view/Window$OnFrameMetricsAvailableListener;)V

    .line 997
    :cond_0
    return-void
.end method

.method public abstract greylist-max-o reportActivityRelaunched()V
.end method

.method public whitelist requestFeature(I)Z
    .locals 5
    .param p1, "featureId"    # I

    .line 1562
    const/4 v0, 0x1

    shl-int v1, v0, p1

    .line 1563
    .local v1, "flag":I
    iget v2, p0, Landroid/view/Window;->mFeatures:I

    or-int/2addr v2, v1

    iput v2, p0, Landroid/view/Window;->mFeatures:I

    .line 1564
    iget v3, p0, Landroid/view/Window;->mLocalFeatures:I

    iget-object v4, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    if-eqz v4, :cond_0

    iget v4, v4, Landroid/view/Window;->mFeatures:I

    not-int v4, v4

    and-int/2addr v4, v1

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    or-int/2addr v3, v4

    iput v3, p0, Landroid/view/Window;->mLocalFeatures:I

    .line 1565
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
    .param p1, "listener"    # Landroid/view/IScrollCaptureResponseListener;

    .line 2731
    return-void
.end method

.method public final whitelist requireViewById(I)Landroid/view/View;
    .locals 3
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 1630
    invoke-virtual {p0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1631
    .local v0, "view":Landroid/view/View;, "TT;"
    if-eqz v0, :cond_0

    .line 1634
    return-object v0

    .line 1632
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
    .param p1, "allow"    # Z

    .line 2443
    return-void
.end method

.method public whitelist setAllowReturnTransitionOverlap(Z)V
    .locals 0
    .param p1, "allow"    # Z

    .line 2470
    return-void
.end method

.method public whitelist setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1
    .param p1, "a"    # Landroid/view/WindowManager$LayoutParams;

    .line 1466
    iget-object v0, p0, Landroid/view/Window;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 1467
    iget-object v0, p0, Landroid/view/Window;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1468
    return-void
.end method

.method public whitelist setBackgroundBlurRadius(I)V
    .locals 0
    .param p1, "blurRadius"    # I

    .line 1841
    return-void
.end method

.method public abstract whitelist setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
.end method

.method public whitelist setBackgroundDrawableResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 1794
    iget-object v0, p0, Landroid/view/Window;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1795
    return-void
.end method

.method public whitelist setCallback(Landroid/view/Window$Callback;)V
    .locals 0
    .param p1, "callback"    # Landroid/view/Window$Callback;

    .line 959
    iput-object p1, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    .line 960
    return-void
.end method

.method public abstract whitelist setChildDrawable(ILandroid/graphics/drawable/Drawable;)V
.end method

.method public abstract whitelist setChildInt(II)V
.end method

.method public whitelist setClipToOutline(Z)V
    .locals 0
    .param p1, "clipToOutline"    # Z

    .line 1782
    return-void
.end method

.method public greylist setCloseOnTouchOutside(Z)V
    .locals 1
    .param p1, "close"    # Z

    .line 1498
    iput-boolean p1, p0, Landroid/view/Window;->mCloseOnTouchOutside:Z

    .line 1499
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/Window;->mSetCloseOnTouchOutside:Z

    .line 1500
    return-void
.end method

.method public greylist setCloseOnTouchOutsideIfNotSet(Z)V
    .locals 1
    .param p1, "close"    # Z

    .line 1505
    iget-boolean v0, p0, Landroid/view/Window;->mSetCloseOnTouchOutside:Z

    if-nez v0, :cond_0

    .line 1506
    iput-boolean p1, p0, Landroid/view/Window;->mCloseOnTouchOutside:Z

    .line 1507
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/Window;->mSetCloseOnTouchOutside:Z

    .line 1509
    :cond_0
    return-void
.end method

.method public whitelist setColorMode(I)V
    .locals 1
    .param p1, "colorMode"    # I

    .line 1345
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1346
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->setColorMode(I)V

    .line 1347
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1348
    return-void
.end method

.method public whitelist setContainer(Landroid/view/Window;)V
    .locals 1
    .param p1, "container"    # Landroid/view/Window;

    .line 815
    iput-object p1, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    .line 816
    if-eqz p1, :cond_0

    .line 818
    iget v0, p0, Landroid/view/Window;->mFeatures:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/view/Window;->mFeatures:I

    .line 819
    iget v0, p0, Landroid/view/Window;->mLocalFeatures:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/view/Window;->mLocalFeatures:I

    .line 820
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/view/Window;->mHasChildren:Z

    .line 822
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
    .param p1, "decorCallback"    # Landroid/view/Window$DecorCallback;

    .line 1036
    iput-object p1, p0, Landroid/view/Window;->mDecorCallback:Landroid/view/Window$DecorCallback;

    .line 1037
    return-void
.end method

.method public abstract whitelist setDecorCaptionShade(I)V
.end method

.method public whitelist setDecorFitsSystemWindows(Z)V
    .locals 0
    .param p1, "decorFitsSystemWindows"    # Z

    .line 1448
    return-void
.end method

.method public greylist-max-o setDefaultIcon(I)V
    .locals 0
    .param p1, "resId"    # I

    .line 2151
    return-void
.end method

.method public greylist-max-o setDefaultLogo(I)V
    .locals 0
    .param p1, "resId"    # I

    .line 2169
    return-void
.end method

.method protected whitelist setDefaultWindowFormat(I)V
    .locals 1
    .param p1, "format"    # I

    .line 2066
    iput p1, p0, Landroid/view/Window;->mDefaultWindowFormat:I

    .line 2067
    iget-boolean v0, p0, Landroid/view/Window;->mHaveWindowFormat:Z

    if-nez v0, :cond_0

    .line 2068
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2069
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 2070
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 2072
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method

.method public whitelist setDimAmount(F)V
    .locals 2
    .param p1, "amount"    # F

    .line 1426
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1427
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 1428
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/Window;->mHaveDimAmount:Z

    .line 1429
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1430
    return-void
.end method

.method public whitelist setElevation(F)V
    .locals 0
    .param p1, "elevation"    # F

    .line 1762
    return-void
.end method

.method public whitelist setEnterTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 2233
    return-void
.end method

.method public whitelist setExitTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 2264
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
    .param p1, "flags"    # I
    .param p2, "mask"    # I

    .line 1303
    iget-boolean v0, p0, Landroid/view/Window;->isSpeg:Z

    if-eqz v0, :cond_0

    .line 1306
    return-void

    .line 1309
    :cond_0
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1310
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    not-int v2, p2

    and-int/2addr v1, v2

    and-int v2, p1, p2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1311
    iget v1, p0, Landroid/view/Window;->mForcedWindowFlags:I

    or-int/2addr v1, p2

    iput v1, p0, Landroid/view/Window;->mForcedWindowFlags:I

    .line 1312
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1313
    return-void
.end method

.method public whitelist setFormat(I)V
    .locals 2
    .param p1, "format"    # I

    .line 1178
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1179
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_0

    .line 1180
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1181
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/Window;->mHaveWindowFormat:Z

    goto :goto_0

    .line 1183
    :cond_0
    iget v1, p0, Landroid/view/Window;->mDefaultWindowFormat:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1184
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/Window;->mHaveWindowFormat:Z

    .line 1186
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1187
    return-void
.end method

.method public whitelist setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .line 1149
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1150
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1151
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1152
    return-void
.end method

.method public final whitelist setHideOverlayWindows(Z)V
    .locals 2
    .param p1, "hide"    # Z

    .line 1085
    iget-object v0, p0, Landroid/view/Window;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.HIDE_NON_SYSTEM_OVERLAY_WINDOWS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/Window;->mContext:Landroid/content/Context;

    .line 1086
    const-string v1, "android.permission.HIDE_OVERLAY_WINDOWS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1087
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Permission denial: setHideOverlayWindows: HIDE_OVERLAY_WINDOWS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1090
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

    .line 1092
    return-void
.end method

.method public whitelist setIcon(I)V
    .locals 0
    .param p1, "resId"    # I

    .line 2142
    return-void
.end method

.method public whitelist setLayout(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 1131
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1132
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1133
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1134
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1135
    return-void
.end method

.method public whitelist setLocalFocus(ZZ)V
    .locals 0
    .param p1, "hasFocus"    # Z
    .param p2, "inTouchMode"    # Z

    .line 2177
    return-void
.end method

.method public whitelist setLogo(I)V
    .locals 0
    .param p1, "resId"    # I

    .line 2160
    return-void
.end method

.method public whitelist setMediaController(Landroid/media/session/MediaController;)V
    .locals 0
    .param p1, "controller"    # Landroid/media/session/MediaController;

    .line 2110
    return-void
.end method

.method public abstract whitelist setNavigationBarColor(I)V
.end method

.method public whitelist setNavigationBarContrastEnforced(Z)V
    .locals 0
    .param p1, "enforceContrast"    # Z

    .line 2659
    return-void
.end method

.method public whitelist setNavigationBarDividerColor(I)V
    .locals 0
    .param p1, "dividerColor"    # I

    .line 2596
    return-void
.end method

.method public final greylist-max-o setOnWindowDismissedCallback(Landroid/view/Window$OnWindowDismissedCallback;)V
    .locals 0
    .param p1, "dcb"    # Landroid/view/Window$OnWindowDismissedCallback;

    .line 1001
    iput-object p1, p0, Landroid/view/Window;->mOnWindowDismissedCallback:Landroid/view/Window$OnWindowDismissedCallback;

    .line 1002
    return-void
.end method

.method public final greylist-max-o setOnWindowSwipeDismissedCallback(Landroid/view/Window$OnWindowSwipeDismissedCallback;)V
    .locals 0
    .param p1, "sdcb"    # Landroid/view/Window$OnWindowSwipeDismissedCallback;

    .line 1014
    iput-object p1, p0, Landroid/view/Window;->mOnWindowSwipeDismissedCallback:Landroid/view/Window$OnWindowSwipeDismissedCallback;

    .line 1015
    return-void
.end method

.method public greylist-max-o setOverlayWithDecorCaptionEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 2760
    iput-boolean p1, p0, Landroid/view/Window;->mOverlayWithDecorCaptionEnabled:Z

    .line 2761
    return-void
.end method

.method public whitelist setPreferMinimalPostProcessing(Z)V
    .locals 1
    .param p1, "isPreferred"    # Z

    .line 1384
    iget-object v0, p0, Landroid/view/Window;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iput-boolean p1, v0, Landroid/view/WindowManager$LayoutParams;->preferMinimalPostProcessing:Z

    .line 1385
    iget-object v0, p0, Landroid/view/Window;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1386
    return-void
.end method

.method public whitelist setReenterTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 2280
    return-void
.end method

.method public abstract whitelist setResizingCaptionDrawable(Landroid/graphics/drawable/Drawable;)V
.end method

.method public final whitelist setRestrictedCaptionAreaListener(Landroid/view/Window$OnRestrictedCaptionAreaChangedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/Window$OnRestrictedCaptionAreaChangedListener;

    .line 1070
    iput-object p1, p0, Landroid/view/Window;->mOnRestrictedCaptionAreaChangedListener:Landroid/view/Window$OnRestrictedCaptionAreaChangedListener;

    .line 1071
    if-eqz p1, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/view/Window;->mRestrictedCaptionAreaRect:Landroid/graphics/Rect;

    .line 1072
    return-void
.end method

.method public whitelist setReturnTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 2250
    return-void
.end method

.method public whitelist setSharedElementEnterTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 2349
    return-void
.end method

.method public whitelist setSharedElementExitTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 2395
    return-void
.end method

.method public whitelist setSharedElementReenterTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 2408
    return-void
.end method

.method public whitelist setSharedElementReturnTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 2364
    return-void
.end method

.method public whitelist setSharedElementsUseOverlay(Z)V
    .locals 0
    .param p1, "sharedElementsUseOverlay"    # Z

    .line 2534
    return-void
.end method

.method public whitelist setSoftInputMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 1210
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1211
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_0

    .line 1212
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1213
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/Window;->mHasSoftInputMode:Z

    goto :goto_0

    .line 1215
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/Window;->mHasSoftInputMode:Z

    .line 1217
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1218
    return-void
.end method

.method public greylist setSpegOn()V
    .locals 1

    .line 1276
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    if-eqz v0, :cond_0

    .line 1277
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/Window;->isSpeg:Z

    .line 1279
    :cond_0
    return-void
.end method

.method public abstract whitelist setStatusBarColor(I)V
.end method

.method public whitelist setStatusBarContrastEnforced(Z)V
    .locals 0
    .param p1, "ensureContrast"    # Z

    .line 2625
    return-void
.end method

.method public whitelist setSustainedPerformanceMode(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 1532
    const/high16 v0, 0x40000

    if-eqz p1, :cond_0

    .line 1533
    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1532
    :goto_0
    invoke-direct {p0, v1, v0}, Landroid/view/Window;->setPrivateFlags(II)V

    .line 1535
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

    .line 2707
    .local p1, "rects":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "window does not support gesture exclusion rects"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setTheme(I)V
    .locals 0
    .param p1, "resId"    # I

    .line 2752
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
    .param p1, "fadeDurationMillis"    # J

    .line 2511
    return-void
.end method

.method public whitelist setTransitionManager(Landroid/transition/TransitionManager;)V
    .locals 1
    .param p1, "tm"    # Landroid/transition/TransitionManager;

    .line 2207
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist setType(I)V
    .locals 1
    .param p1, "type"    # I

    .line 1161
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1162
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1163
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1164
    return-void
.end method

.method public whitelist setUiOptions(I)V
    .locals 0
    .param p1, "uiOptions"    # I

    .line 2127
    return-void
.end method

.method public whitelist setUiOptions(II)V
    .locals 0
    .param p1, "uiOptions"    # I
    .param p2, "mask"    # I

    .line 2135
    return-void
.end method

.method public abstract whitelist setVolumeControlStream(I)V
.end method

.method public whitelist setWindowAnimations(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 1197
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1198
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1199
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1200
    return-void
.end method

.method public final greylist-max-o setWindowControllerCallback(Landroid/view/Window$WindowControllerCallback;)V
    .locals 0
    .param p1, "wccb"    # Landroid/view/Window$WindowControllerCallback;

    .line 1026
    iput-object p1, p0, Landroid/view/Window;->mWindowControllerCallback:Landroid/view/Window$WindowControllerCallback;

    .line 1027
    return-void
.end method

.method public whitelist setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 1
    .param p1, "wm"    # Landroid/view/WindowManager;
    .param p2, "appToken"    # Landroid/os/IBinder;
    .param p3, "appName"    # Ljava/lang/String;

    .line 857
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;Z)V

    .line 858
    return-void
.end method

.method public whitelist setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "wm"    # Landroid/view/WindowManager;
    .param p2, "appToken"    # Landroid/os/IBinder;
    .param p3, "appName"    # Ljava/lang/String;
    .param p4, "hardwareAccelerated"    # Z

    .line 869
    iput-object p2, p0, Landroid/view/Window;->mAppToken:Landroid/os/IBinder;

    .line 870
    iput-object p3, p0, Landroid/view/Window;->mAppName:Ljava/lang/String;

    .line 871
    iput-boolean p4, p0, Landroid/view/Window;->mHardwareAccelerated:Z

    .line 872
    if-nez p1, :cond_0

    .line 873
    iget-object v0, p0, Landroid/view/Window;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Landroid/view/WindowManager;

    .line 875
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/view/WindowManagerImpl;

    invoke-virtual {v0, p0}, Landroid/view/WindowManagerImpl;->createLocalWindowManager(Landroid/view/Window;)Landroid/view/WindowManagerImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/view/Window;->mWindowManager:Landroid/view/WindowManager;

    .line 876
    return-void
.end method

.method public greylist-max-p shouldCloseOnTouch(Landroid/content/Context;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 1519
    nop

    .line 1520
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/view/Window;->isOutOfBounds(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1521
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

    .line 1522
    .local v0, "isOutside":Z
    :goto_0
    iget-boolean v3, p0, Landroid/view/Window;->mCloseOnTouchOutside:Z

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    .line 1523
    return v2

    .line 1525
    :cond_3
    return v1
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
    .param p1, "callback"    # Landroid/view/ScrollCaptureCallback;

    .line 2748
    return-void
.end method
