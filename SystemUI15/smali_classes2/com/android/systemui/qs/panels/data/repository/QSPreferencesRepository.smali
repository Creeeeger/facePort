.class public final Lcom/android/systemui/qs/panels/data/repository/QSPreferencesRepository;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final showLabels:Lkotlinx/coroutines/flow/Flow;

.field public final userFileManager:Lcom/android/systemui/settings/UserFileManager;

.field public final userRepository:Lcom/android/systemui/user/data/repository/UserRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/panels/data/repository/QSPreferencesRepository$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/panels/data/repository/QSPreferencesRepository$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/settings/UserFileManager;Lcom/android/systemui/user/data/repository/UserRepository;Lkotlinx/coroutines/CoroutineDispatcher;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/panels/data/repository/QSPreferencesRepository;->userFileManager:Lcom/android/systemui/settings/UserFileManager;

    check-cast p2, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    new-instance p1, Lcom/android/systemui/qs/panels/data/repository/QSPreferencesRepository$special$$inlined$flatMapLatest$1;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p0}, Lcom/android/systemui/qs/panels/data/repository/QSPreferencesRepository$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/qs/panels/data/repository/QSPreferencesRepository;)V

    iget-object p2, p2, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->selectedUserInfo:Lcom/android/systemui/user/data/repository/UserRepositoryImpl$special$$inlined$map$2;

    invoke-static {p2, p1}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p1

    invoke-static {p1, p3}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/panels/data/repository/QSPreferencesRepository;->showLabels:Lkotlinx/coroutines/flow/Flow;

    return-void
.end method
