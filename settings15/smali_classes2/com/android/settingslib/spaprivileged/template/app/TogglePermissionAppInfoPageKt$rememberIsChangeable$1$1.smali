.class final Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageKt$rememberIsChangeable$1$1;
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
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003*\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "Lcom/android/settingslib/spaprivileged/model/app/AppRecord;",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        ""
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
.field final synthetic $record:Lcom/android/settingslib/spaprivileged/model/app/AppRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settingslib/spaprivileged/model/app/AppRecord;"
        }
    .end annotation
.end field

.field final synthetic $this_rememberIsChangeable:Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;Lcom/android/settingslib/spaprivileged/model/app/AppRecord;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageKt$rememberIsChangeable$1$1;->$this_rememberIsChangeable:Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;

    iput-object p2, p0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageKt$rememberIsChangeable$1$1;->$record:Lcom/android/settingslib/spaprivileged/model/app/AppRecord;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance v0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageKt$rememberIsChangeable$1$1;

    iget-object v1, p0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageKt$rememberIsChangeable$1$1;->$this_rememberIsChangeable:Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageKt$rememberIsChangeable$1$1;->$record:Lcom/android/settingslib/spaprivileged/model/app/AppRecord;

    invoke-direct {v0, v1, p0, p2}, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageKt$rememberIsChangeable$1$1;-><init>(Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;Lcom/android/settingslib/spaprivileged/model/app/AppRecord;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageKt$rememberIsChangeable$1$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageKt$rememberIsChangeable$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageKt$rememberIsChangeable$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageKt$rememberIsChangeable$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageKt$rememberIsChangeable$1$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageKt$rememberIsChangeable$1$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v1, p0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageKt$rememberIsChangeable$1$1;->$this_rememberIsChangeable:Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;

    iget-object v3, p0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageKt$rememberIsChangeable$1$1;->$record:Lcom/android/settingslib/spaprivileged/model/app/AppRecord;

    const-string v4, "<this>"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "record"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListKt;->isSystemOrRootUid(Lcom/android/settingslib/spaprivileged/model/app/AppRecord;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v1, v3}, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;->isChangeable(Lcom/android/settingslib/spaprivileged/model/app/AppRecord;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput v2, p0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageKt$rememberIsChangeable$1$1;->label:I

    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
