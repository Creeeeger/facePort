.class final Lcom/android/settings/datausage/DataUsageSummaryPreferenceController$onViewCreated$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->onViewCreated(Landroidx/lifecycle/LifecycleOwner;)V
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
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "policy",
        "Landroid/net/NetworkPolicy;"
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
.field synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController$onViewCreated$1;->this$0:Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController$onViewCreated$1;

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController$onViewCreated$1;->this$0:Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController$onViewCreated$1;-><init>(Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController$onViewCreated$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/net/NetworkPolicy;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController$onViewCreated$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController$onViewCreated$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController$onViewCreated$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController$onViewCreated$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController$onViewCreated$1;->L$0:Ljava/lang/Object;

    check-cast p1, Landroid/net/NetworkPolicy;

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController$onViewCreated$1;->this$0:Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;

    invoke-static {v1}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->access$getPreference$p(Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;)Lcom/android/settings/datausage/DataUsageSummaryPreference;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController$onViewCreated$1;->this$0:Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;

    invoke-static {v3}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->access$getSubInfo(Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    if-eqz p1, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController$onViewCreated$1;->this$0:Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;

    iput v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController$onViewCreated$1;->label:I

    invoke-static {v1, p1, p0}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->access$update(Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;Landroid/net/NetworkPolicy;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_4
    const-string p0, "preference"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
