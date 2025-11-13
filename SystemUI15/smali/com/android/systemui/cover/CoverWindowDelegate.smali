.class public final Lcom/android/systemui/cover/CoverWindowDelegate;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mBackgroundDecorView:Landroid/widget/FrameLayout;

.field public final mContext:Landroid/content/Context;

.field public mCoverDisplay:Landroid/view/Display;

.field public mDecorView:Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;

.field public mIsShowing:Z

.field public mWindowManager:Landroid/view/WindowManager;

.field public mWindowRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mWindowManager:Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static isHideInternal(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isMinimizeInternal : alpha: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "  , w:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , h:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    const-string v3, "CoverWindowDelegate"

    invoke-static {v2, v3, v1}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    const/4 v1, 0x0

    cmpl-float p0, p0, v1

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public final attach()Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mIsShowing:Z

    if-eqz v0, :cond_0

    const-string v0, "CoverWindowDelegate"

    const-string v1, "attach : it is showing"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mDecorView:Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mIsShowing:Z

    iget-object v0, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mDecorView:Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_1
    new-instance v0, Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;

    iget-object v1, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;-><init>(Lcom/android/systemui/cover/CoverWindowDelegate;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mDecorView:Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;

    iget-object v1, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {p0}, Lcom/android/systemui/cover/CoverWindowDelegate;->createLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-boolean v0, Lcom/android/systemui/LsRune;->COVER_VIRTUAL_DISPLAY:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mWindowRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mBackgroundDecorView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mBackgroundDecorView:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_2
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mBackgroundDecorView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {p0}, Lcom/android/systemui/cover/CoverWindowDelegate;->createBackgroundLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mDecorView:Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;

    return-object p0
.end method

.method public createBackgroundLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 2

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iget-object p0, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mWindowRect:Landroid/graphics/Rect;

    if-eqz p0, :cond_0

    const/16 p0, 0xa47

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const-string p0, "VIRTUAL-COVER-BACKGROUND"

    invoke-virtual {v0, p0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/4 p0, -0x1

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    :cond_0
    const/16 p0, 0x708

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 p0, 0x10

    invoke-virtual {v0, p0}, Landroid/view/WindowManager$LayoutParams;->semAddPrivateFlags(I)V

    const/4 p0, 0x5

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    const/4 p0, 0x2

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    const/4 p0, 0x1

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result p0

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    not-int v1, v1

    and-int/2addr p0, v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v1

    not-int v1, v1

    and-int/2addr p0, v1

    invoke-virtual {v0, p0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    return-object v0
.end method

.method public createLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 3

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mWindowRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    const/16 v1, 0xa46

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const-string v1, "VIRTUAL-COVER"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mWindowRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object p0, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 p0, 0x0

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    const/16 p0, 0x33

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0

    :cond_0
    const/16 p0, 0x833

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const-string p0, "COVER"

    invoke-virtual {v0, p0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/4 p0, -0x1

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const-wide/16 v1, 0x1770

    invoke-virtual {v0, v1, v2}, Landroid/view/WindowManager$LayoutParams;->semSetScreenTimeout(J)V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/WindowManager$LayoutParams;->semSetScreenDimDuration(J)V

    :goto_0
    const p0, 0x20700

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 p0, 0x10

    invoke-virtual {v0, p0}, Landroid/view/WindowManager$LayoutParams;->semAddPrivateFlags(I)V

    const/4 p0, 0x5

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    const/4 p0, 0x2

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    const/4 p0, 0x1

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result p0

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    not-int v1, v1

    and-int/2addr p0, v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v1

    not-int v1, v1

    and-int/2addr p0, v1

    invoke-virtual {v0, p0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    return-object v0
.end method

.method public final detach()V
    .locals 5

    const-string v0, "removeViewImmediate\n"

    iget-boolean v1, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mIsShowing:Z

    const-string v2, "CoverWindowDelegate"

    if-nez v1, :cond_0

    const-string p0, "detach : it is NOT showing"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mDecorView:Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;

    if-nez v1, :cond_1

    const-string p0, "detach : decorView is null"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mIsShowing:Z

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v3, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mDecorView:Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;

    sget-boolean v3, Lcom/android/systemui/LsRune;->COVER_VIRTUAL_DISPLAY:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mBackgroundDecorView:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_2

    :try_start_1
    iget-object v4, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v4, v3}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mBackgroundDecorView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iput-object v1, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mBackgroundDecorView:Landroid/widget/FrameLayout;

    :cond_2
    return-void
.end method

.method public final hide()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mDecorView:Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/systemui/cover/CoverWindowDelegate;->isHideInternal(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    const v2, -0x20001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const v2, -0x40001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    iget-object v1, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mWindowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mDecorView:Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public final show()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mDecorView:Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mWindowRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    invoke-static {v0}, Lcom/android/systemui/cover/CoverWindowDelegate;->isHideInternal(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x9

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v2, 0x40000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    iget-object v1, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mWindowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/android/systemui/cover/CoverWindowDelegate;->mDecorView:Lcom/android/systemui/cover/CoverWindowDelegate$ViewCoverDecorView;

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
