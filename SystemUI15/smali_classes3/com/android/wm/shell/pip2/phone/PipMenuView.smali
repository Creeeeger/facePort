.class public final Lcom/android/wm/shell/pip2/phone/PipMenuView;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public final mActions:Ljava/util/List;

.field public final mActionsGroup:Landroid/widget/LinearLayout;

.field public mAllowMenuTimeout:Z

.field public mAllowTouches:Z

.field public final mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field public final mBetweenActionPaddingLand:I

.field public mCloseAction:Landroid/app/RemoteAction;

.field public final mController:Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;

.field public mDidLastShowMenuResize:Z

.field public final mDismissButton:Landroid/view/View;

.field public final mDismissFadeOutDurationMs:I

.field public final mHideMenuRunnable:Lcom/android/wm/shell/pip2/phone/PipMenuView$$ExternalSyntheticLambda0;

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mMainHandler:Landroid/os/Handler;

.field public final mMenuBgUpdateListener:Lcom/android/wm/shell/pip2/phone/PipMenuView$1;

.field public final mMenuContainer:Landroid/view/View;

.field public mMenuContainerAnimator:Landroid/animation/AnimatorSet;

.field public mMenuState:I

.field public final mPipForceCloseDelay:I

.field public final mPipMenuIconsAlgorithm:Lcom/android/wm/shell/pip2/phone/PipMenuIconsAlgorithm;

.field public final mPipUiEventLogger:Lcom/android/wm/shell/common/pip/PipUiEventLogger;

.field public final mSettingsButton:Landroid/view/View;

.field public final mTopEndContainer:Landroid/view/View;

.field public final mViewRoot:Landroid/view/View;


