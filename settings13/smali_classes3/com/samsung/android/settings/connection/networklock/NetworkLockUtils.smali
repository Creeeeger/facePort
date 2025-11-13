.class public Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils;
.super Ljava/lang/Object;
.source "NetworkLockUtils.java"


# instance fields
.field private final CMD:[B

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field public mNoResponseTimer:Landroid/os/CountDownTimer;

.field private mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

.field private mServiceMessenger:Landroid/os/Messenger;

.field private mWaitingMessage:I

.field resp:[B


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWaitingMessage(Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils;->mWaitingMessage:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmServiceMessenger(Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils;Landroid/os/Messenger;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils;->mServiceMessenger:Landroid/os/Messenger;

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetOemSimLock(Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils;->getOemSimLock()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mhandleGetSimLockResponse(Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils;->handleGetSimLockResponse(Landroid/os/Message;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 54
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils;->CMD:[B

    new-array v0, v0, [B

    .line 55
    iput-object v0, p0, Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils;->resp:[B

    const/4 v0, 0x0

    .line 106
    iput v0, p0, Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils;->mWaitingMessage:I

    const/4 v0, 0x0

    .line 107
    iput-object v0, p0, Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils;->mServiceMessenger:Landroid/os/Messenger;

    .line 141
    new-instance v0, Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils$1;

    const-wide/16 v3, 0x4e20

    const-wide/16 v5, 0x3e8

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils$1;-><init>(Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils;JJ)V

    iput-object v0, p0, Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils;->mNoResponseTimer:Landroid/os/CountDownTimer;

    .line 156
    new-instance v0, Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils$2;-><init>(Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils;->mHandler:Landroid/os/Handler;

    .line 205
    new-instance v0, Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils$3;-><init>(Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils;)V

    iput-object v0, p0, Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    .line 50
    iput-object p1, p0, Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils;->mContext:Landroid/content/Context;

    return-void

    nop

    :array_0
    .array-data 1
        0x4t
        0x2t
        0x0t
        0x4t
    .end array-data
.end method

.method private getOemSimLock()Z
    .locals 6

    const-string v0, "Network Lock"

    const-string v1, "getOemSimLock"

    .line 111
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 113
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v3, 0x51

    .line 116
    :try_start_0
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v3, 0x42

    .line 117
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v3, 0x4

    .line 118
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 119
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const/16 v4, 0x6d

    const/16 v5, 0x14

    invoke-direct {p0, v3, v4, v5}, Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils;->sendRilRequest([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 126
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 128
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_1
    :try_start_2
    const-string p0, "getOemSimLock exception occured during operation"

    .line 121
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 p0, 0x0

    .line 125
    :try_start_3
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 126
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    .line 128
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return p0

    .line 125
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 126
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    .line 128
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :goto_3
    throw p0
.end method

.method private handleGetSimLockResponse(Landroid/os/Message;)V
    .locals 2

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleGetSimLockResponse"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Network Lock"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "response"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_2

    .line 170
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 175
    aget-byte v0, p1, v0

    if-nez v0, :cond_1

    const-string v0, "checklock lock: "

    .line 176
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v0, p0, Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils;->setSPRNetworkLocked(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    const-string v0, "checklock unlock: "

    .line 180
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v0, p0, Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils;->setSPRNetworkUnLocked(Landroid/content/Context;)V

    .line 184
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleGetSimLockResponse buf.length "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " buf is "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    :goto_1
    const-string p0, "response is null or empty"

    .line 171
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 3

    .line 188
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 189
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "request"

    .line 190
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 192
    invoke-virtual {p2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 193
    iput-object v0, p2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 196
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils;->mServiceMessenger:Landroid/os/Messenger;

    if-eqz p0, :cond_0

    .line 197
    invoke-virtual {p0, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    goto :goto_0

    :cond_0
    const-string p0, "Network Lock"

    const-string p1, "mServiceMessenger is null. Do nothing."

    .line 199
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public static isSPRNetworkUnLocked(Landroid/content/Context;)Z
    .locals 5

    .line 219
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    const-string v1, "userdebug"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    :goto_1
    const-string v1, "Network Lock"

    if-eqz v0, :cond_2

    const-string p0, "SPR unlock for eng/userdebug"

    .line 221
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 229
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "spr_network_lock"

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v3, :cond_3

    move v2, v3

    .line 230
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isSPRNetworkUnLocked: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "ro.boot.carrierid"

    const-string v0, "none"

    .line 232
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-string v0, "not support sprSimLock always unlocked"

    const-string v4, "CscFeature_Setting_SupportSimUnlock"

    if-eqz p0, :cond_4

    .line 233
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p0

    .line 234
    invoke-virtual {p0, v4, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_5

    .line 235
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 239
    :cond_4
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p0

    .line 240
    invoke-virtual {p0, v4, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 241
    invoke-static {}, Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils;->isSprBootCarrierId()Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_2

    :cond_5
    move v3, v2

    goto :goto_3

    .line 242
    :cond_6
    :goto_2
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return v3
.end method

.method private static isSprBootCarrierId()Z
    .locals 4

    const-string v0, "SPR"

    const-string v1, "VMU"

    const-string v2, "BST"

    const-string v3, "XAS"

    .line 273
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "ro.boot.carrierid"

    const-string v2, "none"

    .line 274
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 275
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private sendRilRequest([BII)V
    .locals 1

    .line 135
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sendRilRequest invokeOemRilRequestRaw message "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "Network Lock"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iput p2, p0, Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils;->mWaitingMessage:I

    .line 137
    iget-object p3, p0, Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils;->mNoResponseTimer:Landroid/os/CountDownTimer;

    invoke-virtual {p3}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 138
    iget-object p3, p0, Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils;->mHandler:Landroid/os/Handler;

    invoke-virtual {p3, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public getSPROemSimLock(Landroid/content/Context;)V
    .locals 3

    const-string v0, "Network Lock"

    const-string v1, "getSPROemSimLock()"

    .line 260
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.phone"

    const-string v2, "com.sec.phone.SecPhoneService"

    .line 263
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    iget-object p0, p0, Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public setSPRNetworkLocked(Landroid/content/Context;)V
    .locals 1

    .line 255
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "spr_network_lock"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string p0, "Network Lock"

    const-string p1, "setSPRNetworkLocked to 0"

    .line 256
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setSPRNetworkUnLocked(Landroid/content/Context;)V
    .locals 1

    .line 250
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "spr_network_lock"

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string p0, "Network Lock"

    const-string p1, "setSPRNetworkUnLocked to 1"

    .line 251
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public unbindFromService(Landroid/content/Context;)V
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 269
    iget-object p0, p0, Lcom/samsung/android/settings/connection/networklock/NetworkLockUtils;->mNoResponseTimer:Landroid/os/CountDownTimer;

    invoke-virtual {p0}, Landroid/os/CountDownTimer;->cancel()V

    return-void
.end method
