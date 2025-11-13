.class final Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsPageProvider$generatePreferenceSummary$1$1;
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

.field label:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/compose/runtime/ProduceStateScope;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsPageProvider$generatePreferenceSummary$1$1;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsPageProvider$generatePreferenceSummary$1$1;->$$this$produceState:Landroidx/compose/runtime/ProduceStateScope;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsPageProvider$generatePreferenceSummary$1$1;

    iget-object v0, p0, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsPageProvider$generatePreferenceSummary$1$1;->$context:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsPageProvider$generatePreferenceSummary$1$1;->$$this$produceState:Landroidx/compose/runtime/ProduceStateScope;

    invoke-direct {p1, v0, p0, p2}, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsPageProvider$generatePreferenceSummary$1$1;-><init>(Landroid/content/Context;Landroidx/compose/runtime/ProduceStateScope;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsPageProvider$generatePreferenceSummary$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsPageProvider$generatePreferenceSummary$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsPageProvider$generatePreferenceSummary$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsPageProvider$generatePreferenceSummary$1$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-object p1, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsPageProvider;->backgroundInstallService:Landroid/content/pm/IBackgroundInstallControlService;

    iget-object v0, p0, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsPageProvider$generatePreferenceSummary$1$1;->$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const-wide/32 v1, 0x20000

    invoke-interface {p1, v1, v2, v0}, Landroid/content/pm/IBackgroundInstallControlService;->getBackgroundInstalledPackages(JI)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v0, p0, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsPageProvider$generatePreferenceSummary$1$1;->$$this$produceState:Landroidx/compose/runtime/ProduceStateScope;

    iget-object p0, p0, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsPageProvider$generatePreferenceSummary$1$1;->$context:Landroid/content/Context;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance p1, Lkotlin/Pair;

    const-string v2, "count"

    invoke-direct {p1, v2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {p1}, [Lkotlin/Pair;

    move-result-object p1

    const v1, 0x7f140565

    invoke-static {p0, v1, p1}, Lcom/android/settingslib/spa/framework/util/MessageFormatsKt;->formatString(Landroid/content/Context;I[Lkotlin/Pair;)Ljava/lang/String;

    move-result-object p0

    check-cast v0, Landroidx/compose/runtime/ProduceStateScopeImpl;

    invoke-virtual {v0, p0}, Landroidx/compose/runtime/ProduceStateScopeImpl;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
