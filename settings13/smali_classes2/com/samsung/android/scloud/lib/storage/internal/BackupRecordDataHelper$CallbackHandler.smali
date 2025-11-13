.class Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper$CallbackHandler;
.super Landroid/os/Handler;
.source "BackupRecordDataHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper;


# direct methods
.method private constructor <init>(Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper$CallbackHandler;->this$0:Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper;Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper$1;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper$CallbackHandler;-><init>(Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 64
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e9

    const-string v2, "["

    const-string v3, "RecordDataHelper"

    const-string v4, "MSG_KEY_RESULT"

    if-eq v0, v1, :cond_1

    const/16 v1, 0x7d1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper$CallbackHandler;->this$0:Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper;->access$202(Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper$CallbackHandler;->this$0:Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper;

    invoke-static {v0}, Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper;->access$100(Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] handleMessage MSG_RESPONSE_CMD_RESPONSE_INSTALL_APP "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper$CallbackHandler;->this$0:Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper;

    invoke-static {v0}, Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper;->access$200(Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper$CallbackHandler;->this$0:Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper;->access$002(Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper$CallbackHandler;->this$0:Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper;

    invoke-static {v0}, Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper;->access$100(Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] handleMessage MSG_RESPONSE_FILE_DOWNLOAD_COMPLETED "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper$CallbackHandler;->this$0:Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper;

    invoke-static {v0}, Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper;->access$000(Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper$CallbackHandler;->this$0:Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper;

    invoke-static {p0}, Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper;->access$300(Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
