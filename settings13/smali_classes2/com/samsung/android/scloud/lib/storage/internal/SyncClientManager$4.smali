.class Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager$4;
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

    .line 136
    iput-object p1, p0, Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager$4;->this$0:Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager;

    iput-object p2, p0, Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager$4;->val$syncDataClient:Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleServiceAction(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
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

    .line 139
    invoke-static {}, Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager;->access$000()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] DOWNLOAD"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "record_pfd"

    .line 142
    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    const-string/jumbo v2, "messenger"

    .line 144
    invoke-virtual {p4, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p4

    check-cast p4, Landroid/os/Messenger;

    .line 145
    iget-object v2, p0, Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager$4;->this$0:Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager;

    invoke-static {v2}, Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager;->access$100(Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager;)Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper;->setAgentMessenger(Ljava/lang/String;Landroid/os/Messenger;)V

    .line 147
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 148
    new-instance p4, Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordReader;

    invoke-direct {p4, v0}, Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordReader;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 149
    invoke-virtual {p4}, Lcom/samsung/android/scloud/lib/storage/internal/RecordReader;->start()V

    .line 151
    :try_start_0
    invoke-virtual {p4}, Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordReader;->getRecordDataSetList()Ljava/util/List;

    move-result-object v0

    .line 152
    iget-object v2, p0, Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager$4;->val$syncDataClient:Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;

    iget-object p0, p0, Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager$4;->this$0:Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager;

    invoke-static {p0}, Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager;->access$100(Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager;)Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper;

    move-result-object p0

    invoke-interface {v2, p1, v0, p0}, Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;->setData(Landroid/content/Context;Ljava/util/List;Lcom/samsung/android/scloud/lib/storage/api/IRecordDataHelper;)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    invoke-virtual {p4}, Lcom/samsung/android/scloud/lib/storage/internal/RecordReader;->close()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 154
    :try_start_1
    invoke-static {}, Lcom/samsung/android/scloud/lib/storage/internal/SyncClientManager;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "] DOWNLOAD "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    invoke-virtual {p4}, Lcom/samsung/android/scloud/lib/storage/internal/RecordReader;->close()V

    const/4 p0, 0x0

    :goto_0
    const-string p1, "is_success"

    .line 158
    invoke-virtual {p2, p1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p2

    .line 156
    :goto_1
    invoke-virtual {p4}, Lcom/samsung/android/scloud/lib/storage/internal/RecordReader;->close()V

    .line 157
    throw p0
.end method
