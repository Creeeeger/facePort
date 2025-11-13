.class public final Lcom/android/settings/spa/app/appinfo/AppAllServicesPresenter;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final activityInfoFlow:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

.field public final app:Landroid/content/pm/ApplicationInfo;

.field public final context:Landroid/content/Context;

.field public final coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field public final isAvailableFlow:Lcom/android/settings/spa/app/appinfo/AppAllServicesPresenter$special$$inlined$map$1;

.field public final packageManager:Landroid/content/pm/PackageManager;

.field public final summaryFlow:Lkotlinx/coroutines/flow/Flow;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lkotlinx/coroutines/internal/ContextScope;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "app"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppAllServicesPresenter;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/spa/app/appinfo/AppAllServicesPresenter;->app:Landroid/content/pm/ApplicationInfo;

    iput-object p3, p0, Lcom/android/settings/spa/app/appinfo/AppAllServicesPresenter;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppAllServicesPresenter;->packageManager:Landroid/content/pm/PackageManager;

    new-instance p1, Lcom/android/settings/spa/app/appinfo/AppAllServicesPresenter$activityInfoFlow$1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/settings/spa/app/appinfo/AppAllServicesPresenter$activityInfoFlow$1;-><init>(Lcom/android/settings/spa/app/appinfo/AppAllServicesPresenter;Lkotlin/coroutines/Continuation;)V

    new-instance p2, Lkotlinx/coroutines/flow/SafeFlow;

    invoke-direct {p2, p1}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(Lkotlin/jvm/functions/Function2;)V

    sget-object p1, Lkotlinx/coroutines/Dispatchers;->IO:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    invoke-static {p3, p1}, Lkotlinx/coroutines/CoroutineScopeKt;->plus(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object p3

    invoke-static {}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default()Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p2, p3, v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->shareIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;I)Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/spa/app/appinfo/AppAllServicesPresenter;->activityInfoFlow:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    new-instance p3, Lcom/android/settings/spa/app/appinfo/AppAllServicesPresenter$special$$inlined$map$1;

    invoke-direct {p3, p2}, Lcom/android/settings/spa/app/appinfo/AppAllServicesPresenter$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/ReadonlySharedFlow;)V

    iput-object p3, p0, Lcom/android/settings/spa/app/appinfo/AppAllServicesPresenter;->isAvailableFlow:Lcom/android/settings/spa/app/appinfo/AppAllServicesPresenter$special$$inlined$map$1;

    new-instance p3, Lcom/android/settings/spa/app/appinfo/AppAllServicesPresenter$special$$inlined$map$2;

    invoke-direct {p3, p2, p0}, Lcom/android/settings/spa/app/appinfo/AppAllServicesPresenter$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/ReadonlySharedFlow;Lcom/android/settings/spa/app/appinfo/AppAllServicesPresenter;)V

    invoke-static {p3, p1}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppAllServicesPresenter;->summaryFlow:Lkotlinx/coroutines/flow/Flow;

    return-void
.end method
