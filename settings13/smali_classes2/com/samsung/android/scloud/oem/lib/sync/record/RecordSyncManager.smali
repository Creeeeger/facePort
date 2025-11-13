.class public Lcom/samsung/android/scloud/oem/lib/sync/record/RecordSyncManager;
.super Lcom/samsung/android/scloud/oem/lib/common/IClientHelper;
.source "RecordSyncManager.java"


# static fields
.field private static final SERVICE_HANDLER_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/scloud/oem/lib/common/IServiceHandler;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final syncClient:Lcom/samsung/android/scloud/oem/lib/sync/record/IRecordSyncClient;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordSyncManager;->SERVICE_HANDLER_MAP:Ljava/util/Map;

    .line 45
    new-instance v1, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordSyncManager$1;

    invoke-direct {v1}, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordSyncManager$1;-><init>()V

    const-string v2, "isSyncable"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    new-instance v1, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordSyncManager$2;

    invoke-direct {v1}, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordSyncManager$2;-><init>()V

    const-string v2, "isColdStartable"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    new-instance v1, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordSyncManager$3;

    invoke-direct {v1}, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordSyncManager$3;-><init>()V

    const-string v2, "lastSyncTime"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    new-instance v1, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordSyncManager$4;

    invoke-direct {v1}, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordSyncManager$4;-><init>()V

    const-string/jumbo v2, "ready"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    new-instance v1, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordSyncManager$5;

    invoke-direct {v1}, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordSyncManager$5;-><init>()V

    const-string v2, "getLocalFiles"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    new-instance v1, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordSyncManager$6;

    invoke-direct {v1}, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordSyncManager$6;-><init>()V

    const-string v2, "fileWriteDone"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    new-instance v1, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordSyncManager$7;

    invoke-direct {v1}, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordSyncManager$7;-><init>()V

    const-string v2, "complete"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    new-instance v1, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordSyncManager$8;

    invoke-direct {v1}, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordSyncManager$8;-><init>()V

    const-string v2, "getLocalInfo"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/scloud/oem/lib/sync/record/IRecordSyncClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "syncClient"
        }
    .end annotation

    .line 416
    invoke-direct {p0}, Lcom/samsung/android/scloud/oem/lib/common/IClientHelper;-><init>()V

    .line 417
    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordSyncManager;->syncClient:Lcom/samsung/android/scloud/oem/lib/sync/record/IRecordSyncClient;

    return-void
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

    .line 427
    iget-object p0, p0, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordSyncManager;->syncClient:Lcom/samsung/android/scloud/oem/lib/sync/record/IRecordSyncClient;

    return-object p0
.end method

.method public getServiceHandler(Ljava/lang/String;)Lcom/samsung/android/scloud/oem/lib/common/IServiceHandler;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "method"
        }
    .end annotation

    .line 422
    sget-object p0, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordSyncManager;->SERVICE_HANDLER_MAP:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/scloud/oem/lib/common/IServiceHandler;

    return-object p0
.end method
