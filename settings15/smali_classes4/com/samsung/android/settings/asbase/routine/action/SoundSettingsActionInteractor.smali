.class public final Lcom/samsung/android/settings/asbase/routine/action/SoundSettingsActionInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/bixbyroutinehandler/interactor/ActionInteractor;


# direct methods
.method public static getLevelKeyValues(I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/settings/asbase/widget/SecVolumeValues;->rowStreamTypeToString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "volume_level"

    invoke-static {v0, p0}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLevelKeyValuesFromDevice(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/settings/asbase/widget/SecVolumeValues;->rowStreamTypeToString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "_"

    invoke-static {v0, p0, p1}, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "volume_level"

    invoke-static {p1, p0}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getVolumeLabel(FILandroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "audio"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    const-string/jumbo v0, "null cannot be cast to non-null type android.media.AudioManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/media/AudioManager;

    invoke-virtual {p2, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    mul-int/lit8 p2, p2, 0xa

    :cond_0
    int-to-float p1, p2

    div-float/2addr p0, p1

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float/2addr p0, p1

    float-to-int p0, p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "%"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isSystemOptionOn(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static performMediaVolumeAction(Landroid/content/Context;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;)V
    .locals 4

    const/16 v0, 0x65

    invoke-static {v0}, Lcom/samsung/android/settings/asbase/routine/action/SoundSettingsActionInteractor;->getLevelKeyValues(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-static {p0, p1, v0, v2, v1}, Lcom/samsung/android/settings/asbase/routine/action/SoundSettingsActionInteractor;->performVolumeAction(Landroid/content/Context;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;Ljava/lang/String;II)V

    const/16 v0, 0x66

    invoke-static {v0}, Lcom/samsung/android/settings/asbase/routine/action/SoundSettingsActionInteractor;->getLevelKeyValues(I)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x16

    invoke-static {p0, p1, v1, v2, v3}, Lcom/samsung/android/settings/asbase/routine/action/SoundSettingsActionInteractor;->performVolumeAction(Landroid/content/Context;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;Ljava/lang/String;II)V

    invoke-static {v0}, Lcom/samsung/android/settings/asbase/routine/action/SoundSettingsActionInteractor;->getLevelKeyValues(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1, v2, v2}, Lcom/samsung/android/settings/asbase/routine/action/SoundSettingsActionInteractor;->performVolumeAction(Landroid/content/Context;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;Ljava/lang/String;II)V

    invoke-static {v0}, Lcom/samsung/android/settings/asbase/routine/action/SoundSettingsActionInteractor;->getLevelKeyValues(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {p0, p1, v0, v2, v1}, Lcom/samsung/android/settings/asbase/routine/action/SoundSettingsActionInteractor;->performVolumeAction(Landroid/content/Context;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;Ljava/lang/String;II)V

    const/16 v0, 0x69

    invoke-static {v0}, Lcom/samsung/android/settings/asbase/routine/action/SoundSettingsActionInteractor;->getLevelKeyValues(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {p0, p1, v0, v2, v1}, Lcom/samsung/android/settings/asbase/routine/action/SoundSettingsActionInteractor;->performVolumeAction(Landroid/content/Context;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;Ljava/lang/String;II)V

    return-void
.end method

.method public static performSoundModeAction(Landroid/content/Context;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;Z)V
    .locals 8

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "as_do_not_change_volume"

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "getBoolean(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v3, "null cannot be cast to non-null type android.media.AudioManager"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->semGetRingerModeInternal()I

    move-result v2

    int-to-float v4, v2

    const-string v5, "as_sound_mode"

    invoke-static {v4, p1, v5}, Lcom/android/settings/notification/zen/lifestyle/LifeStyleDND$$ExternalSyntheticOutline0;->m(FLcom/samsung/android/sdk/routines/v3/data/ParameterValues;Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    const-string/jumbo v5, "performSoundModeAction curRingerMode: "

    const-string v6, ", ringerMode: "

    const-string v7, ", isReverse: "

    invoke-static {v5, v6, v2, v4, v7}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "SoundSettingsActionInteractor"

    invoke-static {v5, v2}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    const/4 v0, 0x2

    if-eq v4, v0, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    const/4 p2, 0x5

    invoke-static {p2}, Lcom/samsung/android/settings/asbase/routine/action/SoundSettingsActionInteractor;->getLevelKeyValues(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p1, v2, p2, v0}, Lcom/samsung/android/settings/asbase/routine/action/SoundSettingsActionInteractor;->performVolumeAction(Landroid/content/Context;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;Ljava/lang/String;II)V

    invoke-static {p2}, Lcom/samsung/android/settings/asbase/routine/action/SoundSettingsActionInteractor;->getLevelKeyValues(I)Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x8

    invoke-static {p0, p1, v2, p2, v5}, Lcom/samsung/android/settings/asbase/routine/action/SoundSettingsActionInteractor;->performVolumeAction(Landroid/content/Context;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;Ljava/lang/String;II)V

    const/4 p2, 0x1

    invoke-static {p2}, Lcom/samsung/android/settings/asbase/routine/action/SoundSettingsActionInteractor;->getLevelKeyValues(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p1, v2, p2, v0}, Lcom/samsung/android/settings/asbase/routine/action/SoundSettingsActionInteractor;->performVolumeAction(Landroid/content/Context;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;Ljava/lang/String;II)V

    invoke-static {v0}, Lcom/samsung/android/settings/asbase/routine/action/SoundSettingsActionInteractor;->getLevelKeyValues(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, v0, v0}, Lcom/samsung/android/settings/asbase/routine/action/util/SoundActionUtil;->getStreamVolumeFromRoutine(Landroid/content/Context;II)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2, p1, p2}, Lcom/android/settings/notification/zen/lifestyle/LifeStyleDND$$ExternalSyntheticOutline0;->m(FLcom/samsung/android/sdk/routines/v3/data/ParameterValues;Ljava/lang/String;)F

    move-result p2

    float-to-int p2, p2

    if-eqz p2, :cond_1

    invoke-static {v0}, Lcom/samsung/android/settings/asbase/routine/action/SoundSettingsActionInteractor;->getLevelKeyValues(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2, v0, v0}, Lcom/samsung/android/settings/asbase/routine/action/SoundSettingsActionInteractor;->performVolumeAction(Landroid/content/Context;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;Ljava/lang/String;II)V

    :cond_1
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/media/AudioManager;

    invoke-virtual {p0, v4}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    return-void
.end method

.method public static performVolumeAction(Landroid/content/Context;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;Ljava/lang/String;II)V
    .locals 3

    invoke-static {p0, p3, p4}, Lcom/samsung/android/settings/asbase/routine/action/util/SoundActionUtil;->getStreamVolumeFromRoutine(Landroid/content/Context;II)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getNumber(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p1

    const-string p2, "getNumber(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-static {p3}, Lcom/samsung/android/settings/asbase/widget/SecVolumeValues;->rowStreamTypeToString(I)Ljava/lang/String;

    move-result-object p2

    float-to-int p1, p1

    const-string/jumbo v0, "performVolumeAction stream "

    const-string v1, ", device "

    const-string v2, ", index "

    invoke-static {p4, v0, p2, v1, v2}, Landroidx/glance/appwidget/UnmanagedSessionReceiver$onReceive$2$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SoundSettingsActionInteractor"

    invoke-static {v0, p2}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "audio"

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo p2, "null cannot be cast to non-null type android.media.AudioManager"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/media/AudioManager;

    invoke-static {p3}, Lcom/samsung/android/settings/asbase/widget/SecVolumeValues;->isMusic(I)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p0, p3, p1, v0, p4}, Landroid/media/AudioManager;->semSetFineVolume(IIII)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p3, p1, v0, p4}, Landroid/media/AudioManager;->semSetStreamVolume(IIII)V

    const/4 p2, 0x5

    if-ne p3, p2, :cond_2

    const/16 p2, 0x8

    invoke-virtual {p0, p3, p1, v0, p2}, Landroid/media/AudioManager;->semSetStreamVolume(IIII)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public final getCurrentParameterValues(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda6;)V
    .locals 4

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    invoke-direct {p0}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;-><init>()V

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p4

    const-string/jumbo p5, "volume_level"

    const/4 v0, 0x1

    const-string/jumbo v1, "toggle_value"

    const/4 v2, 0x0

    const/4 v3, 0x2

    sparse-switch p4, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string p3, "as_vibrate_while_ringing"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string/jumbo p2, "vibrate_when_ringing"

    invoke-static {p1, p2}, Lcom/samsung/android/settings/asbase/routine/action/SoundSettingsActionInteractor;->isSystemOptionOn(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p6, p0}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda6;->setResponse(Ljava/lang/Object;)V

    goto/16 :goto_1

    :sswitch_1
    const-string p4, "as_volume"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto/16 :goto_1

    :cond_1
    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    const-string/jumbo p4, "null cannot be cast to non-null type android.media.AudioManager"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/media/AudioManager;

    invoke-virtual {p2}, Landroid/media/AudioManager;->semGetRingerModeInternal()I

    move-result p2

    int-to-float p2, p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const-string p4, "as_sound_mode"

    invoke-virtual {p0, p4, p2}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string p4, "as_do_not_change_volume"

    invoke-virtual {p3, p4, p2}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p2

    const-string p3, "getBoolean(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {p0, p4, p2}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    if-nez p3, :cond_2

    invoke-static {v3}, Lcom/samsung/android/settings/asbase/routine/action/SoundSettingsActionInteractor;->getLevelKeyValues(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v3, v3}, Lcom/samsung/android/settings/asbase/routine/action/util/SoundActionUtil;->getStreamVolumeFromRoutine(Landroid/content/Context;II)I

    move-result p3

    int-to-float p3, p3

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const/4 p2, 0x5

    invoke-static {p2}, Lcom/samsung/android/settings/asbase/routine/action/SoundSettingsActionInteractor;->getLevelKeyValues(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, v3}, Lcom/samsung/android/settings/asbase/routine/action/util/SoundActionUtil;->getStreamVolumeFromRoutine(Landroid/content/Context;II)I

    move-result p2

    int-to-float p2, p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p0, p3, p2}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    invoke-static {v0}, Lcom/samsung/android/settings/asbase/routine/action/SoundSettingsActionInteractor;->getLevelKeyValues(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, v3}, Lcom/samsung/android/settings/asbase/routine/action/util/SoundActionUtil;->getStreamVolumeFromRoutine(Landroid/content/Context;II)I

    move-result p1

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    :cond_2
    invoke-virtual {p6, p0}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda6;->setResponse(Ljava/lang/Object;)V

    goto/16 :goto_1

    :sswitch_2
    const-string/jumbo p3, "routines_set_ringtone"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto/16 :goto_1

    :cond_3
    invoke-static {}, Lcom/samsung/android/settings/asbase/utils/SimUtils;->isMultiSimModel()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-static {}, Lcom/samsung/android/settings/asbase/utils/SimUtils;->isEnabledSIM2Only()Z

    move-result p2

    if-eqz p2, :cond_4

    const/16 v0, 0x80

    :cond_4
    invoke-static {p1, v0}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "toString(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_5

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_6

    const-string/jumbo p2, "routines_ringtone_uri"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p6, p0}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda6;->setResponse(Ljava/lang/Object;)V

    goto/16 :goto_1

    :sswitch_3
    const-string p3, "as_media_volume"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    goto/16 :goto_1

    :cond_7
    const/16 p2, 0x65

    invoke-static {p2}, Lcom/samsung/android/settings/asbase/routine/action/SoundSettingsActionInteractor;->getLevelKeyValues(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x3

    invoke-static {p1, p3, v3}, Lcom/samsung/android/settings/asbase/routine/action/util/SoundActionUtil;->getStreamVolumeFromRoutine(Landroid/content/Context;II)I

    move-result p4

    int-to-float p4, p4

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    invoke-virtual {p0, p2, p4}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const/16 p2, 0x66

    invoke-static {p2}, Lcom/samsung/android/settings/asbase/routine/action/SoundSettingsActionInteractor;->getLevelKeyValues(I)Ljava/lang/String;

    move-result-object p4

    const/16 p5, 0x16

    invoke-static {p1, p3, p5}, Lcom/samsung/android/settings/asbase/routine/action/util/SoundActionUtil;->getStreamVolumeFromRoutine(Landroid/content/Context;II)I

    move-result p5

    int-to-float p5, p5

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p5

    invoke-virtual {p0, p4, p5}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const-string p4, "_WIRED_HEADPHONES"

    invoke-static {p2, p4}, Lcom/samsung/android/settings/asbase/routine/action/SoundSettingsActionInteractor;->getLevelKeyValuesFromDevice(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const/4 p5, 0x4

    invoke-static {p1, p3, p5}, Lcom/samsung/android/settings/asbase/routine/action/util/SoundActionUtil;->getStreamVolumeFromRoutine(Landroid/content/Context;II)I

    move-result p5

    int-to-float p5, p5

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p5

    invoke-virtual {p0, p4, p5}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const-string p4, "_WIRED_HEADSET"

    invoke-static {p2, p4}, Lcom/samsung/android/settings/asbase/routine/action/SoundSettingsActionInteractor;->getLevelKeyValuesFromDevice(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p3, p3}, Lcom/samsung/android/settings/asbase/routine/action/util/SoundActionUtil;->getStreamVolumeFromRoutine(Landroid/content/Context;II)I

    move-result p1

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    invoke-virtual {p6, p0}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda6;->setResponse(Ljava/lang/Object;)V

    goto/16 :goto_1

    :sswitch_4
    const-string p3, "as_keyboard_sound"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    goto/16 :goto_1

    :cond_8
    const-string/jumbo p2, "sip_key_feedback_sound"

    invoke-static {p1, p2}, Lcom/samsung/android/settings/asbase/routine/action/SoundSettingsActionInteractor;->isSystemOptionOn(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p6, p0}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda6;->setResponse(Ljava/lang/Object;)V

    goto/16 :goto_1

    :sswitch_5
    const-string p3, "as_dialing_keypad_tones"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    goto/16 :goto_1

    :cond_9
    const-string p2, "dtmf_tone"

    invoke-static {p1, p2}, Lcom/samsung/android/settings/asbase/routine/action/SoundSettingsActionInteractor;->isSystemOptionOn(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p6, p0}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda6;->setResponse(Ljava/lang/Object;)V

    goto/16 :goto_1

    :sswitch_6
    const-string/jumbo p3, "routines_set_call_volume"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    goto :goto_1

    :cond_a
    invoke-static {p1, v2, v2}, Lcom/samsung/android/settings/asbase/routine/action/util/SoundActionUtil;->getStreamVolumeFromRoutine(Landroid/content/Context;II)I

    move-result p2

    int-to-float p2, p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p0, p5, p2}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const-string p2, "_EARPIECE"

    invoke-static {v2, p2}, Lcom/samsung/android/settings/asbase/routine/action/SoundSettingsActionInteractor;->getLevelKeyValuesFromDevice(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v2, v0}, Lcom/samsung/android/settings/asbase/routine/action/util/SoundActionUtil;->getStreamVolumeFromRoutine(Landroid/content/Context;II)I

    move-result p3

    int-to-float p3, p3

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const-string p2, "_SPEAKER"

    invoke-static {v2, p2}, Lcom/samsung/android/settings/asbase/routine/action/SoundSettingsActionInteractor;->getLevelKeyValuesFromDevice(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v2, v3}, Lcom/samsung/android/settings/asbase/routine/action/util/SoundActionUtil;->getStreamVolumeFromRoutine(Landroid/content/Context;II)I

    move-result p1

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    invoke-virtual {p6, p0}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda6;->setResponse(Ljava/lang/Object;)V

    goto :goto_1

    :sswitch_7
    const-string p3, "as_keyboard_vibration"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    goto :goto_1

    :cond_b
    const-string/jumbo p2, "sip_key_feedback_vibration"

    invoke-static {p1, p2}, Lcom/samsung/android/settings/asbase/routine/action/SoundSettingsActionInteractor;->isSystemOptionOn(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p6, p0}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda6;->setResponse(Ljava/lang/Object;)V

    goto :goto_1

    :sswitch_8
    const-string/jumbo p3, "routines_set_bixby_volume"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c

    goto :goto_1

    :cond_c
    const/16 p2, 0xb

    invoke-static {p1, p2, v2}, Lcom/samsung/android/settings/asbase/routine/action/util/SoundActionUtil;->getStreamVolumeFromRoutine(Landroid/content/Context;II)I

    move-result p1

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p5, p1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    invoke-virtual {p6, p0}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda6;->setResponse(Ljava/lang/Object;)V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x774e3722 -> :sswitch_8
        -0x528d7a99 -> :sswitch_7
        -0x2e2ff452 -> :sswitch_6
        0xdb859b0 -> :sswitch_5
        0xfd90e64 -> :sswitch_4
        0x1470cac2 -> :sswitch_3
        0x2b6d34ef -> :sswitch_2
        0x49301bc7 -> :sswitch_1
        0x4f434587 -> :sswitch_0
    .end sparse-switch
.end method

.method public final getParameterLabel(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda6;)V
    .locals 9

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p0

    const-string/jumbo p4, "volume_level"

    const-string p5, ""

    const-string v0, "getBoolean(...)"

    const/4 v1, 0x0

    const-string v2, "\n"

    const-string v3, ": "

    const-string v4, "getNumber(...)"

    const/4 v5, 0x2

    sparse-switch p0, :sswitch_data_0

    goto/16 :goto_6

    :sswitch_0
    const-string p0, "as_vibrate_while_ringing"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto/16 :goto_6

    :sswitch_1
    const-string p0, "as_volume"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_6

    :cond_0
    const/high16 p0, 0x40000000    # 2.0f

    const-string p2, "as_sound_mode"

    invoke-static {p0, p3, p2}, Lcom/android/settings/notification/zen/lifestyle/LifeStyleDND$$ExternalSyntheticOutline0;->m(FLcom/samsung/android/sdk/routines/v3/data/ParameterValues;Ljava/lang/String;)F

    move-result p0

    float-to-int p0, p0

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string p4, "as_do_not_change_volume"

    invoke-virtual {p3, p4, p2}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const p4, 0x7f14268e

    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4, v3}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const v0, 0x7f14284a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f142850

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x1

    const-string v7, "getString(...)"

    if-eqz p0, :cond_3

    if-eq p0, v6, :cond_2

    if-eq p0, v5, :cond_1

    goto :goto_0

    :cond_1
    const p5, 0x7f1427a2

    invoke-virtual {p1, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-static {p5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const p5, 0x7f1427a3

    invoke-virtual {p1, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-static {p5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const p5, 0x7f1427a1

    invoke-virtual {p1, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-static {p5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne p0, v5, :cond_7

    if-eqz p2, :cond_4

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p6, p0}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda6;->setResponse(Ljava/lang/Object;)V

    return-void

    :cond_4
    invoke-static {v5}, Lcom/samsung/android/settings/asbase/routine/action/SoundSettingsActionInteractor;->getLevelKeyValues(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v5, v5}, Lcom/samsung/android/settings/asbase/routine/action/util/SoundActionUtil;->getStreamVolumeFromRoutine(Landroid/content/Context;II)I

    move-result p2

    int-to-float p2, p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p3, p0, p2}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getNumber(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p0

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    const/4 p2, 0x5

    invoke-static {p2}, Lcom/samsung/android/settings/asbase/routine/action/SoundSettingsActionInteractor;->getLevelKeyValues(I)Ljava/lang/String;

    move-result-object p5

    invoke-static {p1, p2, v5}, Lcom/samsung/android/settings/asbase/routine/action/util/SoundActionUtil;->getStreamVolumeFromRoutine(Landroid/content/Context;II)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {p3, p5, v7}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getNumber(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p5

    invoke-static {p5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p5}, Ljava/lang/Number;->floatValue()F

    move-result p5

    invoke-static {v6}, Lcom/samsung/android/settings/asbase/routine/action/SoundSettingsActionInteractor;->getLevelKeyValues(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v6, v5}, Lcom/samsung/android/settings/asbase/routine/action/util/SoundActionUtil;->getStreamVolumeFromRoutine(Landroid/content/Context;II)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {p3, v7, v8}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getNumber(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p3

    invoke-static {p3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p3

    const/4 v4, 0x0

    cmpg-float v7, p0, v4

    if-ltz v7, :cond_6

    cmpg-float v7, p5, v4

    if-ltz v7, :cond_6

    cmpg-float v4, p3, v4

    if-gez v4, :cond_5

    goto :goto_1

    :cond_5
    invoke-static {p0, v5, p1}, Lcom/samsung/android/settings/asbase/routine/action/SoundSettingsActionInteractor;->getVolumeLabel(FILandroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p4, p0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p5, p2, p1}, Lcom/samsung/android/settings/asbase/routine/action/SoundSettingsActionInteractor;->getVolumeLabel(FILandroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, v6, p1}, Lcom/samsung/android/settings/asbase/routine/action/SoundSettingsActionInteractor;->getVolumeLabel(FILandroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v2, p2, v2, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p6, p0}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda6;->setResponse(Ljava/lang/Object;)V

    return-void

    :cond_7
    :goto_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p6, p0}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda6;->setResponse(Ljava/lang/Object;)V

    goto/16 :goto_6

    :sswitch_2
    const-string/jumbo p0, "routines_set_ringtone"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto/16 :goto_6

    :cond_8
    const-string/jumbo p0, "routines_ringtone_title"

    invoke-virtual {p3, p0, p5}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_9

    goto :goto_3

    :cond_9
    const-string/jumbo p2, "silent"

    invoke-virtual {p0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    :goto_3
    const p0, 0x7f1425f7

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :cond_a
    const-string p1, "let(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p6, p0}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda6;->setResponse(Ljava/lang/Object;)V

    goto/16 :goto_6

    :sswitch_3
    const-string p0, "as_media_volume"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto/16 :goto_6

    :cond_b
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result p0

    if-eqz p0, :cond_c

    const p0, 0x7f14047e

    goto :goto_4

    :cond_c
    const p0, 0x7f14047d

    :goto_4
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/16 p2, 0x65

    invoke-static {p2}, Lcom/samsung/android/settings/asbase/routine/action/SoundSettingsActionInteractor;->getLevelKeyValues(I)Ljava/lang/String;

    move-result-object p2

    const/4 p4, 0x3

    invoke-static {p1, p4, v5}, Lcom/samsung/android/settings/asbase/routine/action/util/SoundActionUtil;->getStreamVolumeFromRoutine(Landroid/content/Context;II)I

    move-result p5

    int-to-float p5, p5

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p5

    invoke-virtual {p3, p2, p5}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getNumber(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    invoke-static {p2, p4, p1}, Lcom/samsung/android/settings/asbase/routine/action/SoundSettingsActionInteractor;->getVolumeLabel(FILandroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, v3, p2}, Landroidx/apppickerview/features/applabel/AbstractAppLabelMapFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const p2, 0x7f14047f

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/16 p5, 0x66

    invoke-static {p5}, Lcom/samsung/android/settings/asbase/routine/action/SoundSettingsActionInteractor;->getLevelKeyValues(I)Ljava/lang/String;

    move-result-object p5

    const/16 v0, 0x16

    invoke-static {p1, p4, v0}, Lcom/samsung/android/settings/asbase/routine/action/util/SoundActionUtil;->getStreamVolumeFromRoutine(Landroid/content/Context;II)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p3, p5, v0}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getNumber(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p5

    invoke-static {p5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p5}, Ljava/lang/Number;->floatValue()F

    move-result p5

    invoke-static {p5, p4, p1}, Lcom/samsung/android/settings/asbase/routine/action/SoundSettingsActionInteractor;->getVolumeLabel(FILandroid/content/Context;)Ljava/lang/String;

    move-result-object p5

    invoke-static {p2, v3, p5}, Landroidx/apppickerview/features/applabel/AbstractAppLabelMapFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const p5, 0x7f14047c

    invoke-virtual {p1, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p5

    const/16 v0, 0x69

    invoke-static {v0}, Lcom/samsung/android/settings/asbase/routine/action/SoundSettingsActionInteractor;->getLevelKeyValues(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {p1, p4, v1}, Lcom/samsung/android/settings/asbase/routine/action/util/SoundActionUtil;->getStreamVolumeFromRoutine(Landroid/content/Context;II)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getNumber(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p3

    invoke-static {p3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p3

    invoke-static {p3, p4, p1}, Lcom/samsung/android/settings/asbase/routine/action/SoundSettingsActionInteractor;->getVolumeLabel(FILandroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p5, v3, p1}, Landroidx/apppickerview/features/applabel/AbstractAppLabelMapFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p6, p0}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda6;->setResponse(Ljava/lang/Object;)V

    goto/16 :goto_6

    :sswitch_4
    const-string p0, "as_keyboard_sound"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto/16 :goto_6

    :sswitch_5
    const-string p0, "as_dialing_keypad_tones"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto/16 :goto_6

    :sswitch_6
    const-string/jumbo p0, "routines_set_call_volume"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto :goto_6

    :cond_d
    invoke-static {p1, v1, v1}, Lcom/samsung/android/settings/asbase/routine/action/util/SoundActionUtil;->getStreamVolumeFromRoutine(Landroid/content/Context;II)I

    move-result p0

    int-to-float p0, p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p3, p4, p0}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getNumber(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p0

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-static {p0, v1, p1}, Lcom/samsung/android/settings/asbase/routine/action/SoundSettingsActionInteractor;->getVolumeLabel(FILandroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p6, p0}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda6;->setResponse(Ljava/lang/Object;)V

    goto :goto_6

    :sswitch_7
    const-string p0, "as_keyboard_vibration"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto :goto_6

    :cond_e
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string/jumbo p2, "toggle_value"

    invoke-virtual {p3, p2, p0}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_f

    const p0, 0x7f141f4e

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    :cond_f
    const p0, 0x7f141f4d

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_5
    invoke-virtual {p6, p0}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda6;->setResponse(Ljava/lang/Object;)V

    goto :goto_6

    :sswitch_8
    const-string/jumbo p0, "routines_set_bixby_volume"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    goto :goto_6

    :cond_10
    const/16 p0, 0xb

    invoke-static {p1, p0, v1}, Lcom/samsung/android/settings/asbase/routine/action/util/SoundActionUtil;->getStreamVolumeFromRoutine(Landroid/content/Context;II)I

    move-result p2

    int-to-float p2, p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p3, p4, p2}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getNumber(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    invoke-static {p2, p0, p1}, Lcom/samsung/android/settings/asbase/routine/action/SoundSettingsActionInteractor;->getVolumeLabel(FILandroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p6, p0}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda6;->setResponse(Ljava/lang/Object;)V

    :goto_6
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x774e3722 -> :sswitch_8
        -0x528d7a99 -> :sswitch_7
        -0x2e2ff452 -> :sswitch_6
        0xdb859b0 -> :sswitch_5
        0xfd90e64 -> :sswitch_4
        0x1470cac2 -> :sswitch_3
        0x2b6d34ef -> :sswitch_2
        0x49301bc7 -> :sswitch_1
        0x4f434587 -> :sswitch_0
    .end sparse-switch
.end method

.method public final getSupportTagList()Ljava/util/List;
    .locals 9

    const-string v7, "as_keyboard_vibration"

    const-string v8, "as_vibrate_while_ringing"

    const-string/jumbo v0, "routines_set_ringtone"

    const-string/jumbo v1, "routines_set_bixby_volume"

    const-string/jumbo v2, "routines_set_call_volume"

    const-string v3, "as_volume"

    const-string v4, "as_media_volume"

    const-string v5, "as_dialing_keypad_tones"

    const-string v6, "as_keyboard_sound"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final isSupported(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;
    .locals 1

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "tag"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p0

    sget-object v0, Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;->NOT_SUPPORTED:Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;

    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo p0, "routines_set_ringtone"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "audio"

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo p2, "null cannot be cast to non-null type android.media.AudioManager"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->shouldShowRingtoneVolume()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {p1}, Lcom/samsung/android/settings/asbase/utils/SimUtils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_3

    return-object v0

    :sswitch_1
    const-string p0, "as_dialing_keypad_tones"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/samsung/android/settings/asbase/utils/SoundUtils;->isRingtoneMenuSupported(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_3

    return-object v0

    :sswitch_2
    const-string p0, "as_keyboard_vibration"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/samsung/android/settings/asbase/utils/VibUtils;->hasSystemVibrationMenu(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_3

    return-object v0

    :sswitch_3
    const-string/jumbo p0, "routines_set_bixby_volume"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportBixbyClient()Z

    move-result p0

    if-nez p0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    sget-object p0, Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;->SUPPORTED:Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x774e3722 -> :sswitch_3
        -0x528d7a99 -> :sswitch_2
        0xdb859b0 -> :sswitch_1
        0x2b6d34ef -> :sswitch_0
    .end sparse-switch
.end method

.method public final onPerformAction(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLcom/samsung/android/sdk/routines/v3/interfaces/ActionResultCallback;)V
    .locals 4

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "tag"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "parameterValues"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "callback"

    invoke-static {p6, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;->SUCCESS:Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p4

    const/4 p5, 0x1

    const-string/jumbo v0, "volume_level"

    const-string v1, "getBoolean(...)"

    const-string/jumbo v2, "toggle_value"

    const/4 v3, 0x0

    sparse-switch p4, :sswitch_data_0

    goto/16 :goto_4

    :sswitch_0
    const-string p4, "as_vibrate_while_ringing"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto/16 :goto_4

    :cond_0
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p3, v2, p2}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p3, "vibrate_when_ringing"

    invoke-static {p1, p3, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance p1, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;-><init>(Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;Z)V

    check-cast p6, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda8;

    invoke-virtual {p6, p1}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda8;->actionFinished(Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;)V

    goto/16 :goto_4

    :sswitch_1
    const-string p4, "as_volume"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-static {p1, p3, v3}, Lcom/samsung/android/settings/asbase/routine/action/SoundSettingsActionInteractor;->performSoundModeAction(Landroid/content/Context;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;Z)V

    new-instance p1, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;-><init>(Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;Z)V

    check-cast p6, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda8;

    invoke-virtual {p6, p1}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda8;->actionFinished(Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;)V

    goto/16 :goto_4

    :sswitch_2
    const-string/jumbo p4, "routines_set_ringtone"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto/16 :goto_4

    :cond_2
    invoke-static {}, Lcom/samsung/android/settings/asbase/utils/SimUtils;->isMultiSimModel()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {}, Lcom/samsung/android/settings/asbase/utils/SimUtils;->isEnabledSIM2Only()Z

    move-result p2

    if-eqz p2, :cond_3

    const/16 p5, 0x80

    :cond_3
    const-string/jumbo p2, "routines_ringtone_title"

    const-string p4, ""

    invoke-virtual {p3, p2, p4}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "getString(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "routines_ringtone_uri"

    invoke-virtual {p3, v1, p4}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "routines_ringtone_path"

    invoke-virtual {p3, v2, p4}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p4

    if-nez p4, :cond_5

    const-string/jumbo p4, "silent"

    invoke-virtual {p2, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p4

    const/4 v0, 0x0

    if-eqz p4, :cond_4

    goto :goto_0

    :cond_4
    move-object p2, v0

    :goto_0
    if-eqz p2, :cond_5

    invoke-static {p1, p5, v0}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    new-instance p1, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;-><init>(Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;Z)V

    check-cast p6, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda8;

    invoke-virtual {p6, p1}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda8;->actionFinished(Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;)V

    return-void

    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p2

    sget-object p4, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;->FAIL_INVALID_PARAMETER:Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;

    if-nez p2, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_7

    :goto_1
    new-instance p0, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;

    const/4 p1, 0x0

    invoke-direct {p0, p4, p1}, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;-><init>(Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;Z)V

    check-cast p6, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda8;

    invoke-virtual {p6, p0}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda8;->actionFinished(Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;)V

    return-void

    :cond_7
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_8

    goto :goto_3

    :cond_8
    sget-object p2, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_9

    goto :goto_2

    :cond_9
    :try_start_0
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_a

    :goto_2
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p1, p5, p2}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    new-instance p1, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;-><init>(Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;Z)V

    check-cast p6, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda8;

    invoke-virtual {p6, p1}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda8;->actionFinished(Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;)V

    goto/16 :goto_4

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a
    :goto_3
    new-instance p0, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;

    const/4 p1, 0x0

    invoke-direct {p0, p4, p1}, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;-><init>(Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;Z)V

    check-cast p6, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda8;

    invoke-virtual {p6, p0}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda8;->actionFinished(Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;)V

    return-void

    :sswitch_3
    const-string p4, "as_media_volume"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    goto/16 :goto_4

    :cond_b
    invoke-static {p1, p3}, Lcom/samsung/android/settings/asbase/routine/action/SoundSettingsActionInteractor;->performMediaVolumeAction(Landroid/content/Context;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;)V

    new-instance p1, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;-><init>(Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;Z)V

    check-cast p6, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda8;

    invoke-virtual {p6, p1}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda8;->actionFinished(Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;)V

    goto/16 :goto_4

    :sswitch_4
    const-string p4, "as_keyboard_sound"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c

    goto/16 :goto_4

    :cond_c
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p3, v2, p2}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p3, "sip_key_feedback_sound"

    invoke-static {p1, p3, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance p1, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;-><init>(Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;Z)V

    check-cast p6, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda8;

    invoke-virtual {p6, p1}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda8;->actionFinished(Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;)V

    goto/16 :goto_4

    :sswitch_5
    const-string p4, "as_dialing_keypad_tones"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_d

    goto/16 :goto_4

    :cond_d
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p3, v2, p2}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p3, "dtmf_tone"

    invoke-static {p1, p3, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance p1, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;-><init>(Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;Z)V

    check-cast p6, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda8;

    invoke-virtual {p6, p1}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda8;->actionFinished(Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;)V

    goto :goto_4

    :sswitch_6
    const-string/jumbo p4, "routines_set_call_volume"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_e

    goto :goto_4

    :cond_e
    invoke-static {p1, p3, v0, v3, v3}, Lcom/samsung/android/settings/asbase/routine/action/SoundSettingsActionInteractor;->performVolumeAction(Landroid/content/Context;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;Ljava/lang/String;II)V

    invoke-static {p1, p3, v0, v3, p5}, Lcom/samsung/android/settings/asbase/routine/action/SoundSettingsActionInteractor;->performVolumeAction(Landroid/content/Context;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;Ljava/lang/String;II)V

    const/4 p2, 0x2

    invoke-static {p1, p3, v0, v3, p2}, Lcom/samsung/android/settings/asbase/routine/action/SoundSettingsActionInteractor;->performVolumeAction(Landroid/content/Context;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;Ljava/lang/String;II)V

    new-instance p1, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;-><init>(Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;Z)V

    check-cast p6, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda8;

    invoke-virtual {p6, p1}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda8;->actionFinished(Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;)V

    goto :goto_4

    :sswitch_7
    const-string p4, "as_keyboard_vibration"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_f

    goto :goto_4

    :cond_f
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p3, v2, p2}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p3, "sip_key_feedback_vibration"

    invoke-static {p1, p3, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance p1, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;-><init>(Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;Z)V

    check-cast p6, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda8;

    invoke-virtual {p6, p1}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda8;->actionFinished(Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;)V

    goto :goto_4

    :sswitch_8
    const-string/jumbo p4, "routines_set_bixby_volume"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_10

    goto :goto_4

    :cond_10
    const/16 p2, 0xb

    invoke-static {p1, p3, v0, p2, v3}, Lcom/samsung/android/settings/asbase/routine/action/SoundSettingsActionInteractor;->performVolumeAction(Landroid/content/Context;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;Ljava/lang/String;II)V

    new-instance p1, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;-><init>(Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;Z)V

    check-cast p6, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda8;

    invoke-virtual {p6, p1}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda8;->actionFinished(Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;)V

    :goto_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x774e3722 -> :sswitch_8
        -0x528d7a99 -> :sswitch_7
        -0x2e2ff452 -> :sswitch_6
        0xdb859b0 -> :sswitch_5
        0xfd90e64 -> :sswitch_4
        0x1470cac2 -> :sswitch_3
        0x2b6d34ef -> :sswitch_2
        0x49301bc7 -> :sswitch_1
        0x4f434587 -> :sswitch_0
    .end sparse-switch
.end method

.method public final onPerformReverseAction(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda8;)V
    .locals 2

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "actionResultCallback"

    invoke-static {p6, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p0

    const-string/jumbo p4, "volume_level"

    const/4 p5, 0x0

    const/4 p6, 0x1

    const-string v0, "getBoolean(...)"

    const-string/jumbo v1, "toggle_value"

    sparse-switch p0, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string p0, "as_vibrate_while_ringing"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_1

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p3, v1, p0}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "vibrate_when_ringing"

    invoke-static {p1, p2, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :sswitch_1
    const-string p0, "as_volume"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-static {p1, p3, p6}, Lcom/samsung/android/settings/asbase/routine/action/SoundSettingsActionInteractor;->performSoundModeAction(Landroid/content/Context;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;Z)V

    goto/16 :goto_1

    :sswitch_2
    const-string/jumbo p0, "routines_set_ringtone"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_1

    :cond_2
    invoke-static {}, Lcom/samsung/android/settings/asbase/utils/SimUtils;->isMultiSimModel()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Lcom/samsung/android/settings/asbase/utils/SimUtils;->isEnabledSIM2Only()Z

    move-result p0

    if-eqz p0, :cond_3

    const/16 p6, 0x80

    :cond_3
    const-string/jumbo p0, "routines_ringtone_uri"

    const-string p2, ""

    invoke-virtual {p3, p0, p2}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "getString(...)"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_4

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    :goto_0
    invoke-static {p1, p6, p0}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    goto/16 :goto_1

    :sswitch_3
    const-string p0, "as_media_volume"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_1

    :cond_5
    invoke-static {p1, p3}, Lcom/samsung/android/settings/asbase/routine/action/SoundSettingsActionInteractor;->performMediaVolumeAction(Landroid/content/Context;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;)V

    goto/16 :goto_1

    :sswitch_4
    const-string p0, "as_keyboard_sound"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_1

    :cond_6
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p3, v1, p0}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "sip_key_feedback_sound"

    invoke-static {p1, p2, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :sswitch_5
    const-string p0, "as_dialing_keypad_tones"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_1

    :cond_7
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p3, v1, p0}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "dtmf_tone"

    invoke-static {p1, p2, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :sswitch_6
    const-string/jumbo p0, "routines_set_call_volume"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_1

    :cond_8
    invoke-static {p1, p3, p4, p5, p5}, Lcom/samsung/android/settings/asbase/routine/action/SoundSettingsActionInteractor;->performVolumeAction(Landroid/content/Context;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;Ljava/lang/String;II)V

    const-string p0, "_EARPIECE"

    invoke-static {p5, p0}, Lcom/samsung/android/settings/asbase/routine/action/SoundSettingsActionInteractor;->getLevelKeyValuesFromDevice(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p3, p0, p5, p6}, Lcom/samsung/android/settings/asbase/routine/action/SoundSettingsActionInteractor;->performVolumeAction(Landroid/content/Context;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;Ljava/lang/String;II)V

    const-string p0, "_SPEAKER"

    invoke-static {p5, p0}, Lcom/samsung/android/settings/asbase/routine/action/SoundSettingsActionInteractor;->getLevelKeyValuesFromDevice(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x2

    invoke-static {p1, p3, p0, p5, p2}, Lcom/samsung/android/settings/asbase/routine/action/SoundSettingsActionInteractor;->performVolumeAction(Landroid/content/Context;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;Ljava/lang/String;II)V

    goto :goto_1

    :sswitch_7
    const-string p0, "as_keyboard_vibration"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_1

    :cond_9
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p3, v1, p0}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "sip_key_feedback_vibration"

    invoke-static {p1, p2, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :sswitch_8
    const-string/jumbo p0, "routines_set_bixby_volume"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_1

    :cond_a
    const/16 p0, 0xb

    invoke-static {p1, p3, p4, p0, p5}, Lcom/samsung/android/settings/asbase/routine/action/SoundSettingsActionInteractor;->performVolumeAction(Landroid/content/Context;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;Ljava/lang/String;II)V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x774e3722 -> :sswitch_8
        -0x528d7a99 -> :sswitch_7
        -0x2e2ff452 -> :sswitch_6
        0xdb859b0 -> :sswitch_5
        0xfd90e64 -> :sswitch_4
        0x1470cac2 -> :sswitch_3
        0x2b6d34ef -> :sswitch_2
        0x49301bc7 -> :sswitch_1
        0x4f434587 -> :sswitch_0
    .end sparse-switch
.end method

.method public final onRequestErrorDialogContents(Landroid/content/Context;Ljava/lang/String;IJ)Lcom/samsung/android/sdk/routines/v3/data/ErrorContents;
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "wrong in "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " - "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p0, p2}, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$DialogButton;)V

    return-object p1
.end method

.method public final onRequestTemplateContents(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/template/UiTemplate;
    .locals 3

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "tag"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const v0, 0x7f141f4e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "label_on"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f141f4d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "label_off"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "default_selection"

    const-string/jumbo v2, "title"

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "as_vibrate_while_ringing"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const p2, 0x7f142840

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p2, "vibrate_when_ringing"

    invoke-static {p1, p2}, Lcom/samsung/android/settings/asbase/routine/action/SoundSettingsActionInteractor;->isSystemOptionOn(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance p1, Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate;

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/routines/v3/template/UiTemplate;-><init>(Landroid/os/Bundle;)V

    goto :goto_1

    :sswitch_1
    const-string v0, "as_keyboard_sound"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const p2, 0x7f1424cb

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p2, "sip_key_feedback_sound"

    invoke-static {p1, p2}, Lcom/samsung/android/settings/asbase/routine/action/SoundSettingsActionInteractor;->isSystemOptionOn(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance p1, Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate;

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/routines/v3/template/UiTemplate;-><init>(Landroid/os/Bundle;)V

    goto :goto_1

    :sswitch_2
    const-string v0, "as_dialing_keypad_tones"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    const p2, 0x7f1422e4

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "dtmf_tone"

    invoke-static {p1, p2}, Lcom/samsung/android/settings/asbase/routine/action/SoundSettingsActionInteractor;->isSystemOptionOn(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance p1, Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate;

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/routines/v3/template/UiTemplate;-><init>(Landroid/os/Bundle;)V

    goto :goto_1

    :sswitch_3
    const-string v0, "as_keyboard_vibration"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    :goto_0
    new-instance p1, Lcom/samsung/android/sdk/routines/v3/template/UiTemplate;

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/routines/v3/template/UiTemplate;-><init>(Landroid/os/Bundle;)V

    goto :goto_1

    :cond_3
    const p2, 0x7f1424ce

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p2, "sip_key_feedback_vibration"

    invoke-static {p1, p2}, Lcom/samsung/android/settings/asbase/routine/action/SoundSettingsActionInteractor;->isSystemOptionOn(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance p1, Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate;

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/routines/v3/template/UiTemplate;-><init>(Landroid/os/Bundle;)V

    :goto_1
    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x528d7a99 -> :sswitch_3
        0xdb859b0 -> :sswitch_2
        0xfd90e64 -> :sswitch_1
        0x4f434587 -> :sswitch_0
    .end sparse-switch
.end method
