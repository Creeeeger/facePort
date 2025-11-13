.class public final Lcom/android/settings/biometrics/fingerprint2/debug/domain/interactor/DebugTouchEventInteractorImpl;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final touchEvent:Lkotlinx/coroutines/flow/SafeFlow;


# direct methods
.method public constructor <init>(Lcom/android/settings/biometrics/fingerprint2/data/repository/SimulatedTouchEventsRepository;)V
    .locals 1

    const-string v0, "udfpsSimulatedTouchEventsRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lcom/android/settings/biometrics/fingerprint2/debug/data/repository/UdfpsEnrollDebugRepositoryImpl;

    iget-object p0, p1, Lcom/android/settings/biometrics/fingerprint2/debug/data/repository/UdfpsEnrollDebugRepositoryImpl;->touchExplorationDebug:Lkotlinx/coroutines/flow/SafeFlow;

    return-void
.end method
