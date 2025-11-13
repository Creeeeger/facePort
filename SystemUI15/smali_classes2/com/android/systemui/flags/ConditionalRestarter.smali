.class public final Lcom/android/systemui/flags/ConditionalRestarter;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/flags/Restarter;


# instance fields
.field public final applicationScope:Lkotlinx/coroutines/CoroutineScope;

.field public final backgroundDispatcher:Lkotlin/coroutines/CoroutineContext;

.field public final conditions:Ljava/util/Set;

.field public pendingReason:Ljava/lang/String;

.field public final restartDelaySec:J

.field public final systemExitRestarter:Lcom/android/systemui/flags/SystemExitRestarter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/flags/ConditionalRestarter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/flags/ConditionalRestarter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/flags/SystemExitRestarter;Ljava/util/Set;JLkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/flags/SystemExitRestarter;",
            "Ljava/util/Set<",
            "Lcom/android/systemui/flags/ConditionalRestarter$Condition;",
            ">;J",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/CoroutineContext;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/flags/ConditionalRestarter;->systemExitRestarter:Lcom/android/systemui/flags/SystemExitRestarter;

    iput-object p2, p0, Lcom/android/systemui/flags/ConditionalRestarter;->conditions:Ljava/util/Set;

    iput-wide p3, p0, Lcom/android/systemui/flags/ConditionalRestarter;->restartDelaySec:J

    iput-object p5, p0, Lcom/android/systemui/flags/ConditionalRestarter;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p6, p0, Lcom/android/systemui/flags/ConditionalRestarter;->backgroundDispatcher:Lkotlin/coroutines/CoroutineContext;

    const-string p1, ""

    iput-object p1, p0, Lcom/android/systemui/flags/ConditionalRestarter;->pendingReason:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final restartSystemUI(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SysUIFlags"

    const-string v1, "SystemUI Restart requested. Restarting when idle."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/android/systemui/flags/ConditionalRestarter;->pendingReason:Ljava/lang/String;

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/flags/ConditionalRestarter;->pendingReason:Ljava/lang/String;

    new-instance p1, Lcom/android/systemui/flags/ConditionalRestarter$scheduleRestart$1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/flags/ConditionalRestarter$scheduleRestart$1;-><init>(Lcom/android/systemui/flags/ConditionalRestarter;Lkotlin/coroutines/Continuation;)V

    iget-object v1, p0, Lcom/android/systemui/flags/ConditionalRestarter;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v2, 0x2

    iget-object p0, p0, Lcom/android/systemui/flags/ConditionalRestarter;->backgroundDispatcher:Lkotlin/coroutines/CoroutineContext;

    invoke-static {v1, p0, v0, p1, v2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method
