.class public final Lcom/samsung/android/settings/bixby/control/actionparam/SystemUIActionParam;
.super Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mVolumeType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;)V
    .locals 3

    iget-object v0, p1, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mActionName:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mExtra:Landroid/os/Bundle;

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p1, "GetVolumeLevel"

    const-string v0, "SetVolumeLevel"

    const-string v1, "MuteVolume"

    const-string v2, "UnMuteVolume"

    filled-new-array {p1, v0, v1, v2}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/bixby/control/actionparam/SystemUIActionParam;->mVolumeType:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mActionName:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/bixby/control/actionparam/SystemUIActionParam;->isMusicActive()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/bixby/control/actionparam/SystemUIActionParam;->isMediaControlActive()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/samsung/android/media/SemSoundAssistantManager;

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->getVolumeMode(I)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "Ringtones"

    iput-object p1, p0, Lcom/samsung/android/settings/bixby/control/actionparam/SystemUIActionParam;->mVolumeType:Ljava/lang/String;

    goto :goto_1

    :cond_2
    :goto_0
    const-string p1, "Media"

    iput-object p1, p0, Lcom/samsung/android/settings/bixby/control/actionparam/SystemUIActionParam;->mVolumeType:Ljava/lang/String;

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public final createParamIfNeeded()V
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mSpecificParamsMap:Ljava/util/HashMap;

    new-instance v1, Lcom/samsung/android/settings/bixby/control/actionparam/Parameter;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "mode"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/settings/bixby/control/actionparam/Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "PlayMusic"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mSpecificParamsMap:Ljava/util/HashMap;

    new-instance v1, Lcom/samsung/android/settings/bixby/control/actionparam/Parameter;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/settings/bixby/control/actionparam/Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "StopMusic"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mSpecificParamsMap:Ljava/util/HashMap;

    new-instance v1, Lcom/samsung/android/settings/bixby/control/actionparam/Parameter;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/settings/bixby/control/actionparam/Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "SkipSong"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mSpecificParamsMap:Ljava/util/HashMap;

    new-instance v1, Lcom/samsung/android/settings/bixby/control/actionparam/Parameter;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/settings/bixby/control/actionparam/Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "PreviousSong"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mSpecificParamsMap:Ljava/util/HashMap;

    new-instance v1, Lcom/samsung/android/settings/bixby/control/actionparam/Parameter;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/settings/bixby/control/actionparam/Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ReplayCurrentSong"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mSpecificParamsMap:Ljava/util/HashMap;

    new-instance v1, Lcom/samsung/android/settings/bixby/control/actionparam/Parameter;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/settings/bixby/control/actionparam/Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "MoveFromCurrentPosition"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mSpecificParamsMap:Ljava/util/HashMap;

    new-instance v1, Lcom/samsung/android/settings/bixby/control/actionparam/Parameter;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/settings/bixby/control/actionparam/Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "SeekTo"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mSpecificParamsMap:Ljava/util/HashMap;

    new-instance v1, Lcom/samsung/android/settings/bixby/control/actionparam/Parameter;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/settings/bixby/control/actionparam/Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "FastForward"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mSpecificParamsMap:Ljava/util/HashMap;

    new-instance v1, Lcom/samsung/android/settings/bixby/control/actionparam/Parameter;

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/settings/bixby/control/actionparam/Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Rewind"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mSpecificParamsMap:Ljava/util/HashMap;

    const-string/jumbo v1, "value"

    const-string/jumbo v2, "true"

    const-string v3, "TurnOnAutoRotate"

    invoke-static {v1, v2, v0, v3}, Lcom/samsung/android/settings/bixby/control/actionparam/NotificationParam$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mSpecificParamsMap:Ljava/util/HashMap;

    const-string v3, "TurnOnFlashlight"

    invoke-static {v1, v2, v0, v3}, Lcom/samsung/android/settings/bixby/control/actionparam/NotificationParam$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mSpecificParamsMap:Ljava/util/HashMap;

    const-string v3, "false"

    const-string v4, "TurnOffAutoRotate"

    invoke-static {v1, v3, v0, v4}, Lcom/samsung/android/settings/bixby/control/actionparam/NotificationParam$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mSpecificParamsMap:Ljava/util/HashMap;

    const-string v4, "TurnOffFlashlight"

    invoke-static {v1, v3, v0, v4}, Lcom/samsung/android/settings/bixby/control/actionparam/NotificationParam$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mSpecificParamsMap:Ljava/util/HashMap;

    const-string v4, "TurnOffScreen"

    invoke-static {v1, v3, v0, v4}, Lcom/samsung/android/settings/bixby/control/actionparam/NotificationParam$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mSpecificParamsMap:Ljava/util/HashMap;

    const-string v4, "MuteVolume"

    invoke-static {v1, v2, v0, v4}, Lcom/samsung/android/settings/bixby/control/actionparam/NotificationParam$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mSpecificParamsMap:Ljava/util/HashMap;

    const-string v4, "MuteVolumeAll"

    invoke-static {v1, v2, v0, v4}, Lcom/samsung/android/settings/bixby/control/actionparam/NotificationParam$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mSpecificParamsMap:Ljava/util/HashMap;

    const-string v4, "MuteVolumeRingtones"

    invoke-static {v1, v2, v0, v4}, Lcom/samsung/android/settings/bixby/control/actionparam/NotificationParam$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mSpecificParamsMap:Ljava/util/HashMap;

    const-string v4, "MuteVolumeMedia"

    invoke-static {v1, v2, v0, v4}, Lcom/samsung/android/settings/bixby/control/actionparam/NotificationParam$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mSpecificParamsMap:Ljava/util/HashMap;

    const-string v4, "MuteVolumeNoti"

    invoke-static {v1, v2, v0, v4}, Lcom/samsung/android/settings/bixby/control/actionparam/NotificationParam$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mSpecificParamsMap:Ljava/util/HashMap;

    const-string v4, "MuteVolumeSystem"

    invoke-static {v1, v2, v0, v4}, Lcom/samsung/android/settings/bixby/control/actionparam/NotificationParam$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mSpecificParamsMap:Ljava/util/HashMap;

    const-string v4, "MuteVolumeBixby"

    invoke-static {v1, v2, v0, v4}, Lcom/samsung/android/settings/bixby/control/actionparam/NotificationParam$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mSpecificParamsMap:Ljava/util/HashMap;

    const-string v4, "MuteVolumeBluetooth"

    invoke-static {v1, v2, v0, v4}, Lcom/samsung/android/settings/bixby/control/actionparam/NotificationParam$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mSpecificParamsMap:Ljava/util/HashMap;

    const-string v4, "UnMuteVolume"

    invoke-static {v1, v3, v0, v4}, Lcom/samsung/android/settings/bixby/control/actionparam/NotificationParam$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mSpecificParamsMap:Ljava/util/HashMap;

    const-string v4, "UnMuteVolumeAll"

    invoke-static {v1, v3, v0, v4}, Lcom/samsung/android/settings/bixby/control/actionparam/NotificationParam$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mSpecificParamsMap:Ljava/util/HashMap;

    const-string v4, "UnMuteVolumeRingtones"

    invoke-static {v1, v3, v0, v4}, Lcom/samsung/android/settings/bixby/control/actionparam/NotificationParam$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mSpecificParamsMap:Ljava/util/HashMap;

    const-string v4, "UnMuteVolumeMedia"

    invoke-static {v1, v3, v0, v4}, Lcom/samsung/android/settings/bixby/control/actionparam/NotificationParam$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mSpecificParamsMap:Ljava/util/HashMap;

    const-string v4, "UnMuteVolumeNoti"

    invoke-static {v1, v3, v0, v4}, Lcom/samsung/android/settings/bixby/control/actionparam/NotificationParam$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mSpecificParamsMap:Ljava/util/HashMap;

    const-string v4, "UnMuteVolumeSystem"

    invoke-static {v1, v3, v0, v4}, Lcom/samsung/android/settings/bixby/control/actionparam/NotificationParam$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mSpecificParamsMap:Ljava/util/HashMap;

    const-string v4, "UnMuteVolumeBixby"

    invoke-static {v1, v3, v0, v4}, Lcom/samsung/android/settings/bixby/control/actionparam/NotificationParam$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mSpecificParamsMap:Ljava/util/HashMap;

    const-string v4, "UnMuteVolumeBluetooth"

    invoke-static {v1, v3, v0, v4}, Lcom/samsung/android/settings/bixby/control/actionparam/NotificationParam$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mSpecificParamsMap:Ljava/util/HashMap;

    const-string v1, "direction"

    const-string/jumbo v3, "up"

    const-string v4, "ScrollUp"

    invoke-static {v1, v3, v0, v4}, Lcom/samsung/android/settings/bixby/control/actionparam/NotificationParam$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mSpecificParamsMap:Ljava/util/HashMap;

    const-string v3, "down"

    const-string v4, "ScrollDown"

    invoke-static {v1, v3, v0, v4}, Lcom/samsung/android/settings/bixby/control/actionparam/NotificationParam$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mSpecificParamsMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mActionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/bixby/control/actionparam/Parameter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mParamList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/bixby/control/actionparam/SystemUIActionParam;->isMediaControlActive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mParamList:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/settings/bixby/control/actionparam/Parameter;

    const-string/jumbo v3, "music_active"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/settings/bixby/control/actionparam/Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/bixby/control/actionparam/SystemUIActionParam;->isMusicActive()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mParamList:Ljava/util/List;

    new-instance v0, Lcom/samsung/android/settings/bixby/control/actionparam/Parameter;

    const-string v1, "media_control"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/bixby/control/actionparam/Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public final getValue()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "value"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->getParameterValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "level"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->getParameterValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final isMediaControlActive()Z
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mExtra:Landroid/os/Bundle;

    invoke-static {p0}, Lcom/samsung/android/sdk/bixby2/util/BixbyUtils;->getBixbyContextInfo(Landroid/os/Bundle;)Lcom/samsung/android/sdk/bixby2/util/BixbyContextInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/bixby2/util/BixbyContextInfo;->isMediaControlActive:Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string v0, "bMediaControlActive : "

    const-string v1, "SystemUIActionParam"

    invoke-static {v0, v1, p0}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return p0
