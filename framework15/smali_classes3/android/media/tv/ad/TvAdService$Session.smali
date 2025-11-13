.class public abstract Landroid/media/tv/ad/TvAdService$Session;
.super Ljava/lang/Object;
.source "TvAdService.java"

# interfaces
.implements Landroid/view/KeyEvent$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ad/TvAdService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Session"
.end annotation


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

.field final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mMediaFrame:Landroid/graphics/Rect;

.field private blacklist mMediaView:Landroid/view/View;

.field private blacklist mMediaViewCleanUpTask:Landroid/media/tv/ad/TvAdService$MediaViewCleanUpTask;

.field private blacklist mMediaViewContainer:Landroid/widget/FrameLayout;

.field private blacklist mMediaViewEnabled:Z

.field private final blacklist mPendingActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSessionCallback:Landroid/media/tv/ad/ITvAdSessionCallback;

.field private blacklist mSurface:Landroid/view/Surface;

.field private final blacklist mWindowManager:Landroid/view/WindowManager;

.field private blacklist mWindowParams:Landroid/view/WindowManager$LayoutParams;

.field private blacklist mWindowToken:Landroid/os/IBinder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmMediaFrame(Landroid/media/tv/ad/TvAdService$Session;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/ad/TvAdService$Session;->mMediaFrame:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMediaViewEnabled(Landroid/media/tv/ad/TvAdService$Session;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/media/tv/ad/TvAdService$Session;->mMediaViewEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSessionCallback(Landroid/media/tv/ad/TvAdService$Session;)Landroid/media/tv/ad/ITvAdSessionCallback;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/ad/TvAdService$Session;->mSessionCallback:Landroid/media/tv/ad/ITvAdSessionCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWindowToken(Landroid/media/tv/ad/TvAdService$Session;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/ad/TvAdService$Session;->mWindowToken:Landroid/os/IBinder;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMediaViewEnabled(Landroid/media/tv/ad/TvAdService$Session;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/media/tv/ad/TvAdService$Session;->mMediaViewEnabled:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$minitialize(Landroid/media/tv/ad/TvAdService$Session;Landroid/media/tv/ad/ITvAdSessionCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/tv/ad/TvAdService$Session;->initialize(Landroid/media/tv/ad/ITvAdSessionCallback;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/KeyEvent$DispatcherState;

    invoke-direct {v0}, Landroid/view/KeyEvent$DispatcherState;-><init>()V

    iput-object v0, p0, Landroid/media/tv/ad/TvAdService$Session;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/tv/ad/TvAdService$Session;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/tv/ad/TvAdService$Session;->mPendingActions:Ljava/util/List;

    iput-object p1, p0, Landroid/media/tv/ad/TvAdService$Session;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/media/tv/ad/TvAdService$Session;->mWindowManager:Landroid/view/WindowManager;

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/tv/ad/TvAdService$Session;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private blacklist executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/ad/TvAdService$Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/ad/TvAdService$Session;->mSessionCallback:Landroid/media/tv/ad/ITvAdSessionCallback;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/ad/TvAdService$Session;->mPendingActions:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/media/tv/ad/TvAdService$Session;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/media/tv/ad/TvAdService$Session;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist initialize(Landroid/media/tv/ad/ITvAdSessionCallback;)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/ad/TvAdService$Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Landroid/media/tv/ad/TvAdService$Session;->mSessionCallback:Landroid/media/tv/ad/ITvAdSessionCallback;

    iget-object v1, p0, Landroid/media/tv/ad/TvAdService$Session;->mPendingActions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/media/tv/ad/TvAdService$Session;->mPendingActions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method blacklist createMediaView(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    .locals 11

    iget-object v0, p0, Landroid/media/tv/ad/TvAdService$Session;->mMediaViewContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/tv/ad/TvAdService$Session;->removeMediaView(Z)V

    :cond_0
    iput-object p1, p0, Landroid/media/tv/ad/TvAdService$Session;->mWindowToken:Landroid/os/IBinder;

    iput-object p2, p0, Landroid/media/tv/ad/TvAdService$Session;->mMediaFrame:Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/media/tv/ad/TvAdService$Session;->onMediaViewSizeChanged(II)V

    iget-boolean v0, p0, Landroid/media/tv/ad/TvAdService$Session;->mMediaViewEnabled:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/media/tv/ad/TvAdService$Session;->onCreateMediaView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/ad/TvAdService$Session;->mMediaView:Landroid/view/View;

    iget-object v0, p0, Landroid/media/tv/ad/TvAdService$Session;->mMediaView:Landroid/view/View;

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Landroid/media/tv/ad/TvAdService$Session;->mMediaViewCleanUpTask:Landroid/media/tv/ad/TvAdService$MediaViewCleanUpTask;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/media/tv/ad/TvAdService$Session;->mMediaViewCleanUpTask:Landroid/media/tv/ad/TvAdService$MediaViewCleanUpTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/tv/ad/TvAdService$MediaViewCleanUpTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/ad/TvAdService$Session;->mMediaViewCleanUpTask:Landroid/media/tv/ad/TvAdService$MediaViewCleanUpTask;

    :cond_3
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Landroid/media/tv/ad/TvAdService$Session;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/media/tv/ad/TvAdService$Session;->mMediaViewContainer:Landroid/widget/FrameLayout;

    iget-object v0, p0, Landroid/media/tv/ad/TvAdService$Session;->mMediaViewContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Landroid/media/tv/ad/TvAdService$Session;->mMediaView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const/16 v0, 0x3e9

    const/16 v1, 0x218

    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v2

    if-eqz v2, :cond_4

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    :cond_4
    new-instance v10, Landroid/view/WindowManager$LayoutParams;

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    sub-int v3, v2, v3

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iget v4, p2, Landroid/graphics/Rect;->top:I

    sub-int v4, v2, v4

    iget v5, p2, Landroid/graphics/Rect;->left:I

    iget v6, p2, Landroid/graphics/Rect;->top:I

    const/4 v9, -0x2

    move-object v2, v10

    move v7, v0

    move v8, v1

    invoke-direct/range {v2 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iput-object v10, p0, Landroid/media/tv/ad/TvAdService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Landroid/media/tv/ad/TvAdService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v3, v3, 0x40

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object v2, p0, Landroid/media/tv/ad/TvAdService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const v3, 0x800033

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v2, p0, Landroid/media/tv/ad/TvAdService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput-object p1, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/media/tv/ad/TvAdService$Session;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Landroid/media/tv/ad/TvAdService$Session;->mMediaViewContainer:Landroid/widget/FrameLayout;

    iget-object v4, p0, Landroid/media/tv/ad/TvAdService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method blacklist dispatchInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;)I
    .locals 4

    instance-of v0, p1, Landroid/view/KeyEvent;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/view/KeyEvent;

    iget-object v2, p0, Landroid/media/tv/ad/TvAdService$Session;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    invoke-virtual {v0, p0, v2, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    goto :goto_0

    :cond_1
    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, v0}, Landroid/media/tv/ad/TvAdService$Session;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_5

    return v1

    :cond_2
    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_3

    invoke-virtual {p0, v0}, Landroid/media/tv/ad/TvAdService$Session;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_5

    return v1

    :cond_3
    invoke-virtual {p0, v0}, Landroid/media/tv/ad/TvAdService$Session;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_5

    return v1

    :cond_4
    :goto_0
    nop

    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method blacklist dispatchSurfaceChanged(III)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroid/media/tv/ad/TvAdService$Session;->onSurfaceChanged(III)V

    return-void
.end method

.method public blacklist isMediaViewEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/tv/ad/TvAdService$Session;->mMediaViewEnabled:Z

    return v0
.end method

.method public blacklist layoutSurface(IIII)V
    .locals 7

    if-gt p1, p3, :cond_0

    if-gt p2, p4, :cond_0

    new-instance v6, Landroid/media/tv/ad/TvAdService$Session$7;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/tv/ad/TvAdService$Session$7;-><init>(Landroid/media/tv/ad/TvAdService$Session;IIII)V

    invoke-direct {p0, v6}, Landroid/media/tv/ad/TvAdService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid parameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist notifyError(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/media/tv/ad/TvAdService$Session;->onError(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public blacklist notifySessionStateChanged(II)V
    .locals 1

    new-instance v0, Landroid/media/tv/ad/TvAdService$Session$9;

    invoke-direct {v0, p0, p1, p2}, Landroid/media/tv/ad/TvAdService$Session$9;-><init>(Landroid/media/tv/ad/TvAdService$Session;II)V

    invoke-direct {p0, v0}, Landroid/media/tv/ad/TvAdService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method blacklist notifyTvInputSessionData(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/media/tv/ad/TvAdService$Session;->onTvInputSessionData(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method blacklist notifyTvMessage(ILandroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/media/tv/ad/TvAdService$Session;->onTvMessage(ILandroid/os/Bundle;)V

    return-void
.end method

.method public blacklist onCreateMediaView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onCurrentChannelUri(Landroid/net/Uri;)V
    .locals 0

    return-void
.end method

.method public blacklist onCurrentTvInputId(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public blacklist onCurrentVideoBounds(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public blacklist onError(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public blacklist onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist onMediaViewSizeChanged(II)V
    .locals 0

    return-void
.end method

.method public abstract blacklist onRelease()V
.end method

.method public blacklist onResetAdService()V
    .locals 0

    return-void
.end method

.method public abstract blacklist onSetSurface(Landroid/view/Surface;)Z
.end method

.method public blacklist onSigningResult(Ljava/lang/String;[B)V
    .locals 0

    return-void
.end method

.method public blacklist onStartAdService()V
    .locals 0

    return-void
.end method

.method public blacklist onStopAdService()V
    .locals 0

    return-void
.end method

.method public blacklist onSurfaceChanged(III)V
    .locals 0

    return-void
.end method

.method public blacklist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist onTrackInfoList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public blacklist onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist onTvInputSessionData(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public blacklist onTvMessage(ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method blacklist relayoutMediaView(Landroid/graphics/Rect;)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/ad/TvAdService$Session;->mMediaFrame:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/tv/ad/TvAdService$Session;->mMediaFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/media/tv/ad/TvAdService$Session;->mMediaFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/media/tv/ad/TvAdService$Session;->onMediaViewSizeChanged(II)V

    :cond_1
    iput-object p1, p0, Landroid/media/tv/ad/TvAdService$Session;->mMediaFrame:Landroid/graphics/Rect;

    iget-boolean v0, p0, Landroid/media/tv/ad/TvAdService$Session;->mMediaViewEnabled:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/media/tv/ad/TvAdService$Session;->mMediaViewContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/media/tv/ad/TvAdService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Landroid/media/tv/ad/TvAdService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Landroid/media/tv/ad/TvAdService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Landroid/media/tv/ad/TvAdService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v0, p0, Landroid/media/tv/ad/TvAdService$Session;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/media/tv/ad/TvAdService$Session;->mMediaViewContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Landroid/media/tv/ad/TvAdService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method blacklist release()V
    .locals 2

    invoke-virtual {p0}, Landroid/media/tv/ad/TvAdService$Session;->onRelease()V

    iget-object v0, p0, Landroid/media/tv/ad/TvAdService$Session;->mSurface:Landroid/view/Surface;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/tv/ad/TvAdService$Session;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v1, p0, Landroid/media/tv/ad/TvAdService$Session;->mSurface:Landroid/view/Surface;

    :cond_0
    iget-object v0, p0, Landroid/media/tv/ad/TvAdService$Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object v1, p0, Landroid/media/tv/ad/TvAdService$Session;->mSessionCallback:Landroid/media/tv/ad/ITvAdSessionCallback;

    iget-object v1, p0, Landroid/media/tv/ad/TvAdService$Session;->mPendingActions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/media/tv/ad/TvAdService$Session;->removeMediaView(Z)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method blacklist removeMediaView(Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iput-object v0, p0, Landroid/media/tv/ad/TvAdService$Session;->mWindowToken:Landroid/os/IBinder;

    iput-object v0, p0, Landroid/media/tv/ad/TvAdService$Session;->mMediaFrame:Landroid/graphics/Rect;

    :cond_0
    iget-object v1, p0, Landroid/media/tv/ad/TvAdService$Session;->mMediaViewContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/media/tv/ad/TvAdService$Session;->mMediaViewContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Landroid/media/tv/ad/TvAdService$Session;->mMediaView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iput-object v0, p0, Landroid/media/tv/ad/TvAdService$Session;->mMediaView:Landroid/view/View;

    iget-object v1, p0, Landroid/media/tv/ad/TvAdService$Session;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Landroid/media/tv/ad/TvAdService$Session;->mMediaViewContainer:Landroid/widget/FrameLayout;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iput-object v0, p0, Landroid/media/tv/ad/TvAdService$Session;->mMediaViewContainer:Landroid/widget/FrameLayout;

    iput-object v0, p0, Landroid/media/tv/ad/TvAdService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    :cond_1
    return-void
.end method

.method public blacklist requestCurrentChannelUri()V
    .locals 1

    new-instance v0, Landroid/media/tv/ad/TvAdService$Session$3;

    invoke-direct {v0, p0}, Landroid/media/tv/ad/TvAdService$Session$3;-><init>(Landroid/media/tv/ad/TvAdService$Session;)V

    invoke-direct {p0, v0}, Landroid/media/tv/ad/TvAdService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist requestCurrentTvInputId()V
    .locals 1

    new-instance v0, Landroid/media/tv/ad/TvAdService$Session$5;

    invoke-direct {v0, p0}, Landroid/media/tv/ad/TvAdService$Session$5;-><init>(Landroid/media/tv/ad/TvAdService$Session;)V

    invoke-direct {p0, v0}, Landroid/media/tv/ad/TvAdService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist requestCurrentVideoBounds()V
    .locals 1

    new-instance v0, Landroid/media/tv/ad/TvAdService$Session$2;

    invoke-direct {v0, p0}, Landroid/media/tv/ad/TvAdService$Session$2;-><init>(Landroid/media/tv/ad/TvAdService$Session;)V

    invoke-direct {p0, v0}, Landroid/media/tv/ad/TvAdService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist requestSigning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 7

    new-instance v6, Landroid/media/tv/ad/TvAdService$Session$6;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/tv/ad/TvAdService$Session$6;-><init>(Landroid/media/tv/ad/TvAdService$Session;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-direct {p0, v6}, Landroid/media/tv/ad/TvAdService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist requestTrackInfoList()V
    .locals 1

    new-instance v0, Landroid/media/tv/ad/TvAdService$Session$4;

    invoke-direct {v0, p0}, Landroid/media/tv/ad/TvAdService$Session$4;-><init>(Landroid/media/tv/ad/TvAdService$Session;)V

    invoke-direct {p0, v0}, Landroid/media/tv/ad/TvAdService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method blacklist resetAdService()V
    .locals 0

    invoke-virtual {p0}, Landroid/media/tv/ad/TvAdService$Session;->onResetAdService()V

    return-void
.end method

.method blacklist scheduleMediaViewCleanup()V
    .locals 5

    iget-object v0, p0, Landroid/media/tv/ad/TvAdService$Session;->mMediaViewContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/media/tv/ad/TvAdService$MediaViewCleanUpTask;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/media/tv/ad/TvAdService$MediaViewCleanUpTask;-><init>(Landroid/media/tv/ad/TvAdService$MediaViewCleanUpTask-IA;)V

    iput-object v1, p0, Landroid/media/tv/ad/TvAdService$Session;->mMediaViewCleanUpTask:Landroid/media/tv/ad/TvAdService$MediaViewCleanUpTask;

    iget-object v1, p0, Landroid/media/tv/ad/TvAdService$Session;->mMediaViewCleanUpTask:Landroid/media/tv/ad/TvAdService$MediaViewCleanUpTask;

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/view/View;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/media/tv/ad/TvAdService$MediaViewCleanUpTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method blacklist sendCurrentChannelUri(Landroid/net/Uri;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/media/tv/ad/TvAdService$Session;->onCurrentChannelUri(Landroid/net/Uri;)V

    return-void
.end method

.method blacklist sendCurrentTvInputId(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/media/tv/ad/TvAdService$Session;->onCurrentTvInputId(Ljava/lang/String;)V

    return-void
.end method

.method blacklist sendCurrentVideoBounds(Landroid/graphics/Rect;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/media/tv/ad/TvAdService$Session;->onCurrentVideoBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method blacklist sendSigningResult(Ljava/lang/String;[B)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/media/tv/ad/TvAdService$Session;->onSigningResult(Ljava/lang/String;[B)V

    return-void
.end method

.method blacklist sendTrackInfoList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/media/tv/ad/TvAdService$Session;->onTrackInfoList(Ljava/util/List;)V

    return-void
.end method

.method public blacklist sendTvAdSessionData(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    new-instance v0, Landroid/media/tv/ad/TvAdService$Session$8;

    invoke-direct {v0, p0, p1, p2}, Landroid/media/tv/ad/TvAdService$Session$8;-><init>(Landroid/media/tv/ad/TvAdService$Session;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Landroid/media/tv/ad/TvAdService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist setMediaViewEnabled(Z)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/ad/TvAdService$Session;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/ad/TvAdService$Session$1;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/ad/TvAdService$Session$1;-><init>(Landroid/media/tv/ad/TvAdService$Session;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method blacklist setSurface(Landroid/view/Surface;)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/media/tv/ad/TvAdService$Session;->onSetSurface(Landroid/view/Surface;)Z

    iget-object v0, p0, Landroid/media/tv/ad/TvAdService$Session;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/tv/ad/TvAdService$Session;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :cond_0
    iput-object p1, p0, Landroid/media/tv/ad/TvAdService$Session;->mSurface:Landroid/view/Surface;

    return-void
.end method

.method blacklist startAdService()V
    .locals 0

    invoke-virtual {p0}, Landroid/media/tv/ad/TvAdService$Session;->onStartAdService()V

    return-void
.end method

.method blacklist stopAdService()V
    .locals 0

    invoke-virtual {p0}, Landroid/media/tv/ad/TvAdService$Session;->onStopAdService()V

    return-void
.end method
