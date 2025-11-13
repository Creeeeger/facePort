.class public abstract Landroid/view/CompositionSamplingListener;
.super Ljava/lang/Object;
.source "CompositionSamplingListener.java"


# instance fields
.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mNativeListener:J


# direct methods
.method public constructor blacklist <init>(Ljava/util/concurrent/Executor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/CompositionSamplingListener;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-static {p0}, Landroid/view/CompositionSamplingListener;->nativeCreate(Landroid/view/CompositionSamplingListener;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/CompositionSamplingListener;->mNativeListener:J

    return-void
.end method

.method private static blacklist dispatchOnSampleCollected(Landroid/view/CompositionSamplingListener;F)V
    .locals 2

    iget-object v0, p0, Landroid/view/CompositionSamplingListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/view/CompositionSamplingListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/view/CompositionSamplingListener$$ExternalSyntheticLambda0;-><init>(Landroid/view/CompositionSamplingListener;F)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$dispatchOnSampleCollected$0(Landroid/view/CompositionSamplingListener;F)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/CompositionSamplingListener;->onSampleCollected(F)V

    return-void
.end method

.method private static native blacklist nativeCreate(Landroid/view/CompositionSamplingListener;)J
.end method

.method private static native blacklist nativeDestroy(J)V
.end method

.method private static native blacklist nativeRegister(JJIIII)V
.end method

.method private static native blacklist nativeUnregister(J)V
.end method

.method public static blacklist register(Landroid/view/CompositionSamplingListener;ILandroid/view/SurfaceControl;Landroid/graphics/Rect;)V
    .locals 12

    iget-wide v0, p0, Landroid/view/CompositionSamplingListener;->mNativeListener:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v1, "default display only for now"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-eqz p2, :cond_2

    iget-wide v2, p2, Landroid/view/SurfaceControl;->mNativeObject:J

    :cond_2
    move-wide v6, v2

    iget-wide v4, p0, Landroid/view/CompositionSamplingListener;->mNativeListener:J

    iget v8, p3, Landroid/graphics/Rect;->left:I

    iget v9, p3, Landroid/graphics/Rect;->top:I

    iget v10, p3, Landroid/graphics/Rect;->right:I

    iget v11, p3, Landroid/graphics/Rect;->bottom:I

    invoke-static/range {v4 .. v11}, Landroid/view/CompositionSamplingListener;->nativeRegister(JJIIII)V

    return-void
.end method

.method public static blacklist unregister(Landroid/view/CompositionSamplingListener;)V
    .locals 4

    iget-wide v0, p0, Landroid/view/CompositionSamplingListener;->mNativeListener:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Landroid/view/CompositionSamplingListener;->mNativeListener:J

    invoke-static {v0, v1}, Landroid/view/CompositionSamplingListener;->nativeUnregister(J)V

    return-void
.end method


# virtual methods
.method public blacklist destroy()V
    .locals 4

    iget-wide v0, p0, Landroid/view/CompositionSamplingListener;->mNativeListener:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Landroid/view/CompositionSamplingListener;->unregister(Landroid/view/CompositionSamplingListener;)V

    iget-wide v0, p0, Landroid/view/CompositionSamplingListener;->mNativeListener:J

    invoke-static {v0, v1}, Landroid/view/CompositionSamplingListener;->nativeDestroy(J)V

    iput-wide v2, p0, Landroid/view/CompositionSamplingListener;->mNativeListener:J

    return-void
.end method

.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Landroid/view/CompositionSamplingListener;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public abstract blacklist onSampleCollected(F)V
.end method
