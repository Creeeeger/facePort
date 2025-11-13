.class final Landroidx/glance/appwidget/UnmanagedSessionReceiver$onReceive$2;
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
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $intent:Landroid/content/Intent;

.field final synthetic $manager:Landroid/appwidget/AppWidgetManager;

.field final synthetic $widgetId:I

.field label:I


# direct methods
.method public constructor <init>(ILandroid/appwidget/AppWidgetManager;Landroid/content/Context;Landroid/content/Intent;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput p1, p0, Landroidx/glance/appwidget/UnmanagedSessionReceiver$onReceive$2;->$widgetId:I

    iput-object p2, p0, Landroidx/glance/appwidget/UnmanagedSessionReceiver$onReceive$2;->$manager:Landroid/appwidget/AppWidgetManager;

    iput-object p4, p0, Landroidx/glance/appwidget/UnmanagedSessionReceiver$onReceive$2;->$intent:Landroid/content/Intent;

    iput-object p3, p0, Landroidx/glance/appwidget/UnmanagedSessionReceiver$onReceive$2;->$context:Landroid/content/Context;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance p1, Landroidx/glance/appwidget/UnmanagedSessionReceiver$onReceive$2;

    iget v1, p0, Landroidx/glance/appwidget/UnmanagedSessionReceiver$onReceive$2;->$widgetId:I

    iget-object v2, p0, Landroidx/glance/appwidget/UnmanagedSessionReceiver$onReceive$2;->$manager:Landroid/appwidget/AppWidgetManager;

    iget-object v4, p0, Landroidx/glance/appwidget/UnmanagedSessionReceiver$onReceive$2;->$intent:Landroid/content/Intent;

    iget-object v3, p0, Landroidx/glance/appwidget/UnmanagedSessionReceiver$onReceive$2;->$context:Landroid/content/Context;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroidx/glance/appwidget/UnmanagedSessionReceiver$onReceive$2;-><init>(ILandroid/appwidget/AppWidgetManager;Landroid/content/Context;Landroid/content/Intent;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/glance/appwidget/UnmanagedSessionReceiver$onReceive$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Landroidx/glance/appwidget/UnmanagedSessionReceiver$onReceive$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Landroidx/glance/appwidget/UnmanagedSessionReceiver$onReceive$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Landroidx/glance/appwidget/UnmanagedSessionReceiver$onReceive$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :try_start_1
    sget p1, Lkotlin/time/Duration;->$r8$clinit:I

    sget-object p1, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    const/4 v1, 0x3

    invoke-static {v1, p1}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v3

    new-instance p1, Landroidx/glance/appwidget/UnmanagedSessionReceiver$onReceive$2$1;

    iget-object v7, p0, Landroidx/glance/appwidget/UnmanagedSessionReceiver$onReceive$2;->$manager:Landroid/appwidget/AppWidgetManager;

    iget v6, p0, Landroidx/glance/appwidget/UnmanagedSessionReceiver$onReceive$2;->$widgetId:I

    iget-object v9, p0, Landroidx/glance/appwidget/UnmanagedSessionReceiver$onReceive$2;->$intent:Landroid/content/Intent;

    iget-object v8, p0, Landroidx/glance/appwidget/UnmanagedSessionReceiver$onReceive$2;->$context:Landroid/content/Context;

    const/4 v10, 0x0

    move-object v5, p1

    invoke-direct/range {v5 .. v10}, Landroidx/glance/appwidget/UnmanagedSessionReceiver$onReceive$2$1;-><init>(ILandroid/appwidget/AppWidgetManager;Landroid/content/Context;Landroid/content/Intent;Lkotlin/coroutines/Continuation;)V

    iput v2, p0, Landroidx/glance/appwidget/UnmanagedSessionReceiver$onReceive$2;->label:I

    invoke-static {v3, v4}, Lkotlinx/coroutines/DelayKt;->toDelayMillis-LRDsOJo(J)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_2

    new-instance v3, Lkotlinx/coroutines/TimeoutCoroutine;

    invoke-direct {v3, v1, v2, p0}, Lkotlinx/coroutines/TimeoutCoroutine;-><init>(JLkotlin/coroutines/Continuation;)V

    invoke-static {v3, p1}, Lkotlinx/coroutines/TimeoutKt;->setupTimeout(Lkotlinx/coroutines/TimeoutCoroutine;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_3

    return-object v0

    :cond_2
    new-instance p1, Lkotlinx/coroutines/TimeoutCancellationException;

    const-string v0, "Timed out immediately"

    invoke-direct {p1, v0}, Lkotlinx/coroutines/TimeoutCancellationException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    iget p0, p0, Landroidx/glance/appwidget/UnmanagedSessionReceiver$onReceive$2;->$widgetId:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Finished "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " force update by "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UnmanagedSession"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
