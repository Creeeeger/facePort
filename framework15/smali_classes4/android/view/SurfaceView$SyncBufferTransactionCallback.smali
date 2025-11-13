.class Landroid/view/SurfaceView$SyncBufferTransactionCallback;
.super Ljava/lang/Object;
.source "SurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SyncBufferTransactionCallback"
.end annotation


# instance fields
.field private final blacklist mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private blacklist mTransaction:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method private constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Landroid/view/SurfaceView$SyncBufferTransactionCallback;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/SurfaceView$SyncBufferTransactionCallback-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/SurfaceView$SyncBufferTransactionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method blacklist onTransactionReady(Landroid/view/SurfaceControl$Transaction;)V
    .locals 1

    iput-object p1, p0, Landroid/view/SurfaceView$SyncBufferTransactionCallback;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Landroid/view/SurfaceView$SyncBufferTransactionCallback;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method blacklist waitForTransaction()Landroid/view/SurfaceControl$Transaction;
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/view/SurfaceView$SyncBufferTransactionCallback;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    iget-object v0, p0, Landroid/view/SurfaceView$SyncBufferTransactionCallback;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    return-object v0
.end method
