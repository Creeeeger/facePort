.class public final Landroid/view/ViewTreeObserver;
.super Ljava/lang/Object;
.source "ViewTreeObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewTreeObserver$CopyOnWriteArray;,
        Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;,
        Landroid/view/ViewTreeObserver$OnWindowShownListener;,
        Landroid/view/ViewTreeObserver$OnWindowAttachListener;,
        Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;,
        Landroid/view/ViewTreeObserver$OnWindowVisibilityChangeListener;,
        Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;,
        Landroid/view/ViewTreeObserver$OnPreDrawListener;,
        Landroid/view/ViewTreeObserver$OnDrawListener;,
        Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;,
        Landroid/view/ViewTreeObserver$OnScrollChangedListener;,
        Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;,
        Landroid/view/ViewTreeObserver$InternalInsetsInfo;,
        Landroid/view/ViewTreeObserver$OnEnterAnimationCompleteListener;,
        Landroid/view/ViewTreeObserver$SemOnStylusButtonEventListener;
    }
.end annotation


# static fields
.field private static greylist-max-o sIllegalOnDrawModificationIsFatal:Z


# instance fields
.field private greylist-max-o mAlive:Z

.field private blacklist mGestureExclusionListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/view/ViewTreeObserver$CopyOnWriteArray<",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private greylist-max-o mInDispatchOnDraw:Z

.field private blacklist mLastDispatchOnPreDrawCanceledReason:Ljava/lang/StringBuilder;

.field blacklist mLog:Ljava/lang/String;

.field private greylist mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/view/ViewTreeObserver$CopyOnWriteArray<",
            "Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mOnDrawListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/ViewTreeObserver$OnDrawListener;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mOnEnterAnimationCompleteListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/view/ViewTreeObserver$OnEnterAnimationCompleteListener;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mOnFrameCommitListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-r mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/view/ViewTreeObserver$CopyOnWriteArray<",
            "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/view/ViewTreeObserver$CopyOnWriteArray<",
            "Landroid/view/ViewTreeObserver$OnPreDrawListener;",
            ">;"
        }
    .end annotation
.end field

.field private greylist mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/view/ViewTreeObserver$CopyOnWriteArray<",
            "Landroid/view/ViewTreeObserver$OnScrollChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mOnStylusButtonEventListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/ViewTreeObserver$SemOnStylusButtonEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private greylist mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/view/ViewTreeObserver$OnWindowAttachListener;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mOnWindowShownListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/view/ViewTreeObserver$CopyOnWriteArray<",
            "Landroid/view/ViewTreeObserver$OnWindowShownListener;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mOnWindowVisibilityListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/view/ViewTreeObserver$OnWindowVisibilityChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mWindowShown:Z


# direct methods
.method constructor greylist-max-o <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewTreeObserver;->mAlive:Z

    nop

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/view/ViewTreeObserver;->sIllegalOnDrawModificationIsFatal:Z

    return-void
.end method

.method private greylist-max-o checkIsAlive()V
    .locals 2

    iget-boolean v0, p0, Landroid/view/ViewTreeObserver;->mAlive:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This ViewTreeObserver is not alive, call getViewTreeObserver() again"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o kill()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewTreeObserver;->mAlive:Z

    return-void
.end method


