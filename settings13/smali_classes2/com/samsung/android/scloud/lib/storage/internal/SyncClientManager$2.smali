.class Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager$2;
.super Ljava/lang/Object;
.source "SyncClientManager.java"

# interfaces
.implements Lcom/samsung/android/scloud/oem/lib/common/IServiceHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager;-><init>(Landroid/content/Context;Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager;

.field final synthetic val$syncDataClient:Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;


# direct methods
.method constructor <init>(Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager;Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$syncDataClient"
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager$2;->this$0:Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager;

    iput-object p2, p0, Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager$2;->val$syncDataClient:Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleServiceAction(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "client",
            "name",
            "extras"
        }
    .end annotation

    .line 56
    invoke-static {}, Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager;->access$000()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "] GET_LOCAL_CHANGES"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object p0, p0, Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager$2;->val$syncDataClient:Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;

    invoke-interface {p0, p1, p4}, Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;->getHeader(Landroid/content/Context;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object p0

    .line 58
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 59
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_1

    .line 61
    new-array p3, p2, [Ljava/lang/String;

    .line 62
    new-array p4, p2, [J

    .line 63
    new-array v0, p2, [Ljava/lang/String;

    .line 64
    new-array v1, p2, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_0

    .line 67
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/scloud/lib/storage/data/Header;

    .line 68
    invoke-virtual {v3}, Lcom/samsung/android/scloud/lib/storage/data/Header;->getLocalId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p3, v2

    .line 69
    invoke-virtual {v3}, Lcom/samsung/android/scloud/lib/storage/data/Header;->getRecordId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 70
    invoke-virtual {v3}, Lcom/samsung/android/scloud/lib/storage/data/Header;->getTimeStamp()J

    move-result-wide v4

    aput-wide v4, p4, v2

    .line 71
    invoke-virtual {v3}, Lcom/samsung/android/scloud/lib/storage/data/Header;->getStatus()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "local_id"

    .line 73
    invoke-virtual {p1, p0, p3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string/jumbo p0, "record_id"

    .line 74
    invoke-virtual {p1, p0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string/jumbo p0, "timestamp"

    .line 75
    invoke-virtual {p1, p0, p4}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    const-string/jumbo p0, "status"

    .line 76
    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1
    const-string p0, "is_success"

    const/4 p2, 0x1

    .line 78
    invoke-virtual {p1, p0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p1
.end method
