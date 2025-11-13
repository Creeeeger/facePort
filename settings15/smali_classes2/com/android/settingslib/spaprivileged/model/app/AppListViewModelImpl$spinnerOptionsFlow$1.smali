.class final Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$spinnerOptionsFlow$1;
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
        "\u0000\u0018\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001\"\u0008\u0008\u0000\u0010\u0003*\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u0002H\u00030\u00012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u0002H\u00030\u0007H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/android/settingslib/spa/widget/ui/SpinnerOption;",
        "T",
        "Lcom/android/settingslib/spaprivileged/model/app/AppRecord;",
        "recordList",
        "listModel",
        "Lcom/android/settingslib/spaprivileged/model/app/AppListModel;"
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
.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/util/List;

    check-cast p2, Lcom/android/settingslib/spaprivileged/model/app/AppListModel;

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance p0, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$spinnerOptionsFlow$1;

    const/4 v0, 0x3

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    iput-object p1, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$spinnerOptionsFlow$1;->L$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$spinnerOptionsFlow$1;->L$1:Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$spinnerOptionsFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$spinnerOptionsFlow$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$spinnerOptionsFlow$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$spinnerOptionsFlow$1;->L$1:Ljava/lang/Object;

    check-cast p0, Lcom/android/settingslib/spaprivileged/model/app/AppListModel;

    invoke-interface {p0, p1}, Lcom/android/settingslib/spaprivileged/model/app/AppListModel;->getSpinnerOptions(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
