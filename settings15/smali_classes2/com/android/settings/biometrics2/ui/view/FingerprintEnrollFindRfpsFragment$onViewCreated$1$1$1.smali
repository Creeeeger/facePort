.class public final Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindRfpsFragment$onViewCreated$1$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindRfpsFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindRfpsFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindRfpsFragment$onViewCreated$1$1$1;->this$0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindRfpsFragment;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindRfpsFragment$onViewCreated$1$1$1;->this$0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindRfpsFragment;

    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindRfpsFragment;->startEnrollment$4()V

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindRfpsFragment;->animation:Lcom/android/settings/biometrics/fingerprint/FingerprintFindSensorAnimation;

    if-eqz p0, :cond_0

    const-string p1, "FingerprintEnrollFindRfpsFragment"

    const-string p2, "retry, start animation"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintFindSensorAnimation;->startAnimation()V

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
