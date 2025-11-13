.class public final Lcom/android/systemui/aiagent/AiAgentEffect$aodShowStateCallback$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/aiagent/AiAgentEffect;


# direct methods
.method public constructor <init>(Lcom/android/systemui/aiagent/AiAgentEffect;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/aiagent/AiAgentEffect$aodShowStateCallback$1;->this$0:Lcom/android/systemui/aiagent/AiAgentEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Landroid/net/Uri;)V
    .locals 5

    if-eqz p1, :cond_3

    const-string v0, "aod_show_state"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/systemui/aiagent/AiAgentEffect$aodShowStateCallback$1;->this$0:Lcom/android/systemui/aiagent/AiAgentEffect;

    invoke-static {p0}, Lcom/android/systemui/aiagent/AiAgentEffect;->access$isGeminiForegroundService(Lcom/android/systemui/aiagent/AiAgentEffect;)Z

    move-result p1

    iget-boolean v0, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->isPlaying:Z

    invoke-static {p0}, Lcom/android/systemui/aiagent/AiAgentEffect;->access$getCurrentStateLog(Lcom/android/systemui/aiagent/AiAgentEffect;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "aodShowStateCallback isGeminiForegroundService = "

    const-string v3, ", isPlaying = "

    const-string v4, ", "

    invoke-static {v2, v3, v4, p1, v0}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "AiAgentEffect"

    invoke-static {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->isUsingMicForEffect:Z

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/android/systemui/aiagent/AiAgentEffect;->access$getSettingsHelper$p(Lcom/android/systemui/aiagent/AiAgentEffect;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isAODShown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->screenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget v0, v0, Lcom/android/systemui/keyguard/ScreenLifecycle;->mScreenState:I

    if-nez v0, :cond_0

    sget-object p1, Lcom/android/systemui/util/AnimHelper$AnimationState;->HIDING:Lcom/android/systemui/util/AnimHelper$AnimationState;

    invoke-static {p1, p0}, Lcom/android/systemui/aiagent/AiAgentEffect;->access$displayEffect(Lcom/android/systemui/util/AnimHelper$AnimationState;Lcom/android/systemui/aiagent/AiAgentEffect;)V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/android/systemui/aiagent/AiAgentEffect;->access$getSettingsHelper$p(Lcom/android/systemui/aiagent/AiAgentEffect;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isAODShown()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->isVisibleView:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->isHideAnimating:Z

    if-eqz v0, :cond_3

    :cond_1
    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->isPlaying:Z

    if-eqz p1, :cond_3

    sget-object p1, Lcom/android/systemui/util/AnimHelper$AnimationState;->SHOWING:Lcom/android/systemui/util/AnimHelper$AnimationState;

    invoke-static {p1, p0}, Lcom/android/systemui/aiagent/AiAgentEffect;->access$displayEffect(Lcom/android/systemui/util/AnimHelper$AnimationState;Lcom/android/systemui/aiagent/AiAgentEffect;)V

    goto :goto_0

    :cond_2
    iget-boolean p1, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->isVisibleView:Z

    if-eqz p1, :cond_3

    sget-object p1, Lcom/android/systemui/util/AnimHelper$AnimationState;->HIDING:Lcom/android/systemui/util/AnimHelper$AnimationState;

    invoke-static {p1, p0}, Lcom/android/systemui/aiagent/AiAgentEffect;->access$displayEffect(Lcom/android/systemui/util/AnimHelper$AnimationState;Lcom/android/systemui/aiagent/AiAgentEffect;)V

    :cond_3
    :goto_0
    return-void
.end method
