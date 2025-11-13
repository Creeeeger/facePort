.class public final Lcom/android/systemui/shade/domain/interactor/SecNotificationShadeWindowStateInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final repository:Lcom/android/systemui/shade/data/repository/SecNotificationShadeWindowStateRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/shade/domain/interactor/SecNotificationShadeWindowStateInteractor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/shade/domain/interactor/SecNotificationShadeWindowStateInteractor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/shade/data/repository/SecNotificationShadeWindowStateRepository;

    invoke-direct {v0}, Lcom/android/systemui/shade/data/repository/SecNotificationShadeWindowStateRepository;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shade/domain/interactor/SecNotificationShadeWindowStateInteractor;->repository:Lcom/android/systemui/shade/data/repository/SecNotificationShadeWindowStateRepository;

    new-instance v1, Lcom/android/systemui/shade/domain/interactor/SecNotificationShadeWindowStateInteractor$1$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/systemui/shade/domain/interactor/SecNotificationShadeWindowStateInteractor$1$1;-><init>(Lkotlin/coroutines/Continuation;)V

    iget-object v3, v0, Lcom/android/systemui/shade/data/repository/SecNotificationShadeWindowStateRepository;->shadeOrQsExpanded:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v4, v0, Lcom/android/systemui/shade/data/repository/SecNotificationShadeWindowStateRepository;->statusBarState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v0, v0, Lcom/android/systemui/shade/data/repository/SecNotificationShadeWindowStateRepository;->visibility:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {v3, v4, v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function4;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/shade/domain/interactor/SecNotificationShadeWindowStateInteractor$2$1;

    invoke-direct {v1, v0, p0, v2}, Lcom/android/systemui/shade/domain/interactor/SecNotificationShadeWindowStateInteractor$2$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/shade/domain/interactor/SecNotificationShadeWindowStateInteractor;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method
