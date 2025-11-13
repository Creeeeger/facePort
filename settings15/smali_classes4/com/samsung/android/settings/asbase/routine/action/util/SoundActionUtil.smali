.class public abstract Lcom/samsung/android/settings/asbase/routine/action/util/SoundActionUtil;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static getStreamVolumeFromRoutine(Landroid/content/Context;II)I
    .locals 6

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type android.media.AudioManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/media/AudioManager;

    invoke-static {p1}, Lcom/samsung/android/settings/asbase/widget/SecVolumeValues;->isMusic(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/media/AudioManager;->semGetFineVolume(II)I

    move-result p0

    goto :goto_3

    :cond_0
    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    if-ne p1, v2, :cond_9

    :goto_0
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, ""

    if-eq p1, v2, :cond_5

    if-eq p1, v3, :cond_4

    if-eq p1, v1, :cond_3

    move-object v4, v0

    goto :goto_1

    :cond_3
    const-string/jumbo v4, "volume_notification"

    goto :goto_1

    :cond_4
    const-string/jumbo v4, "volume_ring"

    goto :goto_1

    :cond_5
    const-string/jumbo v4, "volume_system"

    :goto_1
    const/4 v5, 0x0

    invoke-static {p2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-eq p1, v2, :cond_8

    if-eq p1, v3, :cond_7

    if-eq p1, v1, :cond_6

    goto :goto_2

    :cond_6
    const-string/jumbo v0, "volume_notification_speaker"

    goto :goto_2

    :cond_7
    const-string/jumbo v0, "volume_ring_speaker"

    goto :goto_2

    :cond_8
    const-string/jumbo v0, "volume_system_speaker"

    :goto_2
    invoke-static {p0, v0, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    goto :goto_3

    :cond_9
    invoke-virtual {v0, p1, p2}, Landroid/media/AudioManager;->semGetStreamVolume(II)I

    move-result p0

    :goto_3
    return p0
.end method
