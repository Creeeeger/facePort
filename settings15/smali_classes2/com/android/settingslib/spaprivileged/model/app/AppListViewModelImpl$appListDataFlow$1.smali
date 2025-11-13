.class final Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$appListDataFlow$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function4;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u00032\u0012\u0010\u0004\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\u00060\u00052\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u008a@"
    }
    d2 = {
        "<anonymous>",
        "Lcom/android/settingslib/spaprivileged/model/app/AppListData;",
        "T",
        "Lcom/android/settingslib/spaprivileged/model/app/AppRecord;",
        "appEntries",
        "",
        "Lcom/android/settingslib/spaprivileged/model/app/AppEntry;",
        "listModel",
        "Lcom/android/settingslib/spaprivileged/model/app/AppListModel;",
        "option",
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
.field synthetic I$0:I

.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/util/List;

    check-cast p2, Lcom/android/settingslib/spaprivileged/model/app/AppListModel;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p0

    check-cast p4, Lkotlin/coroutines/Continuation;

    new-instance p3, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$appListDataFlow$1;

    const/4 v0, 0x4

    invoke-direct {p3, v0, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    iput-object p1, p3, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$appListDataFlow$1;->L$0:Ljava/lang/Object;

    iput-object p2, p3, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$appListDataFlow$1;->L$1:Ljava/lang/Object;

    iput p0, p3, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$appListDataFlow$1;->I$0:I

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p3, p0}, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$appListDataFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$appListDataFlow$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$appListDataFlow$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$appListDataFlow$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/settingslib/spaprivileged/model/app/AppListModel;

    iget p0, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$appListDataFlow$1;->I$0:I

    new-instance v1, Lcom/android/settingslib/spaprivileged/model/app/AppListData;

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {v0, p0}, Lcom/android/settingslib/spaprivileged/model/app/AppListModel;->getComparator(I)Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Lcom/android/settingslib/spaprivileged/model/app/AppListData;-><init>(ILjava/util/List;)V

    return-object v1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
