.class public final Lcom/samsung/android/scloud/oem/lib/sync/record/RecordSyncManager;
.super Lcom/samsung/android/scloud/oem/lib/common/IClientHelper;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final SERVICE_HANDLER_MAP:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordSyncManager;->SERVICE_HANDLER_MAP:Ljava/util/Map;

    new-instance v1, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordSyncManager$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordSyncManager$1;-><init>(I)V

    const-string v2, "isSyncable"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordSyncManager$1;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordSyncManager$1;-><init>(I)V

    const-string v2, "isColdStartable"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordSyncManager$1;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordSyncManager$1;-><init>(I)V

    const-string v2, "lastSyncTime"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordSyncManager$1;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordSyncManager$1;-><init>(I)V

    const-string/jumbo v2, "ready"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordSyncManager$1;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordSyncManager$1;-><init>(I)V

    const-string v2, "getLocalFiles"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordSyncManager$1;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordSyncManager$1;-><init>(I)V

    const-string v2, "fileWriteDone"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordSyncManager$1;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordSyncManager$1;-><init>(I)V

    const-string v2, "complete"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordSyncManager$1;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordSyncManager$1;-><init>(I)V

    const-string v2, "getLocalInfo"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getClient()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getServiceHandler(Ljava/lang/String;)Lcom/samsung/android/scloud/oem/lib/common/IServiceHandler;
    .locals 0

    sget-object p0, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordSyncManager;->SERVICE_HANDLER_MAP:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/scloud/oem/lib/common/IServiceHandler;

    return-object p0
.end method
