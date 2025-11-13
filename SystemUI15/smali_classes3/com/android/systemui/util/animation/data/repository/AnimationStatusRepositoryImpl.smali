.class public final Lcom/android/systemui/util/animation/data/repository/AnimationStatusRepositoryImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/util/animation/data/repository/AnimationStatusRepository;


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field private final backgroundHandler:Landroid/os/Handler;

.field private final resolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/os/Handler;Lkotlinx/coroutines/CoroutineDispatcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/animation/data/repository/AnimationStatusRepositoryImpl;->resolver:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/android/systemui/util/animation/data/repository/AnimationStatusRepositoryImpl;->backgroundHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/systemui/util/animation/data/repository/AnimationStatusRepositoryImpl;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    return-void
.end method

.method public static final synthetic access$getBackgroundHandler$p(Lcom/android/systemui/util/animation/data/repository/AnimationStatusRepositoryImpl;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/animation/data/repository/AnimationStatusRepositoryImpl;->backgroundHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic access$getResolver$p(Lcom/android/systemui/util/animation/data/repository/AnimationStatusRepositoryImpl;)Landroid/content/ContentResolver;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/animation/data/repository/AnimationStatusRepositoryImpl;->resolver:Landroid/content/ContentResolver;

    return-object p0
.end method


# virtual methods
.method public areAnimationsEnabled()Lkotlinx/coroutines/flow/Flow;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow;"
        }
    .end annotation

    sget-object v0, Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;->INSTANCE:Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;

    new-instance v1, Lcom/android/systemui/util/animation/data/repository/AnimationStatusRepositoryImpl$areAnimationsEnabled$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/util/animation/data/repository/AnimationStatusRepositoryImpl$areAnimationsEnabled$1;-><init>(Lcom/android/systemui/util/animation/data/repository/AnimationStatusRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/systemui/utils/coroutines/flow/FlowConflatedKt;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/util/animation/data/repository/AnimationStatusRepositoryImpl;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {v0, p0}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method
