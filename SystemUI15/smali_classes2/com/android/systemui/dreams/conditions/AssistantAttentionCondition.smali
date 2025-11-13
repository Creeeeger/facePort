.class public final Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition;
.super Lcom/android/systemui/shared/condition/Condition;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mAssistManager:Lcom/android/systemui/assist/AssistManager;

.field public final mVisualQueryAttentionListener:Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition$1;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/assist/AssistManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/shared/condition/Condition;-><init>(Lkotlinx/coroutines/CoroutineScope;)V

    new-instance p1, Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition$1;-><init>(Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition;)V

    iput-object p1, p0, Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition;->mVisualQueryAttentionListener:Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition$1;

    iput-object p2, p0, Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    return-void
.end method


# virtual methods
.method public final start()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    iget-object v1, v0, Lcom/android/systemui/assist/AssistManager;->mVisualQueryAttentionListeners:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition;->mVisualQueryAttentionListener:Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition$1;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/android/systemui/assist/AssistManager;->mVisualQueryAttentionListeners:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final stop()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    iget-object v0, v0, Lcom/android/systemui/assist/AssistManager;->mVisualQueryAttentionListeners:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition;->mVisualQueryAttentionListener:Lcom/android/systemui/dreams/conditions/AssistantAttentionCondition$1;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
