.class public final Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;
.super Lcom/facebook/rebound/SpringLooper;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mChoreographer:Landroid/view/Choreographer;

.field public final mFrameCallback:Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper$1;

.field public mLastTime:J

.field public mStarted:Z


# direct methods
.method public constructor <init>(Landroid/view/Choreographer;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/rebound/SpringLooper;-><init>()V

    iput-object p1, p0, Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->mChoreographer:Landroid/view/Choreographer;

    new-instance p1, Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper$1;

    invoke-direct {p1, p0}, Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper$1;-><init>(Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;)V

    iput-object p1, p0, Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->mFrameCallback:Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper$1;

    return-void
.end method


# virtual methods
.method public final start()V
    .locals 2

    iget-boolean v0, p0, Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->mStarted:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->mStarted:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->mLastTime:J

    iget-object v0, p0, Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->mFrameCallback:Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper$1;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    iget-object p0, p0, Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {p0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method public final stop()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->mStarted:Z

    iget-object v0, p0, Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->mChoreographer:Landroid/view/Choreographer;

    iget-object p0, p0, Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->mFrameCallback:Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper$1;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method
