.class final Lcom/android/settingslib/satellite/SatelliteDialogUtils$mayStartSatelliteWarningDialog$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic $allowClick:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $type:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/settingslib/satellite/SatelliteDialogUtils$mayStartSatelliteWarningDialog$1;->$context:Landroid/content/Context;

    iput p2, p0, Lcom/android/settingslib/satellite/SatelliteDialogUtils$mayStartSatelliteWarningDialog$1;->$type:I

    iput-object p3, p0, Lcom/android/settingslib/satellite/SatelliteDialogUtils$mayStartSatelliteWarningDialog$1;->$allowClick:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/android/settingslib/satellite/SatelliteDialogUtils$mayStartSatelliteWarningDialog$1;

    iget-object v0, p0, Lcom/android/settingslib/satellite/SatelliteDialogUtils$mayStartSatelliteWarningDialog$1;->$context:Landroid/content/Context;

    iget v1, p0, Lcom/android/settingslib/satellite/SatelliteDialogUtils$mayStartSatelliteWarningDialog$1;->$type:I

    iget-object p0, p0, Lcom/android/settingslib/satellite/SatelliteDialogUtils$mayStartSatelliteWarningDialog$1;->$allowClick:Lkotlin/jvm/functions/Function1;

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/android/settingslib/satellite/SatelliteDialogUtils$mayStartSatelliteWarningDialog$1;-><init>(Landroid/content/Context;ILkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/satellite/SatelliteDialogUtils$mayStartSatelliteWarningDialog$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/satellite/SatelliteDialogUtils$mayStartSatelliteWarningDialog$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/satellite/SatelliteDialogUtils$mayStartSatelliteWarningDialog$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/settingslib/satellite/SatelliteDialogUtils$mayStartSatelliteWarningDialog$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const-string v4, "Error to get satellite status : "

    const-string v5, "SatelliteDialogUtils"

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, Lcom/android/settingslib/satellite/SatelliteDialogUtils$mayStartSatelliteWarningDialog$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v3, p0, Lcom/android/settingslib/satellite/SatelliteDialogUtils$mayStartSatelliteWarningDialog$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlin/jvm/internal/Ref$BooleanRef;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    goto :goto_3

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    new-instance v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    :try_start_1
    sget-object p1, Lcom/android/settingslib/satellite/SatelliteDialogUtils;->INSTANCE:Lcom/android/settingslib/satellite/SatelliteDialogUtils;

    iget-object v6, p0, Lcom/android/settingslib/satellite/SatelliteDialogUtils$mayStartSatelliteWarningDialog$1;->$context:Landroid/content/Context;

    iput-object v1, p0, Lcom/android/settingslib/satellite/SatelliteDialogUtils$mayStartSatelliteWarningDialog$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/android/settingslib/satellite/SatelliteDialogUtils$mayStartSatelliteWarningDialog$1;->L$1:Ljava/lang/Object;

    iput v3, p0, Lcom/android/settingslib/satellite/SatelliteDialogUtils$mayStartSatelliteWarningDialog$1;->label:I

    invoke-static {p1, v6, p0}, Lcom/android/settingslib/satellite/SatelliteDialogUtils;->access$requestIsEnabled(Lcom/android/settingslib/satellite/SatelliteDialogUtils;Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_3

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    move-object v3, v1

    :goto_0
    :try_start_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_3
    move-exception p1

    move-object v3, v1

    goto :goto_1

    :catch_4
    move-exception p1

    move-object v3, v1

    goto :goto_2

    :catch_5
    move-exception p1

    move-object v3, v1

    goto :goto_3

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    iget-boolean p1, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz p1, :cond_4

    sget-object p1, Lcom/android/settingslib/satellite/SatelliteDialogUtils;->INSTANCE:Lcom/android/settingslib/satellite/SatelliteDialogUtils;

    iget-object v1, p0, Lcom/android/settingslib/satellite/SatelliteDialogUtils$mayStartSatelliteWarningDialog$1;->$context:Landroid/content/Context;

    iget v4, p0, Lcom/android/settingslib/satellite/SatelliteDialogUtils$mayStartSatelliteWarningDialog$1;->$type:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {p1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.android.settings"

    const-string v7, "com.android.settings.network.SatelliteWarningDialogActivity"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v5, "dialog_window_type"

    const/16 v6, 0x7d9

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "extra_type_of_satellite_warning_dialog"

    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v4, 0x30000000

    invoke-virtual {p1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_4
    sget-object p1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object p1, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/MainCoroutineDispatcher;

    new-instance v1, Lcom/android/settingslib/satellite/SatelliteDialogUtils$mayStartSatelliteWarningDialog$1$1;

    iget-object v4, p0, Lcom/android/settingslib/satellite/SatelliteDialogUtils$mayStartSatelliteWarningDialog$1;->$allowClick:Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v3, v5}, Lcom/android/settingslib/satellite/SatelliteDialogUtils$mayStartSatelliteWarningDialog$1$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/coroutines/Continuation;)V

    iput-object v5, p0, Lcom/android/settingslib/satellite/SatelliteDialogUtils$mayStartSatelliteWarningDialog$1;->L$0:Ljava/lang/Object;

    iput-object v5, p0, Lcom/android/settingslib/satellite/SatelliteDialogUtils$mayStartSatelliteWarningDialog$1;->L$1:Ljava/lang/Object;

    iput v2, p0, Lcom/android/settingslib/satellite/SatelliteDialogUtils$mayStartSatelliteWarningDialog$1;->label:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_5

    return-object v0

    :cond_5
    :goto_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
