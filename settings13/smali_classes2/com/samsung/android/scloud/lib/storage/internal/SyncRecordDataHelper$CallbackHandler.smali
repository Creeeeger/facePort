.class Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper$CallbackHandler;
.super Landroid/os/Handler;
.source "SyncRecordDataHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper;


# direct methods
.method private constructor <init>(Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 59
    iput-object p1, p0, Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper$CallbackHandler;->this$0:Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper;Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper$1;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper$CallbackHandler;-><init>(Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 62
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper$CallbackHandler;->this$0:Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "MSG_KEY_RESULT"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper;->access$002(Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper$CallbackHandler;->this$0:Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper;

    invoke-static {v0}, Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper;->access$100(Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] handleMessage MSG_RESPONSE_FILE_DOWNLOAD_COMPLETED "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper$CallbackHandler;->this$0:Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper;

    invoke-static {v0}, Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper;->access$000(Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RecordDataHelper"

    invoke-static {v0, p1}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper$CallbackHandler;->this$0:Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper;

    invoke-static {p0}, Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper;->access$200(Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
