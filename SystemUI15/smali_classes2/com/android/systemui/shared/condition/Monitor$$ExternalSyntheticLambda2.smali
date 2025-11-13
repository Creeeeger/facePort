.class public final synthetic Lcom/android/systemui/shared/condition/Monitor$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/shared/condition/Monitor;

.field public final synthetic f$1:Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shared/condition/Monitor;Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;I)V
    .locals 0

    iput p3, p0, Lcom/android/systemui/shared/condition/Monitor$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/shared/condition/Monitor$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/shared/condition/Monitor;

    iput-object p2, p0, Lcom/android/systemui/shared/condition/Monitor$$ExternalSyntheticLambda2;->f$1:Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    iget v0, p0, Lcom/android/systemui/shared/condition/Monitor$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/shared/condition/Monitor$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/shared/condition/Monitor;

    iget-object p0, p0, Lcom/android/systemui/shared/condition/Monitor$$ExternalSyntheticLambda2;->f$1:Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;

    check-cast p1, Lcom/android/systemui/shared/condition/Condition;

    iget-object v1, v0, Lcom/android/systemui/shared/condition/Monitor;->mConditions:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/android/systemui/shared/condition/Monitor;->mConditions:Ljava/util/HashMap;

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Lcom/android/systemui/shared/condition/Condition;->mTag:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/systemui/shared/condition/Condition;->mTag:Ljava/lang/String;

    const-string v2, "adding callback"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p1, Lcom/android/systemui/shared/condition/Condition;->mCallbacks:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    iget-object v3, v0, Lcom/android/systemui/shared/condition/Monitor;->mConditionCallback:Lcom/android/systemui/shared/condition/Monitor$1;

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v1, p1, Lcom/android/systemui/shared/condition/Condition;->mStarted:Z

    if-eqz v1, :cond_1

    iget-object v1, v3, Lcom/android/systemui/shared/condition/Monitor$1;->this$0:Lcom/android/systemui/shared/condition/Monitor;

    iget-object v1, v1, Lcom/android/systemui/shared/condition/Monitor;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/systemui/shared/condition/Monitor$$ExternalSyntheticLambda0;

    const/4 v4, 0x1

    invoke-direct {v2, v4, v3, p1}, Lcom/android/systemui/shared/condition/Monitor$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/shared/condition/Condition;->start()V

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/systemui/shared/condition/Condition;->mStarted:Z

    :cond_2
    :goto_0
    iget-object v0, v0, Lcom/android/systemui/shared/condition/Monitor;->mConditions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArraySet;

    invoke-virtual {p1, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/shared/condition/Monitor$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/shared/condition/Monitor;

    iget-object p0, p0, Lcom/android/systemui/shared/condition/Monitor$$ExternalSyntheticLambda2;->f$1:Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;

    check-cast p1, Lcom/android/systemui/shared/condition/Condition;

    iget-object v1, v0, Lcom/android/systemui/shared/condition/Monitor;->mConditions:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "condition not present:"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iget-object p1, v0, Lcom/android/systemui/shared/condition/Monitor;->mTag:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_3
    iget-object v1, v0, Lcom/android/systemui/shared/condition/Monitor;->mConditions:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_a

    iget-object p0, p1, Lcom/android/systemui/shared/condition/Condition;->mTag:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {p0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_4

    iget-object p0, p1, Lcom/android/systemui/shared/condition/Condition;->mTag:Ljava/lang/String;

    const-string v1, "removing callback"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object p0, p1, Lcom/android/systemui/shared/condition/Condition;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shared/condition/Monitor$1;

    if-eqz v1, :cond_6

    iget-object v2, v0, Lcom/android/systemui/shared/condition/Monitor;->mConditionCallback:Lcom/android/systemui/shared/condition/Monitor$1;

    if-ne v1, v2, :cond_5

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_7
    iget-object p0, p1, Lcom/android/systemui/shared/condition/Condition;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_9

    iget-boolean p0, p1, Lcom/android/systemui/shared/condition/Condition;->mStarted:Z

    if-nez p0, :cond_8

    goto :goto_2

    :cond_8
    invoke-virtual {p1}, Lcom/android/systemui/shared/condition/Condition;->stop()V

    const/4 p0, 0x0

    iput-boolean p0, p1, Lcom/android/systemui/shared/condition/Condition;->mStarted:Z

    :cond_9
    :goto_2
    iget-object p0, v0, Lcom/android/systemui/shared/condition/Monitor;->mConditions:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
