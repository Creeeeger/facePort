.class public final Lcom/android/systemui/display/ui/viewmodel/ConnectingDisplayViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/CoreStartable;


# instance fields
.field public final connectedDisplayInteractor:Lcom/android/systemui/display/domain/interactor/ConnectedDisplayInteractor;

.field public final scope:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/display/domain/interactor/ConnectedDisplayInteractor;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/display/ui/view/MirroringConfirmationDialogDelegate$Factory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/display/ui/viewmodel/ConnectingDisplayViewModel;->connectedDisplayInteractor:Lcom/android/systemui/display/domain/interactor/ConnectedDisplayInteractor;

    iput-object p3, p0, Lcom/android/systemui/display/ui/viewmodel/ConnectingDisplayViewModel;->scope:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method


# virtual methods
.method public final start()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/display/ui/viewmodel/ConnectingDisplayViewModel;->connectedDisplayInteractor:Lcom/android/systemui/display/domain/interactor/ConnectedDisplayInteractor;

    check-cast v0, Lcom/android/systemui/display/domain/interactor/ConnectedDisplayInteractorImpl;

    iget-object v1, v0, Lcom/android/systemui/display/domain/interactor/ConnectedDisplayInteractorImpl;->pendingDisplay:Lcom/android/systemui/display/domain/interactor/ConnectedDisplayInteractorImpl$special$$inlined$map$3;

    sget-object v2, Lcom/android/server/policy/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/policy/feature/flags/FeatureFlagsImpl;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/android/systemui/display/domain/interactor/ConnectedDisplayInteractorImpl;->concurrentDisplaysInProgress:Lkotlinx/coroutines/flow/Flow;

    sget-object v2, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    const/16 v2, 0xc8

    sget-object v3, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v2, v3}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lkotlinx/coroutines/DelayKt;->toDelayMillis-LRDsOJo(J)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lkotlinx/coroutines/flow/FlowKt;->debounce(Lkotlinx/coroutines/flow/Flow;J)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/display/ui/viewmodel/ConnectingDisplayViewModel$start$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/display/ui/viewmodel/ConnectingDisplayViewModel$start$1;-><init>(Lcom/android/systemui/display/ui/viewmodel/ConnectingDisplayViewModel;Lkotlin/coroutines/Continuation;)V

    new-instance v3, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {v3, v1, v0, v2}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    iget-object p0, p0, Lcom/android/systemui/display/ui/viewmodel/ConnectingDisplayViewModel;->scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v3, p0}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;

    return-void
.end method
