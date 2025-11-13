.class public final Lcom/samsung/android/sume/nn/SumeNNClient;
.super Ljava/lang/Object;
.source "SumeNNClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sume/nn/SumeNNClient$Builder;,
        Lcom/samsung/android/sume/nn/SumeNNClient$IncomingHandler;,
        Lcom/samsung/android/sume/nn/SumeNNClient$InputMap;,
        Lcom/samsung/android/sume/nn/SumeNNClient$OnEventListener;,
        Lcom/samsung/android/sume/nn/SumeNNClient$Priority;,
        Lcom/samsung/android/sume/nn/SumeNNClient$State;,
        Lcom/samsung/android/sume/nn/SumeNNClient$Job;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final blacklist DO_NOT_COPY_META:I = 0x1

.field public static final blacklist MAX_INPUT_DIMENSION:I = 0xf4240

.field private static final blacklist SUME_NN_SERVICE_CLASS:Ljava/lang/String; = "com.samsung.android.sume.nn.service.SumeNNService"

.field private static final blacklist SUME_NN_SERVICE_PACKAGE:Ljava/lang/String; = "com.samsung.android.sume.nn.service"

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist condition:Ljava/util/concurrent/locks/Condition;

.field private blacklist connection:Landroid/content/ServiceConnection;

.field private blacklist context:Landroid/content/Context;

.field private blacklist debuggable:Z

.field private blacklist eventListener:Lcom/samsung/android/sume/nn/SumeNNClient$OnEventListener;

.field private blacklist expectations:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/samsung/android/sume/op/OpRuntime;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist flags:I

.field private blacklist inputFormat:Lcom/samsung/android/sume/MediaFormat;

.field private blacklist inputMap:Lcom/samsung/android/sume/nn/SumeNNClient$InputMap;

.field private final blacklist jobs:Ljava/util/concurrent/PriorityBlockingQueue;

.field private final blacklist lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private blacklist messenger:Landroid/os/Messenger;

.field private blacklist meta:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mode:Lcom/samsung/android/sume/Mode;

