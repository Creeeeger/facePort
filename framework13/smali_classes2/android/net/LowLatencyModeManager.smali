.class public Landroid/net/LowLatencyModeManager;
.super Ljava/lang/Object;
.source "LowLatencyModeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/LowLatencyModeManager$LatencyCallback;,
        Landroid/net/LowLatencyModeManager$LatencyResult;
    }
.end annotation


# static fields
.field public static final blacklist LOW:I = 0x2

.field private static final blacklist MSG_GET_LATENCY_DONE:I = 0x2

.field private static final blacklist MSG_SET_LATENCY_DONE:I = 0x1

.field public static final blacklist NORMAL:I = 0x1

.field private static final blacklist SIMSLOT1:I = 0x0

.field private static final blacklist SIMSLOT2:I = 0x1

.field public static final blacklist SUPER_LOW:I = 0x4

.field private static final blacklist TAG:Ljava/lang/String; = "LowLatencyModeManager"

.field public static final blacklist VERY_LOW:I = 0x3


# instance fields
.field private blacklist mCallback:Landroid/net/LowLatencyModeManager$LatencyCallback;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mDlLevel:I

.field private blacklist mExtension:Z

.field private blacklist mPrioDefault:Z

.field private blacklist mReceiverHandler:Landroid/os/Handler;

.field private blacklist mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

.field private blacklist mSecPhoneServiceConnection2:Landroid/content/ServiceConnection;

.field private blacklist mServiceMessenger:Landroid/os/Messenger;

.field private blacklist mServiceMessenger2:Landroid/os/Messenger;

.field private blacklist mSvcModeMessenger:Landroid/os/Messenger;

