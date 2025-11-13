.class public final Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;
.super Landroid/widget/LinearLayout;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u000cB\u0013\u0008\u0016\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u001d\u0008\u0016\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u0008B%\u0008\u0016\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0004\u0010\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;",
        "Landroid/widget/LinearLayout;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/util/AttributeSet;",
        "attrs",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "defStyleAttr",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "1",
        "applications__sources__apps__SecSettings__android_common__SecSettings-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public audioManager:Landroid/media/AudioManager;

.field public icon:Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;

.field public levelText:Landroid/widget/TextView;

.field public listener:Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionActivity$onModeChangedListener$1;

.field public preVolumeLevel:I

.field public ringerModeInt:I

.field public seekBar:Landroidx/appcompat/widget/SeslSeekBar;

.field public streamType:I

.field public titleView:Landroid/widget/TextView;

.field public volumeLevel:I

.field public volumeMax:I

.field public volumeMin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x2

    iput p1, p0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->ringerModeInt:I

    const/4 p1, 0x3

    iput p1, p0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->streamType:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x2

    iput p1, p0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->ringerModeInt:I

    const/4 p1, 0x3

    iput p1, p0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->streamType:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x2

    iput p1, p0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->ringerModeInt:I

    const/4 p1, 0x3

    iput p1, p0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->streamType:I

    return-void
.end method


# virtual methods
.method public final getDefaultVolume()I
    .locals 8

    iget v0, p0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->streamType:I

    const/4 v1, 0x5

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->audioManager:Landroid/media/AudioManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p0

    goto :goto_2

    :cond_0
    const-string p0, "audioManager"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "getContext(...)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget p0, p0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->streamType:I

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, ""

    if-eq p0, v3, :cond_4

    if-eq p0, v2, :cond_3

    if-eq p0, v1, :cond_2

    move-object v6, v5

    goto :goto_0

    :cond_2
    const-string/jumbo v6, "volume_notification"

    goto :goto_0

    :cond_3
    const-string/jumbo v6, "volume_ring"

    goto :goto_0

    :cond_4
    const-string/jumbo v6, "volume_system"

    :goto_0
    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eq p0, v3, :cond_7

    if-eq p0, v2, :cond_6

    if-eq p0, v1, :cond_5

    goto :goto_1

    :cond_5
    const-string/jumbo v5, "volume_notification_speaker"

    goto :goto_1

    :cond_6
    const-string/jumbo v5, "volume_ring_speaker"

    goto :goto_1

    :cond_7
    const-string/jumbo v5, "volume_system_speaker"

    :goto_1
    invoke-static {v0, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    :goto_2
    return p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->titleView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string/jumbo p0, "titleView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final saveVolume()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->seekBar:Landroidx/appcompat/widget/SeslSeekBar;

    const/4 v1, 0x0

    const-string/jumbo v2, "seekBar"

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->seekBar:Landroidx/appcompat/widget/SeslSeekBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->preVolumeLevel:I

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public final updateFromRinger(I)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "icon"

    const/4 v3, 0x2

    const-string/jumbo v4, "seekBar"

    if-eqz p1, :cond_d

    const/4 v5, 0x5

    const/4 v6, 0x0

    if-eq p1, v0, :cond_6

    if-eq p1, v3, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->saveVolume()V

    iput v6, p0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->ringerModeInt:I

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->icon:Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;

    if-eqz p1, :cond_5

    invoke-virtual {p1, v6, v6}, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->updateLayoutForRoutine(II)V

    iget p1, p0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->streamType:I

    if-ne p1, v5, :cond_1

    goto :goto_0

    :cond_1
    if-ne p1, v0, :cond_3

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->seekBar:Landroidx/appcompat/widget/SeslSeekBar;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v6}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    :cond_2
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->seekBar:Landroidx/appcompat/widget/SeslSeekBar;

    if-eqz p0, :cond_4

    invoke-virtual {p0, v6}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    goto/16 :goto_4

    :cond_4
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->saveVolume()V

    iput v0, p0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->ringerModeInt:I

    iget p1, p0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->streamType:I

    if-eq p1, v0, :cond_9

    if-eq p1, v3, :cond_7

    if-eq p1, v5, :cond_9

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->icon:Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;

    if-eqz p1, :cond_8

    invoke-virtual {p1, v6, v0}, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->updateLayoutForRoutine(II)V

    goto :goto_2

    :cond_8
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_9
    iget-object p1, p0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->icon:Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;

    if-eqz p1, :cond_c

    invoke-virtual {p1, v6, v0}, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->updateLayoutForRoutine(II)V

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->seekBar:Landroidx/appcompat/widget/SeslSeekBar;

    if-eqz p1, :cond_b

    invoke-virtual {p1, v6}, Landroid/view/View;->setEnabled(Z)V

    :goto_2
    iget-object p0, p0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->seekBar:Landroidx/appcompat/widget/SeslSeekBar;

    if-eqz p0, :cond_a

    invoke-virtual {p0, v6}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    goto :goto_4

    :cond_a
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_b
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_c
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_d
    iget-object p1, p0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->seekBar:Landroidx/appcompat/widget/SeslSeekBar;

    if-eqz p1, :cond_13

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget p1, p0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->ringerModeInt:I

    if-eq p1, v3, :cond_12

    iput v3, p0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->ringerModeInt:I

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->icon:Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;

    if-eqz p1, :cond_11

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->seekBar:Landroidx/appcompat/widget/SeslSeekBar;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result v0

    iget v2, p0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->ringerModeInt:I

    invoke-virtual {p1, v0, v2}, Lcom/samsung/android/settings/asbase/widget/SecVolumeIcon;->updateLayoutForRoutine(II)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->getDefaultVolume()I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->seekBar:Landroidx/appcompat/widget/SeslSeekBar;

    if-eqz v0, :cond_f

    iget p0, p0, Lcom/samsung/android/settings/asbase/routine/action/ui/VolumeActionRow;->preVolumeLevel:I

    if-nez p0, :cond_e

    goto :goto_3

    :cond_e
    move p1, p0

    :goto_3
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    goto :goto_4

    :cond_f
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_10
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_11
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_12
    :goto_4
    return-void

    :cond_13
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method
