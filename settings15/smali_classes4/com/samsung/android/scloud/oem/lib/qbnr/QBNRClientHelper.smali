.class public final Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;
.super Lcom/samsung/android/scloud/oem/lib/common/IClientHelper;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final backupClient:Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient;

.field public mIsFinished:Z

.field public mIsSuccess:Z

.field public mProcNow:J

.field public mProcTotal:J

.field public final serviceHandlerMap:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->serviceHandlerMap:Ljava/util/Map;

    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->backupClient:Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient;

    new-instance p1, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$1;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const-string v1, "getClientInfo"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2;-><init>(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;I)V

    const-string v1, "backup"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2;

    const/4 v1, 0x1

    invoke-direct {p1, p0, v1}, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2;-><init>(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;I)V

    const-string/jumbo v1, "restore"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2;

    const/4 v1, 0x2

    invoke-direct {p1, p0, v1}, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2;-><init>(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;I)V

    const-string p0, "get_status"

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getClient()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->backupClient:Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient;

    return-object p0
.end method

.method public final getServiceHandler(Ljava/lang/String;)Lcom/samsung/android/scloud/oem/lib/common/IServiceHandler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->serviceHandlerMap:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/scloud/oem/lib/common/IServiceHandler;

    return-object p0
.end method
