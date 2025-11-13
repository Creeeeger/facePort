.class final Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel$transform$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0001H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListItemModel;",
        "uid",
        "",
        "appList",
        "Landroid/content/pm/ApplicationInfo;"
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
.field synthetic I$0:I

.field synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel;


# direct methods
.method public constructor <init>(Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel$transform$1;->this$0:Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/util/List;

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel$transform$1;

    iget-object p0, p0, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel$transform$1;->this$0:Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel;

    invoke-direct {v0, p0, p3}, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel$transform$1;-><init>(Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel;Lkotlin/coroutines/Continuation;)V

    iput p1, v0, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel$transform$1;->I$0:I

    iput-object p2, v0, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel$transform$1;->L$0:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel$transform$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel$transform$1;->label:I

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

    iget p1, p0, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel$transform$1;->I$0:I

    iget-object v1, p0, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel$transform$1;->L$0:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    iget-object v3, p0, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel$transform$1;->this$0:Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel;

    new-instance v4, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel$transform$1$invokeSuspend$$inlined$asyncMap$1;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5, v3, p1}, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel$transform$1$invokeSuspend$$inlined$asyncMap$1;-><init>(Ljava/lang/Iterable;Lkotlin/coroutines/Continuation;Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel;I)V

    iput v2, p0, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel$transform$1;->label:I

    invoke-static {v4, p0}, Lkotlinx/coroutines/CoroutineScopeKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    return-object p1
.end method
