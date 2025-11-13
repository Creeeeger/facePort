.class final Lcom/android/settings/spa/app/appinfo/AppDataUsagePresenter$templateFlow$1$1;
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
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "Landroid/net/NetworkTemplate;",
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
.field final synthetic $networkTemplates:Lcom/android/settings/datausage/lib/INetworkTemplates;

.field label:I

.field final synthetic this$0:Lcom/android/settings/spa/app/appinfo/AppDataUsagePresenter;


# direct methods
.method public constructor <init>(Lcom/android/settings/datausage/lib/INetworkTemplates;Lcom/android/settings/spa/app/appinfo/AppDataUsagePresenter;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppDataUsagePresenter$templateFlow$1$1;->$networkTemplates:Lcom/android/settings/datausage/lib/INetworkTemplates;

    iput-object p2, p0, Lcom/android/settings/spa/app/appinfo/AppDataUsagePresenter$templateFlow$1$1;->this$0:Lcom/android/settings/spa/app/appinfo/AppDataUsagePresenter;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/android/settings/spa/app/appinfo/AppDataUsagePresenter$templateFlow$1$1;

    iget-object v0, p0, Lcom/android/settings/spa/app/appinfo/AppDataUsagePresenter$templateFlow$1$1;->$networkTemplates:Lcom/android/settings/datausage/lib/INetworkTemplates;

    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/AppDataUsagePresenter$templateFlow$1$1;->this$0:Lcom/android/settings/spa/app/appinfo/AppDataUsagePresenter;

    invoke-direct {p1, v0, p0, p2}, Lcom/android/settings/spa/app/appinfo/AppDataUsagePresenter$templateFlow$1$1;-><init>(Lcom/android/settings/datausage/lib/INetworkTemplates;Lcom/android/settings/spa/app/appinfo/AppDataUsagePresenter;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/spa/app/appinfo/AppDataUsagePresenter$templateFlow$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/settings/spa/app/appinfo/AppDataUsagePresenter$templateFlow$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/settings/spa/app/appinfo/AppDataUsagePresenter$templateFlow$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/settings/spa/app/appinfo/AppDataUsagePresenter$templateFlow$1$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppDataUsagePresenter$templateFlow$1$1;->$networkTemplates:Lcom/android/settings/datausage/lib/INetworkTemplates;

    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/AppDataUsagePresenter$templateFlow$1$1;->this$0:Lcom/android/settings/spa/app/appinfo/AppDataUsagePresenter;

    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/AppDataUsagePresenter;->context:Landroid/content/Context;

    check-cast p1, Lcom/android/settings/datausage/lib/NetworkTemplates;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "context"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/settings/datausage/DataUsageUtils;->getDefaultTemplate(Landroid/content/Context;I)Landroid/net/NetworkTemplate;

    move-result-object p0

    const-string p1, "getDefaultTemplate(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
