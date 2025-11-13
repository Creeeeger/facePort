.class Landroid/view/SurfaceControl$GlobalTransactionWrapper;
.super Landroid/view/SurfaceControl$Transaction;
.source "SurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GlobalTransactionWrapper"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 4417
    invoke-direct {p0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/SurfaceControl$GlobalTransactionWrapper-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/SurfaceControl$GlobalTransactionWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist apply(Z)V
    .locals 2
    .param p1, "sync"    # Z

    .line 4434
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Global transaction must be applied from closeTransaction"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist applyGlobalTransaction(Z)V
    .locals 2
    .param p1, "sync"    # Z

    .line 4420
    iget-object v0, p0, Landroid/view/SurfaceControl$GlobalTransactionWrapper;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4421
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "applyGlobalTransaction called, mName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/view/SurfaceControl$GlobalTransactionWrapper;->mName:Ljava/lang/String;

    .line 4422
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4421
    const-string v1, "SurfaceControl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4423
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/SurfaceControl$GlobalTransactionWrapper;->mName:Ljava/lang/String;

    .line 4427
    :cond_0
    invoke-virtual {p0}, Landroid/view/SurfaceControl$GlobalTransactionWrapper;->applyResizedSurfaces()V

    .line 4428
    invoke-virtual {p0}, Landroid/view/SurfaceControl$GlobalTransactionWrapper;->notifyReparentedSurfaces()V

    .line 4429
    iget-wide v0, p0, Landroid/view/SurfaceControl$GlobalTransactionWrapper;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/view/SurfaceControl;->-$$Nest$smnativeApplyTransaction(JZ)V

    .line 4430
    return-void
.end method
