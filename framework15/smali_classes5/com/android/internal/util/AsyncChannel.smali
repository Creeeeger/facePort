.class public Lcom/android/internal/util/AsyncChannel;
.super Ljava/lang/Object;
.source "AsyncChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;,
        Lcom/android/internal/util/AsyncChannel$DeathMonitor;,
        Lcom/android/internal/util/AsyncChannel$SyncMessenger;
    }
.end annotation


# static fields
.field private static final greylist-max-o BASE:I = 0x11000

.field public static final greylist-max-o CMD_CHANNEL_DISCONNECT:I = 0x11003

.field public static final greylist-max-o CMD_CHANNEL_DISCONNECTED:I = 0x11004

.field public static final greylist-max-o CMD_CHANNEL_FULLY_CONNECTED:I = 0x11002

.field public static final greylist CMD_CHANNEL_FULL_CONNECTION:I = 0x11001

.field public static final greylist CMD_CHANNEL_HALF_CONNECTED:I = 0x11000

.field private static final greylist-max-o CMD_TO_STRING_COUNT:I = 0x5

.field private static final greylist-max-o DBG:Z = false

.field public static final greylist-max-o STATUS_BINDING_UNSUCCESSFUL:I = 0x1

.field public static final greylist-max-o STATUS_FULL_CONNECTION_REFUSED_ALREADY_CONNECTED:I = 0x3

.field public static final greylist-max-o STATUS_REMOTE_DISCONNECTION:I = 0x4

.field public static final greylist-max-o STATUS_SEND_UNSUCCESSFUL:I = 0x2

.field public static final greylist STATUS_SUCCESSFUL:I = 0x0

.field private static final greylist-max-o TAG:Ljava/lang/String; = "AsyncChannel"

