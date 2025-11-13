.class public final synthetic Lcom/android/systemui/shared/condition/Monitor$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/shared/condition/Monitor;

.field public final synthetic f$1:Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;

.field public final synthetic f$2:Lcom/android/systemui/shared/condition/Monitor$SubscriptionState;

.field public final synthetic f$3:Lcom/android/systemui/shared/condition/Monitor$Subscription;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shared/condition/Monitor;Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;Lcom/android/systemui/shared/condition/Monitor$SubscriptionState;Lcom/android/systemui/shared/condition/Monitor$Subscription;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/condition/Monitor$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/shared/condition/Monitor;

    iput-object p2, p0, Lcom/android/systemui/shared/condition/Monitor$$ExternalSyntheticLambda1;->f$1:Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;

    iput-object p3, p0, Lcom/android/systemui/shared/condition/Monitor$$ExternalSyntheticLambda1;->f$2:Lcom/android/systemui/shared/condition/Monitor$SubscriptionState;

    iput-object p4, p0, Lcom/android/systemui/shared/condition/Monitor$$ExternalSyntheticLambda1;->f$3:Lcom/android/systemui/shared/condition/Monitor$Subscription;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/shared/condition/Monitor$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/shared/condition/Monitor;

    iget-object v1, p0, Lcom/android/systemui/shared/condition/Monitor$$ExternalSyntheticLambda1;->f$1:Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;

    iget-object v2, p0, Lcom/android/systemui/shared/condition/Monitor$$ExternalSyntheticLambda1;->f$2:Lcom/android/systemui/shared/condition/Monitor$SubscriptionState;

    iget-object p0, p0, Lcom/android/systemui/shared/condition/Monitor$$ExternalSyntheticLambda1;->f$3:Lcom/android/systemui/shared/condition/Monitor$Subscription;

    iget-object v3, v0, Lcom/android/systemui/shared/condition/Monitor;->mTag:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/android/systemui/shared/condition/Monitor;->mTag:Ljava/lang/String;

    const-string v4, "adding subscription"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, v0, Lcom/android/systemui/shared/condition/Monitor;->mSubscriptions:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/systemui/shared/condition/Monitor$Subscription;->mConditions:Ljava/util/Set;

    new-instance v3, Lcom/android/systemui/shared/condition/Monitor$$ExternalSyntheticLambda2;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v1, v4}, Lcom/android/systemui/shared/condition/Monitor$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/shared/condition/Monitor;Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;I)V

    invoke-interface {p0, v3}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    iget-boolean p0, v2, Lcom/android/systemui/shared/condition/Monitor$SubscriptionState;->mActive:Z

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean v1, v2, Lcom/android/systemui/shared/condition/Monitor$SubscriptionState;->mActive:Z

    iget-object p0, v2, Lcom/android/systemui/shared/condition/Monitor$SubscriptionState;->mSubscription:Lcom/android/systemui/shared/condition/Monitor$Subscription;

    iget-object p0, p0, Lcom/android/systemui/shared/condition/Monitor$Subscription;->mCallback:Lcom/android/systemui/shared/condition/Monitor$Callback;

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/systemui/shared/condition/Monitor$SubscriptionState;->update(Lcom/android/systemui/shared/condition/Monitor;)V

    return-void
.end method
