.class public final Lcom/android/settings/spa/app/appinfo/AppOpenByDefaultPresenter;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final app:Landroid/content/pm/ApplicationInfo;

.field public final context:Landroid/content/Context;

.field public final domainVerificationManager:Landroid/content/pm/verify/domain/DomainVerificationManager;

.field public final summaryFlow:Lkotlinx/coroutines/flow/Flow;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "app"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppOpenByDefaultPresenter;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/spa/app/appinfo/AppOpenByDefaultPresenter;->app:Landroid/content/pm/ApplicationInfo;

    invoke-static {p2}, Lcom/android/settingslib/spaprivileged/model/app/ApplicationInfosKt;->getUserHandle(Landroid/content/pm/ApplicationInfo;)Landroid/os/UserHandle;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/settingslib/spaprivileged/framework/common/ContextsKt;->asUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p1

    const-class p2, Landroid/content/pm/verify/domain/DomainVerificationManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Landroid/content/pm/verify/domain/DomainVerificationManager;

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppOpenByDefaultPresenter;->domainVerificationManager:Landroid/content/pm/verify/domain/DomainVerificationManager;

    new-instance p1, Lcom/android/settings/spa/app/appinfo/AppOpenByDefaultPresenter$summaryFlow$1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/settings/spa/app/appinfo/AppOpenByDefaultPresenter$summaryFlow$1;-><init>(Lcom/android/settings/spa/app/appinfo/AppOpenByDefaultPresenter;Lkotlin/coroutines/Continuation;)V

    new-instance p2, Lkotlinx/coroutines/flow/SafeFlow;

    invoke-direct {p2, p1}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(Lkotlin/jvm/functions/Function2;)V

    sget-object p1, Lkotlinx/coroutines/Dispatchers;->IO:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    invoke-static {p2, p1}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppOpenByDefaultPresenter;->summaryFlow:Lkotlinx/coroutines/flow/Flow;

    return-void
.end method
