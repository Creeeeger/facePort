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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/LowLatencyModeManager;->mServiceMessenger:Landroid/os/Messenger;

    iput-object v0, p0, Landroid/net/LowLatencyModeManager;->mServiceMessenger2:Landroid/os/Messenger;

    new-instance v0, Landroid/net/LowLatencyModeManager$1;

    invoke-direct {v0, p0}, Landroid/net/LowLatencyModeManager$1;-><init>(Landroid/net/LowLatencyModeManager;)V

    iput-object v0, p0, Landroid/net/LowLatencyModeManager;->mReceiverHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Landroid/net/LowLatencyModeManager;->mReceiverHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/net/LowLatencyModeManager;->mSvcModeMessenger:Landroid/os/Messenger;

    new-instance v0, Landroid/net/LowLatencyModeManager$2;

    invoke-direct {v0, p0}, Landroid/net/LowLatencyModeManager$2;-><init>(Landroid/net/LowLatencyModeManager;)V

    iput-object v0, p0, Landroid/net/LowLatencyModeManager;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    new-instance v0, Landroid/net/LowLatencyModeManager$3;

    invoke-direct {v0, p0}, Landroid/net/LowLatencyModeManager$3;-><init>(Landroid/net/LowLatencyModeManager;)V

    iput-object v0, p0, Landroid/net/LowLatencyModeManager;->mSecPhoneServiceConnection2:Landroid/content/ServiceConnection;

    iput-object p1, p0, Landroid/net/LowLatencyModeManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private blacklist connectToRilService()V
    .locals 4

    const-string v0, "connect To Ril service"

    invoke-direct {p0, v0}, Landroid/net/LowLatencyModeManager;->log(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.phone"

    const-string v2, "com.sec.phone.SecPhoneService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Landroid/net/LowLatencyModeManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/net/LowLatencyModeManager;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private blacklist connectToRilService2()V
    .locals 4

    const-string v0, "connect To Ril service2"

    invoke-direct {p0, v0}, Landroid/net/LowLatencyModeManager;->log(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.phone"

    const-string v2, "com.sec.phone.SecPhoneService2"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Landroid/net/LowLatencyModeManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/net/LowLatencyModeManager;->mSecPhoneServiceConnection2:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private blacklist log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "LowLatencyModeManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .locals 1

    const-string v0, "LowLatencyModeManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist unbindRilService(I)V
    .locals 4

    const/4 v0, 0x0

    const-string v1, "from unbindRilService : "

    if-nez p1, :cond_0

    iget-object v2, p0, Landroid/net/LowLatencyModeManager;->mServiceMessenger:Landroid/os/Messenger;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/net/LowLatencyModeManager;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v2, :cond_1

    :try_start_0
    const-string/jumbo v2, "unbindRilService"

    invoke-direct {p0, v2}, Landroid/net/LowLatencyModeManager;->log(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/net/LowLatencyModeManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/net/LowLatencyModeManager;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

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

    :goto_0
    iput-object v0, p0, Landroid/net/LowLatencyModeManager;->mServiceMessenger:Landroid/os/Messenger;

    goto :goto_2

    :cond_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    iget-object v2, p0, Landroid/net/LowLatencyModeManager;->mServiceMessenger2:Landroid/os/Messenger;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/net/LowLatencyModeManager;->mSecPhoneServiceConnection2:Landroid/content/ServiceConnection;

    if-eqz v2, :cond_1

    :try_start_1
    const-string/jumbo v2, "unbindRilService2"

    invoke-direct {p0, v2}, Landroid/net/LowLatencyModeManager;->log(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/net/LowLatencyModeManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/net/LowLatencyModeManager;->mSecPhoneServiceConnection2:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

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

    :goto_1
    iput-object v0, p0, Landroid/net/LowLatencyModeManager;->mServiceMessenger2:Landroid/os/Messenger;

    :cond_1
    :goto_2
    return-void
.end method


# virtual methods
.method public blacklist getLowLatencyMode(ILandroid/net/LowLatencyModeManager$LatencyCallback;)V
    .locals 9

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "invalid slotId id, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/LowLatencyModeManager;->loge(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v2, 0xd

    :try_start_0
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    nop

    const/4 v2, 0x1

    if-nez p1, :cond_1

    invoke-direct {p0}, Landroid/net/LowLatencyModeManager;->connectToRilService()V

    goto :goto_0

    :cond_1
    if-ne p1, v2, :cond_2

    invoke-direct {p0}, Landroid/net/LowLatencyModeManager;->connectToRilService2()V

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

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "request"

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string/jumbo v4, "slotId"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v4, p0, Landroid/net/LowLatencyModeManager;->mReceiverHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v5, p0, Landroid/net/LowLatencyModeManager;->mSvcModeMessenger:Landroid/os/Messenger;

    iput-object v5, v4, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    const/16 v7, 0xa

    if-ge v6, v7, :cond_5

    :try_start_1
    iget-object v7, p0, Landroid/net/LowLatencyModeManager;->mServiceMessenger:Landroid/os/Messenger;

    if-eqz v7, :cond_3

    if-nez p1, :cond_3

    iget-object v2, p0, Landroid/net/LowLatencyModeManager;->mServiceMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, v4}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    const/4 v5, 0x1

    goto :goto_4

    :cond_3
    iget-object v7, p0, Landroid/net/LowLatencyModeManager;->mServiceMessenger2:Landroid/os/Messenger;

    if-eqz v7, :cond_4

    if-ne p1, v2, :cond_4

    iget-object v2, p0, Landroid/net/LowLatencyModeManager;->mServiceMessenger2:Landroid/os/Messenger;

    invoke-virtual {v2, v4}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    const/4 v5, 0x1

    goto :goto_4

    :cond_4
    const-string/jumbo v7, "mServiceMessenger is null, wait more time for it is ready"

    invoke-direct {p0, v7}, Landroid/net/LowLatencyModeManager;->loge(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    const-wide/16 v7, 0xc8

    :try_start_2
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    goto :goto_3

    :catch_0
    move-exception v7

    :try_start_3
    invoke-virtual {v7}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_3

    :catch_1
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :catch_2
    move-exception v2

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

    return-void

    :cond_5
    :goto_4
    nop

    if-eqz v5, :cond_6

    iput-object p2, p0, Landroid/net/LowLatencyModeManager;->mCallback:Landroid/net/LowLatencyModeManager$LatencyCallback;

    :cond_6
    return-void

    :catch_3
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "make get latency settings data: exception occured: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/LowLatencyModeManager;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist getLowLatencyMode(Landroid/net/LowLatencyModeManager$LatencyCallback;)V
    .locals 3

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid default datat slotId id, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/LowLatencyModeManager;->loge(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0, v0, p1}, Landroid/net/LowLatencyModeManager;->getLowLatencyMode(ILandroid/net/LowLatencyModeManager$LatencyCallback;)V

    return-void
.end method

.method public blacklist setLowLatencyMode(IIIZZ)V
    .locals 8

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "invalid slotId id, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/LowLatencyModeManager;->loge(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v2, 0xd

    :try_start_0
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v1, p2}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v1, p3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p4, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    if-eqz p5, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    nop

    if-nez p1, :cond_3

    invoke-direct {p0}, Landroid/net/LowLatencyModeManager;->connectToRilService()V

    goto :goto_1

    :cond_3
    if-ne p1, v3, :cond_4

    invoke-direct {p0}, Landroid/net/LowLatencyModeManager;->connectToRilService2()V

    :cond_4
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "set latency mode, ulevel:"

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

    iput p2, p0, Landroid/net/LowLatencyModeManager;->mUlLevel:I

    iput p3, p0, Landroid/net/LowLatencyModeManager;->mDlLevel:I

    iput-boolean p4, p0, Landroid/net/LowLatencyModeManager;->mPrioDefault:Z

    iput-boolean p5, p0, Landroid/net/LowLatencyModeManager;->mExtension:Z

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "request"

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string/jumbo v4, "slotId"

    invoke-virtual {v2, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v4, p0, Landroid/net/LowLatencyModeManager;->mReceiverHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v5, p0, Landroid/net/LowLatencyModeManager;->mSvcModeMessenger:Landroid/os/Messenger;

    iput-object v5, v4, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    const/4 v5, 0x0

    :goto_2
    const/16 v6, 0xa

    if-ge v5, v6, :cond_7

    :try_start_1
    iget-object v6, p0, Landroid/net/LowLatencyModeManager;->mServiceMessenger:Landroid/os/Messenger;

    if-eqz v6, :cond_5

    if-nez p1, :cond_5

    iget-object v3, p0, Landroid/net/LowLatencyModeManager;->mServiceMessenger:Landroid/os/Messenger;

    invoke-virtual {v3, v4}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    return-void

    :cond_5
    iget-object v6, p0, Landroid/net/LowLatencyModeManager;->mServiceMessenger2:Landroid/os/Messenger;

    if-eqz v6, :cond_6

    if-ne p1, v3, :cond_6

    iget-object v3, p0, Landroid/net/LowLatencyModeManager;->mServiceMessenger2:Landroid/os/Messenger;

    invoke-virtual {v3, v4}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    return-void

    :cond_6
    const-string/jumbo v6, "mServiceMessenger is null, wait more time for it is ready"

    invoke-direct {p0, v6}, Landroid/net/LowLatencyModeManager;->loge(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    const-wide/16 v6, 0xc8

    :try_start_2
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    goto :goto_4

    :catch_0
    move-exception v6

    :try_start_3
    invoke-virtual {v6}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_4

    :catch_1
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :catch_2
    move-exception v3

    const-string/jumbo v5, "set latency settings failed"

    invoke-direct {p0, v5}, Landroid/net/LowLatencyModeManager;->loge(Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    nop

    :goto_5
    return-void

    :catch_3
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "make set latency settings data: exception occured: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/LowLatencyModeManager;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setLowLatencyMode(IIZZ)V
    .locals 7

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid default datat slotId id, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/LowLatencyModeManager;->loge(Ljava/lang/String;)V

    return-void

    :cond_0
    move-object v1, p0

    move v2, v0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/net/LowLatencyModeManager;->setLowLatencyMode(IIIZZ)V

    return-void
.end method
