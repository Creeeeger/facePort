.class public final Lcom/android/systemui/aiagent/AiAgentEffect$displayEffect$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $animState:Lcom/android/systemui/util/AnimHelper$AnimationState;

.field public final synthetic this$0:Lcom/android/systemui/aiagent/AiAgentEffect;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/AnimHelper$AnimationState;Lcom/android/systemui/aiagent/AiAgentEffect;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/aiagent/AiAgentEffect$displayEffect$1;->$animState:Lcom/android/systemui/util/AnimHelper$AnimationState;

    iput-object p2, p0, Lcom/android/systemui/aiagent/AiAgentEffect$displayEffect$1;->this$0:Lcom/android/systemui/aiagent/AiAgentEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/aiagent/AiAgentEffect$displayEffect$1;->$animState:Lcom/android/systemui/util/AnimHelper$AnimationState;

    sget-object v1, Lcom/android/systemui/aiagent/AiAgentEffect$displayEffect$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/aiagent/AiAgentEffect$displayEffect$1;->this$0:Lcom/android/systemui/aiagent/AiAgentEffect;

    invoke-static {p0}, Lcom/android/systemui/aiagent/AiAgentEffect;->access$hiding(Lcom/android/systemui/aiagent/AiAgentEffect;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/aiagent/AiAgentEffect$displayEffect$1;->this$0:Lcom/android/systemui/aiagent/AiAgentEffect;

    invoke-static {p0}, Lcom/android/systemui/aiagent/AiAgentEffect;->access$showing(Lcom/android/systemui/aiagent/AiAgentEffect;)V

    :goto_0
    return-void
.end method
