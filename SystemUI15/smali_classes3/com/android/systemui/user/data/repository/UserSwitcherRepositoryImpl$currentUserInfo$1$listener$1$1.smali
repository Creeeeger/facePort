.class final Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$currentUserInfo$1$listener$1$1;
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
.field final synthetic $$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/ProducerScope;"
        }
    .end annotation
.end field

.field final synthetic $picture:Landroid/graphics/drawable/Drawable;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;Landroid/graphics/drawable/Drawable;Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ProducerScope;",
            "Landroid/graphics/drawable/Drawable;",
            "Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$currentUserInfo$1$listener$1$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iput-object p2, p0, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$currentUserInfo$1$listener$1$1;->$picture:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$currentUserInfo$1$listener$1$1;->this$0:Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$currentUserInfo$1$listener$1$1;

    iget-object v0, p0, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$currentUserInfo$1$listener$1$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iget-object v1, p0, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$currentUserInfo$1$listener$1$1;->$picture:Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$currentUserInfo$1$listener$1$1;->this$0:Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl;

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$currentUserInfo$1$listener$1$1;-><init>(Lkotlinx/coroutines/channels/ProducerScope;Landroid/graphics/drawable/Drawable;Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$currentUserInfo$1$listener$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$currentUserInfo$1$listener$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$currentUserInfo$1$listener$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$currentUserInfo$1$listener$1$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$currentUserInfo$1$listener$1$1;->L$2:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$currentUserInfo$1$listener$1$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/channels/SendChannel;

    iget-object p0, p0, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$currentUserInfo$1$listener$1$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/common/coroutine/ChannelExt;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-object p1, Lcom/android/systemui/common/coroutine/ChannelExt;->INSTANCE:Lcom/android/systemui/common/coroutine/ChannelExt;

    iget-object v1, p0, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$currentUserInfo$1$listener$1$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iget-object v3, p0, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$currentUserInfo$1$listener$1$1;->$picture:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$currentUserInfo$1$listener$1$1;->this$0:Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl;

    iput-object p1, p0, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$currentUserInfo$1$listener$1$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$currentUserInfo$1$listener$1$1;->L$1:Ljava/lang/Object;

    iput-object v3, p0, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$currentUserInfo$1$listener$1$1;->L$2:Ljava/lang/Object;

    iput v2, p0, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$currentUserInfo$1$listener$1$1;->label:I

    sget v2, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl;->$r8$clinit:I

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$isGuestUser$2;

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$isGuestUser$2;-><init>(Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    iget-object v4, v4, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl;->bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {v4, v2, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, v3

    move-object v6, p1

    move-object p1, p0

    move-object p0, v6

    :goto_0
    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, v0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string p1, "UserSwitcherRepositoryImpl"

    invoke-static {p0, v1, v2, p1}, Lcom/android/systemui/common/coroutine/ChannelExt;->trySendWithFailureLogging$default(Lcom/android/systemui/common/coroutine/ChannelExt;Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