.field private static greylist-max-o sCmdToString:[Ljava/lang/String;


# instance fields
.field private greylist-max-o mConnection:Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;

.field private greylist-max-o mDeathMonitor:Lcom/android/internal/util/AsyncChannel$DeathMonitor;

.field private greylist-max-o mDstMessenger:Landroid/os/Messenger;

.field private greylist-max-o mSrcContext:Landroid/content/Context;

.field private greylist-max-o mSrcHandler:Landroid/os/Handler;

.field private greylist-max-o mSrcMessenger:Landroid/os/Messenger;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmDstMessenger(Lcom/android/internal/util/AsyncChannel;Landroid/os/Messenger;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/util/AsyncChannel;->mDstMessenger:Landroid/os/Messenger;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mreplyDisconnected(Lcom/android/internal/util/AsyncChannel;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/util/AsyncChannel;->replyDisconnected(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mreplyHalfConnected(Lcom/android/internal/util/AsyncChannel;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/util/AsyncChannel;->replyHalfConnected(I)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/internal/util/AsyncChannel;->sCmdToString:[Ljava/lang/String;

    sget-object v0, Lcom/android/internal/util/AsyncChannel;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "CMD_CHANNEL_HALF_CONNECTED"

    aput-object v2, v0, v1

    sget-object v0, Lcom/android/internal/util/AsyncChannel;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "CMD_CHANNEL_FULL_CONNECTION"

    aput-object v2, v0, v1

    sget-object v0, Lcom/android/internal/util/AsyncChannel;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "CMD_CHANNEL_FULLY_CONNECTED"

    aput-object v2, v0, v1

    sget-object v0, Lcom/android/internal/util/AsyncChannel;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x3

    const-string v2, "CMD_CHANNEL_DISCONNECT"

    aput-object v2, v0, v1

    sget-object v0, Lcom/android/internal/util/AsyncChannel;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x4

    const-string v2, "CMD_CHANNEL_DISCONNECTED"

    aput-object v2, v0, v1

    return-void
.end method

.method public constructor greylist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static greylist-max-p cmdToString(I)Ljava/lang/String;
    .locals 1

    const v0, 0x11000

    sub-int/2addr p0, v0

    if-ltz p0, :cond_0

    sget-object v0, Lcom/android/internal/util/AsyncChannel;->sCmdToString:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/util/AsyncChannel;->sCmdToString:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private greylist-max-o linkToDeathMonitor()Z
    .locals 3

    iget-object v0, p0, Lcom/android/internal/util/AsyncChannel;->mConnection:Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/util/AsyncChannel;->mDeathMonitor:Lcom/android/internal/util/AsyncChannel$DeathMonitor;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/util/AsyncChannel$DeathMonitor;

    invoke-direct {v0, p0}, Lcom/android/internal/util/AsyncChannel$DeathMonitor;-><init>(Lcom/android/internal/util/AsyncChannel;)V

    iput-object v0, p0, Lcom/android/internal/util/AsyncChannel;->mDeathMonitor:Lcom/android/internal/util/AsyncChannel$DeathMonitor;

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/util/AsyncChannel;->mDstMessenger:Landroid/os/Messenger;

    invoke-virtual {v1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/util/AsyncChannel;->mDeathMonitor:Lcom/android/internal/util/AsyncChannel$DeathMonitor;

    invoke-interface {v1, v2, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/util/AsyncChannel;->mDeathMonitor:Lcom/android/internal/util/AsyncChannel$DeathMonitor;

    return v0

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private static greylist-max-o log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "AsyncChannel"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private greylist-max-o replyDisconnected(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/util/AsyncChannel;->mSrcHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/util/AsyncChannel;->mSrcHandler:Landroid/os/Handler;

    const v1, 0x11004

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/internal/util/AsyncChannel;->mDstMessenger:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/internal/util/AsyncChannel;->mSrcHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private greylist-max-o replyHalfConnected(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/util/AsyncChannel;->mSrcHandler:Landroid/os/Handler;

    const v1, 0x11000

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/internal/util/AsyncChannel;->mDstMessenger:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {p0}, Lcom/android/internal/util/AsyncChannel;->linkToDeathMonitor()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    :cond_0
    iget-object v1, p0, Lcom/android/internal/util/AsyncChannel;->mSrcHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public greylist-max-o connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 1

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    return-void
.end method

.method public greylist connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/AsyncChannel;->connected(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/util/AsyncChannel;->replyHalfConnected(I)V

    return-void
.end method

.method public greylist-max-o connect(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p3}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public greylist-max-o connect(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    new-instance v6, Lcom/android/internal/util/AsyncChannel$1ConnectAsync;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/util/AsyncChannel$1ConnectAsync;-><init>(Lcom/android/internal/util/AsyncChannel;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public greylist-max-o connect(Lcom/android/internal/util/AsyncService;Landroid/os/Messenger;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/internal/util/AsyncService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    return-void
.end method

.method public greylist-max-o connectSrcHandlerToPackageSync(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    new-instance v0, Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;

    invoke-direct {v0, p0}, Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;-><init>(Lcom/android/internal/util/AsyncChannel;)V

    iput-object v0, p0, Lcom/android/internal/util/AsyncChannel;->mConnection:Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;

    iput-object p1, p0, Lcom/android/internal/util/AsyncChannel;->mSrcContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/internal/util/AsyncChannel;->mSrcHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/util/AsyncChannel;->mSrcMessenger:Landroid/os/Messenger;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/util/AsyncChannel;->mDstMessenger:Landroid/os/Messenger;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3, p4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/util/AsyncChannel;->mConnection:Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    xor-int/lit8 v2, v1, 0x1

    return v2
.end method

.method public greylist-max-o connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)I
    .locals 1

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/util/AsyncChannel;->connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)I

    move-result v0

    return v0
.end method

.method public greylist connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)I
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/AsyncChannel;->connected(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-r connected(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V
    .locals 2

    iput-object p1, p0, Lcom/android/internal/util/AsyncChannel;->mSrcContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/internal/util/AsyncChannel;->mSrcHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/internal/util/AsyncChannel;->mSrcHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/util/AsyncChannel;->mSrcMessenger:Landroid/os/Messenger;

    iput-object p3, p0, Lcom/android/internal/util/AsyncChannel;->mDstMessenger:Landroid/os/Messenger;

    return-void
.end method

.method public greylist disconnect()V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/util/AsyncChannel;->mConnection:Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/util/AsyncChannel;->mSrcContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/util/AsyncChannel;->mSrcContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/util/AsyncChannel;->mConnection:Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v1, p0, Lcom/android/internal/util/AsyncChannel;->mConnection:Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const v2, 0x11004

    iput v2, v0, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/android/internal/util/AsyncChannel;->mSrcMessenger:Landroid/os/Messenger;

    iput-object v2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object v2, p0, Lcom/android/internal/util/AsyncChannel;->mDstMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/util/AsyncChannel;->replyDisconnected(I)V

    iput-object v1, p0, Lcom/android/internal/util/AsyncChannel;->mSrcHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/util/AsyncChannel;->mConnection:Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/util/AsyncChannel;->mDstMessenger:Landroid/os/Messenger;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/util/AsyncChannel;->mDeathMonitor:Lcom/android/internal/util/AsyncChannel$DeathMonitor;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/util/AsyncChannel;->mDstMessenger:Landroid/os/Messenger;

    invoke-virtual {v2}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/util/AsyncChannel;->mDeathMonitor:Lcom/android/internal/util/AsyncChannel$DeathMonitor;

    invoke-interface {v2, v3, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iput-object v1, p0, Lcom/android/internal/util/AsyncChannel;->mDeathMonitor:Lcom/android/internal/util/AsyncChannel$DeathMonitor;

    :cond_1
    return-void
.end method

.method public greylist-max-o disconnected()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/util/AsyncChannel;->mSrcContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/internal/util/AsyncChannel;->mSrcHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/android/internal/util/AsyncChannel;->mSrcMessenger:Landroid/os/Messenger;

    iput-object v0, p0, Lcom/android/internal/util/AsyncChannel;->mDstMessenger:Landroid/os/Messenger;

    iput-object v0, p0, Lcom/android/internal/util/AsyncChannel;->mDeathMonitor:Lcom/android/internal/util/AsyncChannel$DeathMonitor;

    iput-object v0, p0, Lcom/android/internal/util/AsyncChannel;->mConnection:Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;

    return-void
.end method

.method public greylist-max-o fullyConnectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)I
    .locals 2

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/AsyncChannel;->connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)I

    move-result v0

    if-nez v0, :cond_0

    const v1, 0x11001

    invoke-virtual {p0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v1

    iget v0, v1, Landroid/os/Message;->arg1:I

    :cond_0
    return v0
.end method

.method public greylist-max-p replyToMessage(Landroid/os/Message;I)V
    .locals 1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p2, v0, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    return-void
.end method

.method public greylist-max-r replyToMessage(Landroid/os/Message;II)V
    .locals 1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p2, v0, Landroid/os/Message;->what:I

    iput p3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    return-void
.end method

.method public greylist-max-o replyToMessage(Landroid/os/Message;III)V
    .locals 1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p2, v0, Landroid/os/Message;->what:I

    iput p3, v0, Landroid/os/Message;->arg1:I

    iput p4, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    return-void
.end method

.method public greylist-max-r replyToMessage(Landroid/os/Message;IIILjava/lang/Object;)V
    .locals 1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p2, v0, Landroid/os/Message;->what:I

    iput p3, v0, Landroid/os/Message;->arg1:I

    iput p4, v0, Landroid/os/Message;->arg2:I

    iput-object p5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    return-void
.end method

.method public greylist-max-r replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    .locals 1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p2, v0, Landroid/os/Message;->what:I

    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    return-void
.end method

.method public greylist replyToMessage(Landroid/os/Message;Landroid/os/Message;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/util/AsyncChannel;->mSrcMessenger:Landroid/os/Messenger;

    iput-object v0, p2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TODO: handle replyToMessage RemoteException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/AsyncChannel;->log(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public greylist sendMessage(I)V
    .locals 1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public greylist-max-r sendMessage(II)V
    .locals 1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    iput p2, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public greylist sendMessage(III)V
    .locals 1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    iput p2, v0, Landroid/os/Message;->arg1:I

    iput p3, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public greylist sendMessage(IIILjava/lang/Object;)V
    .locals 1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    iput p2, v0, Landroid/os/Message;->arg1:I

    iput p3, v0, Landroid/os/Message;->arg2:I

    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public greylist-max-o sendMessage(ILjava/lang/Object;)V
    .locals 1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public greylist sendMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/util/AsyncChannel;->mSrcMessenger:Landroid/os/Messenger;

    iput-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/util/AsyncChannel;->mDstMessenger:Landroid/os/Messenger;

    invoke-virtual {v0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/internal/util/AsyncChannel;->replyDisconnected(I)V

    :goto_0
    return-void
.end method

.method public greylist-max-o sendMessageSynchronously(I)Landroid/os/Message;
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o sendMessageSynchronously(II)Landroid/os/Message;
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    iput p2, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-r sendMessageSynchronously(III)Landroid/os/Message;
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    iput p2, v0, Landroid/os/Message;->arg1:I

    iput p3, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o sendMessageSynchronously(IIILjava/lang/Object;)Landroid/os/Message;
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    iput p2, v0, Landroid/os/Message;->arg1:I

    iput p3, v0, Landroid/os/Message;->arg2:I

    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-r sendMessageSynchronously(Landroid/os/Message;)Landroid/os/Message;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/util/AsyncChannel;->mDstMessenger:Landroid/os/Messenger;

    invoke-static {v0, p1}, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->-$$Nest$smsendMessageSynchronously(Landroid/os/Messenger;Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method
