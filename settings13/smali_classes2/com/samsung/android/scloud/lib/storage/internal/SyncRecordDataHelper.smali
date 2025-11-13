.class Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper;
.super Ljava/lang/Object;
.source "SyncRecordDataHelper.java"

# interfaces
.implements Lcom/samsung/android/scloud/lib/storage/api/IRecordDataHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper$CallbackHandler;
    }
.end annotation


# instance fields
.field private final MSG_KEY_DOWNLOAD_FILE_PATH:Ljava/lang/String;

.field private final MSG_KEY_FILE_DESCRIPTOR:Ljava/lang/String;

.field private final MSG_KEY_HASH:Ljava/lang/String;

.field private final MSG_KEY_RECORD_ID:Ljava/lang/String;

.field private final MSG_KEY_RESULT:Ljava/lang/String;

.field private final MSG_REQUEST_FILE_DOWNLOAD:I

.field private final MSG_RESPONSE_FILE_DOWNLOAD_COMPLETED:I

.field private final TAG:Ljava/lang/String;

.field private agentMessenger:Landroid/os/Messenger;

.field private countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private fileDownloadResult:Ljava/lang/String;

.field private libMessenger:Landroid/os/Messenger;

.field private sourceKey:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$wQPK6YwVVv8EYf-hj-RkVwjSQbk(Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper;[Landroid/os/Messenger;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper;->lambda$createMessenger$0([Landroid/os/Messenger;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "RecordDataHelper"

    .line 19
    iput-object v0, p0, Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper;->TAG:Ljava/lang/String;

    const/16 v0, 0x3e8

    .line 21
    iput v0, p0, Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper;->MSG_REQUEST_FILE_DOWNLOAD:I

    const/16 v0, 0x3e9

    .line 22
    iput v0, p0, Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper;->MSG_RESPONSE_FILE_DOWNLOAD_COMPLETED:I

    const-string v0, "MSG_KEY_RECORD_ID"

    .line 25
    iput-object v0, p0, Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper;->MSG_KEY_RECORD_ID:Ljava/lang/String;

    const-string v0, "MSG_KEY_HASH"

    .line 26
    iput-object v0, p0, Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper;->MSG_KEY_HASH:Ljava/lang/String;

    const-string v0, "MSG_KEY_DOWNLOAD_FILE_PATH"

    .line 27
    iput-object v0, p0, Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper;->MSG_KEY_DOWNLOAD_FILE_PATH:Ljava/lang/String;

    const-string v0, "MSG_KEY_FILE_DESCRIPTOR"

    .line 28
    iput-object v0, p0, Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper;->MSG_KEY_FILE_DESCRIPTOR:Ljava/lang/String;

    const-string v0, "MSG_KEY_RESULT"

    .line 29
    iput-object v0, p0, Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper;->MSG_KEY_RESULT:Ljava/lang/String;

    const-string v0, "NONE"

    .line 31
    iput-object v0, p0, Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper;->fileDownloadResult:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 40
    invoke-direct {p0, p1}, Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper;->createMessenger(Landroid/content/Context;)Landroid/os/Messenger;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper;->libMessenger:Landroid/os/Messenger;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper;)Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper;->fileDownloadResult:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper;->fileDownloadResult:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper;)Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper;->sourceKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method private createMessenger(Landroid/content/Context;)Landroid/os/Messenger;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/os/Messenger;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 45
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 46
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 47
    new-instance v0, Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v1, p1}, Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper;[Landroid/os/Messenger;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 52
    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 54
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    aget-object p0, v1, v3

    return-object p0
.end method

.method private synthetic lambda$createMessenger$0([Landroid/os/Messenger;Ljava/util/concurrent/CountDownLatch;)V
    .locals 3

    .line 48
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper$CallbackHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper$CallbackHandler;-><init>(Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper;Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper$1;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    const/4 p0, 0x0

    aput-object v0, p1, p0

    .line 49
    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method


# virtual methods
.method public setAgentMessenger(Ljava/lang/String;Landroid/os/Messenger;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sourceKey",
            "agentMessenger"
        }
    .end annotation

    .line 110
    iput-object p1, p0, Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper;->sourceKey:Ljava/lang/String;

    .line 111
    iput-object p2, p0, Lcom/samsung/android/scloud/lib/storage/internal/SyncRecordDataHelper;->agentMessenger:Landroid/os/Messenger;

    return-void
.end method
