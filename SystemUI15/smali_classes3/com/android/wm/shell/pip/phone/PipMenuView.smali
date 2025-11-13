.class public final Lcom/android/wm/shell/pip/phone/PipMenuView;
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

.field public final mController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

.field public mDidLastShowMenuResize:Z

.field public final mDismissButton:Landroid/view/View;

.field public final mDismissFadeOutDurationMs:I

.field public final mEnterSplitButton:Landroid/view/View;

.field public final mEnterSplitIconLR:Landroid/graphics/drawable/Drawable;

.field public final mEnterSplitIconTB:Landroid/graphics/drawable/Drawable;

.field public final mExpandButton:Landroid/view/View;

.field public final mHideMenuRunnable:Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda0;

.field public mIsExpanding:Z

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mMainHandler:Landroid/os/Handler;

.field public final mMenuBgUpdateListener:Lcom/android/wm/shell/pip/phone/PipMenuView$1;

.field public final mMenuContainer:Landroid/view/View;

.field public mMenuContainerAnimator:Landroid/animation/AnimatorSet;

.field public mMenuState:I

.field public final mPipActionSize:I

.field public final mPipActionSizeLandWidth:I

.field public final mPipActionSizePortWidth:I

.field public final mPipForceCloseDelay:I

.field public final mPipMenuIconsAlgorithm:Lcom/android/wm/shell/pip/phone/PipMenuIconsAlgorithm;

.field public final mPipMenuPadding:I

.field public final mPipMenuPaddingTop:I

.field public final mPipUiEventLogger:Lcom/android/wm/shell/common/pip/PipUiEventLogger;

.field public final mSettingsButton:Landroid/view/View;

.field public final mSplitScreenControllerOptional:Ljava/util/Optional;

.field public final mTopEndContainer:Landroid/view/View;

.field public final mViewRoot:Landroid/view/View;


# direct methods
.method public static $r8$lambda$kh7O-2Rmd0Daiu_MbPcAw5t76mc(Lcom/android/wm/shell/pip/phone/PipMenuView;Landroid/view/View;)V
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_0

    const-string p1, "PipMenuView"

    const-string/jumbo v0, "showSettings"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mPipUiEventLogger:Lcom/android/wm/shell/common/pip/PipUiEventLogger;

    sget-object p1, Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_SHOW_SETTINGS:Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/pip/PipUiEventLogger;->log(Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;)V

    :cond_0
    return-void
.end method

