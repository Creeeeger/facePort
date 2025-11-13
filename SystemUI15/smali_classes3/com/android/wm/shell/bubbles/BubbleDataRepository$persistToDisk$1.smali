.class final Lcom/android/wm/shell/bubbles/BubbleDataRepository$persistToDisk$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic $entitiesByUser:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/android/wm/shell/bubbles/storage/BubbleEntity;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $prev:Lkotlinx/coroutines/Job;

.field label:I

.field final synthetic this$0:Lcom/android/wm/shell/bubbles/BubbleDataRepository;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/Job;Lcom/android/wm/shell/bubbles/BubbleDataRepository;Landroid/util/SparseArray;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/Job;",
            "Lcom/android/wm/shell/bubbles/BubbleDataRepository;",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/android/wm/shell/bubbles/storage/BubbleEntity;",
            ">;>;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleDataRepository$persistToDisk$1;->$prev:Lkotlinx/coroutines/Job;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleDataRepository$persistToDisk$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleDataRepository;

    iput-object p3, p0, Lcom/android/wm/shell/bubbles/BubbleDataRepository$persistToDisk$1;->$entitiesByUser:Landroid/util/SparseArray;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/android/wm/shell/bubbles/BubbleDataRepository$persistToDisk$1;

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleDataRepository$persistToDisk$1;->$prev:Lkotlinx/coroutines/Job;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleDataRepository$persistToDisk$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleDataRepository;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleDataRepository$persistToDisk$1;->$entitiesByUser:Landroid/util/SparseArray;

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/android/wm/shell/bubbles/BubbleDataRepository$persistToDisk$1;-><init>(Lkotlinx/coroutines/Job;Lcom/android/wm/shell/bubbles/BubbleDataRepository;Landroid/util/SparseArray;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleDataRepository$persistToDisk$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/bubbles/BubbleDataRepository$persistToDisk$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleDataRepository$persistToDisk$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleDataRepository$persistToDisk$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleDataRepository$persistToDisk$1;->$prev:Lkotlinx/coroutines/Job;

    if-eqz p1, :cond_3

    iput v3, p0, Lcom/android/wm/shell/bubbles/BubbleDataRepository$persistToDisk$1;->label:I

    invoke-static {p1, p0}, Lkotlinx/coroutines/JobKt;->cancelAndJoin(Lkotlinx/coroutines/Job;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    iput v2, p0, Lcom/android/wm/shell/bubbles/BubbleDataRepository$persistToDisk$1;->label:I

    invoke-static {p0}, Lkotlinx/coroutines/YieldKt;->yield(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleDataRepository$persistToDisk$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleDataRepository;

    iget-object p1, p1, Lcom/android/wm/shell/bubbles/BubbleDataRepository;->persistentRepository:Lcom/android/wm/shell/bubbles/storage/BubblePersistentRepository;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleDataRepository$persistToDisk$1;->$entitiesByUser:Landroid/util/SparseArray;

    iget-object v0, p1, Lcom/android/wm/shell/bubbles/storage/BubblePersistentRepository;->bubbleFile:Landroid/util/AtomicFile;

    monitor-enter v0

    :try_start_0
    iget-object v1, p1, Lcom/android/wm/shell/bubbles/storage/BubblePersistentRepository;->bubbleFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v1, p0}, Lcom/android/wm/shell/bubbles/storage/BubbleXmlHelperKt;->writeXml(Ljava/io/OutputStream;Landroid/util/SparseArray;)V

    iget-object p0, p1, Lcom/android/wm/shell/bubbles/storage/BubblePersistentRepository;->bubbleFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    :try_start_2
    const-string v2, "BubblePersistentRepository"

    const-string v3, "Failed to save bubble file, restoring backup"

    invoke-static {v2, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p0, p1, Lcom/android/wm/shell/bubbles/storage/BubblePersistentRepository;->bubbleFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    goto :goto_2

    :catch_1
    move-exception p0

    :try_start_3
    const-string p1, "BubblePersistentRepository"

    const-string v1, "Failed to save bubble file"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :goto_3
    monitor-exit v0

    throw p0
.end method
