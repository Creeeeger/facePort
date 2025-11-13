.class public final Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper$CallbackHandler;
.super Landroid/os/Handler;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper$CallbackHandler;->this$0:Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e9

    iget-object p0, p0, Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper$CallbackHandler;->this$0:Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "MSG_KEY_RESULT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper;->fileDownloadResult:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper;->sourceKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] handleMessage MSG_RESPONSE_FILE_DOWNLOAD_COMPLETED "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper;->fileDownloadResult:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RecordDataHelper"

    invoke-static {v0, p1}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
