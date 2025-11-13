.class public final Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppPresenter;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final app:Landroid/content/pm/ApplicationInfo;

.field public final context:Landroid/content/Context;

.field public final isAvailableFlow:Lkotlinx/coroutines/flow/Flow;

.field public final manager:Lcom/android/settings/applications/appcompat/UserAspectRatioManager;

.field public final summaryFlow:Lkotlinx/coroutines/flow/Flow;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "app"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppPresenter;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppPresenter;->app:Landroid/content/pm/ApplicationInfo;

    new-instance p2, Lcom/android/settings/applications/appcompat/UserAspectRatioManager;

    invoke-direct {p2, p1}, Lcom/android/settings/applications/appcompat/UserAspectRatioManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppPresenter;->manager:Lcom/android/settings/applications/appcompat/UserAspectRatioManager;

    new-instance p1, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppPresenter$isAvailableFlow$1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppPresenter$isAvailableFlow$1;-><init>(Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppPresenter;Lkotlin/coroutines/Continuation;)V

    new-instance v0, Lkotlinx/coroutines/flow/SafeFlow;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(Lkotlin/jvm/functions/Function2;)V

    sget-object p1, Lkotlinx/coroutines/Dispatchers;->IO:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    invoke-static {v0, p1}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppPresenter;->isAvailableFlow:Lkotlinx/coroutines/flow/Flow;

    new-instance v0, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppPresenter$summaryFlow$1;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppPresenter$summaryFlow$1;-><init>(Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppPresenter;Lkotlin/coroutines/Continuation;)V

    new-instance p2, Lkotlinx/coroutines/flow/SafeFlow;

    invoke-direct {p2, v0}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(Lkotlin/jvm/functions/Function2;)V

    invoke-static {p2, p1}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppPresenter;->summaryFlow:Lkotlinx/coroutines/flow/Flow;

    return-void
.end method
