.class Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$1;
.super Ljava/lang/Object;
.source "RecordClientManager.java"

# interfaces
.implements Lcom/samsung/android/scloud/oem/lib/common/IServiceHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;-><init>(Lcom/samsung/android/scloud/oem/lib/backup/IBackupClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$1;->this$0:Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleServiceAction(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "context",
            "client",
            "sourceKey",
            "extras"
        }
    .end annotation

    .line 73
    invoke-static {}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] GET_KEY_AND_DATE"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "file_descriptor"

    .line 74
    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p4

    check-cast p4, Landroid/os/ParcelFileDescriptor;

    .line 75
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-nez p4, :cond_0

    .line 79
    invoke-static {}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->access$000()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "] pfd is null"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$1;->this$0:Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;

    invoke-static {v1}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->access$100(Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_1

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 86
    :cond_1
    invoke-interface {v1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object p0, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$1;->this$0:Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;

    invoke-static {p0}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->access$100(Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    .line 89
    :try_start_0
    new-instance v1, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;

    new-instance v2, Landroid/util/JsonWriter;

    new-instance v3, Ljava/io/FileWriter;

    invoke-virtual {p4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v2, v3}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {v1, p1, p3, v2}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/util/JsonWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 90
    :try_start_1
    invoke-virtual {v1}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->open()V

    .line 91
    check-cast p2, Lcom/samsung/android/scloud/oem/lib/backup/record/IRecordClient;

    invoke-interface {p2, p1, v1}, Lcom/samsung/android/scloud/oem/lib/backup/record/IRecordClient;->addKeyAndDate(Landroid/content/Context;Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    invoke-virtual {v1}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->release()V

    .line 97
    :try_start_2
    invoke-virtual {p4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 99
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    const-string p1, "is_success"

    .line 103
    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v1, p0

    move-object p0, p1

    :goto_1
    if-eqz v1, :cond_2

    .line 94
    invoke-virtual {v1}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->release()V

    .line 97
    :cond_2
    :try_start_3
    invoke-virtual {p4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 99
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 102
    :goto_2
    throw p0
.end method
