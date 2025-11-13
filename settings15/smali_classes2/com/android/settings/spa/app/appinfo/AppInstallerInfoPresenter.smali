.class public final Lcom/android/settings/spa/app/appinfo/AppInstallerInfoPresenter;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final app:Landroid/content/pm/ApplicationInfo;

.field public final context:Landroid/content/Context;

.field public final coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field public final enabledFlow:Lcom/android/settings/spa/app/appinfo/AppInstallerInfoPresenter$special$$inlined$map$5;

.field public installSourceInfo:Landroid/content/pm/InstallSourceInfo;

.field public final installerLabelFlow:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

.field public final installerPackageFlow:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

.field public final intentFlow:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

.field public final isAvailableFlow:Lcom/android/settings/spa/app/appinfo/AppInstallerInfoPresenter$special$$inlined$map$1;

.field public final packageManager:Landroid/content/pm/PackageManager;

.field public final summaryFlow:Lcom/android/settings/spa/app/appinfo/AppInstallerInfoPresenter$special$$inlined$map$1;

.field public final userContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lkotlinx/coroutines/internal/ContextScope;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "app"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppInstallerInfoPresenter;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/spa/app/appinfo/AppInstallerInfoPresenter;->app:Landroid/content/pm/ApplicationInfo;

    iput-object p3, p0, Lcom/android/settings/spa/app/appinfo/AppInstallerInfoPresenter;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p2}, Lcom/android/settingslib/spaprivileged/model/app/ApplicationInfosKt;->getUserHandle(Landroid/content/pm/ApplicationInfo;)Landroid/os/UserHandle;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/settingslib/spaprivileged/framework/common/ContextsKt;->asUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppInstallerInfoPresenter;->userContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppInstallerInfoPresenter;->packageManager:Landroid/content/pm/PackageManager;

    new-instance p1, Lcom/android/settings/spa/app/appinfo/AppInstallerInfoPresenter$installerPackageFlow$1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/settings/spa/app/appinfo/AppInstallerInfoPresenter$installerPackageFlow$1;-><init>(Lcom/android/settings/spa/app/appinfo/AppInstallerInfoPresenter;Lkotlin/coroutines/Continuation;)V

    new-instance p2, Lkotlinx/coroutines/flow/SafeFlow;

    invoke-direct {p2, p1}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {p0, p2}, Lcom/android/settings/spa/app/appinfo/AppInstallerInfoPresenter;->sharedFlow(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    move-result-object p1

    new-instance p2, Lcom/android/settings/spa/app/appinfo/AppInstallerInfoPresenter$special$$inlined$map$1;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p0, p3}, Lcom/android/settings/spa/app/appinfo/AppInstallerInfoPresenter$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/ReadonlySharedFlow;Lcom/android/settings/spa/app/appinfo/AppInstallerInfoPresenter;I)V

    invoke-virtual {p0, p2}, Lcom/android/settings/spa/app/appinfo/AppInstallerInfoPresenter;->sharedFlow(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    move-result-object p2

    new-instance p3, Lcom/android/settings/spa/app/appinfo/AppInstallerInfoPresenter$special$$inlined$map$1;

    const/4 v0, 0x1

    invoke-direct {p3, p2, p0, v0}, Lcom/android/settings/spa/app/appinfo/AppInstallerInfoPresenter$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/ReadonlySharedFlow;Lcom/android/settings/spa/app/appinfo/AppInstallerInfoPresenter;I)V

    iput-object p3, p0, Lcom/android/settings/spa/app/appinfo/AppInstallerInfoPresenter;->isAvailableFlow:Lcom/android/settings/spa/app/appinfo/AppInstallerInfoPresenter$special$$inlined$map$1;

    new-instance p3, Lcom/android/settings/spa/app/appinfo/AppInstallerInfoPresenter$special$$inlined$map$1;

    const/4 v0, 0x2

    invoke-direct {p3, p2, p0, v0}, Lcom/android/settings/spa/app/appinfo/AppInstallerInfoPresenter$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/ReadonlySharedFlow;Lcom/android/settings/spa/app/appinfo/AppInstallerInfoPresenter;I)V

    iput-object p3, p0, Lcom/android/settings/spa/app/appinfo/AppInstallerInfoPresenter;->summaryFlow:Lcom/android/settings/spa/app/appinfo/AppInstallerInfoPresenter$special$$inlined$map$1;

    new-instance p2, Lcom/android/settings/spa/app/appinfo/AppInstallerInfoPresenter$special$$inlined$map$1;

    const/4 p3, 0x3

    invoke-direct {p2, p1, p0, p3}, Lcom/android/settings/spa/app/appinfo/AppInstallerInfoPresenter$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/ReadonlySharedFlow;Lcom/android/settings/spa/app/appinfo/AppInstallerInfoPresenter;I)V

    invoke-virtual {p0, p2}, Lcom/android/settings/spa/app/appinfo/AppInstallerInfoPresenter;->sharedFlow(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppInstallerInfoPresenter;->intentFlow:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    new-instance p2, Lcom/android/settings/spa/app/appinfo/AppInstallerInfoPresenter$special$$inlined$map$5;

    invoke-direct {p2, p1}, Lcom/android/settings/spa/app/appinfo/AppInstallerInfoPresenter$special$$inlined$map$5;-><init>(Lkotlinx/coroutines/flow/ReadonlySharedFlow;)V

    iput-object p2, p0, Lcom/android/settings/spa/app/appinfo/AppInstallerInfoPresenter;->enabledFlow:Lcom/android/settings/spa/app/appinfo/AppInstallerInfoPresenter$special$$inlined$map$5;

    return-void
.end method


# virtual methods
.method public final sharedFlow(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/ReadonlySharedFlow;
    .locals 2

    invoke-static {}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default()Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v0

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/AppInstallerInfoPresenter;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1, p0, v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->shareIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;I)Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    move-result-object p0

    return-object p0
.end method