.method public static -$$Nest$mnotifyMenuStateChangeFinish(Lcom/android/wm/shell/pip/phone/PipMenuView;I)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "notifyMenuStateChangeFinish: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuState:I

    const-string v2, "->"

    const-string v3, ", Callers="

    invoke-static {v0, v1, v2, p1, v3}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const/4 v1, 0x5

    const-string v2, "PipMenuView"

    invoke-static {v1, v2, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iput p1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuState:I

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    iget v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mMenuState:I

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mListeners:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/wm/shell/pip/phone/PhonePipMenuController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    iput p1, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mMenuState:I

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/common/SystemWindows;->setShellRootAccessibilityWindow(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/common/SystemWindows;->setShellRootAccessibilityWindow(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/pip/phone/PhonePipMenuController;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;Lcom/android/wm/shell/common/pip/PipUiEventLogger;Ljava/util/Optional;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/wm/shell/pip/phone/PhonePipMenuController;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            "Landroid/os/Handler;",
            "Lcom/android/wm/shell/common/pip/PipUiEventLogger;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreenController;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mAllowMenuTimeout:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mAllowTouches:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mActions:Ljava/util/List;

    new-instance v0, Lcom/android/wm/shell/pip/phone/PipMenuView$1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/pip/phone/PipMenuView$1;-><init>(Lcom/android/wm/shell/pip/phone/PipMenuView;)V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuBgUpdateListener:Lcom/android/wm/shell/pip/phone/PipMenuView$1;

    new-instance v0, Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/pip/phone/PipMenuView;I)V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mHideMenuRunnable:Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda0;

    iput-boolean v1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mIsExpanding:Z

    iput-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    iput-object p3, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iput-object p4, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMainHandler:Landroid/os/Handler;

    iput-object p6, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mSplitScreenControllerOptional:Ljava/util/Optional;

    iput-object p5, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mPipUiEventLogger:Lcom/android/wm/shell/common/pip/PipUiEventLogger;

    const-class p2, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/accessibility/AccessibilityManager;

    iput-object p2, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const p2, 0x7f0d03d0

    invoke-static {p1, p2, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0b0031

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mPipForceCloseDelay:I

    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_PIP_DISABLE_ROUNDED_CORNER:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const p3, 0x7f080dc0

    invoke-virtual {p2, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const p3, 0x7f080dbf

    invoke-virtual {p2, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    const p2, 0x7f0a013f

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mViewRoot:Landroid/view/View;

    iget-object p3, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const p3, 0x7f0a06fd

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuContainer:Landroid/view/View;

    const/4 p4, 0x0

    invoke-virtual {p3, p4}, Landroid/view/View;->setAlpha(F)V

    const p3, 0x7f0a0d5c

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mTopEndContainer:Landroid/view/View;

    const p5, 0x7f0a0b33

    invoke-virtual {p0, p5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p5

    iput-object p5, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mSettingsButton:Landroid/view/View;

    invoke-virtual {p5, p4}, Landroid/view/View;->setAlpha(F)V

    new-instance p6, Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda1;

    const/4 v0, 0x0

    invoke-direct {p6, p0, v0}, Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/pip/phone/PipMenuView;I)V

    invoke-virtual {p5, p6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p6, 0x7f0a0390

    invoke-virtual {p0, p6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p6

    iput-object p6, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mDismissButton:Landroid/view/View;

    invoke-virtual {p6, p4}, Landroid/view/View;->setAlpha(F)V

    new-instance v0, Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/pip/phone/PipMenuView;I)V

    invoke-virtual {p6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a042a

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mExpandButton:Landroid/view/View;

    invoke-virtual {v0, p4}, Landroid/view/View;->setAlpha(F)V

    new-instance v2, Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda1;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/pip/phone/PipMenuView;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0419

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mEnterSplitButton:Landroid/view/View;

    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const v3, 0x7f080d1d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mEnterSplitIconLR:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const v3, 0x7f080d1e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mEnterSplitIconTB:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipMenuView;->updateEnterSplitButtonIcon()V

    invoke-virtual {v0, p4}, Landroid/view/View;->setAlpha(F)V

    new-instance v2, Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda1;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3}, Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/pip/phone/PipMenuView;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070ccf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mPipActionSize:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070cd1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mPipActionSizePortWidth:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070cd0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mPipActionSizeLandWidth:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070cec

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mPipMenuPadding:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070cee

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mPipMenuPaddingTop:I

    const v1, 0x7f0a09c7

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p4}, Landroid/view/View;->setAlpha(F)V

    const p4, 0x7f0a00a5

    invoke-virtual {p0, p4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/LinearLayout;

    iput-object p4, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mActionsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const v2, 0x7f070cd2

    invoke-virtual {p4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    iput p4, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mBetweenActionPaddingLand:I

    new-instance p4, Lcom/android/wm/shell/pip/phone/PipMenuIconsAlgorithm;

    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-direct {p4, v2}, Lcom/android/wm/shell/pip/phone/PipMenuIconsAlgorithm;-><init>(Landroid/content/Context;)V

    iput-object p4, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mPipMenuIconsAlgorithm:Lcom/android/wm/shell/pip/phone/PipMenuIconsAlgorithm;

    check-cast p2, Landroid/view/ViewGroup;

    check-cast p3, Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object p2, p4, Lcom/android/wm/shell/pip/phone/PipMenuIconsAlgorithm;->mViewRoot:Landroid/view/ViewGroup;

    iput-object p3, p4, Lcom/android/wm/shell/pip/phone/PipMenuIconsAlgorithm;->mTopEndContainer:Landroid/view/ViewGroup;

    iput-object v1, p4, Lcom/android/wm/shell/pip/phone/PipMenuIconsAlgorithm;->mDragHandle:Landroid/view/View;

    iput-object v0, p4, Lcom/android/wm/shell/pip/phone/PipMenuIconsAlgorithm;->mEnterSplitButton:Landroid/view/View;

    iput-object p5, p4, Lcom/android/wm/shell/pip/phone/PipMenuIconsAlgorithm;->mSettingsButton:Landroid/view/View;

    iput-object p6, p4, Lcom/android/wm/shell/pip/phone/PipMenuIconsAlgorithm;->mDismissButton:Landroid/view/View;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b0030

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mDismissFadeOutDurationMs:I

    new-instance p1, Lcom/android/wm/shell/pip/phone/PipMenuView$2;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/pip/phone/PipMenuView$2;-><init>(Lcom/android/wm/shell/pip/phone/PipMenuView;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method


# virtual methods
.method public final dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mAllowMenuTimeout:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x7d0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/pip/phone/PipMenuView;->repostDelayedHide(I)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dispatchTouchEvent action="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mAllowTouches="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mAllowTouches:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PipMenuView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mAllowTouches:Z

    if-nez v0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    iget-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mAllowMenuTimeout:Z

    if-eqz v0, :cond_3

    const/16 v0, 0x7d0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/pip/phone/PipMenuView;->repostDelayedHide(I)V

    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final hideMenu(Ljava/lang/Runnable;ZZI)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    iget v7, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuState:I

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v8, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mHideMenuRunnable:Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda0;

    check-cast v7, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v7, v8}, Lcom/android/wm/shell/common/HandlerExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz v1, :cond_0

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v2, v7}, Lcom/android/wm/shell/pip/phone/PipMenuView;->notifyMenuStateChangeStart(IZLcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda0;)V

    :cond_0
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v7, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    iget-object v7, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuContainer:Landroid/view/View;

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {v7}, Landroid/view/View;->getAlpha()F

    move-result v9

    const/4 v10, 0x0

    new-array v11, v5, [F

    aput v9, v11, v6

    aput v10, v11, v4

    invoke-static {v7, v8, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    iget-object v9, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuBgUpdateListener:Lcom/android/wm/shell/pip/phone/PipMenuView$1;

    invoke-virtual {v7, v9}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v9, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mSettingsButton:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getAlpha()F

    move-result v11

    new-array v12, v5, [F

    aput v11, v12, v6

    aput v10, v12, v4

    invoke-static {v9, v8, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    iget-object v11, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mDismissButton:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getAlpha()F

    move-result v12

    new-array v13, v5, [F

    aput v12, v13, v6

    aput v10, v13, v4

    invoke-static {v11, v8, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "hideMenu() MenuState="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v13, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuState:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " notifyMenuVisibility="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, " resize="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " callers="

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "PipMenuView"

    invoke-static {v13, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v12, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mExpandButton:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getAlpha()F

    move-result v13

    new-array v14, v5, [F

    aput v13, v14, v6

    aput v10, v14, v4

    invoke-static {v12, v8, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    iget-object v13, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mEnterSplitButton:Landroid/view/View;

    const/4 v15, 0x3

    if-eqz v13, :cond_1

    invoke-virtual {v13}, Landroid/view/View;->getAlpha()F

    move-result v16

    new-array v14, v5, [F

    aput v16, v14, v6

    aput v10, v14, v4

    invoke-static {v13, v8, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    iget-object v10, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v7, v2, v6

    aput-object v9, v2, v4

    aput-object v12, v2, v5

    aput-object v11, v2, v15

    const/4 v13, 0x4

    aput-object v8, v2, v13

    invoke-virtual {v10, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_0

    :cond_1
    const/4 v13, 0x4

    iget-object v2, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    new-array v8, v13, [Landroid/animation/Animator;

    aput-object v7, v8, v6

    aput-object v9, v8, v4

    aput-object v12, v8, v5

    aput-object v11, v8, v15

    invoke-virtual {v2, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_0
    iget-object v2, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    sget-object v6, Lcom/android/wm/shell/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_4

    if-eq v3, v4, :cond_3

    if-ne v3, v5, :cond_2

    iget v3, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mDismissFadeOutDurationMs:I

    int-to-long v3, v3

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid animation type "

    invoke-static {v3, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-wide/16 v3, 0x7d

    goto :goto_1

    :cond_4
    const-wide/16 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v2, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/android/wm/shell/pip/phone/PipMenuView$4;

    move-object/from16 v4, p1

    invoke-direct {v3, v0, v1, v4}, Lcom/android/wm/shell/pip/phone/PipMenuView$4;-><init>(Lcom/android/wm/shell/pip/phone/PipMenuView;ZLjava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_5
    return-void
.end method

.method public final hideMenu$1()V
    .locals 3

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mDidLastShowMenuResize:Z

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1, v0}, Lcom/android/wm/shell/pip/phone/PipMenuView;->hideMenu(Ljava/lang/Runnable;ZZI)V

    return-void
.end method

.method public final notifyMenuStateChangeStart(IZLcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda0;)V
    .locals 16

    move/from16 v1, p1

    move/from16 v0, p2

    move-object/from16 v2, p0

    iget-object v2, v2, Lcom/android/wm/shell/pip/phone/PipMenuView;->mController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onMenuStateChangeStart() mMenuState="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v2, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mMenuState:I

    const-string v5, " menuState="

    const-string v6, " resize="

    invoke-static {v3, v4, v5, v1, v6}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " callers=\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x5

    const-string v5, "    "

    invoke-static {v4, v5}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "PhonePipMenuController"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    const/4 v7, 0x0

    aget-boolean v3, v3, v7

    if-eqz v3, :cond_0

    iget v3, v2, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mMenuState:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v5}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v10, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {v6, v3, v8, v9, v4}, [Ljava/lang/Object;

    move-result-object v15

    const/4 v13, 0x0

    const-string v14, "%s: onMenuStateChangeStart() mMenuState=%s menuState=%s resize=%s callers=\n%s"

    const-wide v11, -0x4d11c84124bec062L

    invoke-static/range {v10 .. v15}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget v3, v2, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mMenuState:I

    if-eq v1, v3, :cond_6

    iget-object v3, v2, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mListeners:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/wm/shell/pip/phone/PhonePipMenuController$$ExternalSyntheticLambda0;

    move-object/from16 v5, p3

    invoke-direct {v4, v1, v0, v5}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController$$ExternalSyntheticLambda0;-><init>(IZLcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda0;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    iget-object v0, v2, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mMediaActionListener:Lcom/android/wm/shell/pip/phone/PhonePipMenuController$1;

    iget-object v3, v2, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mMediaController:Lcom/android/wm/shell/common/pip/PipMediaController;

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    iget-object v5, v3, Lcom/android/wm/shell/common/pip/PipMediaController;->mActionListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, v3, Lcom/android/wm/shell/common/pip/PipMediaController;->mActionListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/android/wm/shell/common/pip/PipMediaController;->getMediaActions()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController$1;->onMediaActionsChanged(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    invoke-virtual {v0, v5}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController$1;->onMediaActionsChanged(Ljava/util/List;)V

    iget-object v3, v3, Lcom/android/wm/shell/common/pip/PipMediaController;->mActionListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    iget-object v3, v2, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    iget-object v5, v2, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    invoke-virtual {v3, v5}, Lcom/android/wm/shell/common/SystemWindows;->getFocusGrantToken(Landroid/view/View;)Landroid/window/InputTransferToken;

    move-result-object v3

    if-eqz v1, :cond_3

    move v5, v4

    goto :goto_1

    :cond_3
    move v5, v7

    :goto_1
    const/4 v8, 0x0

    invoke-interface {v0, v8, v3, v5}, Landroid/view/IWindowSession;->grantEmbeddedWindowFocus(Landroid/view/IWindow;Landroid/window/InputTransferToken;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v3, "Unable to update focus as menu appears/disappears"

    invoke-static {v6, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    const/4 v5, 0x4

    aget-boolean v3, v3, v5

    if-eqz v3, :cond_4

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v8, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {v6, v0}, [Ljava/lang/Object;

    move-result-object v13

    const/4 v11, 0x0

    const-string v12, "%s: Unable to update focus as menu appears/disappears, %s"

    const-wide v9, 0xd594bc47b9d3343L

    invoke-static/range {v8 .. v13}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_2
    if-eqz v1, :cond_5

    move v7, v4

    :cond_5
    iput-boolean v7, v2, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mIsPipMenuFocused:Z

    :cond_6
    return-void
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x6f

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipMenuView;->hideMenu$1()V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final repostDelayedHide(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const/4 v1, 0x5

    invoke-virtual {v0, p1, v1}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    move-result p1

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mHideMenuRunnable:Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda0;

    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mHideMenuRunnable:Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda0;

    int-to-long v1, p1

    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/wm/shell/common/HandlerExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public final setActions(Landroid/graphics/Rect;Ljava/util/List;Landroid/app/RemoteAction;)V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mActions:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mActions:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iput-object p3, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mCloseAction:Landroid/app/RemoteAction;

    iget p2, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuState:I

    const/4 p3, 0x1

    if-ne p2, p3, :cond_1

    invoke-virtual {p0, p2, p1}, Lcom/android/wm/shell/pip/phone/PipMenuView;->updateActionViews(ILandroid/graphics/Rect;)V

    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mActions:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "setActions, mActions="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mActions:Ljava/util/List;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " caller="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x7

    invoke-static {p0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PipMenuView"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public final shouldDelayChildPressedState()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final showMenu(Landroid/graphics/Rect;ZZZ)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p4

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mAllowMenuTimeout:Z

    iput-boolean v1, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mDidLastShowMenuResize:Z

    iget v6, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuState:I

    if-eq v6, v5, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_0

    iget-object v6, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mSettingsButton:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v8, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mPipActionSize:I

    iput v8, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v6, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mSettingsButton:Landroid/view/View;

    iget-object v8, v0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const v9, 0x7f080d19

    invoke-virtual {v8, v9}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mSettingsButton:Landroid/view/View;

    iget v8, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mPipMenuPadding:I

    iget v9, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mPipMenuPaddingTop:I

    div-int/lit8 v10, v8, 0x2

    invoke-virtual {v6, v8, v9, v10, v9}, Landroid/view/View;->setPadding(IIII)V

    iget-object v6, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mExpandButton:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v8, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mPipActionSizePortWidth:I

    iput v8, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v6, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mExpandButton:Landroid/view/View;

    iget-object v8, v0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const v9, 0x7f080d17

    invoke-virtual {v8, v9}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mExpandButton:Landroid/view/View;

    iget v8, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mPipMenuPadding:I

    div-int/2addr v8, v4

    iget v9, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mPipMenuPaddingTop:I

    invoke-virtual {v6, v8, v9, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_0
    iget-object v6, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mSettingsButton:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v8, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mPipActionSizeLandWidth:I

    iput v8, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v6, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mSettingsButton:Landroid/view/View;

    iget-object v8, v0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const v9, 0x7f080d11

    invoke-virtual {v8, v9}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mSettingsButton:Landroid/view/View;

    iget v8, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mPipMenuPadding:I

    iget v9, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mPipMenuPaddingTop:I

    invoke-virtual {v6, v8, v9, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    iget-object v6, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mExpandButton:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v8, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mPipActionSize:I

    iput v8, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v6, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mExpandButton:Landroid/view/View;

    iget-object v8, v0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const v9, 0x7f080d16

    invoke-virtual {v8, v9}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mExpandButton:Landroid/view/View;

    iget v8, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mPipMenuPadding:I

    iget v9, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mPipMenuPaddingTop:I

    div-int/lit8 v10, v8, 0x2

    invoke-virtual {v6, v8, v9, v10, v9}, Landroid/view/View;->setPadding(IIII)V

    :goto_0
    iget-object v6, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mTopEndContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->requestLayout()V

    iget-object v6, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mEnterSplitButton:Landroid/view/View;

    if-eqz v6, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/pip/phone/PipMenuView;->updateEnterSplitButtonIcon()V

    iget-object v6, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mEnterSplitButton:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    xor-int/lit8 v6, v1, 0x1

    iput-boolean v6, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mAllowTouches:Z

    iget-object v6, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v8, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mHideMenuRunnable:Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda0;

    check-cast v6, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v6, v8}, Lcom/android/wm/shell/common/HandlerExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v6, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_2
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    iget-object v6, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuContainer:Landroid/view/View;

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {v6}, Landroid/view/View;->getAlpha()F

    move-result v9

    new-array v10, v4, [F

    aput v9, v10, v3

    aput v7, v10, v5

    invoke-static {v6, v8, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iget-object v9, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuBgUpdateListener:Lcom/android/wm/shell/pip/phone/PipMenuView$1;

    invoke-virtual {v6, v9}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v9, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mSettingsButton:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getAlpha()F

    move-result v10

    new-array v11, v4, [F

    aput v10, v11, v3

    aput v7, v11, v5

    invoke-static {v9, v8, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    iget-object v10, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mDismissButton:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getAlpha()F

    move-result v11

    new-array v12, v4, [F

    aput v11, v12, v3

    aput v7, v12, v5

    invoke-static {v10, v8, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    iget-object v11, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mExpandButton:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getAlpha()F

    move-result v12

    new-array v13, v4, [F

    aput v12, v13, v3

    aput v7, v13, v5

    invoke-static {v11, v8, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    iget-object v12, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mEnterSplitButton:Landroid/view/View;

    const/4 v13, 0x3

    const/4 v14, 0x4

    if-eqz v12, :cond_4

    invoke-virtual {v12}, Landroid/view/View;->getAlpha()F

    move-result v15

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    :goto_1
    new-array v2, v4, [F

    aput v15, v2, v3

    aput v7, v2, v5

    invoke-static {v12, v8, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v7, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    const/4 v8, 0x5

    new-array v8, v8, [Landroid/animation/Animator;

    aput-object v6, v8, v3

    aput-object v9, v8, v5

    aput-object v11, v8, v4

    aput-object v10, v8, v13

    aput-object v2, v8, v14

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_2

    :cond_4
    iget-object v2, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    new-array v7, v14, [Landroid/animation/Animator;

    aput-object v6, v7, v3

    aput-object v9, v7, v5

    aput-object v11, v7, v4

    aput-object v10, v7, v13

    invoke-virtual {v2, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_2
    iget-object v2, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    sget-object v6, Lcom/android/wm/shell/animation/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0x7d

    invoke-virtual {v2, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v2, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    new-instance v6, Lcom/android/wm/shell/pip/phone/PipMenuView$3;

    invoke-direct {v6, v0, v5, v5}, Lcom/android/wm/shell/pip/phone/PipMenuView$3;-><init>(Lcom/android/wm/shell/pip/phone/PipMenuView;IZ)V

    invoke-virtual {v2, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz p3, :cond_5

    new-instance v2, Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, v4}, Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/pip/phone/PipMenuView;I)V

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/wm/shell/pip/phone/PipMenuView;->notifyMenuStateChangeStart(IZLcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda0;)V

    :goto_3
    move-object/from16 v1, p1

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/wm/shell/pip/phone/PipMenuView;->notifyMenuStateChangeStart(IZLcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda0;)V

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v1, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_3

    :goto_4
    invoke-virtual {v0, v5, v1}, Lcom/android/wm/shell/pip/phone/PipMenuView;->updateActionViews(ILandroid/graphics/Rect;)V

    goto :goto_5

    :cond_6
    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/pip/phone/PipMenuView;->repostDelayedHide(I)V

    :goto_5
    return-void
.end method

.method public final updateActionViews(ILandroid/graphics/Rect;)V
    .locals 12

    const v0, 0x7f0a042d

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0a00a3

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    new-instance v2, Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda5;

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

    iget-object v6, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mActions:Ljava/util/List;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_d

    if-nez p1, :cond_1

    goto/16 :goto_b

    :cond_1
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mActionsGroup:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_e

    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    :goto_1
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mActionsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    iget-object v5, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mActions:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    const v1, 0x7f0d02ba

    iget-object v5, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mActionsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/pip/phone/PipMenuActionView;

    iget-object v5, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mActionsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_2
    move p1, v4

    :goto_2
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mActionsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/16 v5, 0x8

    if-ge p1, v1, :cond_4

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mActionsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v6, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mActions:Ljava/util/List;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge p1, v6, :cond_3

    move v5, v4

    :cond_3
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

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
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mActions:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_e

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mActions:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/RemoteAction;

    iget-object v6, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mActionsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v6, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/wm/shell/pip/phone/PipMenuActionView;

    iget-object v7, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mCloseAction:Landroid/app/RemoteAction;

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v1}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    move v7, v2

    goto :goto_5

    :cond_6
    move v7, v4

    :goto_5
    invoke-virtual {v1}, Landroid/app/RemoteAction;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v8

    if-eq v8, v3, :cond_8

    const/4 v9, 0x6

    if-ne v8, v9, :cond_7

    goto :goto_6

    :cond_7
    invoke-virtual {v1}, Landroid/app/RemoteAction;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v8

    iget-object v9, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    new-instance v10, Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda6;

    invoke-direct {v10, v6}, Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda6;-><init>(Lcom/android/wm/shell/pip/phone/PipMenuActionView;)V

    iget-object v11, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v8, v9, v10, v11}, Landroid/graphics/drawable/Icon;->loadDrawableAsync(Landroid/content/Context;Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;Landroid/os/Handler;)V

    goto :goto_7

    :cond_8
    :goto_6
    iget-object v8, v6, Lcom/android/wm/shell/pip/phone/PipMenuActionView;->mImageView:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_7
    if-eqz v7, :cond_9

    move v8, v4

    goto :goto_8

    :cond_9
    move v8, v5

    :goto_8
    iget-object v9, v6, Lcom/android/wm/shell/pip/phone/PipMenuActionView;->mCustomCloseBackground:Landroid/view/View;

    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1}, Landroid/app/RemoteAction;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/app/RemoteAction;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_a

    new-instance v8, Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda7;

    invoke-direct {v8, p0, v1, v7}, Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda7;-><init>(Lcom/android/wm/shell/pip/phone/PipMenuView;Landroid/app/RemoteAction;Z)V

    invoke-virtual {v6, v8}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    invoke-virtual {v1}, Landroid/app/RemoteAction;->isEnabled()Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    invoke-virtual {v1}, Landroid/app/RemoteAction;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_b

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_9

    :cond_b
    const v1, 0x3f0a3d71    # 0.54f

    :goto_9
    invoke-virtual {v6, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p1, :cond_c

    if-lez p2, :cond_c

    iget v6, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mBetweenActionPaddingLand:I

    goto :goto_a

    :cond_c
    move v6, v4

    :goto_a
    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_4

    :cond_d
    :goto_b
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :cond_e
    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public final updateEnterSplitButtonIcon()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mSplitScreenControllerOptional:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mEnterSplitButton:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mEnterSplitIconLR:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mEnterSplitIconTB:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mSplitScreenControllerOptional:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->supportMultiSplitAppMinimumSize()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isInSubDisplay(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isSplitScreenVisible()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->isHomeVisible()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getSplitDivision()I

    move-result v0

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_2

    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mEnterSplitButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageButton;

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mEnterSplitIconTB:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mEnterSplitButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageButton;

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mEnterSplitIconLR:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_1
    return-void
.end method
