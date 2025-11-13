.class public final Lcom/android/keyguard/emm/EngineeringModeManagerWrapper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final callbackFlow:Lkotlinx/coroutines/flow/Flow;

.field public final context:Landroid/content/Context;

.field public final emm$delegate:Lkotlin/Lazy;

.field public isCaptureEnabled:Z

.field public final keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/statusbar/policy/KeyguardStateController;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper;->context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    new-instance p1, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper$emm$2;

    invoke-direct {p1, p0}, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper$emm$2;-><init>(Lcom/android/keyguard/emm/EngineeringModeManagerWrapper;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper;->emm$delegate:Lkotlin/Lazy;

    sget-object p1, Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;->INSTANCE:Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;

    new-instance p3, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper$callbackFlow$1;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper$callbackFlow$1;-><init>(Lcom/android/keyguard/emm/EngineeringModeManagerWrapper;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p3}, Lcom/android/systemui/utils/coroutines/flow/FlowConflatedKt;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper;->callbackFlow:Lkotlinx/coroutines/flow/Flow;

    sget-boolean p1, Lcom/android/systemui/LsRune;->KEYGUARD_EM_TOKEN_CAPTURE_WINDOW:Z

    if-eqz p1, :cond_0

    new-instance p1, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper$1;

    invoke-direct {p1, p0, v0}, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper$1;-><init>(Lcom/android/keyguard/emm/EngineeringModeManagerWrapper;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p2, v0, v0, p1, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method
