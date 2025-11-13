.class public final Lcom/android/systemui/statusbar/data/repository/KeyguardStatusBarRepositoryImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/data/repository/KeyguardStatusBarRepository;


# instance fields
.field public final isKeyguardUserSwitcherConfigEnabled:Lcom/android/systemui/statusbar/data/repository/KeyguardStatusBarRepositoryImpl$special$$inlined$map$2;

.field public final isKeyguardUserSwitcherEnabled:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/user/data/repository/UserSwitcherRepository;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;->INSTANCE:Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;

    new-instance v1, Lcom/android/systemui/statusbar/data/repository/KeyguardStatusBarRepositoryImpl$relevantConfigChanges$1;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Lcom/android/systemui/statusbar/data/repository/KeyguardStatusBarRepositoryImpl$relevantConfigChanges$1;-><init>(Lcom/android/systemui/statusbar/policy/ConfigurationController;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/systemui/utils/coroutines/flow/FlowConflatedKt;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    check-cast p3, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl;

    new-instance v0, Lcom/android/systemui/statusbar/data/repository/KeyguardStatusBarRepositoryImpl$special$$inlined$map$1;

    iget-object p3, p3, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl;->isEnabled:Lkotlinx/coroutines/flow/Flow;

    invoke-direct {v0, p3}, Lcom/android/systemui/statusbar/data/repository/KeyguardStatusBarRepositoryImpl$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    filled-new-array {v0, p2}, [Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    invoke-static {p2}, Lkotlinx/coroutines/flow/FlowKt;->merge([Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge;

    move-result-object p2

    new-instance v0, Lcom/android/systemui/statusbar/data/repository/KeyguardStatusBarRepositoryImpl$special$$inlined$map$2;

    invoke-direct {v0, p2, p1}, Lcom/android/systemui/statusbar/data/repository/KeyguardStatusBarRepositoryImpl$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;Landroid/content/Context;)V

    new-instance p1, Lcom/android/systemui/statusbar/data/repository/KeyguardStatusBarRepositoryImpl$isKeyguardUserSwitcherEnabled$1;

    invoke-direct {p1, v2}, Lcom/android/systemui/statusbar/data/repository/KeyguardStatusBarRepositoryImpl$isKeyguardUserSwitcherEnabled$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance p2, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {p2, p3, v0, p1}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/data/repository/KeyguardStatusBarRepositoryImpl;->isKeyguardUserSwitcherEnabled:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    return-void
.end method
