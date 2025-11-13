.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/coordinator/Coordinator;


# annotations
.annotation runtime Lcom/android/systemui/statusbar/notification/collection/coordinator/dagger/CoordinatorScope;
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final filter:Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator$filter$1;

.field private isLockscreenHostedDream:Z

.field private isOnKeyguard:Z

.field private final keyguardRepository:Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;

.field private final scope:Lkotlinx/coroutines/CoroutineScope;

.field private final statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field private final statusBarStateListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator$statusBarStateListener$1;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator;->scope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator;->keyguardRepository:Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;

    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator$filter$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator$filter$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator;->filter:Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator$filter$1;

    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator$statusBarStateListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator$statusBarStateListener$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator;->statusBarStateListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator$statusBarStateListener$1;

    return-void
.end method

.method public static final synthetic access$attachFilterOnDreamingStateChange(Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator;->attachFilterOnDreamingStateChange(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isLockscreenHostedDream$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator;->isLockscreenHostedDream:Z

    return p0
.end method

.method public static final synthetic access$isOnKeyguard$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator;->isOnKeyguard:Z

    return p0
.end method

.method public static final synthetic access$recordDreamingState(Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator;->recordDreamingState(Z)V

    return-void
.end method

.method public static final synthetic access$recordStatusBarState(Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator;->recordStatusBarState(I)V

    return-void
.end method

.method private final attachFilterOnDreamingStateChange(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator$attachFilterOnDreamingStateChange$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator$attachFilterOnDreamingStateChange$1;

    iget v1, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator$attachFilterOnDreamingStateChange$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator$attachFilterOnDreamingStateChange$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator$attachFilterOnDreamingStateChange$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator$attachFilterOnDreamingStateChange$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator$attachFilterOnDreamingStateChange$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator$attachFilterOnDreamingStateChange$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v3, :cond_1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator;->keyguardRepository:Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;

    check-cast p1, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;

    iget-object p1, p1, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->isActiveDreamLockscreenHosted:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v2, Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator$attachFilterOnDreamingStateChange$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator$attachFilterOnDreamingStateChange$2;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator;)V

    iput v3, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator$attachFilterOnDreamingStateChange$1;->label:I

    iget-object p0, p1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p0, v2, v0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method private final recordDreamingState(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator;->isLockscreenHostedDream:Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator;->filter:Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator$filter$1;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator$filter$1;->isFiltering()Z

    move-result v0

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator$filter$1;->access$getThis$0$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator$filter$1;)Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator;->access$isLockscreenHostedDream$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator$filter$1;->access$getThis$0$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator$filter$1;)Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator;->access$isOnKeyguard$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator$filter$1;->setFiltering(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator$filter$1;->isFiltering()Z

    move-result v1

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "recordLockscreenHostedDreamState: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable;->invalidateList(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private final recordStatusBarState(I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator;->isOnKeyguard:Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator;->filter:Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator$filter$1;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator$filter$1;->isFiltering()Z

    move-result v2

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator$filter$1;->access$getThis$0$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator$filter$1;)Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator;->access$isLockscreenHostedDream$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator$filter$1;->access$getThis$0$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator$filter$1;)Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator;->access$isOnKeyguard$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator$filter$1;->setFiltering(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator$filter$1;->isFiltering()Z

    move-result v0

    if-eq v2, v0, :cond_2

    invoke-static {p1}, Lcom/android/systemui/statusbar/StatusBarState;->toString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "recordStatusBarState: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable;->invalidateList(Ljava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public attach(Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator;->filter:Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator$filter$1;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addPreGroupFilter(Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator;->statusBarStateListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator$statusBarStateListener$1;

    check-cast p1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator$attach$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator$attach$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x3

    invoke-static {p1, v1, v1, v0, v2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast p1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget p1, p1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/DreamCoordinator;->recordStatusBarState(I)V

    return-void
.end method
