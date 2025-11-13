.class public final Lcom/android/systemui/statusbar/policy/data/repository/ZenModeRepositoryImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/data/repository/ZenModeRepository;


# instance fields
.field public final consolidatedNotificationPolicy:Lkotlinx/coroutines/flow/Flow;

.field public final zenMode:Lkotlinx/coroutines/flow/Flow;

.field public final zenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/ZenModeController;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/data/repository/ZenModeRepositoryImpl;->zenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    sget-object p1, Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;->INSTANCE:Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;

    new-instance v0, Lcom/android/systemui/statusbar/policy/data/repository/ZenModeRepositoryImpl$zenMode$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/data/repository/ZenModeRepositoryImpl$zenMode$1;-><init>(Lcom/android/systemui/statusbar/policy/data/repository/ZenModeRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/systemui/utils/coroutines/flow/FlowConflatedKt;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/data/repository/ZenModeRepositoryImpl;->zenMode:Lkotlinx/coroutines/flow/Flow;

    new-instance v0, Lcom/android/systemui/statusbar/policy/data/repository/ZenModeRepositoryImpl$consolidatedNotificationPolicy$1;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/data/repository/ZenModeRepositoryImpl$consolidatedNotificationPolicy$1;-><init>(Lcom/android/systemui/statusbar/policy/data/repository/ZenModeRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/systemui/utils/coroutines/flow/FlowConflatedKt;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/data/repository/ZenModeRepositoryImpl;->consolidatedNotificationPolicy:Lkotlinx/coroutines/flow/Flow;

    return-void
.end method
