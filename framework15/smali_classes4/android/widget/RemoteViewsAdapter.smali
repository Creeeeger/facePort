.class public Landroid/widget/RemoteViewsAdapter;
.super Landroid/widget/BaseAdapter;
.source "RemoteViewsAdapter.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;,
        Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;,
        Landroid/widget/RemoteViewsAdapter$HandlerThreadExecutor;,
        Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;,
        Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;,
        Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;,
        Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;,
        Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate;,
        Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;,
        Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;,
        Landroid/widget/RemoteViewsAdapter$AsyncRemoteAdapterAction;
    }
.end annotation


# static fields
.field private static final blacklist CACHE_RESET_CONFIG_FLAGS:I = -0x3fffee00

.field private static final greylist-max-o DEFAULT_CACHE_SIZE:I = 0x28

.field private static final greylist-max-o DEFAULT_LOADING_VIEW_HEIGHT:I = 0x32

.field static final greylist-max-o MSG_LOAD_NEXT_ITEM:I = 0x3

.field private static final greylist-max-o MSG_MAIN_HANDLER_COMMIT_METADATA:I = 0x1

.field private static final greylist-max-o MSG_MAIN_HANDLER_REMOTE_ADAPTER_CONNECTED:I = 0x3

.field private static final greylist-max-o MSG_MAIN_HANDLER_REMOTE_ADAPTER_DISCONNECTED:I = 0x4

.field private static final greylist-max-o MSG_MAIN_HANDLER_REMOTE_VIEWS_LOADED:I = 0x5

.field private static final greylist-max-o MSG_MAIN_HANDLER_SUPER_NOTIFY_DATA_SET_CHANGED:I = 0x2

.field static final greylist-max-o MSG_NOTIFY_DATA_SET_CHANGED:I = 0x2

.field static final greylist-max-o MSG_REQUEST_BIND:I = 0x1

.field static final greylist-max-o MSG_UNBIND_SERVICE:I = 0x4

.field private static final greylist-max-o REMOTE_VIEWS_CACHE_DURATION:I = 0x1388

.field private static final greylist-max-o TAG:Ljava/lang/String; = "RemoteViewsAdapter"

.field private static final greylist-max-o UNBIND_SERVICE_DELAY:I = 0x1388

.field private static greylist-max-o sCacheRemovalQueue:Landroid/os/Handler;

.field private static greylist-max-o sCacheRemovalThread:Landroid/os/HandlerThread;

.field private static final greylist-max-o sCachedRemoteViewsCaches:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;",
            "Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o sRemoteViewsCacheRemoveRunnables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mAppWidgetId:I

.field private final greylist-max-o mAsyncViewLoadExecutor:Ljava/util/concurrent/Executor;

.field private final greylist-max-r mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

.field private final greylist-max-o mCallback:Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mDataReady:Z

.field private final greylist-max-o mIntent:Landroid/content/Intent;

.field private greylist-max-o mLastRemoteViewAppInfo:Landroid/content/pm/ApplicationInfo;

.field private final greylist-max-o mMainHandler:Landroid/os/Handler;

.field private final blacklist mOnLightBackground:Z

.field private blacklist mRemoteViewsInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

.field private greylist-max-o mRequestedViews:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;

.field private final greylist-max-o mServiceHandler:Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;

.field private blacklist mUsePreloadPositionIndices:Z

.field private greylist-max-o mVisibleWindowLowerBound:I

.field private greylist-max-o mVisibleWindowUpperBound:I

