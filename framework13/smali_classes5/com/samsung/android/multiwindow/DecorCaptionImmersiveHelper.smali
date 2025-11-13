.class public Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;
.super Ljava/lang/Object;
.source "DecorCaptionImmersiveHelper.java"


# static fields
.field public static final blacklist CAPTION_STATE_HIDE:I = 0x0

.field public static final blacklist CAPTION_STATE_SHOW:I = 0x1

.field public static final blacklist CAPTION_STATE_SHOW_OVERLAY:I = 0x2

.field public static final blacklist DEBUG:Z

.field private static final blacklist DELAYED_TIME_TO_HIDE:I = 0x3e8

.field private static final blacklist DELAYED_TIME_TO_SHOW:I = 0x1f4

.field private static final blacklist HEIGHT_TO_SHOW_HEADER_FROM_HOVER:F = 1.0f

.field private static final blacklist SWIPE_TIMEOUT_MS:J = 0x1f4L

.field private static final blacklist TAG:Ljava/lang/String; = "ImmersiveHelper"


# instance fields
.field private blacklist mCaptionHeight:I

.field private final blacklist mDecor:Lcom/android/internal/policy/DecorView;

.field private blacklist mDownTime:J

.field private blacklist mDownY:F

.field private blacklist mHasMetaData:Z

.field private final blacklist mHideRunnable:Ljava/lang/Runnable;

.field private blacklist mIsRequestedVisible:Z

.field private blacklist mIsShowingFromTouchEvent:Z

.field private blacklist mReadyToShow:Z

.field private blacklist mRequestTransientBarDelay:I

