.class final Lcom/android/settings/spa/app/appinfo/AppLocalePresenter$isAvailable$2;
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
        "\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
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

.field final synthetic this$0:Lcom/android/settings/spa/app/appinfo/AppLocalePresenter;


# direct methods
.method public constructor <init>(Lcom/android/settings/spa/app/appinfo/AppLocalePresenter;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppLocalePresenter$isAvailable$2;->this$0:Lcom/android/settings/spa/app/appinfo/AppLocalePresenter;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/android/settings/spa/app/appinfo/AppLocalePresenter$isAvailable$2;

    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/AppLocalePresenter$isAvailable$2;->this$0:Lcom/android/settings/spa/app/appinfo/AppLocalePresenter;

    invoke-direct {p1, p0, p2}, Lcom/android/settings/spa/app/appinfo/AppLocalePresenter$isAvailable$2;-><init>(Lcom/android/settings/spa/app/appinfo/AppLocalePresenter;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/spa/app/appinfo/AppLocalePresenter$isAvailable$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/settings/spa/app/appinfo/AppLocalePresenter$isAvailable$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/settings/spa/app/appinfo/AppLocalePresenter$isAvailable$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/settings/spa/app/appinfo/AppLocalePresenter$isAvailable$2;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppLocalePresenter$isAvailable$2;->this$0:Lcom/android/settings/spa/app/appinfo/AppLocalePresenter;

    iget-object p1, p1, Lcom/android/settings/spa/app/appinfo/AppLocalePresenter;->packageManager:Landroid/content/pm/PackageManager;

    sget-object v0, Lcom/android/settings/applications/AppLocaleUtil;->LAUNCHER_ENTRY_INTENT:Landroid/content/Intent;

    const-wide/16 v1, 0x80

    invoke-static {v1, v2}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/spa/app/appinfo/AppLocalePresenter$isAvailable$2;->this$0:Lcom/android/settings/spa/app/appinfo/AppLocalePresenter;

    iget-object v2, v2, Lcom/android/settings/spa/app/appinfo/AppLocalePresenter;->app:Landroid/content/pm/ApplicationInfo;

    invoke-static {v2}, Lcom/android/settingslib/spaprivileged/model/app/ApplicationInfosKt;->getUserId(Landroid/content/pm/ApplicationInfo;)I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Ljava/util/List;

    move-result-object p1

    const-string v0, "queryIntentActivitiesAsUser(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/AppLocalePresenter$isAvailable$2;->this$0:Lcom/android/settings/spa/app/appinfo/AppLocalePresenter;

    iget-object v0, p0, Lcom/android/settings/spa/app/appinfo/AppLocalePresenter;->context:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/AppLocalePresenter;->app:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0, p0, p1}, Lcom/android/settings/applications/AppLocaleUtil;->canDisplayLocaleUi(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/util/List;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
