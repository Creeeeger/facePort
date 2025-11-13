.class public final Landroid/view/Choreographer;
.super Ljava/lang/Object;
.source "Choreographer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/Choreographer$CallbackQueue;,
        Landroid/view/Choreographer$CallbackRecord;,
        Landroid/view/Choreographer$FrameDisplayEventReceiver;,
        Landroid/view/Choreographer$FrameHandler;,
        Landroid/view/Choreographer$VsyncCallback;,
        Landroid/view/Choreographer$FrameData;,
        Landroid/view/Choreographer$FrameTimeline;,
        Landroid/view/Choreographer$FrameCallback;
    }
.end annotation


# static fields
.field public static final blacklist CALLBACK_ANIMATION:I = 0x1

.field public static final greylist-max-o CALLBACK_COMMIT:I = 0x4

.field public static final greylist-max-o CALLBACK_INPUT:I = 0x0

.field public static final blacklist CALLBACK_INSETS_ANIMATION:I = 0x2

.field private static final greylist-max-o CALLBACK_LAST:I = 0x4

.field private static final greylist-max-o CALLBACK_TRACE_TITLES:[Ljava/lang/String;

.field public static final greylist-max-o CALLBACK_TRAVERSAL:I = 0x3

.field private static final greylist-max-o DEBUG_FRAMES:Z = false

.field private static final greylist-max-o DEBUG_JANK:Z = false

.field private static final greylist-max-o DEFAULT_FRAME_DELAY:J = 0xaL

.field private static final greylist-max-o FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

.field private static final greylist-max-o MSG_DO_FRAME:I = 0x0

.field private static final greylist-max-o MSG_DO_SCHEDULE_CALLBACK:I = 0x2

.field private static final greylist-max-o MSG_DO_SCHEDULE_VSYNC:I = 0x1

.field private static final greylist-max-o SKIPPED_FRAME_WARNING_LIMIT:I

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Choreographer"

.field private static final greylist-max-o USE_FRAME_TIME:Z

.field private static final greylist-max-p USE_VSYNC:Z

.field private static final blacklist VSYNC_CALLBACK_TOKEN:Ljava/lang/Object;

.field private static volatile greylist-max-o mMainInstance:Landroid/view/Choreographer;

.field private static volatile greylist-max-o sFrameDelay:J

.field private static final greylist-max-o sSfThreadInstance:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/view/Choreographer;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o sThreadInstance:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/view/Choreographer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

.field private final greylist mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

.field private greylist-max-o mCallbacksRunning:Z

.field private blacklist mDebugCallStackCnt:I

.field private blacklist mDebugCallbackConsumer:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDebugDispatchThresholdMs:I

.field private greylist-max-o mDebugPrintNextFrameTimeDelta:Z

.field private final greylist mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

.field private blacklist mEnabledDebugCallback:Z

.field private greylist-max-o mFPSDivisor:I

.field blacklist mFrameInfo:Landroid/graphics/FrameInfo;

.field private greylist-max-r mFrameIntervalNanos:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private greylist-max-o mFrameScheduled:Z

.field private final greylist-max-o mHandler:Landroid/view/Choreographer$FrameHandler;

.field private blacklist mLastFrameIntervalNanos:J

.field private greylist mLastFrameTimeNanos:J

.field private blacklist mLastVsyncEventData:Landroid/view/DisplayEventReceiver$VsyncEventData;

.field private final greylist-max-p mLock:Ljava/lang/Object;

.field private final greylist-max-o mLooper:Landroid/os/Looper;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/view/Choreographer;)Landroid/view/Choreographer$FrameHandler;
    .locals 0

    iget-object p0, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mobtainCallbackLocked(Landroid/view/Choreographer;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Landroid/view/Choreographer$CallbackRecord;
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/view/Choreographer;->obtainCallbackLocked(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Landroid/view/Choreographer$CallbackRecord;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mrecycleCallbackLocked(Landroid/view/Choreographer;Landroid/view/Choreographer$CallbackRecord;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/Choreographer;->recycleCallbackLocked(Landroid/view/Choreographer$CallbackRecord;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetFRAME_CALLBACK_TOKEN()Ljava/lang/Object;
    .locals 1

    sget-object v0, Landroid/view/Choreographer;->FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetVSYNC_CALLBACK_TOKEN()Ljava/lang/Object;
    .locals 1

    sget-object v0, Landroid/view/Choreographer;->VSYNC_CALLBACK_TOKEN:Ljava/lang/Object;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfputmMainInstance(Landroid/view/Choreographer;)V
    .locals 0

    sput-object p0, Landroid/view/Choreographer;->mMainInstance:Landroid/view/Choreographer;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 5

    .line 113
    const-wide/16 v0, 0xa

    sput-wide v0, Landroid/view/Choreographer;->sFrameDelay:J

    .line 116
    new-instance v0, Landroid/view/Choreographer$1;

    invoke-direct {v0}, Landroid/view/Choreographer$1;-><init>()V

    sput-object v0, Landroid/view/Choreographer;->sThreadInstance:Ljava/lang/ThreadLocal;

    .line 135
    new-instance v0, Landroid/view/Choreographer$2;

    invoke-direct {v0}, Landroid/view/Choreographer$2;-><init>()V

    sput-object v0, Landroid/view/Choreographer;->sSfThreadInstance:Ljava/lang/ThreadLocal;

    .line 149
    const-string v0, "debug.choreographer.vsync"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/Choreographer;->USE_VSYNC:Z

    .line 153
    const-string v0, "debug.choreographer.frametime"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/Choreographer;->USE_FRAME_TIME:Z

    .line 158
    const-string v0, "debug.choreographer.skipwarning"

    const/16 v1, 0x1e

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/view/Choreographer;->SKIPPED_FRAME_WARNING_LIMIT:I

    .line 166
    new-instance v0, Landroid/view/Choreographer$3;

    invoke-direct {v0}, Landroid/view/Choreographer$3;-><init>()V

    sput-object v0, Landroid/view/Choreographer;->FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

    .line 169
    new-instance v0, Landroid/view/Choreographer$4;

    invoke-direct {v0}, Landroid/view/Choreographer$4;-><init>()V

    sput-object v0, Landroid/view/Choreographer;->VSYNC_CALLBACK_TOKEN:Ljava/lang/Object;

    .line 226
    const-string v0, "input"

    const-string v1, "animation"

    const-string v2, "insets_animation"

    const-string/jumbo v3, "traversal"

    const-string v4, "commit"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/Choreographer;->CALLBACK_TRACE_TITLES:[Ljava/lang/String;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Looper;I)V
    .locals 5
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "vsyncSource"    # I

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    .line 205
    const/4 v0, 0x1

    iput v0, p0, Landroid/view/Choreographer;->mFPSDivisor:I

    .line 206
    new-instance v1, Landroid/view/DisplayEventReceiver$VsyncEventData;

    invoke-direct {v1}, Landroid/view/DisplayEventReceiver$VsyncEventData;-><init>()V

    iput-object v1, p0, Landroid/view/Choreographer;->mLastVsyncEventData:Landroid/view/DisplayEventReceiver$VsyncEventData;

    .line 220
    new-instance v1, Landroid/graphics/FrameInfo;

    invoke-direct {v1}, Landroid/graphics/FrameInfo;-><init>()V

    iput-object v1, p0, Landroid/view/Choreographer;->mFrameInfo:Landroid/graphics/FrameInfo;

    .line 281
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/Choreographer;->mEnabledDebugCallback:Z

    .line 282
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/Choreographer;->mDebugCallbackConsumer:Ljava/util/function/BiConsumer;

    .line 283
    const/4 v2, 0x5

    iput v2, p0, Landroid/view/Choreographer;->mDebugCallStackCnt:I

    .line 284
    const/16 v3, 0x14

    iput v3, p0, Landroid/view/Choreographer;->mDebugDispatchThresholdMs:I

    .line 288
    iput-object p1, p0, Landroid/view/Choreographer;->mLooper:Landroid/os/Looper;

    .line 289
    new-instance v3, Landroid/view/Choreographer$FrameHandler;

    invoke-direct {v3, p0, p1}, Landroid/view/Choreographer$FrameHandler;-><init>(Landroid/view/Choreographer;Landroid/os/Looper;)V

    iput-object v3, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    .line 290
    sget-boolean v3, Landroid/view/Choreographer;->USE_VSYNC:Z

    if-eqz v3, :cond_0

    .line 291
    new-instance v3, Landroid/view/Choreographer$FrameDisplayEventReceiver;

    invoke-direct {v3, p0, p1, p2}, Landroid/view/Choreographer$FrameDisplayEventReceiver;-><init>(Landroid/view/Choreographer;Landroid/os/Looper;I)V

    goto :goto_0

    .line 292
    :cond_0
    move-object v3, v1

    :goto_0
    iput-object v3, p0, Landroid/view/Choreographer;->mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

    .line 293
    const-wide/high16 v3, -0x8000000000000000L

    iput-wide v3, p0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    .line 295
    const v3, 0x4e6e6b28    # 1.0E9f

    invoke-static {}, Landroid/view/Choreographer;->getRefreshRate()F

    move-result v4

    div-float/2addr v3, v4

    float-to-long v3, v3

    iput-wide v3, p0, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    .line 297
    new-array v2, v2, [Landroid/view/Choreographer$CallbackQueue;

    iput-object v2, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    .line 298
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/4 v3, 0x4

    if-gt v2, v3, :cond_1

    .line 299
    iget-object v3, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    new-instance v4, Landroid/view/Choreographer$CallbackQueue;

    invoke-direct {v4, p0, v1}, Landroid/view/Choreographer$CallbackQueue;-><init>(Landroid/view/Choreographer;Landroid/view/Choreographer$CallbackQueue-IA;)V

    aput-object v4, v3, v2

    .line 298
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 302
    .end local v2    # "i":I
    :cond_1
    const-string v1, "debug.hwui.fps_divisor"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/Choreographer;->setFPSDivisor(I)V

    .line 303
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Looper;ILandroid/view/Choreographer-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/Choreographer;-><init>(Landroid/os/Looper;I)V

    return-void
.end method

.method private greylist-max-o dispose()V
    .locals 1

    .line 348
    iget-object v0, p0, Landroid/view/Choreographer;->mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

    invoke-virtual {v0}, Landroid/view/Choreographer$FrameDisplayEventReceiver;->dispose()V

    .line 349
    return-void
.end method

.method public static greylist getFrameDelay()J
    .locals 2

    .line 369
    sget-wide v0, Landroid/view/Choreographer;->sFrameDelay:J

    return-wide v0
.end method

.method public static whitelist getInstance()Landroid/view/Choreographer;
    .locals 1

    .line 319
    sget-object v0, Landroid/view/Choreographer;->sThreadInstance:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Choreographer;

    return-object v0
.end method

.method public static greylist-max-o getMainThreadInstance()Landroid/view/Choreographer;
    .locals 1

    .line 335
    sget-object v0, Landroid/view/Choreographer;->mMainInstance:Landroid/view/Choreographer;

    return-object v0
.end method

.method private static greylist-max-o getRefreshRate()F
    .locals 2

    .line 306
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    .line 308
    .local v0, "di":Landroid/view/DisplayInfo;
    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getRefreshRate()F

    move-result v1

    return v1
.end method

.method public static greylist getSfInstance()Landroid/view/Choreographer;
    .locals 1

    .line 327
    sget-object v0, Landroid/view/Choreographer;->sSfThreadInstance:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Choreographer;

    return-object v0
.end method

.method private greylist-max-o isRunningOnLooperThreadLocked()Z
    .locals 2

    .line 992
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/view/Choreographer;->mLooper:Landroid/os/Looper;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist obtainCallbackLocked(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Landroid/view/Choreographer$CallbackRecord;
    .locals 3
    .param p1, "dueTime"    # J
    .param p3, "action"    # Ljava/lang/Object;
    .param p4, "token"    # Ljava/lang/Object;
    .param p5, "log"    # Ljava/lang/String;

    .line 996
    iget-object v0, p0, Landroid/view/Choreographer;->mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

    .line 997
    .local v0, "callback":Landroid/view/Choreographer$CallbackRecord;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 998
    new-instance v2, Landroid/view/Choreographer$CallbackRecord;

    invoke-direct {v2, v1}, Landroid/view/Choreographer$CallbackRecord;-><init>(Landroid/view/Choreographer$CallbackRecord-IA;)V

    move-object v0, v2

    goto :goto_0

    .line 1000
    :cond_0
    iget-object v2, v0, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    iput-object v2, p0, Landroid/view/Choreographer;->mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

    .line 1001
    iput-object v1, v0, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 1003
    :goto_0
    iput-wide p1, v0, Landroid/view/Choreographer$CallbackRecord;->dueTime:J

    .line 1004
    iput-object p3, v0, Landroid/view/Choreographer$CallbackRecord;->action:Ljava/lang/Object;

    .line 1005
    iput-object p4, v0, Landroid/view/Choreographer$CallbackRecord;->token:Ljava/lang/Object;

    .line 1006
    iput-object p5, v0, Landroid/view/Choreographer$CallbackRecord;->log:Ljava/lang/String;

    .line 1007
    return-object v0
.end method

.method private greylist-max-o postCallbackDelayedInternal(ILjava/lang/Object;Ljava/lang/Object;J)V
    .locals 14
    .param p1, "callbackType"    # I
    .param p2, "action"    # Ljava/lang/Object;
    .param p3, "token"    # Ljava/lang/Object;
    .param p4, "delayMillis"    # J

    .line 493
    move-object v1, p0

    move v2, p1

    iget-object v3, v1, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 494
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 495
    .local v4, "now":J
    add-long v12, v4, p4

    .line 497
    .local v12, "dueTime":J
    iget-boolean v0, v1, Landroid/view/Choreographer;->mEnabledDebugCallback:Z

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, v1, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    aget-object v6, v0, v2

    iget v0, v1, Landroid/view/Choreographer;->mDebugCallStackCnt:I

    const-string v7, "  "

    .line 499
    invoke-static {v0, v7}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 498
    move-wide v7, v12

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    invoke-virtual/range {v6 .. v11}, Landroid/view/Choreographer$CallbackQueue;->addCallbackLocked(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 501
    :cond_0
    iget-object v0, v1, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    aget-object v6, v0, v2

    const/4 v11, 0x0

    move-wide v7, v12

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    invoke-virtual/range {v6 .. v11}, Landroid/view/Choreographer$CallbackQueue;->addCallbackLocked(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 505
    :goto_0
    cmp-long v0, v12, v4

    if-gtz v0, :cond_1

    .line 506
    invoke-direct {p0, v4, v5}, Landroid/view/Choreographer;->scheduleFrameLocked(J)V

    move-object/from16 v7, p2

    goto :goto_1

    .line 508
    :cond_1
    iget-object v0, v1, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, 0x2

    move-object/from16 v7, p2

    :try_start_1
    invoke-virtual {v0, v6, v7}, Landroid/view/Choreographer$FrameHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 509
    .local v0, "msg":Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 510
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 511
    iget-object v6, v1, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v6, v0, v12, v13}, Landroid/view/Choreographer$FrameHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 513
    .end local v0    # "msg":Landroid/os/Message;
    .end local v4    # "now":J
    .end local v12    # "dueTime":J
    :goto_1
    monitor-exit v3

    .line 514
    return-void

    .line 513
    :catchall_0
    move-exception v0

    move-object/from16 v7, p2

    :goto_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method private greylist-max-o recycleCallbackLocked(Landroid/view/Choreographer$CallbackRecord;)V
    .locals 2
    .param p1, "callback"    # Landroid/view/Choreographer$CallbackRecord;

    .line 1011
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/view/Choreographer$CallbackRecord;->action:Ljava/lang/Object;

    .line 1012
    iput-object v0, p1, Landroid/view/Choreographer$CallbackRecord;->token:Ljava/lang/Object;

    .line 1013
    iget-object v1, p0, Landroid/view/Choreographer;->mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

    iput-object v1, p1, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 1014
    iput-object v0, p1, Landroid/view/Choreographer$CallbackRecord;->log:Ljava/lang/String;

    .line 1015
    iput-object p1, p0, Landroid/view/Choreographer;->mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

    .line 1016
    return-void
.end method

.method public static greylist-max-o releaseInstance()V
    .locals 2

    .line 342
    sget-object v0, Landroid/view/Choreographer;->sThreadInstance:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Choreographer;

    .line 343
    .local v1, "old":Landroid/view/Choreographer;
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 344
    invoke-direct {v1}, Landroid/view/Choreographer;->dispose()V

    .line 345
    return-void
.end method

.method private greylist-max-o removeCallbacksInternal(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "callbackType"    # I
    .param p2, "action"    # Ljava/lang/Object;
    .param p3, "token"    # Ljava/lang/Object;

    .line 563
    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 564
    :try_start_0
    iget-object v1, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    aget-object v1, v1, p1

    invoke-virtual {v1, p2, p3}, Landroid/view/Choreographer$CallbackQueue;->removeCallbacksLocked(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 565
    if-eqz p2, :cond_0

    if-nez p3, :cond_0

    .line 566
    iget-object v1, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p2}, Landroid/view/Choreographer$FrameHandler;->removeMessages(ILjava/lang/Object;)V

    .line 568
    :cond_0
    monitor-exit v0

    .line 569
    return-void

    .line 568
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private greylist-max-o scheduleFrameLocked(J)V
    .locals 5
    .param p1, "now"    # J

    .line 700
    iget-boolean v0, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    if-nez v0, :cond_2

    .line 701
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    .line 702
    sget-boolean v1, Landroid/view/Choreographer;->USE_VSYNC:Z

    if-eqz v1, :cond_1

    .line 710
    invoke-direct {p0}, Landroid/view/Choreographer;->isRunningOnLooperThreadLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 711
    invoke-direct {p0}, Landroid/view/Choreographer;->scheduleVsyncLocked()V

    goto :goto_0

    .line 713
    :cond_0
    iget-object v1, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v1, v0}, Landroid/view/Choreographer$FrameHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 714
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 715
    iget-object v0, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer$FrameHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 716
    .end local v1    # "msg":Landroid/os/Message;
    goto :goto_0

    .line 718
    :cond_1
    iget-wide v1, p0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    const-wide/32 v3, 0xf4240

    div-long/2addr v1, v3

    sget-wide v3, Landroid/view/Choreographer;->sFrameDelay:J

    add-long/2addr v1, v3

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 723
    .local v1, "nextFrameTime":J
    iget-object v3, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/Choreographer$FrameHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 724
    .local v3, "msg":Landroid/os/Message;
    invoke-virtual {v3, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 725
    iget-object v0, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/Choreographer$FrameHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 728
    .end local v1    # "nextFrameTime":J
    .end local v3    # "msg":Landroid/os/Message;
    :cond_2
    :goto_0
    return-void
.end method

.method private greylist-max-r scheduleVsyncLocked()V
    .locals 3

    .line 984
    const-wide/16 v0, 0x8

    :try_start_0
    const-string v2, "Choreographer#scheduleVsyncLocked"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 985
    iget-object v2, p0, Landroid/view/Choreographer;->mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

    invoke-virtual {v2}, Landroid/view/Choreographer$FrameDisplayEventReceiver;->scheduleVsync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 987
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 988
    nop

    .line 989
    return-void

    .line 987
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 988
    throw v2
.end method

.method public static blacklist setFrameDelay(J)V
    .locals 0
    .param p0, "frameDelay"    # J

    .line 389
    sput-wide p0, Landroid/view/Choreographer;->sFrameDelay:J

    .line 390
    return-void
.end method

.method public static greylist-max-o subtractFrameDelay(J)J
    .locals 4
    .param p0, "delayMillis"    # J

    .line 415
    sget-wide v0, Landroid/view/Choreographer;->sFrameDelay:J

    .line 416
    .local v0, "frameDelay":J
    cmp-long v2, p0, v0

    if-gtz v2, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    sub-long v2, p0, v0

    :goto_0
    return-wide v2
.end method

.method private blacklist traceMessage(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 760
    const-wide/16 v0, 0x8

    invoke-static {v0, v1, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 761
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 762
    return-void
.end method


# virtual methods
.method blacklist doCallbacks(ILandroid/view/Choreographer$FrameData;J)V
    .locals 20
    .param p1, "callbackType"    # I
    .param p2, "frameData"    # Landroid/view/Choreographer$FrameData;
    .param p3, "frameIntervalNanos"    # J

    .line 870
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    invoke-static/range {p2 .. p2}, Landroid/view/Choreographer$FrameData;->-$$Nest$fgetmFrameTimeNanos(Landroid/view/Choreographer$FrameData;)J

    move-result-wide v4

    .line 871
    .local v4, "frameTimeNanos":J
    iget-object v6, v1, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 875
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    .line 876
    .local v7, "now":J
    iget-object v0, v1, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    aget-object v0, v0, v2

    const-wide/32 v9, 0xf4240

    div-long v9, v7, v9

    invoke-virtual {v0, v9, v10}, Landroid/view/Choreographer$CallbackQueue;->extractDueCallbacksLocked(J)Landroid/view/Choreographer$CallbackRecord;

    move-result-object v0

    move-object v9, v0

    .line 878
    .local v9, "callbacks":Landroid/view/Choreographer$CallbackRecord;
    if-nez v9, :cond_0

    .line 879
    monitor-exit v6

    return-void

    .line 881
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, v1, Landroid/view/Choreographer;->mCallbacksRunning:Z

    .line 891
    const/4 v0, 0x4

    const-wide/16 v10, 0x8

    if-ne v2, v0, :cond_1

    .line 892
    sub-long v12, v7, v4

    .line 893
    .local v12, "jitterNanos":J
    const-string v0, "jitterNanos"

    long-to-int v14, v12

    invoke-static {v10, v11, v0, v14}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 894
    const-wide/16 v14, 0x2

    mul-long v14, v14, p3

    cmp-long v0, v12, v14

    if-ltz v0, :cond_1

    .line 895
    rem-long v14, v12, p3

    add-long v14, v14, p3

    .line 905
    .local v14, "lastFrameOffset":J
    sub-long v4, v7, v14

    .line 906
    iput-wide v4, v1, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    .line 907
    invoke-virtual {v3, v4, v5}, Landroid/view/Choreographer$FrameData;->setFrameTimeNanos(J)V

    .line 910
    .end local v7    # "now":J
    .end local v12    # "jitterNanos":J
    .end local v14    # "lastFrameOffset":J
    :cond_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 912
    :try_start_1
    sget-object v0, Landroid/view/Choreographer;->CALLBACK_TRACE_TITLES:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-static {v10, v11, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 913
    move-object v0, v9

    .local v0, "c":Landroid/view/Choreographer$CallbackRecord;
    :goto_0
    if-eqz v0, :cond_5

    .line 920
    iget-boolean v7, v1, Landroid/view/Choreographer;->mEnabledDebugCallback:Z

    if-eqz v7, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    goto :goto_1

    :cond_2
    const-wide/16 v7, 0x0

    .line 923
    .local v7, "begin":J
    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/Choreographer$CallbackRecord;->run(Landroid/view/Choreographer$FrameData;)V

    .line 926
    iget-boolean v12, v1, Landroid/view/Choreographer;->mEnabledDebugCallback:Z

    if-eqz v12, :cond_4

    iget-object v12, v1, Landroid/view/Choreographer;->mDebugCallbackConsumer:Ljava/util/function/BiConsumer;

    if-eqz v12, :cond_4

    iget-object v12, v0, Landroid/view/Choreographer$CallbackRecord;->log:Ljava/lang/String;

    if-eqz v12, :cond_4

    .line 927
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long/2addr v12, v7

    .line 928
    .local v12, "dur":J
    iget v14, v1, Landroid/view/Choreographer;->mDebugDispatchThresholdMs:I

    int-to-long v14, v14

    cmp-long v14, v12, v14

    if-ltz v14, :cond_3

    .line 929
    iget-object v14, v1, Landroid/view/Choreographer;->mDebugCallbackConsumer:Ljava/util/function/BiConsumer;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "RunCallback: type="

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", action="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Landroid/view/Choreographer$CallbackRecord;->action:Ljava/lang/Object;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", token="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Landroid/view/Choreographer$CallbackRecord;->token:Ljava/lang/Object;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", latencyMillis="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 931
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    move-wide/from16 v18, v7

    .end local v7    # "begin":J
    .local v18, "begin":J
    iget-wide v6, v0, Landroid/view/Choreographer$CallbackRecord;->dueTime:J

    sub-long v6, v16, v6

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", dur="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "ms\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Landroid/view/Choreographer$CallbackRecord;->log:Ljava/lang/String;

    .line 929
    invoke-interface {v14, v6, v7}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 928
    .end local v18    # "begin":J
    .restart local v7    # "begin":J
    :cond_3
    move-wide/from16 v18, v7

    .end local v7    # "begin":J
    .restart local v18    # "begin":J
    goto :goto_2

    .line 926
    .end local v12    # "dur":J
    .end local v18    # "begin":J
    .restart local v7    # "begin":J
    :cond_4
    move-wide/from16 v18, v7

    .line 913
    .end local v7    # "begin":J
    :goto_2
    iget-object v6, v0, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v6

    const-wide/16 v10, 0x8

    goto/16 :goto_0

    .line 938
    .end local v0    # "c":Landroid/view/Choreographer$CallbackRecord;
    :cond_5
    iget-object v6, v1, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 939
    const/4 v7, 0x0

    :try_start_2
    iput-boolean v7, v1, Landroid/view/Choreographer;->mCallbacksRunning:Z

    .line 941
    :cond_6
    iget-object v0, v9, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 942
    .local v0, "next":Landroid/view/Choreographer$CallbackRecord;
    invoke-direct {v1, v9}, Landroid/view/Choreographer;->recycleCallbackLocked(Landroid/view/Choreographer$CallbackRecord;)V

    .line 943
    move-object v9, v0

    .line 944
    .end local v0    # "next":Landroid/view/Choreographer$CallbackRecord;
    if-nez v9, :cond_6

    .line 945
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 946
    const-wide/16 v6, 0x8

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 947
    nop

    .line 948
    return-void

    .line 945
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 938
    :catchall_1
    move-exception v0

    iget-object v7, v1, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 939
    const/4 v6, 0x0

    :try_start_4
    iput-boolean v6, v1, Landroid/view/Choreographer;->mCallbacksRunning:Z

    .line 941
    :goto_3
    iget-object v6, v9, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 942
    .local v6, "next":Landroid/view/Choreographer$CallbackRecord;
    invoke-direct {v1, v9}, Landroid/view/Choreographer;->recycleCallbackLocked(Landroid/view/Choreographer$CallbackRecord;)V

    .line 943
    move-object v9, v6

    .line 944
    .end local v6    # "next":Landroid/view/Choreographer$CallbackRecord;
    if-eqz v9, :cond_7

    goto :goto_3

    .line 945
    :cond_7
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 946
    const-wide/16 v6, 0x8

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 947
    throw v0

    .line 945
    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    .line 910
    .end local v9    # "callbacks":Landroid/view/Choreographer$CallbackRecord;
    :catchall_3
    move-exception v0

    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0
.end method

.method blacklist doFrame(JILandroid/view/DisplayEventReceiver$VsyncEventData;)V
    .locals 32
    .param p1, "frameTimeNanos"    # J
    .param p3, "frame"    # I
    .param p4, "vsyncEventData"    # Landroid/view/DisplayEventReceiver$VsyncEventData;

    .line 772
    move-object/from16 v1, p0

    move-wide/from16 v5, p1

    move-object/from16 v15, p4

    iget-wide v13, v15, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameInterval:J

    .line 774
    .local v13, "frameIntervalNanos":J
    const-wide/16 v11, 0x8

    :try_start_0
    invoke-static {v11, v12}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_f

    if-eqz v0, :cond_0

    .line 775
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Choreographer#doFrame "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 776
    invoke-virtual/range {p4 .. p4}, Landroid/view/DisplayEventReceiver$VsyncEventData;->preferredFrameTimeline()Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    move-result-object v2

    iget-wide v2, v2, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->vsyncId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 775
    invoke-static {v11, v12, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 856
    :catchall_0
    move-exception v0

    move-wide/from16 v20, v11

    move-wide v7, v13

    goto/16 :goto_5

    .line 778
    :cond_0
    :goto_0
    :try_start_2
    new-instance v0, Landroid/view/Choreographer$FrameData;

    invoke-direct {v0, v5, v6, v15}, Landroid/view/Choreographer$FrameData;-><init>(JLandroid/view/DisplayEventReceiver$VsyncEventData;)V

    move-object v9, v0

    .line 779
    .local v9, "frameData":Landroid/view/Choreographer$FrameData;
    iget-object v10, v1, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_f

    .line 780
    :try_start_3
    iget-boolean v0, v1, Landroid/view/Choreographer;->mFrameScheduled:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_c

    if-nez v0, :cond_1

    .line 781
    :try_start_4
    const-string v0, "Frame not scheduled"

    invoke-direct {v1, v0}, Landroid/view/Choreographer;->traceMessage(Ljava/lang/String;)V

    .line 782
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 856
    invoke-static {}, Landroid/view/animation/AnimationUtils;->unlockAnimationClock()V

    .line 857
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    .line 782
    return-void

    .line 839
    :catchall_1
    move-exception v0

    move-object v3, v9

    move-object/from16 v27, v10

    move-wide/from16 v20, v11

    move-wide v7, v13

    goto/16 :goto_4

    .line 791
    :cond_1
    move-wide/from16 v3, p1

    .line 792
    .local v3, "intendedFrameTimeNanos":J
    :try_start_5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_c

    move-wide/from16 v16, v7

    .line 793
    .local v16, "startNanos":J
    sub-long v18, v16, v5

    .line 794
    .local v18, "jitterNanos":J
    cmp-long v0, v18, v13

    if-ltz v0, :cond_3

    .line 795
    :try_start_6
    div-long v7, v18, v13

    .line 796
    .local v7, "skippedFrames":J
    sget v0, Landroid/view/Choreographer;->SKIPPED_FRAME_WARNING_LIMIT:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    int-to-long v11, v0

    cmp-long v0, v7, v11

    if-ltz v0, :cond_2

    .line 797
    :try_start_7
    const-string v0, "Choreographer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Skipped "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, " frames!  The application may be doing too much work on its main thread."

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    :cond_2
    rem-long v11, v18, v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 808
    .local v11, "lastFrameOffset":J
    sub-long v5, v16, v11

    .line 809
    .end local p1    # "frameTimeNanos":J
    .local v5, "frameTimeNanos":J
    :try_start_8
    invoke-virtual {v9, v5, v6}, Landroid/view/Choreographer$FrameData;->setFrameTimeNanos(J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-wide v11, v5

    goto :goto_1

    .line 839
    .end local v3    # "intendedFrameTimeNanos":J
    .end local v7    # "skippedFrames":J
    .end local v11    # "lastFrameOffset":J
    .end local v16    # "startNanos":J
    .end local v18    # "jitterNanos":J
    :catchall_2
    move-exception v0

    move-object v3, v9

    move-object/from16 v27, v10

    move-wide v7, v13

    const-wide/16 v20, 0x8

    goto/16 :goto_4

    .end local v5    # "frameTimeNanos":J
    .restart local p1    # "frameTimeNanos":J
    :catchall_3
    move-exception v0

    move-object v3, v9

    move-object/from16 v27, v10

    move-wide v7, v13

    const-wide/16 v20, 0x8

    goto/16 :goto_4

    .line 794
    .restart local v3    # "intendedFrameTimeNanos":J
    .restart local v16    # "startNanos":J
    .restart local v18    # "jitterNanos":J
    :cond_3
    move-wide v11, v5

    .line 812
    .end local p1    # "frameTimeNanos":J
    .local v11, "frameTimeNanos":J
    :goto_1
    :try_start_9
    iget-wide v5, v1, Landroid/view/Choreographer;->mLastFrameTimeNanos:J
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_b

    cmp-long v0, v11, v5

    if-gez v0, :cond_4

    .line 817
    :try_start_a
    const-string v0, "Frame time goes backward"

    invoke-direct {v1, v0}, Landroid/view/Choreographer;->traceMessage(Ljava/lang/String;)V

    .line 818
    invoke-direct/range {p0 .. p0}, Landroid/view/Choreographer;->scheduleVsyncLocked()V

    .line 819
    monitor-exit v10
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 856
    invoke-static {}, Landroid/view/animation/AnimationUtils;->unlockAnimationClock()V

    .line 857
    const-wide/16 v5, 0x8

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 819
    return-void

    .line 839
    .end local v3    # "intendedFrameTimeNanos":J
    .end local v16    # "startNanos":J
    .end local v18    # "jitterNanos":J
    :catchall_4
    move-exception v0

    move-object v3, v9

    move-object/from16 v27, v10

    move-wide v5, v11

    move-wide v7, v13

    const-wide/16 v20, 0x8

    goto/16 :goto_4

    .line 822
    .restart local v3    # "intendedFrameTimeNanos":J
    .restart local v16    # "startNanos":J
    .restart local v18    # "jitterNanos":J
    :cond_4
    :try_start_b
    iget v0, v1, Landroid/view/Choreographer;->mFPSDivisor:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    const/4 v7, 0x1

    if-le v0, v7, :cond_6

    .line 823
    sub-long v5, v11, v5

    .line 824
    .local v5, "timeSinceVsync":J
    int-to-long v7, v0

    mul-long/2addr v7, v13

    cmp-long v0, v5, v7

    if-gez v0, :cond_5

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-lez v0, :cond_5

    .line 825
    :try_start_c
    const-string v0, "Frame skipped due to FPSDivisor"

    invoke-direct {v1, v0}, Landroid/view/Choreographer;->traceMessage(Ljava/lang/String;)V

    .line 826
    invoke-direct/range {p0 .. p0}, Landroid/view/Choreographer;->scheduleVsyncLocked()V

    .line 827
    monitor-exit v10
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 856
    invoke-static {}, Landroid/view/animation/AnimationUtils;->unlockAnimationClock()V

    .line 857
    const-wide/16 v20, 0x8

    invoke-static/range {v20 .. v21}, Landroid/os/Trace;->traceEnd(J)V

    .line 827
    return-void

    .line 839
    .end local v3    # "intendedFrameTimeNanos":J
    .end local v5    # "timeSinceVsync":J
    .end local v16    # "startNanos":J
    .end local v18    # "jitterNanos":J
    :catchall_5
    move-exception v0

    const-wide/16 v20, 0x8

    move-object v3, v9

    move-object/from16 v27, v10

    move-wide v5, v11

    move-wide v7, v13

    goto/16 :goto_4

    .line 824
    .restart local v3    # "intendedFrameTimeNanos":J
    .restart local v5    # "timeSinceVsync":J
    .restart local v16    # "startNanos":J
    .restart local v18    # "jitterNanos":J
    :cond_5
    const-wide/16 v20, 0x8

    goto :goto_2

    .line 822
    .end local v5    # "timeSinceVsync":J
    :cond_6
    const-wide/16 v20, 0x8

    .line 831
    :goto_2
    :try_start_d
    iget-object v2, v1, Landroid/view/Choreographer;->mFrameInfo:Landroid/graphics/FrameInfo;

    .line 832
    invoke-virtual/range {p4 .. p4}, Landroid/view/DisplayEventReceiver$VsyncEventData;->preferredFrameTimeline()Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    move-result-object v0

    iget-wide v7, v0, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->vsyncId:J

    .line 833
    invoke-virtual/range {p4 .. p4}, Landroid/view/DisplayEventReceiver$VsyncEventData;->preferredFrameTimeline()Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    move-result-object v0

    iget-wide v5, v0, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->deadline:J
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_a

    move-wide/from16 v22, v13

    .end local v13    # "frameIntervalNanos":J
    .local v22, "frameIntervalNanos":J
    :try_start_e
    iget-wide v13, v15, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameInterval:J
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    .line 831
    move-wide/from16 v24, v5

    move-wide v5, v11

    const/4 v0, 0x1

    move-object/from16 v26, v9

    move-object/from16 v27, v10

    .end local v9    # "frameData":Landroid/view/Choreographer$FrameData;
    .local v26, "frameData":Landroid/view/Choreographer$FrameData;
    move-wide/from16 v9, v24

    move-wide/from16 v28, v11

    .end local v11    # "frameTimeNanos":J
    .local v28, "frameTimeNanos":J
    move-wide/from16 v11, v16

    move-wide/from16 v30, v22

    .end local v22    # "frameIntervalNanos":J
    .local v30, "frameIntervalNanos":J
    :try_start_f
    invoke-virtual/range {v2 .. v14}, Landroid/graphics/FrameInfo;->setVsync(JJJJJJ)V

    .line 835
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/view/Choreographer;->mFrameScheduled:Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    .line 836
    move-wide/from16 v5, v28

    .end local v28    # "frameTimeNanos":J
    .local v5, "frameTimeNanos":J
    :try_start_10
    iput-wide v5, v1, Landroid/view/Choreographer;->mLastFrameTimeNanos:J
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    .line 837
    move-wide/from16 v7, v30

    .end local v30    # "frameIntervalNanos":J
    .local v7, "frameIntervalNanos":J
    :try_start_11
    iput-wide v7, v1, Landroid/view/Choreographer;->mLastFrameIntervalNanos:J

    .line 838
    iput-object v15, v1, Landroid/view/Choreographer;->mLastVsyncEventData:Landroid/view/DisplayEventReceiver$VsyncEventData;

    .line 839
    .end local v3    # "intendedFrameTimeNanos":J
    .end local v18    # "jitterNanos":J
    monitor-exit v27
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    .line 841
    const-wide/32 v3, 0xf4240

    :try_start_12
    div-long v11, v5, v3

    invoke-static {v11, v12}, Landroid/view/animation/AnimationUtils;->lockAnimationClock(J)V

    .line 843
    iget-object v3, v1, Landroid/view/Choreographer;->mFrameInfo:Landroid/graphics/FrameInfo;

    invoke-virtual {v3}, Landroid/graphics/FrameInfo;->markInputHandlingStart()V

    .line 844
    move-object/from16 v3, v26

    .end local v26    # "frameData":Landroid/view/Choreographer$FrameData;
    .local v3, "frameData":Landroid/view/Choreographer$FrameData;
    invoke-virtual {v1, v2, v3, v7, v8}, Landroid/view/Choreographer;->doCallbacks(ILandroid/view/Choreographer$FrameData;J)V

    .line 846
    iget-object v2, v1, Landroid/view/Choreographer;->mFrameInfo:Landroid/graphics/FrameInfo;

    invoke-virtual {v2}, Landroid/graphics/FrameInfo;->markAnimationsStart()V

    .line 847
    invoke-virtual {v1, v0, v3, v7, v8}, Landroid/view/Choreographer;->doCallbacks(ILandroid/view/Choreographer$FrameData;J)V

    .line 848
    const/4 v0, 0x2

    invoke-virtual {v1, v0, v3, v7, v8}, Landroid/view/Choreographer;->doCallbacks(ILandroid/view/Choreographer$FrameData;J)V

    .line 851
    iget-object v0, v1, Landroid/view/Choreographer;->mFrameInfo:Landroid/graphics/FrameInfo;

    invoke-virtual {v0}, Landroid/graphics/FrameInfo;->markPerformTraversalsStart()V

    .line 852
    const/4 v0, 0x3

    invoke-virtual {v1, v0, v3, v7, v8}, Landroid/view/Choreographer;->doCallbacks(ILandroid/view/Choreographer$FrameData;J)V

    .line 854
    const/4 v0, 0x4

    invoke-virtual {v1, v0, v3, v7, v8}, Landroid/view/Choreographer;->doCallbacks(ILandroid/view/Choreographer$FrameData;J)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_d

    .line 856
    .end local v3    # "frameData":Landroid/view/Choreographer$FrameData;
    invoke-static {}, Landroid/view/animation/AnimationUtils;->unlockAnimationClock()V

    .line 857
    invoke-static/range {v20 .. v21}, Landroid/os/Trace;->traceEnd(J)V

    .line 858
    nop

    .line 866
    return-void

    .line 839
    .end local v16    # "startNanos":J
    .restart local v26    # "frameData":Landroid/view/Choreographer$FrameData;
    :catchall_6
    move-exception v0

    move-object/from16 v3, v26

    .end local v26    # "frameData":Landroid/view/Choreographer$FrameData;
    .restart local v3    # "frameData":Landroid/view/Choreographer$FrameData;
    goto :goto_4

    .end local v3    # "frameData":Landroid/view/Choreographer$FrameData;
    .end local v7    # "frameIntervalNanos":J
    .restart local v26    # "frameData":Landroid/view/Choreographer$FrameData;
    .restart local v30    # "frameIntervalNanos":J
    :catchall_7
    move-exception v0

    move-object/from16 v3, v26

    move-wide/from16 v7, v30

    .end local v26    # "frameData":Landroid/view/Choreographer$FrameData;
    .end local v30    # "frameIntervalNanos":J
    .restart local v3    # "frameData":Landroid/view/Choreographer$FrameData;
    .restart local v7    # "frameIntervalNanos":J
    goto :goto_4

    .end local v3    # "frameData":Landroid/view/Choreographer$FrameData;
    .end local v5    # "frameTimeNanos":J
    .end local v7    # "frameIntervalNanos":J
    .restart local v26    # "frameData":Landroid/view/Choreographer$FrameData;
    .restart local v28    # "frameTimeNanos":J
    .restart local v30    # "frameIntervalNanos":J
    :catchall_8
    move-exception v0

    move-object/from16 v3, v26

    move-wide/from16 v5, v28

    move-wide/from16 v7, v30

    .end local v26    # "frameData":Landroid/view/Choreographer$FrameData;
    .end local v28    # "frameTimeNanos":J
    .end local v30    # "frameIntervalNanos":J
    .restart local v3    # "frameData":Landroid/view/Choreographer$FrameData;
    .restart local v5    # "frameTimeNanos":J
    .restart local v7    # "frameIntervalNanos":J
    goto :goto_4

    .end local v3    # "frameData":Landroid/view/Choreographer$FrameData;
    .end local v5    # "frameTimeNanos":J
    .end local v7    # "frameIntervalNanos":J
    .restart local v9    # "frameData":Landroid/view/Choreographer$FrameData;
    .restart local v11    # "frameTimeNanos":J
    .restart local v22    # "frameIntervalNanos":J
    :catchall_9
    move-exception v0

    move-object v3, v9

    move-object/from16 v27, v10

    move-wide v5, v11

    move-wide/from16 v7, v22

    .end local v9    # "frameData":Landroid/view/Choreographer$FrameData;
    .end local v11    # "frameTimeNanos":J
    .end local v22    # "frameIntervalNanos":J
    .restart local v3    # "frameData":Landroid/view/Choreographer$FrameData;
    .restart local v5    # "frameTimeNanos":J
    .restart local v7    # "frameIntervalNanos":J
    goto :goto_4

    .end local v3    # "frameData":Landroid/view/Choreographer$FrameData;
    .end local v5    # "frameTimeNanos":J
    .end local v7    # "frameIntervalNanos":J
    .restart local v9    # "frameData":Landroid/view/Choreographer$FrameData;
    .restart local v11    # "frameTimeNanos":J
    .restart local v13    # "frameIntervalNanos":J
    :catchall_a
    move-exception v0

    move-object v3, v9

    move-object/from16 v27, v10

    move-wide v5, v11

    move-wide v7, v13

    goto :goto_3

    :catchall_b
    move-exception v0

    move-object v3, v9

    move-object/from16 v27, v10

    move-wide v5, v11

    move-wide v7, v13

    const-wide/16 v20, 0x8

    .end local v9    # "frameData":Landroid/view/Choreographer$FrameData;
    .end local v11    # "frameTimeNanos":J
    .end local v13    # "frameIntervalNanos":J
    .restart local v3    # "frameData":Landroid/view/Choreographer$FrameData;
    .restart local v5    # "frameTimeNanos":J
    .restart local v7    # "frameIntervalNanos":J
    :goto_3
    goto :goto_4

    .end local v3    # "frameData":Landroid/view/Choreographer$FrameData;
    .end local v5    # "frameTimeNanos":J
    .end local v7    # "frameIntervalNanos":J
    .restart local v9    # "frameData":Landroid/view/Choreographer$FrameData;
    .restart local v13    # "frameIntervalNanos":J
    .restart local p1    # "frameTimeNanos":J
    :catchall_c
    move-exception v0

    move-object v3, v9

    move-object/from16 v27, v10

    move-wide/from16 v20, v11

    move-wide v7, v13

    .end local v9    # "frameData":Landroid/view/Choreographer$FrameData;
    .end local v13    # "frameIntervalNanos":J
    .end local p1    # "frameTimeNanos":J
    .restart local v3    # "frameData":Landroid/view/Choreographer$FrameData;
    .restart local v5    # "frameTimeNanos":J
    .restart local v7    # "frameIntervalNanos":J
    :goto_4
    :try_start_13
    monitor-exit v27
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_e

    .end local v5    # "frameTimeNanos":J
    .end local v7    # "frameIntervalNanos":J
    .end local p0    # "this":Landroid/view/Choreographer;
    .end local p3    # "frame":I
    .end local p4    # "vsyncEventData":Landroid/view/DisplayEventReceiver$VsyncEventData;
    :try_start_14
    throw v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_d

    .line 856
    .end local v3    # "frameData":Landroid/view/Choreographer$FrameData;
    .restart local v5    # "frameTimeNanos":J
    .restart local v7    # "frameIntervalNanos":J
    .restart local p0    # "this":Landroid/view/Choreographer;
    .restart local p3    # "frame":I
    .restart local p4    # "vsyncEventData":Landroid/view/DisplayEventReceiver$VsyncEventData;
    :catchall_d
    move-exception v0

    goto :goto_5

    .line 839
    .restart local v3    # "frameData":Landroid/view/Choreographer$FrameData;
    :catchall_e
    move-exception v0

    goto :goto_4

    .line 856
    .end local v3    # "frameData":Landroid/view/Choreographer$FrameData;
    .end local v5    # "frameTimeNanos":J
    .end local v7    # "frameIntervalNanos":J
    .restart local v13    # "frameIntervalNanos":J
    .restart local p1    # "frameTimeNanos":J
    :catchall_f
    move-exception v0

    move-wide/from16 v20, v11

    move-wide v7, v13

    .end local v13    # "frameIntervalNanos":J
    .end local p1    # "frameTimeNanos":J
    .restart local v5    # "frameTimeNanos":J
    .restart local v7    # "frameIntervalNanos":J
    :goto_5
    invoke-static {}, Landroid/view/animation/AnimationUtils;->unlockAnimationClock()V

    .line 857
    invoke-static/range {v20 .. v21}, Landroid/os/Trace;->traceEnd(J)V

    .line 858
    throw v0
.end method

.method greylist-max-o doScheduleCallback(I)V
    .locals 4
    .param p1, "callbackType"    # I

    .line 959
    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 960
    :try_start_0
    iget-boolean v1, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    if-nez v1, :cond_0

    .line 961
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 962
    .local v1, "now":J
    iget-object v3, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    aget-object v3, v3, p1

    invoke-virtual {v3, v1, v2}, Landroid/view/Choreographer$CallbackQueue;->hasDueCallbacksLocked(J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 963
    invoke-direct {p0, v1, v2}, Landroid/view/Choreographer;->scheduleFrameLocked(J)V

    .line 966
    .end local v1    # "now":J
    :cond_0
    monitor-exit v0

    .line 967
    return-void

    .line 966
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method greylist-max-o doScheduleVsync()V
    .locals 2

    .line 951
    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 952
    :try_start_0
    iget-boolean v1, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    if-eqz v1, :cond_0

    .line 953
    invoke-direct {p0}, Landroid/view/Choreographer;->scheduleVsyncLocked()V

    .line 955
    :cond_0
    monitor-exit v0

    .line 956
    return-void

    .line 955
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method greylist-max-o dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 431
    .local v0, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Choreographer:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 432
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mFrameScheduled="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 433
    iget-boolean v1, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 434
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mLastFrameTime="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 435
    iget-wide v1, p0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    const-wide/32 v3, 0xf4240

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 436
    return-void
.end method

.method public blacklist getFrameDeadline()J
    .locals 2

    .line 750
    iget-object v0, p0, Landroid/view/Choreographer;->mLastVsyncEventData:Landroid/view/DisplayEventReceiver$VsyncEventData;

    invoke-virtual {v0}, Landroid/view/DisplayEventReceiver$VsyncEventData;->preferredFrameTimeline()Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    move-result-object v0

    iget-wide v0, v0, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->deadline:J

    return-wide v0
.end method

.method public greylist-max-o getFrameIntervalNanos()J
    .locals 3

    .line 424
    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 425
    :try_start_0
    iget-wide v1, p0, Landroid/view/Choreographer;->mLastFrameIntervalNanos:J

    monitor-exit v0

    return-wide v1

    .line 426
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist getFrameTime()J
    .locals 4

    .line 665
    invoke-virtual {p0}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public greylist getFrameTimeNanos()J
    .locals 3

    .line 678
    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 679
    :try_start_0
    iget-boolean v1, p0, Landroid/view/Choreographer;->mCallbacksRunning:Z

    if-eqz v1, :cond_1

    .line 683
    sget-boolean v1, Landroid/view/Choreographer;->USE_FRAME_TIME:Z

    if-eqz v1, :cond_0

    iget-wide v1, p0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    :goto_0
    monitor-exit v0

    return-wide v1

    .line 680
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "This method must only be called as part of a callback while a frame is in progress."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/view/Choreographer;
    throw v1

    .line 684
    .restart local p0    # "this":Landroid/view/Choreographer;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o getLastFrameTimeNanos()J
    .locals 3

    .line 694
    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 695
    :try_start_0
    sget-boolean v1, Landroid/view/Choreographer;->USE_FRAME_TIME:Z

    if-eqz v1, :cond_0

    iget-wide v1, p0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    :goto_0
    monitor-exit v0

    return-wide v1

    .line 696
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist getVsyncId()J
    .locals 2

    .line 739
    iget-object v0, p0, Landroid/view/Choreographer;->mLastVsyncEventData:Landroid/view/DisplayEventReceiver$VsyncEventData;

    invoke-virtual {v0}, Landroid/view/DisplayEventReceiver$VsyncEventData;->preferredFrameTimeline()Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    move-result-object v0

    iget-wide v0, v0, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->vsyncId:J

    return-wide v0
.end method

.method public greylist postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V
    .locals 6
    .param p1, "callbackType"    # I
    .param p2, "action"    # Ljava/lang/Runnable;
    .param p3, "token"    # Ljava/lang/Object;

    .line 454
    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/view/Choreographer;->postCallbackDelayed(ILjava/lang/Runnable;Ljava/lang/Object;J)V

    .line 455
    return-void
.end method

.method public greylist postCallbackDelayed(ILjava/lang/Runnable;Ljava/lang/Object;J)V
    .locals 2
    .param p1, "callbackType"    # I
    .param p2, "action"    # Ljava/lang/Runnable;
    .param p3, "token"    # Ljava/lang/Object;
    .param p4, "delayMillis"    # J

    .line 475
    if-eqz p2, :cond_1

    .line 478
    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-gt p1, v0, :cond_0

    .line 482
    invoke-direct/range {p0 .. p5}, Landroid/view/Choreographer;->postCallbackDelayedInternal(ILjava/lang/Object;Ljava/lang/Object;J)V

    .line 483
    return-void

    .line 479
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callbackType is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 476
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "action must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/view/Choreographer$FrameCallback;

    .line 583
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    .line 584
    return-void
.end method

.method public whitelist postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V
    .locals 6
    .param p1, "callback"    # Landroid/view/Choreographer$FrameCallback;
    .param p2, "delayMillis"    # J

    .line 599
    if-eqz p1, :cond_0

    .line 603
    const/4 v1, 0x1

    sget-object v3, Landroid/view/Choreographer;->FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

    move-object v0, p0

    move-object v2, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/view/Choreographer;->postCallbackDelayedInternal(ILjava/lang/Object;Ljava/lang/Object;J)V

    .line 605
    return-void

    .line 600
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist postVsyncCallback(Landroid/view/Choreographer$VsyncCallback;)V
    .locals 6
    .param p1, "callback"    # Landroid/view/Choreographer$VsyncCallback;

    .line 527
    if-eqz p1, :cond_0

    .line 531
    const/4 v1, 0x1

    sget-object v3, Landroid/view/Choreographer;->VSYNC_CALLBACK_TOKEN:Ljava/lang/Object;

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/view/Choreographer;->postCallbackDelayedInternal(ILjava/lang/Object;Ljava/lang/Object;J)V

    .line 532
    return-void

    .line 528
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V
    .locals 2
    .param p1, "callbackType"    # I
    .param p2, "action"    # Ljava/lang/Runnable;
    .param p3, "token"    # Ljava/lang/Object;

    .line 550
    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-gt p1, v0, :cond_0

    .line 554
    invoke-direct {p0, p1, p2, p3}, Landroid/view/Choreographer;->removeCallbacksInternal(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 555
    return-void

    .line 551
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callbackType is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/view/Choreographer$FrameCallback;

    .line 616
    if-eqz p1, :cond_0

    .line 620
    const/4 v0, 0x1

    sget-object v1, Landroid/view/Choreographer;->FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

    invoke-direct {p0, v0, p1, v1}, Landroid/view/Choreographer;->removeCallbacksInternal(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 621
    return-void

    .line 617
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist removeVsyncCallback(Landroid/view/Choreographer$VsyncCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/view/Choreographer$VsyncCallback;

    .line 631
    if-eqz p1, :cond_0

    .line 635
    const/4 v0, 0x1

    sget-object v1, Landroid/view/Choreographer;->VSYNC_CALLBACK_TOKEN:Ljava/lang/Object;

    invoke-direct {p0, v0, p1, v1}, Landroid/view/Choreographer;->removeCallbacksInternal(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 636
    return-void

    .line 632
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist scheduleVsyncSS()V
    .locals 2

    .line 975
    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 976
    :try_start_0
    iget-object v1, p0, Landroid/view/Choreographer;->mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

    invoke-virtual {v1}, Landroid/view/Choreographer$FrameDisplayEventReceiver;->onVsyncSS()V

    .line 977
    monitor-exit v0

    .line 978
    return-void

    .line 977
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist setEnabledDebugCallback(ZLjava/util/function/BiConsumer;II)V
    .locals 0
    .param p1, "enabled"    # Z
    .param p3, "callStackCnt"    # I
    .param p4, "dispatchThresholdMs"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .line 1023
    .local p2, "consumer":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Ljava/lang/String;Ljava/lang/String;>;"
    iput-boolean p1, p0, Landroid/view/Choreographer;->mEnabledDebugCallback:Z

    .line 1024
    iput-object p2, p0, Landroid/view/Choreographer;->mDebugCallbackConsumer:Ljava/util/function/BiConsumer;

    .line 1025
    iput p3, p0, Landroid/view/Choreographer;->mDebugCallStackCnt:I

    .line 1026
    iput p4, p0, Landroid/view/Choreographer;->mDebugDispatchThresholdMs:I

    .line 1027
    return-void
.end method

.method greylist-max-o setFPSDivisor(I)V
    .locals 0
    .param p1, "divisor"    # I

    .line 754
    if-gtz p1, :cond_0

    const/4 p1, 0x1

    .line 755
    :cond_0
    iput p1, p0, Landroid/view/Choreographer;->mFPSDivisor:I

    .line 756
    invoke-static {p1}, Landroid/view/ThreadedRenderer;->setFPSDivisor(I)V

    .line 757
    return-void
.end method
