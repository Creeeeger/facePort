.class public final Landroid/view/ViewTreeObserver;
.super Ljava/lang/Object;
.source "ViewTreeObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewTreeObserver$SemOnStylusButtonEventListener;,
        Landroid/view/ViewTreeObserver$CopyOnWriteArray;,
        Landroid/view/ViewTreeObserver$OnEnterAnimationCompleteListener;,
        Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;,
        Landroid/view/ViewTreeObserver$InternalInsetsInfo;,
        Landroid/view/ViewTreeObserver$OnWindowShownListener;,
        Landroid/view/ViewTreeObserver$OnScrollChangedListener;,
        Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;,
        Landroid/view/ViewTreeObserver$OnDrawListener;,
        Landroid/view/ViewTreeObserver$OnPreDrawListener;,
        Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;,
        Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;,
        Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;,
        Landroid/view/ViewTreeObserver$OnWindowAttachListener;
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

.field private greylist-max-o mWindowShown:Z


# direct methods
.method constructor greylist-max-o <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewTreeObserver;->mAlive:Z

    .line 374
    nop

    .line 375
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

    .line 376
    return-void
.end method

.method private greylist-max-o checkIsAlive()V
    .locals 2

    .line 987
    iget-boolean v0, p0, Landroid/view/ViewTreeObserver;->mAlive:Z

    if-eqz v0, :cond_0

    .line 991
    return-void

    .line 988
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This ViewTreeObserver is not alive, call getViewTreeObserver() again"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o kill()V
    .locals 1

    .line 1013
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewTreeObserver;->mAlive:Z

    .line 1014
    return-void
.end method


