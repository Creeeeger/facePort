.class public final Lcom/android/wm/shell/common/DismissViewManager;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mDismissType:I

.field public mNeedToRemoveWindow:Z

.field public mTitle:Ljava/lang/String;

.field public mView:Lcom/android/wm/shell/common/DismissView;

.field public mWindowAdded:Z

.field public final mWindowManager:Landroid/view/WindowManager;

.field public final mWindowType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/16 v0, 0xa2e

    invoke-direct {p0, p1, p2, v0}, Lcom/android/wm/shell/common/DismissViewManager;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/wm/shell/common/DismissViewManager;->mNeedToRemoveWindow:Z

    iput-boolean p1, p0, Lcom/android/wm/shell/common/DismissViewManager;->mWindowAdded:Z

    const-string p1, "dismiss-button-overlay"

    iput-object p1, p0, Lcom/android/wm/shell/common/DismissViewManager;->mTitle:Ljava/lang/String;

    iput p2, p0, Lcom/android/wm/shell/common/DismissViewManager;->mDismissType:I

    iput p3, p0, Lcom/android/wm/shell/common/DismissViewManager;->mWindowType:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/android/wm/shell/common/DismissViewManager;->mWindowManager:Landroid/view/WindowManager;

    return-void
.end method


# virtual methods
.method public final cleanUpDismissTarget()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cleanUpDismissTarget  isAttachedToWindow="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "  mWindowAdded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/wm/shell/common/DismissViewManager;->mWindowAdded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DismissViewManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->clearAnimation()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/common/DismissViewManager;->mNeedToRemoveWindow:Z

    iget-object v1, p0, Lcom/android/wm/shell/common/DismissViewManager;->mView:Lcom/android/wm/shell/common/DismissView;

    if-eqz v1, :cond_1

    iget-boolean v2, v1, Lcom/android/wm/shell/common/DismissView;->mVisible:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v0, v1, Lcom/android/wm/shell/common/DismissView;->mVisible:Z

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->clearAnimation()V

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/wm/shell/common/DismissViewManager;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    iput-boolean v0, p0, Lcom/android/wm/shell/common/DismissViewManager;->mWindowAdded:Z

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Lcom/android/wm/shell/common/DismissViewManager;->mWindowAdded:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/common/DismissViewManager;->mNeedToRemoveWindow:Z

    :cond_3
    :goto_1
    return-void
.end method

.method public final createDismissView()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/common/DismissViewManager;->mView:Lcom/android/wm/shell/common/DismissView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/wm/shell/common/DismissViewManager;->cleanUpDismissTarget()V

    iget-object v0, p0, Lcom/android/wm/shell/common/DismissViewManager;->mView:Lcom/android/wm/shell/common/DismissView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/common/DismissViewManager;->mView:Lcom/android/wm/shell/common/DismissView;

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00e6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/common/DismissView;

    iput-object v0, p0, Lcom/android/wm/shell/common/DismissViewManager;->mView:Lcom/android/wm/shell/common/DismissView;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/DismissView;->updateMarginBottom()V

    iget-object v0, p0, Lcom/android/wm/shell/common/DismissViewManager;->mView:Lcom/android/wm/shell/common/DismissView;

    iget v1, p0, Lcom/android/wm/shell/common/DismissViewManager;->mDismissType:I

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/DismissView;->setDismissType(I)V

    iget-object v0, p0, Lcom/android/wm/shell/common/DismissViewManager;->mView:Lcom/android/wm/shell/common/DismissView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final createOrUpdateWrapper()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "createOrUpdateWrapper  isAttachedToWindow="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DismissViewManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/common/DismissViewManager;->mNeedToRemoveWindow:Z

    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/common/DismissViewManager;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/DismissViewManager;->generateWrapperLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/common/DismissViewManager;->mWindowAdded:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lcom/android/wm/shell/common/DismissViewManager;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/DismissViewManager;->generateWrapperLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/common/DismissViewManager;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/DismissViewManager;->generateWrapperLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method public final generateWrapperLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 7

    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/android/wm/shell/common/DismissViewManager;->mWindowType:I

    const v4, 0x1000338

    const/4 v5, -0x2

    const/4 v1, -0x1

    const/4 v2, -0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iget-object v0, p0, Lcom/android/wm/shell/common/DismissViewManager;->mTitle:Ljava/lang/String;

    invoke-virtual {v6, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v0, v0, 0x50

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const/4 v1, 0x1

    iput v1, v6, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget p0, v0, Landroid/graphics/Point;->x:I

    iput p0, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    iget p0, v0, Landroid/graphics/Point;->y:I

    iput p0, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    const p0, 0x800033

    iput p0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    return-object v6
.end method

.method public final onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAttachedToWindow  mNeedToRemoveWindow="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/wm/shell/common/DismissViewManager;->mNeedToRemoveWindow:Z

    const-string v2, "DismissViewManager"

    invoke-static {v0, v1, v2}, Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/wm/shell/common/DismissViewManager;->mNeedToRemoveWindow:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/wm/shell/common/DismissViewManager;->cleanUpDismissTarget()V

    :cond_0
    return-void
.end method

.method public final show()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/wm/shell/common/DismissViewManager;->mView:Lcom/android/wm/shell/common/DismissView;

    iget-boolean v0, p0, Lcom/android/wm/shell/common/DismissView;->mVisible:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/common/DismissView;->mVisible:Z

    const-string v0, "DismissView"

    const-string/jumbo v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/wm/shell/common/DismissView;->mEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void
.end method

.method public final updateDismissTargetView(Landroid/graphics/PointF;)V
    .locals 4

    iget-object p0, p0, Lcom/android/wm/shell/common/DismissViewManager;->mView:Lcom/android/wm/shell/common/DismissView;

    iget v0, p1, Landroid/graphics/PointF;->x:F

    float-to-int v0, v0

    iget p1, p1, Landroid/graphics/PointF;->y:F

    float-to-int p1, p1

    new-instance v1, Landroid/graphics/Rect;

    add-int/lit8 v2, v0, -0x3

    add-int/lit8 v3, p1, -0x3

    add-int/lit8 v0, v0, 0x3

    add-int/lit8 p1, p1, 0x3

    invoke-direct {v1, v2, v3, v0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/common/DismissView;->updateView(Landroid/graphics/Rect;)V

    return-void
.end method
