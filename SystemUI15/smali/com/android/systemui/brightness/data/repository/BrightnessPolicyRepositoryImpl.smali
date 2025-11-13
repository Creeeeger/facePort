.class public final Lcom/android/systemui/brightness/data/repository/BrightnessPolicyRepositoryImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/brightness/data/repository/BrightnessPolicyRepository;


# instance fields
.field public final applicationContext:Landroid/content/Context;

.field public final restrictionPolicy:Lkotlinx/coroutines/flow/Flow;

.field public final userRestrictionChecker:Lcom/android/systemui/utils/UserRestrictionChecker;


# direct methods
.method public constructor <init>(Lcom/android/systemui/user/data/repository/UserRepository;Lcom/android/systemui/utils/UserRestrictionChecker;Landroid/content/Context;Lkotlinx/coroutines/CoroutineDispatcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/brightness/data/repository/BrightnessPolicyRepositoryImpl;->userRestrictionChecker:Lcom/android/systemui/utils/UserRestrictionChecker;

    iput-object p3, p0, Lcom/android/systemui/brightness/data/repository/BrightnessPolicyRepositoryImpl;->applicationContext:Landroid/content/Context;

    check-cast p1, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    new-instance p2, Lcom/android/systemui/brightness/data/repository/BrightnessPolicyRepositoryImpl$restrictionPolicy$1;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/brightness/data/repository/BrightnessPolicyRepositoryImpl$restrictionPolicy$1;-><init>(Lcom/android/systemui/brightness/data/repository/BrightnessPolicyRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    iget-object p1, p1, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->selectedUserInfo:Lcom/android/systemui/user/data/repository/UserRepositoryImpl$special$$inlined$map$2;

    invoke-static {p1, p2}, Lkotlinx/coroutines/flow/FlowKt;->mapLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p1

    invoke-static {p1, p4}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/brightness/data/repository/BrightnessPolicyRepositoryImpl;->restrictionPolicy:Lkotlinx/coroutines/flow/Flow;

    return-void
.end method