# virtual methods
.method public greylist addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    .line 901
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    .line 903
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-nez v0, :cond_0

    .line 904
    new-instance v0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-direct {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;-><init>()V

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    .line 908
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->add(Ljava/lang/Object;)V

    .line 909
    return-void
.end method

.method public whitelist addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/view/ViewTreeObserver$OnDrawListener;

    .line 733
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    .line 735
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnDrawListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 736
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnDrawListeners:Ljava/util/ArrayList;

    .line 739
    :cond_0
    iget-boolean v0, p0, Landroid/view/ViewTreeObserver;->mInDispatchOnDraw:Z

    if-eqz v0, :cond_2

    .line 740
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call addOnDrawListener inside of onDraw"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 742
    .local v0, "ex":Ljava/lang/IllegalStateException;
    sget-boolean v1, Landroid/view/ViewTreeObserver;->sIllegalOnDrawModificationIsFatal:Z

    if-nez v1, :cond_1

    .line 745
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ViewTreeObserver"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 743
    :cond_1
    throw v0

    .line 748
    .end local v0    # "ex":Ljava/lang/IllegalStateException;
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnDrawListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 749
    return-void
.end method

.method public greylist-max-o addOnEnterAnimationCompleteListener(Landroid/view/ViewTreeObserver$OnEnterAnimationCompleteListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/ViewTreeObserver$OnEnterAnimationCompleteListener;

    .line 936
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    .line 937
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnEnterAnimationCompleteListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    .line 938
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnEnterAnimationCompleteListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 941
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnEnterAnimationCompleteListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 942
    return-void
.end method

.method public whitelist addOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    .line 573
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    .line 575
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    .line 576
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 579
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 580
    return-void
.end method

.method public whitelist addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 608
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    .line 610
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-nez v0, :cond_0

    .line 611
    new-instance v0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-direct {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;-><init>()V

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    .line 614
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->add(Ljava/lang/Object;)V

    .line 615
    return-void
.end method

.method public whitelist addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 658
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    .line 660
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-nez v0, :cond_0

    .line 661
    new-instance v0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-direct {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;-><init>()V

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    .line 664
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->add(Ljava/lang/Object;)V

    .line 665
    return-void
.end method

.method public whitelist addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 828
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    .line 830
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-nez v0, :cond_0

    .line 831
    new-instance v0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-direct {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;-><init>()V

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    .line 834
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->add(Ljava/lang/Object;)V

    .line 835
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

    .line 965
    .local p1, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/List<Landroid/graphics/Rect;>;>;"
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    .line 966
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mGestureExclusionListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-nez v0, :cond_0

    .line 967
    new-instance v0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-direct {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;-><init>()V

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mGestureExclusionListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    .line 969
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mGestureExclusionListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->add(Ljava/lang/Object;)V

    .line 970
    return-void
.end method

.method public whitelist addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

    .line 862
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    .line 864
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    .line 865
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 868
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 869
    return-void
.end method

.method public whitelist addOnWindowAttachListener(Landroid/view/ViewTreeObserver$OnWindowAttachListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/ViewTreeObserver$OnWindowAttachListener;

    .line 503
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    .line 505
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    .line 506
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 510
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    return-void
.end method

.method public whitelist addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    .line 538
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    .line 540
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    .line 541
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 545
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 546
    return-void
.end method

.method public greylist-max-o addOnWindowShownListener(Landroid/view/ViewTreeObserver$OnWindowShownListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/ViewTreeObserver$OnWindowShownListener;

    .line 693
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    .line 695
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowShownListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-nez v0, :cond_0

    .line 696
    new-instance v0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-direct {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;-><init>()V

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowShownListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    .line 699
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowShownListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->add(Ljava/lang/Object;)V

    .line 700
    iget-boolean v0, p0, Landroid/view/ViewTreeObserver;->mWindowShown:Z

    if-eqz v0, :cond_1

    .line 701
    invoke-interface {p1}, Landroid/view/ViewTreeObserver$OnWindowShownListener;->onWindowShown()V

    .line 703
    :cond_1
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

    .line 799
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnFrameCommitListeners:Ljava/util/ArrayList;

    .line 800
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/ViewTreeObserver;->mOnFrameCommitListeners:Ljava/util/ArrayList;

    .line 801
    return-object v0
.end method

.method final greylist dispatchOnComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 5
    .param p1, "inoutInfo"    # Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    .line 1229
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    .line 1231
    .local v0, "listeners":Landroid/view/ViewTreeObserver$CopyOnWriteArray;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray<Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1232
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->start()Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;

    move-result-object v1

    .line 1234
    .local v1, "access":Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access<Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;>;"
    :try_start_0
    invoke-virtual {v1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->size()I

    move-result v2

    .line 1235
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1236
    invoke-virtual {v1, v3}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-interface {v4, p1}, Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;->onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1235
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1239
    .end local v2    # "count":I
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->end()V

    .line 1240
    goto :goto_1

    .line 1239
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->end()V

    .line 1240
    throw v2

    .line 1242
    .end local v1    # "access":Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access<Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;>;"
    :cond_1
    :goto_1
    return-void
.end method

.method public final whitelist dispatchOnDraw()V
    .locals 4

    .line 1160
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnDrawListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1161
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewTreeObserver;->mInDispatchOnDraw:Z

    .line 1162
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnDrawListeners:Ljava/util/ArrayList;

    .line 1163
    .local v0, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewTreeObserver$OnDrawListener;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1164
    .local v1, "numListeners":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1165
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-interface {v3}, Landroid/view/ViewTreeObserver$OnDrawListener;->onDraw()V

    .line 1164
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1167
    .end local v2    # "i":I
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/view/ViewTreeObserver;->mInDispatchOnDraw:Z

    .line 1169
    .end local v0    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewTreeObserver$OnDrawListener;>;"
    .end local v1    # "numListeners":I
    :cond_1
    return-void
.end method

.method public final greylist-max-o dispatchOnEnterAnimationComplete()V
    .locals 3

    .line 1252
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnEnterAnimationCompleteListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1254
    .local v0, "listeners":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/view/ViewTreeObserver$OnEnterAnimationCompleteListener;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1255
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewTreeObserver$OnEnterAnimationCompleteListener;

    .line 1256
    .local v2, "listener":Landroid/view/ViewTreeObserver$OnEnterAnimationCompleteListener;
    invoke-interface {v2}, Landroid/view/ViewTreeObserver$OnEnterAnimationCompleteListener;->onEnterAnimationComplete()V

    .line 1257
    .end local v2    # "listener":Landroid/view/ViewTreeObserver$OnEnterAnimationCompleteListener;
    goto :goto_0

    .line 1259
    :cond_0
    return-void
.end method

.method final greylist dispatchOnGlobalFocusChange(Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .param p1, "oldFocus"    # Landroid/view/View;
    .param p2, "newFocus"    # Landroid/view/View;

    .line 1060
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1061
    .local v0, "listeners":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1062
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    .line 1063
    .local v2, "listener":Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;
    invoke-interface {v2, p1, p2}, Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;->onGlobalFocusChanged(Landroid/view/View;Landroid/view/View;)V

    .line 1064
    .end local v2    # "listener":Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;
    goto :goto_0

    .line 1066
    :cond_0
    return-void
.end method

.method public final whitelist dispatchOnGlobalLayout()V
    .locals 5

    .line 1078
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    .line 1079
    .local v0, "listeners":Landroid/view/ViewTreeObserver$CopyOnWriteArray;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray<Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1080
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->start()Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;

    move-result-object v1

    .line 1082
    .local v1, "access":Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access<Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;>;"
    :try_start_0
    invoke-virtual {v1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->size()I

    move-result v2

    .line 1083
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1084
    invoke-virtual {v1, v3}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-interface {v4}, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;->onGlobalLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1083
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1087
    .end local v2    # "count":I
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->end()V

    .line 1088
    goto :goto_1

    .line 1087
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->end()V

    .line 1088
    throw v2

    .line 1090
    .end local v1    # "access":Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access<Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;>;"
    :cond_1
    :goto_1
    return-void
.end method

.method public final blacklist dispatchOnPenButtonEventListener(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1420
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnStylusButtonEventListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1421
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnStylusButtonEventListeners:Ljava/util/ArrayList;

    .line 1422
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1423
    .local v0, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewTreeObserver$SemOnStylusButtonEventListener;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1424
    .local v1, "numListeners":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1425
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewTreeObserver$SemOnStylusButtonEventListener;

    invoke-interface {v3, p1}, Landroid/view/ViewTreeObserver$SemOnStylusButtonEventListener;->onStylusButtonEvent(Landroid/view/MotionEvent;)V

    .line 1424
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1428
    .end local v0    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewTreeObserver$SemOnStylusButtonEventListener;>;"
    .end local v1    # "numListeners":I
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public final whitelist dispatchOnPreDraw()Z
    .locals 8

    .line 1111
    const-string v0, ""

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mLog:Ljava/lang/String;

    .line 1113
    const/4 v0, 0x0

    .line 1114
    .local v0, "cancelDraw":Z
    iget-object v1, p0, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    .line 1115
    .local v1, "listeners":Landroid/view/ViewTreeObserver$CopyOnWriteArray;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray<Landroid/view/ViewTreeObserver$OnPreDrawListener;>;"
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 1116
    invoke-virtual {v1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->start()Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;

    move-result-object v2

    .line 1118
    .local v2, "access":Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access<Landroid/view/ViewTreeObserver$OnPreDrawListener;>;"
    :try_start_0
    invoke-virtual {v2}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->size()I

    move-result v3

    .line 1119
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 1121
    invoke-virtual {v2, v4}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-interface {v5}, Landroid/view/ViewTreeObserver$OnPreDrawListener;->onPreDraw()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    .line 1122
    .local v5, "cancel":Z
    if-eqz v5, :cond_1

    sget-boolean v6, Lcom/samsung/android/rune/ViewRune;->COMMON_IS_PRODUCT_DEV:Z

    if-nez v6, :cond_0

    invoke-static {}, Lcom/samsung/android/rune/ViewRune;->isDebugLevelMid()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1123
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Landroid/view/ViewTreeObserver;->mLog:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2, v4}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/view/ViewTreeObserver;->mLog:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1126
    :cond_1
    or-int/2addr v0, v5

    .line 1119
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1129
    .end local v3    # "count":I
    .end local v4    # "i":I
    .end local v5    # "cancel":Z
    :cond_2
    invoke-virtual {v1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->end()V

    .line 1130
    goto :goto_1

    .line 1129
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->end()V

    .line 1130
    throw v3

    .line 1132
    .end local v2    # "access":Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access<Landroid/view/ViewTreeObserver$OnPreDrawListener;>;"
    :cond_3
    :goto_1
    return v0
.end method

.method final greylist dispatchOnScrollChanged()V
    .locals 5

    .line 1196
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    .line 1197
    .local v0, "listeners":Landroid/view/ViewTreeObserver$CopyOnWriteArray;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray<Landroid/view/ViewTreeObserver$OnScrollChangedListener;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1198
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->start()Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;

    move-result-object v1

    .line 1200
    .local v1, "access":Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access<Landroid/view/ViewTreeObserver$OnScrollChangedListener;>;"
    :try_start_0
    invoke-virtual {v1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->size()I

    move-result v2

    .line 1201
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1202
    invoke-virtual {v1, v3}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-interface {v4}, Landroid/view/ViewTreeObserver$OnScrollChangedListener;->onScrollChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1201
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1205
    .end local v2    # "count":I
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->end()V

    .line 1206
    goto :goto_1

    .line 1205
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->end()V

    .line 1206
    throw v2

    .line 1208
    .end local v1    # "access":Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access<Landroid/view/ViewTreeObserver$OnScrollChangedListener;>;"
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

    .line 1262
    .local p1, "rects":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mGestureExclusionListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    .line 1263
    .local v0, "listeners":Landroid/view/ViewTreeObserver$CopyOnWriteArray;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray<Ljava/util/function/Consumer<Ljava/util/List<Landroid/graphics/Rect;>;>;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1264
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->start()Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;

    move-result-object v1

    .line 1266
    .local v1, "access":Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access<Ljava/util/function/Consumer<Ljava/util/List<Landroid/graphics/Rect;>;>;>;"
    :try_start_0
    invoke-virtual {v1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->size()I

    move-result v2

    .line 1267
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1268
    invoke-virtual {v1, v3}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/function/Consumer;

    invoke-interface {v4, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1267
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1271
    .end local v2    # "count":I
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->end()V

    .line 1272
    goto :goto_1

    .line 1271
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->end()V

    .line 1272
    throw v2

    .line 1274
    .end local v1    # "access":Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access<Ljava/util/function/Consumer<Ljava/util/List<Landroid/graphics/Rect;>;>;>;"
    :cond_1
    :goto_1
    return-void
.end method

.method final greylist dispatchOnTouchModeChanged(Z)V
    .locals 3
    .param p1, "inTouchMode"    # Z

    .line 1178
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1180
    .local v0, "listeners":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1181
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

    .line 1182
    .local v2, "listener":Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;
    invoke-interface {v2, p1}, Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;->onTouchModeChanged(Z)V

    .line 1183
    .end local v2    # "listener":Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;
    goto :goto_0

    .line 1185
    :cond_0
    return-void
.end method

.method final greylist-max-o dispatchOnWindowAttachedChange(Z)V
    .locals 3
    .param p1, "attached"    # Z

    .line 1024
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1026
    .local v0, "listeners":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/view/ViewTreeObserver$OnWindowAttachListener;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1027
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewTreeObserver$OnWindowAttachListener;

    .line 1028
    .local v2, "listener":Landroid/view/ViewTreeObserver$OnWindowAttachListener;
    if-eqz p1, :cond_0

    invoke-interface {v2}, Landroid/view/ViewTreeObserver$OnWindowAttachListener;->onWindowAttached()V

    goto :goto_1

    .line 1029
    :cond_0
    invoke-interface {v2}, Landroid/view/ViewTreeObserver$OnWindowAttachListener;->onWindowDetached()V

    .line 1030
    .end local v2    # "listener":Landroid/view/ViewTreeObserver$OnWindowAttachListener;
    :goto_1
    goto :goto_0

    .line 1032
    :cond_1
    return-void
.end method

.method final greylist-max-o dispatchOnWindowFocusChange(Z)V
    .locals 3
    .param p1, "hasFocus"    # Z

    .line 1042
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1044
    .local v0, "listeners":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1045
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    .line 1046
    .local v2, "listener":Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;
    invoke-interface {v2, p1}, Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;->onWindowFocusChanged(Z)V

    .line 1047
    .end local v2    # "listener":Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;
    goto :goto_0

    .line 1049
    :cond_0
    return-void
.end method

.method public final greylist-max-o dispatchOnWindowShown()V
    .locals 5

    .line 1141
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewTreeObserver;->mWindowShown:Z

    .line 1142
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowShownListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    .line 1143
    .local v0, "listeners":Landroid/view/ViewTreeObserver$CopyOnWriteArray;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray<Landroid/view/ViewTreeObserver$OnWindowShownListener;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1144
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->start()Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;

    move-result-object v1

    .line 1146
    .local v1, "access":Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access<Landroid/view/ViewTreeObserver$OnWindowShownListener;>;"
    :try_start_0
    invoke-virtual {v1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->size()I

    move-result v2

    .line 1147
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1148
    invoke-virtual {v1, v3}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewTreeObserver$OnWindowShownListener;

    invoke-interface {v4}, Landroid/view/ViewTreeObserver$OnWindowShownListener;->onWindowShown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1147
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1151
    .end local v2    # "count":I
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->end()V

    .line 1152
    goto :goto_1

    .line 1151
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->end()V

    .line 1152
    throw v2

    .line 1154
    .end local v1    # "access":Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access<Landroid/view/ViewTreeObserver$OnWindowShownListener;>;"
    :cond_1
    :goto_1
    return-void
.end method

.method final greylist hasComputeInternalInsetsListeners()Z
    .locals 2

    .line 1215
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    .line 1217
    .local v0, "listeners":Landroid/view/ViewTreeObserver$CopyOnWriteArray;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray<Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;>;"
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

    .line 1096
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-eqz v0, :cond_0

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

    .line 1003
    iget-boolean v0, p0, Landroid/view/ViewTreeObserver;->mAlive:Z

    return v0
.end method

.method greylist-max-o merge(Landroid/view/ViewTreeObserver;)V
    .locals 2
    .param p1, "observer"    # Landroid/view/ViewTreeObserver;

    .line 386
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_1

    .line 387
    iget-object v1, p0, Landroid/view/ViewTreeObserver;->mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v1, :cond_0

    .line 388
    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 390
    :cond_0
    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 394
    :cond_1
    :goto_0
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_3

    .line 395
    iget-object v1, p0, Landroid/view/ViewTreeObserver;->mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v1, :cond_2

    .line 396
    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 398
    :cond_2
    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 402
    :cond_3
    :goto_1
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_5

    .line 403
    iget-object v1, p0, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v1, :cond_4

    .line 404
    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 406
    :cond_4
    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 410
    :cond_5
    :goto_2
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-eqz v0, :cond_7

    .line 411
    iget-object v1, p0, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-eqz v1, :cond_6

    .line 412
    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->addAll(Landroid/view/ViewTreeObserver$CopyOnWriteArray;)V

    goto :goto_3

    .line 414
    :cond_6
    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    .line 418
    :cond_7
    :goto_3
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-eqz v0, :cond_9

    .line 419
    iget-object v1, p0, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-eqz v1, :cond_8

    .line 420
    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->addAll(Landroid/view/ViewTreeObserver$CopyOnWriteArray;)V

    goto :goto_4

    .line 422
    :cond_8
    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    .line 426
    :cond_9
    :goto_4
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnDrawListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    .line 427
    iget-object v1, p0, Landroid/view/ViewTreeObserver;->mOnDrawListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_a

    .line 428
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_5

    .line 430
    :cond_a
    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnDrawListeners:Ljava/util/ArrayList;

    .line 434
    :cond_b
    :goto_5
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnFrameCommitListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_d

    .line 435
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnFrameCommitListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    .line 436
    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->captureFrameCommitCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_6

    .line 438
    :cond_c
    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->captureFrameCommitCallbacks()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnFrameCommitListeners:Ljava/util/ArrayList;

    .line 442
    :cond_d
    :goto_6
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_f

    .line 443
    iget-object v1, p0, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v1, :cond_e

    .line 444
    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_7

    .line 446
    :cond_e
    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 450
    :cond_f
    :goto_7
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-eqz v0, :cond_11

    .line 451
    iget-object v1, p0, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-eqz v1, :cond_10

    .line 452
    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->addAll(Landroid/view/ViewTreeObserver$CopyOnWriteArray;)V

    goto :goto_8

    .line 454
    :cond_10
    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    .line 458
    :cond_11
    :goto_8
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-eqz v0, :cond_13

    .line 459
    iget-object v1, p0, Landroid/view/ViewTreeObserver;->mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-eqz v1, :cond_12

    .line 460
    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->addAll(Landroid/view/ViewTreeObserver$CopyOnWriteArray;)V

    goto :goto_9

    .line 462
    :cond_12
    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    .line 466
    :cond_13
    :goto_9
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnWindowShownListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-eqz v0, :cond_15

    .line 467
    iget-object v1, p0, Landroid/view/ViewTreeObserver;->mOnWindowShownListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-eqz v1, :cond_14

    .line 468
    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->addAll(Landroid/view/ViewTreeObserver$CopyOnWriteArray;)V

    goto :goto_a

    .line 470
    :cond_14
    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowShownListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    .line 474
    :cond_15
    :goto_a
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mGestureExclusionListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-eqz v0, :cond_17

    .line 475
    iget-object v1, p0, Landroid/view/ViewTreeObserver;->mGestureExclusionListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-eqz v1, :cond_16

    .line 476
    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->addAll(Landroid/view/ViewTreeObserver$CopyOnWriteArray;)V

    goto :goto_b

    .line 478
    :cond_16
    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mGestureExclusionListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    .line 483
    :cond_17
    :goto_b
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnStylusButtonEventListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_19

    .line 484
    iget-object v1, p0, Landroid/view/ViewTreeObserver;->mOnStylusButtonEventListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_18

    .line 485
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_c

    .line 487
    :cond_18
    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnStylusButtonEventListeners:Ljava/util/ArrayList;

    .line 492
    :cond_19
    :goto_c
    invoke-direct {p1}, Landroid/view/ViewTreeObserver;->kill()V

    .line 493
    return-void
.end method

.method public whitelist registerFrameCommitCallback(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 791
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    .line 792
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnFrameCommitListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 793
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnFrameCommitListeners:Ljava/util/ArrayList;

    .line 795
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnFrameCommitListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 796
    return-void
.end method

.method public whitelist removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 0
    .param p1, "victim"    # Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 630
    invoke-virtual {p0, p1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 631
    return-void
.end method

.method public greylist removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V
    .locals 1
    .param p1, "victim"    # Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    .line 925
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    .line 926
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-nez v0, :cond_0

    .line 927
    return-void

    .line 929
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->remove(Ljava/lang/Object;)V

    .line 930
    return-void
.end method

.method public whitelist removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V
    .locals 3
    .param p1, "victim"    # Landroid/view/ViewTreeObserver$OnDrawListener;

    .line 763
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    .line 764
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnDrawListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 765
    return-void

    .line 767
    :cond_0
    iget-boolean v0, p0, Landroid/view/ViewTreeObserver;->mInDispatchOnDraw:Z

    if-eqz v0, :cond_2

    .line 768
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call removeOnDrawListener inside of onDraw"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 770
    .local v0, "ex":Ljava/lang/IllegalStateException;
    sget-boolean v1, Landroid/view/ViewTreeObserver;->sIllegalOnDrawModificationIsFatal:Z

    if-nez v1, :cond_1

    .line 773
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ViewTreeObserver"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 771
    :cond_1
    throw v0

    .line 776
    .end local v0    # "ex":Ljava/lang/IllegalStateException;
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnDrawListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 777
    return-void
.end method

.method public greylist-max-o removeOnEnterAnimationCompleteListener(Landroid/view/ViewTreeObserver$OnEnterAnimationCompleteListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/ViewTreeObserver$OnEnterAnimationCompleteListener;

    .line 948
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    .line 949
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnEnterAnimationCompleteListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    .line 950
    return-void

    .line 952
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 953
    return-void
.end method

.method public whitelist removeOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V
    .locals 1
    .param p1, "victim"    # Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    .line 592
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    .line 593
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    .line 594
    return-void

    .line 596
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 597
    return-void
.end method

.method public whitelist removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 1
    .param p1, "victim"    # Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 643
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    .line 644
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-nez v0, :cond_0

    .line 645
    return-void

    .line 647
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->remove(Ljava/lang/Object;)V

    .line 648
    return-void
.end method

.method public whitelist removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    .locals 1
    .param p1, "victim"    # Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 677
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    .line 678
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-nez v0, :cond_0

    .line 679
    return-void

    .line 681
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->remove(Ljava/lang/Object;)V

    .line 682
    return-void
.end method

.method public whitelist removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .locals 1
    .param p1, "victim"    # Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 847
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    .line 848
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-nez v0, :cond_0

    .line 849
    return-void

    .line 851
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->remove(Ljava/lang/Object;)V

    .line 852
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

    .line 979
    .local p1, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/List<Landroid/graphics/Rect;>;>;"
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    .line 980
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mGestureExclusionListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-nez v0, :cond_0

    .line 981
    return-void

    .line 983
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->remove(Ljava/lang/Object;)V

    .line 984
    return-void
.end method

.method public whitelist removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V
    .locals 1
    .param p1, "victim"    # Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

    .line 881
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    .line 882
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    .line 883
    return-void

    .line 885
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 886
    return-void
.end method

.method public whitelist removeOnWindowAttachListener(Landroid/view/ViewTreeObserver$OnWindowAttachListener;)V
    .locals 1
    .param p1, "victim"    # Landroid/view/ViewTreeObserver$OnWindowAttachListener;

    .line 523
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    .line 524
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    .line 525
    return-void

    .line 527
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 528
    return-void
.end method

.method public whitelist removeOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V
    .locals 1
    .param p1, "victim"    # Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    .line 558
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    .line 559
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    .line 560
    return-void

    .line 562
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 563
    return-void
.end method

.method public greylist-max-o removeOnWindowShownListener(Landroid/view/ViewTreeObserver$OnWindowShownListener;)V
    .locals 1
    .param p1, "victim"    # Landroid/view/ViewTreeObserver$OnWindowShownListener;

    .line 716
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    .line 717
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowShownListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-nez v0, :cond_0

    .line 718
    return-void

    .line 720
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->remove(Ljava/lang/Object;)V

    .line 721
    return-void
.end method

.method public whitelist semAddOnStylusButtonEventListener(Landroid/view/ViewTreeObserver$SemOnStylusButtonEventListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/ViewTreeObserver$SemOnStylusButtonEventListener;

    .line 1391
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    .line 1393
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnStylusButtonEventListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1394
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnStylusButtonEventListeners:Ljava/util/ArrayList;

    .line 1397
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnStylusButtonEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1398
    return-void
.end method

.method public whitelist semRemoveOnStylusButtonEventListener(Landroid/view/ViewTreeObserver$SemOnStylusButtonEventListener;)V
    .locals 1
    .param p1, "victim"    # Landroid/view/ViewTreeObserver$SemOnStylusButtonEventListener;

    .line 1409
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    .line 1410
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnStylusButtonEventListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1411
    return-void

    .line 1413
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1414
    return-void
.end method

.method public whitelist unregisterFrameCommitCallback(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 813
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    .line 814
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnFrameCommitListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 815
    const/4 v0, 0x0

    return v0

    .line 817
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
