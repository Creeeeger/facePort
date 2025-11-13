.class final Lcom/android/settings/spa/app/appinfo/AppBatteryPresenter$Updater$2$1$1;
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
.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/settings/spa/app/appinfo/AppBatteryPresenter;


# direct methods
.method public constructor <init>(Lcom/android/settings/spa/app/appinfo/AppBatteryPresenter;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppBatteryPresenter$Updater$2$1$1;->this$0:Lcom/android/settings/spa/app/appinfo/AppBatteryPresenter;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/android/settings/spa/app/appinfo/AppBatteryPresenter$Updater$2$1$1;

    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/AppBatteryPresenter$Updater$2$1$1;->this$0:Lcom/android/settings/spa/app/appinfo/AppBatteryPresenter;

    invoke-direct {p1, p0, p2}, Lcom/android/settings/spa/app/appinfo/AppBatteryPresenter$Updater$2$1$1;-><init>(Lcom/android/settings/spa/app/appinfo/AppBatteryPresenter;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/spa/app/appinfo/AppBatteryPresenter$Updater$2$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/settings/spa/app/appinfo/AppBatteryPresenter$Updater$2$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/settings/spa/app/appinfo/AppBatteryPresenter$Updater$2$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/settings/spa/app/appinfo/AppBatteryPresenter$Updater$2$1$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/AppBatteryPresenter$Updater$2$1$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/settings/spa/app/appinfo/AppBatteryPresenter;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppBatteryPresenter$Updater$2$1$1;->this$0:Lcom/android/settings/spa/app/appinfo/AppBatteryPresenter;

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppBatteryPresenter$Updater$2$1$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/android/settings/spa/app/appinfo/AppBatteryPresenter$Updater$2$1$1;->label:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lkotlinx/coroutines/Dispatchers;->IO:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    new-instance v2, Lcom/android/settings/spa/app/appinfo/AppBatteryPresenter$getBatteryDiffEntry$2;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lcom/android/settings/spa/app/appinfo/AppBatteryPresenter$getBatteryDiffEntry$2;-><init>(Lcom/android/settings/spa/app/appinfo/AppBatteryPresenter;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, v2, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    move-object v4, p1

    move-object p1, p0

    move-object p0, v4

    :goto_0
    new-instance v0, Lcom/android/settings/spa/app/appinfo/LoadingState$Done;

    invoke-direct {v0, p1}, Lcom/android/settings/spa/app/appinfo/LoadingState$Done;-><init>(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/AppBatteryPresenter;->batteryDiffEntryState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
