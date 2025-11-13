.class public Lcom/samsung/android/scloud/oem/lib/sync/file/FileSyncManager;
.super Lcom/samsung/android/scloud/oem/lib/common/IClientHelper;
.source "FileSyncManager.java"


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
.field private final syncClient:Lcom/samsung/android/scloud/oem/lib/sync/file/IFileSyncClient;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/scloud/oem/lib/sync/file/FileSyncManager;->SERVICE_HANDLER_MAP:Ljava/util/Map;

    .line 67
    new-instance v1, Lcom/samsung/android/scloud/oem/lib/sync/file/FileSyncManager$1;

    invoke-direct {v1}, Lcom/samsung/android/scloud/oem/lib/sync/file/FileSyncManager$1;-><init>()V

    const-string v2, "isColdStartable"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    new-instance v1, Lcom/samsung/android/scloud/oem/lib/sync/file/FileSyncManager$2;

    invoke-direct {v1}, Lcom/samsung/android/scloud/oem/lib/sync/file/FileSyncManager$2;-><init>()V

    const-string/jumbo v2, "prepare"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    new-instance v1, Lcom/samsung/android/scloud/oem/lib/sync/file/FileSyncManager$3;

    invoke-direct {v1}, Lcom/samsung/android/scloud/oem/lib/sync/file/FileSyncManager$3;-><init>()V

    const-string v2, "getAttachmentInfo"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    new-instance v1, Lcom/samsung/android/scloud/oem/lib/sync/file/FileSyncManager$4;

    invoke-direct {v1}, Lcom/samsung/android/scloud/oem/lib/sync/file/FileSyncManager$4;-><init>()V

    const-string/jumbo v2, "upload"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    new-instance v1, Lcom/samsung/android/scloud/oem/lib/sync/file/FileSyncManager$5;

    invoke-direct {v1}, Lcom/samsung/android/scloud/oem/lib/sync/file/FileSyncManager$5;-><init>()V

    const-string v2, "download"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    new-instance v1, Lcom/samsung/android/scloud/oem/lib/sync/file/FileSyncManager$6;

    invoke-direct {v1}, Lcom/samsung/android/scloud/oem/lib/sync/file/FileSyncManager$6;-><init>()V

    const-string v2, "deleteItem"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    new-instance v1, Lcom/samsung/android/scloud/oem/lib/sync/file/FileSyncManager$7;

    invoke-direct {v1}, Lcom/samsung/android/scloud/oem/lib/sync/file/FileSyncManager$7;-><init>()V

    const-string v2, "complete"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/scloud/oem/lib/sync/file/IFileSyncClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "syncClient"
        }
    .end annotation

    .line 305
    invoke-direct {p0}, Lcom/samsung/android/scloud/oem/lib/common/IClientHelper;-><init>()V

    .line 306
    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/sync/file/FileSyncManager;->syncClient:Lcom/samsung/android/scloud/oem/lib/sync/file/IFileSyncClient;

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

    .line 316
    iget-object p0, p0, Lcom/samsung/android/scloud/oem/lib/sync/file/FileSyncManager;->syncClient:Lcom/samsung/android/scloud/oem/lib/sync/file/IFileSyncClient;

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

    .line 311
    sget-object p0, Lcom/samsung/android/scloud/oem/lib/sync/file/FileSyncManager;->SERVICE_HANDLER_MAP:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/scloud/oem/lib/common/IServiceHandler;

    return-object p0
.end method
