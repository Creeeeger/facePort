.class public final Landroid/media/tv/ad/TvAdManager;
.super Ljava/lang/Object;
.source "TvAdManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/ad/TvAdManager$SessionCallback;,
        Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;,
        Landroid/media/tv/ad/TvAdManager$TvAdServiceCallbackRecord;,
        Landroid/media/tv/ad/TvAdManager$TvAdServiceCallback;,
        Landroid/media/tv/ad/TvAdManager$Session;,
        Landroid/media/tv/ad/TvAdManager$ErrorCode;,
        Landroid/media/tv/ad/TvAdManager$SessionState;,
        Landroid/media/tv/ad/TvAdManager$SessionDataKey;,
        Landroid/media/tv/ad/TvAdManager$SessionDataType;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_APP_LINK_COMMAND:Ljava/lang/String; = "android.media.tv.ad.action.APP_LINK_COMMAND"

.field public static final blacklist APP_LINK_KEY_BACK_URI:Ljava/lang/String; = "back_uri"

.field public static final blacklist APP_LINK_KEY_CLASS_NAME:Ljava/lang/String; = "class_name"

.field public static final blacklist APP_LINK_KEY_COMMAND_TYPE:Ljava/lang/String; = "command_type"

.field public static final blacklist APP_LINK_KEY_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field public static final blacklist APP_LINK_KEY_SERVICE_ID:Ljava/lang/String; = "service_id"

.field public static final blacklist ERROR_BLOCKED:I = 0x5

.field public static final blacklist ERROR_ENCRYPTED:I = 0x6

.field public static final blacklist ERROR_NONE:I = 0x0

.field public static final blacklist ERROR_NOT_SUPPORTED:I = 0x2

.field public static final blacklist ERROR_RESOURCE_UNAVAILABLE:I = 0x4

.field public static final blacklist ERROR_UNKNOWN:I = 0x1

.field public static final blacklist ERROR_UNKNOWN_CHANNEL:I = 0x7

.field public static final blacklist ERROR_WEAK_SIGNAL:I = 0x3

.field public static final blacklist INTENT_KEY_AD_SERVICE_ID:Ljava/lang/String; = "ad_service_id"

.field public static final blacklist INTENT_KEY_CHANNEL_URI:Ljava/lang/String; = "channel_uri"

.field public static final blacklist INTENT_KEY_COMMAND_TYPE:Ljava/lang/String; = "command_type"

.field public static final blacklist INTENT_KEY_TV_INPUT_ID:Ljava/lang/String; = "tv_input_id"

.field public static final blacklist SESSION_DATA_KEY_AD_BUFFER:Ljava/lang/String; = "ad_buffer"

.field public static final blacklist SESSION_DATA_KEY_AD_REQUEST:Ljava/lang/String; = "ad_request"

.field public static final blacklist SESSION_DATA_KEY_BROADCAST_INFO_REQUEST:Ljava/lang/String; = "broadcast_info_request"

.field public static final blacklist SESSION_DATA_KEY_REQUEST_ID:Ljava/lang/String; = "request_id"

.field public static final blacklist SESSION_DATA_TYPE_AD_BUFFER_READY:Ljava/lang/String; = "ad_buffer_ready"

.field public static final blacklist SESSION_DATA_TYPE_AD_REQUEST:Ljava/lang/String; = "ad_request"

.field public static final blacklist SESSION_DATA_TYPE_BROADCAST_INFO_REQUEST:Ljava/lang/String; = "broadcast_info_request"

.field public static final blacklist SESSION_DATA_TYPE_REMOVE_BROADCAST_INFO_REQUEST:Ljava/lang/String; = "remove_broadcast_info_request"

.field public static final blacklist SESSION_STATE_ERROR:I = 0x3

.field public static final blacklist SESSION_STATE_RUNNING:I = 0x2

.field public static final blacklist SESSION_STATE_STOPPED:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "TvAdManager"


# instance fields
.field private final blacklist mCallbackRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/tv/ad/TvAdManager$TvAdServiceCallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mClient:Landroid/media/tv/ad/ITvAdClient;

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mNextSeq:I

.field private final blacklist mService:Landroid/media/tv/ad/ITvAdManager;

