.class public final Lcom/samsung/android/sesl/transparentvideo/renderer/GLCoroutineDispatcher;
.super Lkotlinx/coroutines/CoroutineDispatcher;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/samsung/android/sesl/transparentvideo/renderer/GLCoroutineDispatcher$Companion;

.field public static final instance:Lcom/samsung/android/sesl/transparentvideo/renderer/GLCoroutineDispatcher;


# instance fields
.field public final glHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/sesl/transparentvideo/renderer/GLCoroutineDispatcher$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/sesl/transparentvideo/renderer/GLCoroutineDispatcher$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/sesl/transparentvideo/renderer/GLCoroutineDispatcher;->Companion:Lcom/samsung/android/sesl/transparentvideo/renderer/GLCoroutineDispatcher$Companion;

    new-instance v0, Lcom/samsung/android/sesl/transparentvideo/renderer/GLCoroutineDispatcher;

    invoke-direct {v0}, Lcom/samsung/android/sesl/transparentvideo/renderer/GLCoroutineDispatcher;-><init>()V

    sput-object v0, Lcom/samsung/android/sesl/transparentvideo/renderer/GLCoroutineDispatcher;->instance:Lcom/samsung/android/sesl/transparentvideo/renderer/GLCoroutineDispatcher;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lkotlinx/coroutines/CoroutineDispatcher;-><init>()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "GLCoroutineThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/GLCoroutineDispatcher;->glHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/GLCoroutineDispatcher;->glHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
