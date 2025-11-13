.class public final Lcom/android/systemui/statusbar/policy/domain/interactor/ZenModeInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/data/repository/ZenModeRepository;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lcom/android/systemui/statusbar/policy/data/repository/ZenModeRepositoryImpl;

    new-instance p0, Lcom/android/systemui/statusbar/policy/domain/interactor/ZenModeInteractor$special$$inlined$map$1;

    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/data/repository/ZenModeRepositoryImpl;->zenMode:Lkotlinx/coroutines/flow/Flow;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/domain/interactor/ZenModeInteractor$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {p0}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/statusbar/policy/domain/interactor/ZenModeInteractor$areNotificationsHiddenInShade$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/domain/interactor/ZenModeInteractor$areNotificationsHiddenInShade$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/data/repository/ZenModeRepositoryImpl;->consolidatedNotificationPolicy:Lkotlinx/coroutines/flow/Flow;

    invoke-direct {v1, p0, p1, v0}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    return-void
.end method
