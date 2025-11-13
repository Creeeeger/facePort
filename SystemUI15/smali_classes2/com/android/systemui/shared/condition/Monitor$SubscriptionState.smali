.class public final Lcom/android/systemui/shared/condition/Monitor$SubscriptionState;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mActive:Z

.field public mAllConditionsMet:Ljava/lang/Boolean;

.field public mNestedSubscriptionToken:Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;

.field public final mSubscription:Lcom/android/systemui/shared/condition/Monitor$Subscription;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/condition/Monitor$Subscription;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/condition/Monitor$SubscriptionState;->mSubscription:Lcom/android/systemui/shared/condition/Monitor$Subscription;

    return-void
.end method


# virtual methods
.method public final update(Lcom/android/systemui/shared/condition/Monitor;)V
    .locals 10

    sget-object v0, Lcom/android/systemui/shared/condition/Evaluator;->INSTANCE:Lcom/android/systemui/shared/condition/Evaluator;

    iget-object v1, p0, Lcom/android/systemui/shared/condition/Monitor$SubscriptionState;->mSubscription:Lcom/android/systemui/shared/condition/Monitor$Subscription;

    iget-object v2, v1, Lcom/android/systemui/shared/condition/Monitor$Subscription;->mConditions:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    :goto_0
    move-object v7, v5

    goto/16 :goto_6

    :cond_0
    move-object v0, v2

    check-cast v0, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/android/systemui/shared/condition/Condition;

    iget-object v9, v8, Lcom/android/systemui/shared/condition/Condition;->mIsConditionMet:Ljava/lang/Boolean;

    if-eqz v9, :cond_1

    iget-boolean v8, v8, Lcom/android/systemui/shared/condition/Condition;->mOverriding:Z

    if-eqz v8, :cond_1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move-object v2, v6

    :goto_2
    check-cast v2, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v2, v6}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/shared/condition/Condition;

    iget-object v6, v6, Lcom/android/systemui/shared/condition/Condition;->mIsConditionMet:Ljava/lang/Boolean;

    if-eqz v6, :cond_4

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v7, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto :goto_4

    :cond_4
    move-object v6, v5

    :goto_4
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_0

    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v3

    :cond_7
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    if-nez v6, :cond_8

    move v2, v4

    goto :goto_5

    :cond_8
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_6

    :cond_9
    if-eqz v2, :cond_a

    goto/16 :goto_0

    :cond_a
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    move-object v7, v0

    :goto_6
    if-eqz v7, :cond_b

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    move v3, v4

    :cond_c
    iget-object v0, p0, Lcom/android/systemui/shared/condition/Monitor$SubscriptionState;->mAllConditionsMet:Ljava/lang/Boolean;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v3, v0, :cond_d

    return-void

    :cond_d
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shared/condition/Monitor$SubscriptionState;->mAllConditionsMet:Ljava/lang/Boolean;

    iget-object v2, v1, Lcom/android/systemui/shared/condition/Monitor$Subscription;->mNestedSubscription:Lcom/android/systemui/shared/condition/Monitor$Subscription;

    if-eqz v2, :cond_11

    if-eqz v3, :cond_e

    iget-object v1, p0, Lcom/android/systemui/shared/condition/Monitor$SubscriptionState;->mNestedSubscriptionToken:Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;

    if-nez v1, :cond_e

    invoke-virtual {p1, v2, v5}, Lcom/android/systemui/shared/condition/Monitor;->addSubscription(Lcom/android/systemui/shared/condition/Monitor$Subscription;Ljava/util/Set;)Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shared/condition/Monitor$SubscriptionState;->mNestedSubscriptionToken:Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;

    goto :goto_7

    :cond_e
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/systemui/shared/condition/Monitor$SubscriptionState;->mNestedSubscriptionToken:Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;

    if-eqz v0, :cond_10

    if-nez v0, :cond_f

    goto :goto_7

    :cond_f
    iget-object v1, p1, Lcom/android/systemui/shared/condition/Monitor;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/systemui/shared/condition/Monitor$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p1, v0}, Lcom/android/systemui/shared/condition/Monitor$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iput-object v5, p0, Lcom/android/systemui/shared/condition/Monitor$SubscriptionState;->mNestedSubscriptionToken:Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;

    :cond_10
    :goto_7
    return-void

    :cond_11
    iget-object p0, v1, Lcom/android/systemui/shared/condition/Monitor$Subscription;->mCallback:Lcom/android/systemui/shared/condition/Monitor$Callback;

    invoke-interface {p0, v3}, Lcom/android/systemui/shared/condition/Monitor$Callback;->onConditionsChanged(Z)V

    return-void
.end method
