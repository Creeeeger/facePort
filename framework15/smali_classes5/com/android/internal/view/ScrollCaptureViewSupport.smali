.class public Lcom/android/internal/view/ScrollCaptureViewSupport;
.super Ljava/lang/Object;
.source "ScrollCaptureViewSupport.java"

# interfaces
.implements Landroid/view/ScrollCaptureCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/view/ScrollCaptureCallback;"
    }
.end annotation


# static fields
.field private static final blacklist SETTING_CAPTURE_DELAY:Ljava/lang/String; = "screenshot.scroll_capture_delay"

.field private static final blacklist SETTING_CAPTURE_DELAY_DEFAULT:J = 0x3cL

.field private static final blacklist TAG:Ljava/lang/String; = "SCViewSupport"


# instance fields
.field private blacklist mEnded:Z

.field private final blacklist mPostScrollDelayMillis:J

.field private final blacklist mRenderer:Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;

.field private blacklist mStarted:Z

.field private final blacklist mViewHelper:Lcom/android/internal/view/ScrollCaptureViewHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/view/ScrollCaptureViewHelper<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final blacklist mWeakView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$bkb7LirsaKlYBq4Lp_Hg-fYii_4(Lcom/android/internal/view/ScrollCaptureViewSupport;Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;Landroid/view/View;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/view/ScrollCaptureViewSupport;->lambda$onScrollResult$1(Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;Landroid/view/View;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$o74e8lNvTblt_cOdrUr7jfuaPfY(Lcom/android/internal/view/ScrollCaptureViewSupport;Landroid/view/View;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/view/ScrollCaptureViewSupport;->lambda$onScrollCaptureImageRequest$0(Landroid/view/View;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/view/View;Lcom/android/internal/view/ScrollCaptureViewHelper;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Lcom/android/internal/view/ScrollCaptureViewHelper<",
            "TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mWeakView:Ljava/lang/ref/WeakReference;

    new-instance v0, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;

    invoke-direct {v0}, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mRenderer:Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;

    iput-object p2, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mViewHelper:Lcom/android/internal/view/ScrollCaptureViewHelper;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screenshot.scroll_capture_delay"

    const-wide/16 v3, 0x3c

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mPostScrollDelayMillis:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "screenshot.scroll_capture_delay = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mPostScrollDelayMillis:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SCViewSupport"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static blacklist computeScrollAmount(Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 5

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    const/4 v3, 0x0

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    if-le v4, v2, :cond_1

    iget v4, p1, Landroid/graphics/Rect;->top:I

    if-le v4, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-le v4, v0, :cond_0

    iget v4, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v1

    add-int/2addr v3, v4

    goto :goto_0

    :cond_0
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v2

    add-int/2addr v3, v4

    goto :goto_0

    :cond_1
    iget v4, p1, Landroid/graphics/Rect;->top:I

    if-ge v4, v1, :cond_3

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v4, v2, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-le v4, v0, :cond_2

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v2, v4

    sub-int/2addr v3, v4

    goto :goto_0

    :cond_2
    iget v4, p1, Landroid/graphics/Rect;->top:I

    sub-int v4, v1, v4

    sub-int/2addr v3, v4

    :cond_3
    :goto_0
    return v3
.end method

.method private blacklist doCapture(Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;Landroid/view/View;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;",
            "TV;",
            "Landroid/graphics/Rect;",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mRenderer:Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->renderView(Landroid/view/View;Landroid/graphics/Rect;)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "syncAndDraw(): SyncAndDrawResult = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SCViewSupport"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-interface {p4, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p1, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->availableArea:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {p4, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public static blacklist findScrollingReferenceView(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 7

    const/4 v0, 0x0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-nez v0, :cond_0

    move-object v0, v4

    goto :goto_1

    :cond_0
    if-gez p1, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v6

    if-ge v5, v6, :cond_2

    move-object v0, v4

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v6

    if-le v5, v6, :cond_2

    move-object v0, v4

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private static blacklist getColorMode(Landroid/view/View;)I
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getColorMode()I

    move-result v1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->isScreenWideColorGamut()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    return v1
.end method

.method private synthetic blacklist lambda$onScrollCaptureImageRequest$0(Landroid/view/View;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;)V
    .locals 0

    invoke-direct {p0, p4, p1, p2, p3}, Lcom/android/internal/view/ScrollCaptureViewSupport;->onScrollResult(Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;Landroid/view/View;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic blacklist lambda$onScrollResult$1(Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;Landroid/view/View;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/view/ScrollCaptureViewSupport;->doCapture(Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;Landroid/view/View;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private blacklist onScrollResult(Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;Landroid/view/View;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;",
            "TV;",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p3}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SCViewSupport"

    const-string/jumbo v1, "onScrollCaptureImageRequest: cancelled! skipping render."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p1, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->availableArea:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->availableArea:Landroid/graphics/Rect;

    invoke-interface {p4, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->availableArea:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget v1, p1, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->scrollDelta:I

    neg-int v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    new-instance v1, Lcom/android/internal/view/ScrollCaptureViewSupport$$ExternalSyntheticLambda0;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, v0

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/view/ScrollCaptureViewSupport$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/view/ScrollCaptureViewSupport;Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;Landroid/view/View;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V

    iget-wide v2, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mPostScrollDelayMillis:J

    invoke-virtual {p2, v1, v2, v3}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static blacklist transformFromContainerToRequest(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget v1, p1, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Landroid/graphics/Rect;->offset(II)V

    return-object v0
.end method

.method public static blacklist transformFromRequestToContainer(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 v1, 0x0

    neg-int v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    return-object v0
.end method


# virtual methods
.method public final whitelist onScrollCaptureEnd(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mWeakView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mStarted:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mEnded:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mViewHelper:Lcom/android/internal/view/ScrollCaptureViewHelper;

    invoke-interface {v1, v0}, Lcom/android/internal/view/ScrollCaptureViewHelper;->onPrepareForEnd(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mEnded:Z

    iget-object v1, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mRenderer:Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;

    invoke-virtual {v1}, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->destroy()V

    :cond_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final whitelist onScrollCaptureImageRequest(Landroid/view/ScrollCaptureSession;Landroid/os/CancellationSignal;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ScrollCaptureSession;",
            "Landroid/os/CancellationSignal;",
            "Landroid/graphics/Rect;",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SCViewSupport"

    const-string/jumbo v1, "onScrollCaptureImageRequest: cancelled!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mWeakView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->isVisibleToUser()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mViewHelper:Lcom/android/internal/view/ScrollCaptureViewHelper;

    invoke-virtual {p1}, Landroid/view/ScrollCaptureSession;->getScrollBounds()Landroid/graphics/Rect;

    move-result-object v3

    new-instance v6, Lcom/android/internal/view/ScrollCaptureViewSupport$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0, v0, p2, p4}, Lcom/android/internal/view/ScrollCaptureViewSupport$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/view/ScrollCaptureViewSupport;Landroid/view/View;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V

    move-object v2, v0

    move-object v4, p3

    move-object v5, p2

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/view/ScrollCaptureViewHelper;->onScrollRequested(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V

    return-void

    :cond_2
    :goto_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-interface {p4, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final whitelist onScrollCaptureSearch(Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mWeakView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mStarted:Z

    iput-boolean v1, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mEnded:Z

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isVisibleToUser()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mViewHelper:Lcom/android/internal/view/ScrollCaptureViewHelper;

    invoke-interface {v1, v0}, Lcom/android/internal/view/ScrollCaptureViewHelper;->onAcceptSession(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mViewHelper:Lcom/android/internal/view/ScrollCaptureViewHelper;

    invoke-interface {v1, v0}, Lcom/android/internal/view/ScrollCaptureViewHelper;->onComputeScrollBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :cond_1
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final whitelist onScrollCaptureStart(Landroid/view/ScrollCaptureSession;Landroid/os/CancellationSignal;Ljava/lang/Runnable;)V
    .locals 3

    invoke-virtual {p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mWeakView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mEnded:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mStarted:Z

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isVisibleToUser()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mRenderer:Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;

    invoke-virtual {p1}, Landroid/view/ScrollCaptureSession;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->setSurface(Landroid/view/Surface;)V

    iget-object v1, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mViewHelper:Lcom/android/internal/view/ScrollCaptureViewHelper;

    invoke-virtual {p1}, Landroid/view/ScrollCaptureSession;->getScrollBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/view/ScrollCaptureViewHelper;->onPrepareForStart(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_1
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScrollCaptureViewSupport{view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mWeakView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", helper="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/view/ScrollCaptureViewSupport;->mViewHelper:Lcom/android/internal/view/ScrollCaptureViewHelper;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
