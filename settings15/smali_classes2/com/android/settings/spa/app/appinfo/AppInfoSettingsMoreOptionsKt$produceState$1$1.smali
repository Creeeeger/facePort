.class final Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$produceState$1$1;
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
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
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
.field final synthetic $$this$produceState:Landroidx/compose/runtime/ProduceStateScope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/ProduceStateScope;"
        }
    .end annotation
.end field

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $packageManagers:Lcom/android/settingslib/spaprivileged/model/app/IPackageManagers;

.field final synthetic $this_produceState:Landroid/content/pm/ApplicationInfo;

.field L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/ProduceStateScope;Landroid/content/pm/ApplicationInfo;Landroid/content/Context;Lcom/android/settingslib/spaprivileged/model/app/IPackageManagers;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$produceState$1$1;->$$this$produceState:Landroidx/compose/runtime/ProduceStateScope;

    iput-object p2, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$produceState$1$1;->$this_produceState:Landroid/content/pm/ApplicationInfo;

    iput-object p3, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$produceState$1$1;->$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$produceState$1$1;->$packageManagers:Lcom/android/settingslib/spaprivileged/model/app/IPackageManagers;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance p1, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$produceState$1$1;

    iget-object v1, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$produceState$1$1;->$$this$produceState:Landroidx/compose/runtime/ProduceStateScope;

    iget-object v2, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$produceState$1$1;->$this_produceState:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$produceState$1$1;->$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$produceState$1$1;->$packageManagers:Lcom/android/settingslib/spaprivileged/model/app/IPackageManagers;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$produceState$1$1;-><init>(Landroidx/compose/runtime/ProduceStateScope;Landroid/content/pm/ApplicationInfo;Landroid/content/Context;Lcom/android/settingslib/spaprivileged/model/app/IPackageManagers;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$produceState$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$produceState$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$produceState$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$produceState$1$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$produceState$1$1;->L$0:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/ProduceStateScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$produceState$1$1;->$$this$produceState:Landroidx/compose/runtime/ProduceStateScope;

    iget-object v1, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$produceState$1$1;->$this_produceState:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$produceState$1$1;->$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$produceState$1$1;->$packageManagers:Lcom/android/settingslib/spaprivileged/model/app/IPackageManagers;

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$produceState$1$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$produceState$1$1;->label:I

    new-instance v2, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$getMoreOptionsState$2;

    const/4 v5, 0x0

    invoke-direct {v2, v3, v1, v4, v5}, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$getMoreOptionsState$2;-><init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lcom/android/settingslib/spaprivileged/model/app/IPackageManagers;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2, p0}, Lkotlinx/coroutines/CoroutineScopeKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    move-object v6, p1

    move-object p1, p0

    move-object p0, v6

    :goto_0
    check-cast p0, Landroidx/compose/runtime/ProduceStateScopeImpl;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ProduceStateScopeImpl;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
