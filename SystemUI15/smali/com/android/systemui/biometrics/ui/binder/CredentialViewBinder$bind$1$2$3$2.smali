.class public final Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$3$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $host:Lcom/android/systemui/biometrics/ui/CredentialView$Host;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/ui/CredentialView$Host;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$3$2;->$host:Lcom/android/systemui/biometrics/ui/CredentialView$Host;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/biometrics/ui/viewmodel/RemainingAttempts;

    iget-object p2, p1, Lcom/android/systemui/biometrics/ui/viewmodel/RemainingAttempts;->remaining:Ljava/lang/Integer;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$3$2;->$host:Lcom/android/systemui/biometrics/ui/CredentialView$Host;

    check-cast p0, Lcom/android/systemui/biometrics/AuthContainerView;

    iget-object p1, p1, Lcom/android/systemui/biometrics/ui/viewmodel/RemainingAttempts;->message:Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/biometrics/AuthContainerView;->onCredentialAttemptsRemaining(ILjava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
