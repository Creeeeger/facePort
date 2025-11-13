.class public abstract Landroid/view/DisplayEventReceiver;
.super Ljava/lang/Object;
.source "DisplayEventReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/DisplayEventReceiver$FrameRateOverride;,
        Landroid/view/DisplayEventReceiver$VsyncEventData;
    }
.end annotation


# static fields
.field public static final blacklist EVENT_REGISTRATION_FRAME_RATE_OVERRIDE_FLAG:I = 0x2

.field public static final blacklist EVENT_REGISTRATION_MODE_CHANGED_FLAG:I = 0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "DisplayEventReceiver"

.field public static final greylist-max-o VSYNC_SOURCE_APP:I = 0x0

.field public static final greylist-max-o VSYNC_SOURCE_SURFACE_FLINGER:I = 0x1


# instance fields
.field private greylist-max-o mMessageQueue:Landroid/os/MessageQueue;

.field private greylist mReceiverPtr:J


# direct methods
.method public constructor greylist <init>(Landroid/os/Looper;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;

    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/view/DisplayEventReceiver;-><init>(Landroid/os/Looper;II)V

    .line 97
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Looper;II)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "vsyncSource"    # I
    .param p3, "eventRegistration"    # I

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    if-eqz p1, :cond_0

    .line 112
    invoke-virtual {p1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iput-object v0, p0, Landroid/view/DisplayEventReceiver;->mMessageQueue:Landroid/os/MessageQueue;

    .line 113
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Landroid/view/DisplayEventReceiver;->mMessageQueue:Landroid/os/MessageQueue;

    invoke-static {v0, v1, p2, p3}, Landroid/view/DisplayEventReceiver;->nativeInit(Ljava/lang/ref/WeakReference;Landroid/os/MessageQueue;II)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/DisplayEventReceiver;->mReceiverPtr:J

    .line 115
    return-void

    .line 109
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "looper must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist dispatchFrameRateOverrides(JJ[Landroid/view/DisplayEventReceiver$FrameRateOverride;)V
    .locals 0
    .param p1, "timestampNanos"    # J
    .param p3, "physicalDisplayId"    # J
    .param p5, "overrides"    # [Landroid/view/DisplayEventReceiver$FrameRateOverride;

    .line 314
    invoke-virtual/range {p0 .. p5}, Landroid/view/DisplayEventReceiver;->onFrameRateOverridesChanged(JJ[Landroid/view/DisplayEventReceiver$FrameRateOverride;)V

    .line 315
    return-void
.end method

.method private greylist-max-r dispatchHotplug(JJZ)V
    .locals 0
    .param p1, "timestampNanos"    # J
    .param p3, "physicalDisplayId"    # J
    .param p5, "connected"    # Z

    .line 301
    invoke-virtual/range {p0 .. p5}, Landroid/view/DisplayEventReceiver;->onHotplug(JJZ)V

    .line 302
    return-void
.end method

.method private blacklist dispatchModeChanged(JJI)V
    .locals 0
    .param p1, "timestampNanos"    # J
    .param p3, "physicalDisplayId"    # J
    .param p5, "modeId"    # I

    .line 307
    invoke-virtual/range {p0 .. p5}, Landroid/view/DisplayEventReceiver;->onModeChanged(JJI)V

    .line 308
    return-void
.end method

.method private blacklist dispatchVsync(JJILandroid/view/DisplayEventReceiver$VsyncEventData;)V
    .locals 0
    .param p1, "timestampNanos"    # J
    .param p3, "physicalDisplayId"    # J
    .param p5, "frame"    # I
    .param p6, "vsyncEventData"    # Landroid/view/DisplayEventReceiver$VsyncEventData;

    .line 294
    invoke-virtual/range {p0 .. p6}, Landroid/view/DisplayEventReceiver;->onVsync(JJILandroid/view/DisplayEventReceiver$VsyncEventData;)V

    .line 295
    return-void
.end method

.method private greylist-max-o dispose(Z)V
    .locals 5
    .param p1, "finalized"    # Z

    .line 134
    iget-wide v0, p0, Landroid/view/DisplayEventReceiver;->mReceiverPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 135
    invoke-static {v0, v1}, Landroid/view/DisplayEventReceiver;->nativeDispose(J)V

    .line 136
    iput-wide v2, p0, Landroid/view/DisplayEventReceiver;->mReceiverPtr:J

    .line 138
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/DisplayEventReceiver;->mMessageQueue:Landroid/os/MessageQueue;

    .line 139
    return-void
.end method

.method private static native greylist-max-o nativeDispose(J)V
.end method

.method private static native blacklist nativeGetLatestVsyncEventData(J)Landroid/view/DisplayEventReceiver$VsyncEventData;
.end method

.method private static native blacklist nativeInit(Ljava/lang/ref/WeakReference;Landroid/os/MessageQueue;II)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/DisplayEventReceiver;",
            ">;",
            "Landroid/os/MessageQueue;",
            "II)J"
        }
    .end annotation
.end method

.method private static native greylist-max-o nativeScheduleVsync(J)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method


# virtual methods
.method public greylist-max-o dispose()V
    .locals 1

    .line 130
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/DisplayEventReceiver;->dispose(Z)V

    .line 131
    return-void
.end method

.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 120
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Landroid/view/DisplayEventReceiver;->dispose(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 123
    nop

    .line 124
    return-void

    .line 122
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 123
    throw v0
.end method

.method blacklist getLatestVsyncEventData()Landroid/view/DisplayEventReceiver$VsyncEventData;
    .locals 2

    .line 287
    iget-wide v0, p0, Landroid/view/DisplayEventReceiver;->mReceiverPtr:J

    invoke-static {v0, v1}, Landroid/view/DisplayEventReceiver;->nativeGetLatestVsyncEventData(J)Landroid/view/DisplayEventReceiver$VsyncEventData;

    move-result-object v0

    return-object v0
.end method

.method public blacklist onFrameRateOverridesChanged(JJ[Landroid/view/DisplayEventReceiver$FrameRateOverride;)V
    .locals 0
    .param p1, "timestampNanos"    # J
    .param p3, "physicalDisplayId"    # J
    .param p5, "overrides"    # [Landroid/view/DisplayEventReceiver$FrameRateOverride;

    .line 267
    return-void
.end method

.method public greylist onHotplug(JJZ)V
    .locals 0
    .param p1, "timestampNanos"    # J
    .param p3, "physicalDisplayId"    # J
    .param p5, "connected"    # Z

    .line 221
    return-void
.end method

.method public blacklist onModeChanged(JJI)V
    .locals 0
    .param p1, "timestampNanos"    # J
    .param p3, "physicalDisplayId"    # J
    .param p5, "modeId"    # I

    .line 232
    return-void
.end method

.method public blacklist onVsync(JJILandroid/view/DisplayEventReceiver$VsyncEventData;)V
    .locals 0
    .param p1, "timestampNanos"    # J
    .param p3, "physicalDisplayId"    # J
    .param p5, "frame"    # I
    .param p6, "vsyncEventData"    # Landroid/view/DisplayEventReceiver$VsyncEventData;

    .line 209
    return-void
.end method

.method public greylist scheduleVsync()V
    .locals 4

    .line 275
    iget-wide v0, p0, Landroid/view/DisplayEventReceiver;->mReceiverPtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 276
    const-string v0, "DisplayEventReceiver"

    const-string v1, "Attempted to schedule a vertical sync pulse but the display event receiver has already been disposed."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 279
    :cond_0
    invoke-static {v0, v1}, Landroid/view/DisplayEventReceiver;->nativeScheduleVsync(J)V

    .line 281
    :goto_0
    return-void
.end method
