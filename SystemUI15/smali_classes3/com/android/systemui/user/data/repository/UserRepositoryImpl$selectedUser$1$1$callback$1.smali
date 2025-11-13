.class public final Lcom/android/systemui/user/data/repository/UserRepositoryImpl$selectedUser$1$1$callback$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/settings/UserTracker$Callback;


# instance fields
.field public final synthetic $$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

.field public final synthetic $currentSelectionStatus:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic $this_run:Lcom/android/systemui/user/data/repository/UserRepositoryImpl;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlinx/coroutines/channels/ProducerScope;Lcom/android/systemui/user/data/repository/UserRepositoryImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/android/systemui/user/data/model/SelectionStatus;",
            ">;",
            "Lkotlinx/coroutines/channels/ProducerScope;",
            "Lcom/android/systemui/user/data/repository/UserRepositoryImpl;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$selectedUser$1$1$callback$1;->$currentSelectionStatus:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$selectedUser$1$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iput-object p3, p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$selectedUser$1$1$callback$1;->$this_run:Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBeforeUserSwitching(I)V
    .locals 2

    sget-object p1, Lcom/android/systemui/user/data/model/SelectionStatus;->SELECTION_IN_PROGRESS:Lcom/android/systemui/user/data/model/SelectionStatus;

    iget-object v0, p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$selectedUser$1$1$callback$1;->$currentSelectionStatus:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$selectedUser$1$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iget-object p0, p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$selectedUser$1$1$callback$1;->$this_run:Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    invoke-static {v0, v1, p0, p1}, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$selectedUser$1$1;->invokeSuspend$send(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlinx/coroutines/channels/ProducerScope;Lcom/android/systemui/user/data/repository/UserRepositoryImpl;Lcom/android/systemui/user/data/model/SelectionStatus;)V

    return-void
.end method

.method public final onProfilesChanged(Ljava/util/List;)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$selectedUser$1$1$callback$1;->$currentSelectionStatus:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/user/data/model/SelectionStatus;

    iget-object v1, p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$selectedUser$1$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iget-object p0, p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$selectedUser$1$1$callback$1;->$this_run:Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    invoke-static {p1, v1, p0, v0}, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$selectedUser$1$1;->invokeSuspend$send(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlinx/coroutines/channels/ProducerScope;Lcom/android/systemui/user/data/repository/UserRepositoryImpl;Lcom/android/systemui/user/data/model/SelectionStatus;)V

    return-void
.end method

.method public final onUserChanged(ILandroid/content/Context;)V
    .locals 1

    sget-object p1, Lcom/android/systemui/user/data/model/SelectionStatus;->SELECTION_COMPLETE:Lcom/android/systemui/user/data/model/SelectionStatus;

    iget-object p2, p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$selectedUser$1$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iget-object v0, p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$selectedUser$1$1$callback$1;->$this_run:Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    iget-object p0, p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$selectedUser$1$1$callback$1;->$currentSelectionStatus:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {p0, p2, v0, p1}, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$selectedUser$1$1;->invokeSuspend$send(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlinx/coroutines/channels/ProducerScope;Lcom/android/systemui/user/data/repository/UserRepositoryImpl;Lcom/android/systemui/user/data/model/SelectionStatus;)V

    return-void
.end method
