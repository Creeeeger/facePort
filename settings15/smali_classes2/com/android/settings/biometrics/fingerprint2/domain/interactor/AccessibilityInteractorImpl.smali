.class public final Lcom/android/settings/biometrics/fingerprint2/domain/interactor/AccessibilityInteractorImpl;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final isAccessibilityEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>(Landroid/view/accessibility/AccessibilityManager;Lkotlinx/coroutines/internal/ContextScope;)V
    .locals 2

    const-string v0, "applicationScope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/AccessibilityInteractorImpl$isAccessibilityEnabled$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/AccessibilityInteractorImpl$isAccessibilityEnabled$1;-><init>(Landroid/view/accessibility/AccessibilityManager;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    move-result-object p1

    invoke-static {}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default()Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, p2, v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/AccessibilityInteractorImpl;->isAccessibilityEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method
