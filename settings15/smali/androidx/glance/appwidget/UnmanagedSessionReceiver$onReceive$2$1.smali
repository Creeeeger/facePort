.class final Landroidx/glance/appwidget/UnmanagedSessionReceiver$onReceive$2$1;
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

    iput-object p2, p0, Landroidx/glance/appwidget/UnmanagedSessionReceiver$onReceive$2$1;->$manager:Landroid/appwidget/AppWidgetManager;

    iput p1, p0, Landroidx/glance/appwidget/UnmanagedSessionReceiver$onReceive$2$1;->$widgetId:I

    iput-object p4, p0, Landroidx/glance/appwidget/UnmanagedSessionReceiver$onReceive$2$1;->$intent:Landroid/content/Intent;

    iput-object p3, p0, Landroidx/glance/appwidget/UnmanagedSessionReceiver$onReceive$2$1;->$context:Landroid/content/Context;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance p1, Landroidx/glance/appwidget/UnmanagedSessionReceiver$onReceive$2$1;

    iget-object v2, p0, Landroidx/glance/appwidget/UnmanagedSessionReceiver$onReceive$2$1;->$manager:Landroid/appwidget/AppWidgetManager;

    iget v1, p0, Landroidx/glance/appwidget/UnmanagedSessionReceiver$onReceive$2$1;->$widgetId:I

    iget-object v4, p0, Landroidx/glance/appwidget/UnmanagedSessionReceiver$onReceive$2$1;->$intent:Landroid/content/Intent;

    iget-object v3, p0, Landroidx/glance/appwidget/UnmanagedSessionReceiver$onReceive$2$1;->$context:Landroid/content/Context;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroidx/glance/appwidget/UnmanagedSessionReceiver$onReceive$2$1;-><init>(ILandroid/appwidget/AppWidgetManager;Landroid/content/Context;Landroid/content/Intent;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/glance/appwidget/UnmanagedSessionReceiver$onReceive$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Landroidx/glance/appwidget/UnmanagedSessionReceiver$onReceive$2$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Landroidx/glance/appwidget/UnmanagedSessionReceiver$onReceive$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Landroidx/glance/appwidget/UnmanagedSessionReceiver$onReceive$2$1;->label:I

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    if-ne v0, p0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/glance/appwidget/UnmanagedSessionReceiver$onReceive$2$1;->$manager:Landroid/appwidget/AppWidgetManager;

    iget v0, p0, Landroidx/glance/appwidget/UnmanagedSessionReceiver$onReceive$2$1;->$widgetId:I

    invoke-virtual {p1, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget-object v0, p0, Landroidx/glance/appwidget/UnmanagedSessionReceiver$onReceive$2$1;->$manager:Landroid/appwidget/AppWidgetManager;

    iget v1, p0, Landroidx/glance/appwidget/UnmanagedSessionReceiver$onReceive$2$1;->$widgetId:I

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/glance/appwidget/UnmanagedSessionReceiver$onReceive$2$1;->$intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget p0, p0, Landroidx/glance/appwidget/UnmanagedSessionReceiver$onReceive$2$1;->$widgetId:I

    const-string v1, "onReceive : "

    const-string v2, ", "

    invoke-static {p0, v1, v0, v2, v2}, Landroidx/glance/appwidget/UnmanagedSessionReceiver$onReceive$2$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UnmanagedSession"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
