.class public final Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageAuditLogger;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/CoreStartable;


# instance fields
.field public final repository:Lcom/android/systemui/bouncer/data/repository/BouncerMessageRepository;

.field public final scope:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/bouncer/data/repository/BouncerMessageRepository;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageAuditLogger;->scope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageAuditLogger;->repository:Lcom/android/systemui/bouncer/data/repository/BouncerMessageRepository;

    return-void
.end method


# virtual methods
.method public final start()V
    .locals 3

    new-instance v0, Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageAuditLogger$start$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageAuditLogger$start$1;-><init>(Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageAuditLogger;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x3

    iget-object p0, p0, Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageAuditLogger;->scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v1, v1, v0, v2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method
