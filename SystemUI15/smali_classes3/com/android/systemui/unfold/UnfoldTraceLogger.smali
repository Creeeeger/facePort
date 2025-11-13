.class public final Lcom/android/systemui/unfold/UnfoldTraceLogger;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/CoreStartable;


# instance fields
.field public final bgScope:Lkotlinx/coroutines/internal/ContextScope;

.field public final context:Landroid/content/Context;

.field public final deviceStateRepository:Lcom/android/systemui/unfold/system/DeviceStateRepository;

.field public final foldStateRepository:Lcom/android/systemui/unfold/data/repository/FoldStateRepository;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/unfold/data/repository/FoldStateRepository;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lcom/android/systemui/unfold/system/DeviceStateRepository;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/unfold/UnfoldTraceLogger;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/unfold/UnfoldTraceLogger;->foldStateRepository:Lcom/android/systemui/unfold/data/repository/FoldStateRepository;

    iput-object p5, p0, Lcom/android/systemui/unfold/UnfoldTraceLogger;->deviceStateRepository:Lcom/android/systemui/unfold/system/DeviceStateRepository;

    new-instance p1, Lkotlinx/coroutines/internal/ContextScope;

    invoke-interface {p3}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    invoke-interface {p2, p4}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    invoke-direct {p1, p2}, Lkotlinx/coroutines/internal/ContextScope;-><init>(Lkotlin/coroutines/CoroutineContext;)V

    iput-object p1, p0, Lcom/android/systemui/unfold/UnfoldTraceLogger;->bgScope:Lkotlinx/coroutines/internal/ContextScope;

    return-void
.end method


# virtual methods
.method public final start()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/unfold/UnfoldTraceLogger;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070103

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, v1

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/android/systemui/unfold/UnfoldTraceLogger$start$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/unfold/UnfoldTraceLogger$start$1;-><init>(Lcom/android/systemui/unfold/UnfoldTraceLogger;Lkotlin/coroutines/Continuation;)V

    iget-object v2, p0, Lcom/android/systemui/unfold/UnfoldTraceLogger;->bgScope:Lkotlinx/coroutines/internal/ContextScope;

    const/4 v3, 0x3

    invoke-static {v2, v1, v1, v0, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance v0, Lcom/android/systemui/unfold/UnfoldTraceLogger$start$2;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/unfold/UnfoldTraceLogger$start$2;-><init>(Lcom/android/systemui/unfold/UnfoldTraceLogger;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2, v1, v1, v0, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance v0, Lcom/android/systemui/unfold/UnfoldTraceLogger$start$3;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/unfold/UnfoldTraceLogger$start$3;-><init>(Lcom/android/systemui/unfold/UnfoldTraceLogger;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2, v1, v1, v0, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method
