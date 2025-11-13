.class public final Lcom/samsung/android/sume/nn/SumeNN;
.super Ljava/lang/Object;
.source "SumeNN.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sume/nn/SumeNN$Builder;,
        Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler;,
        Lcom/samsung/android/sume/nn/SumeNN$DataMap;,
        Lcom/samsung/android/sume/nn/SumeNN$OnEventListener;,
        Lcom/samsung/android/sume/nn/SumeNN$State;
    }
.end annotation


# static fields
.field public static final blacklist COPY_META:I = 0x1

.field private static final blacklist SUME_NN_SERVICE_CLASS:Ljava/lang/String; = "com.samsung.android.sume.nn.service.SumeNNService"

.field private static final blacklist SUME_NN_SERVICE_PACKAGE:Ljava/lang/String; = "com.samsung.android.sume.nn.service"

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist attributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/samsung/android/sume/nn/Model;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist conditionDepot:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/samsung/android/sume/ValuedEnum;",
            "Ljava/util/concurrent/locks/Condition;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist connection:Landroid/content/ServiceConnection;

.field private final blacklist context:Landroid/content/Context;

.field private final blacklist dataMap:Lcom/samsung/android/sume/nn/SumeNN$DataMap;

.field private blacklist debuggable:Z

.field private blacklist descriptors:[Lcom/samsung/android/sume/nn/NNDescriptor;

.field private blacklist eventListener:Lcom/samsung/android/sume/nn/SumeNN$OnEventListener;

.field private blacklist flags:I

.field private blacklist inputFormat:Lcom/samsung/android/sume/MediaFormat;

.field private blacklist linkages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/samsung/android/sume/nn/Model;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sume/Duo<",
            "Lcom/samsung/android/sume/evaluate/Evaluable;",
            "Lcom/samsung/android/sume/nn/Model;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final blacklist lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final blacklist models:[Lcom/samsung/android/sume/nn/Model;

.field private blacklist nnId:I

.field private blacklist outputFormat:Lcom/samsung/android/sume/MediaFormat;

.field private final blacklist processingTimeMs:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/samsung/android/sume/op/OpRuntime;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist receiver:Landroid/os/Messenger;

.field private blacklist recover:Z

.field private blacklist recoverCount:I

.field blacklist resultChannel:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/samsung/android/sume/Result;",
            ">;"
        }
    .end annotation
.end field

.field blacklist resultHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/util/function/Consumer<",
            "Lcom/samsung/android/sume/Result;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist runtimeIDs:Ljava/util/HashMap;
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

