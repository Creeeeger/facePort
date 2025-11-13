.class public final Lcom/android/settings/spa/app/appinfo/AppSettingsPresenter;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final app:Landroid/content/pm/ApplicationInfo;

.field public final context:Landroid/content/Context;

.field public final coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field public final intentFlow:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

.field public final isAvailableFlow:Lcom/android/settings/spa/app/appinfo/AppSettingsPresenter$special$$inlined$map$1;

.field public final packageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lkotlinx/coroutines/internal/ContextScope;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "app"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppSettingsPresenter;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/spa/app/appinfo/AppSettingsPresenter;->app:Landroid/content/pm/ApplicationInfo;

    iput-object p3, p0, Lcom/android/settings/spa/app/appinfo/AppSettingsPresenter;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppSettingsPresenter;->packageManager:Landroid/content/pm/PackageManager;

    new-instance p1, Lcom/android/settings/spa/app/appinfo/AppSettingsPresenter$intentFlow$1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/settings/spa/app/appinfo/AppSettingsPresenter$intentFlow$1;-><init>(Lcom/android/settings/spa/app/appinfo/AppSettingsPresenter;Lkotlin/coroutines/Continuation;)V

    new-instance p2, Lkotlinx/coroutines/flow/SafeFlow;

    invoke-direct {p2, p1}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(Lkotlin/jvm/functions/Function2;)V

    sget-object p1, Lkotlinx/coroutines/Dispatchers;->IO:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    invoke-static {p3, p1}, Lkotlinx/coroutines/CoroutineScopeKt;->plus(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object p1

    invoke-static {}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default()Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p3

    const/4 v0, 0x1

    invoke-static {p2, p1, p3, v0}, Lkotlinx/coroutines/flow/FlowKt;->shareIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;I)Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppSettingsPresenter;->intentFlow:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    new-instance p2, Lcom/android/settings/spa/app/appinfo/AppSettingsPresenter$special$$inlined$map$1;

    invoke-direct {p2, p1}, Lcom/android/settings/spa/app/appinfo/AppSettingsPresenter$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/ReadonlySharedFlow;)V

    iput-object p2, p0, Lcom/android/settings/spa/app/appinfo/AppSettingsPresenter;->isAvailableFlow:Lcom/android/settings/spa/app/appinfo/AppSettingsPresenter$special$$inlined$map$1;

    return-void
.end method
