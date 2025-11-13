.class public final Lcom/android/systemui/aiagent/AiAgentEffect$statusBarStateListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/aiagent/AiAgentEffect;


# direct methods
.method public constructor <init>(Lcom/android/systemui/aiagent/AiAgentEffect;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/aiagent/AiAgentEffect$statusBarStateListener$1;->this$0:Lcom/android/systemui/aiagent/AiAgentEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDozingChanged(Z)V
    .locals 7

    iget-object p0, p0, Lcom/android/systemui/aiagent/AiAgentEffect$statusBarStateListener$1;->this$0:Lcom/android/systemui/aiagent/AiAgentEffect;

    iget-boolean v0, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->isUsingMicForEffect:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/android/systemui/aiagent/AiAgentEffect;->access$isGeminiForegroundService(Lcom/android/systemui/aiagent/AiAgentEffect;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->isVisibleView:Z

    invoke-static {p0}, Lcom/android/systemui/aiagent/AiAgentEffect;->access$getSettingsHelper$p(Lcom/android/systemui/aiagent/AiAgentEffect;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isAODShown()Z

    move-result v2

    iget-boolean v3, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->isHideAnimating:Z

    const-string v4, "onDozingChanged isDozing = "

    const-string v5, ", isGeminiForegroundService = "

    const-string v6, ", isVisibleView = "

    invoke-static {v4, v5, v6, p1, v0}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isAODShown = "

    const-string v6, ", isHideAnimating = "

    invoke-static {v4, v1, v5, v2, v6}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, "AiAgentEffect"

    invoke-static {v4, v3, v1}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->isVisibleView:Z

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/android/systemui/aiagent/AiAgentEffect;->access$getSettingsHelper$p(Lcom/android/systemui/aiagent/AiAgentEffect;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isAODShown()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object p1, Lcom/android/systemui/util/AnimHelper$AnimationState;->HIDING:Lcom/android/systemui/util/AnimHelper$AnimationState;

    invoke-static {p1, p0}, Lcom/android/systemui/aiagent/AiAgentEffect;->access$displayEffect(Lcom/android/systemui/util/AnimHelper$AnimationState;Lcom/android/systemui/aiagent/AiAgentEffect;)V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->isVisibleView:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->isHideAnimating:Z

    if-eqz p1, :cond_3

    :cond_2
    if-eqz v0, :cond_3

    iget-boolean p1, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->isPlaying:Z

    if-eqz p1, :cond_3

    sget-object p1, Lcom/android/systemui/util/AnimHelper$AnimationState;->SHOWING:Lcom/android/systemui/util/AnimHelper$AnimationState;

    invoke-static {p1, p0}, Lcom/android/systemui/aiagent/AiAgentEffect;->access$displayEffect(Lcom/android/systemui/util/AnimHelper$AnimationState;Lcom/android/systemui/aiagent/AiAgentEffect;)V

    :cond_3
    :goto_0
    return-void
.end method
