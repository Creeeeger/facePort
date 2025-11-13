.class public final Landroid/view/InputQueue;
.super Ljava/lang/Object;
.source "InputQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/InputQueue$FinishedInputEventCallback;,
        Landroid/view/InputQueue$Callback;,
        Landroid/view/InputQueue$ActiveInputEvent;
    }
.end annotation


# instance fields
.field private final greylist-max-o mActiveEventArray:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/view/InputQueue$ActiveInputEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mActiveInputEventPool:Landroid/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$Pool<",
            "Landroid/view/InputQueue$ActiveInputEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mCloseGuard:Ldalvik/system/CloseGuard;

.field private greylist-max-o mPtr:J


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/util/LongSparseArray;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/view/InputQueue;->mActiveEventArray:Landroid/util/LongSparseArray;

    .line 42
    new-instance v0, Landroid/util/Pools$SimplePool;

    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Landroid/view/InputQueue;->mActiveInputEventPool:Landroid/util/Pools$Pool;

    .line 45
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InputQueue;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 57
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/view/InputQueue;->nativeInit(Ljava/lang/ref/WeakReference;Landroid/os/MessageQueue;)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/view/InputQueue;->mPtr:J

    .line 59
    const-string v1, "InputQueue.dispose"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method private greylist-max-r finishInputEvent(JZ)V
    .locals 4
    .param p1, "id"    # J
    .param p3, "handled"    # Z

    .line 133
    iget-object v0, p0, Landroid/view/InputQueue;->mActiveEventArray:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v0

    .line 134
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 135
    iget-object v1, p0, Landroid/view/InputQueue;->mActiveEventArray:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InputQueue$ActiveInputEvent;

    .line 136
    .local v1, "e":Landroid/view/InputQueue$ActiveInputEvent;
    iget-object v2, p0, Landroid/view/InputQueue;->mActiveEventArray:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v0}, Landroid/util/LongSparseArray;->removeAt(I)V

    .line 137
    iget-object v2, v1, Landroid/view/InputQueue$ActiveInputEvent;->mCallback:Landroid/view/InputQueue$FinishedInputEventCallback;

    iget-object v3, v1, Landroid/view/InputQueue$ActiveInputEvent;->mToken:Ljava/lang/Object;

    invoke-interface {v2, v3, p3}, Landroid/view/InputQueue$FinishedInputEventCallback;->onFinishedInputEvent(Ljava/lang/Object;Z)V

    .line 138
    invoke-direct {p0, v1}, Landroid/view/InputQueue;->recycleActiveInputEvent(Landroid/view/InputQueue$ActiveInputEvent;)V

    .line 140
    .end local v1    # "e":Landroid/view/InputQueue$ActiveInputEvent;
    :cond_0
    return-void
.end method

.method private static native greylist-max-o nativeDispose(J)V
.end method

.method private static native greylist-max-o nativeInit(Ljava/lang/ref/WeakReference;Landroid/os/MessageQueue;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/InputQueue;",
            ">;",
            "Landroid/os/MessageQueue;",
            ")J"
        }
    .end annotation
.end method

.method private static native greylist-max-o nativeSendKeyEvent(JLandroid/view/KeyEvent;Z)J
.end method

.method private static native greylist-max-o nativeSendMotionEvent(JLandroid/view/MotionEvent;)J
.end method

.method private greylist-max-o obtainActiveInputEvent(Ljava/lang/Object;Landroid/view/InputQueue$FinishedInputEventCallback;)Landroid/view/InputQueue$ActiveInputEvent;
    .locals 3
    .param p1, "token"    # Ljava/lang/Object;
    .param p2, "callback"    # Landroid/view/InputQueue$FinishedInputEventCallback;

    .line 144
    iget-object v0, p0, Landroid/view/InputQueue;->mActiveInputEventPool:Landroid/util/Pools$Pool;

    invoke-interface {v0}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InputQueue$ActiveInputEvent;

    .line 145
    .local v0, "e":Landroid/view/InputQueue$ActiveInputEvent;
    if-nez v0, :cond_0

    .line 146
    new-instance v1, Landroid/view/InputQueue$ActiveInputEvent;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/view/InputQueue$ActiveInputEvent;-><init>(Landroid/view/InputQueue;Landroid/view/InputQueue$ActiveInputEvent-IA;)V

    move-object v0, v1

    .line 148
    :cond_0
    iput-object p1, v0, Landroid/view/InputQueue$ActiveInputEvent;->mToken:Ljava/lang/Object;

    .line 149
    iput-object p2, v0, Landroid/view/InputQueue$ActiveInputEvent;->mCallback:Landroid/view/InputQueue$FinishedInputEventCallback;

    .line 150
    return-object v0
.end method

.method private greylist-max-o recycleActiveInputEvent(Landroid/view/InputQueue$ActiveInputEvent;)V
    .locals 1
    .param p1, "e"    # Landroid/view/InputQueue$ActiveInputEvent;

    .line 154
    invoke-virtual {p1}, Landroid/view/InputQueue$ActiveInputEvent;->recycle()V

    .line 155
    iget-object v0, p0, Landroid/view/InputQueue;->mActiveInputEventPool:Landroid/util/Pools$Pool;

    invoke-interface {v0, p1}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 156
    return-void
