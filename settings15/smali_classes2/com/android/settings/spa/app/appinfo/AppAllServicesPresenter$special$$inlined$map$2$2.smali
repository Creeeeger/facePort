.class public final Lcom/android/settings/spa/app/appinfo/AppAllServicesPresenter$special$$inlined$map$2$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

.field public final synthetic this$0:Lcom/android/settings/spa/app/appinfo/AppAllServicesPresenter;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/android/settings/spa/app/appinfo/AppAllServicesPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppAllServicesPresenter$special$$inlined$map$2$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, p0, Lcom/android/settings/spa/app/appinfo/AppAllServicesPresenter$special$$inlined$map$2$2;->this$0:Lcom/android/settings/spa/app/appinfo/AppAllServicesPresenter;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, Lcom/android/settings/spa/app/appinfo/AppAllServicesPresenter$special$$inlined$map$2$2$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/settings/spa/app/appinfo/AppAllServicesPresenter$special$$inlined$map$2$2$1;

    iget v1, v0, Lcom/android/settings/spa/app/appinfo/AppAllServicesPresenter$special$$inlined$map$2$2$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/settings/spa/app/appinfo/AppAllServicesPresenter$special$$inlined$map$2$2$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/settings/spa/app/appinfo/AppAllServicesPresenter$special$$inlined$map$2$2$1;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/spa/app/appinfo/AppAllServicesPresenter$special$$inlined$map$2$2$1;-><init>(Lcom/android/settings/spa/app/appinfo/AppAllServicesPresenter$special$$inlined$map$2$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/settings/spa/app/appinfo/AppAllServicesPresenter$special$$inlined$map$2$2$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/settings/spa/app/appinfo/AppAllServicesPresenter$special$$inlined$map$2$2$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Landroid/content/pm/ActivityInfo;

    const-string p2, ""

    if-eqz p1, :cond_3

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/android/settings/spa/app/appinfo/AppAllServicesPresenter$special$$inlined$map$2$2;->this$0:Lcom/android/settings/spa/app/appinfo/AppAllServicesPresenter;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "AppAllServicesPresenter"

    :try_start_0
    iget-object v5, v2, Lcom/android/settings/spa/app/appinfo/AppAllServicesPresenter;->packageManager:Landroid/content/pm/PackageManager;

    iget-object v2, v2, Lcom/android/settings/spa/app/appinfo/AppAllServicesPresenter;->app:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :try_start_1
    const-string v5, "app_features_preference_summary"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-object p2, p1

    goto :goto_1

    :catch_0
    const-string p1, "Resource not found for summary string."

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    const-string p1, "Name not found for the application."

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    iput v3, v0, Lcom/android/settings/spa/app/appinfo/AppAllServicesPresenter$special$$inlined$map$2$2$1;->label:I

    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/AppAllServicesPresenter$special$$inlined$map$2$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-interface {p0, p2, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_4

    return-object v1

    :cond_4
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
