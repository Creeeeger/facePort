.class final Landroidx/window/area/WindowAreaControllerImpl$transferActivityToWindowArea$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/window/area/WindowAreaControllerImpl;->transferActivityToWindowArea(Landroid/os/Binder;Landroid/app/Activity;Ljava/util/concurrent/Executor;Landroidx/window/area/WindowAreaSessionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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
.field final synthetic $activity:Landroid/app/Activity;

.field final synthetic $executor:Ljava/util/concurrent/Executor;

.field final synthetic $windowAreaSessionCallback:Landroidx/window/area/WindowAreaSessionCallback;

.field label:I

.field final synthetic this$0:Landroidx/window/area/WindowAreaControllerImpl;


# direct methods
.method public constructor <init>(Landroidx/window/area/WindowAreaControllerImpl;Landroid/app/Activity;Ljava/util/concurrent/Executor;Landroidx/window/area/WindowAreaSessionCallback;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/window/area/WindowAreaControllerImpl;",
            "Landroid/app/Activity;",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/window/area/WindowAreaSessionCallback;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/window/area/WindowAreaControllerImpl$transferActivityToWindowArea$2;->this$0:Landroidx/window/area/WindowAreaControllerImpl;

    iput-object p2, p0, Landroidx/window/area/WindowAreaControllerImpl$transferActivityToWindowArea$2;->$activity:Landroid/app/Activity;

    iput-object p3, p0, Landroidx/window/area/WindowAreaControllerImpl$transferActivityToWindowArea$2;->$executor:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Landroidx/window/area/WindowAreaControllerImpl$transferActivityToWindowArea$2;->$windowAreaSessionCallback:Landroidx/window/area/WindowAreaSessionCallback;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Lkotlin/coroutines/Continuation;"
        }
    .end annotation

    new-instance p1, Landroidx/window/area/WindowAreaControllerImpl$transferActivityToWindowArea$2;

    iget-object v1, p0, Landroidx/window/area/WindowAreaControllerImpl$transferActivityToWindowArea$2;->this$0:Landroidx/window/area/WindowAreaControllerImpl;

    iget-object v2, p0, Landroidx/window/area/WindowAreaControllerImpl$transferActivityToWindowArea$2;->$activity:Landroid/app/Activity;

    iget-object v3, p0, Landroidx/window/area/WindowAreaControllerImpl$transferActivityToWindowArea$2;->$executor:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Landroidx/window/area/WindowAreaControllerImpl$transferActivityToWindowArea$2;->$windowAreaSessionCallback:Landroidx/window/area/WindowAreaSessionCallback;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroidx/window/area/WindowAreaControllerImpl$transferActivityToWindowArea$2;-><init>(Landroidx/window/area/WindowAreaControllerImpl;Landroid/app/Activity;Ljava/util/concurrent/Executor;Landroidx/window/area/WindowAreaSessionCallback;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/window/area/WindowAreaControllerImpl$transferActivityToWindowArea$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/window/area/WindowAreaControllerImpl$transferActivityToWindowArea$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Landroidx/window/area/WindowAreaControllerImpl$transferActivityToWindowArea$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Landroidx/window/area/WindowAreaControllerImpl$transferActivityToWindowArea$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Landroidx/window/area/WindowAreaControllerImpl$transferActivityToWindowArea$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/window/area/WindowAreaControllerImpl$transferActivityToWindowArea$2;->this$0:Landroidx/window/area/WindowAreaControllerImpl;

    invoke-virtual {p1}, Landroidx/window/area/WindowAreaControllerImpl;->getWindowAreaInfos()Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput v2, p0, Landroidx/window/area/WindowAreaControllerImpl$transferActivityToWindowArea$2;->label:I

    invoke-static {p1, p0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    iget-object p1, p0, Landroidx/window/area/WindowAreaControllerImpl$transferActivityToWindowArea$2;->this$0:Landroidx/window/area/WindowAreaControllerImpl;

    iget-object v0, p0, Landroidx/window/area/WindowAreaControllerImpl$transferActivityToWindowArea$2;->$activity:Landroid/app/Activity;

    iget-object v1, p0, Landroidx/window/area/WindowAreaControllerImpl$transferActivityToWindowArea$2;->$executor:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Landroidx/window/area/WindowAreaControllerImpl$transferActivityToWindowArea$2;->$windowAreaSessionCallback:Landroidx/window/area/WindowAreaSessionCallback;

    invoke-static {p1, v0, v1, p0}, Landroidx/window/area/WindowAreaControllerImpl;->access$startRearDisplayMode(Landroidx/window/area/WindowAreaControllerImpl;Landroid/app/Activity;Ljava/util/concurrent/Executor;Landroidx/window/area/WindowAreaSessionCallback;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
