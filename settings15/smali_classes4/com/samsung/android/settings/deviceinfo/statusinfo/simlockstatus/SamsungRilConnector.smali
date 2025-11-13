.class public final Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static sInstance:Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;


# instance fields
.field public mBytesBuffer:[B

.field public mContext:Landroid/content/Context;

.field public mIsConnected:Z

.field public mListenerRef:Ljava/lang/ref/WeakReference;

.field public mMessageHandler:Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector$MessageHandler;

.field public mOperationName:Ljava/lang/String;

.field public mRilServiceConnection:Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector$1;

.field public mServiceMessenger:Landroid/os/Messenger;

.field public mServiceReplyMessenger:Landroid/os/Messenger;


# direct methods
.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;
    .locals 3

    sget-object v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;->sInstance:Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;->mIsConnected:Z

    const-string v1, "-"

    iput-object v1, v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;->mOperationName:Ljava/lang/String;

    new-instance v1, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector$1;

    invoke-direct {v1, v0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector$1;-><init>(Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;)V

    iput-object v1, v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;->mRilServiceConnection:Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector$1;

    const-string v1, "SamsungRilConnector"

    const-string/jumbo v2, "new()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "RilHandler"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector$MessageHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector$MessageHandler;-><init>(Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;Landroid/os/Looper;)V

    iput-object v2, v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;->mMessageHandler:Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector$MessageHandler;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v1, v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;->mServiceReplyMessenger:Landroid/os/Messenger;

    sput-object v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;->sInstance:Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;

    :cond_0
    sget-object v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;->sInstance:Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;

    iput-object p0, v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final invokeRilService([BLandroid/os/Message;)V
    .locals 3

    const-string v0, "invoke ril service"

    const-string v1, "SamsungRilConnector"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "request"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;->mServiceReplyMessenger:Landroid/os/Messenger;

    iput-object p1, p2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;->mServiceMessenger:Landroid/os/Messenger;

    if-nez p0, :cond_0

    const-string p0, "RIL service is not connected"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    const-string p0, "message sent to ril service"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method
