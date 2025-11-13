.class public final Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$currentUserName$1$callback$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserSwitchCallback;


# instance fields
.field public final synthetic $$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

.field public final synthetic this$0:Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ProducerScope;",
            "Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$currentUserName$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iput-object p2, p0, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$currentUserName$1$callback$1;->this$0:Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUserSwitched()V
    .locals 3

    new-instance v0, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$currentUserName$1$callback$1$1;

    iget-object v1, p0, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$currentUserName$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iget-object p0, p0, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$currentUserName$1$callback$1;->this$0:Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl$currentUserName$1$callback$1$1;-><init>(Lkotlinx/coroutines/channels/ProducerScope;Lcom/android/systemui/user/data/repository/UserSwitcherRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v1, v2, v2, v0, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method
