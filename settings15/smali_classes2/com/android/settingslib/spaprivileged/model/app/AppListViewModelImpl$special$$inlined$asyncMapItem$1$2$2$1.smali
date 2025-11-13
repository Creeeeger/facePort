.class public final Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$special$$inlined$asyncMapItem$1$2$2$1;
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
        "\u0000\n\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\u00028\u0000\"\u0004\u0008\u0000\u0010\u0000\"\u0004\u0008\u0001\u0010\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "R",
        "T",
        "Lkotlinx/coroutines/CoroutineScope;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field final synthetic $item:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$special$$inlined$asyncMapItem$1$2$2$1;->$item:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$special$$inlined$asyncMapItem$1$2$2$1;->this$0:Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$special$$inlined$asyncMapItem$1$2$2$1;

    iget-object v0, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$special$$inlined$asyncMapItem$1$2$2$1;->$item:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$special$$inlined$asyncMapItem$1$2$2$1;->this$0:Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl;

    invoke-direct {p1, v0, p2, p0}, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$special$$inlined$asyncMapItem$1$2$2$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$special$$inlined$asyncMapItem$1$2$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$special$$inlined$asyncMapItem$1$2$2$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$special$$inlined$asyncMapItem$1$2$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$special$$inlined$asyncMapItem$1$2$2$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$special$$inlined$asyncMapItem$1$2$2$1;->$item:Ljava/lang/Object;

    check-cast p1, Lcom/android/settingslib/spaprivileged/model/app/AppRecord;

    iget-object v0, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$special$$inlined$asyncMapItem$1$2$2$1;->this$0:Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl;

    invoke-interface {p1}, Lcom/android/settingslib/spaprivileged/model/app/AppRecord;->getApp()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v2, v0, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl;->labelMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v4, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$getLabel$1;

    invoke-direct {v4, v0, v1}, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$getLabel$1;-><init>(Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl;Landroid/content/pm/ApplicationInfo;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "computeIfAbsent(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lcom/android/settingslib/spaprivileged/model/app/AppEntry;

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$special$$inlined$asyncMapItem$1$2$2$1;->this$0:Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl;

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl;->collator:Landroid/icu/text/Collator;

    invoke-virtual {p0, v0}, Landroid/icu/text/Collator;->getCollationKey(Ljava/lang/String;)Landroid/icu/text/CollationKey;

    move-result-object p0

    const-string v2, "getCollationKey(...)"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p1, v0, p0}, Lcom/android/settingslib/spaprivileged/model/app/AppEntry;-><init>(Lcom/android/settingslib/spaprivileged/model/app/AppRecord;Ljava/lang/String;Landroid/icu/text/CollationKey;)V

    return-object v1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
