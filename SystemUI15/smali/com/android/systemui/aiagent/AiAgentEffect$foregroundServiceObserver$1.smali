.class public final Lcom/android/systemui/aiagent/AiAgentEffect$foregroundServiceObserver$1;
.super Landroid/app/IForegroundServiceObserver$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/aiagent/AiAgentEffect;


# direct methods
.method public constructor <init>(Lcom/android/systemui/aiagent/AiAgentEffect;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/aiagent/AiAgentEffect$foregroundServiceObserver$1;->this$0:Lcom/android/systemui/aiagent/AiAgentEffect;

    invoke-direct {p0}, Landroid/app/IForegroundServiceObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onForegroundStateChanged(Landroid/os/IBinder;Ljava/lang/String;IZ)V
    .locals 3

    const-string p1, "com.google.android.googlequicksearchbox"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/aiagent/AiAgentEffect$foregroundServiceObserver$1;->this$0:Lcom/android/systemui/aiagent/AiAgentEffect;

    invoke-static {p1}, Lcom/android/systemui/aiagent/AiAgentEffect;->access$isGeminiForegroundService(Lcom/android/systemui/aiagent/AiAgentEffect;)Z

    move-result p1

    iget-object p3, p0, Lcom/android/systemui/aiagent/AiAgentEffect$foregroundServiceObserver$1;->this$0:Lcom/android/systemui/aiagent/AiAgentEffect;

    iget-boolean v0, p3, Lcom/android/systemui/aiagent/AiAgentEffect;->isUsingMicForEffect:Z

    iget-boolean p3, p3, Lcom/android/systemui/aiagent/AiAgentEffect;->isPlaying:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onForegroundStateChanged isUsingMicForEffect = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", packageName = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", isForeground = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", isGeminiForegroundService = "

    const-string v0, ", isPlaying = "

    invoke-static {v1, p4, p2, p1, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string p2, "AiAgentEffect"

    invoke-static {v1, p3, p2}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    if-eqz p1, :cond_1

    if-eqz p4, :cond_1

    iget-object p2, p0, Lcom/android/systemui/aiagent/AiAgentEffect$foregroundServiceObserver$1;->this$0:Lcom/android/systemui/aiagent/AiAgentEffect;

    iget-boolean p3, p2, Lcom/android/systemui/aiagent/AiAgentEffect;->isPlaying:Z

    if-eqz p3, :cond_1

    sget-object p0, Lcom/android/systemui/util/AnimHelper$AnimationState;->SHOWING:Lcom/android/systemui/util/AnimHelper$AnimationState;

    invoke-static {p0, p2}, Lcom/android/systemui/aiagent/AiAgentEffect;->access$displayEffect(Lcom/android/systemui/util/AnimHelper$AnimationState;Lcom/android/systemui/aiagent/AiAgentEffect;)V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    if-nez p4, :cond_2

    iget-object p1, p0, Lcom/android/systemui/aiagent/AiAgentEffect$foregroundServiceObserver$1;->this$0:Lcom/android/systemui/aiagent/AiAgentEffect;

    sget-object p2, Lcom/android/systemui/util/AnimHelper$AnimationState;->HIDING:Lcom/android/systemui/util/AnimHelper$AnimationState;

    invoke-static {p2, p1}, Lcom/android/systemui/aiagent/AiAgentEffect;->access$displayEffect(Lcom/android/systemui/util/AnimHelper$AnimationState;Lcom/android/systemui/aiagent/AiAgentEffect;)V

    sget-object p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    iget-object p0, p0, Lcom/android/systemui/aiagent/AiAgentEffect$foregroundServiceObserver$1;->this$0:Lcom/android/systemui/aiagent/AiAgentEffect;

    iget-object p0, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->geminiStateObserver:Lcom/android/systemui/aiagent/AiAgentEffect$geminiStateObserver$1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->geminiStateObservers:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method
