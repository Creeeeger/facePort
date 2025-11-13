.class public final Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mAlpha:F

.field public mChanged:Z

.field public mColors:[F

.field public final mCropRect:Landroid/graphics/Rect;

.field public mSurfaceControl:Landroid/view/SurfaceControl;

.field public mVisible:Z

.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/SplitBackgroundController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/SplitBackgroundController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->this$0:Lcom/android/wm/shell/splitscreen/SplitBackgroundController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x3

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->mColors:[F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->mVisible:Z

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->mCropRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final apply()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->canApply()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->this$0:Lcom/android/wm/shell/splitscreen/SplitBackgroundController;

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v1}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->apply(Landroid/view/SurfaceControl$Transaction;)V

    iget-object p0, v0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public final apply(Landroid/view/SurfaceControl$Transaction;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->canApply()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->mColors:[F

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->mAlpha:F

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-boolean v1, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->mVisible:Z

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->mCropRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->mChanged:Z

    return-void
.end method

.method public final canApply()Z
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    const-string v2, "SplitBackgroundController"

    if-nez v0, :cond_1

    sget-boolean p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->DEBUG:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "surface is not set. apply failed "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v0, v0

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1

    :cond_1
    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->mChanged:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "no changes. cur state: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public final setAlpha(F)V
    .locals 1

    iget v0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->mAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->mAlpha:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->mChanged:Z

    :cond_0
    return-void
.end method

.method public final setCrop(Landroid/graphics/Rect;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->mCropRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->mCropRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->mChanged:Z

    sget-boolean p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->DEBUG:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setCrop: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SplitBackgroundController"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sc= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " vis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->mVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->mColors:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->mAlpha:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
