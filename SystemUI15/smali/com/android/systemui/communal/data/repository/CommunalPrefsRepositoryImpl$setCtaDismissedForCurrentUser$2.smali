.class final Lcom/android/systemui/communal/data/repository/CommunalPrefsRepositoryImpl$setCtaDismissedForCurrentUser$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/android/systemui/communal/data/repository/CommunalPrefsRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/communal/data/repository/CommunalPrefsRepositoryImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/communal/data/repository/CommunalPrefsRepositoryImpl;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/communal/data/repository/CommunalPrefsRepositoryImpl$setCtaDismissedForCurrentUser$2;->this$0:Lcom/android/systemui/communal/data/repository/CommunalPrefsRepositoryImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/android/systemui/communal/data/repository/CommunalPrefsRepositoryImpl$setCtaDismissedForCurrentUser$2;

    iget-object p0, p0, Lcom/android/systemui/communal/data/repository/CommunalPrefsRepositoryImpl$setCtaDismissedForCurrentUser$2;->this$0:Lcom/android/systemui/communal/data/repository/CommunalPrefsRepositoryImpl;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/communal/data/repository/CommunalPrefsRepositoryImpl$setCtaDismissedForCurrentUser$2;-><init>(Lcom/android/systemui/communal/data/repository/CommunalPrefsRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/communal/data/repository/CommunalPrefsRepositoryImpl$setCtaDismissedForCurrentUser$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/communal/data/repository/CommunalPrefsRepositoryImpl$setCtaDismissedForCurrentUser$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/communal/data/repository/CommunalPrefsRepositoryImpl$setCtaDismissedForCurrentUser$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/communal/data/repository/CommunalPrefsRepositoryImpl$setCtaDismissedForCurrentUser$2;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/communal/data/repository/CommunalPrefsRepositoryImpl$setCtaDismissedForCurrentUser$2;->this$0:Lcom/android/systemui/communal/data/repository/CommunalPrefsRepositoryImpl;

    iget-object v0, p1, Lcom/android/systemui/communal/data/repository/CommunalPrefsRepositoryImpl;->userRepository:Lcom/android/systemui/user/data/repository/UserRepository;

    check-cast v0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    invoke-virtual {v0}, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->getSelectedUserInfo()Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/communal/data/repository/CommunalPrefsRepositoryImpl;->getSharedPrefsForUser(Landroid/content/pm/UserInfo;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "cta_dismissed"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p0, p0, Lcom/android/systemui/communal/data/repository/CommunalPrefsRepositoryImpl$setCtaDismissedForCurrentUser$2;->this$0:Lcom/android/systemui/communal/data/repository/CommunalPrefsRepositoryImpl;

    iget-object p0, p0, Lcom/android/systemui/communal/data/repository/CommunalPrefsRepositoryImpl;->logger:Lcom/android/systemui/log/core/Logger;

    const-string p1, "Dismissed CTA tile"

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0, v1}, Lcom/android/systemui/log/core/Logger;->i$default(Lcom/android/systemui/log/core/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