.field private blacklist mUlLevel:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Landroid/net/LowLatencyModeManager;)Landroid/net/LowLatencyModeManager$LatencyCallback;
    .locals 0

    iget-object p0, p0, Landroid/net/LowLatencyModeManager;->mCallback:Landroid/net/LowLatencyModeManager$LatencyCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCallback(Landroid/net/LowLatencyModeManager;Landroid/net/LowLatencyModeManager$LatencyCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/net/LowLatencyModeManager;->mCallback:Landroid/net/LowLatencyModeManager$LatencyCallback;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmServiceMessenger(Landroid/net/LowLatencyModeManager;Landroid/os/Messenger;)V
    .locals 0

    iput-object p1, p0, Landroid/net/LowLatencyModeManager;->mServiceMessenger:Landroid/os/Messenger;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmServiceMessenger2(Landroid/net/LowLatencyModeManager;Landroid/os/Messenger;)V
    .locals 0

    iput-object p1, p0, Landroid/net/LowLatencyModeManager;->mServiceMessenger2:Landroid/os/Messenger;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlog(Landroid/net/LowLatencyModeManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/LowLatencyModeManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$munbindRilService(Landroid/net/LowLatencyModeManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/LowLatencyModeManager;->unbindRilService(I)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/LowLatencyModeManager;->mServiceMessenger:Landroid/os/Messenger;

    .line 46
    iput-object v0, p0, Landroid/net/LowLatencyModeManager;->mServiceMessenger2:Landroid/os/Messenger;

    .line 67
    new-instance v0, Landroid/net/LowLatencyModeManager$1;

    invoke-direct {v0, p0}, Landroid/net/LowLatencyModeManager$1;-><init>(Landroid/net/LowLatencyModeManager;)V

    iput-object v0, p0, Landroid/net/LowLatencyModeManager;->mReceiverHandler:Landroid/os/Handler;

    .line 106
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Landroid/net/LowLatencyModeManager;->mReceiverHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/net/LowLatencyModeManager;->mSvcModeMessenger:Landroid/os/Messenger;

    .line 108
    new-instance v0, Landroid/net/LowLatencyModeManager$2;

    invoke-direct {v0, p0}, Landroid/net/LowLatencyModeManager$2;-><init>(Landroid/net/LowLatencyModeManager;)V

    iput-object v0, p0, Landroid/net/LowLatencyModeManager;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    .line 119
    new-instance v0, Landroid/net/LowLatencyModeManager$3;

    invoke-direct {v0, p0}, Landroid/net/LowLatencyModeManager$3;-><init>(Landroid/net/LowLatencyModeManager;)V

    iput-object v0, p0, Landroid/net/LowLatencyModeManager;->mSecPhoneServiceConnection2:Landroid/content/ServiceConnection;

    .line 164
    iput-object p1, p0, Landroid/net/LowLatencyModeManager;->mContext:Landroid/content/Context;

    .line 165
    return-void
.end method

.method private blacklist connectToRilService()V
    .locals 4

    .line 319
    const-string v0, "connect To Ril service"

    invoke-direct {p0, v0}, Landroid/net/LowLatencyModeManager;->log(Ljava/lang/String;)V

    .line 321
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 322
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.phone"

    const-string v2, "com.sec.phone.SecPhoneService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    iget-object v1, p0, Landroid/net/LowLatencyModeManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/net/LowLatencyModeManager;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 324
    return-void
.end method

.method private blacklist connectToRilService2()V
    .locals 4

    .line 327
    const-string v0, "connect To Ril service2"

    invoke-direct {p0, v0}, Landroid/net/LowLatencyModeManager;->log(Ljava/lang/String;)V

    .line 329
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 330
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.phone"

    const-string v2, "com.sec.phone.SecPhoneService2"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 331
    iget-object v1, p0, Landroid/net/LowLatencyModeManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/net/LowLatencyModeManager;->mSecPhoneServiceConnection2:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 332
    return-void
.end method

.method private blacklist log(Ljava/lang/String;)V
    .locals 1
    .param p1, "info"    # Ljava/lang/String;

    .line 359
    const-string v0, "LowLatencyModeManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "info"    # Ljava/lang/String;

    .line 363
    const-string v0, "LowLatencyModeManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    return-void
.end method

.method private blacklist unbindRilService(I)V
    .locals 4
    .param p1, "slotId"    # I

    .line 335
    const/4 v0, 0x0

    const-string v1, "from unbindRilService : "

    if-nez p1, :cond_0

    .line 336
    iget-object v2, p0, Landroid/net/LowLatencyModeManager;->mServiceMessenger:Landroid/os/Messenger;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/net/LowLatencyModeManager;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v2, :cond_1

    .line 338
    :try_start_0
    const-string/jumbo v2, "unbindRilService"

    invoke-direct {p0, v2}, Landroid/net/LowLatencyModeManager;->log(Ljava/lang/String;)V

    .line 339
    iget-object v2, p0, Landroid/net/LowLatencyModeManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/net/LowLatencyModeManager;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    goto :goto_0

    .line 340
    :catch_0
    move-exception v2

    .line 341
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/LowLatencyModeManager;->loge(Ljava/lang/String;)V

    .line 343
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    iput-object v0, p0, Landroid/net/LowLatencyModeManager;->mServiceMessenger:Landroid/os/Messenger;

    goto :goto_2

    .line 345
    :cond_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 346
    iget-object v2, p0, Landroid/net/LowLatencyModeManager;->mServiceMessenger2:Landroid/os/Messenger;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/net/LowLatencyModeManager;->mSecPhoneServiceConnection2:Landroid/content/ServiceConnection;

    if-eqz v2, :cond_1

    .line 348
    :try_start_1
    const-string/jumbo v2, "unbindRilService2"

    invoke-direct {p0, v2}, Landroid/net/LowLatencyModeManager;->log(Ljava/lang/String;)V

    .line 349
    iget-object v2, p0, Landroid/net/LowLatencyModeManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/net/LowLatencyModeManager;->mSecPhoneServiceConnection2:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 352
    goto :goto_1

    .line 350
    :catch_1
    move-exception v2

    .line 351
    .restart local v2    # "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/LowLatencyModeManager;->loge(Ljava/lang/String;)V

    .line 353
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    iput-object v0, p0, Landroid/net/LowLatencyModeManager;->mServiceMessenger2:Landroid/os/Messenger;

    .line 356
    :cond_1
    :goto_2
    return-void
.end method


# virtual methods
.method public blacklist getLowLatencyMode(ILandroid/net/LowLatencyModeManager$LatencyCallback;)V
    .locals 9
    .param p1, "slotId"    # I
    .param p2, "callback"    # Landroid/net/LowLatencyModeManager$LatencyCallback;

    .line 183
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid slotId id, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/LowLatencyModeManager;->loge(Ljava/lang/String;)V

    .line 185
    return-void

    .line 189
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 190
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 192
    .local v1, "dos":Ljava/io/DataOutputStream;
    const/16 v2, 0xd

    :try_start_0
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 193
    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 194
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 198
    nop

    .line 200
    const/4 v2, 0x1

    if-nez p1, :cond_1

    .line 201
    invoke-direct {p0}, Landroid/net/LowLatencyModeManager;->connectToRilService()V

    goto :goto_0

    .line 202
    :cond_1
    if-ne p1, v2, :cond_2

    .line 203
    invoke-direct {p0}, Landroid/net/LowLatencyModeManager;->connectToRilService2()V

    .line 206
    :cond_2
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "start to get latency settings from cp, slotId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/LowLatencyModeManager;->log(Ljava/lang/String;)V

    .line 207
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 208
    .local v3, "req":Landroid/os/Bundle;
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const-string v5, "request"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 209
    const-string/jumbo v4, "slotId"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 210
    iget-object v4, p0, Landroid/net/LowLatencyModeManager;->mReceiverHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 211
    .local v4, "response":Landroid/os/Message;
    invoke-virtual {v4, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 212
    iget-object v5, p0, Landroid/net/LowLatencyModeManager;->mSvcModeMessenger:Landroid/os/Messenger;

    iput-object v5, v4, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 213
    const/4 v5, 0x0

    .line 215
    .local v5, "sent":Z
    const/4 v6, 0x0

    .local v6, "cnt":I
    :goto_1
    const/16 v7, 0xa

    if-ge v6, v7, :cond_5

    .line 216
    :try_start_1
    iget-object v7, p0, Landroid/net/LowLatencyModeManager;->mServiceMessenger:Landroid/os/Messenger;

    if-eqz v7, :cond_3

    if-nez p1, :cond_3

    .line 217
    invoke-virtual {v7, v4}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 218
    const/4 v5, 0x1

    .line 219
    goto :goto_4

    .line 220
    :cond_3
    iget-object v7, p0, Landroid/net/LowLatencyModeManager;->mServiceMessenger2:Landroid/os/Messenger;

    if-eqz v7, :cond_4

    if-ne p1, v2, :cond_4

    .line 221
    invoke-virtual {v7, v4}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 222
    const/4 v5, 0x1

    .line 223
    goto :goto_4

    .line 225
    :cond_4
    const-string v7, "mServiceMessenger is null, wait more time for it is ready"

    invoke-direct {p0, v7}, Landroid/net/LowLatencyModeManager;->loge(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 227
    const-wide/16 v7, 0xc8

    :try_start_2
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 232
    :goto_2
    goto :goto_3

    .line 230
    :catch_0
    move-exception v7

    .line 231
    .local v7, "e":Ljava/lang/NullPointerException;
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_3

    .line 228
    .end local v7    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v7

    .line 229
    .local v7, "ie":Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .end local v7    # "ie":Ljava/lang/InterruptedException;
    goto :goto_2

    .line 215
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 235
    .end local v6    # "cnt":I
    :catch_2
    move-exception v2

    .line 236
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get latency settings failed, e:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Landroid/net/LowLatencyModeManager;->loge(Ljava/lang/String;)V

    .line 237
    return-void

    .line 238
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_5
    :goto_4
    nop

    .line 240
    if-eqz v5, :cond_6

    iput-object p2, p0, Landroid/net/LowLatencyModeManager;->mCallback:Landroid/net/LowLatencyModeManager$LatencyCallback;

    .line 241
    :cond_6
    return-void

    .line 195
    .end local v3    # "req":Landroid/os/Bundle;
    .end local v4    # "response":Landroid/os/Message;
    .end local v5    # "sent":Z
    :catch_3
    move-exception v2

    .line 196
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "make get latency settings data: exception occured: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/LowLatencyModeManager;->loge(Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public blacklist getLowLatencyMode(Landroid/net/LowLatencyModeManager$LatencyCallback;)V
    .locals 3
    .param p1, "callback"    # Landroid/net/LowLatencyModeManager$LatencyCallback;

    .line 169
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 170
    .local v0, "defaultDataSlotId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid default datat slotId id, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/LowLatencyModeManager;->loge(Ljava/lang/String;)V

    .line 172
    return-void

    .line 174
    :cond_0
    invoke-virtual {p0, v0, p1}, Landroid/net/LowLatencyModeManager;->getLowLatencyMode(ILandroid/net/LowLatencyModeManager$LatencyCallback;)V

    .line 176
    return-void
.end method

.method public blacklist setLowLatencyMode(IIIZZ)V
    .locals 8
    .param p1, "slotId"    # I
    .param p2, "ulevel"    # I
    .param p3, "dlevel"    # I
    .param p4, "prio"    # Z
    .param p5, "extension"    # Z

    .line 256
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid slotId id, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/LowLatencyModeManager;->loge(Ljava/lang/String;)V

    .line 258
    return-void

    .line 262
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 263
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 265
    .local v1, "dos":Ljava/io/DataOutputStream;
    const/16 v2, 0xd

    :try_start_0
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 266
    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 267
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 268
    invoke-virtual {v1, p2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 269
    invoke-virtual {v1, p3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 270
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p4, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 271
    if-eqz p5, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 275
    nop

    .line 277
    if-nez p1, :cond_3

    .line 278
    invoke-direct {p0}, Landroid/net/LowLatencyModeManager;->connectToRilService()V

    goto :goto_1

    .line 279
    :cond_3
    if-ne p1, v3, :cond_4

    .line 280
    invoke-direct {p0}, Landroid/net/LowLatencyModeManager;->connectToRilService2()V

    .line 283
    :cond_4
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set latency mode, ulevel:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ",dlevel:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", prio:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ",extension:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ",slotId:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/LowLatencyModeManager;->log(Ljava/lang/String;)V

    .line 284
    iput p2, p0, Landroid/net/LowLatencyModeManager;->mUlLevel:I

    .line 285
    iput p3, p0, Landroid/net/LowLatencyModeManager;->mDlLevel:I

    .line 286
    iput-boolean p4, p0, Landroid/net/LowLatencyModeManager;->mPrioDefault:Z

    .line 287
    iput-boolean p5, p0, Landroid/net/LowLatencyModeManager;->mExtension:Z

    .line 288
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 289
    .local v2, "req":Landroid/os/Bundle;
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const-string v5, "request"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 290
    const-string/jumbo v4, "slotId"

    invoke-virtual {v2, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 291
    iget-object v4, p0, Landroid/net/LowLatencyModeManager;->mReceiverHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 292
    .local v4, "response":Landroid/os/Message;
    invoke-virtual {v4, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 293
    iget-object v5, p0, Landroid/net/LowLatencyModeManager;->mSvcModeMessenger:Landroid/os/Messenger;

    iput-object v5, v4, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 295
    const/4 v5, 0x0

    .local v5, "cnt":I
    :goto_2
    const/16 v6, 0xa

    if-ge v5, v6, :cond_7

    .line 296
    :try_start_1
    iget-object v6, p0, Landroid/net/LowLatencyModeManager;->mServiceMessenger:Landroid/os/Messenger;

    if-eqz v6, :cond_5

    if-nez p1, :cond_5

    .line 297
    invoke-virtual {v6, v4}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 298
    return-void

    .line 299
    :cond_5
    iget-object v6, p0, Landroid/net/LowLatencyModeManager;->mServiceMessenger2:Landroid/os/Messenger;

    if-eqz v6, :cond_6

    if-ne p1, v3, :cond_6

    .line 300
    invoke-virtual {v6, v4}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 301
    return-void

    .line 303
    :cond_6
    const-string v6, "mServiceMessenger is null, wait more time for it is ready"

    invoke-direct {p0, v6}, Landroid/net/LowLatencyModeManager;->loge(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 305
    const-wide/16 v6, 0xc8

    :try_start_2
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 310
    :goto_3
    goto :goto_4

    .line 308
    :catch_0
    move-exception v6

    .line 309
    .local v6, "e":Ljava/lang/NullPointerException;
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_4

    .line 306
    .end local v6    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v6

    .line 307
    .local v6, "ie":Ljava/lang/InterruptedException;
    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .end local v6    # "ie":Ljava/lang/InterruptedException;
    goto :goto_3

    .line 295
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 313
    .end local v5    # "cnt":I
    :catch_2
    move-exception v3

    .line 314
    .local v3, "e":Landroid/os/RemoteException;
    const-string v5, "set latency settings failed"

    invoke-direct {p0, v5}, Landroid/net/LowLatencyModeManager;->loge(Ljava/lang/String;)V

    goto :goto_5

    .line 315
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_7
    nop

    .line 316
    :goto_5
    return-void

    .line 272
    .end local v2    # "req":Landroid/os/Bundle;
    .end local v4    # "response":Landroid/os/Message;
    :catch_3
    move-exception v2

    .line 273
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "make set latency settings data: exception occured: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/LowLatencyModeManager;->loge(Ljava/lang/String;)V

    .line 274
    return-void
.end method

.method public blacklist setLowLatencyMode(IIZZ)V
    .locals 7
    .param p1, "ulevel"    # I
    .param p2, "dlevel"    # I
    .param p3, "prio"    # Z
    .param p4, "extension"    # Z

    .line 245
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 246
    .local v0, "defaultDataSlotId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid default datat slotId id, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/LowLatencyModeManager;->loge(Ljava/lang/String;)V

    .line 248
    return-void

    .line 250
    :cond_0
    move-object v1, p0

    move v2, v0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/net/LowLatencyModeManager;->setLowLatencyMode(IIIZZ)V

    .line 252
    return-void
.end method
