.class Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper;
.super Ljava/lang/Object;
.source "BackupRecordDataHelper.java"

# interfaces
.implements Lcom/samsung/android/scloud/lib/storage/api/IRecordDataHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper$CallbackHandler;
    }
.end annotation


# instance fields
.field private final MSG_KEY_BACKUP_PATH:Ljava/lang/String;

.field private final MSG_KEY_DOWNLOAD_PATH:Ljava/lang/String;

.field private final MSG_KEY_FILE_DESCRIPTOR:Ljava/lang/String;

.field private final MSG_KEY_PACKAGE_NAME:Ljava/lang/String;

.field private final MSG_KEY_RESULT:Ljava/lang/String;

.field private final MSG_REQUEST_FILE_DOWNLOAD:I

.field private final MSG_REQUEST_INSTALL_APP:I

.field private final MSG_RESPONSE_CMD_RESPONSE_INSTALL_APP:I

.field private final MSG_RESPONSE_FILE_DOWNLOAD_COMPLETED:I

.field private final TAG:Ljava/lang/String;

.field private agentMessenger:Landroid/os/Messenger;

.field private appInstallationResult:Ljava/lang/String;

.field private countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private fileDownloadResult:Ljava/lang/String;

.field private libMessenger:Landroid/os/Messenger;

.field private sourceKey:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$gn45nLQZig-zSypWkRu5-ZvCF18(Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper;[Landroid/os/Messenger;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper;->lambda$createMessenger$0([Landroid/os/Messenger;Ljava/util/concurrent/CountDownLatch;)V

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

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "RecordDataHelper"

    .line 19
    iput-object v0, p0, Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper;->TAG:Ljava/lang/String;

    const/16 v0, 0x3e8

    .line 21
    iput v0, p0, Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper;->MSG_REQUEST_FILE_DOWNLOAD:I

    const/16 v0, 0x3e9

    .line 22
    iput v0, p0, Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper;->MSG_RESPONSE_FILE_DOWNLOAD_COMPLETED:I

    const/16 v0, 0x7d0

    .line 23
    iput v0, p0, Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper;->MSG_REQUEST_INSTALL_APP:I

    const/16 v0, 0x7d1

    .line 24
    iput v0, p0, Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper;->MSG_RESPONSE_CMD_RESPONSE_INSTALL_APP:I

    const-string v0, "MSG_KEY_BACKUP_PATH"

    .line 26
    iput-object v0, p0, Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper;->MSG_KEY_BACKUP_PATH:Ljava/lang/String;

    const-string v0, "MSG_KEY_DOWNLOAD_PATH"

    .line 27
    iput-object v0, p0, Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper;->MSG_KEY_DOWNLOAD_PATH:Ljava/lang/String;

    const-string v0, "MSG_KEY_FILE_DESCRIPTOR"

    .line 28
    iput-object v0, p0, Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper;->MSG_KEY_FILE_DESCRIPTOR:Ljava/lang/String;

    const-string v0, "MSG_KEY_PACKAGE_NAME"

    .line 29
    iput-object v0, p0, Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper;->MSG_KEY_PACKAGE_NAME:Ljava/lang/String;

    const-string v0, "MSG_KEY_RESULT"

    .line 30
    iput-object v0, p0, Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper;->MSG_KEY_RESULT:Ljava/lang/String;

    const-string v0, "NONE"

    .line 32
    iput-object v0, p0, Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper;->fileDownloadResult:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper;->appInstallationResult:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 42
    invoke-direct {p0, p1}, Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper;->createMessenger(Landroid/content/Context;)Landroid/os/Messenger;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper;->libMessenger:Landroid/os/Messenger;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper;)Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper;->fileDownloadResult:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper;->fileDownloadResult:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper;)Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper;->sourceKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper;)Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper;->appInstallationResult:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper;->appInstallationResult:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

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

    .line 47
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 48
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 49
    new-instance v0, Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v1, p1}, Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper;[Landroid/os/Messenger;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 54
    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 56
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    aget-object p0, v1, v3

    return-object p0
.end method

.method private synthetic lambda$createMessenger$0([Landroid/os/Messenger;Ljava/util/concurrent/CountDownLatch;)V
    .locals 3

    .line 50
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper$CallbackHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper$CallbackHandler;-><init>(Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper;Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper$1;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    const/4 p0, 0x0

    aput-object v0, p1, p0

    .line 51
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

    .line 125
    iput-object p1, p0, Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper;->sourceKey:Ljava/lang/String;

    .line 126
    iput-object p2, p0, Lcom/samsung/android/scloud/lib/storage/internal/BackupRecordDataHelper;->agentMessenger:Landroid/os/Messenger;

    return-void
.end method