.field private final blacklist signalToCondition:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/util/concurrent/locks/Condition;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist state:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/samsung/android/sume/nn/SumeNN$State;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist supportedOpRuntimes:[Lcom/samsung/android/sume/op/OpRuntime;

.field private final blacklist threadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 99
    const-class v0, Lcom/samsung/android/sume/nn/SumeNN;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/nn/SumeNN;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;[Lcom/samsung/android/sume/nn/Model;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/samsung/android/sume/Mode;Lcom/samsung/android/sume/nn/SumeNN$OnEventListener;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "models"    # [Lcom/samsung/android/sume/nn/Model;
    .param p5, "mode"    # Lcom/samsung/android/sume/Mode;
    .param p6, "eventListener"    # Lcom/samsung/android/sume/nn/SumeNN$OnEventListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "models",
            "linkages",
            "attributes",
            "mode",
            "eventListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Lcom/samsung/android/sume/nn/Model;",
            "Ljava/util/HashMap<",
            "Lcom/samsung/android/sume/nn/Model;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sume/Duo<",
            "Lcom/samsung/android/sume/evaluate/Evaluable;",
            "Lcom/samsung/android/sume/nn/Model;",
            ">;>;>;",
            "Ljava/util/HashMap<",
            "Lcom/samsung/android/sume/nn/Model;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Lcom/samsung/android/sume/Mode;",
            "Lcom/samsung/android/sume/nn/SumeNN$OnEventListener;",
            ")V"
        }
    .end annotation

    .line 1084
    .local p3, "linkages":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/samsung/android/sume/nn/Model;Ljava/util/ArrayList<Lcom/samsung/android/sume/Duo<Lcom/samsung/android/sume/evaluate/Evaluable;Lcom/samsung/android/sume/nn/Model;>;>;>;"
    .local p4, "attributes":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/samsung/android/sume/nn/Model;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    move-object/from16 v8, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v9, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lcom/samsung/android/sume/nn/SumeNN$State;->LOADED:Lcom/samsung/android/sume/nn/SumeNN$State;

    invoke-direct {v9, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v9, v8, Lcom/samsung/android/sume/nn/SumeNN;->state:Ljava/util/concurrent/atomic/AtomicReference;

    .line 130
    const/4 v0, 0x3

    iput v0, v8, Lcom/samsung/android/sume/nn/SumeNN;->recoverCount:I

    .line 160
    new-instance v10, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v10}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v10, v8, Lcom/samsung/android/sume/nn/SumeNN;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 166
    new-instance v11, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v11}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v11, v8, Lcom/samsung/android/sume/nn/SumeNN;->conditionDepot:Ljava/util/concurrent/ConcurrentHashMap;

    .line 171
    new-instance v0, Lcom/samsung/android/sume/nn/SumeNN$$ExternalSyntheticLambda8;

    invoke-direct {v0, v8}, Lcom/samsung/android/sume/nn/SumeNN$$ExternalSyntheticLambda8;-><init>(Lcom/samsung/android/sume/nn/SumeNN;)V

    iput-object v0, v8, Lcom/samsung/android/sume/nn/SumeNN;->signalToCondition:Ljava/util/function/Consumer;

    .line 198
    const/4 v0, -0x1

    iput v0, v8, Lcom/samsung/android/sume/nn/SumeNN;->nnId:I

    .line 205
    new-instance v0, Lcom/samsung/android/sume/nn/SumeNN$1;

    invoke-direct {v0, v8}, Lcom/samsung/android/sume/nn/SumeNN$1;-><init>(Lcom/samsung/android/sume/nn/SumeNN;)V

    iput-object v0, v8, Lcom/samsung/android/sume/nn/SumeNN;->processingTimeMs:Ljava/util/concurrent/ConcurrentHashMap;

    .line 216
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v8, Lcom/samsung/android/sume/nn/SumeNN;->runtimeIDs:Ljava/util/HashMap;

    .line 226
    new-instance v0, Lcom/samsung/android/sume/nn/SumeNN$DataMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/sume/nn/SumeNN$DataMap;-><init>(Lcom/samsung/android/sume/nn/SumeNN$1;)V

    iput-object v0, v8, Lcom/samsung/android/sume/nn/SumeNN;->dataMap:Lcom/samsung/android/sume/nn/SumeNN$DataMap;

    .line 246
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, v8, Lcom/samsung/android/sume/nn/SumeNN;->threadPool:Ljava/util/concurrent/ExecutorService;

    .line 251
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, v8, Lcom/samsung/android/sume/nn/SumeNN;->resultChannel:Ljava/util/concurrent/BlockingQueue;

    .line 1085
    sget-object v12, Lcom/samsung/android/sume/nn/SumeNN;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Lcom/samsung/android/sume/nn/SumeNN;->getVersion()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "create SemSumeNN[version=%s] E"

    invoke-static {v1, v0}, Lcom/samsung/android/sume/Utils;->fmtStr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0, v9}, Lcom/samsung/android/sume/SumeLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 1087
    move-object/from16 v13, p1

    iput-object v13, v8, Lcom/samsung/android/sume/nn/SumeNN;->context:Landroid/content/Context;

    .line 1088
    move-object/from16 v14, p2

    iput-object v14, v8, Lcom/samsung/android/sume/nn/SumeNN;->models:[Lcom/samsung/android/sume/nn/Model;

    .line 1089
    move-object/from16 v15, p3

    iput-object v15, v8, Lcom/samsung/android/sume/nn/SumeNN;->linkages:Ljava/util/HashMap;

    .line 1090
    move-object/from16 v7, p4

    iput-object v7, v8, Lcom/samsung/android/sume/nn/SumeNN;->attributes:Ljava/util/HashMap;

    .line 1091
    move-object/from16 v6, p6

    iput-object v6, v8, Lcom/samsung/android/sume/nn/SumeNN;->eventListener:Lcom/samsung/android/sume/nn/SumeNN$OnEventListener;

    .line 1093
    new-instance v5, Lcom/samsung/android/sume/nn/SumeNN$2;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p5

    move-object/from16 v4, p3

    move-object v13, v5

    move-object/from16 v5, p4

    move-object/from16 v6, p2

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/sume/nn/SumeNN$2;-><init>(Lcom/samsung/android/sume/nn/SumeNN;Landroid/content/Context;Lcom/samsung/android/sume/Mode;Ljava/util/HashMap;Ljava/util/HashMap;[Lcom/samsung/android/sume/nn/Model;Lcom/samsung/android/sume/nn/SumeNN$OnEventListener;)V

    iput-object v13, v8, Lcom/samsung/android/sume/nn/SumeNN;->connection:Landroid/content/ServiceConnection;

    .line 1165
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, v12}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1166
    .local v0, "workerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1168
    new-instance v1, Landroid/os/Messenger;

    new-instance v2, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler;-><init>(Ljava/lang/ref/WeakReference;Landroid/os/Looper;)V

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v1, v8, Lcom/samsung/android/sume/nn/SumeNN;->receiver:Landroid/os/Messenger;

    .line 1170
    sget-object v1, Lcom/samsung/android/sume/nn/SumeNN$State;->IDLE:Lcom/samsung/android/sume/nn/SumeNN$State;

    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1171
    const-string v1, "create SemSumeNN X"

    invoke-static {v12, v1, v9}, Lcom/samsung/android/sume/SumeLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 1172
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/Context;[Lcom/samsung/android/sume/nn/Model;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/samsung/android/sume/Mode;Lcom/samsung/android/sume/nn/SumeNN$OnEventListener;Lcom/samsung/android/sume/nn/SumeNN$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # [Lcom/samsung/android/sume/nn/Model;
    .param p3, "x2"    # Ljava/util/HashMap;
    .param p4, "x3"    # Ljava/util/HashMap;
    .param p5, "x4"    # Lcom/samsung/android/sume/Mode;
    .param p6, "x5"    # Lcom/samsung/android/sume/nn/SumeNN$OnEventListener;
    .param p7, "x6"    # Lcom/samsung/android/sume/nn/SumeNN$1;

    .line 98
    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/sume/nn/SumeNN;-><init>(Landroid/content/Context;[Lcom/samsung/android/sume/nn/Model;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/samsung/android/sume/Mode;Lcom/samsung/android/sume/nn/SumeNN$OnEventListener;)V

    return-void
.end method

.method static synthetic blacklist access$100()Ljava/lang/String;
    .locals 1

    .line 98
    sget-object v0, Lcom/samsung/android/sume/nn/SumeNN;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic blacklist access$1000(Lcom/samsung/android/sume/nn/SumeNN;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sume/nn/SumeNN;

    .line 98
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN;->conditionDepot:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic blacklist access$1100(Lcom/samsung/android/sume/nn/SumeNN;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sume/nn/SumeNN;

    .line 98
    iget-boolean v0, p0, Lcom/samsung/android/sume/nn/SumeNN;->debuggable:Z

    return v0
.end method

.method static synthetic blacklist access$1102(Lcom/samsung/android/sume/nn/SumeNN;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/sume/nn/SumeNN;
    .param p1, "x1"    # Z

    .line 98
    iput-boolean p1, p0, Lcom/samsung/android/sume/nn/SumeNN;->debuggable:Z

    return p1
.end method

.method static synthetic blacklist access$1200(Lcom/samsung/android/sume/nn/SumeNN;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sume/nn/SumeNN;

    .line 98
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN;->processingTimeMs:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic blacklist access$1300(Lcom/samsung/android/sume/nn/SumeNN;)Lcom/samsung/android/sume/MediaFormat;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sume/nn/SumeNN;

    .line 98
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN;->outputFormat:Lcom/samsung/android/sume/MediaFormat;

    return-object v0
.end method

.method static synthetic blacklist access$1302(Lcom/samsung/android/sume/nn/SumeNN;Lcom/samsung/android/sume/MediaFormat;)Lcom/samsung/android/sume/MediaFormat;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/sume/nn/SumeNN;
    .param p1, "x1"    # Lcom/samsung/android/sume/MediaFormat;

    .line 98
    iput-object p1, p0, Lcom/samsung/android/sume/nn/SumeNN;->outputFormat:Lcom/samsung/android/sume/MediaFormat;

    return-object p1
.end method

.method static synthetic blacklist access$1400(Lcom/samsung/android/sume/nn/SumeNN;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sume/nn/SumeNN;
    .param p1, "x1"    # I

    .line 98
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/nn/SumeNN;->hasFlags(I)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$1500(Lcom/samsung/android/sume/nn/SumeNN;)Lcom/samsung/android/sume/nn/SumeNN$OnEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sume/nn/SumeNN;

    .line 98
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN;->eventListener:Lcom/samsung/android/sume/nn/SumeNN$OnEventListener;

    return-object v0
.end method

.method static synthetic blacklist access$1600(Lcom/samsung/android/sume/nn/SumeNN;)Landroid/os/Messenger;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sume/nn/SumeNN;

    .line 98
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN;->service:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic blacklist access$1602(Lcom/samsung/android/sume/nn/SumeNN;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/sume/nn/SumeNN;
    .param p1, "x1"    # Landroid/os/Messenger;

    .line 98
    iput-object p1, p0, Lcom/samsung/android/sume/nn/SumeNN;->service:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic blacklist access$1700(Lcom/samsung/android/sume/nn/SumeNN;)Landroid/os/Messenger;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sume/nn/SumeNN;

    .line 98
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN;->receiver:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic blacklist access$1800(Lcom/samsung/android/sume/nn/SumeNN;)Lcom/samsung/android/sume/MediaFormat;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sume/nn/SumeNN;

    .line 98
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN;->inputFormat:Lcom/samsung/android/sume/MediaFormat;

    return-object v0
.end method

.method static synthetic blacklist access$1802(Lcom/samsung/android/sume/nn/SumeNN;Lcom/samsung/android/sume/MediaFormat;)Lcom/samsung/android/sume/MediaFormat;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/sume/nn/SumeNN;
    .param p1, "x1"    # Lcom/samsung/android/sume/MediaFormat;

    .line 98
    iput-object p1, p0, Lcom/samsung/android/sume/nn/SumeNN;->inputFormat:Lcom/samsung/android/sume/MediaFormat;

    return-object p1
.end method

.method static synthetic blacklist access$1900(Lcom/samsung/android/sume/nn/SumeNN;)[Lcom/samsung/android/sume/nn/NNDescriptor;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sume/nn/SumeNN;

    .line 98
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN;->descriptors:[Lcom/samsung/android/sume/nn/NNDescriptor;

    return-object v0
.end method

.method static synthetic blacklist access$1902(Lcom/samsung/android/sume/nn/SumeNN;[Lcom/samsung/android/sume/nn/NNDescriptor;)[Lcom/samsung/android/sume/nn/NNDescriptor;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/sume/nn/SumeNN;
    .param p1, "x1"    # [Lcom/samsung/android/sume/nn/NNDescriptor;

    .line 98
    iput-object p1, p0, Lcom/samsung/android/sume/nn/SumeNN;->descriptors:[Lcom/samsung/android/sume/nn/NNDescriptor;

    return-object p1
.end method

.method static synthetic blacklist access$200(Lcom/samsung/android/sume/nn/SumeNN;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sume/nn/SumeNN;

    .line 98
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN;->state:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic blacklist access$2006(Lcom/samsung/android/sume/nn/SumeNN;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sume/nn/SumeNN;

    .line 98
    iget v0, p0, Lcom/samsung/android/sume/nn/SumeNN;->recoverCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/sume/nn/SumeNN;->recoverCount:I

    return v0
.end method

.method static synthetic blacklist access$2100(Lcom/samsung/android/sume/nn/SumeNN;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/sume/nn/SumeNN;

    .line 98
    invoke-direct {p0}, Lcom/samsung/android/sume/nn/SumeNN;->init()V

    return-void
.end method

.method static synthetic blacklist access$2302(Lcom/samsung/android/sume/nn/SumeNN;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/sume/nn/SumeNN;
    .param p1, "x1"    # I

    .line 98
    iput p1, p0, Lcom/samsung/android/sume/nn/SumeNN;->flags:I

    return p1
.end method

.method static synthetic blacklist access$300(Lcom/samsung/android/sume/nn/SumeNN;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sume/nn/SumeNN;

    .line 98
    iget v0, p0, Lcom/samsung/android/sume/nn/SumeNN;->nnId:I

    return v0
.end method

.method static synthetic blacklist access$302(Lcom/samsung/android/sume/nn/SumeNN;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/sume/nn/SumeNN;
    .param p1, "x1"    # I

    .line 98
    iput p1, p0, Lcom/samsung/android/sume/nn/SumeNN;->nnId:I

    return p1
.end method

.method static synthetic blacklist access$400(Lcom/samsung/android/sume/nn/SumeNN;)[Lcom/samsung/android/sume/op/OpRuntime;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sume/nn/SumeNN;

    .line 98
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN;->supportedOpRuntimes:[Lcom/samsung/android/sume/op/OpRuntime;

    return-object v0
.end method

.method static synthetic blacklist access$402(Lcom/samsung/android/sume/nn/SumeNN;[Lcom/samsung/android/sume/op/OpRuntime;)[Lcom/samsung/android/sume/op/OpRuntime;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/sume/nn/SumeNN;
    .param p1, "x1"    # [Lcom/samsung/android/sume/op/OpRuntime;

    .line 98
    iput-object p1, p0, Lcom/samsung/android/sume/nn/SumeNN;->supportedOpRuntimes:[Lcom/samsung/android/sume/op/OpRuntime;

    return-object p1
.end method

.method static synthetic blacklist access$500(Lcom/samsung/android/sume/nn/SumeNN;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sume/nn/SumeNN;

    .line 98
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN;->runtimeIDs:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic blacklist access$600(Lcom/samsung/android/sume/nn/SumeNN;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sume/nn/SumeNN;

    .line 98
    iget-boolean v0, p0, Lcom/samsung/android/sume/nn/SumeNN;->recover:Z

    return v0
.end method

.method static synthetic blacklist access$602(Lcom/samsung/android/sume/nn/SumeNN;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/sume/nn/SumeNN;
    .param p1, "x1"    # Z

    .line 98
    iput-boolean p1, p0, Lcom/samsung/android/sume/nn/SumeNN;->recover:Z

    return p1
.end method

.method static synthetic blacklist access$700(Lcom/samsung/android/sume/nn/SumeNN;)Lcom/samsung/android/sume/nn/SumeNN$DataMap;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sume/nn/SumeNN;

    .line 98
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN;->dataMap:Lcom/samsung/android/sume/nn/SumeNN$DataMap;

    return-object v0
.end method

.method static synthetic blacklist access$800(Lcom/samsung/android/sume/nn/SumeNN;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sume/nn/SumeNN;

    .line 98
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic blacklist access$900(Lcom/samsung/android/sume/nn/SumeNN;)Ljava/util/function/Consumer;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sume/nn/SumeNN;

    .line 98
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN;->signalToCondition:Ljava/util/function/Consumer;

    return-object v0
.end method

.method public static blacklist getVersion()Ljava/lang/String;
    .locals 1

    .line 765
    const-string v0, "3.1.12"

    return-object v0
.end method

.method public static blacklist getVersionNumber()J
    .locals 7

    .line 769
    invoke-static {}, Lcom/samsung/android/sume/nn/SumeNN;->getVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/nn/SumeNN$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/samsung/android/sume/nn/SumeNN$$ExternalSyntheticLambda7;-><init>()V

    .line 770
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    .line 771
    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    .line 772
    .local v0, "versions":[I
    array-length v1, v0

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "version should be given major.minor.patch format: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v1, v5, v6}, Lcom/samsung/android/sume/Utils;->check(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 774
    new-array v1, v2, [I

    fill-array-data v1, :array_0

    .line 776
    .local v1, "mods":[I
    aget v2, v0, v4

    aget v5, v1, v4

    rem-int/2addr v2, v5

    aput v2, v0, v4

    .line 777
    aget v2, v0, v3

    aget v5, v1, v3

    rem-int/2addr v2, v5

    aput v2, v0, v3

    .line 778
    const/4 v2, 0x2

    aget v5, v0, v2

    aget v6, v1, v2

    rem-int/2addr v5, v6

    aput v5, v0, v2

    .line 780
    aget v4, v0, v4

    aget v5, v1, v3

    mul-int/2addr v4, v5

    aget v5, v1, v2

    mul-int/2addr v4, v5

    aget v3, v0, v3

    aget v5, v1, v2

    mul-int/2addr v3, v5

    add-int/2addr v4, v3

    aget v2, v0, v2

    add-int/2addr v4, v2

    int-to-long v2, v4

    return-wide v2

    :array_0
    .array-data 4
        0x64
        0x64
        0x3e8
    .end array-data
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

    .line 904
    iget v0, p0, Lcom/samsung/android/sume/nn/SumeNN;->flags:I

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

    .line 811
    sget-object v0, Lcom/samsung/android/sume/nn/SumeNN;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sume/nn/SumeNN;->state:Ljava/util/concurrent/atomic/AtomicReference;

    const-string v2, "init: bind to SNS..."

    invoke-static {v0, v2, v1}, Lcom/samsung/android/sume/SumeLog;->beg(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 813
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 814
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.sume.nn.service"

    const-string v3, "com.samsung.android.sume.nn.service.SumeNNService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 815
    iget-object v2, p0, Lcom/samsung/android/sume/nn/SumeNN;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 816
    iget-object v2, p0, Lcom/samsung/android/sume/nn/SumeNN;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/sume/nn/SumeNN;->connection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 818
    iget-object v2, p0, Lcom/samsung/android/sume/nn/SumeNN;->state:Ljava/util/concurrent/atomic/AtomicReference;

    const-string v3, "init"

    invoke-static {v0, v3, v2}, Lcom/samsung/android/sume/SumeLog;->end(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 819
    return-void
.end method

.method static synthetic blacklist lambda$getProcessingTime$1(Ljava/util/concurrent/TimeUnit;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 3
    .param p0, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p1, "t"    # Ljava/lang/Long;

    .line 885
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$run$3(Lcom/samsung/android/sume/Utils$StrongReference;Lcom/samsung/android/sume/Result;)V
    .locals 1
    .param p0, "backedResult"    # Lcom/samsung/android/sume/Utils$StrongReference;
    .param p1, "result"    # Lcom/samsung/android/sume/Result;

    .line 1004
    invoke-virtual {p1}, Lcom/samsung/android/sume/Result;->isFinal()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1005
    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/Utils$StrongReference;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 1006
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sume/Utils$StrongReference;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1007
    invoke-virtual {p0}, Lcom/samsung/android/sume/Utils$StrongReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/Result;

    invoke-virtual {v0}, Lcom/samsung/android/sume/Result;->getEvent()Lcom/samsung/android/sume/Event;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sume/Event;->isOk()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1008
    invoke-virtual {p0}, Lcom/samsung/android/sume/Utils$StrongReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/Result;

    invoke-virtual {v0}, Lcom/samsung/android/sume/Result;->getEvent()Lcom/samsung/android/sume/Event;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sume/Result;->setEvent(Lcom/samsung/android/sume/Event;)V

    .line 1009
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sume/Utils$StrongReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/Result;

    invoke-virtual {v0}, Lcom/samsung/android/sume/Result;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sume/Result;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 1010
    invoke-virtual {p0}, Lcom/samsung/android/sume/Utils$StrongReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/Result;

    invoke-virtual {v0}, Lcom/samsung/android/sume/Result;->getExtra()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sume/Result;->setExtra(Ljava/util/concurrent/ConcurrentHashMap;)Lcom/samsung/android/sume/Result;

    .line 1011
    invoke-virtual {p0}, Lcom/samsung/android/sume/Utils$StrongReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/Result;

    invoke-virtual {v0}, Lcom/samsung/android/sume/Result;->getAppliedModels()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sume/Result;->setAppliedModels(Ljava/util/List;)V

    .line 1013
    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic blacklist lambda$run$5(Lcom/samsung/android/sume/Utils$StrongReference;Lcom/samsung/android/sume/Result;)V
    .locals 1
    .param p0, "backedResult"    # Lcom/samsung/android/sume/Utils$StrongReference;
    .param p1, "result"    # Lcom/samsung/android/sume/Result;

    .line 1030
    invoke-virtual {p1}, Lcom/samsung/android/sume/Result;->isFinal()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1031
    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/Utils$StrongReference;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 1032
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sume/Utils$StrongReference;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1033
    invoke-virtual {p0}, Lcom/samsung/android/sume/Utils$StrongReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/Result;

    invoke-virtual {v0}, Lcom/samsung/android/sume/Result;->getEvent()Lcom/samsung/android/sume/Event;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sume/Event;->isOk()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1034
    invoke-virtual {p0}, Lcom/samsung/android/sume/Utils$StrongReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/Result;

    invoke-virtual {v0}, Lcom/samsung/android/sume/Result;->getEvent()Lcom/samsung/android/sume/Event;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sume/Result;->setEvent(Lcom/samsung/android/sume/Event;)V

    .line 1035
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sume/Utils$StrongReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/Result;

    invoke-virtual {v0}, Lcom/samsung/android/sume/Result;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sume/Result;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 1036
    invoke-virtual {p0}, Lcom/samsung/android/sume/Utils$StrongReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/Result;

    invoke-virtual {v0}, Lcom/samsung/android/sume/Result;->getExtra()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sume/Result;->setExtra(Ljava/util/concurrent/ConcurrentHashMap;)Lcom/samsung/android/sume/Result;

    .line 1037
    invoke-virtual {p0}, Lcom/samsung/android/sume/Utils$StrongReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/Result;

    invoke-virtual {v0}, Lcom/samsung/android/sume/Result;->getAppliedModels()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sume/Result;->setAppliedModels(Ljava/util/List;)V

    .line 1039
    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic blacklist lambda$runInternal$2(Lcom/samsung/android/sume/nn/SumeNN$OnEventListener;)V
    .locals 3
    .param p0, "listener"    # Lcom/samsung/android/sume/nn/SumeNN$OnEventListener;

    .line 982
    sget-object v0, Lcom/samsung/android/sume/Event;->ERROR_NO_RESPONSE:Lcom/samsung/android/sume/Event;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-interface {p0, v0, v1, v2, v2}, Lcom/samsung/android/sume/nn/SumeNN$OnEventListener;->onEvent(Lcom/samsung/android/sume/Event;ILandroid/os/Bundle;Ljava/nio/ByteBuffer;)V

    .line 983
    return-void
.end method

.method private blacklist runInternal([Landroid/content/ContentValues;[Lcom/samsung/android/sume/MediaBuffer;Ljava/util/function/Consumer;)Lcom/samsung/android/sume/Result;
    .locals 10
    .param p1, "contentValues"    # [Landroid/content/ContentValues;
    .param p2, "mediaBuffers"    # [Lcom/samsung/android/sume/MediaBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "contentValues",
            "mediaBuffers",
            "resultHandler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/ContentValues;",
            "[",
            "Lcom/samsung/android/sume/MediaBuffer;",
            "Ljava/util/function/Consumer<",
            "Lcom/samsung/android/sume/Result;",
            ">;)",
            "Lcom/samsung/android/sume/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 911
    .local p3, "resultHandler":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/samsung/android/sume/Result;>;"
    const-string v0, "exception"

    sget-object v1, Lcom/samsung/android/sume/nn/SumeNN;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sume/nn/SumeNN;->state:Ljava/util/concurrent/atomic/AtomicReference;

    const-string/jumbo v3, "runInternal"

    invoke-static {v1, v3, v2}, Lcom/samsung/android/sume/SumeLog;->beg(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 913
    array-length v2, p1

    if-nez v2, :cond_1

    array-length v2, p2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 914
    :cond_0
    const-string v0, "no data given, do nothing"

    invoke-static {v1, v0}, Lcom/samsung/android/sume/SumeLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "no data given"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 916
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/sume/nn/SumeNN;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/sume/nn/SumeNN$State;->ERROR:Lcom/samsung/android/sume/nn/SumeNN$State;

    const-string v5, "in error state, can\'t process inputs"

    const-string v6, "due to error, can\'t process inputs"

    const/4 v7, 0x0

    if-ne v2, v4, :cond_3

    .line 917
    invoke-static {v1, v6}, Lcom/samsung/android/sume/SumeLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN;->eventListener:Lcom/samsung/android/sume/nn/SumeNN$OnEventListener;

    if-eqz v0, :cond_2

    .line 919
    sget-object v1, Lcom/samsung/android/sume/Event;->ERROR_INVALID_OPERATION:Lcom/samsung/android/sume/Event;

    iget v2, p0, Lcom/samsung/android/sume/nn/SumeNN;->nnId:I

    invoke-interface {v0, v1, v2, v7, v7}, Lcom/samsung/android/sume/nn/SumeNN$OnEventListener;->onEvent(Lcom/samsung/android/sume/Event;ILandroid/os/Bundle;Ljava/nio/ByteBuffer;)V

    .line 920
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 924
    :cond_3
    array-length v1, p1

    const/4 v2, 0x0

    move v4, v2

    :goto_1
    if-ge v4, v1, :cond_6

    aget-object v8, p1, v4

    .line 925
    .local v8, "cv":Landroid/content/ContentValues;
    const-string v9, "input-path"

    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_5

    const-string/jumbo v9, "output-path"

    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    goto :goto_2

    .line 926
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nor input or output path is given: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 924
    .end local v8    # "cv":Landroid/content/ContentValues;
    :cond_5
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 932
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/sume/nn/SumeNN;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 934
    :goto_3
    :try_start_0
    sget-object v1, Lcom/samsung/android/sume/nn/SumeNN$State;->IDLE:Lcom/samsung/android/sume/nn/SumeNN$State;

    iget-object v4, p0, Lcom/samsung/android/sume/nn/SumeNN;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sume/nn/SumeNN$State;

    invoke-virtual {v1, v4}, Lcom/samsung/android/sume/nn/SumeNN$State;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-lez v1, :cond_8

    .line 935
    sget-object v1, Lcom/samsung/android/sume/nn/SumeNN;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "wait to IDLE..."

    iget-object v8, p0, Lcom/samsung/android/sume/nn/SumeNN;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1, v4, v8}, Lcom/samsung/android/sume/SumeLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 936
    iget-object v1, p0, Lcom/samsung/android/sume/nn/SumeNN;->conditionDepot:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v4, Lcom/samsung/android/sume/nn/SumeNN$State;->IDLE:Lcom/samsung/android/sume/nn/SumeNN$State;

    invoke-virtual {v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/locks/Condition;

    const-wide/16 v8, 0x5

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v8, v9, v4}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_3

    .line 937
    :cond_7
    new-instance v0, Ljava/lang/InterruptedException;

    const-string/jumbo v1, "time out occur to wait to IDLE"

    invoke-direct {v0, v1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/samsung/android/sume/nn/SumeNN;
    .end local p1    # "contentValues":[Landroid/content/ContentValues;
    .end local p2    # "mediaBuffers":[Lcom/samsung/android/sume/MediaBuffer;
    .end local p3    # "resultHandler":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/samsung/android/sume/Result;>;"
    throw v0

    .line 940
    .restart local p0    # "this":Lcom/samsung/android/sume/nn/SumeNN;
    .restart local p1    # "contentValues":[Landroid/content/ContentValues;
    .restart local p2    # "mediaBuffers":[Lcom/samsung/android/sume/MediaBuffer;
    .restart local p3    # "resultHandler":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/samsung/android/sume/Result;>;"
    :cond_8
    iget-object v1, p0, Lcom/samsung/android/sume/nn/SumeNN;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lcom/samsung/android/sume/nn/SumeNN$State;->ERROR:Lcom/samsung/android/sume/nn/SumeNN$State;

    if-eq v1, v4, :cond_f

    .line 941
    new-instance v1, Lcom/samsung/android/sume/Request;

    sget-object v4, Lcom/samsung/android/sume/Command;->RUN:Lcom/samsung/android/sume/Command;

    invoke-direct {v1, v4}, Lcom/samsung/android/sume/Request;-><init>(Lcom/samsung/android/sume/Command;)V

    iget v4, p0, Lcom/samsung/android/sume/nn/SumeNN;->nnId:I

    invoke-virtual {v1, v4}, Lcom/samsung/android/sume/Request;->setId(I)Lcom/samsung/android/sume/Request;

    move-result-object v1

    .line 943
    .local v1, "req":Lcom/samsung/android/sume/Request;
    array-length v4, p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x2

    const-string/jumbo v6, "run with data[#%d]: %s"

    const/4 v7, 0x1

    if-eqz v4, :cond_9

    .line 944
    :try_start_1
    sget-object v4, Lcom/samsung/android/sume/nn/SumeNN;->TAG:Ljava/lang/String;

    new-array v8, v5, [Ljava/lang/Object;

    array-length v9, p1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    aput-object p1, v8, v7

    invoke-static {v6, v8}, Lcom/samsung/android/sume/Utils;->fmtStr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/sume/nn/SumeNN;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v4, v8, v9}, Lcom/samsung/android/sume/SumeLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 945
    iget-object v4, p0, Lcom/samsung/android/sume/nn/SumeNN;->dataMap:Lcom/samsung/android/sume/nn/SumeNN$DataMap;

    invoke-virtual {v4, p1}, Lcom/samsung/android/sume/nn/SumeNN$DataMap;->setInputData([Landroid/content/ContentValues;)V

    .line 946
    invoke-virtual {v1, p1}, Lcom/samsung/android/sume/Request;->setContents([Landroid/content/ContentValues;)Lcom/samsung/android/sume/Request;

    .line 949
    :cond_9
    array-length v4, p2

    if-eqz v4, :cond_a

    .line 950
    sget-object v4, Lcom/samsung/android/sume/nn/SumeNN;->TAG:Ljava/lang/String;

    new-array v5, v5, [Ljava/lang/Object;

    array-length v8, p2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v2

    aput-object p2, v5, v7

    invoke-static {v6, v5}, Lcom/samsung/android/sume/Utils;->fmtStr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/sume/nn/SumeNN;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v4, v2, v5}, Lcom/samsung/android/sume/SumeLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 951
    iget-object v2, p0, Lcom/samsung/android/sume/nn/SumeNN;->dataMap:Lcom/samsung/android/sume/nn/SumeNN$DataMap;

    invoke-virtual {v2, p2}, Lcom/samsung/android/sume/nn/SumeNN$DataMap;->setInputData([Lcom/samsung/android/sume/MediaBuffer;)V

    .line 952
    invoke-virtual {v1, p2}, Lcom/samsung/android/sume/Request;->setBuffers([Lcom/samsung/android/sume/MediaBuffer;)Lcom/samsung/android/sume/Request;

    .line 955
    :cond_a
    iget-object v2, p0, Lcom/samsung/android/sume/nn/SumeNN;->service:Landroid/os/Messenger;

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/samsung/android/sume/nn/SumeNN$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1}, Lcom/samsung/android/sume/nn/SumeNN$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sume/Request;)V

    invoke-virtual {v2, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 958
    iget-object v2, p0, Lcom/samsung/android/sume/nn/SumeNN;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 962
    :cond_b
    sget-object v2, Lcom/samsung/android/sume/nn/SumeNN;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "wait to receive result..."

    iget-object v5, p0, Lcom/samsung/android/sume/nn/SumeNN;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v2, v4, v5}, Lcom/samsung/android/sume/SumeLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 964
    iget-object v4, p0, Lcom/samsung/android/sume/nn/SumeNN;->resultChannel:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sume/Result;

    .line 965
    .local v4, "result":Lcom/samsung/android/sume/Result;
    invoke-interface {p3, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 966
    invoke-virtual {v4}, Lcom/samsung/android/sume/Result;->isFinal()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 968
    invoke-virtual {v4}, Lcom/samsung/android/sume/Result;->isError()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {v4, v0}, Lcom/samsung/android/sume/Result;->containsExtra(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c

    goto :goto_4

    .line 969
    :cond_c
    invoke-virtual {v4, v0}, Lcom/samsung/android/sume/Result;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    .end local p0    # "this":Lcom/samsung/android/sume/nn/SumeNN;
    .end local p1    # "contentValues":[Landroid/content/ContentValues;
    .end local p2    # "mediaBuffers":[Lcom/samsung/android/sume/MediaBuffer;
    .end local p3    # "resultHandler":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/samsung/android/sume/Result;>;"
    throw v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 972
    .restart local p0    # "this":Lcom/samsung/android/sume/nn/SumeNN;
    .restart local p1    # "contentValues":[Landroid/content/ContentValues;
    .restart local p2    # "mediaBuffers":[Lcom/samsung/android/sume/MediaBuffer;
    .restart local p3    # "resultHandler":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/samsung/android/sume/Result;>;"
    :cond_d
    :goto_4
    nop

    .line 986
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 987
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 988
    :cond_e
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v2, v3, v0}, Lcom/samsung/android/sume/SumeLog;->end(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 972
    return-object v4

    .line 974
    .end local v1    # "req":Lcom/samsung/android/sume/Request;
    .end local v4    # "result":Lcom/samsung/android/sume/Result;
    :cond_f
    :try_start_2
    sget-object v0, Lcom/samsung/android/sume/nn/SumeNN;->TAG:Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/samsung/android/sume/SumeLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN;->eventListener:Lcom/samsung/android/sume/nn/SumeNN$OnEventListener;

    if-eqz v0, :cond_10

    .line 976
    sget-object v1, Lcom/samsung/android/sume/Event;->ERROR_INVALID_OPERATION:Lcom/samsung/android/sume/Event;

    iget v2, p0, Lcom/samsung/android/sume/nn/SumeNN;->nnId:I

    invoke-interface {v0, v1, v2, v7, v7}, Lcom/samsung/android/sume/nn/SumeNN$OnEventListener;->onEvent(Lcom/samsung/android/sume/Event;ILandroid/os/Bundle;Ljava/nio/ByteBuffer;)V

    .line 977
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/samsung/android/sume/nn/SumeNN;
    .end local p1    # "contentValues":[Landroid/content/ContentValues;
    .end local p2    # "mediaBuffers":[Lcom/samsung/android/sume/MediaBuffer;
    .end local p3    # "resultHandler":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/samsung/android/sume/Result;>;"
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 986
    .restart local p0    # "this":Lcom/samsung/android/sume/nn/SumeNN;
    .restart local p1    # "contentValues":[Landroid/content/ContentValues;
    .restart local p2    # "mediaBuffers":[Lcom/samsung/android/sume/MediaBuffer;
    .restart local p3    # "resultHandler":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/samsung/android/sume/Result;>;"
    :catchall_0
    move-exception v0

    goto :goto_5

    .line 979
    :catch_0
    move-exception v0

    .line 981
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/sume/nn/SumeNN;->eventListener:Lcom/samsung/android/sume/nn/SumeNN$OnEventListener;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/nn/SumeNN$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/samsung/android/sume/nn/SumeNN$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 984
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "no response from service"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/samsung/android/sume/nn/SumeNN;
    .end local p1    # "contentValues":[Landroid/content/ContentValues;
    .end local p2    # "mediaBuffers":[Lcom/samsung/android/sume/MediaBuffer;
    .end local p3    # "resultHandler":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/samsung/android/sume/Result;>;"
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 986
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local p0    # "this":Lcom/samsung/android/sume/nn/SumeNN;
    .restart local p1    # "contentValues":[Landroid/content/ContentValues;
    .restart local p2    # "mediaBuffers":[Lcom/samsung/android/sume/MediaBuffer;
    .restart local p3    # "resultHandler":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/samsung/android/sume/Result;>;"
    :goto_5
    iget-object v1, p0, Lcom/samsung/android/sume/nn/SumeNN;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 987
    iget-object v1, p0, Lcom/samsung/android/sume/nn/SumeNN;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 988
    :cond_11
    sget-object v1, Lcom/samsung/android/sume/nn/SumeNN;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sume/nn/SumeNN;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1, v3, v2}, Lcom/samsung/android/sume/SumeLog;->end(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 989
    throw v0
.end method


# virtual methods
.method public blacklist getModel()[Lcom/samsung/android/sume/nn/Model;
    .locals 1

    .line 804
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN;->models:[Lcom/samsung/android/sume/nn/Model;

    return-object v0
.end method

.method public final blacklist getProcessingTime(Lcom/samsung/android/sume/op/OpRuntime;Ljava/util/concurrent/TimeUnit;)J
    .locals 3
    .param p1, "opRuntime"    # Lcom/samsung/android/sume/op/OpRuntime;
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "opRuntime",
            "unit"
        }
    .end annotation

    .line 884
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN;->processingTimeMs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/nn/SumeNN$$ExternalSyntheticLambda9;

    invoke-direct {v1, p2}, Lcom/samsung/android/sume/nn/SumeNN$$ExternalSyntheticLambda9;-><init>(Ljava/util/concurrent/TimeUnit;)V

    .line 885
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 886
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 884
    return-wide v0
.end method

.method public final blacklist getRuntimeIDs()Ljava/util/HashMap;
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

    .line 895
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN;->runtimeIDs:Ljava/util/HashMap;

    return-object v0
.end method

.method public final blacklist getSupportedOpRuntimes()[Lcom/samsung/android/sume/op/OpRuntime;
    .locals 1

    .line 789
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN;->supportedOpRuntimes:[Lcom/samsung/android/sume/op/OpRuntime;

    return-object v0
.end method

.method synthetic blacklist lambda$new$0$com-samsung-android-sume-nn-SumeNN(Ljava/util/concurrent/locks/Condition;)V
    .locals 2
    .param p1, "condition"    # Ljava/util/concurrent/locks/Condition;

    .line 172
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 174
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 177
    nop

    .line 178
    return-void

    .line 176
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/sume/nn/SumeNN;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 177
    throw v0
.end method

.method synthetic blacklist lambda$run$4$com-samsung-android-sume-nn-SumeNN(Landroid/content/ContentValues;)Lcom/samsung/android/sume/Result;
    .locals 4
    .param p1, "data"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 999
    new-instance v0, Lcom/samsung/android/sume/Utils$StrongReference;

    invoke-direct {v0}, Lcom/samsung/android/sume/Utils$StrongReference;-><init>()V

    .line 1000
    .local v0, "backedResult":Lcom/samsung/android/sume/Utils$StrongReference;, "Lcom/samsung/android/sume/Utils$StrongReference<Lcom/samsung/android/sume/Result;>;"
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/ContentValues;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-array v2, v2, [Lcom/samsung/android/sume/MediaBuffer;

    new-instance v3, Lcom/samsung/android/sume/nn/SumeNN$$ExternalSyntheticLambda6;

    invoke-direct {v3, v0}, Lcom/samsung/android/sume/nn/SumeNN$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/sume/Utils$StrongReference;)V

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/sume/nn/SumeNN;->runInternal([Landroid/content/ContentValues;[Lcom/samsung/android/sume/MediaBuffer;Ljava/util/function/Consumer;)Lcom/samsung/android/sume/Result;

    move-result-object v1

    return-object v1
.end method

.method synthetic blacklist lambda$run$6$com-samsung-android-sume-nn-SumeNN(Lcom/samsung/android/sume/MediaBuffer;)Lcom/samsung/android/sume/Result;
    .locals 4
    .param p1, "buffer"    # Lcom/samsung/android/sume/MediaBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1025
    new-instance v0, Lcom/samsung/android/sume/Utils$StrongReference;

    invoke-direct {v0}, Lcom/samsung/android/sume/Utils$StrongReference;-><init>()V

    .line 1026
    .local v0, "backedResult":Lcom/samsung/android/sume/Utils$StrongReference;, "Lcom/samsung/android/sume/Utils$StrongReference<Lcom/samsung/android/sume/Result;>;"
    const/4 v1, 0x0

    new-array v2, v1, [Landroid/content/ContentValues;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/samsung/android/sume/MediaBuffer;

    aput-object p1, v3, v1

    new-instance v1, Lcom/samsung/android/sume/nn/SumeNN$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lcom/samsung/android/sume/nn/SumeNN$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/sume/Utils$StrongReference;)V

    invoke-direct {p0, v2, v3, v1}, Lcom/samsung/android/sume/nn/SumeNN;->runInternal([Landroid/content/ContentValues;[Lcom/samsung/android/sume/MediaBuffer;Ljava/util/function/Consumer;)Lcom/samsung/android/sume/Result;

    move-result-object v1

    return-object v1
.end method

.method synthetic blacklist lambda$run$7$com-samsung-android-sume-nn-SumeNN([Landroid/content/ContentValues;Ljava/util/function/Consumer;)Lcom/samsung/android/sume/Result;
    .locals 1
    .param p1, "data"    # [Landroid/content/ContentValues;
    .param p2, "resultHandler"    # Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1050
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/samsung/android/sume/MediaBuffer;

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/sume/nn/SumeNN;->runInternal([Landroid/content/ContentValues;[Lcom/samsung/android/sume/MediaBuffer;Ljava/util/function/Consumer;)Lcom/samsung/android/sume/Result;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$run$8$com-samsung-android-sume-nn-SumeNN([Lcom/samsung/android/sume/MediaBuffer;Ljava/util/function/Consumer;)Lcom/samsung/android/sume/Result;
    .locals 1
    .param p1, "data"    # [Lcom/samsung/android/sume/MediaBuffer;
    .param p2, "resultHandler"    # Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1064
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/content/ContentValues;

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sume/nn/SumeNN;->runInternal([Landroid/content/ContentValues;[Lcom/samsung/android/sume/MediaBuffer;Ljava/util/function/Consumer;)Lcom/samsung/android/sume/Result;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist release()Ljava/lang/Boolean;
    .locals 8

    .line 825
    sget-object v0, Lcom/samsung/android/sume/nn/SumeNN;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sume/nn/SumeNN;->state:Ljava/util/concurrent/atomic/AtomicReference;

    const-string/jumbo v2, "release"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/sume/SumeLog;->beg(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 827
    iget-object v1, p0, Lcom/samsung/android/sume/nn/SumeNN;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 829
    const/4 v1, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/sume/nn/SumeNN;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/sume/nn/SumeNN$State;->ERROR:Lcom/samsung/android/sume/nn/SumeNN$State;

    const-wide/16 v5, 0x5

    if-eq v3, v4, :cond_2

    .line 831
    sget-object v3, Lcom/samsung/android/sume/nn/SumeNN$State;->IDLE:Lcom/samsung/android/sume/nn/SumeNN$State;

    iget-object v4, p0, Lcom/samsung/android/sume/nn/SumeNN;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sume/nn/SumeNN$State;

    invoke-virtual {v3, v4}, Lcom/samsung/android/sume/nn/SumeNN$State;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-lez v3, :cond_2

    .line 832
    iget-object v3, p0, Lcom/samsung/android/sume/nn/SumeNN;->conditionDepot:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v4, Lcom/samsung/android/sume/nn/SumeNN$State;->IDLE:Lcom/samsung/android/sume/nn/SumeNN$State;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 833
    const-string/jumbo v3, "wait to IDLE..."

    iget-object v4, p0, Lcom/samsung/android/sume/nn/SumeNN;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, v3, v4}, Lcom/samsung/android/sume/SumeLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 834
    iget-object v3, p0, Lcom/samsung/android/sume/nn/SumeNN;->conditionDepot:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v4, Lcom/samsung/android/sume/nn/SumeNN$State;->IDLE:Lcom/samsung/android/sume/nn/SumeNN$State;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/locks/Condition;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v5, v6, v4}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 835
    :cond_0
    new-instance v0, Ljava/lang/InterruptedException;

    const-string/jumbo v3, "time out occur to wait to CONNECTED"

    invoke-direct {v0, v3}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/samsung/android/sume/nn/SumeNN;
    throw v0

    .line 838
    .restart local p0    # "this":Lcom/samsung/android/sume/nn/SumeNN;
    :cond_1
    const-string v3, "already released..."

    iget-object v4, p0, Lcom/samsung/android/sume/nn/SumeNN;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, v3, v4}, Lcom/samsung/android/sume/SumeLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 843
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/sume/nn/SumeNN;->service:Landroid/os/Messenger;

    if-eqz v3, :cond_5

    .line 844
    new-instance v3, Lcom/samsung/android/sume/Request;

    sget-object v4, Lcom/samsung/android/sume/Command;->RELEASE:Lcom/samsung/android/sume/Command;

    invoke-direct {v3, v4}, Lcom/samsung/android/sume/Request;-><init>(Lcom/samsung/android/sume/Command;)V

    iget v4, p0, Lcom/samsung/android/sume/nn/SumeNN;->nnId:I

    .line 845
    invoke-virtual {v3, v4}, Lcom/samsung/android/sume/Request;->setId(I)Lcom/samsung/android/sume/Request;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sume/nn/SumeNN;->service:Landroid/os/Messenger;

    .line 846
    invoke-virtual {v3, v4}, Lcom/samsung/android/sume/Request;->post(Landroid/os/Messenger;)Z

    .line 848
    const-string/jumbo v3, "wait to RELEASED..."

    iget-object v4, p0, Lcom/samsung/android/sume/nn/SumeNN;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, v3, v4}, Lcom/samsung/android/sume/SumeLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 850
    iget-object v3, p0, Lcom/samsung/android/sume/nn/SumeNN;->conditionDepot:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v4, Lcom/samsung/android/sume/Event;->INFO_RUNTIME_RELEASED:Lcom/samsung/android/sume/Event;

    iget-object v7, p0, Lcom/samsung/android/sume/nn/SumeNN;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 851
    iget-object v3, p0, Lcom/samsung/android/sume/nn/SumeNN;->conditionDepot:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v4, Lcom/samsung/android/sume/Event;->INFO_RUNTIME_RELEASED:Lcom/samsung/android/sume/Event;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/locks/Condition;

    .line 852
    .local v3, "condition":Ljava/util/concurrent/locks/Condition;
    if-eqz v3, :cond_4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v5, v6, v4}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    .line 853
    :cond_3
    new-instance v0, Ljava/lang/InterruptedException;

    const-string/jumbo v4, "time out occur to wait to RELEASED"

    invoke-direct {v0, v4}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/samsung/android/sume/nn/SumeNN;
    throw v0

    .line 856
    .restart local p0    # "this":Lcom/samsung/android/sume/nn/SumeNN;
    :cond_4
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/sume/nn/SumeNN;->connection:Landroid/content/ServiceConnection;

    if-eqz v4, :cond_5

    .line 857
    const-string/jumbo v4, "unbind to SNS..."

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/sume/nn/SumeNN;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 859
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN;->state:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v4, Lcom/samsung/android/sume/nn/SumeNN$State;->CONNECTED:Lcom/samsung/android/sume/nn/SumeNN$State;

    sget-object v5, Lcom/samsung/android/sume/nn/SumeNN$State;->LOADED:Lcom/samsung/android/sume/nn/SumeNN$State;

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 866
    .end local v3    # "condition":Ljava/util/concurrent/locks/Condition;
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 862
    :catch_0
    move-exception v0

    .line 863
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 864
    iget-object v3, p0, Lcom/samsung/android/sume/nn/SumeNN;->state:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v4, Lcom/samsung/android/sume/nn/SumeNN$State;->ERROR:Lcom/samsung/android/sume/nn/SumeNN$State;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 866
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_5
    :goto_2
    iput-object v1, p0, Lcom/samsung/android/sume/nn/SumeNN;->service:Landroid/os/Messenger;

    .line 867
    iput-object v1, p0, Lcom/samsung/android/sume/nn/SumeNN;->connection:Landroid/content/ServiceConnection;

    .line 868
    iput-object v1, p0, Lcom/samsung/android/sume/nn/SumeNN;->eventListener:Lcom/samsung/android/sume/nn/SumeNN$OnEventListener;

    .line 870
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 871
    nop

    .line 872
    sget-object v0, Lcom/samsung/android/sume/nn/SumeNN;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sume/nn/SumeNN;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, v2, v1}, Lcom/samsung/android/sume/SumeLog;->end(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 874
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sume/nn/SumeNN$State;->LOADED:Lcom/samsung/android/sume/nn/SumeNN$State;

    if-ne v0, v1, :cond_6

    const/4 v0, 0x1

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 866
    :goto_4
    iput-object v1, p0, Lcom/samsung/android/sume/nn/SumeNN;->service:Landroid/os/Messenger;

    .line 867
    iput-object v1, p0, Lcom/samsung/android/sume/nn/SumeNN;->connection:Landroid/content/ServiceConnection;

    .line 868
    iput-object v1, p0, Lcom/samsung/android/sume/nn/SumeNN;->eventListener:Lcom/samsung/android/sume/nn/SumeNN$OnEventListener;

    .line 870
    iget-object v1, p0, Lcom/samsung/android/sume/nn/SumeNN;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 871
    throw v0
.end method

.method public final blacklist run(Landroid/content/ContentValues;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "data"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentValues;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/samsung/android/sume/Result;",
            ">;"
        }
    .end annotation

    .line 998
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN;->threadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/sume/nn/SumeNN$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/sume/nn/SumeNN$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/sume/nn/SumeNN;Landroid/content/ContentValues;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist run(Lcom/samsung/android/sume/MediaBuffer;)Ljava/util/concurrent/Future;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sume/MediaBuffer;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/samsung/android/sume/Result;",
            ">;"
        }
    .end annotation

    .line 1024
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN;->threadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/sume/nn/SumeNN$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/sume/nn/SumeNN$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/sume/nn/SumeNN;Lcom/samsung/android/sume/MediaBuffer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist run([Landroid/content/ContentValues;Ljava/util/function/Consumer;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "data"    # [Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "data",
            "resultHandler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/ContentValues;",
            "Ljava/util/function/Consumer<",
            "Lcom/samsung/android/sume/Result;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/samsung/android/sume/Result;",
            ">;"
        }
    .end annotation

    .line 1050
    .local p2, "resultHandler":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/samsung/android/sume/Result;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN;->threadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/sume/nn/SumeNN$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/sume/nn/SumeNN$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/sume/nn/SumeNN;[Landroid/content/ContentValues;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist run([Lcom/samsung/android/sume/MediaBuffer;Ljava/util/function/Consumer;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "data"    # [Lcom/samsung/android/sume/MediaBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "data",
            "resultHandler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/samsung/android/sume/MediaBuffer;",
            "Ljava/util/function/Consumer<",
            "Lcom/samsung/android/sume/Result;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/samsung/android/sume/Result;",
            ">;"
        }
    .end annotation

    .line 1064
    .local p2, "resultHandler":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/samsung/android/sume/Result;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/nn/SumeNN;->threadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/sume/nn/SumeNN$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/sume/nn/SumeNN$$ExternalSyntheticLambda10;-><init>(Lcom/samsung/android/sume/nn/SumeNN;[Lcom/samsung/android/sume/MediaBuffer;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
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

    .line 797
    iput-object p1, p0, Lcom/samsung/android/sume/nn/SumeNN;->supportedOpRuntimes:[Lcom/samsung/android/sume/op/OpRuntime;

    .line 798
    return-void
.end method
