.class final Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$scheduleOnFirstLoaded$1;
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
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0007H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "Lcom/android/settingslib/spaprivileged/model/app/AppRecord;",
        "recordList",
        "",
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

.field final synthetic this$0:Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$scheduleOnFirstLoaded$1;->this$0:Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/util/List;

    check-cast p2, Lcom/android/settingslib/spaprivileged/model/app/AppListModel;

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$scheduleOnFirstLoaded$1;

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$scheduleOnFirstLoaded$1;->this$0:Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl;

    invoke-direct {v0, p0, p3}, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$scheduleOnFirstLoaded$1;-><init>(Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$scheduleOnFirstLoaded$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$scheduleOnFirstLoaded$1;->L$1:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$scheduleOnFirstLoaded$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$scheduleOnFirstLoaded$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$scheduleOnFirstLoaded$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$scheduleOnFirstLoaded$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iget-object v1, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$scheduleOnFirstLoaded$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/android/settingslib/spaprivileged/model/app/AppListModel;

    iput-object p1, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$scheduleOnFirstLoaded$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$scheduleOnFirstLoaded$1;->label:I

    invoke-interface {v1, p1, p0}, Lcom/android/settingslib/spaprivileged/model/app/AppListModel;->onFirstLoaded(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    move-object p1, v1

    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$scheduleOnFirstLoaded$1;->this$0:Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/spaprivileged/model/app/AppRecord;

    invoke-interface {v0}, Lcom/android/settingslib/spaprivileged/model/app/AppRecord;->getApp()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl;->labelMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v3, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$getLabel$1;

    invoke-direct {v3, p0, v0}, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$getLabel$1;-><init>(Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl;Landroid/content/pm/ApplicationInfo;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "computeIfAbsent(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