.end method

.method public final isMusicActive()Z
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mExtra:Landroid/os/Bundle;

    invoke-static {p0}, Lcom/samsung/android/sdk/bixby2/util/BixbyUtils;->getBixbyContextInfo(Landroid/os/Bundle;)Lcom/samsung/android/sdk/bixby2/util/BixbyContextInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/bixby2/util/BixbyContextInfo;->isMusicActive:Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string v0, "bMusicActive : "

    const-string v1, "SystemUIActionParam"

    invoke-static {v0, v1, p0}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return p0
.end method

.method public final parsingBundle()V
    .locals 3

    invoke-super {p0}, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->parsingBundle()V

    const-string v0, "IncreaseBrightness"

    iget-object v1, p0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mActionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "level"

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->getParameterValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mParamList:Ljava/util/List;

    new-instance v0, Lcom/samsung/android/settings/bixby/control/actionparam/Parameter;

    const-string v2, "+1"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/bixby/control/actionparam/Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v0, "DecreaseBrightness"

    iget-object v2, p0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mActionName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->getParameterValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mParamList:Ljava/util/List;

    new-instance v0, Lcom/samsung/android/settings/bixby/control/actionparam/Parameter;

    const-string v2, "-1"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/bixby/control/actionparam/Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v0, "MAX"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->getParameterValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mParamList:Ljava/util/List;

    new-instance v0, Lcom/samsung/android/settings/bixby/control/actionparam/Parameter;

    const-string v2, "MIN"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/bixby/control/actionparam/Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method
