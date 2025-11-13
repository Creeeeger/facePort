.class public abstract Landroid/media/tv/interactive/TvInteractiveAppService$Session;
.super Ljava/lang/Object;
.source "TvInteractiveAppService.java"

# interfaces
.implements Landroid/view/KeyEvent$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/interactive/TvInteractiveAppService;
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

.field private blacklist mMediaViewCleanUpTask:Landroid/media/tv/interactive/TvInteractiveAppService$MediaViewCleanUpTask;

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

.field private blacklist mSessionCallback:Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

.field private blacklist mSurface:Landroid/view/Surface;

.field private final blacklist mWindowManager:Landroid/view/WindowManager;

.field private blacklist mWindowParams:Landroid/view/WindowManager$LayoutParams;

.field private blacklist mWindowToken:Landroid/os/IBinder;


# direct methods
.method public static synthetic blacklist $r8$lambda$Le6GH3N7Wh_FIfE7hBayPdz5wM0(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->lambda$requestTvRecordingInfo$6(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Q9kswjIRqgSVtCOIONIa6gaWDdo(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Ljava/lang/String;Landroid/media/tv/TvRecordingInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->lambda$setTvRecordingInfo$5(Ljava/lang/String;Landroid/media/tv/TvRecordingInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$bamAdOiUMBxH2vH9Q-uhCmTud6E(Landroid/media/tv/interactive/TvInteractiveAppService$Session;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->lambda$requestSelectedTrackInfo$0()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$g5DsJYXRzwcl5hAnfWHHNzI9z7c(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJILandroid/os/Bundle;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->lambda$requestScheduleRecording$4(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJILandroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$iTr054f9-mzVPwoq9BqOdfwDU2A(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->lambda$requestStopRecording$2(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$lfiugovpuEKmAoHGTOqbbx3YQTg(Landroid/media/tv/interactive/TvInteractiveAppService$Session;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->lambda$requestTvRecordingInfoList$7(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$mHbDzilxkE2-X1T6MsTrT77wEMY(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->lambda$requestStartRecording$1(Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$w8UutNC6l41KhVEC9NxCUi1AY6c(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->lambda$requestScheduleRecording$3(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/os/Bundle;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMediaFrame(Landroid/media/tv/interactive/TvInteractiveAppService$Session;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaFrame:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMediaViewEnabled(Landroid/media/tv/interactive/TvInteractiveAppService$Session;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppService$Session;)Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mSessionCallback:Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWindowToken(Landroid/media/tv/interactive/TvInteractiveAppService$Session;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowToken:Landroid/os/IBinder;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMediaViewEnabled(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewEnabled:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$minitialize(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->initialize(Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/KeyEvent$DispatcherState;

    invoke-direct {v0}, Landroid/view/KeyEvent$DispatcherState;-><init>()V

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mPendingActions:Ljava/util/List;

    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowManager:Landroid/view/WindowManager;

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private blacklist executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mSessionCallback:Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mPendingActions:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mHandler:Landroid/os/Handler;

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

.method private blacklist initialize(Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mSessionCallback:Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mPendingActions:Ljava/util/List;

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
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mPendingActions:Ljava/util/List;

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

.method private synthetic blacklist lambda$requestScheduleRecording$3(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mSessionCallback:Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mSessionCallback:Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;->onRequestScheduleRecording(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TvInteractiveAppService"

    const-string v2, "error in requestScheduleRecording"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private synthetic blacklist lambda$requestScheduleRecording$4(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJILandroid/os/Bundle;)V
    .locals 12

    move-object v1, p0

    :try_start_0
    iget-object v0, v1, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mSessionCallback:Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    if-eqz v0, :cond_0

    iget-object v2, v1, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mSessionCallback:Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move/from16 v10, p8

    move-object/from16 v11, p9

    invoke-interface/range {v2 .. v11}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;->onRequestScheduleRecording2(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "TvInteractiveAppService"

    const-string v3, "error in requestScheduleRecording"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private synthetic blacklist lambda$requestSelectedTrackInfo$0()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mSessionCallback:Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mSessionCallback:Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    invoke-interface {v0}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;->onRequestSelectedTrackInfo()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TvInteractiveAppService"

    const-string v2, "error in requestSelectedTrackInfo"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private synthetic blacklist lambda$requestStartRecording$1(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mSessionCallback:Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mSessionCallback:Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    invoke-interface {v0, p1, p2}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;->onRequestStartRecording(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TvInteractiveAppService"

    const-string v2, "error in requestStartRecording"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private synthetic blacklist lambda$requestStopRecording$2(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mSessionCallback:Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mSessionCallback:Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    invoke-interface {v0, p1}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;->onRequestStopRecording(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TvInteractiveAppService"

    const-string v2, "error in requestStopRecording"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private synthetic blacklist lambda$requestTvRecordingInfo$6(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mSessionCallback:Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mSessionCallback:Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    invoke-interface {v0, p1}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;->onRequestTvRecordingInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TvInteractiveAppService"

    const-string v2, "error in requestTvRecordingInfo"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private synthetic blacklist lambda$requestTvRecordingInfoList$7(I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mSessionCallback:Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mSessionCallback:Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    invoke-interface {v0, p1}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;->onRequestTvRecordingInfoList(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TvInteractiveAppService"

    const-string v2, "error in requestTvRecordingInfoList"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private synthetic blacklist lambda$setTvRecordingInfo$5(Ljava/lang/String;Landroid/media/tv/TvRecordingInfo;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mSessionCallback:Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mSessionCallback:Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    invoke-interface {v0, p1, p2}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;->onSetTvRecordingInfo(Ljava/lang/String;Landroid/media/tv/TvRecordingInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TvInteractiveAppService"

    const-string v2, "error in setTvRecordingInfo"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method blacklist createBiInteractiveApp(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onCreateBiInteractiveAppRequest(Landroid/net/Uri;Landroid/os/Bundle;)V

    return-void
.end method

.method blacklist createMediaView(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    .locals 11

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->removeMediaView(Z)V

    :cond_0
    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowToken:Landroid/os/IBinder;

    iput-object p2, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaFrame:Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onMediaViewSizeChanged(II)V

    iget-boolean v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewEnabled:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onCreateMediaView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaView:Landroid/view/View;

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaView:Landroid/view/View;

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewCleanUpTask:Landroid/media/tv/interactive/TvInteractiveAppService$MediaViewCleanUpTask;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewCleanUpTask:Landroid/media/tv/interactive/TvInteractiveAppService$MediaViewCleanUpTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/tv/interactive/TvInteractiveAppService$MediaViewCleanUpTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewCleanUpTask:Landroid/media/tv/interactive/TvInteractiveAppService$MediaViewCleanUpTask;

    :cond_3
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewContainer:Landroid/widget/FrameLayout;

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaView:Landroid/view/View;

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

    iput-object v10, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v3, v3, 0x40

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const v3, 0x800033

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput-object p1, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewContainer:Landroid/widget/FrameLayout;

    iget-object v4, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method blacklist destroyBiInteractiveApp(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onDestroyBiInteractiveAppRequest(Ljava/lang/String;)V

    return-void
.end method

.method blacklist dispatchInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;)I
    .locals 4

    instance-of v0, p1, Landroid/view/KeyEvent;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/view/KeyEvent;

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

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

    invoke-virtual {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_5

    return v1

    :cond_2
    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_3

    invoke-virtual {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_5

    return v1

    :cond_3
    invoke-virtual {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

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

    invoke-virtual {p0, p1, p2, p3}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onSurfaceChanged(III)V

    return-void
.end method

.method public whitelist isMediaViewEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewEnabled:Z

    return v0
.end method

.method public whitelist layoutSurface(IIII)V
    .locals 7

    if-gt p1, p3, :cond_0

    if-gt p2, p4, :cond_0

    new-instance v6, Landroid/media/tv/interactive/TvInteractiveAppService$Session$2;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$2;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;IIII)V

    invoke-direct {p0, v6}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid parameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist notifyAdBufferConsumed(Landroid/media/tv/AdBuffer;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onAdBufferConsumed(Landroid/media/tv/AdBuffer;)V

    return-void
.end method

.method public whitelist notifyAdBufferReady(Landroid/media/tv/AdBuffer;)V
    .locals 3

    :try_start_0
    invoke-static {p1}, Landroid/media/tv/AdBuffer;->dupAdBuffer(Landroid/media/tv/AdBuffer;)Landroid/media/tv/AdBuffer;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    new-instance v1, Landroid/media/tv/interactive/TvInteractiveAppService$Session$23;

    invoke-direct {v1, p0, p1, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$23;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Landroid/media/tv/AdBuffer;Landroid/media/tv/AdBuffer;)V

    invoke-direct {p0, v1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "TvInteractiveAppService"

    const-string v2, "dup AdBuffer error in notifyAdBufferReady:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method blacklist notifyAdResponse(Landroid/media/tv/AdResponse;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onAdResponse(Landroid/media/tv/AdResponse;)V

    return-void
.end method

.method public final whitelist notifyBiInteractiveAppCreated(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$21;

    invoke-direct {v0, p0, p2, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$21;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method blacklist notifyBroadcastInfoResponse(Landroid/media/tv/BroadcastInfoResponse;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onBroadcastInfoResponse(Landroid/media/tv/BroadcastInfoResponse;)V

    return-void
.end method

.method blacklist notifyContentAllowed()V
    .locals 0

    invoke-virtual {p0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onContentAllowed()V

    return-void
.end method

.method blacklist notifyContentBlocked(Landroid/media/tv/TvContentRating;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onContentBlocked(Landroid/media/tv/TvContentRating;)V

    return-void
.end method

.method blacklist notifyError(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onError(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method blacklist notifyRecordingConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onRecordingConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method blacklist notifyRecordingDisconnected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onRecordingDisconnected(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method blacklist notifyRecordingError(Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onRecordingError(Ljava/lang/String;I)V

    return-void
.end method

.method blacklist notifyRecordingScheduled(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onRecordingScheduled(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method blacklist notifyRecordingStarted(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onRecordingStarted(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method blacklist notifyRecordingStopped(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onRecordingStopped(Ljava/lang/String;)V

    return-void
.end method

.method blacklist notifyRecordingTuned(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onRecordingTuned(Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method public whitelist notifySessionStateChanged(II)V
    .locals 1

    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$20;

    invoke-direct {v0, p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$20;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;II)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method blacklist notifySignalStrength(I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onSignalStrength(I)V

    return-void
.end method

.method public final whitelist notifyTeletextAppStateChanged(I)V
    .locals 1

    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$22;

    invoke-direct {v0, p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$22;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;I)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method blacklist notifyTimeShiftCurrentPositionChanged(Ljava/lang/String;J)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onTimeShiftCurrentPositionChanged(Ljava/lang/String;J)V

    return-void
.end method

.method blacklist notifyTimeShiftPlaybackParams(Landroid/media/PlaybackParams;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onTimeShiftPlaybackParams(Landroid/media/PlaybackParams;)V

    return-void
.end method

.method blacklist notifyTimeShiftStartPositionChanged(Ljava/lang/String;J)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onTimeShiftStartPositionChanged(Ljava/lang/String;J)V

    return-void
.end method

.method blacklist notifyTimeShiftStatusChanged(Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onTimeShiftStatusChanged(Ljava/lang/String;I)V

    return-void
.end method

.method blacklist notifyTrackSelected(ILjava/lang/String;)V
    .locals 0

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onTrackSelected(ILjava/lang/String;)V

    return-void
.end method

.method blacklist notifyTracksChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onTracksChanged(Ljava/util/List;)V

    return-void
.end method

.method blacklist notifyTuned(Landroid/net/Uri;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onTuned(Landroid/net/Uri;)V

    return-void
.end method

.method blacklist notifyTvMessage(ILandroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onTvMessage(ILandroid/os/Bundle;)V

    return-void
.end method

.method blacklist notifyVideoAvailable()V
    .locals 0

    invoke-virtual {p0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onVideoAvailable()V

    return-void
.end method

.method blacklist notifyVideoFreezeUpdated(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onVideoFreezeUpdated(Z)V

    return-void
.end method

.method blacklist notifyVideoUnavailable(I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onVideoUnavailable(I)V

    return-void
.end method

.method public whitelist onAdBufferConsumed(Landroid/media/tv/AdBuffer;)V
    .locals 0

    return-void
.end method

.method public whitelist onAdResponse(Landroid/media/tv/AdResponse;)V
    .locals 0

    return-void
.end method

.method public whitelist onAvailableSpeeds([F)V
    .locals 0

    return-void
.end method

.method public whitelist onBroadcastInfoResponse(Landroid/media/tv/BroadcastInfoResponse;)V
    .locals 0

    return-void
.end method

.method public blacklist onCertificate(Ljava/lang/String;ILandroid/net/http/SslCertificate;)V
    .locals 0

    return-void
.end method

.method public whitelist onContentAllowed()V
    .locals 0

    return-void
.end method

.method public whitelist onContentBlocked(Landroid/media/tv/TvContentRating;)V
    .locals 0

    return-void
.end method

.method public whitelist onCreateBiInteractiveAppRequest(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public whitelist onCreateMediaView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onCurrentChannelLcn(I)V
    .locals 0

    return-void
.end method

.method public whitelist onCurrentChannelUri(Landroid/net/Uri;)V
    .locals 0

    return-void
.end method

.method public whitelist onCurrentTvInputId(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public whitelist onCurrentVideoBounds(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public whitelist onDestroyBiInteractiveAppRequest(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public whitelist onError(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public whitelist onGenericMotionEvent(Landroid/view/MotionEvent;)Z
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

.method public whitelist onMediaViewSizeChanged(II)V
    .locals 0

    return-void
.end method

.method public whitelist onRecordingConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public whitelist onRecordingDisconnected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public whitelist onRecordingError(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public whitelist onRecordingScheduled(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public whitelist onRecordingStarted(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public whitelist onRecordingStopped(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public whitelist onRecordingTuned(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    return-void
.end method

.method public abstract whitelist onRelease()V
.end method

.method public whitelist onResetInteractiveApp()V
    .locals 0

    return-void
.end method

.method public blacklist onSelectedTrackInfo(Ljava/util/List;)V
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

.method public abstract whitelist onSetSurface(Landroid/view/Surface;)Z
.end method

.method public whitelist onSetTeletextAppEnabled(Z)V
    .locals 0

    return-void
.end method

.method public whitelist onSignalStrength(I)V
    .locals 0

    return-void
.end method

.method public whitelist onSigningResult(Ljava/lang/String;[B)V
    .locals 0

    return-void
.end method

.method public whitelist onStartInteractiveApp()V
    .locals 0

    return-void
.end method

.method public whitelist onStopInteractiveApp()V
    .locals 0

    return-void
.end method

.method public whitelist onStreamVolume(F)V
    .locals 0

    return-void
.end method

.method public whitelist onSurfaceChanged(III)V
    .locals 0

    return-void
.end method

.method public whitelist onTimeShiftCurrentPositionChanged(Ljava/lang/String;J)V
    .locals 0

    return-void
.end method

.method public whitelist onTimeShiftMode(I)V
    .locals 0

    return-void
.end method

.method public whitelist onTimeShiftPlaybackParams(Landroid/media/PlaybackParams;)V
    .locals 0

    return-void
.end method

.method public whitelist onTimeShiftStartPositionChanged(Ljava/lang/String;J)V
    .locals 0

    return-void
.end method

.method public whitelist onTimeShiftStatusChanged(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onTrackInfoList(Ljava/util/List;)V
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

.method public whitelist onTrackSelected(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public whitelist onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onTracksChanged(Ljava/util/List;)V
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

.method public whitelist onTuned(Landroid/net/Uri;)V
    .locals 0

    return-void
.end method

.method public whitelist onTvMessage(ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public whitelist onTvRecordingInfo(Landroid/media/tv/TvRecordingInfo;)V
    .locals 0

    return-void
.end method

.method public whitelist onTvRecordingInfoList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/tv/TvRecordingInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public whitelist onVideoAvailable()V
    .locals 0

    return-void
.end method

.method public blacklist onVideoFreezeUpdated(Z)V
    .locals 0

    return-void
.end method

.method public whitelist onVideoUnavailable(I)V
    .locals 0

    return-void
.end method

.method blacklist relayoutMediaView(Landroid/graphics/Rect;)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaFrame:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaFrame:Landroid/graphics/Rect;

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

    invoke-virtual {p0, v0, v1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onMediaViewSizeChanged(II)V

    :cond_1
    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaFrame:Landroid/graphics/Rect;

    iget-boolean v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewEnabled:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method blacklist release()V
    .locals 2

    invoke-virtual {p0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onRelease()V

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mSurface:Landroid/view/Surface;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mSurface:Landroid/view/Surface;

    :cond_0
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mSessionCallback:Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mPendingActions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->removeMediaView(Z)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public whitelist removeBroadcastInfo(I)V
    .locals 1

    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$4;

    invoke-direct {v0, p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$4;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;I)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method blacklist removeMediaView(Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowToken:Landroid/os/IBinder;

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaFrame:Landroid/graphics/Rect;

    :cond_0
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaView:Landroid/view/View;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewContainer:Landroid/widget/FrameLayout;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewContainer:Landroid/widget/FrameLayout;

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    :cond_1
    return-void
.end method

.method public whitelist requestAd(Landroid/media/tv/AdRequest;)V
    .locals 1

    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$19;

    invoke-direct {v0, p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$19;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Landroid/media/tv/AdRequest;)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public whitelist requestAvailableSpeeds()V
    .locals 1

    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$15;

    invoke-direct {v0, p0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$15;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public whitelist requestBroadcastInfo(Landroid/media/tv/BroadcastInfoRequest;)V
    .locals 1

    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$3;

    invoke-direct {v0, p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$3;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Landroid/media/tv/BroadcastInfoRequest;)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist requestCertificate(Ljava/lang/String;I)V
    .locals 1

    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$18;

    invoke-direct {v0, p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$18;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public whitelist requestCurrentChannelLcn()V
    .locals 1

    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$10;

    invoke-direct {v0, p0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$10;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public whitelist requestCurrentChannelUri()V
    .locals 1

    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$9;

    invoke-direct {v0, p0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$9;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public whitelist requestCurrentTvInputId()V
    .locals 1

    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$13;

    invoke-direct {v0, p0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$13;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public whitelist requestCurrentVideoBounds()V
    .locals 1

    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$8;

    invoke-direct {v0, p0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$8;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public whitelist requestScheduleRecording(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJILandroid/os/Bundle;)V
    .locals 12

    new-instance v11, Landroid/media/tv/interactive/TvInteractiveAppService$Session$$ExternalSyntheticLambda6;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$$ExternalSyntheticLambda6;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJILandroid/os/Bundle;)V

    move-object v0, p0

    invoke-direct {p0, v11}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public whitelist requestScheduleRecording(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 8

    new-instance v7, Landroid/media/tv/interactive/TvInteractiveAppService$Session$$ExternalSyntheticLambda1;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$$ExternalSyntheticLambda1;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/os/Bundle;)V

    invoke-direct {p0, v7}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist requestSelectedTrackInfo()V
    .locals 1

    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$$ExternalSyntheticLambda2;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist requestSigning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[B)V
    .locals 8

    new-instance v7, Landroid/media/tv/interactive/TvInteractiveAppService$Session$17;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$17;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[B)V

    invoke-direct {p0, v7}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public whitelist requestSigning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 7

    new-instance v6, Landroid/media/tv/interactive/TvInteractiveAppService$Session$16;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$16;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-direct {p0, v6}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public whitelist requestStartRecording(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$$ExternalSyntheticLambda0;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public whitelist requestStopRecording(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$$ExternalSyntheticLambda7;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public whitelist requestStreamVolume()V
    .locals 1

    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$11;

    invoke-direct {v0, p0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$11;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public whitelist requestTimeShiftMode()V
    .locals 1

    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$14;

    invoke-direct {v0, p0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$14;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public whitelist requestTrackInfoList()V
    .locals 1

    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$12;

    invoke-direct {v0, p0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$12;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public whitelist requestTvRecordingInfo(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$$ExternalSyntheticLambda4;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public whitelist requestTvRecordingInfoList(I)V
    .locals 1

    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$$ExternalSyntheticLambda3;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;I)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method blacklist resetInteractiveApp()V
    .locals 0

    invoke-virtual {p0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onResetInteractiveApp()V

    return-void
.end method

.method blacklist scheduleMediaViewCleanup()V
    .locals 5

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/media/tv/interactive/TvInteractiveAppService$MediaViewCleanUpTask;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/media/tv/interactive/TvInteractiveAppService$MediaViewCleanUpTask;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$MediaViewCleanUpTask-IA;)V

    iput-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewCleanUpTask:Landroid/media/tv/interactive/TvInteractiveAppService$MediaViewCleanUpTask;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewCleanUpTask:Landroid/media/tv/interactive/TvInteractiveAppService$MediaViewCleanUpTask;

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/view/View;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/media/tv/interactive/TvInteractiveAppService$MediaViewCleanUpTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method blacklist sendAvailableSpeeds([F)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onAvailableSpeeds([F)V

    return-void
.end method

.method blacklist sendCertificate(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1

    invoke-static {p3}, Landroid/net/http/SslCertificate;->restoreState(Landroid/os/Bundle;)Landroid/net/http/SslCertificate;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onCertificate(Ljava/lang/String;ILandroid/net/http/SslCertificate;)V

    return-void
.end method

.method blacklist sendCurrentChannelLcn(I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onCurrentChannelLcn(I)V

    return-void
.end method

.method blacklist sendCurrentChannelUri(Landroid/net/Uri;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onCurrentChannelUri(Landroid/net/Uri;)V

    return-void
.end method

.method blacklist sendCurrentTvInputId(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onCurrentTvInputId(Ljava/lang/String;)V

    return-void
.end method

.method blacklist sendCurrentVideoBounds(Landroid/graphics/Rect;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onCurrentVideoBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public whitelist sendPlaybackCommandRequest(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$5;

    invoke-direct {v0, p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$5;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method blacklist sendSelectedTrackInfo(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onSelectedTrackInfo(Ljava/util/List;)V

    return-void
.end method

.method blacklist sendSigningResult(Ljava/lang/String;[B)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onSigningResult(Ljava/lang/String;[B)V

    return-void
.end method

.method blacklist sendStreamVolume(F)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onStreamVolume(F)V

    return-void
.end method

.method public whitelist sendTimeShiftCommandRequest(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$6;

    invoke-direct {v0, p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$6;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method blacklist sendTimeShiftMode(I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onTimeShiftMode(I)V

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

    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onTrackInfoList(Ljava/util/List;)V

    return-void
.end method

.method blacklist sendTvRecordingInfo(Landroid/media/tv/TvRecordingInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onTvRecordingInfo(Landroid/media/tv/TvRecordingInfo;)V

    return-void
.end method

.method blacklist sendTvRecordingInfoList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/tv/TvRecordingInfo;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onTvRecordingInfoList(Ljava/util/List;)V

    return-void
.end method

.method public whitelist setMediaViewEnabled(Z)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/interactive/TvInteractiveAppService$Session$1;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$1;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method blacklist setSurface(Landroid/view/Surface;)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onSetSurface(Landroid/view/Surface;)Z

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :cond_0
    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mSurface:Landroid/view/Surface;

    return-void
.end method

.method blacklist setTeletextAppEnabled(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onSetTeletextAppEnabled(Z)V

    return-void
.end method

.method public whitelist setTvRecordingInfo(Ljava/lang/String;Landroid/media/tv/TvRecordingInfo;)V
    .locals 1

    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$$ExternalSyntheticLambda5;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Ljava/lang/String;Landroid/media/tv/TvRecordingInfo;)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public whitelist setVideoBounds(Landroid/graphics/Rect;)V
    .locals 1

    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$7;

    invoke-direct {v0, p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$7;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Landroid/graphics/Rect;)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method blacklist startInteractiveApp()V
    .locals 0

    invoke-virtual {p0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onStartInteractiveApp()V

    return-void
.end method

.method blacklist stopInteractiveApp()V
    .locals 0

    invoke-virtual {p0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onStopInteractiveApp()V

    return-void
.end method
