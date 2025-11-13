.class public final synthetic Lcom/samsung/android/sdk/routines/v3/internal/ConditionDispatcher$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineConditionHandler;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

.field public final synthetic f$5:Landroid/os/Bundle;

.field public final synthetic f$6:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineConditionHandler;Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLandroid/os/Bundle;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/routines/v3/internal/ConditionDispatcher$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineConditionHandler;

    iput-object p2, p0, Lcom/samsung/android/sdk/routines/v3/internal/ConditionDispatcher$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/sdk/routines/v3/internal/ConditionDispatcher$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/sdk/routines/v3/internal/ConditionDispatcher$$ExternalSyntheticLambda0;->f$3:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    iput-object p7, p0, Lcom/samsung/android/sdk/routines/v3/internal/ConditionDispatcher$$ExternalSyntheticLambda0;->f$5:Landroid/os/Bundle;

    iput-object p8, p0, Lcom/samsung/android/sdk/routines/v3/internal/ConditionDispatcher$$ExternalSyntheticLambda0;->f$6:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/sdk/routines/v3/internal/ConditionDispatcher$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineConditionHandler;

    iget-object v1, p0, Lcom/samsung/android/sdk/routines/v3/internal/ConditionDispatcher$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/sdk/routines/v3/internal/ConditionDispatcher$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/sdk/routines/v3/internal/ConditionDispatcher$$ExternalSyntheticLambda0;->f$3:Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    iget-object v4, p0, Lcom/samsung/android/sdk/routines/v3/internal/ConditionDispatcher$$ExternalSyntheticLambda0;->f$5:Landroid/os/Bundle;

    iget-object p0, p0, Lcom/samsung/android/sdk/routines/v3/internal/ConditionDispatcher$$ExternalSyntheticLambda0;->f$6:Ljava/lang/Object;

    new-instance v5, Lcom/samsung/android/sdk/routines/v3/internal/ConditionDispatcher$$ExternalSyntheticLambda3;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v4, p0}, Lcom/samsung/android/sdk/routines/v3/internal/ConditionDispatcher$$ExternalSyntheticLambda3;-><init>(ILandroid/os/Bundle;Ljava/lang/Object;)V

    check-cast v0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "playing_audio"

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "playing_audio_app_uid"

    const-string v4, "-1"

    invoke-virtual {v3, p0, v4}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v3}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getBoolean()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettingConstants;->INSTANCE:Lcom/android/systemui/audio/soundcraft/interfaces/settings/SoundCraftSettingConstants;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "audio_soundcraft_app_setting"

    const/4 v6, 0x1

    invoke-static {v1, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v4, 0x0

    if-ne v1, v6, :cond_0

    move v1, v6

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    const-string v7, ", app="

    const-string v8, "SoundCraft.PlayingAudioConditionHandler"

    if-nez v1, :cond_1

    invoke-virtual {v0, p0}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler;->uidPackageName(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "isSatisfied : (setting off) tag="

    invoke-static {v0, v2, v7, p0, v8}, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/sdk/routines/v3/data/SatisfactionStatus;->NOT_SATISFIED:Lcom/samsung/android/sdk/routines/v3/data/SatisfactionStatus;

    invoke-virtual {v5, p0}, Lcom/samsung/android/sdk/routines/v3/internal/ConditionDispatcher$$ExternalSyntheticLambda3;->setResponse(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler;->isBudsPluginCanAction()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0, p0}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler;->uidPackageName(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "isSatisfied : false (isBudsAction, plugin disconnected) tag="

    invoke-static {v0, v2, v7, p0, v8}, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/sdk/routines/v3/data/SatisfactionStatus;->NOT_SATISFIED:Lcom/samsung/android/sdk/routines/v3/data/SatisfactionStatus;

    invoke-virtual {v5, p0}, Lcom/samsung/android/sdk/routines/v3/internal/ConditionDispatcher$$ExternalSyntheticLambda3;->setResponse(Ljava/lang/Object;)V

    goto :goto_3

    :cond_2
    if-nez v3, :cond_3

    invoke-virtual {v0}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler;->isBudsPluginCanAction()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, p0}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler;->uidPackageName(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "isSatisfied : false (isPhoneAction, buds connected) tag="

    invoke-static {v0, v2, v7, p0, v8}, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/sdk/routines/v3/data/SatisfactionStatus;->NOT_SATISFIED:Lcom/samsung/android/sdk/routines/v3/data/SatisfactionStatus;

    invoke-virtual {v5, p0}, Lcom/samsung/android/sdk/routines/v3/internal/ConditionDispatcher$$ExternalSyntheticLambda3;->setResponse(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    iget v1, v0, Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler;->lastStartedUid:I

    if-ne v1, p0, :cond_4

    goto :goto_1

    :cond_4
    move v6, v4

    :goto_1
    invoke-virtual {v0}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler;->isBudsPluginCanAction()Z

    move-result v1

    invoke-virtual {v0, p0}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler;->uidPackageName(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "isSatisfied: tag="

    const-string v4, ", isBudsAction="

    const-string v7, ", isBudsPluginCanAction="

    invoke-static {v0, v2, v4, v7, v3}, Lcom/android/keyguard/logging/CarrierTextManagerLogger$logCallbackSentFromUpdate$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " app="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", isSatisfied="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v6, v8}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    if-eqz v6, :cond_5

    sget-object p0, Lcom/samsung/android/sdk/routines/v3/data/SatisfactionStatus;->SATISFIED:Lcom/samsung/android/sdk/routines/v3/data/SatisfactionStatus;

    goto :goto_2

    :cond_5
    sget-object p0, Lcom/samsung/android/sdk/routines/v3/data/SatisfactionStatus;->NOT_SATISFIED:Lcom/samsung/android/sdk/routines/v3/data/SatisfactionStatus;

    :goto_2
    invoke-virtual {v5, p0}, Lcom/samsung/android/sdk/routines/v3/internal/ConditionDispatcher$$ExternalSyntheticLambda3;->setResponse(Ljava/lang/Object;)V

    :cond_6
    :goto_3
    return-void
.end method
