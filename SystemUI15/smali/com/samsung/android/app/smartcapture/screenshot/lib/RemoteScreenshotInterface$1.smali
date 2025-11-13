.class public final Lcom/samsung/android/app/smartcapture/screenshot/lib/RemoteScreenshotInterface$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/app/smartcapture/screenshot/lib/RemoteScreenshotInterface;

.field public final synthetic val$connStartTime:J


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/smartcapture/screenshot/lib/RemoteScreenshotInterface;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/smartcapture/screenshot/lib/RemoteScreenshotInterface$1;->this$0:Lcom/samsung/android/app/smartcapture/screenshot/lib/RemoteScreenshotInterface;

    iput-wide p2, p0, Lcom/samsung/android/app/smartcapture/screenshot/lib/RemoteScreenshotInterface$1;->val$connStartTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/app/smartcapture/screenshot/lib/RemoteScreenshotInterface$1;->val$connStartTime:J

    sub-long/2addr v0, v2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "onServiceConnected : Service connected. Elapsed = "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "[ScrCap]_RemoteScreenshotInterface"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/app/smartcapture/screenshot/lib/RemoteScreenshotInterface$1;->this$0:Lcom/samsung/android/app/smartcapture/screenshot/lib/RemoteScreenshotInterface;

    sget v0, Lcom/samsung/android/app/smartcapture/screenshot/lib/IScreenshotService$Stub;->$r8$clinit:I

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.samsung.android.app.smartcapture.screenshot.lib.IScreenshotService"

    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/app/smartcapture/screenshot/lib/IScreenshotService;

    if-eqz v1, :cond_1

    move-object p2, v0

    check-cast p2, Lcom/samsung/android/app/smartcapture/screenshot/lib/IScreenshotService;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/samsung/android/app/smartcapture/screenshot/lib/IScreenshotService$Stub$Proxy;

    invoke-direct {v0, p2}, Lcom/samsung/android/app/smartcapture/screenshot/lib/IScreenshotService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    move-object p2, v0

    :goto_0
    iput-object p2, p1, Lcom/samsung/android/app/smartcapture/screenshot/lib/RemoteScreenshotInterface;->mService:Lcom/samsung/android/app/smartcapture/screenshot/lib/IScreenshotService;

    iget-object p0, p0, Lcom/samsung/android/app/smartcapture/screenshot/lib/RemoteScreenshotInterface$1;->this$0:Lcom/samsung/android/app/smartcapture/screenshot/lib/RemoteScreenshotInterface;

    iget-object p0, p0, Lcom/samsung/android/app/smartcapture/screenshot/lib/RemoteScreenshotInterface;->mConnectionListener:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;

    if-eqz p0, :cond_2

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->onConnectionResult(Z)V

    :cond_2
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "[ScrCap]_RemoteScreenshotInterface"

    const-string v0, "onServiceDisconnected : Service disconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/smartcapture/screenshot/lib/RemoteScreenshotInterface$1;->this$0:Lcom/samsung/android/app/smartcapture/screenshot/lib/RemoteScreenshotInterface;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/app/smartcapture/screenshot/lib/RemoteScreenshotInterface;->mService:Lcom/samsung/android/app/smartcapture/screenshot/lib/IScreenshotService;

    return-void
.end method
