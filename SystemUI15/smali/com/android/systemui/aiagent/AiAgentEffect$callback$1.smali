.class public final Lcom/android/systemui/aiagent/AiAgentEffect$callback$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/privacy/PrivacyItemController$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/aiagent/AiAgentEffect;


# direct methods
.method public constructor <init>(Lcom/android/systemui/aiagent/AiAgentEffect;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/aiagent/AiAgentEffect$callback$1;->this$0:Lcom/android/systemui/aiagent/AiAgentEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPrivacyItemsChanged(Ljava/util/List;)V
    .locals 9

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "onPrivacyItemsChanged privacyItems.size = "

    const-string v2, "AiAgentEffect"

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/util/AnimHelper$AnimationState;->HIDING:Lcom/android/systemui/util/AnimHelper$AnimationState;

    iget-object p0, p0, Lcom/android/systemui/aiagent/AiAgentEffect$callback$1;->this$0:Lcom/android/systemui/aiagent/AiAgentEffect;

    iput-object v0, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->animState:Lcom/android/systemui/util/AnimHelper$AnimationState;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-wide/16 v3, 0x0

    const/4 v1, 0x0

    const-string v5, "onPrivacyItemsChanged privacyItems isEmpty or found item is null"

    if-eqz v0, :cond_0

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->isUsingMicForEffect:Z

    invoke-static {p0}, Lcom/android/systemui/aiagent/AiAgentEffect;->access$unregisterListener(Lcom/android/systemui/aiagent/AiAgentEffect;)V

    iget-object p1, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->animState:Lcom/android/systemui/util/AnimHelper$AnimationState;

    invoke-static {p1, p0}, Lcom/android/systemui/aiagent/AiAgentEffect;->access$displayEffect(Lcom/android/systemui/util/AnimHelper$AnimationState;Lcom/android/systemui/aiagent/AiAgentEffect;)V

    iput-wide v3, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->lastTimeStampElapsed:J

    return-void

    :cond_0
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/privacy/PrivacyItem;

    iget-object v7, v6, Lcom/android/systemui/privacy/PrivacyItem;->privacyType:Lcom/android/systemui/privacy/PrivacyType;

    sget-object v8, Lcom/android/systemui/privacy/PrivacyType;->TYPE_MICROPHONE:Lcom/android/systemui/privacy/PrivacyType;

    if-ne v7, v8, :cond_1

    iget-object v6, v6, Lcom/android/systemui/privacy/PrivacyItem;->application:Lcom/android/systemui/privacy/PrivacyApplication;

    iget-object v6, v6, Lcom/android/systemui/privacy/PrivacyApplication;->packageName:Ljava/lang/String;

    const-string v7, "com.google.android.googlequicksearchbox"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lcom/android/systemui/privacy/PrivacyItem;

    if-nez v0, :cond_3

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->isUsingMicForEffect:Z

    invoke-static {p0}, Lcom/android/systemui/aiagent/AiAgentEffect;->access$unregisterListener(Lcom/android/systemui/aiagent/AiAgentEffect;)V

    iget-object p1, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->animState:Lcom/android/systemui/util/AnimHelper$AnimationState;

    invoke-static {p1, p0}, Lcom/android/systemui/aiagent/AiAgentEffect;->access$displayEffect(Lcom/android/systemui/util/AnimHelper$AnimationState;Lcom/android/systemui/aiagent/AiAgentEffect;)V

    iput-wide v3, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->lastTimeStampElapsed:J

    return-void

    :cond_3
    invoke-static {p0, v0}, Lcom/android/systemui/aiagent/AiAgentEffect;->access$display(Lcom/android/systemui/aiagent/AiAgentEffect;Lcom/android/systemui/privacy/PrivacyItem;)V

    return-void
.end method
