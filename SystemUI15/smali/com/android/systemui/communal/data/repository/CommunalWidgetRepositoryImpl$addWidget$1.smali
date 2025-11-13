.class final Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$addWidget$1;
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
.field final synthetic $configurator:Lcom/android/systemui/communal/widgets/WidgetConfigurator;

.field final synthetic $priority:I

.field final synthetic $provider:Landroid/content/ComponentName;

.field final synthetic $user:Landroid/os/UserHandle;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl;Landroid/content/ComponentName;Landroid/os/UserHandle;Lcom/android/systemui/communal/widgets/WidgetConfigurator;ILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl;",
            "Landroid/content/ComponentName;",
            "Landroid/os/UserHandle;",
            "Lcom/android/systemui/communal/widgets/WidgetConfigurator;",
            "I",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$addWidget$1;->this$0:Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl;

    iput-object p2, p0, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$addWidget$1;->$provider:Landroid/content/ComponentName;

    iput-object p3, p0, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$addWidget$1;->$user:Landroid/os/UserHandle;

    iput-object p4, p0, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$addWidget$1;->$configurator:Lcom/android/systemui/communal/widgets/WidgetConfigurator;

    iput p5, p0, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$addWidget$1;->$priority:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    new-instance p1, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$addWidget$1;

    iget-object v1, p0, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$addWidget$1;->this$0:Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl;

    iget-object v2, p0, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$addWidget$1;->$provider:Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$addWidget$1;->$user:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$addWidget$1;->$configurator:Lcom/android/systemui/communal/widgets/WidgetConfigurator;

    iget v5, p0, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$addWidget$1;->$priority:I

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$addWidget$1;-><init>(Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl;Landroid/content/ComponentName;Landroid/os/UserHandle;Lcom/android/systemui/communal/widgets/WidgetConfigurator;ILkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$addWidget$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$addWidget$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$addWidget$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$addWidget$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$addWidget$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$addWidget$1;->this$0:Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl;

    iget-object p1, p1, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl;->communalWidgetHost:Lcom/android/systemui/communal/widgets/CommunalWidgetHost;

    iget-object v1, p0, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$addWidget$1;->$provider:Landroid/content/ComponentName;

    iget-object v6, p0, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$addWidget$1;->$user:Landroid/os/UserHandle;

    invoke-virtual {p1, v1, v6}, Lcom/android/systemui/communal/widgets/CommunalWidgetHost;->allocateIdAndBindWidget(Landroid/content/ComponentName;Landroid/os/UserHandle;)Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$addWidget$1;->this$0:Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl;

    iget-object p1, p1, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl;->logger:Lcom/android/systemui/log/core/Logger;

    iget-object p0, p0, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$addWidget$1;->$provider:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Failed to allocate widget id to "

    invoke-static {v0, p0}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v2, v5, v2}, Lcom/android/systemui/log/core/Logger;->e$default(Lcom/android/systemui/log/core/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$addWidget$1;->this$0:Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl;

    iget-object v1, v1, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl;->communalWidgetHost:Lcom/android/systemui/communal/widgets/CommunalWidgetHost;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v1, v1, Lcom/android/systemui/communal/widgets/CommunalWidgetHost;->appWidgetManager:Ljava/util/Optional;

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/appwidget/AppWidgetManager;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v6}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    goto :goto_0

    :cond_3
    move-object v1, v2

    :goto_0
    iget-object v6, p0, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$addWidget$1;->$configurator:Lcom/android/systemui/communal/widgets/WidgetConfigurator;

    if-eqz v6, :cond_7

    if-eqz v1, :cond_7

    sget-object v6, Lcom/android/systemui/communal/widgets/CommunalWidgetHost;->Companion:Lcom/android/systemui/communal/widgets/CommunalWidgetHost$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v6, v1, Landroid/appwidget/AppWidgetProviderInfo;->widgetFeatures:I

    and-int/lit8 v7, v6, 0x4

    if-eqz v7, :cond_4

    and-int/2addr v6, v3

    if-eqz v6, :cond_4

    move v6, v3

    goto :goto_1

    :cond_4
    move v6, v4

    :goto_1
    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v1, :cond_7

    if-nez v6, :cond_7

    iget-object v1, p0, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$addWidget$1;->this$0:Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl;

    iget-object v1, v1, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl;->logger:Lcom/android/systemui/log/core/Logger;

    iget-object v6, p0, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$addWidget$1;->$provider:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Widget "

    const-string v8, " requires configuration."

    invoke-static {v7, v6, v8}, Landroidx/compose/foundation/gestures/ContentInViewNode$Request$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6, v2, v5, v2}, Lcom/android/systemui/log/core/Logger;->i$default(Lcom/android/systemui/log/core/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$addWidget$1;->$configurator:Lcom/android/systemui/communal/widgets/WidgetConfigurator;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput-object p1, p0, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$addWidget$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$addWidget$1;->label:I

    check-cast v1, Lcom/android/systemui/communal/widgets/WidgetConfigurationController;

    invoke-virtual {v1, v6, p0}, Lcom/android/systemui/communal/widgets/WidgetConfigurationController;->configureWidget(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v1, v0, :cond_5

    return-object v0

    :cond_5
    move-object v0, p1

    move-object p1, v1

    :goto_2
    :try_start_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :goto_3
    move-object v9, v0

    move-object v0, p1

    move-object p1, v9

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :goto_4
    iget-object v1, p0, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$addWidget$1;->this$0:Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl;

    iget-object v1, v1, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl;->logger:Lcom/android/systemui/log/core/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Error during widget configuration, cleaning up id "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, p1}, Lcom/android/systemui/log/core/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_6

    move p1, v4

    goto :goto_5

    :cond_6
    iget-object p0, p0, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$addWidget$1;->this$0:Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl;

    iget-object p0, p0, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl;->appWidgetHost:Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost;->deleteAppWidgetId(I)V

    throw p1

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$addWidget$1;->this$0:Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl;

    iget-object v0, v0, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl;->logger:Lcom/android/systemui/log/core/Logger;

    iget-object v1, p0, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$addWidget$1;->$provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    const-string v6, "Skipping configuration for "

    invoke-static {v6, v1}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2, v5, v2}, Lcom/android/systemui/log/core/Logger;->i$default(Lcom/android/systemui/log/core/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    move-object v0, p1

    move p1, v3

    :goto_5
    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$addWidget$1;->this$0:Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl;

    iget-object p1, p1, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl;->communalWidgetDao:Lcom/android/systemui/communal/data/db/CommunalWidgetDao;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$addWidget$1;->$provider:Landroid/content/ComponentName;

    iget v6, p0, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$addWidget$1;->$priority:I

    check-cast p1, Lcom/android/systemui/communal/data/db/CommunalWidgetDao_Impl;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lcom/android/systemui/communal/data/db/CommunalWidgetDao_Impl$$ExternalSyntheticLambda0;

    invoke-direct {v7, p1, v0, v1, v6}, Lcom/android/systemui/communal/data/db/CommunalWidgetDao_Impl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/communal/data/db/CommunalWidgetDao_Impl;ILandroid/content/ComponentName;I)V

    iget-object p1, p1, Lcom/android/systemui/communal/data/db/CommunalWidgetDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-static {p1, v4, v3, v7}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    iget-object p1, p0, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$addWidget$1;->this$0:Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl;

    iget-object p1, p1, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl;->backupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {p1}, Landroid/app/backup/BackupManager;->dataChanged()V

    goto :goto_6

    :cond_8
    iget-object p1, p0, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$addWidget$1;->this$0:Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl;

    iget-object p1, p1, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl;->appWidgetHost:Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost;->deleteAppWidgetId(I)V

    :goto_6
    iget-object p1, p0, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$addWidget$1;->this$0:Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl;

    iget-object p1, p1, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl;->logger:Lcom/android/systemui/log/core/Logger;

    iget-object v0, p0, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$addWidget$1;->$provider:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    iget p0, p0, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$addWidget$1;->$priority:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Added widget "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " at position "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v2, v5, v2}, Lcom/android/systemui/log/core/Logger;->i$default(Lcom/android/systemui/log/core/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
