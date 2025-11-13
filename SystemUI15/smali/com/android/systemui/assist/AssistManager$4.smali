.class public final Lcom/android/systemui/assist/AssistManager$4;
.super Lcom/android/internal/app/IVoiceInteractionSessionListener$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/assist/AssistManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/assist/AssistManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/assist/AssistManager$4;->this$0:Lcom/android/systemui/assist/AssistManager;

    invoke-direct {p0}, Lcom/android/internal/app/IVoiceInteractionSessionListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSetUiHints(Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "action"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_ADDITIONAL_LOG:Z

    const-string v2, "AssistManager"

    if-eqz v1, :cond_0

    const-string v1, "onSetUiHints(action:"

    const-string v3, ")"

    invoke-static {v1, v0, v3, v2}, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "set_assist_gesture_constrained"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager$4;->this$0:Lcom/android/systemui/assist/AssistManager;

    iget-object v0, v0, Lcom/android/systemui/assist/AssistManager;->mSysUiState:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/model/SysUiState;

    const-string v1, "should_constrain"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    const-wide/16 v3, 0x2000

    invoke-virtual {v0, v3, v4, p1}, Lcom/android/systemui/model/SysUiState;->setFlag(JZ)V

    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager$4;->this$0:Lcom/android/systemui/assist/AssistManager;

    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v2}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    goto :goto_0

    :cond_1
    const-string p1, "show_global_actions"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :try_start_0
    const-string p1, "onSetUiHints() Gemini call WindowManager.showGlobalActions()"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager$4;->this$0:Lcom/android/systemui/assist/AssistManager;

    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {p0}, Landroid/view/IWindowManager;->showGlobalActions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "showGlobalActions failed"

    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public final onVoiceSessionHidden()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager$4;->this$0:Lcom/android/systemui/assist/AssistManager;

    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistLogger:Lcom/android/systemui/assist/AssistLogger;

    sget-object v0, Lcom/android/systemui/assist/AssistantSessionEvent;->ASSISTANT_SESSION_CLOSE:Lcom/android/systemui/assist/AssistantSessionEvent;

    invoke-virtual {p0, v0}, Lcom/android/systemui/assist/AssistLogger;->reportAssistantSessionEvent(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    return-void
.end method

.method public final onVoiceSessionShown()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager$4;->this$0:Lcom/android/systemui/assist/AssistManager;

    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistLogger:Lcom/android/systemui/assist/AssistLogger;

    sget-object v0, Lcom/android/systemui/assist/AssistantSessionEvent;->ASSISTANT_SESSION_UPDATE:Lcom/android/systemui/assist/AssistantSessionEvent;

    invoke-virtual {p0, v0}, Lcom/android/systemui/assist/AssistLogger;->reportAssistantSessionEvent(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    return-void
.end method

.method public final onVoiceSessionWindowVisibilityChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/assist/AssistManager$4;->this$0:Lcom/android/systemui/assist/AssistManager;

    sget-object v0, Lcom/android/systemui/assist/AssistManager;->invocationTypeMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/systemui/assist/AssistManager;->getAssistInfo()Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/assist/AssistManager$4;->this$0:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {p1}, Lcom/android/systemui/assist/AssistManager;->getAssistInfo()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager$4;->this$0:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistManager;->getAssistInfo()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "747005"

    invoke-static {p1, v0, p0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
