.class public Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;
.super Ljava/lang/Object;
.source "SamsungRilConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector$IOnRilJobListener;,
        Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector$MessageHandler;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "SamsungRilConnector"

.field private static sInstance:Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;


# instance fields
.field private mBytesBuffer:[B

.field private mContext:Landroid/content/Context;

.field public mHandlerThread:Landroid/os/HandlerThread;

.field private mIsConnected:Z

.field private mListenerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector$IOnRilJobListener;",
            ">;"
        }
    .end annotation
.end field

.field public mMessageHandler:Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector$MessageHandler;

.field private mOperationName:Ljava/lang/String;

.field private mRilServiceConnection:Landroid/content/ServiceConnection;

.field private mServiceMessenger:Landroid/os/Messenger;

.field private mServiceReplyMessenger:Landroid/os/Messenger;


# direct methods
.method static bridge synthetic -$$Nest$fgetmBytesBuffer(Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;)[B
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;->mBytesBuffer:[B

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListenerRef(Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;->mListenerRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOperationName(Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;->mOperationName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmBytesBuffer(Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;[B)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;->mBytesBuffer:[B

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsConnected(Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;->mIsConnected:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmOperationName(Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;->mOperationName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmServiceMessenger(Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;Landroid/os/Messenger;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;->mServiceMessenger:Landroid/os/Messenger;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;->mIsConnected:Z

    const-string v0, "-"

    .line 70
    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;->mOperationName:Ljava/lang/String;

    .line 74
    new-instance v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector$1;-><init>(Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;->mRilServiceConnection:Landroid/content/ServiceConnection;

    .line 137
    sget-object v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;->TAG:Ljava/lang/String;

    const-string v1, "new()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RilHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;->mHandlerThread:Landroid/os/HandlerThread;

    .line 140
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 141
    new-instance v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector$MessageHandler;

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector$MessageHandler;-><init>(Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;->mMessageHandler:Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector$MessageHandler;

    .line 142
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;->mMessageHandler:Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector$MessageHandler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;->mServiceReplyMessenger:Landroid/os/Messenger;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;
    .locals 1

    .line 92
    sget-object v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;->sInstance:Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;

    invoke-direct {v0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;->sInstance:Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;

    .line 95
    :cond_0
    sget-object v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;->sInstance:Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;->setContext(Landroid/content/Context;)V

    .line 96
    sget-object p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;->sInstance:Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;

    return-object p0
.end method

.method public static getSimLockStatus()Ljava/lang/String;
    .locals 1

    const-string v0, "gsm.sim.state"

    .line 214
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private invokeRilService([BLandroid/os/Message;)V
    .locals 3

    .line 218
    sget-object v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;->TAG:Ljava/lang/String;

    const-string v1, "invoke ril service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "request"

    .line 220
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 221
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;->mServiceReplyMessenger:Landroid/os/Messenger;

    iput-object p1, p2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 222
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;->mServiceMessenger:Landroid/os/Messenger;

    if-nez p0, :cond_0

    const-string p0, "RIL service is not connected"

    .line 223
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 227
    :cond_0
    :try_start_0
    invoke-virtual {p0, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    const-string p0, "message sent to ril service"

    .line 228
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 230
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static parseOperationName([B)Ljava/lang/String;
    .locals 7

    const/16 v0, 0x33

    .line 288
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, v0, 0x4b

    add-int/lit8 v1, v1, 0x2

    .line 289
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, v0, 0x4c

    add-int/2addr v2, v1

    add-int/lit8 v3, v2, 0x2

    .line 291
    aget-byte v3, p0, v3

    shl-int/lit8 v3, v3, 0x8

    const v4, 0xff00

    and-int/2addr v3, v4

    const/4 v4, 0x0

    or-int/2addr v3, v4

    const/4 v5, 0x1

    add-int/2addr v2, v5

    add-int/lit8 v2, v2, 0x2

    .line 292
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v3

    .line 293
    new-array v3, v2, [B

    :goto_0
    if-ge v4, v2, :cond_0

    add-int/lit8 v6, v0, 0x4e

    add-int/2addr v6, v1

    add-int/2addr v6, v4

    add-int/lit8 v6, v6, 0x2

    .line 295
    aget-byte v6, p0, v6

    aput-byte v6, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 297
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/lang/String;-><init>([B)V

    const-string v0, "OP_NAME"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v5

    const-string v0, "\""

    .line 298
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v5

    .line 299
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private setContext(Landroid/content/Context;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public connect()V
    .locals 4

    .line 108
    sget-object v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;->TAG:Ljava/lang/String;

    const-string v1, "connect() => connect to the RIL service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-boolean v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;->mIsConnected:Z

    if-eqz v1, :cond_0

    const-string p0, "already connected"

    .line 111
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 115
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.sec.phone"

    const-string v3, "com.sec.phone.SecPhoneService"

    .line 116
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;->mContext:Landroid/content/Context;

    if-nez v2, :cond_1

    const-string p0, "Context is null. ignore"

    .line 118
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 121
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;->mRilServiceConnection:Landroid/content/ServiceConnection;

    const/4 v0, 0x1

    invoke-virtual {v2, v1, p0, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public disconnect()V
    .locals 3

    .line 125
    sget-object v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnect() => mIsConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;->mIsConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-boolean v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;->mIsConnected:Z

    if-nez v0, :cond_0

    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;->mRilServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 131
    iput-boolean v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;->mIsConnected:Z

    return-void
.end method

.method public getBlob()V
    .locals 7

    .line 146
    sget-object v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;->TAG:Ljava/lang/String;

    const-string v1, "getBlob()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-boolean v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;->mIsConnected:Z

    if-nez v1, :cond_0

    const-string p0, "not connected to RIL yet"

    .line 149
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 152
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 153
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v2, 0x5

    const/16 v3, 0x23

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 156
    :try_start_0
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v3, 0x6

    .line 157
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 158
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 160
    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 161
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;->mMessageHandler:Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector$MessageHandler;

    .line 162
    invoke-virtual {v3, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 161
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;->invokeRilService([BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-array p0, v4, [Ljava/io/Closeable;

    aput-object v1, p0, v6

    aput-object v0, p0, v5

    .line 166
    invoke-static {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatusUtils;->closeSilently([Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p0

    new-array v2, v4, [Ljava/io/Closeable;

    aput-object v1, v2, v6

    aput-object v0, v2, v5

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatusUtils;->closeSilently([Ljava/io/Closeable;)V

    .line 167
    throw p0

    :catch_0
    new-array p0, v4, [Ljava/io/Closeable;

    aput-object v1, p0, v6

    aput-object v0, p0, v5

    .line 166
    invoke-static {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatusUtils;->closeSilently([Ljava/io/Closeable;)V

    return-void
.end method

.method public getOperationName()Ljava/lang/String;
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;->mOperationName:Ljava/lang/String;

    return-object p0
.end method

.method public setBlob([B)V
    .locals 7

    .line 171
    sget-object v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;->TAG:Ljava/lang/String;

    const-string v1, "setBlob()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-boolean v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;->mIsConnected:Z

    if-nez v1, :cond_0

    const-string p0, "not connected to RIL yet"

    .line 173
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 176
    array-length v1, p1

    if-gtz v1, :cond_1

    goto :goto_2

    .line 180
    :cond_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 181
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 182
    array-length v2, p1

    add-int/lit8 v2, v2, 0x7

    const/16 v3, 0x23

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    .line 184
    :try_start_0
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v3, 0x5

    .line 185
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 186
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 187
    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 188
    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 189
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 190
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;->mMessageHandler:Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector$MessageHandler;

    .line 191
    invoke-virtual {v2, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 190
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;->invokeRilService([BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-array p0, v6, [Ljava/io/Closeable;

    aput-object v1, p0, v4

    aput-object v0, p0, v5

    .line 195
    invoke-static {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatusUtils;->closeSilently([Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 193
    :try_start_1
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-array p0, v6, [Ljava/io/Closeable;

    aput-object v1, p0, v4

    aput-object v0, p0, v5

    .line 195
    invoke-static {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatusUtils;->closeSilently([Ljava/io/Closeable;)V

    :goto_0
    return-void

    :goto_1
    new-array p1, v6, [Ljava/io/Closeable;

    aput-object v1, p1, v4

    aput-object v0, p1, v5

    invoke-static {p1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatusUtils;->closeSilently([Ljava/io/Closeable;)V

    .line 196
    throw p0

    :cond_2
    :goto_2
    const-string p0, "ignore invalid blob"

    .line 177
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setOnRilJobListener(Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector$IOnRilJobListener;)V
    .locals 1

    .line 104
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;->mListenerRef:Ljava/lang/ref/WeakReference;

    return-void
.end method
