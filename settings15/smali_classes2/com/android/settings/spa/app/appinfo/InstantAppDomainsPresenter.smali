.class public final Lcom/android/settings/spa/app/appinfo/InstantAppDomainsPresenter;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final app:Landroid/content/pm/ApplicationInfo;

.field public final context:Landroid/content/Context;

.field public final domainsFlow:Lkotlinx/coroutines/flow/Flow;

.field public final summaryFlow:Lkotlinx/coroutines/flow/Flow;

.field public final userPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "app"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/InstantAppDomainsPresenter;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/spa/app/appinfo/InstantAppDomainsPresenter;->app:Landroid/content/pm/ApplicationInfo;

    invoke-static {p2}, Lcom/android/settingslib/spaprivileged/model/app/ApplicationInfosKt;->getUserHandle(Landroid/content/pm/ApplicationInfo;)Landroid/os/UserHandle;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/settingslib/spaprivileged/framework/common/ContextsKt;->asUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/InstantAppDomainsPresenter;->userPackageManager:Landroid/content/pm/PackageManager;

    new-instance p1, Lcom/android/settings/spa/app/appinfo/InstantAppDomainsPresenter$domainsFlow$1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/settings/spa/app/appinfo/InstantAppDomainsPresenter$domainsFlow$1;-><init>(Lcom/android/settings/spa/app/appinfo/InstantAppDomainsPresenter;Lkotlin/coroutines/Continuation;)V

    new-instance p2, Lkotlinx/coroutines/flow/SafeFlow;

    invoke-direct {p2, p1}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(Lkotlin/jvm/functions/Function2;)V

    sget-object p1, Lkotlinx/coroutines/Dispatchers;->IO:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    invoke-static {p2, p1}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/spa/app/appinfo/InstantAppDomainsPresenter;->domainsFlow:Lkotlinx/coroutines/flow/Flow;

    new-instance v0, Lcom/android/settings/spa/app/appinfo/InstantAppDomainsPresenter$special$$inlined$map$1;

    invoke-direct {v0, p2, p0}, Lcom/android/settings/spa/app/appinfo/InstantAppDomainsPresenter$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/settings/spa/app/appinfo/InstantAppDomainsPresenter;)V

    invoke-static {v0, p1}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/InstantAppDomainsPresenter;->summaryFlow:Lkotlinx/coroutines/flow/Flow;

    return-void
.end method