.field private final greylist-max-r mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCache(Landroid/widget/RemoteViewsAdapter;)Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;
    .locals 0

    iget-object p0, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMainHandler(Landroid/widget/RemoteViewsAdapter;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/widget/RemoteViewsAdapter;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRemoteViewsInteractionHandler(Landroid/widget/RemoteViewsAdapter;)Landroid/widget/RemoteViews$InteractionHandler;
    .locals 0

    iget-object p0, p0, Landroid/widget/RemoteViewsAdapter;->mRemoteViewsInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetVisibleWindow(Landroid/widget/RemoteViewsAdapter;I)[I
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViewsAdapter;->getVisibleWindow(I)[I

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mrequestBindService(Landroid/widget/RemoteViewsAdapter;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/RemoteViewsAdapter;->requestBindService()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateRemoteViews(Landroid/widget/RemoteViewsAdapter;Lcom/android/internal/widget/IRemoteViewsFactory;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RemoteViewsAdapter;->updateRemoteViews(Lcom/android/internal/widget/IRemoteViewsFactory;IZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateTemporaryMetaData(Landroid/widget/RemoteViewsAdapter;Lcom/android/internal/widget/IRemoteViewsFactory;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViewsAdapter;->updateTemporaryMetaData(Lcom/android/internal/widget/IRemoteViewsFactory;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/widget/RemoteViewsAdapter;->sCachedRemoteViewsCaches:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/widget/RemoteViewsAdapter;->sRemoteViewsCacheRemoveRunnables:Ljava/util/HashMap;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/content/Intent;Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;Z)V
    .locals 7

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/RemoteViewsAdapter;->mUsePreloadPositionIndices:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/RemoteViewsAdapter;->mDataReady:Z

    iput-object p1, p0, Landroid/widget/RemoteViewsAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/widget/RemoteViewsAdapter;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter;->mIntent:Landroid/content/Intent;

    if-eqz v2, :cond_6

    const-string/jumbo v2, "remoteAdapterAppWidgetId"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/widget/RemoteViewsAdapter;->mAppWidgetId:I

    new-instance v2, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;-><init>(Landroid/widget/RemoteViewsAdapter;Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet-IA;)V

    iput-object v2, p0, Landroid/widget/RemoteViewsAdapter;->mRequestedViews:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;

    const-string/jumbo v2, "remoteAdapterOnLightBackground"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/RemoteViewsAdapter;->mOnLightBackground:Z

    const-string/jumbo v1, "remoteAdapterAppWidgetId"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string/jumbo v1, "remoteAdapterOnLightBackground"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "RemoteViewsCache-loader"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mWorkerThread:Landroid/os/HandlerThread;

    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;

    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v2, p0, v4}, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;-><init>(Landroid/os/Looper;Landroid/widget/RemoteViewsAdapter;Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mServiceHandler:Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;

    if-eqz p4, :cond_0

    new-instance v3, Landroid/widget/RemoteViewsAdapter$HandlerThreadExecutor;

    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-direct {v3, v1}, Landroid/widget/RemoteViewsAdapter$HandlerThreadExecutor;-><init>(Landroid/os/HandlerThread;)V

    :cond_0
    iput-object v3, p0, Landroid/widget/RemoteViewsAdapter;->mAsyncViewLoadExecutor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/widget/RemoteViewsAdapter;->mCallback:Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;

    sget-object v1, Landroid/widget/RemoteViewsAdapter;->sCacheRemovalThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_1

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "RemoteViewsAdapter-cachePruner"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v1, Landroid/widget/RemoteViewsAdapter;->sCacheRemovalThread:Landroid/os/HandlerThread;

    sget-object v1, Landroid/widget/RemoteViewsAdapter;->sCacheRemovalThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    sget-object v2, Landroid/widget/RemoteViewsAdapter;->sCacheRemovalThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Landroid/widget/RemoteViewsAdapter;->sCacheRemovalQueue:Landroid/os/Handler;

    :cond_1
    new-instance v1, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;

    new-instance v2, Landroid/content/Intent$FilterComparison;

    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter;->mIntent:Landroid/content/Intent;

    invoke-direct {v2, v3}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    iget v3, p0, Landroid/widget/RemoteViewsAdapter;->mAppWidgetId:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;-><init>(Landroid/content/Intent$FilterComparison;I)V

    sget-object v2, Landroid/widget/RemoteViewsAdapter;->sCachedRemoteViewsCaches:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    sget-object v3, Landroid/widget/RemoteViewsAdapter;->sCachedRemoteViewsCaches:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    if-eqz v3, :cond_4

    invoke-static {v3}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->-$$Nest$fgetmConfiguration(Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;)Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v5

    const v6, -0x3fffee00

    and-int/2addr v5, v6

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    sget-object v5, Landroid/widget/RemoteViewsAdapter;->sCachedRemoteViewsCaches:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    iput-object v5, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    iget-object v5, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-static {v5}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->-$$Nest$fgetmMetaData(Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;)Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v5

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v6, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-static {v6}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->-$$Nest$fgetmMetaData(Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;)Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v6

    iget v6, v6, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->count:I

    if-lez v6, :cond_3

    iput-boolean v0, p0, Landroid/widget/RemoteViewsAdapter;->mDataReady:Z

    :cond_3
    monitor-exit v5

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    :cond_4
    :goto_0
    new-instance v0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    const/16 v5, 0x28

    invoke-direct {v0, v5, v4}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;-><init>(ILandroid/content/res/Configuration;)V

    iput-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    :goto_1
    iget-boolean v0, p0, Landroid/widget/RemoteViewsAdapter;->mDataReady:Z

    if-nez v0, :cond_5

    invoke-direct {p0}, Landroid/widget/RemoteViewsAdapter;->requestBindService()V

    :cond_5
    monitor-exit v2

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Non-null Intent must be specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o getVisibleWindow(I)[I
    .locals 5

    iget v0, p0, Landroid/widget/RemoteViewsAdapter;->mVisibleWindowLowerBound:I

    iget v1, p0, Landroid/widget/RemoteViewsAdapter;->mVisibleWindowUpperBound:I

    if-ltz v0, :cond_5

    if-gez v1, :cond_0

    goto :goto_4

    :cond_0
    if-gt v0, v1, :cond_2

    add-int/lit8 v2, v1, 0x1

    sub-int/2addr v2, v0

    new-array v2, v2, [I

    move v3, v0

    const/4 v4, 0x0

    :goto_0
    if-gt v3, v1, :cond_1

    aput v3, v2, v4

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    goto :goto_3

    :cond_2
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    sub-int v2, p1, v0

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-gt v4, v1, :cond_3

    aput v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    move v4, v0

    :goto_2
    if-ge v4, p1, :cond_4

    aput v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    return-object v2

    :cond_5
    :goto_4
    const/4 v2, 0x0

    new-array v2, v2, [I

    return-object v2
.end method

.method static synthetic blacklist lambda$saveRemoteViewsCache$0(Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;)V
    .locals 2

    sget-object v0, Landroid/widget/RemoteViewsAdapter;->sCachedRemoteViewsCaches:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/widget/RemoteViewsAdapter;->sCachedRemoteViewsCaches:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Landroid/widget/RemoteViewsAdapter;->sRemoteViewsCacheRemoveRunnables:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private greylist-max-o requestBindService()V
    .locals 5

    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mServiceHandler:Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->removeMessages(I)V

    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mServiceHandler:Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;

    iget v1, p0, Landroid/widget/RemoteViewsAdapter;->mAppWidgetId:I

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter;->mIntent:Landroid/content/Intent;

    const/4 v4, 0x1

    invoke-static {v0, v4, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private greylist-max-o updateRemoteViews(Lcom/android/internal/widget/IRemoteViewsFactory;IZ)V
    .locals 12

    :try_start_0
    invoke-interface {p1, p2}, Lcom/android/internal/widget/IRemoteViewsFactory;->getViewAt(I)Landroid/widget/RemoteViews;

    move-result-object v0

    invoke-interface {p1, p2}, Lcom/android/internal/widget/IRemoteViewsFactory;->getItemId(I)J

    move-result-wide v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_4

    nop

    iget-object v1, v0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mLastRemoteViewAppInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mLastRemoteViewAppInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Landroid/widget/RemoteViews;->hasSameAppInfo(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mLastRemoteViewAppInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v1, v0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    goto :goto_0

    :cond_0
    iget-object v1, v0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iput-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mLastRemoteViewAppInfo:Landroid/content/pm/ApplicationInfo;

    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v7

    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v8

    monitor-enter v8

    :try_start_1
    invoke-virtual {v8, v7}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->isViewTypeInRange(I)Z

    move-result v1

    move v9, v1

    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-static {v1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->-$$Nest$fgetmMetaData(Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;)Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v1

    iget v1, v1, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->count:I

    move v10, v1

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v11, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    monitor-enter v11

    if-eqz v9, :cond_3

    :try_start_2
    invoke-direct {p0, v10}, Landroid/widget/RemoteViewsAdapter;->getVisibleWindow(I)[I

    move-result-object v6

    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move v2, p2

    move-object v3, v0

    invoke-virtual/range {v1 .. v6}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->insert(ILandroid/widget/RemoteViews;J[I)V

    if-eqz p3, :cond_2

    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mMainHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-static {v1, v2, p2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    goto :goto_1

    :cond_3
    const-string v1, "RemoteViewsAdapter"

    const-string v2, "Error: widget\'s RemoteViewsFactory returns more view types than  indicated by getViewTypeCount() "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    monitor-exit v11

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    :cond_4
    :try_start_4
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Null remoteViews"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "RemoteViewsAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in updateRemoteViews("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private greylist-max-o updateTemporaryMetaData(Lcom/android/internal/widget/IRemoteViewsFactory;)V
    .locals 8

    :try_start_0
    invoke-interface {p1}, Lcom/android/internal/widget/IRemoteViewsFactory;->hasStableIds()Z

    move-result v0

    invoke-interface {p1}, Lcom/android/internal/widget/IRemoteViewsFactory;->getViewTypeCount()I

    move-result v1

    invoke-interface {p1}, Lcom/android/internal/widget/IRemoteViewsFactory;->getCount()I

    move-result v2

    new-instance v3, Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate;

    invoke-interface {p1}, Lcom/android/internal/widget/IRemoteViewsFactory;->getLoadingView()Landroid/widget/RemoteViews;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/RemoteViewsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate;-><init>(Landroid/widget/RemoteViews;Landroid/content/Context;)V

    if-lez v2, :cond_0

    iget-object v4, v3, Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate;->remoteViews:Landroid/widget/RemoteViews;

    if-nez v4, :cond_0

    const/4 v4, 0x0

    invoke-interface {p1, v4}, Lcom/android/internal/widget/IRemoteViewsFactory;->getViewAt(I)Landroid/widget/RemoteViews;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v5, p0, Landroid/widget/RemoteViewsAdapter;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/widget/RemoteViewsAdapter$HandlerThreadExecutor;

    iget-object v7, p0, Landroid/widget/RemoteViewsAdapter;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-direct {v6, v7}, Landroid/widget/RemoteViewsAdapter$HandlerThreadExecutor;-><init>(Landroid/os/HandlerThread;)V

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate;->loadFirstViewHeight(Landroid/widget/RemoteViews;Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    :cond_0
    iget-object v4, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v4}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getTemporaryMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iput-boolean v0, v4, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->hasStableIds:Z

    add-int/lit8 v5, v1, 0x1

    iput v5, v4, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->viewTypeCount:I

    iput v2, v4, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->count:I

    iput-object v3, v4, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->loadingTemplate:Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate;

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v5
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "RemoteViewsAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in updateMetaData: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v1

    monitor-enter v1

    :try_start_3
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->reset()V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    monitor-enter v2

    :try_start_4
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->reset()V

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mMainHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1

    :catchall_2
    move-exception v2

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v2
.end method


# virtual methods
.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mServiceHandler:Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->unbindNow()V

    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
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

.method public whitelist getCount()I
    .locals 2

    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget v1, v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->count:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getItemId(I)J
    .locals 3

    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v1, p1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->containsMetaDataAt(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v1, p1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaDataAt(I)Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;

    move-result-object v1

    iget-wide v1, v1, Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;->itemId:J

    monitor-exit v0

    return-wide v1

    :cond_0
    monitor-exit v0

    const-wide/16 v0, 0x0

    return-wide v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getItemViewType(I)I
    .locals 3

    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v1, p1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->containsMetaDataAt(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v1, p1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaDataAt(I)Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;

    move-result-object v1

    iget v1, v1, Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;->typeId:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v2

    monitor-enter v2

    :try_start_1
    invoke-virtual {v2, v1}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->getMappedViewType(I)I

    move-result v0

    monitor-exit v2

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    :try_start_2
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public greylist-max-r getRemoteViewsServiceIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public whitelist getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v1, p1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getRemoteViewsAt(I)Landroid/widget/RemoteViews;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    const/4 v4, 0x0

    if-eqz p2, :cond_1

    instance-of v5, p2, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/widget/RemoteViewsAdapter;->mRequestedViews:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;

    move-object v6, p2

    check-cast v6, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    invoke-virtual {v5, v6}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->removeView(Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;)V

    :cond_1
    if-nez v3, :cond_2

    invoke-direct {p0}, Landroid/widget/RemoteViewsAdapter;->requestBindService()V

    goto :goto_1

    :cond_2
    iget-boolean v5, p0, Landroid/widget/RemoteViewsAdapter;->mUsePreloadPositionIndices:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v5, p1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->queuePositionsToBePreloadedFromRequestedPosition(I)Z

    move-result v5

    move v4, v5

    goto :goto_1

    :cond_3
    const-string v5, "RemoteViewsAdapter"

    const-string v6, "disable queue position preload"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :goto_1
    instance-of v5, p2, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    if-eqz v5, :cond_4

    move-object v5, p2

    check-cast v5, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    goto :goto_2

    :cond_4
    new-instance v5, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-direct {v5, v6, v7}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;-><init>(Landroid/content/Context;Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;)V

    iget-object v6, p0, Landroid/widget/RemoteViewsAdapter;->mAsyncViewLoadExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v5, v6}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->setExecutor(Ljava/util/concurrent/Executor;)V

    iget-boolean v6, p0, Landroid/widget/RemoteViewsAdapter;->mOnLightBackground:Z

    invoke-virtual {v5, v6}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->setOnLightBackground(Z)V

    :goto_2
    const/4 v6, 0x3

    if-eqz v3, :cond_5

    iget-object v7, p0, Landroid/widget/RemoteViewsAdapter;->mRemoteViewsInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    invoke-virtual {v5, v1, v7, v2}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->onRemoteViewsLoaded(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$InteractionHandler;Z)V

    if-eqz v4, :cond_6

    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter;->mServiceHandler:Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;

    invoke-virtual {v2, v6}, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->sendEmptyMessage(I)Z

    goto :goto_3

    :cond_5
    iget-object v7, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v7}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v7

    iget-object v8, p0, Landroid/widget/RemoteViewsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->getLoadingTemplate(Landroid/content/Context;)Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate;

    move-result-object v7

    iget-object v7, v7, Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate;->remoteViews:Landroid/widget/RemoteViews;

    iget-object v8, p0, Landroid/widget/RemoteViewsAdapter;->mRemoteViewsInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    invoke-virtual {v5, v7, v8, v2}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->onRemoteViewsLoaded(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$InteractionHandler;Z)V

    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter;->mRequestedViews:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;

    invoke-virtual {v2, p1, v5}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->add(ILandroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;)V

    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v2, p1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->queueRequestedPositionToLoad(I)V

    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter;->mServiceHandler:Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;

    invoke-virtual {v2, v6}, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->sendEmptyMessage(I)Z

    :cond_6
    :goto_3
    monitor-exit v0

    return-object v5

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getViewTypeCount()I
    .locals 2

    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget v1, v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->viewTypeCount:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist handleMessage(Landroid/os/Message;)Z
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mRequestedViews:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/widget/RemoteViews;

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->notifyOnRemoteViewsLoaded(ILandroid/widget/RemoteViews;)V

    return v1

    :pswitch_1
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mCallback:Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mCallback:Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;

    invoke-interface {v0}, Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;->onRemoteAdapterDisconnected()V

    :cond_0
    return v1

    :pswitch_2
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mCallback:Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mCallback:Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;

    invoke-interface {v0}, Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;->onRemoteAdapterConnected()Z

    :cond_1
    return v1

    :pswitch_3
    invoke-virtual {p0}, Landroid/widget/RemoteViewsAdapter;->superNotifyDataSetChanged()V

    return v1

    :pswitch_4
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->commitTemporaryMetaData()V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist hasStableIds()Z
    .locals 2

    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-boolean v1, v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->hasStableIds:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-r isDataReady()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/RemoteViewsAdapter;->mDataReady:Z

    return v0
.end method

.method public whitelist isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Landroid/widget/RemoteViewsAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist notifyDataSetChanged()V
    .locals 2

    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mServiceHandler:Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->removeMessages(I)V

    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mServiceHandler:Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public greylist-max-r saveRemoteViewsCache()V
    .locals 8

    new-instance v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;

    new-instance v1, Landroid/content/Intent$FilterComparison;

    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter;->mIntent:Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    iget v2, p0, Landroid/widget/RemoteViewsAdapter;->mAppWidgetId:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;-><init>(Landroid/content/Intent$FilterComparison;I)V

    sget-object v1, Landroid/widget/RemoteViewsAdapter;->sCachedRemoteViewsCaches:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    sget-object v2, Landroid/widget/RemoteViewsAdapter;->sRemoteViewsCacheRemoveRunnables:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Landroid/widget/RemoteViewsAdapter;->sCacheRemovalQueue:Landroid/os/Handler;

    sget-object v3, Landroid/widget/RemoteViewsAdapter;->sRemoteViewsCacheRemoveRunnables:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v2, Landroid/widget/RemoteViewsAdapter;->sRemoteViewsCacheRemoveRunnables:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-static {v4}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->-$$Nest$fgetmMetaData(Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;)Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v5, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-static {v5}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->-$$Nest$fgetmMetaData(Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;)Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v5

    iget v5, v5, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->count:I

    move v2, v5

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v4, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    monitor-enter v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v5, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-static {v5}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->-$$Nest$fgetmIndexRemoteViews(Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    move v3, v5

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-lez v2, :cond_1

    if-lez v3, :cond_1

    :try_start_4
    sget-object v4, Landroid/widget/RemoteViewsAdapter;->sCachedRemoteViewsCaches:Ljava/util/HashMap;

    iget-object v5, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    new-instance v4, Landroid/widget/RemoteViewsAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0}, Landroid/widget/RemoteViewsAdapter$$ExternalSyntheticLambda0;-><init>(Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;)V

    sget-object v5, Landroid/widget/RemoteViewsAdapter;->sRemoteViewsCacheRemoveRunnables:Ljava/util/HashMap;

    invoke-virtual {v5, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Landroid/widget/RemoteViewsAdapter;->sCacheRemovalQueue:Landroid/os/Handler;

    const-wide/16 v6, 0x1388

    invoke-virtual {v5, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    nop

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-void

    :catchall_0
    move-exception v5

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_1
    move-exception v5

    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v5

    :catchall_2
    move-exception v2

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v2
.end method

.method public blacklist semUsePreloadPositionIndices(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/RemoteViewsAdapter;->mUsePreloadPositionIndices:Z

    return-void
.end method

.method public blacklist setRemoteViewsInteractionHandler(Landroid/widget/RemoteViews$InteractionHandler;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/RemoteViewsAdapter;->mRemoteViewsInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    return-void
.end method

.method public greylist-max-r setVisibleRangeHint(II)V
    .locals 0

    iput p1, p0, Landroid/widget/RemoteViewsAdapter;->mVisibleWindowLowerBound:I

    iput p2, p0, Landroid/widget/RemoteViewsAdapter;->mVisibleWindowUpperBound:I

    return-void
.end method

.method greylist-max-o superNotifyDataSetChanged()V
    .locals 0

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
