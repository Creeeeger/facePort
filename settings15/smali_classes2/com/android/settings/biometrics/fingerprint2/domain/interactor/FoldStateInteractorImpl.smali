.class public final Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FoldStateInteractorImpl;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final isFolded:Lkotlinx/coroutines/flow/CallbackFlowBuilder;

.field public final screenSizeFoldProvider:Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;

    invoke-direct {v0, p1}, Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FoldStateInteractorImpl;->screenSizeFoldProvider:Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;

    new-instance v0, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FoldStateInteractorImpl$isFolded$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FoldStateInteractorImpl$isFolded$1;-><init>(Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FoldStateInteractorImpl;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    return-void
.end method
