.class public final Landroid/graphics/HardwareRendererObserver;
.super Ljava/lang/Object;
.source "HardwareRendererObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/HardwareRendererObserver$OnFrameMetricsAvailableListener;
    }
.end annotation


# instance fields
.field private final blacklist mFrameMetrics:[J

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mListener:Landroid/graphics/HardwareRendererObserver$OnFrameMetricsAvailableListener;

.field private blacklist mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;


# direct methods
.method public static synthetic blacklist $r8$lambda$PeqK8_uy-Wp8rbu7N1ihQlz9qD4(Landroid/graphics/HardwareRendererObserver;)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/HardwareRendererObserver;->lambda$notifyDataAvailable$0()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/graphics/HardwareRendererObserver$OnFrameMetricsAvailableListener;[JLandroid/os/Handler;Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object p2, p0, Landroid/graphics/HardwareRendererObserver;->mFrameMetrics:[J

    iput-object p3, p0, Landroid/graphics/HardwareRendererObserver;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Landroid/graphics/HardwareRendererObserver;->mListener:Landroid/graphics/HardwareRendererObserver$OnFrameMetricsAvailableListener;

    new-instance v0, Lcom/android/internal/util/VirtualRefBasePtr;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v1, p4}, Landroid/graphics/HardwareRendererObserver;->nCreateObserver(Ljava/lang/ref/WeakReference;Z)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/VirtualRefBasePtr;-><init>(J)V

    iput-object v0, p0, Landroid/graphics/HardwareRendererObserver;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "invalid looper, null message queue\n"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "handler and its looper cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist invokeDataAvailable(Ljava/lang/ref/WeakReference;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/HardwareRendererObserver;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/HardwareRendererObserver;

    if-eqz v0, :cond_0

    invoke-direct {v0}, Landroid/graphics/HardwareRendererObserver;->notifyDataAvailable()V

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private synthetic blacklist lambda$notifyDataAvailable$0()V
    .locals 4

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/graphics/HardwareRendererObserver;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v1}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v1

    iget-object v3, p0, Landroid/graphics/HardwareRendererObserver;->mFrameMetrics:[J

    invoke-static {v1, v2, v3}, Landroid/graphics/HardwareRendererObserver;->nGetNextBuffer(J[J)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v2, p0, Landroid/graphics/HardwareRendererObserver;->mListener:Landroid/graphics/HardwareRendererObserver$OnFrameMetricsAvailableListener;

    invoke-interface {v2, v1}, Landroid/graphics/HardwareRendererObserver$OnFrameMetricsAvailableListener;->onFrameMetricsAvailable(I)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    goto :goto_0

    :cond_1
    return-void
.end method

.method private static native blacklist nCreateObserver(Ljava/lang/ref/WeakReference;Z)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/HardwareRendererObserver;",
            ">;Z)J"
        }
    .end annotation
.end method

.method private static native blacklist nGetNextBuffer(J[J)I
.end method

.method private blacklist notifyDataAvailable()V
    .locals 2

    iget-object v0, p0, Landroid/graphics/HardwareRendererObserver;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/graphics/HardwareRendererObserver$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/graphics/HardwareRendererObserver$$ExternalSyntheticLambda0;-><init>(Landroid/graphics/HardwareRendererObserver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method blacklist getNativeInstance()J
    .locals 2

    iget-object v0, p0, Landroid/graphics/HardwareRendererObserver;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    return-wide v0
.end method
