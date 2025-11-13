.class public final Lcom/android/systemui/dreams/AssistantAttentionMonitor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/CoreStartable;


# instance fields
.field public final mAssistantAttentionCondition:Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition;

.field public final mCallback:Lcom/android/systemui/dreams/callbacks/AssistantAttentionCallback;

.field public final mConditionMonitor:Lcom/android/systemui/shared/condition/Monitor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/condition/Monitor;Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition;Lcom/android/systemui/dreams/callbacks/AssistantAttentionCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/dreams/AssistantAttentionMonitor;->mConditionMonitor:Lcom/android/systemui/shared/condition/Monitor;

    iput-object p2, p0, Lcom/android/systemui/dreams/AssistantAttentionMonitor;->mAssistantAttentionCondition:Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition;

    iput-object p3, p0, Lcom/android/systemui/dreams/AssistantAttentionMonitor;->mCallback:Lcom/android/systemui/dreams/callbacks/AssistantAttentionCallback;

    return-void
.end method


# virtual methods
.method public final start()V
    .locals 3

    const-string v0, "AssistAttentionMonitor"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/android/systemui/shared/condition/Monitor$Subscription$Builder;

    iget-object v1, p0, Lcom/android/systemui/dreams/AssistantAttentionMonitor;->mCallback:Lcom/android/systemui/dreams/callbacks/AssistantAttentionCallback;

    invoke-direct {v0, v1}, Lcom/android/systemui/shared/condition/Monitor$Subscription$Builder;-><init>(Lcom/android/systemui/shared/condition/Monitor$Callback;)V

    iget-object v1, v0, Lcom/android/systemui/shared/condition/Monitor$Subscription$Builder;->mConditions:Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/systemui/dreams/AssistantAttentionMonitor;->mAssistantAttentionCondition:Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/android/systemui/shared/condition/Monitor$Subscription$Builder;->build()Lcom/android/systemui/shared/condition/Monitor$Subscription;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/dreams/AssistantAttentionMonitor;->mConditionMonitor:Lcom/android/systemui/shared/condition/Monitor;

    iget-object v1, p0, Lcom/android/systemui/shared/condition/Monitor;->mPreconditions:Ljava/util/Set;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/shared/condition/Monitor;->addSubscription(Lcom/android/systemui/shared/condition/Monitor$Subscription;Ljava/util/Set;)Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;

    return-void
.end method
