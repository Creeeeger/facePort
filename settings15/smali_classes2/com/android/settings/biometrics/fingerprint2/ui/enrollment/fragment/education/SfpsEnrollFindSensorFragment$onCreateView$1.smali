.class final Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/SfpsEnrollFindSensorFragment$onCreateView$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/SfpsEnrollFindSensorFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/SfpsEnrollFindSensorFragment;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/SfpsEnrollFindSensorFragment$onCreateView$1;->this$0:Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/SfpsEnrollFindSensorFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/SfpsEnrollFindSensorFragment$onCreateView$1;

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/SfpsEnrollFindSensorFragment$onCreateView$1;->this$0:Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/SfpsEnrollFindSensorFragment;

    invoke-direct {p1, p0, p2}, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/SfpsEnrollFindSensorFragment$onCreateView$1;-><init>(Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/SfpsEnrollFindSensorFragment;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/SfpsEnrollFindSensorFragment$onCreateView$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/SfpsEnrollFindSensorFragment$onCreateView$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/SfpsEnrollFindSensorFragment$onCreateView$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/SfpsEnrollFindSensorFragment$onCreateView$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/SfpsEnrollFindSensorFragment$onCreateView$1;->this$0:Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/SfpsEnrollFindSensorFragment;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    new-instance v3, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/SfpsEnrollFindSensorFragment$onCreateView$1$1;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/SfpsEnrollFindSensorFragment$onCreateView$1$1;-><init>(Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/SfpsEnrollFindSensorFragment;Lkotlin/coroutines/Continuation;)V

    iput v2, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/SfpsEnrollFindSensorFragment$onCreateView$1;->label:I

    invoke-static {p1, v1, v3, p0}, Landroidx/lifecycle/RepeatOnLifecycleKt;->repeatOnLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