.field private blacklist models:[Lcom/samsung/android/sume/nn/Model;

.field private blacklist nnDescriptor:[Lcom/samsung/android/sume/nn/NNDescriptor;

.field private blacklist nnId:I

.field private blacklist outputFormat:Lcom/samsung/android/sume/MediaFormat;

.field private blacklist recovery:Z

.field private blacklist runtimes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/samsung/android/sume/op/OpRuntime;",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist service:Landroid/os/Messenger;

.field private blacklist state:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/samsung/android/sume/nn/SumeNNClient$State;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist supportedOpRuntimes:[Lcom/samsung/android/sume/op/OpRuntime;

.field private blacklist threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

.field private blacklist workerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 75
    const-class v0, Lcom/samsung/android/sume/nn/SumeNNClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/nn/SumeNNClient;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;[Lcom/samsung/android/sume/nn/Model;Lcom/samsung/android/sume/Mode;Lcom/samsung/android/sume/nn/SumeNNClient$OnEventListener;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "models"    # [Lcom/samsung/android/sume/nn/Model;
    .param p3, "mode"    # Lcom/samsung/android/sume/Mode;
    .param p4, "eventListener"    # Lcom/samsung/android/sume/nn/SumeNNClient$OnEventListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "models",
            "mode",
            "eventListener"
        }
    .end annotation

    .line 702
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/samsung/android/sume/nn/SumeNNClient$State;->LOADED:Lcom/samsung/android/sume/nn/SumeNNClient$State;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->state:Ljava/util/concurrent/atomic/AtomicReference;

    .line 89
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 90
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->condition:Ljava/util/concurrent/locks/Condition;

    .line 92
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/samsung/android/sume/nn/SumeNNClient;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->workerThread:Landroid/os/HandlerThread;

    .line 95
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->nnId:I

    .line 96
    new-instance v0, Lcom/samsung/android/sume/nn/SumeNNClient$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/nn/SumeNNClient$1;-><init>(Lcom/samsung/android/sume/nn/SumeNNClient;)V

    iput-object v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->expectations:Ljava/util/concurrent/ConcurrentHashMap;

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->runtimes:Ljava/util/HashMap;

    .line 105
    new-instance v0, Lcom/samsung/android/sume/nn/SumeNNClient$InputMap;

    invoke-direct {v0}, Lcom/samsung/android/sume/nn/SumeNNClient$InputMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->inputMap:Lcom/samsung/android/sume/nn/SumeNNClient$InputMap;

    .line 129
    new-instance v8, Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v0, Lcom/samsung/android/sume/nn/SumeNNClient$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/samsung/android/sume/nn/SumeNNClient$$ExternalSyntheticLambda6;-><init>()V

    const/16 v2, 0x14

    invoke-direct {v8, v2, v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v8, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->jobs:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 132
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v3, 0x4

    const/16 v4, 0x8

    const-wide/16 v5, 0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 703
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/samsung/android/sume/nn/SumeNNClient;->getVersion()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const-string v2, "create SumeNNClient[version=%s] E"

    invoke-static {v2, v0}, Lcom/samsung/android/sume/Utils;->fmtStr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1, v0, v2}, Lcom/samsung/android/sume/SumeLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 705
    iput-object p1, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->context:Landroid/content/Context;

    .line 706
    iput-object p2, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->models:[Lcom/samsung/android/sume/nn/Model;

    .line 707
    iput-object p3, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->mode:Lcom/samsung/android/sume/Mode;

    .line 708
    iput-object p4, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->eventListener:Lcom/samsung/android/sume/nn/SumeNNClient$OnEventListener;

    .line 710
    new-instance v0, Lcom/samsung/android/sume/nn/SumeNNClient$2;

    move-object v3, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p3

    move-object v7, p2

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/sume/nn/SumeNNClient$2;-><init>(Lcom/samsung/android/sume/nn/SumeNNClient;Landroid/content/Context;Lcom/samsung/android/sume/Mode;[Lcom/samsung/android/sume/nn/Model;Lcom/samsung/android/sume/nn/SumeNNClient$OnEventListener;)V

    iput-object v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->connection:Landroid/content/ServiceConnection;

    .line 772
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->workerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 774
    new-instance v0, Landroid/os/Messenger;

    new-instance v2, Lcom/samsung/android/sume/nn/SumeNNClient$IncomingHandler;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->workerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/sume/nn/SumeNNClient$IncomingHandler;-><init>(Ljava/lang/ref/WeakReference;Landroid/os/Looper;)V

    invoke-direct {v0, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->messenger:Landroid/os/Messenger;

    .line 775
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->state:Ljava/util/concurrent/atomic/AtomicReference;

    const-string v2, "create SumeNNClient X"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/sume/SumeLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 776
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/Context;[Lcom/samsung/android/sume/nn/Model;Lcom/samsung/android/sume/Mode;Lcom/samsung/android/sume/nn/SumeNNClient$OnEventListener;Lcom/samsung/android/sume/nn/SumeNNClient$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # [Lcom/samsung/android/sume/nn/Model;
    .param p3, "x2"    # Lcom/samsung/android/sume/Mode;
    .param p4, "x3"    # Lcom/samsung/android/sume/nn/SumeNNClient$OnEventListener;
    .param p5, "x4"    # Lcom/samsung/android/sume/nn/SumeNNClient$1;

    .line 74
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/sume/nn/SumeNNClient;-><init>(Landroid/content/Context;[Lcom/samsung/android/sume/nn/Model;Lcom/samsung/android/sume/Mode;Lcom/samsung/android/sume/nn/SumeNNClient$OnEventListener;)V

    return-void
.end method

.method static synthetic blacklist access$000()Ljava/lang/String;
    .locals 1

    .line 74
    sget-object v0, Lcom/samsung/android/sume/nn/SumeNNClient;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic blacklist access$100(Lcom/samsung/android/sume/nn/SumeNNClient;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sume/nn/SumeNNClient;

    .line 74
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic blacklist access$1000(Lcom/samsung/android/sume/nn/SumeNNClient;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sume/nn/SumeNNClient;
    .param p1, "x1"    # I

    .line 74
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/nn/SumeNNClient;->hasFlags(I)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$1100(Lcom/samsung/android/sume/nn/SumeNNClient;)Lcom/samsung/android/sume/nn/SumeNNClient$OnEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sume/nn/SumeNNClient;

    .line 74
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->eventListener:Lcom/samsung/android/sume/nn/SumeNNClient$OnEventListener;

    return-object v0
.end method

.method static synthetic blacklist access$1200(Lcom/samsung/android/sume/nn/SumeNNClient;)Landroid/os/Messenger;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sume/nn/SumeNNClient;

    .line 74
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->service:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic blacklist access$1202(Lcom/samsung/android/sume/nn/SumeNNClient;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/sume/nn/SumeNNClient;
    .param p1, "x1"    # Landroid/os/Messenger;

    .line 74
    iput-object p1, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->service:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic blacklist access$1300(Lcom/samsung/android/sume/nn/SumeNNClient;)Landroid/os/Messenger;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sume/nn/SumeNNClient;

    .line 74
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->messenger:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic blacklist access$1400(Lcom/samsung/android/sume/nn/SumeNNClient;)Lcom/samsung/android/sume/MediaFormat;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sume/nn/SumeNNClient;

    .line 74
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->inputFormat:Lcom/samsung/android/sume/MediaFormat;

    return-object v0
.end method

.method static synthetic blacklist access$1402(Lcom/samsung/android/sume/nn/SumeNNClient;Lcom/samsung/android/sume/MediaFormat;)Lcom/samsung/android/sume/MediaFormat;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/sume/nn/SumeNNClient;
    .param p1, "x1"    # Lcom/samsung/android/sume/MediaFormat;

    .line 74
    iput-object p1, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->inputFormat:Lcom/samsung/android/sume/MediaFormat;

    return-object p1
.end method

.method static synthetic blacklist access$1500(Lcom/samsung/android/sume/nn/SumeNNClient;)[Lcom/samsung/android/sume/nn/NNDescriptor;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sume/nn/SumeNNClient;

    .line 74
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->nnDescriptor:[Lcom/samsung/android/sume/nn/NNDescriptor;

    return-object v0
.end method

.method static synthetic blacklist access$1502(Lcom/samsung/android/sume/nn/SumeNNClient;[Lcom/samsung/android/sume/nn/NNDescriptor;)[Lcom/samsung/android/sume/nn/NNDescriptor;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/sume/nn/SumeNNClient;
    .param p1, "x1"    # [Lcom/samsung/android/sume/nn/NNDescriptor;

    .line 74
    iput-object p1, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->nnDescriptor:[Lcom/samsung/android/sume/nn/NNDescriptor;

    return-object p1
.end method

.method static synthetic blacklist access$1600(Lcom/samsung/android/sume/nn/SumeNNClient;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sume/nn/SumeNNClient;

    .line 74
    iget-boolean v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->recovery:Z

    return v0
.end method

.method static synthetic blacklist access$1802(Lcom/samsung/android/sume/nn/SumeNNClient;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/sume/nn/SumeNNClient;
    .param p1, "x1"    # I

    .line 74
    iput p1, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->flags:I

    return p1
.end method

.method static synthetic blacklist access$1902(Lcom/samsung/android/sume/nn/SumeNNClient;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/sume/nn/SumeNNClient;
    .param p1, "x1"    # Ljava/util/HashMap;

    .line 74
    iput-object p1, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->meta:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic blacklist access$200(Lcom/samsung/android/sume/nn/SumeNNClient;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sume/nn/SumeNNClient;

    .line 74
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->state:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic blacklist access$2000(Lcom/samsung/android/sume/nn/SumeNNClient;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/sume/nn/SumeNNClient;

    .line 74
    invoke-direct {p0}, Lcom/samsung/android/sume/nn/SumeNNClient;->init()V

    return-void
.end method

.method static synthetic blacklist access$300(Lcom/samsung/android/sume/nn/SumeNNClient;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sume/nn/SumeNNClient;

    .line 74
    iget v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->nnId:I

    return v0
.end method

.method static synthetic blacklist access$302(Lcom/samsung/android/sume/nn/SumeNNClient;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/sume/nn/SumeNNClient;
    .param p1, "x1"    # I

    .line 74
    iput p1, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->nnId:I

    return p1
.end method

.method static synthetic blacklist access$400(Lcom/samsung/android/sume/nn/SumeNNClient;)[Lcom/samsung/android/sume/op/OpRuntime;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sume/nn/SumeNNClient;

    .line 74
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->supportedOpRuntimes:[Lcom/samsung/android/sume/op/OpRuntime;

    return-object v0
.end method

.method static synthetic blacklist access$402(Lcom/samsung/android/sume/nn/SumeNNClient;[Lcom/samsung/android/sume/op/OpRuntime;)[Lcom/samsung/android/sume/op/OpRuntime;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/sume/nn/SumeNNClient;
    .param p1, "x1"    # [Lcom/samsung/android/sume/op/OpRuntime;

    .line 74
    iput-object p1, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->supportedOpRuntimes:[Lcom/samsung/android/sume/op/OpRuntime;

    return-object p1
.end method

.method static synthetic blacklist access$500(Lcom/samsung/android/sume/nn/SumeNNClient;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sume/nn/SumeNNClient;

    .line 74
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->runtimes:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic blacklist access$600(Lcom/samsung/android/sume/nn/SumeNNClient;)Lcom/samsung/android/sume/nn/SumeNNClient$InputMap;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sume/nn/SumeNNClient;

    .line 74
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->inputMap:Lcom/samsung/android/sume/nn/SumeNNClient$InputMap;

    return-object v0
.end method

.method static synthetic blacklist access$700(Lcom/samsung/android/sume/nn/SumeNNClient;)Ljava/util/concurrent/locks/Condition;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sume/nn/SumeNNClient;

    .line 74
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->condition:Ljava/util/concurrent/locks/Condition;

    return-object v0
.end method

.method static synthetic blacklist access$800(Lcom/samsung/android/sume/nn/SumeNNClient;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sume/nn/SumeNNClient;

    .line 74
    iget-boolean v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->debuggable:Z

    return v0
.end method

.method static synthetic blacklist access$802(Lcom/samsung/android/sume/nn/SumeNNClient;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/sume/nn/SumeNNClient;
    .param p1, "x1"    # Z

    .line 74
    iput-boolean p1, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->debuggable:Z

    return p1
.end method

.method static synthetic blacklist access$900(Lcom/samsung/android/sume/nn/SumeNNClient;)Lcom/samsung/android/sume/MediaFormat;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sume/nn/SumeNNClient;

    .line 74
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->outputFormat:Lcom/samsung/android/sume/MediaFormat;

    return-object v0
.end method

.method static synthetic blacklist access$902(Lcom/samsung/android/sume/nn/SumeNNClient;Lcom/samsung/android/sume/MediaFormat;)Lcom/samsung/android/sume/MediaFormat;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/sume/nn/SumeNNClient;
    .param p1, "x1"    # Lcom/samsung/android/sume/MediaFormat;

    .line 74
    iput-object p1, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->outputFormat:Lcom/samsung/android/sume/MediaFormat;

    return-object p1
.end method

.method private blacklist getVersion()Ljava/lang/String;
    .locals 1

    .line 699
    const-string v0, "3.1.12"

    return-object v0
.end method

.method private blacklist hasFlags(I)Z
    .locals 1
    .param p1, "flag"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flag"
        }
    .end annotation

    .line 585
    iget v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->flags:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist init()V
    .locals 5

    .line 527
    sget-object v0, Lcom/samsung/android/sume/nn/SumeNNClient;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->state:Ljava/util/concurrent/atomic/AtomicReference;

    const-string v2, "init: bind to SNS..."

    invoke-static {v0, v2, v1}, Lcom/samsung/android/sume/SumeLog;->beg(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 529
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 530
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.sume.nn.service"

    const-string v3, "com.samsung.android.sume.nn.service.SumeNNService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 531
    iget-object v2, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 532
    iget-object v2, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->connection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 534
    iget-object v2, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->state:Ljava/util/concurrent/atomic/AtomicReference;

    const-string v3, "init"

    invoke-static {v0, v3, v2}, Lcom/samsung/android/sume/SumeLog;->end(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 535
    return-void
.end method

.method static synthetic blacklist lambda$new$0(Lcom/samsung/android/sume/nn/SumeNNClient$Job;Lcom/samsung/android/sume/nn/SumeNNClient$Job;)I
    .locals 2
    .param p0, "job1"    # Lcom/samsung/android/sume/nn/SumeNNClient$Job;
    .param p1, "job2"    # Lcom/samsung/android/sume/nn/SumeNNClient$Job;

    .line 130
    invoke-static {p0}, Lcom/samsung/android/sume/nn/SumeNNClient$Job;->access$2100(Lcom/samsung/android/sume/nn/SumeNNClient$Job;)Lcom/samsung/android/sume/nn/SumeNNClient$Priority;

    move-result-object v0

    invoke-static {p1}, Lcom/samsung/android/sume/nn/SumeNNClient$Job;->access$2100(Lcom/samsung/android/sume/nn/SumeNNClient$Job;)Lcom/samsung/android/sume/nn/SumeNNClient$Priority;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/nn/SumeNNClient$Priority;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$run$2(Lcom/samsung/android/sume/nn/SumeNNClient$OnEventListener;)V
    .locals 3
    .param p0, "listener"    # Lcom/samsung/android/sume/nn/SumeNNClient$OnEventListener;

    .line 633
    sget-object v0, Lcom/samsung/android/sume/Event;->ERROR_NO_RESPONSE:Lcom/samsung/android/sume/Event;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-interface {p0, v0, v1, v2, v2}, Lcom/samsung/android/sume/nn/SumeNNClient$OnEventListener;->onEvent(Lcom/samsung/android/sume/Event;ILandroid/os/Bundle;Ljava/nio/ByteBuffer;)V

    .line 634
    return-void
.end method

.method static synthetic blacklist lambda$run$4(Lcom/samsung/android/sume/nn/SumeNNClient$OnEventListener;)V
    .locals 3
    .param p0, "listener"    # Lcom/samsung/android/sume/nn/SumeNNClient$OnEventListener;

    .line 668
    sget-object v0, Lcom/samsung/android/sume/Event;->ERROR_CREATE_FAIL:Lcom/samsung/android/sume/Event;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-interface {p0, v0, v1, v2, v2}, Lcom/samsung/android/sume/nn/SumeNNClient$OnEventListener;->onEvent(Lcom/samsung/android/sume/Event;ILandroid/os/Bundle;Ljava/nio/ByteBuffer;)V

    .line 669
    return-void
.end method


# virtual methods
.method public final blacklist getExpectation(Lcom/samsung/android/sume/op/OpRuntime;)I
    .locals 2
    .param p1, "opRuntime"    # Lcom/samsung/android/sume/op/OpRuntime;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "opRuntime"
        }
    .end annotation

    .line 576
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->expectations:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final blacklist getRuntimeCounter()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Lcom/samsung/android/sume/op/OpRuntime;",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 581
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->runtimes:Ljava/util/HashMap;

    return-object v0
.end method

.method public blacklist getSemNNOp()[Lcom/samsung/android/sume/nn/Model;
    .locals 1

    .line 524
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->models:[Lcom/samsung/android/sume/nn/Model;

    return-object v0
.end method

.method public final blacklist getSupportedOpRuntimes()[Lcom/samsung/android/sume/op/OpRuntime;
    .locals 1

    .line 517
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->supportedOpRuntimes:[Lcom/samsung/android/sume/op/OpRuntime;

    return-object v0
.end method

.method synthetic blacklist lambda$run$1$com-samsung-android-sume-nn-SumeNNClient([Landroid/content/ContentValues;Landroid/os/Messenger;)V
    .locals 2
    .param p1, "data"    # [Landroid/content/ContentValues;
    .param p2, "sv"    # Landroid/os/Messenger;

    .line 620
    new-instance v0, Lcom/samsung/android/sume/Request;

    sget-object v1, Lcom/samsung/android/sume/Command;->RUN:Lcom/samsung/android/sume/Command;

    invoke-direct {v0, v1}, Lcom/samsung/android/sume/Request;-><init>(Lcom/samsung/android/sume/Command;)V

    iget v1, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->nnId:I

    .line 621
    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/Request;->setId(I)Lcom/samsung/android/sume/Request;

    move-result-object v0

    .line 622
    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/Request;->setContents([Landroid/content/ContentValues;)Lcom/samsung/android/sume/Request;

    move-result-object v0

    .line 623
    invoke-virtual {v0, p2}, Lcom/samsung/android/sume/Request;->post(Landroid/os/Messenger;)Z

    .line 624
    return-void
.end method

.method synthetic blacklist lambda$run$3$com-samsung-android-sume-nn-SumeNNClient([Landroid/content/ContentValues;)V
    .locals 6
    .param p1, "data"    # [Landroid/content/ContentValues;

    .line 605
    sget-object v0, Lcom/samsung/android/sume/nn/SumeNNClient;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->state:Ljava/util/concurrent/atomic/AtomicReference;

    const-string/jumbo v2, "run"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/sume/SumeLog;->beg(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 606
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 608
    :goto_0
    :try_start_0
    sget-object v0, Lcom/samsung/android/sume/nn/SumeNNClient$State;->IDLE:Lcom/samsung/android/sume/nn/SumeNNClient$State;

    iget-object v1, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/nn/SumeNNClient$State;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/nn/SumeNNClient$State;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-lez v0, :cond_1

    .line 609
    sget-object v0, Lcom/samsung/android/sume/nn/SumeNNClient;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "wait to IDLE..."

    iget-object v3, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, v1, v3}, Lcom/samsung/android/sume/SumeLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 610
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->condition:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v3, 0x5

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v3, v4, v1}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 611
    :cond_0
    new-instance v0, Ljava/lang/InterruptedException;

    const-string/jumbo v1, "time out occur to wait to IDLE"

    invoke-direct {v0, v1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/samsung/android/sume/nn/SumeNNClient;
    .end local p1    # "data":[Landroid/content/ContentValues;
    throw v0

    .line 614
    .restart local p0    # "this":Lcom/samsung/android/sume/nn/SumeNNClient;
    .restart local p1    # "data":[Landroid/content/ContentValues;
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sume/nn/SumeNNClient$State;->ERROR:Lcom/samsung/android/sume/nn/SumeNNClient$State;

    if-eq v0, v1, :cond_2

    .line 615
    sget-object v0, Lcom/samsung/android/sume/nn/SumeNNClient;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "run with data[#%d]: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    array-length v5, p1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v1, v3}, Lcom/samsung/android/sume/Utils;->fmtStr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, v1, v3}, Lcom/samsung/android/sume/SumeLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 617
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->inputMap:Lcom/samsung/android/sume/nn/SumeNNClient$InputMap;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/nn/SumeNNClient$InputMap;->setData([Landroid/content/ContentValues;)V

    .line 619
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->service:Landroid/os/Messenger;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/nn/SumeNNClient$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/sume/nn/SumeNNClient$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sume/nn/SumeNNClient;[Landroid/content/ContentValues;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_1

    .line 626
    :cond_2
    sget-object v0, Lcom/samsung/android/sume/nn/SumeNNClient;->TAG:Ljava/lang/String;

    const-string v1, "due to error, can\'t process inputs"

    invoke-static {v0, v1}, Lcom/samsung/android/sume/SumeLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->eventListener:Lcom/samsung/android/sume/nn/SumeNNClient$OnEventListener;

    if-eqz v0, :cond_3

    .line 628
    sget-object v1, Lcom/samsung/android/sume/Event;->ERROR_INVALID_OPERATION:Lcom/samsung/android/sume/Event;

    iget v3, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->nnId:I

    const/4 v4, 0x0

    invoke-interface {v0, v1, v3, v4, v4}, Lcom/samsung/android/sume/nn/SumeNNClient$OnEventListener;->onEvent(Lcom/samsung/android/sume/Event;ILandroid/os/Bundle;Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 636
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 630
    :catch_0
    move-exception v0

    .line 631
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 632
    iget-object v1, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->eventListener:Lcom/samsung/android/sume/nn/SumeNNClient$OnEventListener;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v3, Lcom/samsung/android/sume/nn/SumeNNClient$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/samsung/android/sume/nn/SumeNNClient$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v1, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 636
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 637
    sget-object v0, Lcom/samsung/android/sume/nn/SumeNNClient;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, v2, v1}, Lcom/samsung/android/sume/SumeLog;->end(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 638
    nop

    .line 639
    return-void

    .line 636
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 637
    sget-object v1, Lcom/samsung/android/sume/nn/SumeNNClient;->TAG:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/sume/SumeLog;->end(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 638
    throw v0
.end method

.method synthetic blacklist lambda$run$5$com-samsung-android-sume-nn-SumeNNClient([Lcom/samsung/android/sume/MediaBuffer;Landroid/os/Messenger;)V
    .locals 2
    .param p1, "data"    # [Lcom/samsung/android/sume/MediaBuffer;
    .param p2, "sv"    # Landroid/os/Messenger;

    .line 681
    new-instance v0, Lcom/samsung/android/sume/Request;

    sget-object v1, Lcom/samsung/android/sume/Command;->RUN:Lcom/samsung/android/sume/Command;

    invoke-direct {v0, v1}, Lcom/samsung/android/sume/Request;-><init>(Lcom/samsung/android/sume/Command;)V

    iget v1, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->nnId:I

    .line 682
    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/Request;->setId(I)Lcom/samsung/android/sume/Request;

    move-result-object v0

    .line 683
    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/Request;->setBuffers([Lcom/samsung/android/sume/MediaBuffer;)Lcom/samsung/android/sume/Request;

    move-result-object v0

    .line 684
    invoke-virtual {v0, p2}, Lcom/samsung/android/sume/Request;->post(Landroid/os/Messenger;)Z

    .line 685
    return-void
.end method

.method synthetic blacklist lambda$run$6$com-samsung-android-sume-nn-SumeNNClient([Lcom/samsung/android/sume/MediaBuffer;)V
    .locals 4
    .param p1, "data"    # [Lcom/samsung/android/sume/MediaBuffer;

    .line 658
    sget-object v0, Lcom/samsung/android/sume/nn/SumeNNClient;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->state:Ljava/util/concurrent/atomic/AtomicReference;

    const-string/jumbo v2, "run"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/sume/SumeLog;->beg(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 659
    :goto_0
    sget-object v0, Lcom/samsung/android/sume/nn/SumeNNClient$State;->IDLE:Lcom/samsung/android/sume/nn/SumeNNClient$State;

    iget-object v1, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/nn/SumeNNClient$State;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/nn/SumeNNClient$State;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-lez v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 662
    :try_start_0
    sget-object v0, Lcom/samsung/android/sume/nn/SumeNNClient;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "wait to IDLE..."

    iget-object v2, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sume/SumeLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 663
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->condition:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v1, 0x5

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 671
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 672
    goto :goto_0

    .line 671
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 664
    :catch_0
    move-exception v0

    .line 665
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 666
    iget-object v1, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->state:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcom/samsung/android/sume/nn/SumeNNClient$State;->ERROR:Lcom/samsung/android/sume/nn/SumeNNClient$State;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 667
    iget-object v1, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->eventListener:Lcom/samsung/android/sume/nn/SumeNNClient$OnEventListener;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/nn/SumeNNClient$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/samsung/android/sume/nn/SumeNNClient$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 671
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 672
    throw v0

    .line 675
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sume/nn/SumeNNClient$State;->ERROR:Lcom/samsung/android/sume/nn/SumeNNClient$State;

    if-eq v0, v1, :cond_1

    .line 676
    sget-object v0, Lcom/samsung/android/sume/nn/SumeNNClient;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->state:Ljava/util/concurrent/atomic/AtomicReference;

    const-string/jumbo v2, "run with data(#${data.size}): $data"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/sume/SumeLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 678
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->inputMap:Lcom/samsung/android/sume/nn/SumeNNClient$InputMap;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/nn/SumeNNClient$InputMap;->setData([Lcom/samsung/android/sume/MediaBuffer;)V

    .line 680
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->service:Landroid/os/Messenger;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/nn/SumeNNClient$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/sume/nn/SumeNNClient$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/sume/nn/SumeNNClient;[Lcom/samsung/android/sume/MediaBuffer;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_3

    .line 687
    :cond_1
    sget-object v0, Lcom/samsung/android/sume/nn/SumeNNClient;->TAG:Ljava/lang/String;

    const-string v1, "due to error, can\'t process inputs"

    invoke-static {v0, v1}, Lcom/samsung/android/sume/SumeLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->eventListener:Lcom/samsung/android/sume/nn/SumeNNClient$OnEventListener;

    if-eqz v0, :cond_2

    .line 689
    sget-object v1, Lcom/samsung/android/sume/Event;->ERROR_INVALID_OPERATION:Lcom/samsung/android/sume/Event;

    iget v2, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->nnId:I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3, v3}, Lcom/samsung/android/sume/nn/SumeNNClient$OnEventListener;->onEvent(Lcom/samsung/android/sume/Event;ILandroid/os/Bundle;Ljava/nio/ByteBuffer;)V

    .line 691
    :cond_2
    :goto_3
    return-void
.end method

.method public final blacklist release()V
    .locals 6

    .line 538
    sget-object v0, Lcom/samsung/android/sume/nn/SumeNNClient;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->state:Ljava/util/concurrent/atomic/AtomicReference;

    const-string/jumbo v2, "release"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/sume/SumeLog;->beg(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 540
    iget-object v1, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 542
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/sume/nn/SumeNNClient$State;->ERROR:Lcom/samsung/android/sume/nn/SumeNNClient$State;

    const-wide/16 v4, 0x5

    if-eq v1, v3, :cond_1

    .line 544
    sget-object v1, Lcom/samsung/android/sume/nn/SumeNNClient$State;->IDLE:Lcom/samsung/android/sume/nn/SumeNNClient$State;

    iget-object v3, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sume/nn/SumeNNClient$State;

    invoke-virtual {v1, v3}, Lcom/samsung/android/sume/nn/SumeNNClient$State;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-lez v1, :cond_1

    .line 545
    const-string/jumbo v1, "wait to IDLE..."

    iget-object v3, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, v1, v3}, Lcom/samsung/android/sume/SumeLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 546
    iget-object v1, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->condition:Ljava/util/concurrent/locks/Condition;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v4, v5, v3}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 547
    :cond_0
    new-instance v0, Ljava/lang/InterruptedException;

    const-string/jumbo v1, "time out occur to wait to CONNECTED"

    invoke-direct {v0, v1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/samsung/android/sume/nn/SumeNNClient;
    throw v0

    .line 552
    .restart local p0    # "this":Lcom/samsung/android/sume/nn/SumeNNClient;
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->service:Landroid/os/Messenger;

    if-eqz v1, :cond_3

    .line 553
    new-instance v1, Lcom/samsung/android/sume/Request;

    sget-object v3, Lcom/samsung/android/sume/Command;->RELEASE:Lcom/samsung/android/sume/Command;

    invoke-direct {v1, v3}, Lcom/samsung/android/sume/Request;-><init>(Lcom/samsung/android/sume/Command;)V

    iget v3, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->nnId:I

    .line 554
    invoke-virtual {v1, v3}, Lcom/samsung/android/sume/Request;->setId(I)Lcom/samsung/android/sume/Request;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->service:Landroid/os/Messenger;

    .line 555
    invoke-virtual {v1, v3}, Lcom/samsung/android/sume/Request;->post(Landroid/os/Messenger;)Z

    .line 556
    const-string/jumbo v1, "wait to RELEASED..."

    iget-object v3, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, v1, v3}, Lcom/samsung/android/sume/SumeLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 558
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->condition:Ljava/util/concurrent/locks/Condition;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v4, v5, v1}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 562
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_1

    .line 559
    :cond_2
    new-instance v0, Ljava/lang/InterruptedException;

    const-string/jumbo v1, "time out occur to wait to RELEASED"

    invoke-direct {v0, v1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/samsung/android/sume/nn/SumeNNClient;
    throw v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 568
    .restart local p0    # "this":Lcom/samsung/android/sume/nn/SumeNNClient;
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 564
    :catch_0
    move-exception v0

    .line 565
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 566
    iget-object v1, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->state:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v3, Lcom/samsung/android/sume/nn/SumeNNClient$State;->ERROR:Lcom/samsung/android/sume/nn/SumeNNClient$State;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 568
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 569
    nop

    .line 571
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->eventListener:Lcom/samsung/android/sume/nn/SumeNNClient$OnEventListener;

    .line 572
    sget-object v0, Lcom/samsung/android/sume/nn/SumeNNClient;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, v2, v1}, Lcom/samsung/android/sume/SumeLog;->end(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 573
    return-void

    .line 568
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 569
    throw v0
.end method

.method public final blacklist run(Landroid/content/ContentValues;)V
    .locals 2
    .param p1, "cv"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cv"
        }
    .end annotation

    .line 643
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/content/ContentValues;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/nn/SumeNNClient;->run([Landroid/content/ContentValues;)V

    .line 644
    return-void
.end method

.method public final blacklist run(Lcom/samsung/android/sume/MediaBuffer;)V
    .locals 2
    .param p1, "buffer"    # Lcom/samsung/android/sume/MediaBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    .line 695
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/samsung/android/sume/MediaBuffer;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/nn/SumeNNClient;->run([Lcom/samsung/android/sume/MediaBuffer;)V

    .line 696
    return-void
.end method

.method public final blacklist run([Landroid/content/ContentValues;)V
    .locals 4
    .param p1, "data"    # [Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "data"
        }
    .end annotation

    .line 589
    array-length v0, p1

    if-nez v0, :cond_0

    .line 590
    sget-object v0, Lcom/samsung/android/sume/nn/SumeNNClient;->TAG:Ljava/lang/String;

    const-string v1, "no data given, do nothing"

    invoke-static {v0, v1}, Lcom/samsung/android/sume/SumeLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    return-void

    .line 592
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sume/nn/SumeNNClient$State;->ERROR:Lcom/samsung/android/sume/nn/SumeNNClient$State;

    if-ne v0, v1, :cond_2

    .line 593
    sget-object v0, Lcom/samsung/android/sume/nn/SumeNNClient;->TAG:Ljava/lang/String;

    const-string v1, "due to error, can\'t process inputs"

    invoke-static {v0, v1}, Lcom/samsung/android/sume/SumeLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->eventListener:Lcom/samsung/android/sume/nn/SumeNNClient$OnEventListener;

    if-eqz v0, :cond_1

    .line 595
    sget-object v1, Lcom/samsung/android/sume/Event;->ERROR_INVALID_OPERATION:Lcom/samsung/android/sume/Event;

    iget v2, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->nnId:I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3, v3}, Lcom/samsung/android/sume/nn/SumeNNClient$OnEventListener;->onEvent(Lcom/samsung/android/sume/Event;ILandroid/os/Bundle;Ljava/nio/ByteBuffer;)V

    .line 596
    :cond_1
    return-void

    .line 599
    :cond_2
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    aget-object v2, p1, v1

    .line 600
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v3, "input-path"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    const-string/jumbo v3, "output-path"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    goto :goto_1

    .line 601
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nor input or output path is given: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 599
    .end local v2    # "cv":Landroid/content/ContentValues;
    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 604
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/samsung/android/sume/nn/SumeNNClient$Job;

    sget-object v2, Lcom/samsung/android/sume/nn/SumeNNClient$Priority;->DEFAULT:Lcom/samsung/android/sume/nn/SumeNNClient$Priority;

    new-instance v3, Lcom/samsung/android/sume/nn/SumeNNClient$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/sume/nn/SumeNNClient$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/sume/nn/SumeNNClient;[Landroid/content/ContentValues;)V

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/sume/nn/SumeNNClient$Job;-><init>(Lcom/samsung/android/sume/nn/SumeNNClient$Priority;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 640
    return-void
.end method

.method public final blacklist run([Lcom/samsung/android/sume/MediaBuffer;)V
    .locals 4
    .param p1, "data"    # [Lcom/samsung/android/sume/MediaBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "data"
        }
    .end annotation

    .line 647
    array-length v0, p1

    if-nez v0, :cond_0

    .line 648
    sget-object v0, Lcom/samsung/android/sume/nn/SumeNNClient;->TAG:Ljava/lang/String;

    const-string v1, "no data given, do nothing"

    invoke-static {v0, v1}, Lcom/samsung/android/sume/SumeLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    return-void

    .line 650
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sume/nn/SumeNNClient$State;->ERROR:Lcom/samsung/android/sume/nn/SumeNNClient$State;

    if-ne v0, v1, :cond_2

    .line 651
    sget-object v0, Lcom/samsung/android/sume/nn/SumeNNClient;->TAG:Ljava/lang/String;

    const-string v1, "due to error, can\'t process inputs"

    invoke-static {v0, v1}, Lcom/samsung/android/sume/SumeLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->eventListener:Lcom/samsung/android/sume/nn/SumeNNClient$OnEventListener;

    if-eqz v0, :cond_1

    .line 653
    sget-object v1, Lcom/samsung/android/sume/Event;->ERROR_INVALID_OPERATION:Lcom/samsung/android/sume/Event;

    iget v2, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->nnId:I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3, v3}, Lcom/samsung/android/sume/nn/SumeNNClient$OnEventListener;->onEvent(Lcom/samsung/android/sume/Event;ILandroid/os/Bundle;Ljava/nio/ByteBuffer;)V

    .line 654
    :cond_1
    return-void

    .line 657
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/samsung/android/sume/nn/SumeNNClient$Job;

    sget-object v2, Lcom/samsung/android/sume/nn/SumeNNClient$Priority;->DEFAULT:Lcom/samsung/android/sume/nn/SumeNNClient$Priority;

    new-instance v3, Lcom/samsung/android/sume/nn/SumeNNClient$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/sume/nn/SumeNNClient$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/sume/nn/SumeNNClient;[Lcom/samsung/android/sume/MediaBuffer;)V

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/sume/nn/SumeNNClient$Job;-><init>(Lcom/samsung/android/sume/nn/SumeNNClient$Priority;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 692
    return-void
.end method

.method public final blacklist setSupportedOpRuntimes([Lcom/samsung/android/sume/op/OpRuntime;)V
    .locals 0
    .param p1, "supportedOpRuntimes"    # [Lcom/samsung/android/sume/op/OpRuntime;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "supportedOpRuntimes"
        }
    .end annotation

    .line 521
    iput-object p1, p0, Lcom/samsung/android/sume/nn/SumeNNClient;->supportedOpRuntimes:[Lcom/samsung/android/sume/op/OpRuntime;

    .line 522
    return-void
.end method
