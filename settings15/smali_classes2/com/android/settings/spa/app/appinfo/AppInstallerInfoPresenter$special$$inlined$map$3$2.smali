.class public final Lcom/android/settings/spa/app/appinfo/AppInstallerInfoPresenter$special$$inlined$map$3$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

.field public final synthetic this$0:Lcom/android/settings/spa/app/appinfo/AppInstallerInfoPresenter;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/android/settings/spa/app/appinfo/AppInstallerInfoPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppInstallerInfoPresenter$special$$inlined$map$3$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, p0, Lcom/android/settings/spa/app/appinfo/AppInstallerInfoPresenter$special$$inlined$map$3$2;->this$0:Lcom/android/settings/spa/app/appinfo/AppInstallerInfoPresenter;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, Lcom/android/settings/spa/app/appinfo/AppInstallerInfoPresenter$special$$inlined$map$3$2$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/settings/spa/app/appinfo/AppInstallerInfoPresenter$special$$inlined$map$3$2$1;

    iget v1, v0, Lcom/android/settings/spa/app/appinfo/AppInstallerInfoPresenter$special$$inlined$map$3$2$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/settings/spa/app/appinfo/AppInstallerInfoPresenter$special$$inlined$map$3$2$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/settings/spa/app/appinfo/AppInstallerInfoPresenter$special$$inlined$map$3$2$1;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/spa/app/appinfo/AppInstallerInfoPresenter$special$$inlined$map$3$2$1;-><init>(Lcom/android/settings/spa/app/appinfo/AppInstallerInfoPresenter$special$$inlined$map$3$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/settings/spa/app/appinfo/AppInstallerInfoPresenter$special$$inlined$map$3$2$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/settings/spa/app/appinfo/AppInstallerInfoPresenter$special$$inlined$map$3$2$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/CharSequence;

    iget-object p2, p0, Lcom/android/settings/spa/app/appinfo/AppInstallerInfoPresenter$special$$inlined$map$3$2;->this$0:Lcom/android/settings/spa/app/appinfo/AppInstallerInfoPresenter;

    iget-object v2, p2, Lcom/android/settings/spa/app/appinfo/AppInstallerInfoPresenter;->app:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object p2, p2, Lcom/android/settings/spa/app/appinfo/AppInstallerInfoPresenter;->context:Landroid/content/Context;

    const v2, 0x7f14123e

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, v2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_3
    iget-object v2, p2, Lcom/android/settings/spa/app/appinfo/AppInstallerInfoPresenter;->installSourceInfo:Landroid/content/pm/InstallSourceInfo;

    const v4, 0x7f14036c

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Landroid/content/pm/InstallSourceInfo;->getInitiatingPackageName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v2}, Landroid/content/pm/InstallSourceInfo;->getInstallingPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p2, Lcom/android/settings/spa/app/appinfo/AppInstallerInfoPresenter;->context:Landroid/content/Context;

    iget-object v5, p2, Lcom/android/settings/spa/app/appinfo/AppInstallerInfoPresenter;->installSourceInfo:Landroid/content/pm/InstallSourceInfo;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroid/content/pm/InstallSourceInfo;->getInitiatingPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v2, v5}, Lcom/android/settings/Utils;->getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object p2, p2, Lcom/android/settings/spa/app/appinfo/AppInstallerInfoPresenter;->context:Landroid/content/Context;

    const v4, 0x7f14036a

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, v4, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_5
    iget-object p2, p2, Lcom/android/settings/spa/app/appinfo/AppInstallerInfoPresenter;->context:Landroid/content/Context;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, v4, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_6
    :goto_1
    iget-object p2, p2, Lcom/android/settings/spa/app/appinfo/AppInstallerInfoPresenter;->context:Landroid/content/Context;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, v4, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_2
    iput v3, v0, Lcom/android/settings/spa/app/appinfo/AppInstallerInfoPresenter$special$$inlined$map$3$2$1;->label:I

    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/AppInstallerInfoPresenter$special$$inlined$map$3$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-interface {p0, p1, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_7

    return-object v1

    :cond_7
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
