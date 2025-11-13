.class public final Lcom/android/systemui/doze/DozeTransitionListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/doze/DozeMachine$Part;
.implements Lcom/android/systemui/statusbar/policy/CallbackController;


# instance fields
.field public final callbacks:Ljava/util/Set;

.field public newState:Lcom/android/systemui/doze/DozeMachine$State;

.field public oldState:Lcom/android/systemui/doze/DozeMachine$State;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/doze/DozeTransitionListener;->callbacks:Ljava/util/Set;

    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->UNINITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;

    iput-object v0, p0, Lcom/android/systemui/doze/DozeTransitionListener;->oldState:Lcom/android/systemui/doze/DozeMachine$State;

    iput-object v0, p0, Lcom/android/systemui/doze/DozeTransitionListener;->newState:Lcom/android/systemui/doze/DozeMachine$State;

    return-void
.end method


# virtual methods
.method public final addCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$dozeTransitionModel$1$callback$1;

    iget-object p0, p0, Lcom/android/systemui/doze/DozeTransitionListener;->callbacks:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final removeCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$dozeTransitionModel$1$callback$1;

    iget-object p0, p0, Lcom/android/systemui/doze/DozeTransitionListener;->callbacks:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final transitionTo(Lcom/android/systemui/doze/DozeMachine$State;Lcom/android/systemui/doze/DozeMachine$State;)V
    .locals 5

    iput-object p1, p0, Lcom/android/systemui/doze/DozeTransitionListener;->oldState:Lcom/android/systemui/doze/DozeMachine$State;

    iput-object p2, p0, Lcom/android/systemui/doze/DozeTransitionListener;->newState:Lcom/android/systemui/doze/DozeMachine$State;

    iget-object p0, p0, Lcom/android/systemui/doze/DozeTransitionListener;->callbacks:Ljava/util/Set;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$dozeTransitionModel$1$callback$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/common/coroutine/ChannelExt;->INSTANCE:Lcom/android/systemui/common/coroutine/ChannelExt;

    new-instance v2, Lcom/android/systemui/keyguard/shared/model/DozeTransitionModel;

    iget-object v3, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$dozeTransitionModel$1$callback$1;->this$0:Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;

    invoke-static {v3, p1}, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->access$dozeMachineStateToModel(Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;Lcom/android/systemui/doze/DozeMachine$State;)Lcom/android/systemui/keyguard/shared/model/DozeStateModel;

    move-result-object v4

    invoke-static {v3, p2}, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->access$dozeMachineStateToModel(Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;Lcom/android/systemui/doze/DozeMachine$State;)Lcom/android/systemui/keyguard/shared/model/DozeStateModel;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Lcom/android/systemui/keyguard/shared/model/DozeTransitionModel;-><init>(Lcom/android/systemui/keyguard/shared/model/DozeStateModel;Lcom/android/systemui/keyguard/shared/model/DozeStateModel;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$dozeTransitionModel$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    const-string v1, "KeyguardRepositoryImpl"

    const-string v3, "doze transition model"

    invoke-static {v0, v2, v1, v3}, Lcom/android/systemui/common/coroutine/ChannelExt;->trySendWithFailureLogging(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
