.class public final Lcom/android/systemui/aiagent/AiAgentEffect$HideAnimatorListener;
.super Lcom/android/systemui/util/AnimHelper$BaseAnimatorListener;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/aiagent/AiAgentEffect;


# direct methods
.method public constructor <init>(Lcom/android/systemui/aiagent/AiAgentEffect;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/aiagent/AiAgentEffect$HideAnimatorListener;->this$0:Lcom/android/systemui/aiagent/AiAgentEffect;

    const-string p1, "AiAgentEffect"

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/util/AnimHelper$BaseAnimatorListener;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/util/AnimHelper$BaseAnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/android/systemui/aiagent/AiAgentEffect$HideAnimatorListener;->this$0:Lcom/android/systemui/aiagent/AiAgentEffect;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/systemui/aiagent/AiAgentEffect;->isHideAnimating:Z

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/systemui/aiagent/AiAgentEffect;->initAnimProperties(Z)V

    iget-object p0, p0, Lcom/android/systemui/aiagent/AiAgentEffect$HideAnimatorListener;->this$0:Lcom/android/systemui/aiagent/AiAgentEffect;

    invoke-static {p0}, Lcom/android/systemui/aiagent/AiAgentEffect;->access$releaseDrawWakeLock(Lcom/android/systemui/aiagent/AiAgentEffect;)V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/util/AnimHelper$BaseAnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/android/systemui/aiagent/AiAgentEffect$HideAnimatorListener;->this$0:Lcom/android/systemui/aiagent/AiAgentEffect;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->isHideAnimating:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->isShowAnimating:Z

    return-void
.end method
