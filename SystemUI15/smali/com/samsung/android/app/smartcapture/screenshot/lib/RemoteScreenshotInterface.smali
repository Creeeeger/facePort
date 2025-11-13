.class public final Lcom/samsung/android/app/smartcapture/screenshot/lib/RemoteScreenshotInterface;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mConnection:Lcom/samsung/android/app/smartcapture/screenshot/lib/RemoteScreenshotInterface$1;

.field public mConnectionListener:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;

.field public mContext:Landroid/content/Context;

.field public mService:Lcom/samsung/android/app/smartcapture/screenshot/lib/IScreenshotService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final disconnect()V
    .locals 4

    const-string v0, "[ScrCap]_RemoteScreenshotInterface"

    const-string v1, "disconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/app/smartcapture/screenshot/lib/RemoteScreenshotInterface;->mConnection:Lcom/samsung/android/app/smartcapture/screenshot/lib/RemoteScreenshotInterface$1;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/smartcapture/screenshot/lib/RemoteScreenshotInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "disconnect : e="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v1, "disconnect : No service connection"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/smartcapture/screenshot/lib/RemoteScreenshotInterface;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/app/smartcapture/screenshot/lib/RemoteScreenshotInterface;->mConnection:Lcom/samsung/android/app/smartcapture/screenshot/lib/RemoteScreenshotInterface$1;

    iput-object v0, p0, Lcom/samsung/android/app/smartcapture/screenshot/lib/RemoteScreenshotInterface;->mService:Lcom/samsung/android/app/smartcapture/screenshot/lib/IScreenshotService;

    iput-object v0, p0, Lcom/samsung/android/app/smartcapture/screenshot/lib/RemoteScreenshotInterface;->mConnectionListener:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;

    return-void
.end method
