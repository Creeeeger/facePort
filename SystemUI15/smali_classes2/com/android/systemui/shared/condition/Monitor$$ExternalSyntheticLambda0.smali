.class public final synthetic Lcom/android/systemui/shared/condition/Monitor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/shared/condition/Monitor$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p2, p0, Lcom/android/systemui/shared/condition/Monitor$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/systemui/shared/condition/Monitor$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lcom/android/systemui/shared/condition/Monitor$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/shared/condition/Monitor$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/shared/condition/Monitor$1;

    iget-object p0, p0, Lcom/android/systemui/shared/condition/Monitor$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/shared/condition/Condition;

    iget-object v0, v0, Lcom/android/systemui/shared/condition/Monitor$1;->this$0:Lcom/android/systemui/shared/condition/Monitor;

    iget-object v1, v0, Lcom/android/systemui/shared/condition/Monitor;->mLogBuffer:Lcom/android/systemui/plugins/log/TableLogBufferBase;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/systemui/shared/condition/Condition;->mTag:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/systemui/shared/condition/Condition;->mOverriding:Z

    if-eqz v3, :cond_0

    const-string v3, "[OVRD]"

    invoke-static {v2, v3}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/shared/condition/Condition;->mIsConditionMet:Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "True"

    goto :goto_0

    :cond_1
    const-string v3, "False"

    goto :goto_0

    :cond_2
    const-string v3, "Invalid"

    :goto_0
    const-string v4, ""

    invoke-interface {v1, v4, v2, v3}, Lcom/android/systemui/plugins/log/TableLogBufferBase;->logChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v1, v0, Lcom/android/systemui/shared/condition/Monitor;->mConditions:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    if-nez p0, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroid/util/ArraySet;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/systemui/shared/condition/Monitor$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0}, Lcom/android/systemui/shared/condition/Monitor$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/shared/condition/Monitor;)V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    :goto_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/shared/condition/Monitor$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/shared/condition/Monitor;

    iget-object p0, p0, Lcom/android/systemui/shared/condition/Monitor$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;

    iget-object v1, v0, Lcom/android/systemui/shared/condition/Monitor;->mTag:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    iget-object v2, v0, Lcom/android/systemui/shared/condition/Monitor;->mTag:Ljava/lang/String;

    if-eqz v1, :cond_5

    const-string v1, "removing subscription"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v1, v0, Lcom/android/systemui/shared/condition/Monitor;->mSubscriptions:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "subscription not present:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    iget-object v1, v0, Lcom/android/systemui/shared/condition/Monitor;->mSubscriptions:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shared/condition/Monitor$SubscriptionState;

    iget-object v2, v1, Lcom/android/systemui/shared/condition/Monitor$SubscriptionState;->mSubscription:Lcom/android/systemui/shared/condition/Monitor$Subscription;

    iget-object v2, v2, Lcom/android/systemui/shared/condition/Monitor$Subscription;->mConditions:Ljava/util/Set;

    new-instance v3, Lcom/android/systemui/shared/condition/Monitor$$ExternalSyntheticLambda2;

    const/4 v4, 0x0

    invoke-direct {v3, v0, p0, v4}, Lcom/android/systemui/shared/condition/Monitor$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/shared/condition/Monitor;Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;I)V

    invoke-interface {v2, v3}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    iget-boolean p0, v1, Lcom/android/systemui/shared/condition/Monitor$SubscriptionState;->mActive:Z

    if-nez p0, :cond_7

    goto :goto_2

    :cond_7
    const/4 p0, 0x0

    iput-boolean p0, v1, Lcom/android/systemui/shared/condition/Monitor$SubscriptionState;->mActive:Z

    iget-object p0, v1, Lcom/android/systemui/shared/condition/Monitor$SubscriptionState;->mSubscription:Lcom/android/systemui/shared/condition/Monitor$Subscription;

    iget-object p0, p0, Lcom/android/systemui/shared/condition/Monitor$Subscription;->mCallback:Lcom/android/systemui/shared/condition/Monitor$Callback;

    :goto_2
    iget-object p0, v1, Lcom/android/systemui/shared/condition/Monitor$SubscriptionState;->mNestedSubscriptionToken:Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;

    if-nez p0, :cond_8

    goto :goto_3

    :cond_8
    iget-object v2, v0, Lcom/android/systemui/shared/condition/Monitor;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/systemui/shared/condition/Monitor$$ExternalSyntheticLambda0;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0, p0}, Lcom/android/systemui/shared/condition/Monitor$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 p0, 0x0

    iput-object p0, v1, Lcom/android/systemui/shared/condition/Monitor$SubscriptionState;->mNestedSubscriptionToken:Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;

    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
