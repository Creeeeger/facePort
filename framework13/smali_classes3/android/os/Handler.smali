.class public Landroid/os/Handler;
.super Ljava/lang/Object;
.source "Handler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Handler$BlockingRunnable;,
        Landroid/os/Handler$MessengerImpl;,
        Landroid/os/Handler$Callback;
    }
.end annotation


# static fields
.field private static final greylist-max-o FIND_POTENTIAL_LEAKS:Z = false

.field private static greylist-max-o MAIN_THREAD_HANDLER:Landroid/os/Handler; = null

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Handler"


# instance fields
.field final greylist-max-o mAsynchronous:Z

.field final greylist mCallback:Landroid/os/Handler$Callback;

.field final greylist mLooper:Landroid/os/Looper;

.field greylist mMessenger:Landroid/os/IMessenger;

.field final greylist-max-o mQueue:Landroid/os/MessageQueue;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 74
    const/4 v0, 0x0

    sput-object v0, Landroid/os/Handler;->MAIN_THREAD_HANDLER:Landroid/os/Handler;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 129
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;Z)V

    .line 130
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Handler$Callback;)V
    .locals 1
    .param p1, "callback"    # Landroid/os/Handler$Callback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 153
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;Z)V

    .line 154
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Handler$Callback;Z)V
    .locals 3
    .param p1, "callback"    # Landroid/os/Handler$Callback;
    .param p2, "async"    # Z

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Handler;->mLooper:Landroid/os/Looper;

    .line 225
    if-eqz v0, :cond_0

    .line 230
    iget-object v0, v0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    iput-object v0, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    .line 231
    iput-object p1, p0, Landroid/os/Handler;->mCallback:Landroid/os/Handler$Callback;

    .line 232
    iput-boolean p2, p0, Landroid/os/Handler;->mAsynchronous:Z

    .line 233
    return-void

    .line 226
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t create handler inside thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 227
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " that has not called Looper.prepare()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist <init>(Landroid/os/Looper;)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;

    .line 162
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 163
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "callback"    # Landroid/os/Handler$Callback;

    .line 173
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 174
    return-void
.end method

.method public constructor greylist <init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "callback"    # Landroid/os/Handler$Callback;
    .param p3, "async"    # Z

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    iput-object p1, p0, Landroid/os/Handler;->mLooper:Landroid/os/Looper;

    .line 257
    iget-object v0, p1, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    iput-object v0, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    .line 258
    iput-object p2, p0, Landroid/os/Handler;->mCallback:Landroid/os/Handler$Callback;

    .line 259
    iput-boolean p3, p0, Landroid/os/Handler;->mAsynchronous:Z

    .line 260
    return-void
.end method

.method public constructor greylist-max-r <init>(Z)V
    .locals 1
    .param p1, "async"    # Z

    .line 194
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;Z)V

    .line 195
    return-void
.end method

