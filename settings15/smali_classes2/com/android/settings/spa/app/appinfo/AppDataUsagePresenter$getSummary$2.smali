.class final Lcom/android/settings/spa/app/appinfo/AppDataUsagePresenter$getSummary$2;
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
        "\u0000\n\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
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
.field final synthetic $template:Landroid/net/NetworkTemplate;

.field label:I

.field final synthetic this$0:Lcom/android/settings/spa/app/appinfo/AppDataUsagePresenter;


# direct methods
.method public constructor <init>(Lcom/android/settings/spa/app/appinfo/AppDataUsagePresenter;Landroid/net/NetworkTemplate;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppDataUsagePresenter$getSummary$2;->this$0:Lcom/android/settings/spa/app/appinfo/AppDataUsagePresenter;

    iput-object p2, p0, Lcom/android/settings/spa/app/appinfo/AppDataUsagePresenter$getSummary$2;->$template:Landroid/net/NetworkTemplate;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/android/settings/spa/app/appinfo/AppDataUsagePresenter$getSummary$2;

    iget-object v0, p0, Lcom/android/settings/spa/app/appinfo/AppDataUsagePresenter$getSummary$2;->this$0:Lcom/android/settings/spa/app/appinfo/AppDataUsagePresenter;

    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/AppDataUsagePresenter$getSummary$2;->$template:Landroid/net/NetworkTemplate;

    invoke-direct {p1, v0, p0, p2}, Lcom/android/settings/spa/app/appinfo/AppDataUsagePresenter$getSummary$2;-><init>(Lcom/android/settings/spa/app/appinfo/AppDataUsagePresenter;Landroid/net/NetworkTemplate;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/spa/app/appinfo/AppDataUsagePresenter$getSummary$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/settings/spa/app/appinfo/AppDataUsagePresenter$getSummary$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/settings/spa/app/appinfo/AppDataUsagePresenter$getSummary$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/settings/spa/app/appinfo/AppDataUsagePresenter$getSummary$2;->label:I

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

    iget-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppDataUsagePresenter$getSummary$2;->this$0:Lcom/android/settings/spa/app/appinfo/AppDataUsagePresenter;

    iget-object v1, p1, Lcom/android/settings/spa/app/appinfo/AppDataUsagePresenter;->repositoryFactory:Lkotlin/jvm/functions/Function2;

    iget-object p1, p1, Lcom/android/settings/spa/app/appinfo/AppDataUsagePresenter;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/spa/app/appinfo/AppDataUsagePresenter$getSummary$2;->$template:Landroid/net/NetworkTemplate;

    invoke-interface {v1, p1, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/datausage/lib/AppDataUsageSummaryRepository;

    iget-object v1, p0, Lcom/android/settings/spa/app/appinfo/AppDataUsagePresenter$getSummary$2;->this$0:Lcom/android/settings/spa/app/appinfo/AppDataUsagePresenter;

    iget-object v1, v1, Lcom/android/settings/spa/app/appinfo/AppDataUsagePresenter;->app:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v2, p0, Lcom/android/settings/spa/app/appinfo/AppDataUsagePresenter$getSummary$2;->label:I

    invoke-virtual {p1, v1, p0}, Lcom/android/settings/datausage/lib/AppDataUsageSummaryRepository;->querySummary(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Lcom/android/settings/datausage/lib/NetworkUsageData;

    if-eqz p1, :cond_4

    const-wide/16 v0, 0x0

    iget-wide v2, p1, Lcom/android/settings/datausage/lib/NetworkUsageData;->usage:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/settings/spa/app/appinfo/AppDataUsagePresenter$getSummary$2;->this$0:Lcom/android/settings/spa/app/appinfo/AppDataUsagePresenter;

    iget-object v0, v0, Lcom/android/settings/spa/app/appinfo/AppDataUsagePresenter;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/settings/datausage/lib/NetworkUsageData;->formatUsage(Landroid/content/Context;)Lcom/android/settings/datausage/lib/DataUsageFormatter$FormattedDataUsage;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/AppDataUsagePresenter$getSummary$2;->this$0:Lcom/android/settings/spa/app/appinfo/AppDataUsagePresenter;

    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/AppDataUsagePresenter;->context:Landroid/content/Context;

    const-string v2, "context"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v2, p1, Lcom/android/settings/datausage/lib/NetworkUsageData;->startTime:J

    const p1, 0x10010

    invoke-static {p0, v2, v3, p1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    const-string p1, "formatDateTime(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, v1, Lcom/android/settings/datausage/lib/DataUsageFormatter$FormattedDataUsage;->displayText:Ljava/lang/String;

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0x7f140b80

    invoke-virtual {v0, p1, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/AppDataUsagePresenter$getSummary$2;->this$0:Lcom/android/settings/spa/app/appinfo/AppDataUsagePresenter;

    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/AppDataUsagePresenter;->context:Landroid/content/Context;

    const p1, 0x7f141a32

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_2
    return-object p0
.end method
