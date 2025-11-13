.class public Lcom/samsung/android/sec_platform_library/FactoryPhone;
.super Ljava/lang/Object;
.source "FactoryPhone.java"


# instance fields
.field private BIND_CLASS_NAME:Ljava/lang/String;

.field private HOST_NAME:Ljava/lang/String;

.field private LOG_TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field public mDummyHandler:Landroid/os/Handler;

.field private mPendingMessage:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

.field private mServiceMessenger:Landroid/os/Messenger;


# direct methods
.method static bridge synthetic -$$Nest$fgetHOST_NAME(Lcom/samsung/android/sec_platform_library/FactoryPhone;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->HOST_NAME:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetLOG_TAG(Lcom/samsung/android/sec_platform_library/FactoryPhone;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->LOG_TAG:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmServiceMessenger(Lcom/samsung/android/sec_platform_library/FactoryPhone;Landroid/os/Messenger;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mServiceMessenger:Landroid/os/Messenger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "F_PHONE"

    .line 21
    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->LOG_TAG:Ljava/lang/String;

    const-string v0, "com.sec.phone.SecPhoneService"

    .line 25
    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->BIND_CLASS_NAME:Ljava/lang/String;

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->HOST_NAME:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mContext:Landroid/content/Context;

    .line 28
    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mServiceMessenger:Landroid/os/Messenger;

    .line 29
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mPendingMessage:Ljava/util/LinkedList;

    .line 31
    new-instance v0, Lcom/samsung/android/sec_platform_library/FactoryPhone$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sec_platform_library/FactoryPhone$1;-><init>(Lcom/samsung/android/sec_platform_library/FactoryPhone;)V

    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    .line 46
    new-instance v0, Lcom/samsung/android/sec_platform_library/FactoryPhone$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/sec_platform_library/FactoryPhone$2;-><init>(Lcom/samsung/android/sec_platform_library/FactoryPhone;)V

    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mDummyHandler:Landroid/os/Handler;

    .line 61
    iput-object p1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mContext:Landroid/content/Context;

    .line 62
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->HOST_NAME:Ljava/lang/String;

    .line 63
    invoke-virtual {p0}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->connectToRilService()V

    return-void
.end method

.method private _invokeOemRilRequestRaw([BLandroid/os/Message;Z)V
    .locals 1

    if-nez p2, :cond_0

    .line 143
    iget-object p2, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mDummyHandler:Landroid/os/Handler;

    const/16 v0, 0x3e8

    invoke-virtual {p2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    .line 145
    :cond_0
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz p3, :cond_1

    .line 148
    invoke-direct {p0, p1}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->convertByteToString([B)Ljava/lang/String;

    move-result-object p1

    const-string p3, "Action"

    invoke-virtual {v0, p3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo p3, "request"

    .line 150
    invoke-virtual {v0, p3, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 152
    :goto_0
    invoke-virtual {p2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 153
    new-instance p1, Landroid/os/Messenger;

    invoke-virtual {p2}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object p3

    invoke-direct {p1, p3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object p1, p2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 155
    iget-object p1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mServiceMessenger:Landroid/os/Messenger;

    if-nez p1, :cond_2

    .line 156
    iget-object p1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->HOST_NAME:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mServiceMessenger is null, add message to pending queue..."

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual {p0, p2}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->addMessageToPendingQueue(Landroid/os/Message;)V

    return-void

    .line 162
    :cond_2
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private convertByteToString([B)Ljava/lang/String;
    .locals 2

    .line 169
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    .line 170
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 171
    aget-byte v1, p1, v0

    int-to-char v1, v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 172
    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public declared-synchronized addMessageToPendingQueue(Landroid/os/Message;)V
    .locals 3

    monitor-enter p0

    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->HOST_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " addMessageToPendingQueue()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mPendingMessage:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 178
    iget-object p1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mServiceMessenger:Landroid/os/Messenger;

    if-eqz p1, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->sendPendingMessage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public connectToRilService()V
    .locals 7

    .line 94
    iget-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->HOST_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " bind SecPhone Service with FactoryPhone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "android.os.UserHandle"

    .line 98
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "semOf"

    new-array v4, v1, [Ljava/lang/Class;

    .line 99
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    .line 100
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    .line 102
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 105
    :goto_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 106
    iget-object v3, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->BIND_CLASS_NAME:Ljava/lang/String;

    const-string v4, "com.sec.phone"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    iget-object v3, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v2, p0, v1, v0}, Landroid/content/Context;->semBindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    return-void
.end method

.method public disconnectFromRilService()V
    .locals 3

    .line 121
    iget-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->HOST_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "disconnect from Ril service"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mServiceMessenger:Landroid/os/Messenger;

    if-eqz v2, :cond_0

    .line 123
    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 124
    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mServiceMessenger:Landroid/os/Messenger;

    :cond_0
    return-void
.end method

.method public invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 3

    .line 137
    iget-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->HOST_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " invokeOemRilRequestRaw()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 138
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->_invokeOemRilRequestRaw([BLandroid/os/Message;Z)V

    return-void
.end method

.method registerAction()V
    .locals 1

    .line 195
    iget-object p0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->LOG_TAG:Ljava/lang/String;

    const-string v0, "default registerAction()"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public declared-synchronized sendPendingMessage()V
    .locals 3

    monitor-enter p0

    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->HOST_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " sendPendingMessage()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :catch_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mPendingMessage:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 187
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mServiceMessenger:Landroid/os/Messenger;

    iget-object v1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mPendingMessage:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 192
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