# virtual methods
.method public greylist addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-direct {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;-><init>()V

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public whitelist addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V
    .locals 3

    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnDrawListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnDrawListeners:Ljava/util/ArrayList;

    :cond_0
    iget-boolean v0, p0, Landroid/view/ViewTreeObserver;->mInDispatchOnDraw:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call addOnDrawListener inside of onDraw"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Landroid/view/ViewTreeObserver;->sIllegalOnDrawModificationIsFatal:Z

    if-nez v1, :cond_1

    const-string v1, "ViewTreeObserver"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    throw v0

    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnDrawListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public greylist-max-o addOnEnterAnimationCompleteListener(Landroid/view/ViewTreeObserver$OnEnterAnimationCompleteListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnEnterAnimationCompleteListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnEnterAnimationCompleteListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnEnterAnimationCompleteListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public whitelist addOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public whitelist addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-direct {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;-><init>()V

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public whitelist addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-direct {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;-><init>()V

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public whitelist addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-direct {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;-><init>()V

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public whitelist addOnSystemGestureExclusionRectsChangedListener(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mGestureExclusionListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-direct {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;-><init>()V

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mGestureExclusionListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mGestureExclusionListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public whitelist addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public whitelist addOnWindowAttachListener(Landroid/view/ViewTreeObserver$OnWindowAttachListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public whitelist addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public greylist-max-o addOnWindowShownListener(Landroid/view/ViewTreeObserver$OnWindowShownListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowShownListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-direct {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;-><init>()V

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowShownListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowShownListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->add(Ljava/lang/Object;)V

    iget-boolean v0, p0, Landroid/view/ViewTreeObserver;->mWindowShown:Z

    if-eqz v0, :cond_1

    invoke-interface {p1}, Landroid/view/ViewTreeObserver$OnWindowShownListener;->onWindowShown()V

    :cond_1
    return-void
.end method

.method public whitelist addOnWindowVisibilityChangeListener(Landroid/view/ViewTreeObserver$OnWindowVisibilityChangeListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowVisibilityListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowVisibilityListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowVisibilityListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method blacklist captureFrameCommitCallbacks()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnFrameCommitListeners:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/ViewTreeObserver;->mOnFrameCommitListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method final greylist dispatchOnComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 5

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->start()Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v1, v3}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-interface {v4, p1}, Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;->onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->end()V

    goto :goto_1

    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->end()V

    throw v2

    :cond_1
    :goto_1
    return-void
.end method

.method public final whitelist dispatchOnDraw()V
    .locals 4

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnDrawListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewTreeObserver;->mInDispatchOnDraw:Z

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnDrawListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-interface {v3}, Landroid/view/ViewTreeObserver$OnDrawListener;->onDraw()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/view/ViewTreeObserver;->mInDispatchOnDraw:Z

    :cond_1
    return-void
.end method

.method public final greylist-max-o dispatchOnEnterAnimationComplete()V
    .locals 3

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnEnterAnimationCompleteListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewTreeObserver$OnEnterAnimationCompleteListener;

    invoke-interface {v2}, Landroid/view/ViewTreeObserver$OnEnterAnimationCompleteListener;->onEnterAnimationComplete()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method final greylist dispatchOnGlobalFocusChange(Landroid/view/View;Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    invoke-interface {v2, p1, p2}, Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;->onGlobalFocusChanged(Landroid/view/View;Landroid/view/View;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final whitelist dispatchOnGlobalLayout()V
    .locals 5

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->start()Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v1, v3}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-interface {v4}, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;->onGlobalLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->end()V

    goto :goto_1

    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->end()V

    throw v2

    :cond_1
    :goto_1
    return-void
.end method

.method public final blacklist dispatchOnPenButtonEventListener(Landroid/view/MotionEvent;)V
    .locals 4

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnStylusButtonEventListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnStylusButtonEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnStylusButtonEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewTreeObserver$SemOnStylusButtonEventListener;

    invoke-interface {v3, p1}, Landroid/view/ViewTreeObserver$SemOnStylusButtonEventListener;->onStylusButtonEvent(Landroid/view/MotionEvent;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final whitelist dispatchOnPreDraw()Z
    .locals 10

    const-string v0, ""

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mLog:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mLastDispatchOnPreDrawCanceledReason:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->size()I

    move-result v2

    if-lez v2, :cond_4

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->start()Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;

    move-result-object v2

    :try_start_0
    invoke-virtual {v2}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    invoke-virtual {v2, v4}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-interface {v5}, Landroid/view/ViewTreeObserver$OnPreDrawListener;->onPreDraw()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    or-int/2addr v0, v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Landroid/view/ViewTreeObserver$OnPreDrawListener;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Landroid/view/ViewTreeObserver;->mLastDispatchOnPreDrawCanceledReason:Ljava/lang/StringBuilder;

    if-nez v8, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Landroid/view/ViewTreeObserver;->mLastDispatchOnPreDrawCanceledReason:Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    iget-object v8, p0, Landroid/view/ViewTreeObserver;->mLastDispatchOnPreDrawCanceledReason:Ljava/lang/StringBuilder;

    const-string/jumbo v9, "|"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->IS_DEBUG_LEVEL_MID:Z

    if-nez v8, :cond_1

    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->IS_DEBUG_LEVEL_HIGH:Z

    if-eqz v8, :cond_2

    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Landroid/view/ViewTreeObserver;->mLog:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v5}, Landroid/view/ViewTreeObserver$OnPreDrawListener;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Landroid/view/ViewTreeObserver;->mLog:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->end()V

    goto :goto_2

    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->end()V

    throw v3

    :cond_4
    :goto_2
    return v0
.end method

.method final greylist dispatchOnScrollChanged()V
    .locals 5

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->start()Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v1, v3}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-interface {v4}, Landroid/view/ViewTreeObserver$OnScrollChangedListener;->onScrollChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->end()V

    goto :goto_1

    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->end()V

    throw v2

    :cond_1
    :goto_1
    return-void
.end method

.method blacklist dispatchOnSystemGestureExclusionRectsChanged(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mGestureExclusionListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->start()Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v1, v3}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/function/Consumer;

    invoke-interface {v4, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->end()V

    goto :goto_1

    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->end()V

    throw v2

    :cond_1
    :goto_1
    return-void
.end method

.method final greylist dispatchOnTouchModeChanged(Z)V
    .locals 3

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

    invoke-interface {v2, p1}, Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;->onTouchModeChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method final greylist-max-o dispatchOnWindowAttachedChange(Z)V
    .locals 3

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewTreeObserver$OnWindowAttachListener;

    if-eqz p1, :cond_0

    invoke-interface {v2}, Landroid/view/ViewTreeObserver$OnWindowAttachListener;->onWindowAttached()V

    goto :goto_1

    :cond_0
    invoke-interface {v2}, Landroid/view/ViewTreeObserver$OnWindowAttachListener;->onWindowDetached()V

    :goto_1
    goto :goto_0

    :cond_1
    return-void
.end method

.method final greylist-max-o dispatchOnWindowFocusChange(Z)V
    .locals 3

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    invoke-interface {v2, p1}, Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;->onWindowFocusChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final greylist-max-o dispatchOnWindowShown()V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewTreeObserver;->mWindowShown:Z

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowShownListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->start()Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v1, v3}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewTreeObserver$OnWindowShownListener;

    invoke-interface {v4}, Landroid/view/ViewTreeObserver$OnWindowShownListener;->onWindowShown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->end()V

    goto :goto_1

    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->end()V

    throw v2

    :cond_1
    :goto_1
    return-void
.end method

.method blacklist dispatchOnWindowVisibilityChange(I)V
    .locals 3

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowVisibilityListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewTreeObserver$OnWindowVisibilityChangeListener;

    invoke-interface {v2, p1}, Landroid/view/ViewTreeObserver$OnWindowVisibilityChangeListener;->onWindowVisibilityChanged(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method final blacklist getLastDispatchOnPreDrawCanceledReason()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mLastDispatchOnPreDrawCanceledReason:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mLastDispatchOnPreDrawCanceledReason:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method final greylist hasComputeInternalInsetsListeners()Z
    .locals 2

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method final greylist-max-o hasOnPreDrawListeners()Z
    .locals 1

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isAlive()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/ViewTreeObserver;->mAlive:Z

    return v0
.end method

.method greylist-max-o merge(Landroid/view/ViewTreeObserver;)V
    .locals 2

    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p1, Landroid/view/ViewTreeObserver;->mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    :cond_1
    :goto_0
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p1, Landroid/view/ViewTreeObserver;->mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_2
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    :cond_3
    :goto_1
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnWindowVisibilityListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowVisibilityListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowVisibilityListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p1, Landroid/view/ViewTreeObserver;->mOnWindowVisibilityListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_4
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnWindowVisibilityListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowVisibilityListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    :cond_5
    :goto_2
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p1, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    :cond_6
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    :cond_7
    :goto_3
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    iget-object v1, p1, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->addAll(Landroid/view/ViewTreeObserver$CopyOnWriteArray;)V

    goto :goto_4

    :cond_8
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    :cond_9
    :goto_4
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    iget-object v1, p1, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->addAll(Landroid/view/ViewTreeObserver$CopyOnWriteArray;)V

    goto :goto_5

    :cond_a
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    :cond_b
    :goto_5
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnDrawListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnDrawListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnDrawListeners:Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/view/ViewTreeObserver;->mOnDrawListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_6

    :cond_c
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnDrawListeners:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnDrawListeners:Ljava/util/ArrayList;

    :cond_d
    :goto_6
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnFrameCommitListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnFrameCommitListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnFrameCommitListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->captureFrameCommitCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_7

    :cond_e
    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->captureFrameCommitCallbacks()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnFrameCommitListeners:Ljava/util/ArrayList;

    :cond_f
    :goto_7
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p1, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_8

    :cond_10
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    :cond_11
    :goto_8
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    iget-object v1, p1, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->addAll(Landroid/view/ViewTreeObserver$CopyOnWriteArray;)V

    goto :goto_9

    :cond_12
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    :cond_13
    :goto_9
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    iget-object v1, p1, Landroid/view/ViewTreeObserver;->mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->addAll(Landroid/view/ViewTreeObserver$CopyOnWriteArray;)V

    goto :goto_a

    :cond_14
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    :cond_15
    :goto_a
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnWindowShownListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowShownListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowShownListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    iget-object v1, p1, Landroid/view/ViewTreeObserver;->mOnWindowShownListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->addAll(Landroid/view/ViewTreeObserver$CopyOnWriteArray;)V

    goto :goto_b

    :cond_16
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnWindowShownListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowShownListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    :cond_17
    :goto_b
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mGestureExclusionListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mGestureExclusionListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mGestureExclusionListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    iget-object v1, p1, Landroid/view/ViewTreeObserver;->mGestureExclusionListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->addAll(Landroid/view/ViewTreeObserver$CopyOnWriteArray;)V

    goto :goto_c

    :cond_18
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mGestureExclusionListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mGestureExclusionListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    :cond_19
    :goto_c
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnStylusButtonEventListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnStylusButtonEventListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnStylusButtonEventListeners:Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/view/ViewTreeObserver;->mOnStylusButtonEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_d

    :cond_1a
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnStylusButtonEventListeners:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnStylusButtonEventListeners:Ljava/util/ArrayList;

    :cond_1b
    :goto_d
    invoke-direct {p1}, Landroid/view/ViewTreeObserver;->kill()V

    return-void
.end method

.method public whitelist registerFrameCommitCallback(Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnFrameCommitListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnFrameCommitListeners:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnFrameCommitListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public whitelist removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public greylist removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->remove(Ljava/lang/Object;)V

    return-void
.end method

.method public whitelist removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V
    .locals 3

    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnDrawListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Landroid/view/ViewTreeObserver;->mInDispatchOnDraw:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call removeOnDrawListener inside of onDraw"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Landroid/view/ViewTreeObserver;->sIllegalOnDrawModificationIsFatal:Z

    if-nez v1, :cond_1

    const-string v1, "ViewTreeObserver"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    throw v0

    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnDrawListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public greylist-max-o removeOnEnterAnimationCompleteListener(Landroid/view/ViewTreeObserver$OnEnterAnimationCompleteListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnEnterAnimationCompleteListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnEnterAnimationCompleteListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public whitelist removeOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public whitelist removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->remove(Ljava/lang/Object;)V

    return-void
.end method

.method public whitelist removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->remove(Ljava/lang/Object;)V

    return-void
.end method

.method public whitelist removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->remove(Ljava/lang/Object;)V

    return-void
.end method

.method public whitelist removeOnSystemGestureExclusionRectsChangedListener(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mGestureExclusionListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mGestureExclusionListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->remove(Ljava/lang/Object;)V

    return-void
.end method

.method public whitelist removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public whitelist removeOnWindowAttachListener(Landroid/view/ViewTreeObserver$OnWindowAttachListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public whitelist removeOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public greylist-max-o removeOnWindowShownListener(Landroid/view/ViewTreeObserver$OnWindowShownListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowShownListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowShownListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->remove(Ljava/lang/Object;)V

    return-void
.end method

.method public whitelist removeOnWindowVisibilityChangeListener(Landroid/view/ViewTreeObserver$OnWindowVisibilityChangeListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowVisibilityListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowVisibilityListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public whitelist semAddOnStylusButtonEventListener(Landroid/view/ViewTreeObserver$SemOnStylusButtonEventListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnStylusButtonEventListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnStylusButtonEventListeners:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnStylusButtonEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public whitelist semRemoveOnStylusButtonEventListener(Landroid/view/ViewTreeObserver$SemOnStylusButtonEventListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnStylusButtonEventListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnStylusButtonEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public whitelist unregisterFrameCommitCallback(Ljava/lang/Runnable;)Z
    .locals 1

    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnFrameCommitListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnFrameCommitListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
