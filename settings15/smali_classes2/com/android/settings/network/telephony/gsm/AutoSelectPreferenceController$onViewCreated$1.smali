.class final Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$onViewCreated$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->onViewCreated(Landroidx/lifecycle/LifecycleOwner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        ""
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
.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$onViewCreated$1;->this$0:Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$onViewCreated$1;

    iget-object p0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$onViewCreated$1;->this$0:Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;

    invoke-direct {p1, p0, p2}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$onViewCreated$1;-><init>(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$onViewCreated$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$onViewCreated$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$onViewCreated$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$onViewCreated$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$onViewCreated$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/settings/spa/preference/ComposePreference;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$onViewCreated$1;->this$0:Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;

    invoke-static {p1}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->access$getPreference(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;)Lcom/android/settings/spa/preference/ComposePreference;

    move-result-object p1

    sget-object v1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    new-instance v3, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$onViewCreated$1$1;

    iget-object v4, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$onViewCreated$1;->this$0:Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$onViewCreated$1$1;-><init>(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;Lkotlin/coroutines/Continuation;)V

    iput-object p1, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$onViewCreated$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$onViewCreated$1;->label:I

    invoke-static {v1, v3, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    move-object v6, p1

    move-object p1, p0

    move-object p0, v6

    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
