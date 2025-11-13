.class public final Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment$onViewCreated$1$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment$onViewCreated$1$1$1;->this$0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment$onViewCreated$1$1$1;->this$0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment;

    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment;->startEnrollment$5()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