.field private final blacklist mShowRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic blacklist $r8$lambda$65gpIcUBaFI9YtqqChvZU7jPr3c(Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->hide()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$tFp88vT-yXCSZkQCDbMkEusrz20(Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->show()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDecor(Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;)Lcom/android/internal/policy/DecorView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mDecor:Lcom/android/internal/policy/DecorView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHideRunnable(Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mHideRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 26
    const-string v0, "decorcaption.debug.immersive"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->DEBUG:Z

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/policy/DecorView;Landroid/content/Context;)V
    .locals 2
    .param p1, "decorView"    # Lcom/android/internal/policy/DecorView;
    .param p2, "windowContext"    # Landroid/content/Context;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;)V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mShowRunnable:Ljava/lang/Runnable;

    .line 46
    new-instance v0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;)V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mHideRunnable:Ljava/lang/Runnable;

    .line 48
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mRequestTransientBarDelay:I

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mIsRequestedVisible:Z

    .line 54
    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mReadyToShow:Z

    .line 60
    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mHasMetaData:Z

    .line 64
    iput-object p1, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mDecor:Lcom/android/internal/policy/DecorView;

    .line 65
    invoke-virtual {p1}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/DecorCaptionView;->getHeightByScreenZoom(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mCaptionHeight:I

    .line 67
    instance-of v0, p2, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 68
    move-object v0, p2

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 69
    .local v0, "info":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/content/pm/ActivityInfo;->requestTransientBarDelay:I

    if-ltz v1, :cond_0

    .line 70
    iget v1, v0, Landroid/content/pm/ActivityInfo;->requestTransientBarDelay:I

    iput v1, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mRequestTransientBarDelay:I

    .line 72
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mHasMetaData:Z

    goto :goto_0

    .line 73
    :cond_0
    sget v1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MD_DEXSTAR_SHOWING_DELAY_TIME:I

    if-ltz v1, :cond_1

    .line 74
    sget v1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MD_DEXSTAR_SHOWING_DELAY_TIME:I

    iput v1, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mRequestTransientBarDelay:I

    .line 78
    .end local v0    # "info":Landroid/content/pm/ActivityInfo;
    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist detectSwipeFromTop(JF)Z
    .locals 5
    .param p1, "time"    # J
    .param p3, "y"    # F

    .line 219
    iget-wide v0, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mDownTime:J

    sub-long v0, p1, v0

    .line 220
    .local v0, "elapsed":J
    iget v2, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mDownY:F

    iget v3, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mCaptionHeight:I

    int-to-float v4, v3

    cmpg-float v4, v2, v4

    if-gtz v4, :cond_0

    cmpl-float v2, p3, v2

    if-lez v2, :cond_0

    int-to-float v2, v3

    cmpl-float v2, p3, v2

    if-lez v2, :cond_0

    const-wide/16 v2, 0x1f4

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private blacklist hide()V
    .locals 4

    .line 271
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mIsRequestedVisible:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->isShowingCaptionByType()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 275
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mIsRequestedVisible:Z

    .line 277
    iget-object v0, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->isDexEnabled()Z

    move-result v0

    const-string v1, "ImmersiveHelper"

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->isFullscreenMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 278
    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->COMMON_IS_PRODUCT_DEV:Z

    if-eqz v0, :cond_1

    .line 279
    const-string v0, "mHideRunnable.run() was aborted, isFullScreen=false"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_1
    return-void

    .line 284
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getDecorCaptionViewByType()Lcom/android/internal/widget/DecorCaptionView;

    move-result-object v0

    .line 285
    .local v0, "decorCaptionView":Lcom/android/internal/widget/DecorCaptionView;
    if-nez v0, :cond_3

    .line 286
    const-string v2, "mHideRunnable.run() was aborted, decorCaptionView=null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    return-void

    .line 290
    :cond_3
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget v2, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mCaptionHeight:I

    neg-int v2, v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v3, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 291
    .local v1, "anim":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 292
    sget-object v2, Lcom/samsung/android/util/InterpolatorUtils;->SINE_IN_OUT_80:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 293
    new-instance v2, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper$2;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper$2;-><init>(Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;Lcom/android/internal/widget/DecorCaptionView;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 311
    invoke-virtual {v0}, Lcom/android/internal/widget/DecorCaptionView;->getCaption()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 312
    return-void

    .line 272
    .end local v0    # "decorCaptionView":Lcom/android/internal/widget/DecorCaptionView;
    .end local v1    # "anim":Landroid/view/animation/Animation;
    :cond_4
    :goto_0
    return-void
.end method

.method public static blacklist log(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .line 319
    const-string v0, "ImmersiveHelper"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    return-void
.end method

.method private blacklist show()V
    .locals 4

    .line 225
    iget-object v0, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->isShowingCaption()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    return-void

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getDecorCaptionViewByType()Lcom/android/internal/widget/DecorCaptionView;

    move-result-object v0

    .line 230
    .local v0, "decorCaptionView":Lcom/android/internal/widget/DecorCaptionView;
    if-nez v0, :cond_1

    .line 231
    const-string v1, "ImmersiveHelper"

    const-string v2, "mShowRunnable.run() was aborted, decorCaptionView=null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    return-void

    .line 235
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mDecor:Lcom/android/internal/policy/DecorView;

    iget-object v2, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/DecorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 236
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mIsRequestedVisible:Z

    .line 238
    iget-object v2, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v2}, Lcom/android/internal/policy/DecorView;->getCaptionType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v1, :cond_2

    .line 239
    iget-object v2, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v2, v3, v1}, Lcom/android/internal/policy/DecorView;->updateCaptionState(IZ)V

    goto :goto_0

    .line 241
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mDecor:Lcom/android/internal/policy/DecorView;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/policy/DecorView;->updateCaptionState(IZ)V

    .line 244
    :goto_0
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget v2, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mCaptionHeight:I

    neg-int v2, v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 245
    .local v1, "anim":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 246
    sget-object v2, Lcom/samsung/android/util/InterpolatorUtils;->SINE_IN_OUT_80:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 247
    iget-boolean v2, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mIsShowingFromTouchEvent:Z

    if-eqz v2, :cond_3

    .line 248
    new-instance v2, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper$1;-><init>(Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 267
    :cond_3
    invoke-virtual {v0}, Lcom/android/internal/widget/DecorCaptionView;->getCaption()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 268
    return-void
.end method


# virtual methods
.method public blacklist dispatchCaptionVisibilityChanged(Z)V
    .locals 5
    .param p1, "isImmersiveMode"    # Z

    .line 94
    iget-object v0, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->isFullscreenMode()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 95
    iget-object v0, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getCaptionType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 119
    :pswitch_0
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mIsRequestedVisible:Z

    if-eqz v0, :cond_0

    .line 120
    iput-boolean v2, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mIsRequestedVisible:Z

    .line 121
    iget-object v0, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mDecor:Lcom/android/internal/policy/DecorView;

    iget-object v3, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/DecorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 123
    :cond_0
    if-eqz p1, :cond_1

    .line 124
    iget-object v0, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, v2, v2}, Lcom/android/internal/policy/DecorView;->updateCaptionState(IZ)V

    goto :goto_0

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/DecorView;->updateCaptionState(IZ)V

    goto :goto_0

    .line 97
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->isFullSize()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getDecorCaptionView()Lcom/android/internal/widget/DecorCaptionView;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 98
    const/4 v0, 0x0

    .line 99
    .local v0, "overlay":Z
    iget-boolean v3, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mIsRequestedVisible:Z

    if-eqz v3, :cond_2

    .line 100
    iput-boolean v2, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mIsRequestedVisible:Z

    .line 101
    iget-object v3, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mDecor:Lcom/android/internal/policy/DecorView;

    iget-object v4, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/DecorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 102
    const/4 v0, 0x1

    .line 104
    :cond_2
    if-eqz p1, :cond_3

    .line 105
    iget-object v1, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1}, Lcom/android/internal/policy/DecorView;->isShowingCaption()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 106
    iget-object v1, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/policy/DecorView;->updateCaptionState(IZ)V

    goto :goto_0

    .line 109
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v3}, Lcom/android/internal/policy/DecorView;->isShowingCaption()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 110
    iget-object v3, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v3, v2, v0}, Lcom/android/internal/policy/DecorView;->updateCaptionState(IZ)V

    .line 111
    iget-object v3, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v3, v1, v2}, Lcom/android/internal/policy/DecorView;->updateCaptionState(IZ)V

    goto :goto_0

    .line 113
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v2, v1, v0}, Lcom/android/internal/policy/DecorView;->updateCaptionState(IZ)V

    .line 131
    .end local v0    # "overlay":Z
    :cond_5
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist dispatchHoverEvent(Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 139
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    .line 140
    .local v1, "isTypeStylus":Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v3

    const/high16 v4, 0x4000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v0

    .line 141
    .local v3, "isDexTouchpad":Z
    :goto_1
    sget-boolean v4, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->DEBUG:Z

    const/16 v5, 0x2002

    if-eqz v4, :cond_3

    .line 142
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dispatchHoverEvent: action="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isTypeStylus="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isDexTouchpad="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " non-mouse="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 143
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v7

    if-eq v7, v5, :cond_2

    move v7, v2

    goto :goto_2

    :cond_2
    move v7, v0

    :goto_2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 142
    invoke-static {v6}, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->log(Ljava/lang/String;)V

    .line 146
    :cond_3
    if-eqz v1, :cond_4

    if-nez v3, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v6

    if-eq v6, v5, :cond_4

    .line 148
    return-void

    .line 151
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    .line 153
    .local v5, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_4

    .line 156
    :pswitch_1
    if-eqz v1, :cond_5

    if-eqz v3, :cond_5

    .line 157
    iget v6, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mCaptionHeight:I

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    goto :goto_3

    :cond_5
    const/high16 v6, 0x3f800000    # 1.0f

    .line 159
    .local v6, "heightToShow":F
    :goto_3
    iget-boolean v7, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mReadyToShow:Z

    const-string v8, " heightToShow="

    if-eqz v7, :cond_9

    .line 160
    iget-boolean v2, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mIsRequestedVisible:Z

    if-eqz v2, :cond_7

    .line 161
    iget v2, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mCaptionHeight:I

    if-le v5, v2, :cond_b

    .line 162
    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mReadyToShow:Z

    .line 163
    if-eqz v4, :cond_6

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchHoverEvent: hide. mReadyToShow=true y="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " captionHeight="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mCaptionHeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " delayTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->log(Ljava/lang/String;)V

    .line 167
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mDecor:Lcom/android/internal/policy/DecorView;

    iget-object v2, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mHideRunnable:Ljava/lang/Runnable;

    const-wide/16 v7, 0x3e8

    invoke-virtual {v0, v2, v7, v8}, Lcom/android/internal/policy/DecorView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    .line 170
    :cond_7
    int-to-float v2, v5

    cmpl-float v2, v2, v6

    if-lez v2, :cond_b

    .line 171
    if-eqz v4, :cond_8

    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchHoverEvent: ignore. mReadyToShow=true y="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->log(Ljava/lang/String;)V

    .line 174
    :cond_8
    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mReadyToShow:Z

    .line 175
    iget-object v0, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mDecor:Lcom/android/internal/policy/DecorView;

    iget-object v2, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/DecorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_4

    .line 178
    :cond_9
    int-to-float v7, v5

    cmpg-float v7, v7, v6

    if-gtz v7, :cond_b

    .line 179
    if-eqz v4, :cond_a

    .line 180
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dispatchHoverEvent: show. mReadyToShow=false y="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " mRequestTransientBarDelay="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v7, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mRequestTransientBarDelay:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->log(Ljava/lang/String;)V

    .line 183
    :cond_a
    iput-boolean v2, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mReadyToShow:Z

    .line 184
    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mIsShowingFromTouchEvent:Z

    .line 185
    iget-object v0, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mDecor:Lcom/android/internal/policy/DecorView;

    iget-object v2, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mShowRunnable:Ljava/lang/Runnable;

    iget v4, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mRequestTransientBarDelay:I

    int-to-long v7, v4

    invoke-virtual {v0, v2, v7, v8}, Lcom/android/internal/policy/DecorView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 189
    .end local v6    # "heightToShow":F
    :cond_b
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public blacklist dispatchTouchEvent(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 192
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 193
    return-void

    .line 196
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    .line 197
    .local v0, "toolType":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 198
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 204
    :pswitch_1
    iget-object v2, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v2}, Lcom/android/internal/policy/DecorView;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v2

    .line 205
    .local v2, "hasShowMessage":Z
    if-nez v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {p0, v3, v4, v5}, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->detectSwipeFromTop(JF)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 206
    sget-boolean v3, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 207
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchTouchEvent: show. mRequestTransientBarDelay="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mRequestTransientBarDelay:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->log(Ljava/lang/String;)V

    .line 209
    :cond_2
    iput-boolean v1, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mIsShowingFromTouchEvent:Z

    .line 210
    iget-object v1, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mDecor:Lcom/android/internal/policy/DecorView;

    iget-object v3, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mShowRunnable:Ljava/lang/Runnable;

    iget v4, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mRequestTransientBarDelay:I

    int-to-long v4, v4

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/internal/policy/DecorView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 200
    .end local v2    # "hasShowMessage":Z
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mDownY:F

    .line 201
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mDownTime:J

    .line 202
    nop

    .line 215
    :cond_3
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public blacklist initImmersiveHoverState()V
    .locals 1

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mReadyToShow:Z

    .line 135
    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mIsRequestedVisible:Z

    .line 136
    return-void
.end method

.method public blacklist isTransient()Z
    .locals 1

    .line 315
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mIsRequestedVisible:Z

    return v0
.end method

.method public blacklist onConfigurationChanged()V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mDecor:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/DecorCaptionView;->getHeightByScreenZoom(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mCaptionHeight:I

    .line 91
    return-void
.end method

.method public blacklist updateDexStarShowingDelayTime(I)V
    .locals 2
    .param p1, "time"    # I

    .line 82
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mHasMetaData:Z

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateDexStarShowingDelayTime "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mRequestTransientBarDelay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImmersiveHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iput p1, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->mRequestTransientBarDelay:I

    .line 86
    :cond_0
    return-void
.end method
