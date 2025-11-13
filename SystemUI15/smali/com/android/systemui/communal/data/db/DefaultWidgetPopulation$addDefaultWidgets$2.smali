.class final Lcom/android/systemui/communal/data/db/DefaultWidgetPopulation$addDefaultWidgets$2;
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
.field label:I

.field final synthetic this$0:Lcom/android/systemui/communal/data/db/DefaultWidgetPopulation;


# direct methods
.method public constructor <init>(Lcom/android/systemui/communal/data/db/DefaultWidgetPopulation;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/communal/data/db/DefaultWidgetPopulation;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/communal/data/db/DefaultWidgetPopulation$addDefaultWidgets$2;->this$0:Lcom/android/systemui/communal/data/db/DefaultWidgetPopulation;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/android/systemui/communal/data/db/DefaultWidgetPopulation$addDefaultWidgets$2;

    iget-object p0, p0, Lcom/android/systemui/communal/data/db/DefaultWidgetPopulation$addDefaultWidgets$2;->this$0:Lcom/android/systemui/communal/data/db/DefaultWidgetPopulation;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/communal/data/db/DefaultWidgetPopulation$addDefaultWidgets$2;-><init>(Lcom/android/systemui/communal/data/db/DefaultWidgetPopulation;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/communal/data/db/DefaultWidgetPopulation$addDefaultWidgets$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/communal/data/db/DefaultWidgetPopulation$addDefaultWidgets$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/communal/data/db/DefaultWidgetPopulation$addDefaultWidgets$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    const/4 v0, 0x1

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/communal/data/db/DefaultWidgetPopulation$addDefaultWidgets$2;->label:I

    if-nez v1, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/systemui/communal/data/db/DefaultWidgetPopulation$addDefaultWidgets$2;->this$0:Lcom/android/systemui/communal/data/db/DefaultWidgetPopulation;

    iget-object p1, p0, Lcom/android/systemui/communal/data/db/DefaultWidgetPopulation;->defaultWidgets:[Ljava/lang/String;

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v5, p1, v3

    add-int/lit8 v6, v4, 0x1

    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_0

    sget-object v7, Lcom/android/systemui/communal/widgets/CommunalWidgetHost;->Companion:Lcom/android/systemui/communal/widgets/CommunalWidgetHost$Companion;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/systemui/communal/data/db/DefaultWidgetPopulation;->communalWidgetHost:Lcom/android/systemui/communal/widgets/CommunalWidgetHost;

    invoke-virtual {v8, v5, v7}, Lcom/android/systemui/communal/widgets/CommunalWidgetHost;->allocateIdAndBindWidget(Landroid/content/ComponentName;Landroid/os/UserHandle;)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v8, p0, Lcom/android/systemui/communal/data/db/DefaultWidgetPopulation;->communalWidgetDaoProvider:Ljavax/inject/Provider;

    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/communal/data/db/CommunalWidgetDao;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v9, p0, Lcom/android/systemui/communal/data/db/DefaultWidgetPopulation;->defaultWidgets:[Ljava/lang/String;

    array-length v9, v9

    sub-int/2addr v9, v4

    check-cast v8, Lcom/android/systemui/communal/data/db/CommunalWidgetDao_Impl;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/android/systemui/communal/data/db/CommunalWidgetDao_Impl$$ExternalSyntheticLambda0;

    invoke-direct {v4, v8, v7, v5, v9}, Lcom/android/systemui/communal/data/db/CommunalWidgetDao_Impl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/communal/data/db/CommunalWidgetDao_Impl;ILandroid/content/ComponentName;I)V

    iget-object v5, v8, Lcom/android/systemui/communal/data/db/CommunalWidgetDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-static {v5, v2, v0, v4}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    :cond_0
    add-int/2addr v3, v0

    move v4, v6

    goto :goto_0

    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
