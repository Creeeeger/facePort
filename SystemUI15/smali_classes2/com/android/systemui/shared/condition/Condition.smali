.class public abstract Lcom/android/systemui/shared/condition/Condition;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mCallbacks:Ljava/util/ArrayList;

.field public mIsConditionMet:Ljava/lang/Boolean;

.field public final mOverriding:Z

.field public mStarted:Z

.field public final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;)V
    .locals 2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/shared/condition/Condition;-><init>(Lkotlinx/coroutines/CoroutineScope;Ljava/lang/Boolean;Z)V

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Ljava/lang/Boolean;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shared/condition/Condition;->mTag:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/condition/Condition;->mCallbacks:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/shared/condition/Condition;->mStarted:Z

    iput-object p2, p0, Lcom/android/systemui/shared/condition/Condition;->mIsConditionMet:Ljava/lang/Boolean;

    iput-boolean p3, p0, Lcom/android/systemui/shared/condition/Condition;->mOverriding:Z

    return-void
.end method


# virtual methods
.method public abstract start()V
.end method

.method public abstract stop()V
.end method

.method public final updateCondition(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/shared/condition/Condition;->mIsConditionMet:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/android/systemui/shared/condition/Condition;->mTag:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "updating condition to "

    invoke-static {v0, v1, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shared/condition/Condition;->mIsConditionMet:Ljava/lang/Boolean;

    iget-object p1, p0, Lcom/android/systemui/shared/condition/Condition;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/condition/Monitor$1;

    if-nez v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/android/systemui/shared/condition/Monitor$1;->this$0:Lcom/android/systemui/shared/condition/Monitor;

    iget-object v1, v1, Lcom/android/systemui/shared/condition/Monitor;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/systemui/shared/condition/Monitor$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v0, p0}, Lcom/android/systemui/shared/condition/Monitor$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    return-void
.end method
