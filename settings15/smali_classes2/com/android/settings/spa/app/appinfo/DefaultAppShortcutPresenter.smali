.class public final Lcom/android/settings/spa/app/appinfo/DefaultAppShortcutPresenter;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final app:Landroid/content/pm/ApplicationInfo;

.field public final context:Landroid/content/Context;

.field public final executor:Ljava/util/concurrent/Executor;

.field public final roleManager:Landroid/app/role/RoleManager;

.field public final roleName:Ljava/lang/String;

.field public final summaryFlow:Lkotlinx/coroutines/flow/Flow;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "roleName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "app"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/DefaultAppShortcutPresenter;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/spa/app/appinfo/DefaultAppShortcutPresenter;->roleName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/spa/app/appinfo/DefaultAppShortcutPresenter;->app:Landroid/content/pm/ApplicationInfo;

    const-class p2, Landroid/app/role/RoleManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Landroid/app/role/RoleManager;

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/DefaultAppShortcutPresenter;->roleManager:Landroid/app/role/RoleManager;

    sget-object p1, Lkotlinx/coroutines/Dispatchers;->IO:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    invoke-static {p1}, Lkotlinx/coroutines/ExecutorsKt;->asExecutor(Lkotlinx/coroutines/CoroutineDispatcher;)Ljava/util/concurrent/Executor;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/spa/app/appinfo/DefaultAppShortcutPresenter;->executor:Ljava/util/concurrent/Executor;

    new-instance p2, Lcom/android/settings/spa/app/appinfo/DefaultAppShortcutPresenter$summaryFlow$1;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/android/settings/spa/app/appinfo/DefaultAppShortcutPresenter$summaryFlow$1;-><init>(Lcom/android/settings/spa/app/appinfo/DefaultAppShortcutPresenter;Lkotlin/coroutines/Continuation;)V

    new-instance p3, Lkotlinx/coroutines/flow/SafeFlow;

    invoke-direct {p3, p2}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(Lkotlin/jvm/functions/Function2;)V

    invoke-static {p3, p1}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/DefaultAppShortcutPresenter;->summaryFlow:Lkotlinx/coroutines/flow/Flow;

    return-void
.end method
