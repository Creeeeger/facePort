.class Lcom/samsung/android/sume/nn/SumeNN$2;
.super Ljava/lang/Object;
.source "SumeNN.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sume/nn/SumeNN;-><init>(Landroid/content/Context;[Lcom/samsung/android/sume/nn/Model;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/samsung/android/sume/Mode;Lcom/samsung/android/sume/nn/SumeNN$OnEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/sume/nn/SumeNN;

.field final synthetic blacklist val$attributes:Ljava/util/HashMap;

.field final synthetic blacklist val$context:Landroid/content/Context;

.field final synthetic blacklist val$eventListener:Lcom/samsung/android/sume/nn/SumeNN$OnEventListener;

.field final synthetic blacklist val$linkages:Ljava/util/HashMap;

.field final synthetic blacklist val$mode:Lcom/samsung/android/sume/Mode;

.field final synthetic blacklist val$models:[Lcom/samsung/android/sume/nn/Model;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/sume/nn/SumeNN;Landroid/content/Context;Lcom/samsung/android/sume/Mode;Ljava/util/HashMap;Ljava/util/HashMap;[Lcom/samsung/android/sume/nn/Model;Lcom/samsung/android/sume/nn/SumeNN$OnEventListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/sume/nn/SumeNN;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$context",
            "val$mode",
            "val$linkages",
            "val$attributes",
            "val$models",
            "val$eventListener"
        }
    .end annotation

    .line 1093
    iput-object p1, p0, Lcom/samsung/android/sume/nn/SumeNN$2;->this$0:Lcom/samsung/android/sume/nn/SumeNN;

    iput-object p2, p0, Lcom/samsung/android/sume/nn/SumeNN$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/sume/nn/SumeNN$2;->val$mode:Lcom/samsung/android/sume/Mode;

    iput-object p4, p0, Lcom/samsung/android/sume/nn/SumeNN$2;->val$linkages:Ljava/util/HashMap;

    iput-object p5, p0, Lcom/samsung/android/sume/nn/SumeNN$2;->val$attributes:Ljava/util/HashMap;

    iput-object p6, p0, Lcom/samsung/android/sume/nn/SumeNN$2;->val$models:[Lcom/samsung/android/sume/nn/Model;

    iput-object p7, p0, Lcom/samsung/android/sume/nn/SumeNN$2;->val$eventListener:Lcom/samsung/android/sume/nn/SumeNN$OnEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onServiceDisconnected$0(Lcom/samsung/android/sume/nn/SumeNN$OnEventListener;)V
    .locals 3
    .param p0, "e"    # Lcom/samsung/android/sume/nn/SumeNN$OnEventListener;

    .line 1147
    sget-object v0, Lcom/samsung/android/sume/Event;->ERROR_PROCESS_DEAD:Lcom/samsung/android/sume/Event;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-interface {p0, v0, v1, v2, v2}, Lcom/samsung/android/sume/nn/SumeNN$OnEventListener;->onEvent(Lcom/samsung/android/sume/Event;ILandroid/os/Bundle;Ljava/nio/ByteBuffer;)V

    return-void
.end method


# virtual methods
.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service_"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "className",
            "service_"
        }
    .end annotation

    .line 1095
    invoke-static {}, Lcom/samsung/android/sume/nn/SumeNN;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sume/nn/SumeNN$2;->this$0:Lcom/samsung/android/sume/nn/SumeNN;

    invoke-static {v2}, Lcom/samsung/android/sume/nn/SumeNN;->access$200(Lcom/samsung/android/sume/nn/SumeNN;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sume/SumeLog;->beg(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 1097
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN$2;->this$0:Lcom/samsung/android/sume/nn/SumeNN;

    invoke-static {v0}, Lcom/samsung/android/sume/nn/SumeNN;->access$200(Lcom/samsung/android/sume/nn/SumeNN;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sume/nn/SumeNN$State;->ERROR:Lcom/samsung/android/sume/nn/SumeNN$State;

    if-ne v0, v1, :cond_0

    .line 1098
    invoke-static {}, Lcom/samsung/android/sume/nn/SumeNN;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "force to unbind service in \"ERROR\" state"

    invoke-static {v0, v1}, Lcom/samsung/android/sume/SumeLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN$2;->val$context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto/16 :goto_4

    .line 1101
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN$2;->this$0:Lcom/samsung/android/sume/nn/SumeNN;

    invoke-static {v0}, Lcom/samsung/android/sume/nn/SumeNN;->access$800(Lcom/samsung/android/sume/nn/SumeNN;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1103
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN$2;->this$0:Lcom/samsung/android/sume/nn/SumeNN;

    invoke-static {v0}, Lcom/samsung/android/sume/nn/SumeNN;->access$200(Lcom/samsung/android/sume/nn/SumeNN;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sume/nn/SumeNN$State;->LOADED:Lcom/samsung/android/sume/nn/SumeNN$State;

    sget-object v2, Lcom/samsung/android/sume/nn/SumeNN$State;->CONNECTED:Lcom/samsung/android/sume/nn/SumeNN$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1104
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN$2;->this$0:Lcom/samsung/android/sume/nn/SumeNN;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {v0, v1}, Lcom/samsung/android/sume/nn/SumeNN;->access$1602(Lcom/samsung/android/sume/nn/SumeNN;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 1105
    invoke-static {}, Lcom/samsung/android/sume/nn/SumeNN;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "state changed \"LOADED\" -> \"CONNECTED\""

    invoke-static {v0, v1}, Lcom/samsung/android/sume/SumeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    new-instance v0, Lcom/samsung/android/sume/Request;

    sget-object v1, Lcom/samsung/android/sume/Command;->CREATE:Lcom/samsung/android/sume/Command;

    invoke-direct {v0, v1}, Lcom/samsung/android/sume/Request;-><init>(Lcom/samsung/android/sume/Command;)V

    iget-object v1, p0, Lcom/samsung/android/sume/nn/SumeNN$2;->val$mode:Lcom/samsung/android/sume/Mode;

    .line 1108
    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/Request;->setMode(Lcom/samsung/android/sume/Mode;)Lcom/samsung/android/sume/Request;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sume/nn/SumeNN$2;->val$linkages:Ljava/util/HashMap;

    .line 1109
    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/Request;->setModelLinkages(Ljava/util/HashMap;)Lcom/samsung/android/sume/Request;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sume/nn/SumeNN$2;->val$attributes:Ljava/util/HashMap;

    .line 1110
    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/Request;->setModelAttributes(Ljava/util/HashMap;)Lcom/samsung/android/sume/Request;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sume/nn/SumeNN$2;->this$0:Lcom/samsung/android/sume/nn/SumeNN;

    .line 1111
    invoke-static {v1}, Lcom/samsung/android/sume/nn/SumeNN;->access$1800(Lcom/samsung/android/sume/nn/SumeNN;)Lcom/samsung/android/sume/MediaFormat;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/Request;->setInputFormat(Lcom/samsung/android/sume/MediaFormat;)Lcom/samsung/android/sume/Request;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sume/nn/SumeNN$2;->this$0:Lcom/samsung/android/sume/nn/SumeNN;

    .line 1112
    invoke-static {v1}, Lcom/samsung/android/sume/nn/SumeNN;->access$1300(Lcom/samsung/android/sume/nn/SumeNN;)Lcom/samsung/android/sume/MediaFormat;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/Request;->setOutputFormat(Lcom/samsung/android/sume/MediaFormat;)Lcom/samsung/android/sume/Request;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sume/nn/SumeNN$2;->this$0:Lcom/samsung/android/sume/nn/SumeNN;

    .line 1113
    invoke-static {v1}, Lcom/samsung/android/sume/nn/SumeNN;->access$1700(Lcom/samsung/android/sume/nn/SumeNN;)Landroid/os/Messenger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/Request;->setListener(Landroid/os/Messenger;)Lcom/samsung/android/sume/Request;

    move-result-object v0

    .line 1115
    .local v0, "req":Lcom/samsung/android/sume/Request;
    iget-object v1, p0, Lcom/samsung/android/sume/nn/SumeNN$2;->val$models:[Lcom/samsung/android/sume/nn/Model;

    array-length v1, v1

    const/4 v2, 0x0

    if-gtz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sume/nn/SumeNN$2;->this$0:Lcom/samsung/android/sume/nn/SumeNN;

    invoke-static {v1}, Lcom/samsung/android/sume/nn/SumeNN;->access$1900(Lcom/samsung/android/sume/nn/SumeNN;)[Lcom/samsung/android/sume/nn/NNDescriptor;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const-string v3, "one of model or nn-descriptor should be given"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lcom/samsung/android/sume/Utils;->check(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1118
    iget-object v1, p0, Lcom/samsung/android/sume/nn/SumeNN$2;->val$models:[Lcom/samsung/android/sume/nn/Model;

    array-length v2, v1

    if-lez v2, :cond_3

    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/Request;->setModel([Lcom/samsung/android/sume/nn/Model;)Lcom/samsung/android/sume/Request;

    goto :goto_2

    .line 1119
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/sume/nn/SumeNN$2;->this$0:Lcom/samsung/android/sume/nn/SumeNN;

    invoke-static {v1}, Lcom/samsung/android/sume/nn/SumeNN;->access$1900(Lcom/samsung/android/sume/nn/SumeNN;)[Lcom/samsung/android/sume/nn/NNDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/Request;->setDescriptor([Lcom/samsung/android/sume/nn/NNDescriptor;)Lcom/samsung/android/sume/Request;

    .line 1121
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/sume/nn/SumeNN$2;->this$0:Lcom/samsung/android/sume/nn/SumeNN;

    invoke-static {v1}, Lcom/samsung/android/sume/nn/SumeNN;->access$1600(Lcom/samsung/android/sume/nn/SumeNN;)Landroid/os/Messenger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/Request;->post(Landroid/os/Messenger;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1122
    iget-object v1, p0, Lcom/samsung/android/sume/nn/SumeNN$2;->this$0:Lcom/samsung/android/sume/nn/SumeNN;

    invoke-static {v1}, Lcom/samsung/android/sume/nn/SumeNN;->access$200(Lcom/samsung/android/sume/nn/SumeNN;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sume/nn/SumeNN$State;->ERROR:Lcom/samsung/android/sume/nn/SumeNN$State;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1123
    .end local v0    # "req":Lcom/samsung/android/sume/Request;
    :cond_4
    goto :goto_3

    .line 1124
    :cond_5
    invoke-static {}, Lcom/samsung/android/sume/nn/SumeNN;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "state would be in \"LOADED\" before \"CONNECTED\", ignore this"

    iget-object v2, p0, Lcom/samsung/android/sume/nn/SumeNN$2;->this$0:Lcom/samsung/android/sume/nn/SumeNN;

    invoke-static {v2}, Lcom/samsung/android/sume/nn/SumeNN;->access$200(Lcom/samsung/android/sume/nn/SumeNN;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sume/SumeLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1127
    :goto_3
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN$2;->this$0:Lcom/samsung/android/sume/nn/SumeNN;

    invoke-static {v0}, Lcom/samsung/android/sume/nn/SumeNN;->access$800(Lcom/samsung/android/sume/nn/SumeNN;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1128
    nop

    .line 1130
    :goto_4
    return-void

    .line 1127
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/sume/nn/SumeNN$2;->this$0:Lcom/samsung/android/sume/nn/SumeNN;

    invoke-static {v1}, Lcom/samsung/android/sume/nn/SumeNN;->access$800(Lcom/samsung/android/sume/nn/SumeNN;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1128
    throw v0
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "className"
        }
    .end annotation

    .line 1133
    invoke-static {}, Lcom/samsung/android/sume/nn/SumeNN;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sume/nn/SumeNN$2;->this$0:Lcom/samsung/android/sume/nn/SumeNN;

    invoke-static {v2}, Lcom/samsung/android/sume/nn/SumeNN;->access$200(Lcom/samsung/android/sume/nn/SumeNN;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sume/SumeLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 1135
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN$2;->this$0:Lcom/samsung/android/sume/nn/SumeNN;

    invoke-static {v0}, Lcom/samsung/android/sume/nn/SumeNN;->access$600(Lcom/samsung/android/sume/nn/SumeNN;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN$2;->this$0:Lcom/samsung/android/sume/nn/SumeNN;

    invoke-static {v0}, Lcom/samsung/android/sume/nn/SumeNN;->access$2006(Lcom/samsung/android/sume/nn/SumeNN;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1136
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN$2;->this$0:Lcom/samsung/android/sume/nn/SumeNN;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/sume/nn/SumeNN;->access$602(Lcom/samsung/android/sume/nn/SumeNN;Z)Z

    .line 1138
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN$2;->this$0:Lcom/samsung/android/sume/nn/SumeNN;

    invoke-static {v0}, Lcom/samsung/android/sume/nn/SumeNN;->access$600(Lcom/samsung/android/sume/nn/SumeNN;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1139
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN$2;->this$0:Lcom/samsung/android/sume/nn/SumeNN;

    invoke-static {v0}, Lcom/samsung/android/sume/nn/SumeNN;->access$200(Lcom/samsung/android/sume/nn/SumeNN;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sume/nn/SumeNN$State;->LOADED:Lcom/samsung/android/sume/nn/SumeNN$State;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 1141
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN$2;->this$0:Lcom/samsung/android/sume/nn/SumeNN;

    invoke-static {v0}, Lcom/samsung/android/sume/nn/SumeNN;->access$200(Lcom/samsung/android/sume/nn/SumeNN;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sume/nn/SumeNN$State;->ERROR:Lcom/samsung/android/sume/nn/SumeNN$State;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1142
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN$2;->this$0:Lcom/samsung/android/sume/nn/SumeNN;

    invoke-static {v0}, Lcom/samsung/android/sume/nn/SumeNN;->access$700(Lcom/samsung/android/sume/nn/SumeNN;)Lcom/samsung/android/sume/nn/SumeNN$DataMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sume/nn/SumeNN$DataMap;->clear()V

    .line 1145
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN$2;->this$0:Lcom/samsung/android/sume/nn/SumeNN;

    iget-object v0, v0, Lcom/samsung/android/sume/nn/SumeNN;->resultChannel:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Lcom/samsung/android/sume/Result;

    sget-object v2, Lcom/samsung/android/sume/Event;->ERROR_PROCESS_DEAD:Lcom/samsung/android/sume/Event;

    invoke-direct {v1, v2}, Lcom/samsung/android/sume/Result;-><init>(Lcom/samsung/android/sume/Event;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 1146
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN$2;->val$eventListener:Lcom/samsung/android/sume/nn/SumeNN$OnEventListener;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/nn/SumeNN$2$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/sume/nn/SumeNN$2$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1151
    goto :goto_0

    .line 1149
    :catch_0
    move-exception v0

    .line 1150
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1154
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN$2;->this$0:Lcom/samsung/android/sume/nn/SumeNN;

    invoke-static {v0}, Lcom/samsung/android/sume/nn/SumeNN;->access$800(Lcom/samsung/android/sume/nn/SumeNN;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1156
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN$2;->this$0:Lcom/samsung/android/sume/nn/SumeNN;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/sume/nn/SumeNN;->access$1602(Lcom/samsung/android/sume/nn/SumeNN;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 1157
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN$2;->this$0:Lcom/samsung/android/sume/nn/SumeNN;

    invoke-static {v0}, Lcom/samsung/android/sume/nn/SumeNN;->access$600(Lcom/samsung/android/sume/nn/SumeNN;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1158
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN$2;->this$0:Lcom/samsung/android/sume/nn/SumeNN;

    invoke-static {v0}, Lcom/samsung/android/sume/nn/SumeNN;->access$2100(Lcom/samsung/android/sume/nn/SumeNN;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1160
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN$2;->this$0:Lcom/samsung/android/sume/nn/SumeNN;

    invoke-static {v0}, Lcom/samsung/android/sume/nn/SumeNN;->access$800(Lcom/samsung/android/sume/nn/SumeNN;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1161
    nop

    .line 1162
    return-void

    .line 1160
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/sume/nn/SumeNN$2;->this$0:Lcom/samsung/android/sume/nn/SumeNN;

    invoke-static {v1}, Lcom/samsung/android/sume/nn/SumeNN;->access$800(Lcom/samsung/android/sume/nn/SumeNN;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1161
    throw v0
.end method
