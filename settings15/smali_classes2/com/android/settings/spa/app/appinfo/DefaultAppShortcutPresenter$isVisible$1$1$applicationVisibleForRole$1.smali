.class final Lcom/android/settings/spa/app/appinfo/DefaultAppShortcutPresenter$isVisible$1$1$applicationVisibleForRole$1;
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
        "\u0000\u000c\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001*\u00020\u0003H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "kotlin.jvm.PlatformType",
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

.field final synthetic this$0:Lcom/android/settings/spa/app/appinfo/DefaultAppShortcutPresenter;


# direct methods
.method public constructor <init>(Lcom/android/settings/spa/app/appinfo/DefaultAppShortcutPresenter;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/DefaultAppShortcutPresenter$isVisible$1$1$applicationVisibleForRole$1;->this$0:Lcom/android/settings/spa/app/appinfo/DefaultAppShortcutPresenter;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/android/settings/spa/app/appinfo/DefaultAppShortcutPresenter$isVisible$1$1$applicationVisibleForRole$1;

    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/DefaultAppShortcutPresenter$isVisible$1$1$applicationVisibleForRole$1;->this$0:Lcom/android/settings/spa/app/appinfo/DefaultAppShortcutPresenter;

    invoke-direct {p1, p0, p2}, Lcom/android/settings/spa/app/appinfo/DefaultAppShortcutPresenter$isVisible$1$1$applicationVisibleForRole$1;-><init>(Lcom/android/settings/spa/app/appinfo/DefaultAppShortcutPresenter;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/spa/app/appinfo/DefaultAppShortcutPresenter$isVisible$1$1$applicationVisibleForRole$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/settings/spa/app/appinfo/DefaultAppShortcutPresenter$isVisible$1$1$applicationVisibleForRole$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/settings/spa/app/appinfo/DefaultAppShortcutPresenter$isVisible$1$1$applicationVisibleForRole$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/settings/spa/app/appinfo/DefaultAppShortcutPresenter$isVisible$1$1$applicationVisibleForRole$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/settings/spa/app/appinfo/DefaultAppShortcutPresenter$isVisible$1$1$applicationVisibleForRole$1;->this$0:Lcom/android/settings/spa/app/appinfo/DefaultAppShortcutPresenter;

    iput v2, p0, Lcom/android/settings/spa/app/appinfo/DefaultAppShortcutPresenter$isVisible$1$1$applicationVisibleForRole$1;->label:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lkotlin/coroutines/SafeContinuation;

    invoke-static {p0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    invoke-direct {v1, p0}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    iget-object p0, p1, Lcom/android/settings/spa/app/appinfo/DefaultAppShortcutPresenter;->roleManager:Landroid/app/role/RoleManager;

    iget-object v2, p1, Lcom/android/settings/spa/app/appinfo/DefaultAppShortcutPresenter;->app:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/settings/spa/app/appinfo/DefaultAppShortcutPresenter;->executor:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/android/settings/spa/app/appinfo/DefaultAppShortcutPresenter$isRoleVisible$2$1;

    const/4 v5, 0x1

    invoke-direct {v4, v1, v5}, Lcom/android/settings/spa/app/appinfo/DefaultAppShortcutPresenter$isRoleVisible$2$1;-><init>(Lkotlin/coroutines/SafeContinuation;I)V

    iget-object p1, p1, Lcom/android/settings/spa/app/appinfo/DefaultAppShortcutPresenter;->roleName:Ljava/lang/String;

    invoke-virtual {p0, p1, v2, v3, v4}, Landroid/app/role/RoleManager;->isApplicationVisibleForRole(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-virtual {v1}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    return-object p1
.end method