# direct methods
.method public static $r8$lambda$QT_3vOdga2lVOrrarWRUb9TjiJ0(Lcom/android/wm/shell/pip2/phone/PipMenuView;Landroid/view/View;)V
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/wm/shell/common/pip/PipUtils;->getTopPipActivity(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object p1

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "package"

    invoke-static {v3, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.settings.PICTURE_IN_PICTURE_SETTINGS"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mPipUiEventLogger:Lcom/android/wm/shell/common/pip/PipUiEventLogger;

    sget-object p1, Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_SHOW_SETTINGS:Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/pip/PipUiEventLogger;->log(Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;Lcom/android/wm/shell/common/pip/PipUiEventLogger;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mAllowMenuTimeout:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mAllowTouches:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mActions:Ljava/util/List;

    new-instance v0, Lcom/android/wm/shell/pip2/phone/PipMenuView$1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/pip2/phone/PipMenuView$1;-><init>(Lcom/android/wm/shell/pip2/phone/PipMenuView;)V

    iput-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mMenuBgUpdateListener:Lcom/android/wm/shell/pip2/phone/PipMenuView$1;

    new-instance v0, Lcom/android/wm/shell/pip2/phone/PipMenuView$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/wm/shell/pip2/phone/PipMenuView$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mHideMenuRunnable:Lcom/android/wm/shell/pip2/phone/PipMenuView$$ExternalSyntheticLambda0;

    iput-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mController:Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;

    iput-object p3, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iput-object p4, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mMainHandler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mPipUiEventLogger:Lcom/android/wm/shell/common/pip/PipUiEventLogger;

    const-class p2, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/accessibility/AccessibilityManager;

    iput-object p2, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const p2, 0x7f0d02b9

    invoke-static {p1, p2, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0b0031

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mPipForceCloseDelay:I

    iget-object p2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const p3, 0x7f080dbf

    invoke-virtual {p2, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    const p3, 0x7f0a013f

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mViewRoot:Landroid/view/View;

    invoke-virtual {p3, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const p2, 0x7f0a06fd

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mMenuContainer:Landroid/view/View;

    const/4 p4, 0x0

    invoke-virtual {p2, p4}, Landroid/view/View;->setAlpha(F)V

    const p2, 0x7f0a0d5c

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mTopEndContainer:Landroid/view/View;

    const p5, 0x7f0a0b33

    invoke-virtual {p0, p5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p5

    iput-object p5, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mSettingsButton:Landroid/view/View;

    invoke-virtual {p5, p4}, Landroid/view/View;->setAlpha(F)V

    new-instance v0, Lcom/android/wm/shell/pip2/phone/PipMenuView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/pip2/phone/PipMenuView$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/pip2/phone/PipMenuView;I)V

    invoke-virtual {p5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0390

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mDismissButton:Landroid/view/View;

    invoke-virtual {v0, p4}, Landroid/view/View;->setAlpha(F)V

    new-instance v1, Lcom/android/wm/shell/pip2/phone/PipMenuView$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/pip2/phone/PipMenuView$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/pip2/phone/PipMenuView;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a042c

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/wm/shell/pip2/phone/PipMenuView$$ExternalSyntheticLambda1;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lcom/android/wm/shell/pip2/phone/PipMenuView$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/pip2/phone/PipMenuView;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a09c7

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p4}, Landroid/view/View;->setAlpha(F)V

    const p4, 0x7f0a00a5

    invoke-virtual {p0, p4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/LinearLayout;

    iput-object p4, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mActionsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const v2, 0x7f070cd2

    invoke-virtual {p4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    iput p4, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mBetweenActionPaddingLand:I

    new-instance p4, Lcom/android/wm/shell/pip2/phone/PipMenuIconsAlgorithm;

    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-direct {p4, v2}, Lcom/android/wm/shell/pip2/phone/PipMenuIconsAlgorithm;-><init>(Landroid/content/Context;)V

    iput-object p4, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mPipMenuIconsAlgorithm:Lcom/android/wm/shell/pip2/phone/PipMenuIconsAlgorithm;

    check-cast p3, Landroid/view/ViewGroup;

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object p3, p4, Lcom/android/wm/shell/pip2/phone/PipMenuIconsAlgorithm;->mViewRoot:Landroid/view/ViewGroup;

    iput-object p2, p4, Lcom/android/wm/shell/pip2/phone/PipMenuIconsAlgorithm;->mTopEndContainer:Landroid/view/ViewGroup;

    iput-object v1, p4, Lcom/android/wm/shell/pip2/phone/PipMenuIconsAlgorithm;->mDragHandle:Landroid/view/View;

    iput-object p5, p4, Lcom/android/wm/shell/pip2/phone/PipMenuIconsAlgorithm;->mSettingsButton:Landroid/view/View;

    iput-object v0, p4, Lcom/android/wm/shell/pip2/phone/PipMenuIconsAlgorithm;->mDismissButton:Landroid/view/View;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b0030

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mDismissFadeOutDurationMs:I

    new-instance p1, Lcom/android/wm/shell/pip2/phone/PipMenuView$2;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/pip2/phone/PipMenuView$2;-><init>(Lcom/android/wm/shell/pip2/phone/PipMenuView;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method


# virtual methods
.method public final dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mAllowMenuTimeout:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x7d0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/pip2/phone/PipMenuView;->repostDelayedHide(I)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mAllowTouches:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean v0, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mAllowMenuTimeout:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x7d0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/pip2/phone/PipMenuView;->repostDelayedHide(I)V

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final hideMenu(Lcom/android/wm/shell/pip2/phone/PipMenuView$$ExternalSyntheticLambda0;ZZI)V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mMenuState:I

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v4, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mHideMenuRunnable:Lcom/android/wm/shell/pip2/phone/PipMenuView$$ExternalSyntheticLambda0;

    check-cast v3, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v3, v4}, Lcom/android/wm/shell/common/HandlerExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz p2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, p3, v3}, Lcom/android/wm/shell/pip2/phone/PipMenuView;->notifyMenuStateChangeStart(IZLcom/android/wm/shell/pip2/phone/PipMenuView$$ExternalSyntheticLambda0;)V

    :cond_0
    new-instance p3, Landroid/animation/AnimatorSet;

    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p3, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    iget-object p3, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mMenuContainer:Landroid/view/View;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {p3}, Landroid/view/View;->getAlpha()F

    move-result v4

    const/4 v5, 0x0

    new-array v6, v1, [F

    aput v4, v6, v2

    aput v5, v6, v0

    invoke-static {p3, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    iget-object v4, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mMenuBgUpdateListener:Lcom/android/wm/shell/pip2/phone/PipMenuView$1;

    invoke-virtual {p3, v4}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v4, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mSettingsButton:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v6

    new-array v7, v1, [F

    aput v6, v7, v2

    aput v5, v7, v0

    invoke-static {v4, v3, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v6, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mDismissButton:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getAlpha()F

    move-result v7

    new-array v8, v1, [F

    aput v7, v8, v2

    aput v5, v8, v0

    invoke-static {v6, v3, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v5, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    const/4 v6, 0x3

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object p3, v6, v2

    aput-object v4, v6, v0

    aput-object v3, v6, v1

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object p3, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    sget-object v2, Lcom/android/wm/shell/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {p3, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p3, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    if-eqz p4, :cond_3

    if-eq p4, v0, :cond_2

    if-ne p4, v1, :cond_1

    iget p4, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mDismissFadeOutDurationMs:I

    int-to-long v0, p4

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Invalid animation type "

    invoke-static {p4, p1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const-wide/16 v0, 0x7d

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {p3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object p3, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    new-instance p4, Lcom/android/wm/shell/pip2/phone/PipMenuView$4;

    invoke-direct {p4, p0, p2, p1}, Lcom/android/wm/shell/pip2/phone/PipMenuView$4;-><init>(Lcom/android/wm/shell/pip2/phone/PipMenuView;ZLjava/lang/Runnable;)V

    invoke-virtual {p3, p4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :cond_4
    return-void
.end method

.method public final notifyMenuStateChangeStart(IZLcom/android/wm/shell/pip2/phone/PipMenuView$$ExternalSyntheticLambda0;)V
    .locals 6

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mController:Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;

    iget v0, p0, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->mMenuState:I

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->mListeners:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController$$ExternalSyntheticLambda0;-><init>(IZLcom/android/wm/shell/pip2/phone/PipMenuView$$ExternalSyntheticLambda0;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    iget-object p2, p0, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->mMediaActionListener:Lcom/android/wm/shell/pip2/phone/PhonePipMenuController$1;

    iget-object p3, p0, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->mMediaController:Lcom/android/wm/shell/common/pip/PipMediaController;

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v1, p3, Lcom/android/wm/shell/common/pip/PipMediaController;->mActionListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p3, Lcom/android/wm/shell/common/pip/PipMediaController;->mActionListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3}, Lcom/android/wm/shell/common/pip/PipMediaController;->getMediaActions()Ljava/util/List;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController$1;->onMediaActionsChanged(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    invoke-virtual {p2, v1}, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController$1;->onMediaActionsChanged(Ljava/util/List;)V

    iget-object p3, p3, Lcom/android/wm/shell/common/pip/PipMediaController;->mActionListeners:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object p2

    iget-object p3, p0, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip2/phone/PipMenuView;

    invoke-virtual {p3, p0}, Lcom/android/wm/shell/common/SystemWindows;->getFocusGrantToken(Landroid/view/View;)Landroid/window/InputTransferToken;

    move-result-object p0

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    const/4 p1, 0x0

    invoke-interface {p2, p1, p0, v0}, Landroid/view/IWindowSession;->grantEmbeddedWindowFocus(Landroid/view/IWindow;Landroid/window/InputTransferToken;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    const/4 p2, 0x4

    aget-boolean p1, p1, p2

    if-eqz p1, :cond_3

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string p1, "PhonePipMenuController"

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object v5

    const/4 v3, 0x0

    const-string v4, "%s: Unable to update focus as menu appears/disappears, %s"

    const-wide v1, 0x7c8711fa70a83ac3L    # 7.19445161222993E291

    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x6f

    if-ne p1, v0, :cond_0

    iget-boolean p1, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mDidLastShowMenuResize:Z

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0, p1, v0}, Lcom/android/wm/shell/pip2/phone/PipMenuView;->hideMenu(Lcom/android/wm/shell/pip2/phone/PipMenuView$$ExternalSyntheticLambda0;ZZI)V

    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final repostDelayedHide(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const/4 v1, 0x5

    invoke-virtual {v0, p1, v1}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    move-result p1

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v1, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mHideMenuRunnable:Lcom/android/wm/shell/pip2/phone/PipMenuView$$ExternalSyntheticLambda0;

    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mHideMenuRunnable:Lcom/android/wm/shell/pip2/phone/PipMenuView$$ExternalSyntheticLambda0;

    int-to-long v1, p1

    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/wm/shell/common/HandlerExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public final shouldDelayChildPressedState()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final updateActionViews(ILandroid/graphics/Rect;)V
    .locals 13

    const v0, 0x7f0a042d

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0a00a3

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    new-instance v2, Lcom/android/wm/shell/pip2/phone/PipMenuView$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v2, 0x1

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-ne p1, v2, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v6, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mActions:Ljava/util/List;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_e

    if-nez p1, :cond_1

    goto/16 :goto_b

    :cond_1
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mActionsGroup:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_d

    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    :goto_1
    iget-object v1, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mActionsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    iget-object v6, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mActions:Ljava/util/List;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_2

    const v1, 0x7f0d02ba

    iget-object v6, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mActionsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/pip2/phone/PipMenuActionView;

    iget-object v6, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mActionsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_2
    move p1, v4

    :goto_2
    iget-object v1, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mActionsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/16 v6, 0x8

    if-ge p1, v1, :cond_4

    iget-object v1, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mActionsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v7, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mActions:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge p1, v7, :cond_3

    move v6, v4

    :cond_3
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    if-le p1, p2, :cond_5

    move p1, v2

    goto :goto_3

    :cond_5
    move p1, v4

    :goto_3
    move p2, v4

    :goto_4
    iget-object v1, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mActions:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_d

    iget-object v1, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mActions:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/RemoteAction;

    iget-object v7, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mActionsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v7, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/wm/shell/pip2/phone/PipMenuActionView;

    iget-object v8, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mCloseAction:Landroid/app/RemoteAction;

    if-eqz v8, :cond_6

    invoke-virtual {v8}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v1}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v9

    invoke-static {v8, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    move v8, v2

    goto :goto_5

    :cond_6
    move v8, v4

    :goto_5
    invoke-virtual {v1}, Landroid/app/RemoteAction;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v9

    if-eq v9, v3, :cond_8

    const/4 v10, 0x6

    if-ne v9, v10, :cond_7

    goto :goto_6

    :cond_7
    invoke-virtual {v1}, Landroid/app/RemoteAction;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v9

    iget-object v10, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    new-instance v11, Lcom/android/wm/shell/pip2/phone/PipMenuView$$ExternalSyntheticLambda5;

    invoke-direct {v11, v7}, Lcom/android/wm/shell/pip2/phone/PipMenuView$$ExternalSyntheticLambda5;-><init>(Lcom/android/wm/shell/pip2/phone/PipMenuActionView;)V

    iget-object v12, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v9, v10, v11, v12}, Landroid/graphics/drawable/Icon;->loadDrawableAsync(Landroid/content/Context;Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;Landroid/os/Handler;)V

    goto :goto_7

    :cond_8
    :goto_6
    iget-object v9, v7, Lcom/android/wm/shell/pip2/phone/PipMenuActionView;->mImageView:Landroid/widget/ImageView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_7
    if-eqz v8, :cond_9

    move v9, v4

    goto :goto_8

    :cond_9
    move v9, v6

    :goto_8
    iget-object v10, v7, Lcom/android/wm/shell/pip2/phone/PipMenuActionView;->mCustomCloseBackground:Landroid/view/View;

    invoke-virtual {v10, v9}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1}, Landroid/app/RemoteAction;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/app/RemoteAction;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_a

    new-instance v9, Lcom/android/wm/shell/pip2/phone/PipMenuView$$ExternalSyntheticLambda6;

    invoke-direct {v9, p0, v1, v8}, Lcom/android/wm/shell/pip2/phone/PipMenuView$$ExternalSyntheticLambda6;-><init>(Lcom/android/wm/shell/pip2/phone/PipMenuView;Landroid/app/RemoteAction;Z)V

    invoke-virtual {v7, v9}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    invoke-virtual {v1}, Landroid/app/RemoteAction;->isEnabled()Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    invoke-virtual {v1}, Landroid/app/RemoteAction;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_b

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_9

    :cond_b
    const v1, 0x3f0a3d71    # 0.54f

    :goto_9
    invoke-virtual {v7, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p1, :cond_c

    if-lez p2, :cond_c

    iget v7, p0, Lcom/android/wm/shell/pip2/phone/PipMenuView;->mBetweenActionPaddingLand:I

    goto :goto_a

    :cond_c
    move v7, v4

    :goto_a
    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_4

    :cond_d
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070cce

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070cd9

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_c

    :cond_e
    :goto_b
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :goto_c
    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method
