.class public Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager;
.super Lcom/samsung/android/scloud/lib/storage/internal/CommonClientManager;
.source "SyncClientManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SyncClientManager"


# instance fields
.field private recordDataHelper:Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper;

.field private final syncDataClient:Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "context",
            "syncDataClient"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Lcom/samsung/android/scloud/lib/storage/internal/CommonClientManager;-><init>()V

    .line 42
    iput-object p2, p0, Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager;->syncDataClient:Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;

    .line 43
    new-instance v0, Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper;

    invoke-direct {v0, p1}, Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager;->recordDataHelper:Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper;

    .line 45
    iget-object p1, p0, Lcom/samsung/android/scloud/lib/storage/internal/CommonClientManager;->serviceHandlerMap:Ljava/util/Map;

    new-instance v0, Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager$1;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager$1;-><init>(Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager;Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;)V

    const-string/jumbo v1, "prepare"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object p1, p0, Lcom/samsung/android/scloud/lib/storage/internal/CommonClientManager;->serviceHandlerMap:Ljava/util/Map;

    new-instance v0, Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager$2;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager$2;-><init>(Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager;Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;)V

    const-string v1, "getLocalChanges"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object p1, p0, Lcom/samsung/android/scloud/lib/storage/internal/CommonClientManager;->serviceHandlerMap:Ljava/util/Map;

    new-instance v0, Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager$3;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager$3;-><init>(Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager;Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;)V

    const-string/jumbo v1, "upload"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object p1, p0, Lcom/samsung/android/scloud/lib/storage/internal/CommonClientManager;->serviceHandlerMap:Ljava/util/Map;

    new-instance v0, Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager$4;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager$4;-><init>(Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager;Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;)V

    const-string v1, "download"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object p1, p0, Lcom/samsung/android/scloud/lib/storage/internal/CommonClientManager;->serviceHandlerMap:Ljava/util/Map;

    new-instance v0, Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager$5;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager$5;-><init>(Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager;Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;)V

    const-string v1, "delete"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget-object p1, p0, Lcom/samsung/android/scloud/lib/storage/internal/CommonClientManager;->serviceHandlerMap:Ljava/util/Map;

    new-instance v0, Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager$6;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager$6;-><init>(Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager;Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;)V

    const-string/jumbo v1, "uploadComplete"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    iget-object p1, p0, Lcom/samsung/android/scloud/lib/storage/internal/CommonClientManager;->serviceHandlerMap:Ljava/util/Map;

    new-instance v0, Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager$7;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager$7;-><init>(Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager;Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;)V

    const-string p2, "finish"

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    iget-object p1, p0, Lcom/samsung/android/scloud/lib/storage/internal/CommonClientManager;->serviceHandlerMap:Ljava/util/Map;

    new-instance p2, Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager$8;

    invoke-direct {p2, p0}, Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager$8;-><init>(Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager;)V

    const-string p0, "getFileDescriptor"

    invoke-interface {p1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager;)Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager;->recordDataHelper:Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper;

    return-object p0
.end method


# virtual methods
.method public getClient(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 229
    iget-object p0, p0, Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager;->syncDataClient:Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;

    return-object p0
.end method
