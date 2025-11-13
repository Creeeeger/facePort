.class final Lcom/android/systemui/communal/widgets/WidgetConfigurationController$configureWidget$2;
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
.field final synthetic $appWidgetId:I

.field label:I

.field final synthetic this$0:Lcom/android/systemui/communal/widgets/WidgetConfigurationController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/communal/widgets/WidgetConfigurationController;ILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/communal/widgets/WidgetConfigurationController;",
            "I",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/communal/widgets/WidgetConfigurationController$configureWidget$2;->this$0:Lcom/android/systemui/communal/widgets/WidgetConfigurationController;

    iput p2, p0, Lcom/android/systemui/communal/widgets/WidgetConfigurationController$configureWidget$2;->$appWidgetId:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/android/systemui/communal/widgets/WidgetConfigurationController$configureWidget$2;

    iget-object v0, p0, Lcom/android/systemui/communal/widgets/WidgetConfigurationController$configureWidget$2;->this$0:Lcom/android/systemui/communal/widgets/WidgetConfigurationController;

    iget p0, p0, Lcom/android/systemui/communal/widgets/WidgetConfigurationController$configureWidget$2;->$appWidgetId:I

    invoke-direct {p1, v0, p0, p2}, Lcom/android/systemui/communal/widgets/WidgetConfigurationController$configureWidget$2;-><init>(Lcom/android/systemui/communal/widgets/WidgetConfigurationController;ILkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/communal/widgets/WidgetConfigurationController$configureWidget$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/communal/widgets/WidgetConfigurationController$configureWidget$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/communal/widgets/WidgetConfigurationController$configureWidget$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/communal/widgets/WidgetConfigurationController$configureWidget$2;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/communal/widgets/WidgetConfigurationController$configureWidget$2;->this$0:Lcom/android/systemui/communal/widgets/WidgetConfigurationController;

    sget-object v1, Lcom/android/systemui/communal/widgets/WidgetConfigurationController;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    invoke-virtual {p1}, Lcom/android/systemui/communal/widgets/WidgetConfigurationController;->getResult()Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/communal/widgets/WidgetConfigurationController$configureWidget$2;->this$0:Lcom/android/systemui/communal/widgets/WidgetConfigurationController;

    invoke-static {}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default()Lkotlinx/coroutines/CompletableDeferredImpl;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/android/systemui/communal/widgets/WidgetConfigurationController;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    aget-object v4, v4, v2

    iget-object v5, p1, Lcom/android/systemui/communal/widgets/WidgetConfigurationController;->result$delegate:Lkotlin/properties/ReadWriteProperty;

    invoke-interface {v5, p1, v4, v1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    invoke-virtual {p1, v2}, Landroid/app/ActivityOptions;->setSplashScreenStyle(I)Landroid/app/ActivityOptions;

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/communal/widgets/WidgetConfigurationController$configureWidget$2;->this$0:Lcom/android/systemui/communal/widgets/WidgetConfigurationController;

    iget-object v4, v1, Lcom/android/systemui/communal/widgets/WidgetConfigurationController;->appWidgetHost:Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost;

    iget-object v5, v1, Lcom/android/systemui/communal/widgets/WidgetConfigurationController;->activity:Landroidx/activity/ComponentActivity;

    iget v6, p0, Lcom/android/systemui/communal/widgets/WidgetConfigurationController$configureWidget$2;->$appWidgetId:I

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v9

    const/4 v7, 0x0

    const/16 v8, 0x64

    invoke-virtual/range {v4 .. v9}, Landroid/appwidget/AppWidgetHost;->startAppWidgetConfigureActivityForResult(Landroid/app/Activity;IIILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p1, p0, Lcom/android/systemui/communal/widgets/WidgetConfigurationController$configureWidget$2;->this$0:Lcom/android/systemui/communal/widgets/WidgetConfigurationController;

    invoke-virtual {p1}, Lcom/android/systemui/communal/widgets/WidgetConfigurationController;->getResult()Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    check-cast p1, Lkotlinx/coroutines/CompletableDeferredImpl;

    invoke-virtual {p1, v1}, Lkotlinx/coroutines/JobSupport;->makeCompleting$external__kotlinx_coroutines__linux_glibc_common__kotlinx_coroutines_host(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/communal/widgets/WidgetConfigurationController$configureWidget$2;->this$0:Lcom/android/systemui/communal/widgets/WidgetConfigurationController;

    invoke-virtual {p1}, Lcom/android/systemui/communal/widgets/WidgetConfigurationController;->getResult()Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p1

    if-eqz p1, :cond_4

    iput v3, p0, Lcom/android/systemui/communal/widgets/WidgetConfigurationController$configureWidget$2;->label:I

    check-cast p1, Lkotlinx/coroutines/CompletableDeferredImpl;

    invoke-virtual {p1, p0}, Lkotlinx/coroutines/JobSupport;->awaitInternal(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_2

    :cond_4
    move p1, v2

    :goto_2
    iget-object p0, p0, Lcom/android/systemui/communal/widgets/WidgetConfigurationController$configureWidget$2;->this$0:Lcom/android/systemui/communal/widgets/WidgetConfigurationController;

    sget-object v0, Lcom/android/systemui/communal/widgets/WidgetConfigurationController;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/communal/widgets/WidgetConfigurationController;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    aget-object v0, v0, v2

    iget-object v1, p0, Lcom/android/systemui/communal/widgets/WidgetConfigurationController;->result$delegate:Lkotlin/properties/ReadWriteProperty;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v0, v2}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "There is already a pending configuration"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
