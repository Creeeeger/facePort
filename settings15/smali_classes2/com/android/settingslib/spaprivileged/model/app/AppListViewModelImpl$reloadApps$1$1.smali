.class public final Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$reloadApps$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# static fields
.field public static final INSTANCE:Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$reloadApps$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$reloadApps$1$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$reloadApps$1$1;->INSTANCE:Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$reloadApps$1$1;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$UserSubGraph;

    iget-object p2, p1, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$UserSubGraph;->this$0:Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl;

    iget-object v0, p2, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl;->scope:Lkotlinx/coroutines/internal/ContextScope;

    new-instance v1, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$UserSubGraph$reloadApps$1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$UserSubGraph$reloadApps$1;-><init>(Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$UserSubGraph;Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x3

    invoke-static {v0, v2, v2, v1, p1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    goto :goto_0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
