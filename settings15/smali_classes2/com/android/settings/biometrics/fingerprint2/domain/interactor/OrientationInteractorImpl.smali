.class public final Lcom/android/settings/biometrics/fingerprint2/domain/interactor/OrientationInteractorImpl;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final context:Landroid/content/Context;

.field public final orientation:Lkotlinx/coroutines/flow/CallbackFlowBuilder;

.field public final rotation:Lkotlinx/coroutines/flow/SafeFlow;

.field public final rotationFromDefault:Lcom/android/settings/biometrics/fingerprint2/domain/interactor/OrientationInteractorImpl$special$$inlined$map$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/OrientationInteractorImpl;->context:Landroid/content/Context;

    new-instance p1, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/OrientationInteractorImpl$orientation$1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/OrientationInteractorImpl$orientation$1;-><init>(Lcom/android/settings/biometrics/fingerprint2/domain/interactor/OrientationInteractorImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    move-result-object p1

    new-instance v1, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/OrientationInteractorImpl$special$$inlined$transform$1;

    invoke-direct {v1, p1, v0, p0}, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/OrientationInteractorImpl$special$$inlined$transform$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;Lcom/android/settings/biometrics/fingerprint2/domain/interactor/OrientationInteractorImpl;)V

    new-instance p1, Lkotlinx/coroutines/flow/SafeFlow;

    invoke-direct {p1, v1}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(Lkotlin/jvm/functions/Function2;)V

    new-instance v0, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/OrientationInteractorImpl$special$$inlined$map$1;

    invoke-direct {v0, p1, p0}, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/OrientationInteractorImpl$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/SafeFlow;Lcom/android/settings/biometrics/fingerprint2/domain/interactor/OrientationInteractorImpl;)V

    return-void
.end method
