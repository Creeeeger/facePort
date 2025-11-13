.class final Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$updateWidgetOrder$1;
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
.field final synthetic $widgetIdToPriorityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl;Ljava/util/Map;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$updateWidgetOrder$1;->this$0:Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl;

    iput-object p2, p0, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$updateWidgetOrder$1;->$widgetIdToPriorityMap:Ljava/util/Map;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$updateWidgetOrder$1;

    iget-object v0, p0, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$updateWidgetOrder$1;->this$0:Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl;

    iget-object p0, p0, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$updateWidgetOrder$1;->$widgetIdToPriorityMap:Ljava/util/Map;

    invoke-direct {p1, v0, p0, p2}, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$updateWidgetOrder$1;-><init>(Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl;Ljava/util/Map;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$updateWidgetOrder$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$updateWidgetOrder$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$updateWidgetOrder$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    const/4 v0, 0x0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$updateWidgetOrder$1;->label:I

    if-nez v1, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$updateWidgetOrder$1;->this$0:Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl;

    iget-object p1, p1, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl;->communalWidgetDao:Lcom/android/systemui/communal/data/db/CommunalWidgetDao;

    iget-object v1, p0, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$updateWidgetOrder$1;->$widgetIdToPriorityMap:Ljava/util/Map;

    check-cast p1, Lcom/android/systemui/communal/data/db/CommunalWidgetDao_Impl;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/systemui/communal/data/db/CommunalWidgetDao_Impl$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1, v1, v0}, Lcom/android/systemui/communal/data/db/CommunalWidgetDao_Impl$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/communal/data/db/CommunalWidgetDao_Impl;Ljava/lang/Object;I)V

    const/4 v1, 0x1

    iget-object p1, p1, Lcom/android/systemui/communal/data/db/CommunalWidgetDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-static {p1, v0, v1, v2}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$updateWidgetOrder$1;->this$0:Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl;

    iget-object p1, p1, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl;->logger:Lcom/android/systemui/log/core/Logger;

    sget-object v0, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$updateWidgetOrder$1$1;->INSTANCE:Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$updateWidgetOrder$1$1;

    iget-object v1, p0, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$updateWidgetOrder$1;->$widgetIdToPriorityMap:Ljava/util/Map;

    sget-object v2, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    invoke-virtual {p1}, Lcom/android/systemui/log/core/Logger;->getBuffer()Lcom/android/systemui/log/core/MessageBuffer;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/systemui/log/core/Logger;->getTag()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v0, v5}, Lcom/android/systemui/log/core/MessageBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/systemui/log/core/LogMessage;->setStr1(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/systemui/log/core/Logger;->getBuffer()Lcom/android/systemui/log/core/MessageBuffer;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/android/systemui/log/core/MessageBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iget-object p0, p0, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl$updateWidgetOrder$1;->this$0:Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl;

    iget-object p0, p0, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl;->backupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {p0}, Landroid/app/backup/BackupManager;->dataChanged()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
