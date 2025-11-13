.class public final Lcom/android/systemui/power/sound/SoundPathFinder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkDefaultCondition(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Galaxy"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static getChargerConnectionPath(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 8

    sget-boolean v0, Lcom/android/systemui/PowerUiRune;->SYSTEM_SOUND_THEME:Z

    if-eqz v0, :cond_5

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "system_sound"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "prev_system_sound"

    invoke-static {p0, v2, v0}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1}, Lcom/android/systemui/power/sound/SoundPathFinder;->checkDefaultCondition(Ljava/lang/String;)Z

    move-result v2

    const-string/jumbo v3, "system sound theme name is : "

    const-string v4, "PowerUI-SoundPathFinder"

    if-eqz v2, :cond_0

    invoke-static {p1}, Lcom/android/systemui/power/sound/SoundPathFinder;->getDefaultChargerConnectionPath(Z)Ljava/lang/String;

    move-result-object p0

    const-string p1, " so it will be : "

    invoke-static {v3, v1, p1, p0, v4}, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v2, "Open_theme"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v5, "ChargingStarted"

    const-string v6, "ChargingStarted_Fast"

    if-eqz v2, :cond_3

    const-string v2, "prevSound : "

    const-string v7, ", in userID : "

    invoke-static {v0, v2, p0, v7, v4}, Lcom/android/settingslib/SecNotificationBlockManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/systemui/power/sound/SoundPathFinder;->checkDefaultCondition(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/android/systemui/power/sound/SoundPathFinder;->getDefaultChargerConnectionPath(Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, " but prevSound is "

    const-string v2, ", so it will be : "

    invoke-static {v3, v1, v0, p0, v2}, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p0, p1, v4}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, p1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    move-object v5, v6

    :cond_2
    invoke-static {v5, p0}, Lcom/android/systemui/power/sound/SoundPathFinder;->getSystemSoundPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, " so we should play prev sound, so it will be : "

    invoke-static {v3, v1, p1, p0, v4}, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    move-object v5, v6

    :cond_4
    invoke-static {v5, v1}, Lcom/android/systemui/power/sound/SoundPathFinder;->getSystemSoundPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "sound theme name is applied so it will be : "

    invoke-static {p1, p0, v4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p0

    :cond_5
    invoke-static {p1}, Lcom/android/systemui/power/sound/SoundPathFinder;->getDefaultChargerConnectionPath(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultChargerConnectionPath(Z)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    const-string p0, "ChargingStarted_Fast"

    goto :goto_0

    :cond_0
    const-string p0, "ChargingStarted"

    :goto_0
    const-string/jumbo v0, "system/media/audio/ui/"

    const-string v1, ".ogg"

    invoke-static {v0, p0, v1}, Landroidx/compose/foundation/gestures/ContentInViewNode$Request$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSoundPath(ILandroid/content/Context;)Ljava/lang/String;
    .locals 7

    packed-switch p0, :pswitch_data_0

    const-string p0, ""

    goto/16 :goto_0

    :pswitch_0
    const-string/jumbo p0, "system/media/audio/ui/Water_Protection.ogg"

    goto/16 :goto_0

    :pswitch_1
    const-string/jumbo p0, "system/media/audio/ui/TW_Battery_caution.ogg"

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "low_battery_sound"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-boolean v0, Lcom/android/systemui/PowerUiRune;->SYSTEM_SOUND_THEME:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/systemui/PowerUiRune;->LOW_BATTTERY_SOUND_THEME:Z

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "system_sound"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "prev_system_sound"

    invoke-static {p1, v2, v0}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1}, Lcom/android/systemui/power/sound/SoundPathFinder;->checkDefaultCondition(Ljava/lang/String;)Z

    move-result v2

    const-string/jumbo v3, "system sound theme name is : "

    const-string v4, "PowerUI-SoundPathFinder"

    if-eqz v2, :cond_0

    const-string p1, " so it will be : "

    invoke-static {v3, v1, p1, p0, v4}, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v2, "Open_theme"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v5, "LowBattery"

    if-eqz v2, :cond_2

    const-string v2, "prevSound : "

    const-string v6, ", in userID : "

    invoke-static {v0, v2, p1, v6, v4}, Lcom/android/settingslib/SecNotificationBlockManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/systemui/power/sound/SoundPathFinder;->checkDefaultCondition(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, " but prevSound is "

    const-string v2, ", so it will be : "

    invoke-static {v3, v1, v0, p1, v2}, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p1, p0, v4}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {v5, p1}, Lcom/android/systemui/power/sound/SoundPathFinder;->getSystemSoundPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, " so we should play prev sound, so it will be : "

    invoke-static {v3, v1, p1, p0, v4}, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {v5, v1}, Lcom/android/systemui/power/sound/SoundPathFinder;->getSystemSoundPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "sound theme name is applied so it will be : "

    invoke-static {p1, p0, v4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const/4 p0, 0x1

    invoke-static {p1, p0}, Lcom/android/systemui/power/sound/SoundPathFinder;->getChargerConnectionPath(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :pswitch_4
    const/4 p0, 0x0

    invoke-static {p1, p0}, Lcom/android/systemui/power/sound/SoundPathFinder;->getChargerConnectionPath(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p0

    :cond_3
    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getSystemSoundPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "system/media/audio/ui/"

    const-string v1, "_"

    const-string v2, ".ogg"

    invoke-static {v0, p0, v1, p1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