.method public static whitelist createAsync(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 3
    .param p0, "looper"    # Landroid/os/Looper;

    .line 276
    if-eqz p0, :cond_0

    .line 277
    new-instance v0, Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-object v0

    .line 276
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "looper must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist createAsync(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;
    .locals 2
    .param p0, "looper"    # Landroid/os/Looper;
    .param p1, "callback"    # Landroid/os/Handler$Callback;

    .line 294
    if-eqz p0, :cond_1

    .line 295
    if-eqz p1, :cond_0

    .line 296
    new-instance v0, Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-object v0

    .line 295
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "looper must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o enqueueMessage(Landroid/os/MessageQueue;Landroid/os/Message;J)Z
    .locals 1
    .param p1, "queue"    # Landroid/os/MessageQueue;
    .param p2, "msg"    # Landroid/os/Message;
    .param p3, "uptimeMillis"    # J

    .line 772
    iput-object p0, p2, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 773
    invoke-static {}, Landroid/os/ThreadLocalWorkSource;->getUid()I

    move-result v0

    iput v0, p2, Landroid/os/Message;->workSourceUid:I

    .line 775
    iget-boolean v0, p0, Landroid/os/Handler;->mAsynchronous:Z

    if-eqz v0, :cond_0

    .line 776
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 778
    :cond_0
    invoke-virtual {p1, p2, p3, p4}, Landroid/os/MessageQueue;->enqueueMessage(Landroid/os/Message;J)Z

    move-result v0

    return v0
.end method

.method public static greylist-max-r getMain()Landroid/os/Handler;
    .locals 2

    .line 303
    sget-object v0, Landroid/os/Handler;->MAIN_THREAD_HANDLER:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 304
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Landroid/os/Handler;->MAIN_THREAD_HANDLER:Landroid/os/Handler;

    .line 306
    :cond_0
    sget-object v0, Landroid/os/Handler;->MAIN_THREAD_HANDLER:Landroid/os/Handler;

    return-object v0
.end method

.method private static greylist-max-o getPostMessage(Ljava/lang/Runnable;)Landroid/os/Message;
    .locals 1
    .param p0, "r"    # Ljava/lang/Runnable;

    .line 928
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 929
    .local v0, "m":Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    .line 930
    return-object v0
.end method

.method private static greylist getPostMessage(Ljava/lang/Runnable;Ljava/lang/Object;)Landroid/os/Message;
    .locals 1
    .param p0, "r"    # Ljava/lang/Runnable;
    .param p1, "token"    # Ljava/lang/Object;

    .line 935
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 936
    .local v0, "m":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 937
    iput-object p0, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    .line 938
    return-object v0
.end method

.method private static greylist-max-o handleCallback(Landroid/os/Message;)V
    .locals 1
    .param p0, "message"    # Landroid/os/Message;

    .line 942
    iget-object v0, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 943
    return-void
.end method

.method public static greylist-max-o mainIfNull(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 1
    .param p0, "handler"    # Landroid/os/Handler;

    .line 312
    if-nez p0, :cond_0

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public whitelist dispatchMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 98
    iget-object v0, p1, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 99
    invoke-static {p1}, Landroid/os/Handler;->handleCallback(Landroid/os/Message;)V

    goto :goto_0

    .line 101
    :cond_0
    iget-object v0, p0, Landroid/os/Handler;->mCallback:Landroid/os/Handler$Callback;

    if-eqz v0, :cond_1

    .line 102
    invoke-interface {v0, p1}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    return-void

    .line 106
    :cond_1
    invoke-virtual {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 108
    :goto_0
    return-void
.end method

.method public final whitelist dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 882
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " @ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 883
    iget-object v0, p0, Landroid/os/Handler;->mLooper:Landroid/os/Looper;

    if-nez v0, :cond_0

    .line 884
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "looper uninitialized"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 886
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/os/Looper;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 888
    :goto_0
    return-void
.end method

.method public final greylist-max-o dumpMine(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 894
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " @ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 895
    iget-object v0, p0, Landroid/os/Handler;->mLooper:Landroid/os/Looper;

    if-nez v0, :cond_0

    .line 896
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "looper uninitialized"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 898
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p0}, Landroid/os/Looper;->dump(Landroid/util/Printer;Ljava/lang/String;Landroid/os/Handler;)V

    .line 900
    :goto_0
    return-void
.end method

.method public final greylist-max-o executeOrSendMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 763
    iget-object v0, p0, Landroid/os/Handler;->mLooper:Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 764
    invoke-virtual {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 765
    const/4 v0, 0x1

    return v0

    .line 767
    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method final greylist getIMessenger()Landroid/os/IMessenger;
    .locals 3

    .line 911
    iget-object v0, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    monitor-enter v0

    .line 912
    :try_start_0
    iget-object v1, p0, Landroid/os/Handler;->mMessenger:Landroid/os/IMessenger;

    if-eqz v1, :cond_0

    .line 913
    monitor-exit v0

    return-object v1

    .line 915
    :cond_0
    new-instance v1, Landroid/os/Handler$MessengerImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/os/Handler$MessengerImpl;-><init>(Landroid/os/Handler;Landroid/os/Handler$MessengerImpl-IA;)V

    iput-object v1, p0, Landroid/os/Handler;->mMessenger:Landroid/os/IMessenger;

    .line 916
    monitor-exit v0

    return-object v1

    .line 917
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final whitelist getLooper()Landroid/os/Looper;
    .locals 1

    .line 878
    iget-object v0, p0, Landroid/os/Handler;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public whitelist getMessageName(Landroid/os/Message;)Ljava/lang/String;
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .line 342
    iget-object v0, p1, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p1, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 345
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getTraceName(Landroid/os/Message;)Ljava/lang/String;
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .line 318
    iget-object v0, p1, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    instance-of v0, v0, Landroid/os/TraceNameSupplier;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p1, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    check-cast v0, Landroid/os/TraceNameSupplier;

    invoke-interface {v0}, Landroid/os/TraceNameSupplier;->getTraceName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 322
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 323
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    iget-object v1, p1, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    .line 325
    iget-object v1, p1, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 327
    :cond_1
    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 329
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .line 92
    return-void
.end method

.method public final whitelist hasCallbacks(Ljava/lang/Runnable;)Z
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 871
    iget-object v0, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Landroid/os/MessageQueue;->hasMessages(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final blacklist hasEqualMessages(ILjava/lang/Object;)Z
    .locals 1
    .param p1, "what"    # I
    .param p2, "object"    # Ljava/lang/Object;

    .line 863
    iget-object v0, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/MessageQueue;->hasEqualMessages(Landroid/os/Handler;ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final whitelist hasMessages(I)Z
    .locals 2
    .param p1, "what"    # I

    .line 837
    iget-object v0, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Landroid/os/MessageQueue;->hasMessages(Landroid/os/Handler;ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final whitelist hasMessages(ILjava/lang/Object;)Z
    .locals 1
    .param p1, "what"    # I
    .param p2, "object"    # Ljava/lang/Object;

    .line 853
    iget-object v0, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/MessageQueue;->hasMessages(Landroid/os/Handler;ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final greylist-max-o hasMessagesOrCallbacks()Z
    .locals 1

    .line 845
    iget-object v0, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    invoke-virtual {v0, p0}, Landroid/os/MessageQueue;->hasMessages(Landroid/os/Handler;)Z

    move-result v0

    return v0
.end method

.method public final whitelist obtainMessage()Landroid/os/Message;
    .locals 1

    .line 356
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist obtainMessage(I)Landroid/os/Message;
    .locals 1
    .param p1, "what"    # I

    .line 368
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist obtainMessage(III)Landroid/os/Message;
    .locals 1
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .line 397
    invoke-static {p0, p1, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;
    .locals 1
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .line 412
    invoke-static {p0, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
    .locals 1
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 382
    invoke-static {p0, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist post(Ljava/lang/Runnable;)Z
    .locals 3
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 427
    invoke-static {p1}, Landroid/os/Handler;->getPostMessage(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v0

    return v0
.end method

.method public final whitelist postAtFrontOfQueue(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 549
    invoke-static {p1}, Landroid/os/Handler;->getPostMessage(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public final whitelist postAtTime(Ljava/lang/Runnable;J)Z
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "uptimeMillis"    # J

    .line 449
    invoke-static {p1}, Landroid/os/Handler;->getPostMessage(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result v0

    return v0
.end method

.method public final whitelist postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "token"    # Ljava/lang/Object;
    .param p3, "uptimeMillis"    # J

    .line 476
    invoke-static {p1, p2}, Landroid/os/Handler;->getPostMessage(Ljava/lang/Runnable;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p3, p4}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result v0

    return v0
.end method

.method public final blacklist postDelayed(Ljava/lang/Runnable;IJ)Z
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "what"    # I
    .param p3, "delayMillis"    # J

    .line 504
    invoke-static {p1}, Landroid/os/Handler;->getPostMessage(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/Message;->setWhat(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v0

    return v0
.end method

.method public final whitelist postDelayed(Ljava/lang/Runnable;J)Z
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J

    .line 499
    invoke-static {p1}, Landroid/os/Handler;->getPostMessage(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v0

    return v0
.end method

.method public final whitelist postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "token"    # Ljava/lang/Object;
    .param p3, "delayMillis"    # J

    .line 530
    invoke-static {p1, p2}, Landroid/os/Handler;->getPostMessage(Ljava/lang/Runnable;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v0

    return v0
.end method

.method public final whitelist removeCallbacks(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 613
    iget-object v0, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Landroid/os/MessageQueue;->removeMessages(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 614
    return-void
.end method

.method public final whitelist removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "token"    # Ljava/lang/Object;

    .line 622
    iget-object v0, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/MessageQueue;->removeMessages(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 623
    return-void
.end method

.method public final blacklist removeCallbacksAndEqualMessages(Ljava/lang/Object;)V
    .locals 1
    .param p1, "token"    # Ljava/lang/Object;

    .line 830
    iget-object v0, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    invoke-virtual {v0, p0, p1}, Landroid/os/MessageQueue;->removeCallbacksAndEqualMessages(Landroid/os/Handler;Ljava/lang/Object;)V

    .line 831
    return-void
.end method

.method public final whitelist removeCallbacksAndMessages(Ljava/lang/Object;)V
    .locals 1
    .param p1, "token"    # Ljava/lang/Object;

    .line 819
    iget-object v0, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    invoke-virtual {v0, p0, p1}, Landroid/os/MessageQueue;->removeCallbacksAndMessages(Landroid/os/Handler;Ljava/lang/Object;)V

    .line 820
    return-void
.end method

.method public final blacklist removeEqualMessages(ILjava/lang/Object;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "object"    # Ljava/lang/Object;

    .line 810
    iget-object v0, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/MessageQueue;->removeEqualMessages(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 811
    return-void
.end method

.method public final whitelist removeMessages(I)V
    .locals 2
    .param p1, "what"    # I

    .line 786
    iget-object v0, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Landroid/os/MessageQueue;->removeMessages(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 787
    return-void
.end method

.method public final whitelist removeMessages(ILjava/lang/Object;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "object"    # Ljava/lang/Object;

    .line 795
    iget-object v0, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/MessageQueue;->removeMessages(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 796
    return-void
.end method

.method public final greylist-max-o runWithScissors(Ljava/lang/Runnable;J)Z
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "timeout"    # J

    .line 593
    if-eqz p1, :cond_2

    .line 596
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_1

    .line 600
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/os/Handler;->mLooper:Landroid/os/Looper;

    if-ne v0, v1, :cond_0

    .line 601
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 602
    const/4 v0, 0x1

    return v0

    .line 605
    :cond_0
    new-instance v0, Landroid/os/Handler$BlockingRunnable;

    invoke-direct {v0, p1}, Landroid/os/Handler$BlockingRunnable;-><init>(Ljava/lang/Runnable;)V

    .line 606
    .local v0, "br":Landroid/os/Handler$BlockingRunnable;
    invoke-virtual {v0, p0, p2, p3}, Landroid/os/Handler$BlockingRunnable;->postAndWait(Landroid/os/Handler;J)Z

    move-result v1

    return v1

    .line 597
    .end local v0    # "br":Landroid/os/Handler$BlockingRunnable;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "timeout must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 594
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "runnable must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist sendEmptyMessage(I)Z
    .locals 2
    .param p1, "what"    # I

    .line 647
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move-result v0

    return v0
.end method

.method public final whitelist sendEmptyMessageAtTime(IJ)Z
    .locals 2
    .param p1, "what"    # I
    .param p2, "uptimeMillis"    # J

    .line 676
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 677
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 678
    invoke-virtual {p0, v0, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result v1

    return v1
.end method

.method public final whitelist sendEmptyMessageDelayed(IJ)Z
    .locals 2
    .param p1, "what"    # I
    .param p2, "delayMillis"    # J

    .line 660
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 661
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 662
    invoke-virtual {p0, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v1

    return v1
.end method

.method public final whitelist sendMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 635
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v0

    return v0
.end method

.method public final whitelist sendMessageAtFrontOfQueue(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 743
    iget-object v0, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    .line 744
    .local v0, "queue":Landroid/os/MessageQueue;
    if-nez v0, :cond_0

    .line 745
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sendMessageAtTime() called with no mQueue"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 747
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Looper"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 748
    const/4 v2, 0x0

    return v2

    .line 750
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_0
    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Landroid/os/Handler;->enqueueMessage(Landroid/os/MessageQueue;Landroid/os/Message;J)Z

    move-result v1

    return v1
.end method

.method public whitelist sendMessageAtTime(Landroid/os/Message;J)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "uptimeMillis"    # J

    .line 720
    iget-object v0, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    .line 721
    .local v0, "queue":Landroid/os/MessageQueue;
    if-nez v0, :cond_0

    .line 722
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sendMessageAtTime() called with no mQueue"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 724
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Looper"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 725
    const/4 v2, 0x0

    return v2

    .line 727
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_0
    invoke-direct {p0, v0, p1, p2, p3}, Landroid/os/Handler;->enqueueMessage(Landroid/os/MessageQueue;Landroid/os/Message;J)Z

    move-result v1

    return v1
.end method

.method public final whitelist sendMessageDelayed(Landroid/os/Message;J)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "delayMillis"    # J

    .line 694
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    .line 695
    const-wide/16 p2, 0x0

    .line 697
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 904
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Handler ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 905
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 904
    return-object v0
.end method
