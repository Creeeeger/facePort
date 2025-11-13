.class public final Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;
.super Lcom/samsung/android/scloud/oem/lib/common/IClientHelper;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final processedKeyList:Ljava/util/ArrayList;

.field public final serviceHandlerMap:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;->serviceHandlerMap:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;->processedKeyList:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$1;-><init>(I)V

    const-string v2, "backupPrepare"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$1;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$1;-><init>(I)V

    const-string v2, "getFileMeta"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$1;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$1;-><init>(I)V

    const-string v2, "backupComplete"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$1;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$1;-><init>(I)V

    const-string/jumbo v2, "restorePrepare"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$1;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$1;-><init>(I)V

    const-string/jumbo v2, "transactionBegin"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$1;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$1;-><init>(I)V

    const-string v2, "getFileList"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$7;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$7;-><init>(Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;I)V

    const-string v2, "getLargeFileList"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$1;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$1;-><init>(I)V

    const-string v2, "getLargeHashList"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$1;

    const/16 v2, 0xd

    invoke-direct {v1, v2}, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$1;-><init>(I)V

    const-string/jumbo v2, "restoreFile"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$1;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$1;-><init>(I)V

    const-string/jumbo v2, "transactionEnd"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$7;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$7;-><init>(Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;I)V

    const-string/jumbo p0, "restoreComplete"

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$1;

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$1;-><init>(I)V

    const-string v1, "deleteRestoreFile"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$1;

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$1;-><init>(I)V

    const-string v1, "checkAndUpdateReuseDB"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$1;

    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$1;-><init>(I)V

    const-string v1, "completeFile"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$1;

    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$1;-><init>(I)V

    const-string v1, "clearReuseFileDB"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$1;

    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager$1;-><init>(I)V

    const-string/jumbo v1, "requestCancel"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    iget-object p0, p0, Lcom/samsung/android/scloud/oem/lib/backup/file/FileClientManager;->serviceHandlerMap:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/scloud/oem/lib/common/IServiceHandler;

    return-object p0
.end method