.end method


# virtual methods
.method public greylist-max-o dispose()V
    .locals 1

    .line 73
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/InputQueue;->dispose(Z)V

    .line 74
    return-void
.end method

.method public greylist-max-o dispose(Z)V
    .locals 5
    .param p1, "finalized"    # Z

    .line 78
    iget-object v0, p0, Landroid/view/InputQueue;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_1

    .line 79
    if-eqz p1, :cond_0

    .line 80
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 82
    :cond_0
    iget-object v0, p0, Landroid/view/InputQueue;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 85
    :cond_1
    iget-wide v0, p0, Landroid/view/InputQueue;->mPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    .line 86
    invoke-static {v0, v1}, Landroid/view/InputQueue;->nativeDispose(J)V

    .line 87
    iput-wide v2, p0, Landroid/view/InputQueue;->mPtr:J

    .line 89
    :cond_2
    return-void
.end method

.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 65
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/view/InputQueue;->dispose(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 68
    nop

    .line 69
    return-void

    .line 67
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 68
    throw v0
.end method

.method public greylist-max-o getNativePtr()J
    .locals 2

    .line 93
    iget-wide v0, p0, Landroid/view/InputQueue;->mPtr:J

    return-wide v0
.end method

.method public greylist-max-o sendInputEvent(Landroid/view/InputEvent;Ljava/lang/Object;ZLandroid/view/InputQueue$FinishedInputEventCallback;)V
    .locals 6
    .param p1, "e"    # Landroid/view/InputEvent;
    .param p2, "token"    # Ljava/lang/Object;
    .param p3, "predispatch"    # Z
    .param p4, "callback"    # Landroid/view/InputQueue$FinishedInputEventCallback;

    .line 99
    invoke-direct {p0, p2, p4}, Landroid/view/InputQueue;->obtainActiveInputEvent(Ljava/lang/Object;Landroid/view/InputQueue$FinishedInputEventCallback;)Landroid/view/InputQueue$ActiveInputEvent;

    move-result-object v0

    .line 101
    .local v0, "event":Landroid/view/InputQueue$ActiveInputEvent;
    instance-of v1, p1, Landroid/view/KeyEvent;

    if-eqz v1, :cond_0

    .line 102
    iget-wide v1, p0, Landroid/view/InputQueue;->mPtr:J

    move-object v3, p1

    check-cast v3, Landroid/view/KeyEvent;

    invoke-static {v1, v2, v3, p3}, Landroid/view/InputQueue;->nativeSendKeyEvent(JLandroid/view/KeyEvent;Z)J

    move-result-wide v1

    .local v1, "id":J
    goto :goto_1

    .line 106
    .end local v1    # "id":J
    :cond_0
    move-object v1, p1

    check-cast v1, Landroid/view/MotionEvent;

    .line 107
    .local v1, "original":Landroid/view/MotionEvent;
    iget-boolean v2, v1, Landroid/view/MotionEvent;->mNeedWindowOffset:Z

    if-eqz v2, :cond_2

    .line 110
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->DSS_ENABLED:Z

    if-eqz v2, :cond_1

    iget v2, v1, Landroid/view/MotionEvent;->mDssScale:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    .line 111
    invoke-static {v1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    .local v2, "adjustedEvent":Landroid/view/MotionEvent;
    goto :goto_0

    .line 114
    .end local v2    # "adjustedEvent":Landroid/view/MotionEvent;
    :cond_1
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    .line 115
    .local v2, "offsetX":F
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    .line 116
    .local v3, "offsetY":F
    neg-float v4, v2

    neg-float v5, v3

    invoke-static {v1, v4, v5}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;FF)Landroid/view/MotionEvent;

    move-result-object v4

    move-object v2, v4

    .line 118
    .end local v3    # "offsetY":F
    .local v2, "adjustedEvent":Landroid/view/MotionEvent;
    :goto_0
    iget-wide v3, p0, Landroid/view/InputQueue;->mPtr:J

    invoke-static {v3, v4, v2}, Landroid/view/InputQueue;->nativeSendMotionEvent(JLandroid/view/MotionEvent;)J

    move-result-wide v3

    .line 119
    .local v3, "id":J
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 120
    .end local v2    # "adjustedEvent":Landroid/view/MotionEvent;
    move-wide v1, v3

    goto :goto_1

    .line 121
    .end local v3    # "id":J
    :cond_2
    iget-wide v2, p0, Landroid/view/InputQueue;->mPtr:J

    invoke-static {v2, v3, v1}, Landroid/view/InputQueue;->nativeSendMotionEvent(JLandroid/view/MotionEvent;)J

    move-result-wide v2

    move-wide v1, v2

    .line 128
    .local v1, "id":J
    :goto_1
    iget-object v3, p0, Landroid/view/InputQueue;->mActiveEventArray:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v1, v2, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 129
    return-void
.end method
