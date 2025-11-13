.class final Lcom/android/settings/spa/system/AppLanguagesListModel$transform$2;
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
        "\u0000$\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000124\u0010\u0003\u001a0\u0012\u0004\u0012\u00020\u0005\u0012&\u0012$\u0012\u000c\u0012\n \u0008*\u0004\u0018\u00010\u00070\u0007 \u0008*\u0010\u0012\u000c\u0012\n \u0008*\u0004\u0018\u00010\u00070\u00070\u00010\u00060\u00042\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0001H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/android/settings/spa/system/AppLanguagesRecord;",
        "<name for destructuring parameter 0>",
        "Lkotlin/Pair;",
        "",
        "",
        "Landroid/content/pm/ResolveInfo;",
        "kotlin.jvm.PlatformType",
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
.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/settings/spa/system/AppLanguagesListModel;


# direct methods
.method public constructor <init>(Lcom/android/settings/spa/system/AppLanguagesListModel;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/spa/system/AppLanguagesListModel$transform$2;->this$0:Lcom/android/settings/spa/system/AppLanguagesListModel;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlin/Pair;

    check-cast p2, Ljava/util/List;

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/android/settings/spa/system/AppLanguagesListModel$transform$2;

    iget-object p0, p0, Lcom/android/settings/spa/system/AppLanguagesListModel$transform$2;->this$0:Lcom/android/settings/spa/system/AppLanguagesListModel;

    invoke-direct {v0, p0, p3}, Lcom/android/settings/spa/system/AppLanguagesListModel$transform$2;-><init>(Lcom/android/settings/spa/system/AppLanguagesListModel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/settings/spa/system/AppLanguagesListModel$transform$2;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/settings/spa/system/AppLanguagesListModel$transform$2;->L$1:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/settings/spa/system/AppLanguagesListModel$transform$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/settings/spa/system/AppLanguagesListModel$transform$2;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/settings/spa/system/AppLanguagesListModel$transform$2;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlin/Pair;

    iget-object v0, p0, Lcom/android/settings/spa/system/AppLanguagesListModel$transform$2;->L$1:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget-object p0, p0, Lcom/android/settings/spa/system/AppLanguagesListModel$transform$2;->this$0:Lcom/android/settings/spa/system/AppLanguagesListModel;

    iget-object p0, p0, Lcom/android/settings/spa/system/AppLanguagesListModel;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    const-string v2, "of(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/android/settingslib/spaprivileged/framework/common/ContextsKt;->asUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    new-instance v3, Lcom/android/settings/spa/system/AppLanguagesRecord;

    invoke-static {p0, v2, p1}, Lcom/android/settings/applications/AppLocaleUtil;->canDisplayLocaleUi(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/util/List;)Z

    move-result v4

    invoke-direct {v3, v2, v4}, Lcom/android/settings/spa/system/AppLanguagesRecord;-><init>(Landroid/content/pm/ApplicationInfo;Z)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
