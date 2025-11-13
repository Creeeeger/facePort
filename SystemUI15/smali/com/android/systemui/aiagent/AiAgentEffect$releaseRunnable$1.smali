.class final Lcom/android/systemui/aiagent/AiAgentEffect$releaseRunnable$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/aiagent/AiAgentEffect;


# direct methods
.method public constructor <init>(Lcom/android/systemui/aiagent/AiAgentEffect;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/aiagent/AiAgentEffect$releaseRunnable$1;->this$0:Lcom/android/systemui/aiagent/AiAgentEffect;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/aiagent/AiAgentEffect$releaseRunnable$1;->this$0:Lcom/android/systemui/aiagent/AiAgentEffect;

    iget-boolean v1, v0, Lcom/android/systemui/aiagent/AiAgentEffect;->isUsingMicForEffect:Z

    const-string v2, "AiAgentEffect"

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/android/systemui/aiagent/AiAgentEffect;->access$isGeminiForegroundService(Lcom/android/systemui/aiagent/AiAgentEffect;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/aiagent/AiAgentEffect$releaseRunnable$1;->this$0:Lcom/android/systemui/aiagent/AiAgentEffect;

    iget-object v0, v0, Lcom/android/systemui/aiagent/AiAgentEffect;->drawWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, "releaseRunnable releaseDrawWakeLock"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/aiagent/AiAgentEffect$releaseRunnable$1;->this$0:Lcom/android/systemui/aiagent/AiAgentEffect;

    invoke-static {p0}, Lcom/android/systemui/aiagent/AiAgentEffect;->access$releaseDrawWakeLock(Lcom/android/systemui/aiagent/AiAgentEffect;)V

    goto :goto_0

    :cond_1
    const-string v0, "releaseRunnable releaseIfNeed re-waiting"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/aiagent/AiAgentEffect$releaseRunnable$1;->this$0:Lcom/android/systemui/aiagent/AiAgentEffect;

    iget-object v0, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->wakeLockHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->releaseRunnable:Lkotlin/jvm/functions/Function0;

    new-instance v1, Lcom/android/systemui/aiagent/AiAgentEffect$sam$java_lang_Runnable$0;

    invoke-direct {v1, p0}, Lcom/android/systemui/aiagent/AiAgentEffect$sam$java_lang_Runnable$0;-><init>(Lkotlin/jvm/functions/Function0;)V

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