.field private final blacklist mSessionCallbackRecordMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mUserId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallbackRecords(Landroid/media/tv/ad/TvAdManager;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/ad/TvAdManager;->mCallbackRecords:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/media/tv/ad/TvAdManager;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/ad/TvAdManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmService(Landroid/media/tv/ad/TvAdManager;)Landroid/media/tv/ad/ITvAdManager;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/ad/TvAdManager;->mService:Landroid/media/tv/ad/ITvAdManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/ad/TvAdManager;->mSessionCallbackRecordMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUserId(Landroid/media/tv/ad/TvAdManager;)I
    .locals 0

    iget p0, p0, Landroid/media/tv/ad/TvAdManager;->mUserId:I

    return p0
.end method

.method public constructor blacklist <init>(Landroid/media/tv/ad/ITvAdManager;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/media/tv/ad/TvAdManager;->mSessionCallbackRecordMap:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/tv/ad/TvAdManager;->mCallbackRecords:Ljava/util/List;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/tv/ad/TvAdManager;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Landroid/media/tv/ad/TvAdManager;->mService:Landroid/media/tv/ad/ITvAdManager;

    iput p2, p0, Landroid/media/tv/ad/TvAdManager;->mUserId:I

    new-instance v0, Landroid/media/tv/ad/TvAdManager$1;

    invoke-direct {v0, p0}, Landroid/media/tv/ad/TvAdManager$1;-><init>(Landroid/media/tv/ad/TvAdManager;)V

    iput-object v0, p0, Landroid/media/tv/ad/TvAdManager;->mClient:Landroid/media/tv/ad/ITvAdClient;

    new-instance v0, Landroid/media/tv/ad/TvAdManager$2;

    invoke-direct {v0, p0}, Landroid/media/tv/ad/TvAdManager$2;-><init>(Landroid/media/tv/ad/TvAdManager;)V

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager;->mService:Landroid/media/tv/ad/ITvAdManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager;->mService:Landroid/media/tv/ad/ITvAdManager;

    iget v2, p0, Landroid/media/tv/ad/TvAdManager;->mUserId:I

    invoke-interface {v1, v0, v2}, Landroid/media/tv/ad/ITvAdManager;->registerCallback(Landroid/media/tv/ad/ITvAdManagerCallback;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    nop

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private blacklist createSessionInternal(Ljava/lang/String;Ljava/lang/String;Landroid/media/tv/ad/TvAdManager$SessionCallback;Landroid/os/Handler;)V
    .locals 10

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;

    invoke-direct {v0, p3, p4}, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;-><init>(Landroid/media/tv/ad/TvAdManager$SessionCallback;Landroid/os/Handler;)V

    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager;->mSessionCallbackRecordMap:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    iget v2, p0, Landroid/media/tv/ad/TvAdManager;->mNextSeq:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/media/tv/ad/TvAdManager;->mNextSeq:I

    iget-object v3, p0, Landroid/media/tv/ad/TvAdManager;->mSessionCallbackRecordMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v4, p0, Landroid/media/tv/ad/TvAdManager;->mService:Landroid/media/tv/ad/ITvAdManager;

    iget-object v5, p0, Landroid/media/tv/ad/TvAdManager;->mClient:Landroid/media/tv/ad/ITvAdClient;

    iget v9, p0, Landroid/media/tv/ad/TvAdManager;->mUserId:I

    move-object v6, p1

    move-object v7, p2

    move v8, v2

    invoke-interface/range {v4 .. v9}, Landroid/media/tv/ad/ITvAdManager;->createSession(Landroid/media/tv/ad/ITvAdClient;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :try_start_2
    monitor-exit v1

    return-void

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method


# virtual methods
.method public blacklist createSession(Ljava/lang/String;Ljava/lang/String;Landroid/media/tv/ad/TvAdManager$SessionCallback;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/tv/ad/TvAdManager;->createSessionInternal(Ljava/lang/String;Ljava/lang/String;Landroid/media/tv/ad/TvAdManager$SessionCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist getTvAdServiceList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/tv/ad/TvAdServiceInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager;->mService:Landroid/media/tv/ad/ITvAdManager;

    iget v1, p0, Landroid/media/tv/ad/TvAdManager;->mUserId:I

    invoke-interface {v0, v1}, Landroid/media/tv/ad/ITvAdManager;->getTvAdServiceList(I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist registerCallback(Ljava/util/concurrent/Executor;Landroid/media/tv/ad/TvAdManager$TvAdServiceCallback;)V
    .locals 3

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager;->mCallbackRecords:Ljava/util/List;

    new-instance v2, Landroid/media/tv/ad/TvAdManager$TvAdServiceCallbackRecord;

    invoke-direct {v2, p2, p1}, Landroid/media/tv/ad/TvAdManager$TvAdServiceCallbackRecord;-><init>(Landroid/media/tv/ad/TvAdManager$TvAdServiceCallback;Ljava/util/concurrent/Executor;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist sendAppLinkCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager;->mService:Landroid/media/tv/ad/ITvAdManager;

    iget v1, p0, Landroid/media/tv/ad/TvAdManager;->mUserId:I

    invoke-interface {v0, p1, p2, v1}, Landroid/media/tv/ad/ITvAdManager;->sendAppLinkCommand(Ljava/lang/String;Landroid/os/Bundle;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist unregisterCallback(Landroid/media/tv/ad/TvAdManager$TvAdServiceCallback;)V
    .locals 4

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager;->mCallbackRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/ad/TvAdManager$TvAdServiceCallbackRecord;

    invoke-virtual {v2}, Landroid/media/tv/ad/TvAdManager$TvAdServiceCallbackRecord;->getCallback()Landroid/media/tv/ad/TvAdManager$TvAdServiceCallback;

    move-result-object v3

    if-ne v3, p1, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
