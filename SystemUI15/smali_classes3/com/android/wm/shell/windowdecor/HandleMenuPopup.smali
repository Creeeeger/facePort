.class public final Lcom/android/wm/shell/windowdecor/HandleMenuPopup;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mCaptionButtonPolicy:Lcom/android/wm/shell/windowdecor/CaptionButtonPolicy;

.field public final mCaptionTop:I

.field public final mContext:Landroid/content/Context;

.field public mHandleMenu:Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewHostViewContainer;

.field public mHideAnimation:Landroid/animation/AnimatorSet;

.field public mIsHandleMenuShowing:Z

.field public mIsKeepScreenOn:Z

.field public final mIsNewDexMode:Z

.field public final mOnClickListener:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;

.field public final mOnTouchListener:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;

.field public final mParentDecor:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

.field public mPopupWidth:I

.field public final mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

.field public mRootPopupView:Landroid/view/View;

.field public mShowAnimation:Landroid/animation/AnimatorSet;

.field public final mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field public final mWindowingMode:I


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mParentDecor:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    iget-object v0, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorWindowContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mOnClickListener:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;

    iput-object p3, p0, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mOnTouchListener:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;

    iput-object p4, p0, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    iget p2, p4, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCaptionY:I

    iput p2, p0, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mCaptionTop:I

    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mWindowingMode:I

    iget-object p3, v0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {p3}, Landroid/content/res/Configuration;->isNewDexMode()Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mIsNewDexMode:Z

    iget-boolean p1, p1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mIsKeyguardShowing:Z

    iget-object p3, v0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {p3}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result p3

    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object p4

    invoke-virtual {p4}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getMultiSplitFlags()I

    move-result p4

    invoke-static {v0, p4}, Lcom/android/wm/shell/windowdecor/CaptionShellUtils;->isTopDownSplit(Landroid/app/ActivityManager$RunningTaskInfo;I)Z

    move-result p4

    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    new-instance p1, Lcom/android/wm/shell/windowdecor/FreeformCaptionButtonPolicy;

    invoke-direct {p1, v1, p3, p4}, Lcom/android/wm/shell/windowdecor/FreeformCaptionButtonPolicy;-><init>(Landroid/content/Context;ZZ)V

    goto :goto_0

    :cond_0
    sget-boolean p3, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_FULL_SCREEN:Z

    if-eqz p3, :cond_1

    const/4 p3, 0x1

    if-ne p2, p3, :cond_1

    new-instance p2, Lcom/android/wm/shell/windowdecor/FullscreenCaptionButtonPolicy;

    invoke-direct {p2, v1, p1, p4}, Lcom/android/wm/shell/windowdecor/FullscreenCaptionButtonPolicy;-><init>(Landroid/content/Context;ZZ)V

    move-object p1, p2

    goto :goto_0

    :cond_1
    const/4 p1, 0x6

    if-ne p2, p1, :cond_2

    new-instance p1, Lcom/android/wm/shell/windowdecor/SplitCaptionButtonPolicy;

    invoke-direct {p1}, Lcom/android/wm/shell/windowdecor/SplitCaptionButtonPolicy;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mCaptionButtonPolicy:Lcom/android/wm/shell/windowdecor/CaptionButtonPolicy;

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unsupported windowing mode: "

    invoke-static {p2, p1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final closeHandleMenu(Z)V
    .locals 3

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->setHandleViewVisibilityIfNeeded(Z)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mIsHandleMenuShowing:Z

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mHandleMenu:Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewHostViewContainer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewHostViewContainer;->releaseView()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mHandleMenu:Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewHostViewContainer;

    :cond_0
    return-void

    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mHandleMenu:Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewHostViewContainer;

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mIsHandleMenuShowing:Z

    if-eqz p1, :cond_3

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_KEEP_SCREEN_ON:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mIsKeepScreenOn:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mParentDecor:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    iget-boolean v0, p1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mIsKeepScreenOn:Z

    if-eqz v0, :cond_2

    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mWindowDecorViewHolder:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mHandleHideAnimator:Lcom/android/wm/shell/windowdecor/animation/HandleHideAnimator;

    if-eqz p1, :cond_2

    iget-boolean v0, p1, Lcom/android/wm/shell/windowdecor/animation/HandleHideAnimator;->mEnabled:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Lcom/android/wm/shell/windowdecor/animation/HandleHideAnimator;->mIsShowing:Z

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/wm/shell/windowdecor/animation/HandleHideAnimator;->mHandler:Landroid/os/Handler;

    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/animation/HandleHideAnimator;->mHideRunnable:Lcom/android/wm/shell/windowdecor/animation/HandleHideAnimator$$ExternalSyntheticLambda0;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mHideAnimation:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :cond_3
    return-void
.end method

.method public final setHandleViewVisibilityIfNeeded(Z)V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_WINDOW_BLUR_SUPPORTED:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mParentDecor:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->getHandleView()Lcom/android/wm/shell/windowdecor/widget/HandleView;

    move-result-object p0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    return-void
.end method
